; ModuleID = 'arch/x86/pci/i386.c'
source_filename = "arch/x86/pci/i386.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pcibios_align_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pcibios_align_resource ; .previous"
module asm ".section\09\22.initcall5.init..kmod_i386__293_373_pcibios_assign_resources\22, \22a\22\09\09"
module asm "__initcall__kmod_i386__293_373_pcibios_assign_resources5:\09\09\09"
module asm ".long\09__initstub__kmod_i386__293_373_pcibios_assign_resources5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.pci_check_idx_range = type { i32, i32 }
%struct.pcibios_fwaddrmap = type { %struct.list_head, ptr, [11 x i64] }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@pcibios_fw_addr_done = internal global i8 0, align 1, !dbg !0
@pcibios_fwaddrmap_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4902
@__UNIQUE_ID___addressable_pcibios_align_resource292 = internal global ptr @pcibios_align_resource, section ".discard.addressable", align 8, !dbg !4890
@__UNIQUE_ID___addressable___initstub__kmod_i386__293_373_pcibios_assign_resources5294 = internal global ptr @__initstub__kmod_i386__293_373_pcibios_assign_resources5, section ".discard.addressable", align 8, !dbg !4892
@.str = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !4894
@.str.1 = private unnamed_addr constant [22 x i8] c"Allocating resources\0A\00", align 1, !dbg !4897
@pci_probe = external dso_local global i32, align 4
@pci_root_buses = external dso_local global %struct.list_head, align 8
@pcibios_fwaddrmappings = internal global %struct.list_head { ptr @pcibios_fwaddrmappings, ptr @pcibios_fwaddrmappings }, align 8, !dbg !4904
@__const.pcibios_allocate_dev_resources.idx_range = private unnamed_addr constant [1 x %struct.pci_check_idx_range] [%struct.pci_check_idx_range { i32 0, i32 5 }], align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"BAR %d %pR is immovable\0A\00", align 1, !dbg !4906
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4911
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_pcibios_align_resource292, ptr @__UNIQUE_ID___addressable___initstub__kmod_i386__293_373_pcibios_assign_resources5294], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pcibios_retrieve_fw_addr(ptr noundef %dev, i32 noundef %idx) #0 align 16 !dbg !4925 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %map = alloca ptr, align 8
  %fw_addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4929, metadata !DIExpression()), !dbg !4939
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !4930, metadata !DIExpression()), !dbg !4940
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !4941
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4931, metadata !DIExpression()), !dbg !4942
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #16, !dbg !4943
  call void @llvm.dbg.declare(metadata ptr %map, metadata !4932, metadata !DIExpression()), !dbg !4944
  call void @llvm.lifetime.start.p0(i64 8, ptr %fw_addr) #16, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %fw_addr, metadata !4933, metadata !DIExpression()), !dbg !4946
  store i64 0, ptr %fw_addr, align 8, !dbg !4946
  %0 = load i8, ptr @pcibios_fw_addr_done, align 1, !dbg !4947, !range !4949, !noundef !920
  %tobool = trunc i8 %0 to i1, !dbg !4947
  br i1 %tobool, label %if.then, label %if.end, !dbg !4950

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !4951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4951

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4952

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4953

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4934, metadata !DIExpression()), !dbg !4954
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !4954
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4938, metadata !DIExpression()), !dbg !4954
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4954
  %conv = zext i1 %cmp to i32, !dbg !4954
  store i32 1, ptr %tmp, align 4, !dbg !4954
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !4955
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !4955
  %1 = load i32, ptr %tmp, align 4, !dbg !4954
  %call = call ptr @spinlock_check(ptr noundef @pcibios_fwaddrmap_lock) #17, !dbg !4955
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !4955
  store i64 %call2, ptr %flags, align 8, !dbg !4955
  br label %do.cond, !dbg !4955

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4955

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !4953

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !4953

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4956
  %call5 = call ptr @pcibios_fwaddrmap_lookup(ptr noundef %2) #17, !dbg !4957
  store ptr %call5, ptr %map, align 8, !dbg !4958
  %3 = load ptr, ptr %map, align 8, !dbg !4959
  %tobool6 = icmp ne ptr %3, null, !dbg !4959
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !4961

if.then7:                                         ; preds = %do.end4
  %4 = load ptr, ptr %map, align 8, !dbg !4962
  %fw_addr8 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %4, i32 0, i32 2, !dbg !4963
  %5 = load i32, ptr %idx.addr, align 4, !dbg !4964
  %idxprom = sext i32 %5 to i64, !dbg !4962
  %arrayidx = getelementptr [11 x i64], ptr %fw_addr8, i64 0, i64 %idxprom, !dbg !4962
  %6 = load i64, ptr %arrayidx, align 8, !dbg !4962
  store i64 %6, ptr %fw_addr, align 8, !dbg !4965
  br label %if.end9, !dbg !4966

if.end9:                                          ; preds = %if.then7, %do.end4
  %7 = load i64, ptr %flags, align 8, !dbg !4967
  call void @spin_unlock_irqrestore(ptr noundef @pcibios_fwaddrmap_lock, i64 noundef %7) #17, !dbg !4968
  %8 = load i64, ptr %fw_addr, align 8, !dbg !4969
  store i64 %8, ptr %retval, align 8, !dbg !4970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4970

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fw_addr) #16, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #16, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !4971
  %9 = load i64, ptr %retval, align 8, !dbg !4971
  ret i64 %9, !dbg !4971
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4972 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !4977 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4984
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4985
  ret ptr %1, !dbg !4986
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pcibios_fwaddrmap_lookup(ptr noundef %dev) #0 align 16 !dbg !4987 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %map = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4991, metadata !DIExpression()), !dbg !4999
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #16, !dbg !5000
  call void @llvm.dbg.declare(metadata ptr %map, metadata !4992, metadata !DIExpression()), !dbg !5001
  br label %do.body, !dbg !5002

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5003

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5003

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5005
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4993, metadata !DIExpression()), !dbg !5005
  %0 = load ptr, ptr @pcibios_fwaddrmappings, align 8, !dbg !5005
  store ptr %0, ptr %__mptr, align 8, !dbg !5005
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5005
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5005
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5005
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5006
  %2 = load ptr, ptr %tmp, align 8, !dbg !5005
  store ptr %2, ptr %map, align 8, !dbg !5006
  br label %for.cond, !dbg !5006

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load ptr, ptr %map, align 8, !dbg !5007
  %list = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %3, i32 0, i32 0, !dbg !5007
  %cmp = icmp eq ptr %list, @pcibios_fwaddrmappings, !dbg !5007
  %lnot = xor i1 %cmp, true, !dbg !5007
  br i1 %lnot, label %for.body, label %for.end, !dbg !5006

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %map, align 8, !dbg !5008
  %dev1 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %4, i32 0, i32 1, !dbg !5010
  %5 = load ptr, ptr %dev1, align 8, !dbg !5010
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5011
  %cmp2 = icmp eq ptr %5, %6, !dbg !5012
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5013

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %map, align 8, !dbg !5014
  store ptr %7, ptr %retval, align 8, !dbg !5015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5015

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5011

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #16, !dbg !5016
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !4996, metadata !DIExpression()), !dbg !5016
  %8 = load ptr, ptr %map, align 8, !dbg !5016
  %list4 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %8, i32 0, i32 0, !dbg !5016
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !5016
  %9 = load ptr, ptr %next, align 8, !dbg !5016
  store ptr %9, ptr %__mptr3, align 8, !dbg !5016
  %10 = load ptr, ptr %__mptr3, align 8, !dbg !5016
  %add.ptr6 = getelementptr i8, ptr %10, i64 0, !dbg !5016
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5016
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #16, !dbg !5007
  %11 = load ptr, ptr %tmp5, align 8, !dbg !5016
  store ptr %11, ptr %map, align 8, !dbg !5007
  br label %for.cond, !dbg !5007, !llvm.loop !5017

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5021
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5021

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #16, !dbg !5022
  %12 = load ptr, ptr %retval, align 8, !dbg !5022
  ret ptr %12, !dbg !5022
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !5023 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5027, metadata !DIExpression()), !dbg !5033
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5028, metadata !DIExpression()), !dbg !5034
  br label %do.body, !dbg !5035

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5036
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5029, metadata !DIExpression()), !dbg !5036
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5036
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5032, metadata !DIExpression()), !dbg !5036
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5036
  %conv = zext i1 %cmp to i32, !dbg !5036
  store i32 1, ptr %tmp, align 4, !dbg !5036
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5037
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5037
  %0 = load i32, ptr %tmp, align 4, !dbg !5036
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5037
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5037
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5037
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !5037
  br label %do.end, !dbg !5037

do.end:                                           ; preds = %do.body
  ret void, !dbg !5038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pcibios_align_resource(ptr noundef %data, ptr noundef %res, i64 noundef %size, i64 noundef %align) #0 align 16 !dbg !5039 {
entry:
  %retval = alloca i64, align 8
  %data.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %start = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5045, metadata !DIExpression()), !dbg !5051
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5046, metadata !DIExpression()), !dbg !5052
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5047, metadata !DIExpression()), !dbg !5053
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5048, metadata !DIExpression()), !dbg !5054
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5055
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5049, metadata !DIExpression()), !dbg !5056
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5057
  store ptr %0, ptr %dev, align 8, !dbg !5056
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !5058
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5050, metadata !DIExpression()), !dbg !5059
  %1 = load ptr, ptr %res.addr, align 8, !dbg !5060
  %start1 = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 0, !dbg !5061
  %2 = load i64, ptr %start1, align 8, !dbg !5061
  store i64 %2, ptr %start, align 8, !dbg !5059
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5062
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3, !dbg !5064
  %4 = load i64, ptr %flags, align 8, !dbg !5064
  %and = and i64 %4, 256, !dbg !5065
  %tobool = icmp ne i64 %and, 0, !dbg !5065
  br i1 %tobool, label %if.then, label %if.else, !dbg !5066

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %dev, align 8, !dbg !5067
  %call = call i32 @skip_isa_ioresource_align(ptr noundef %5) #17, !dbg !5070
  %tobool2 = icmp ne i32 %call, 0, !dbg !5070
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5071

if.then3:                                         ; preds = %if.then
  %6 = load i64, ptr %start, align 8, !dbg !5072
  store i64 %6, ptr %retval, align 8, !dbg !5073
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5073

if.end:                                           ; preds = %if.then
  %7 = load i64, ptr %start, align 8, !dbg !5074
  %and4 = and i64 %7, 768, !dbg !5076
  %tobool5 = icmp ne i64 %and4, 0, !dbg !5076
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5077

if.then6:                                         ; preds = %if.end
  %8 = load i64, ptr %start, align 8, !dbg !5078
  %add = add i64 %8, 1023, !dbg !5079
  %and7 = and i64 %add, -1024, !dbg !5080
  store i64 %and7, ptr %start, align 8, !dbg !5081
  br label %if.end8, !dbg !5082

if.end8:                                          ; preds = %if.then6, %if.end
  br label %if.end16, !dbg !5083

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %res.addr, align 8, !dbg !5084
  %flags9 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3, !dbg !5086
  %10 = load i64, ptr %flags9, align 8, !dbg !5086
  %and10 = and i64 %10, 512, !dbg !5087
  %tobool11 = icmp ne i64 %and10, 0, !dbg !5087
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !5088

if.then12:                                        ; preds = %if.else
  %11 = load i64, ptr %start, align 8, !dbg !5089
  %cmp = icmp ult i64 %11, 1048576, !dbg !5092
  br i1 %cmp, label %if.then13, label %if.end14, !dbg !5093

if.then13:                                        ; preds = %if.then12
  store i64 1048576, ptr %start, align 8, !dbg !5094
  br label %if.end14, !dbg !5095

if.end14:                                         ; preds = %if.then13, %if.then12
  br label %if.end15, !dbg !5096

if.end15:                                         ; preds = %if.end14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end8
  %12 = load i64, ptr %start, align 8, !dbg !5097
  store i64 %12, ptr %retval, align 8, !dbg !5098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5098

cleanup:                                          ; preds = %if.end16, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !5099
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5099
  %13 = load i64, ptr %retval, align 8, !dbg !5099
  ret i64 %13, !dbg !5099
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @skip_isa_ioresource_align(ptr noundef %dev) #0 align 16 !dbg !5100 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5102, metadata !DIExpression()), !dbg !5103
  %0 = load i32, ptr @pci_probe, align 4, !dbg !5104
  %and = and i32 %0, 32768, !dbg !5106
  %tobool = icmp ne i32 %and, 0, !dbg !5106
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5107

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5108
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !5109
  %2 = load ptr, ptr %bus, align 8, !dbg !5109
  %bridge_ctl = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 17, !dbg !5110
  %3 = load i16, ptr %bridge_ctl, align 4, !dbg !5110
  %conv = zext i16 %3 to i32, !dbg !5108
  %and1 = and i32 %conv, 4, !dbg !5111
  %tobool2 = icmp ne i32 %and1, 0, !dbg !5111
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5112

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !5114
  br label %return, !dbg !5114

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !5115
  ret i32 %4, !dbg !5115
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_i386__293_373_pcibios_assign_resources5() #5 section ".init.text" align 16 !dbg !5116 {
entry:
  %call = call i32 @pcibios_assign_resources() #18, !dbg !5117
  ret i32 %call, !dbg !5117
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pcibios_assign_resources() #5 section ".init.text" align 16 !dbg !5118 {
entry:
  %bus = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #16, !dbg !5128
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5120, metadata !DIExpression()), !dbg !5129
  %0 = load i32, ptr @pci_probe, align 4, !dbg !5130
  %and = and i32 %0, 4096, !dbg !5131
  %tobool = icmp ne i32 %and, 0, !dbg !5131
  br i1 %tobool, label %if.end, label %if.then, !dbg !5132

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5133
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5121, metadata !DIExpression()), !dbg !5133
  %1 = load ptr, ptr @pci_root_buses, align 8, !dbg !5133
  store ptr %1, ptr %__mptr, align 8, !dbg !5133
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5133
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5133
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5134
  %3 = load ptr, ptr %tmp, align 8, !dbg !5133
  store ptr %3, ptr %bus, align 8, !dbg !5134
  br label %for.cond, !dbg !5134

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load ptr, ptr %bus, align 8, !dbg !5135
  %node = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 0, !dbg !5135
  %cmp = icmp eq ptr %node, @pci_root_buses, !dbg !5135
  %lnot = xor i1 %cmp, true, !dbg !5135
  br i1 %lnot, label %for.body, label %for.end, !dbg !5134

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %bus, align 8, !dbg !5136
  call void @pcibios_allocate_rom_resources(ptr noundef %5) #17, !dbg !5137
  br label %for.inc, !dbg !5137

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5125, metadata !DIExpression()), !dbg !5138
  %6 = load ptr, ptr %bus, align 8, !dbg !5138
  %node2 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 0, !dbg !5138
  %next = getelementptr inbounds %struct.list_head, ptr %node2, i32 0, i32 0, !dbg !5138
  %7 = load ptr, ptr %next, align 8, !dbg !5138
  store ptr %7, ptr %__mptr1, align 8, !dbg !5138
  %8 = load ptr, ptr %__mptr1, align 8, !dbg !5138
  %add.ptr4 = getelementptr i8, ptr %8, i64 0, !dbg !5138
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5138
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !5135
  %9 = load ptr, ptr %tmp3, align 8, !dbg !5138
  store ptr %9, ptr %bus, align 8, !dbg !5135
  br label %for.cond, !dbg !5135, !llvm.loop !5139

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !5140

if.end:                                           ; preds = %for.end, %entry
  call void @pci_assign_unassigned_resources() #17, !dbg !5141
  call void @pcibios_fw_addr_list_del() #18, !dbg !5142
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #16, !dbg !5143
  ret i32 0, !dbg !5144
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pcibios_resource_survey_bus(ptr noundef %bus) #0 align 16 !dbg !5145 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5147, metadata !DIExpression()), !dbg !5148
  br label %do.body, !dbg !5149

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5151

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5149
  %dev = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 20, !dbg !5149
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str, ptr noundef %dev, ptr noundef @.str.1) #18, !dbg !5149
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5153
  call void @pcibios_allocate_bus_resources(ptr noundef %1) #17, !dbg !5154
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5155
  call void @pcibios_allocate_resources(ptr noundef %2, i32 noundef 0) #17, !dbg !5156
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5157
  call void @pcibios_allocate_resources(ptr noundef %3, i32 noundef 1) #17, !dbg !5158
  %4 = load i32, ptr @pci_probe, align 4, !dbg !5159
  %and = and i32 %4, 4096, !dbg !5161
  %tobool = icmp ne i32 %and, 0, !dbg !5161
  br i1 %tobool, label %if.end, label %if.then, !dbg !5162

if.then:                                          ; preds = %do.end
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5163
  call void @pcibios_allocate_rom_resources(ptr noundef %5) #17, !dbg !5164
  br label %if.end, !dbg !5164

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !5165
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5166 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcibios_allocate_bus_resources(ptr noundef %bus) #0 align 16 !dbg !5170 {
entry:
  %bus.addr = alloca ptr, align 8
  %child = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5172, metadata !DIExpression()), !dbg !5180
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #16, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5173, metadata !DIExpression()), !dbg !5182
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5183
  %self = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 4, !dbg !5185
  %1 = load ptr, ptr %self, align 8, !dbg !5185
  %tobool = icmp ne ptr %1, null, !dbg !5183
  br i1 %tobool, label %if.then, label %if.end, !dbg !5186

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %bus.addr, align 8, !dbg !5187
  %self1 = getelementptr inbounds %struct.pci_bus, ptr %2, i32 0, i32 4, !dbg !5188
  %3 = load ptr, ptr %self1, align 8, !dbg !5188
  call void @pcibios_allocate_bridge_resources(ptr noundef %3) #17, !dbg !5189
  br label %if.end, !dbg !5189

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5190
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5174, metadata !DIExpression()), !dbg !5190
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5190
  %children = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 2, !dbg !5190
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !5190
  %5 = load ptr, ptr %next, align 8, !dbg !5190
  store ptr %5, ptr %__mptr, align 8, !dbg !5190
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5190
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !5190
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5190
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5191
  %7 = load ptr, ptr %tmp, align 8, !dbg !5190
  store ptr %7, ptr %child, align 8, !dbg !5191
  br label %for.cond, !dbg !5191

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %child, align 8, !dbg !5192
  %node = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 0, !dbg !5192
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5192
  %children2 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 2, !dbg !5192
  %cmp = icmp eq ptr %node, %children2, !dbg !5192
  %lnot = xor i1 %cmp, true, !dbg !5192
  br i1 %lnot, label %for.body, label %for.end, !dbg !5191

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %child, align 8, !dbg !5193
  call void @pcibios_allocate_bus_resources(ptr noundef %10) #17, !dbg !5194
  br label %for.inc, !dbg !5194

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #16, !dbg !5195
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5177, metadata !DIExpression()), !dbg !5195
  %11 = load ptr, ptr %child, align 8, !dbg !5195
  %node4 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 0, !dbg !5195
  %next5 = getelementptr inbounds %struct.list_head, ptr %node4, i32 0, i32 0, !dbg !5195
  %12 = load ptr, ptr %next5, align 8, !dbg !5195
  store ptr %12, ptr %__mptr3, align 8, !dbg !5195
  %13 = load ptr, ptr %__mptr3, align 8, !dbg !5195
  %add.ptr7 = getelementptr i8, ptr %13, i64 0, !dbg !5195
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #16, !dbg !5192
  %14 = load ptr, ptr %tmp6, align 8, !dbg !5195
  store ptr %14, ptr %child, align 8, !dbg !5192
  br label %for.cond, !dbg !5192, !llvm.loop !5196

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #16, !dbg !5198
  ret void, !dbg !5198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcibios_allocate_resources(ptr noundef %bus, i32 noundef %pass) #0 align 16 !dbg !5199 {
entry:
  %bus.addr = alloca ptr, align 8
  %pass.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %child = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5203, metadata !DIExpression()), !dbg !5213
  store i32 %pass, ptr %pass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pass.addr, metadata !5204, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5205, metadata !DIExpression()), !dbg !5216
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #16, !dbg !5217
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5206, metadata !DIExpression()), !dbg !5218
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5219
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5207, metadata !DIExpression()), !dbg !5219
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5219
  %devices = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3, !dbg !5219
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5219
  %1 = load ptr, ptr %next, align 8, !dbg !5219
  store ptr %1, ptr %__mptr, align 8, !dbg !5219
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5219
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5219
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5219
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5220
  %3 = load ptr, ptr %tmp, align 8, !dbg !5219
  store ptr %3, ptr %dev, align 8, !dbg !5220
  br label %for.cond, !dbg !5220

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !5221
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 0, !dbg !5221
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5221
  %devices1 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3, !dbg !5221
  %cmp = icmp eq ptr %bus_list, %devices1, !dbg !5221
  %lnot = xor i1 %cmp, true, !dbg !5221
  br i1 %lnot, label %for.body, label %for.end, !dbg !5220

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !5222
  %7 = load i32, ptr %pass.addr, align 4, !dbg !5224
  call void @pcibios_allocate_dev_resources(ptr noundef %6, i32 noundef %7) #17, !dbg !5225
  %8 = load ptr, ptr %dev, align 8, !dbg !5226
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 2, !dbg !5227
  %9 = load ptr, ptr %subordinate, align 8, !dbg !5227
  store ptr %9, ptr %child, align 8, !dbg !5228
  %10 = load ptr, ptr %child, align 8, !dbg !5229
  %tobool = icmp ne ptr %10, null, !dbg !5229
  br i1 %tobool, label %if.then, label %if.end, !dbg !5231

if.then:                                          ; preds = %for.body
  %11 = load ptr, ptr %child, align 8, !dbg !5232
  %12 = load i32, ptr %pass.addr, align 4, !dbg !5233
  call void @pcibios_allocate_resources(ptr noundef %11, i32 noundef %12) #17, !dbg !5234
  br label %if.end, !dbg !5234

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5235

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5210, metadata !DIExpression()), !dbg !5236
  %13 = load ptr, ptr %dev, align 8, !dbg !5236
  %bus_list3 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 0, !dbg !5236
  %next4 = getelementptr inbounds %struct.list_head, ptr %bus_list3, i32 0, i32 0, !dbg !5236
  %14 = load ptr, ptr %next4, align 8, !dbg !5236
  store ptr %14, ptr %__mptr2, align 8, !dbg !5236
  %15 = load ptr, ptr %__mptr2, align 8, !dbg !5236
  %add.ptr6 = getelementptr i8, ptr %15, i64 0, !dbg !5236
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5236
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !5221
  %16 = load ptr, ptr %tmp5, align 8, !dbg !5236
  store ptr %16, ptr %dev, align 8, !dbg !5221
  br label %for.cond, !dbg !5221, !llvm.loop !5237

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #16, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5239
  ret void, !dbg !5239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcibios_allocate_rom_resources(ptr noundef %bus) #0 align 16 !dbg !5240 {
entry:
  %bus.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %child = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5242, metadata !DIExpression()), !dbg !5251
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5252
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5243, metadata !DIExpression()), !dbg !5253
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #16, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5244, metadata !DIExpression()), !dbg !5255
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5245, metadata !DIExpression()), !dbg !5256
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5256
  %devices = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3, !dbg !5256
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5256
  %1 = load ptr, ptr %next, align 8, !dbg !5256
  store ptr %1, ptr %__mptr, align 8, !dbg !5256
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5256
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5256
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5257
  %3 = load ptr, ptr %tmp, align 8, !dbg !5256
  store ptr %3, ptr %dev, align 8, !dbg !5257
  br label %for.cond, !dbg !5257

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !5258
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 0, !dbg !5258
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5258
  %devices1 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3, !dbg !5258
  %cmp = icmp eq ptr %bus_list, %devices1, !dbg !5258
  %lnot = xor i1 %cmp, true, !dbg !5258
  br i1 %lnot, label %for.body, label %for.end, !dbg !5257

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !5259
  call void @pcibios_allocate_dev_rom_resource(ptr noundef %6) #17, !dbg !5261
  %7 = load ptr, ptr %dev, align 8, !dbg !5262
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 2, !dbg !5263
  %8 = load ptr, ptr %subordinate, align 8, !dbg !5263
  store ptr %8, ptr %child, align 8, !dbg !5264
  %9 = load ptr, ptr %child, align 8, !dbg !5265
  %tobool = icmp ne ptr %9, null, !dbg !5265
  br i1 %tobool, label %if.then, label %if.end, !dbg !5267

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %child, align 8, !dbg !5268
  call void @pcibios_allocate_rom_resources(ptr noundef %10) #17, !dbg !5269
  br label %if.end, !dbg !5269

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5270

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !5271
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !5248, metadata !DIExpression()), !dbg !5271
  %11 = load ptr, ptr %dev, align 8, !dbg !5271
  %bus_list3 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 0, !dbg !5271
  %next4 = getelementptr inbounds %struct.list_head, ptr %bus_list3, i32 0, i32 0, !dbg !5271
  %12 = load ptr, ptr %next4, align 8, !dbg !5271
  store ptr %12, ptr %__mptr2, align 8, !dbg !5271
  %13 = load ptr, ptr %__mptr2, align 8, !dbg !5271
  %add.ptr6 = getelementptr i8, ptr %13, i64 0, !dbg !5271
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5271
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !5258
  %14 = load ptr, ptr %tmp5, align 8, !dbg !5271
  store ptr %14, ptr %dev, align 8, !dbg !5258
  br label %for.cond, !dbg !5258, !llvm.loop !5272

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #16, !dbg !5274
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5274
  ret void, !dbg !5274
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pcibios_resource_survey() #5 section ".init.text" align 16 !dbg !5275 {
entry:
  %bus = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__mptr20 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  %__mptr29 = alloca ptr, align 8
  %tmp32 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #16, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5277, metadata !DIExpression()), !dbg !5297
  br label %do.body, !dbg !5298

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5299

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5299

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5301
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5278, metadata !DIExpression()), !dbg !5301
  %0 = load ptr, ptr @pci_root_buses, align 8, !dbg !5301
  store ptr %0, ptr %__mptr, align 8, !dbg !5301
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5301
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5301
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5301
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5302
  %2 = load ptr, ptr %tmp, align 8, !dbg !5301
  store ptr %2, ptr %bus, align 8, !dbg !5302
  br label %for.cond, !dbg !5302

for.cond:                                         ; preds = %for.inc, %do.end
  %3 = load ptr, ptr %bus, align 8, !dbg !5303
  %node = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 0, !dbg !5303
  %cmp = icmp eq ptr %node, @pci_root_buses, !dbg !5303
  %lnot = xor i1 %cmp, true, !dbg !5303
  br i1 %lnot, label %for.body, label %for.end, !dbg !5302

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %bus, align 8, !dbg !5304
  call void @pcibios_allocate_bus_resources(ptr noundef %4) #17, !dbg !5305
  br label %for.inc, !dbg !5305

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5281, metadata !DIExpression()), !dbg !5306
  %5 = load ptr, ptr %bus, align 8, !dbg !5306
  %node2 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 0, !dbg !5306
  %next = getelementptr inbounds %struct.list_head, ptr %node2, i32 0, i32 0, !dbg !5306
  %6 = load ptr, ptr %next, align 8, !dbg !5306
  store ptr %6, ptr %__mptr1, align 8, !dbg !5306
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !5306
  %add.ptr4 = getelementptr i8, ptr %7, i64 0, !dbg !5306
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !5306
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !5303
  %8 = load ptr, ptr %tmp3, align 8, !dbg !5306
  store ptr %8, ptr %bus, align 8, !dbg !5303
  br label %for.cond, !dbg !5303, !llvm.loop !5307

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #16, !dbg !5309
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !5284, metadata !DIExpression()), !dbg !5309
  %9 = load ptr, ptr @pci_root_buses, align 8, !dbg !5309
  store ptr %9, ptr %__mptr5, align 8, !dbg !5309
  %10 = load ptr, ptr %__mptr5, align 8, !dbg !5309
  %add.ptr7 = getelementptr i8, ptr %10, i64 0, !dbg !5309
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !5309
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #16, !dbg !5310
  %11 = load ptr, ptr %tmp6, align 8, !dbg !5309
  store ptr %11, ptr %bus, align 8, !dbg !5310
  br label %for.cond8, !dbg !5310

for.cond8:                                        ; preds = %for.inc13, %for.end
  %12 = load ptr, ptr %bus, align 8, !dbg !5311
  %node9 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 0, !dbg !5311
  %cmp10 = icmp eq ptr %node9, @pci_root_buses, !dbg !5311
  %lnot11 = xor i1 %cmp10, true, !dbg !5311
  br i1 %lnot11, label %for.body12, label %for.end19, !dbg !5310

for.body12:                                       ; preds = %for.cond8
  %13 = load ptr, ptr %bus, align 8, !dbg !5312
  call void @pcibios_allocate_resources(ptr noundef %13, i32 noundef 0) #17, !dbg !5313
  br label %for.inc13, !dbg !5313

for.inc13:                                        ; preds = %for.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #16, !dbg !5314
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !5287, metadata !DIExpression()), !dbg !5314
  %14 = load ptr, ptr %bus, align 8, !dbg !5314
  %node15 = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 0, !dbg !5314
  %next16 = getelementptr inbounds %struct.list_head, ptr %node15, i32 0, i32 0, !dbg !5314
  %15 = load ptr, ptr %next16, align 8, !dbg !5314
  store ptr %15, ptr %__mptr14, align 8, !dbg !5314
  %16 = load ptr, ptr %__mptr14, align 8, !dbg !5314
  %add.ptr18 = getelementptr i8, ptr %16, i64 0, !dbg !5314
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !5314
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #16, !dbg !5311
  %17 = load ptr, ptr %tmp17, align 8, !dbg !5314
  store ptr %17, ptr %bus, align 8, !dbg !5311
  br label %for.cond8, !dbg !5311, !llvm.loop !5315

for.end19:                                        ; preds = %for.cond8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr20) #16, !dbg !5317
  call void @llvm.dbg.declare(metadata ptr %__mptr20, metadata !5290, metadata !DIExpression()), !dbg !5317
  %18 = load ptr, ptr @pci_root_buses, align 8, !dbg !5317
  store ptr %18, ptr %__mptr20, align 8, !dbg !5317
  %19 = load ptr, ptr %__mptr20, align 8, !dbg !5317
  %add.ptr22 = getelementptr i8, ptr %19, i64 0, !dbg !5317
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !5317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr20) #16, !dbg !5318
  %20 = load ptr, ptr %tmp21, align 8, !dbg !5317
  store ptr %20, ptr %bus, align 8, !dbg !5318
  br label %for.cond23, !dbg !5318

for.cond23:                                       ; preds = %for.inc28, %for.end19
  %21 = load ptr, ptr %bus, align 8, !dbg !5319
  %node24 = getelementptr inbounds %struct.pci_bus, ptr %21, i32 0, i32 0, !dbg !5319
  %cmp25 = icmp eq ptr %node24, @pci_root_buses, !dbg !5319
  %lnot26 = xor i1 %cmp25, true, !dbg !5319
  br i1 %lnot26, label %for.body27, label %for.end34, !dbg !5318

for.body27:                                       ; preds = %for.cond23
  %22 = load ptr, ptr %bus, align 8, !dbg !5320
  call void @pcibios_allocate_resources(ptr noundef %22, i32 noundef 1) #17, !dbg !5321
  br label %for.inc28, !dbg !5321

for.inc28:                                        ; preds = %for.body27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr29) #16, !dbg !5322
  call void @llvm.dbg.declare(metadata ptr %__mptr29, metadata !5293, metadata !DIExpression()), !dbg !5322
  %23 = load ptr, ptr %bus, align 8, !dbg !5322
  %node30 = getelementptr inbounds %struct.pci_bus, ptr %23, i32 0, i32 0, !dbg !5322
  %next31 = getelementptr inbounds %struct.list_head, ptr %node30, i32 0, i32 0, !dbg !5322
  %24 = load ptr, ptr %next31, align 8, !dbg !5322
  store ptr %24, ptr %__mptr29, align 8, !dbg !5322
  %25 = load ptr, ptr %__mptr29, align 8, !dbg !5322
  %add.ptr33 = getelementptr i8, ptr %25, i64 0, !dbg !5322
  store ptr %add.ptr33, ptr %tmp32, align 8, !dbg !5322
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr29) #16, !dbg !5319
  %26 = load ptr, ptr %tmp32, align 8, !dbg !5322
  store ptr %26, ptr %bus, align 8, !dbg !5319
  br label %for.cond23, !dbg !5319, !llvm.loop !5323

for.end34:                                        ; preds = %for.cond23
  call void @e820__reserve_resources_late() #17, !dbg !5325
  call void @ioapic_insert_resources() #17, !dbg !5326
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #16, !dbg !5327
  ret void, !dbg !5327
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5328 dso_local void @e820__reserve_resources_late() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5330 dso_local void @ioapic_insert_resources() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5332 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5335 dso_local void @pci_assign_unassigned_resources() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pcibios_fw_addr_list_del() #5 section ".init.text" align 16 !dbg !5336 {
entry:
  %flags = alloca i64, align 8
  %entry1 = alloca ptr, align 8
  %next = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr15 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5338, metadata !DIExpression()), !dbg !5355
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #16, !dbg !5356
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !5339, metadata !DIExpression()), !dbg !5357
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !5356
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5340, metadata !DIExpression()), !dbg !5358
  br label %do.body, !dbg !5359

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5360

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5341, metadata !DIExpression()), !dbg !5361
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5345, metadata !DIExpression()), !dbg !5361
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5361
  %conv = zext i1 %cmp to i32, !dbg !5361
  store i32 1, ptr %tmp, align 4, !dbg !5361
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5362
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5362
  %0 = load i32, ptr %tmp, align 4, !dbg !5361
  %call = call ptr @spinlock_check(ptr noundef @pcibios_fwaddrmap_lock) #17, !dbg !5362
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !5362
  store i64 %call3, ptr %flags, align 8, !dbg !5362
  br label %do.cond, !dbg !5362

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5362

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5360

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5360

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5363
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5346, metadata !DIExpression()), !dbg !5363
  %1 = load ptr, ptr @pcibios_fwaddrmappings, align 8, !dbg !5363
  store ptr %1, ptr %__mptr, align 8, !dbg !5363
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5363
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5363
  store ptr %add.ptr, ptr %tmp6, align 8, !dbg !5363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5364
  %3 = load ptr, ptr %tmp6, align 8, !dbg !5363
  store ptr %3, ptr %entry1, align 8, !dbg !5364
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #16, !dbg !5365
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !5349, metadata !DIExpression()), !dbg !5365
  %4 = load ptr, ptr %entry1, align 8, !dbg !5365
  %list = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %4, i32 0, i32 0, !dbg !5365
  %next8 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !5365
  %5 = load ptr, ptr %next8, align 8, !dbg !5365
  store ptr %5, ptr %__mptr7, align 8, !dbg !5365
  %6 = load ptr, ptr %__mptr7, align 8, !dbg !5365
  %add.ptr10 = getelementptr i8, ptr %6, i64 0, !dbg !5365
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5365
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #16, !dbg !5364
  %7 = load ptr, ptr %tmp9, align 8, !dbg !5365
  store ptr %7, ptr %next, align 8, !dbg !5364
  br label %for.cond, !dbg !5364

for.cond:                                         ; preds = %for.inc, %do.end5
  %8 = load ptr, ptr %entry1, align 8, !dbg !5366
  %list11 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %8, i32 0, i32 0, !dbg !5366
  %cmp12 = icmp eq ptr %list11, @pcibios_fwaddrmappings, !dbg !5366
  %lnot = xor i1 %cmp12, true, !dbg !5366
  br i1 %lnot, label %for.body, label %for.end, !dbg !5364

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %entry1, align 8, !dbg !5367
  %list14 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %9, i32 0, i32 0, !dbg !5369
  call void @list_del(ptr noundef %list14) #17, !dbg !5370
  %10 = load ptr, ptr %entry1, align 8, !dbg !5371
  %dev = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %10, i32 0, i32 1, !dbg !5372
  %11 = load ptr, ptr %dev, align 8, !dbg !5372
  call void @pci_dev_put(ptr noundef %11) #17, !dbg !5373
  %12 = load ptr, ptr %entry1, align 8, !dbg !5374
  call void @kfree(ptr noundef %12) #17, !dbg !5375
  br label %for.inc, !dbg !5376

for.inc:                                          ; preds = %for.body
  %13 = load ptr, ptr %next, align 8, !dbg !5366
  store ptr %13, ptr %entry1, align 8, !dbg !5366
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #16, !dbg !5377
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !5351, metadata !DIExpression()), !dbg !5377
  %14 = load ptr, ptr %next, align 8, !dbg !5377
  %list16 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %14, i32 0, i32 0, !dbg !5377
  %next17 = getelementptr inbounds %struct.list_head, ptr %list16, i32 0, i32 0, !dbg !5377
  %15 = load ptr, ptr %next17, align 8, !dbg !5377
  store ptr %15, ptr %__mptr15, align 8, !dbg !5377
  %16 = load ptr, ptr %__mptr15, align 8, !dbg !5377
  %add.ptr19 = getelementptr i8, ptr %16, i64 0, !dbg !5377
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !5377
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #16, !dbg !5366
  %17 = load ptr, ptr %tmp18, align 8, !dbg !5377
  store ptr %17, ptr %next, align 8, !dbg !5366
  br label %for.cond, !dbg !5366, !llvm.loop !5378

for.end:                                          ; preds = %for.cond
  %18 = load i64, ptr %flags, align 8, !dbg !5380
  call void @spin_unlock_irqrestore(ptr noundef @pcibios_fwaddrmap_lock, i64 noundef %18) #17, !dbg !5381
  store i8 1, ptr @pcibios_fw_addr_done, align 1, !dbg !5382
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #16, !dbg !5383
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5383
  ret void, !dbg !5383
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #7 align 16 !dbg !5384 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5389, metadata !DIExpression()), !dbg !5390
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5391
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5392
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5393
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5394
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5395
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5396
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5397
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5398
  ret void, !dbg !5399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5400 dso_local void @pci_dev_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5401 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #7 align 16 !dbg !5404 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5408
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !5410
  br i1 %call, label %if.end, label %if.then, !dbg !5411

if.then:                                          ; preds = %entry
  br label %return, !dbg !5412

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5413
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5414
  %2 = load ptr, ptr %prev, align 8, !dbg !5414
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5415
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5416
  %4 = load ptr, ptr %next, align 8, !dbg !5416
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !5417
  br label %return, !dbg !5418

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5418
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #7 align 16 !dbg !5419 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5423, metadata !DIExpression()), !dbg !5424
  ret i1 true, !dbg !5425
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !5426 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5430, metadata !DIExpression()), !dbg !5432
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5431, metadata !DIExpression()), !dbg !5433
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5434
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5435
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5436
  store ptr %0, ptr %prev1, align 8, !dbg !5437
  br label %do.body, !dbg !5438

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5439

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5441

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5439

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5443
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5443
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5443
  store volatile ptr %2, ptr %next4, align 8, !dbg !5443
  br label %do.end5, !dbg !5443

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5439

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5445
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcibios_allocate_bridge_resources(ptr noundef %dev) #0 align 16 !dbg !5446 {
entry:
  %dev.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %r = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5448, metadata !DIExpression()), !dbg !5451
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !5452
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5449, metadata !DIExpression()), !dbg !5453
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !5454
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5450, metadata !DIExpression()), !dbg !5455
  store i32 7, ptr %idx, align 4, !dbg !5456
  br label %for.cond, !dbg !5458

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %idx, align 4, !dbg !5459
  %cmp = icmp slt i32 %0, 11, !dbg !5461
  br i1 %cmp, label %for.body, label %for.end, !dbg !5462

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5463
  %resource = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 40, !dbg !5465
  %2 = load i32, ptr %idx, align 4, !dbg !5466
  %idxprom = sext i32 %2 to i64, !dbg !5463
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5463
  store ptr %arrayidx, ptr %r, align 8, !dbg !5467
  %3 = load ptr, ptr %r, align 8, !dbg !5468
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3, !dbg !5470
  %4 = load i64, ptr %flags, align 8, !dbg !5470
  %tobool = icmp ne i64 %4, 0, !dbg !5468
  br i1 %tobool, label %if.end, label %if.then, !dbg !5471

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5472

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %r, align 8, !dbg !5473
  %parent = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 5, !dbg !5475
  %6 = load ptr, ptr %parent, align 8, !dbg !5475
  %tobool1 = icmp ne ptr %6, null, !dbg !5473
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5476

if.then2:                                         ; preds = %if.end
  br label %for.inc, !dbg !5477

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %r, align 8, !dbg !5478
  %start = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 0, !dbg !5480
  %8 = load i64, ptr %start, align 8, !dbg !5480
  %tobool4 = icmp ne i64 %8, 0, !dbg !5478
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !5481

lor.lhs.false:                                    ; preds = %if.end3
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5482
  %10 = load i32, ptr %idx, align 4, !dbg !5483
  %call = call i32 @pci_claim_bridge_resource(ptr noundef %9, i32 noundef %10) #17, !dbg !5484
  %cmp5 = icmp slt i32 %call, 0, !dbg !5485
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !5486

if.then6:                                         ; preds = %lor.lhs.false, %if.end3
  %11 = load ptr, ptr %r, align 8, !dbg !5487
  %end = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1, !dbg !5489
  store i64 0, ptr %end, align 8, !dbg !5490
  %12 = load ptr, ptr %r, align 8, !dbg !5491
  %start7 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 0, !dbg !5492
  store i64 0, ptr %start7, align 8, !dbg !5493
  %13 = load ptr, ptr %r, align 8, !dbg !5494
  %flags8 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3, !dbg !5495
  store i64 0, ptr %flags8, align 8, !dbg !5496
  br label %if.end9, !dbg !5497

if.end9:                                          ; preds = %if.then6, %lor.lhs.false
  br label %for.inc, !dbg !5498

for.inc:                                          ; preds = %if.end9, %if.then2, %if.then
  %14 = load i32, ptr %idx, align 4, !dbg !5499
  %inc = add i32 %14, 1, !dbg !5499
  store i32 %inc, ptr %idx, align 4, !dbg !5499
  br label %for.cond, !dbg !5500, !llvm.loop !5501

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !5503
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !5503
  ret void, !dbg !5503
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5504 dso_local i32 @pci_claim_bridge_resource(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcibios_allocate_dev_resources(ptr noundef %dev, i32 noundef %pass) #0 align 16 !dbg !5505 {
entry:
  %dev.addr = alloca ptr, align 8
  %pass.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %disabled = alloca i32, align 4
  %i = alloca i32, align 4
  %command = alloca i16, align 2
  %r = alloca ptr, align 8
  %idx_range = alloca [1 x %struct.pci_check_idx_range], align 4
  %reg = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5509, metadata !DIExpression()), !dbg !5527
  store i32 %pass, ptr %pass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pass.addr, metadata !5510, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5511, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 4, ptr %disabled) #16, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %disabled, metadata !5512, metadata !DIExpression()), !dbg !5531
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5529
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5513, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 2, ptr %command) #16, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %command, metadata !5514, metadata !DIExpression()), !dbg !5534
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5515, metadata !DIExpression()), !dbg !5536
  call void @llvm.lifetime.start.p0(i64 8, ptr %idx_range) #16, !dbg !5537
  call void @llvm.dbg.declare(metadata ptr %idx_range, metadata !5516, metadata !DIExpression()), !dbg !5538
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %idx_range, ptr align 4 @__const.pcibios_allocate_dev_resources.idx_range, i64 8, i1 false), !dbg !5538
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5539
  %call = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef %command) #17, !dbg !5540
  store i32 0, ptr %i, align 4, !dbg !5541
  br label %for.cond, !dbg !5543

for.cond:                                         ; preds = %for.inc45, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5544
  %conv = sext i32 %1 to i64, !dbg !5544
  %cmp = icmp ult i64 %conv, 1, !dbg !5546
  br i1 %cmp, label %for.body, label %for.end47, !dbg !5547

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !5548
  %idxprom = sext i32 %2 to i64, !dbg !5550
  %arrayidx = getelementptr [1 x %struct.pci_check_idx_range], ptr %idx_range, i64 0, i64 %idxprom, !dbg !5550
  %start = getelementptr inbounds %struct.pci_check_idx_range, ptr %arrayidx, i32 0, i32 0, !dbg !5551
  %3 = load i32, ptr %start, align 4, !dbg !5551
  store i32 %3, ptr %idx, align 4, !dbg !5552
  br label %for.cond2, !dbg !5553

for.cond2:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %idx, align 4, !dbg !5554
  %5 = load i32, ptr %i, align 4, !dbg !5556
  %idxprom3 = sext i32 %5 to i64, !dbg !5557
  %arrayidx4 = getelementptr [1 x %struct.pci_check_idx_range], ptr %idx_range, i64 0, i64 %idxprom3, !dbg !5557
  %end = getelementptr inbounds %struct.pci_check_idx_range, ptr %arrayidx4, i32 0, i32 1, !dbg !5558
  %6 = load i32, ptr %end, align 4, !dbg !5558
  %cmp5 = icmp sle i32 %4, %6, !dbg !5559
  br i1 %cmp5, label %for.body7, label %for.end, !dbg !5560

for.body7:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5561
  %resource = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 40, !dbg !5563
  %8 = load i32, ptr %idx, align 4, !dbg !5564
  %idxprom8 = sext i32 %8 to i64, !dbg !5561
  %arrayidx9 = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom8, !dbg !5561
  store ptr %arrayidx9, ptr %r, align 8, !dbg !5565
  %9 = load ptr, ptr %r, align 8, !dbg !5566
  %parent = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 5, !dbg !5568
  %10 = load ptr, ptr %parent, align 8, !dbg !5568
  %tobool = icmp ne ptr %10, null, !dbg !5566
  br i1 %tobool, label %if.then, label %if.end, !dbg !5569

if.then:                                          ; preds = %for.body7
  br label %for.inc, !dbg !5570

if.end:                                           ; preds = %for.body7
  %11 = load ptr, ptr %r, align 8, !dbg !5571
  %start10 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 0, !dbg !5573
  %12 = load i64, ptr %start10, align 8, !dbg !5573
  %tobool11 = icmp ne i64 %12, 0, !dbg !5571
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5574

if.then12:                                        ; preds = %if.end
  br label %for.inc, !dbg !5575

if.end13:                                         ; preds = %if.end
  %13 = load ptr, ptr %r, align 8, !dbg !5576
  %flags = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3, !dbg !5578
  %14 = load i64, ptr %flags, align 8, !dbg !5578
  %and = and i64 %14, 256, !dbg !5579
  %tobool14 = icmp ne i64 %and, 0, !dbg !5579
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !5580

if.then15:                                        ; preds = %if.end13
  %15 = load i16, ptr %command, align 2, !dbg !5581
  %conv16 = zext i16 %15 to i32, !dbg !5581
  %and17 = and i32 %conv16, 1, !dbg !5582
  %tobool18 = icmp ne i32 %and17, 0, !dbg !5583
  %lnot = xor i1 %tobool18, true, !dbg !5583
  %lnot.ext = zext i1 %lnot to i32, !dbg !5583
  store i32 %lnot.ext, ptr %disabled, align 4, !dbg !5584
  br label %if.end24, !dbg !5585

if.else:                                          ; preds = %if.end13
  %16 = load i16, ptr %command, align 2, !dbg !5586
  %conv19 = zext i16 %16 to i32, !dbg !5586
  %and20 = and i32 %conv19, 2, !dbg !5587
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5588
  %lnot22 = xor i1 %tobool21, true, !dbg !5588
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5588
  store i32 %lnot.ext23, ptr %disabled, align 4, !dbg !5589
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then15
  %17 = load i32, ptr %pass.addr, align 4, !dbg !5590
  %18 = load i32, ptr %disabled, align 4, !dbg !5592
  %cmp25 = icmp eq i32 %17, %18, !dbg !5593
  br i1 %cmp25, label %if.then27, label %if.end44, !dbg !5594

if.then27:                                        ; preds = %if.end24
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !5595
  %20 = load i32, ptr %idx, align 4, !dbg !5598
  %call28 = call i32 @pci_claim_resource(ptr noundef %19, i32 noundef %20) #17, !dbg !5599
  %cmp29 = icmp slt i32 %call28, 0, !dbg !5600
  br i1 %cmp29, label %if.then31, label %if.end43, !dbg !5601

if.then31:                                        ; preds = %if.then27
  %21 = load ptr, ptr %r, align 8, !dbg !5602
  %flags32 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 3, !dbg !5605
  %22 = load i64, ptr %flags32, align 8, !dbg !5605
  %and33 = and i64 %22, 16, !dbg !5606
  %tobool34 = icmp ne i64 %and33, 0, !dbg !5606
  br i1 %tobool34, label %if.then35, label %if.else37, !dbg !5607

if.then35:                                        ; preds = %if.then31
  br label %do.body, !dbg !5608

do.body:                                          ; preds = %if.then35
  br label %do.cond, !dbg !5611

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5611

do.end:                                           ; preds = %do.cond
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !5608
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 37, !dbg !5608
  %24 = load i32, ptr %idx, align 4, !dbg !5608
  %25 = load ptr, ptr %r, align 8, !dbg !5608
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef @.str.2, i32 noundef %24, ptr noundef %25) #18, !dbg !5608
  br label %if.end42, !dbg !5613

if.else37:                                        ; preds = %if.then31
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5614
  %27 = load i32, ptr %idx, align 4, !dbg !5616
  %28 = load ptr, ptr %r, align 8, !dbg !5617
  %start38 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 0, !dbg !5618
  %29 = load i64, ptr %start38, align 8, !dbg !5618
  call void @pcibios_save_fw_addr(ptr noundef %26, i32 noundef %27, i64 noundef %29) #17, !dbg !5619
  %30 = load ptr, ptr %r, align 8, !dbg !5620
  %start39 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 0, !dbg !5621
  %31 = load i64, ptr %start39, align 8, !dbg !5621
  %32 = load ptr, ptr %r, align 8, !dbg !5622
  %end40 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 1, !dbg !5623
  %33 = load i64, ptr %end40, align 8, !dbg !5624
  %sub = sub i64 %33, %31, !dbg !5624
  store i64 %sub, ptr %end40, align 8, !dbg !5624
  %34 = load ptr, ptr %r, align 8, !dbg !5625
  %start41 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 0, !dbg !5626
  store i64 0, ptr %start41, align 8, !dbg !5627
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %do.end
  br label %if.end43, !dbg !5628

if.end43:                                         ; preds = %if.end42, %if.then27
  br label %if.end44, !dbg !5629

if.end44:                                         ; preds = %if.end43, %if.end24
  br label %for.inc, !dbg !5630

for.inc:                                          ; preds = %if.end44, %if.then12, %if.then
  %35 = load i32, ptr %idx, align 4, !dbg !5631
  %inc = add i32 %35, 1, !dbg !5631
  store i32 %inc, ptr %idx, align 4, !dbg !5631
  br label %for.cond2, !dbg !5632, !llvm.loop !5633

for.end:                                          ; preds = %for.cond2
  br label %for.inc45, !dbg !5634

for.inc45:                                        ; preds = %for.end
  %36 = load i32, ptr %i, align 4, !dbg !5635
  %inc46 = add i32 %36, 1, !dbg !5635
  store i32 %inc46, ptr %i, align 4, !dbg !5635
  br label %for.cond, !dbg !5636, !llvm.loop !5637

for.end47:                                        ; preds = %for.cond
  %37 = load i32, ptr %pass.addr, align 4, !dbg !5639
  %tobool48 = icmp ne i32 %37, 0, !dbg !5639
  br i1 %tobool48, label %if.end65, label %if.then49, !dbg !5640

if.then49:                                        ; preds = %for.end47
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !5641
  %resource50 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 40, !dbg !5642
  %arrayidx51 = getelementptr [11 x %struct.resource], ptr %resource50, i64 0, i64 6, !dbg !5641
  store ptr %arrayidx51, ptr %r, align 8, !dbg !5643
  %39 = load ptr, ptr %r, align 8, !dbg !5644
  %flags52 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 3, !dbg !5645
  %40 = load i64, ptr %flags52, align 8, !dbg !5645
  %and53 = and i64 %40, 1, !dbg !5646
  %tobool54 = icmp ne i64 %and53, 0, !dbg !5646
  br i1 %tobool54, label %if.then55, label %if.end64, !dbg !5647

if.then55:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #16, !dbg !5648
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !5522, metadata !DIExpression()), !dbg !5649
  %41 = load ptr, ptr %r, align 8, !dbg !5650
  %flags56 = getelementptr inbounds %struct.resource, ptr %41, i32 0, i32 3, !dbg !5651
  %42 = load i64, ptr %flags56, align 8, !dbg !5652
  %and57 = and i64 %42, -2, !dbg !5652
  store i64 %and57, ptr %flags56, align 8, !dbg !5652
  %43 = load ptr, ptr %dev.addr, align 8, !dbg !5653
  %44 = load ptr, ptr %dev.addr, align 8, !dbg !5654
  %rom_base_reg = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 21, !dbg !5655
  %45 = load i8, ptr %rom_base_reg, align 8, !dbg !5655
  %conv58 = zext i8 %45 to i32, !dbg !5654
  %call59 = call i32 @pci_read_config_dword(ptr noundef %43, i32 noundef %conv58, ptr noundef %reg) #17, !dbg !5656
  %46 = load ptr, ptr %dev.addr, align 8, !dbg !5657
  %47 = load ptr, ptr %dev.addr, align 8, !dbg !5658
  %rom_base_reg60 = getelementptr inbounds %struct.pci_dev, ptr %47, i32 0, i32 21, !dbg !5659
  %48 = load i8, ptr %rom_base_reg60, align 8, !dbg !5659
  %conv61 = zext i8 %48 to i32, !dbg !5658
  %49 = load i32, ptr %reg, align 4, !dbg !5660
  %and62 = and i32 %49, -2, !dbg !5661
  %call63 = call i32 @pci_write_config_dword(ptr noundef %46, i32 noundef %conv61, i32 noundef %and62) #17, !dbg !5662
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #16, !dbg !5663
  br label %if.end64, !dbg !5664

if.end64:                                         ; preds = %if.then55, %if.then49
  br label %if.end65, !dbg !5665

if.end65:                                         ; preds = %if.end64, %for.end47
  call void @llvm.lifetime.end.p0(i64 8, ptr %idx_range) #16, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 2, ptr %command) #16, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 4, ptr %disabled) #16, !dbg !5666
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !5666
  ret void, !dbg !5666
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5667 dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5673 dso_local i32 @pci_claim_resource(ptr noundef, i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5674 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcibios_save_fw_addr(ptr noundef %dev, i32 noundef %idx, i64 noundef %fw_addr) #0 align 16 !dbg !5677 {
entry:
  %dev.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %fw_addr.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %map = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy17 = alloca i64, align 8
  %__dummy218 = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5681, metadata !DIExpression()), !dbg !5698
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5682, metadata !DIExpression()), !dbg !5699
  store i64 %fw_addr, ptr %fw_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fw_addr.addr, metadata !5683, metadata !DIExpression()), !dbg !5700
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5684, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %map) #16, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %map, metadata !5685, metadata !DIExpression()), !dbg !5704
  %0 = load i8, ptr @pcibios_fw_addr_done, align 1, !dbg !5705, !range !4949, !noundef !920
  %tobool = trunc i8 %0 to i1, !dbg !5705
  br i1 %tobool, label %if.then, label %if.end, !dbg !5707

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5708

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5709

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5710

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5686, metadata !DIExpression()), !dbg !5711
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5690, metadata !DIExpression()), !dbg !5711
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5711
  %conv = zext i1 %cmp to i32, !dbg !5711
  store i32 1, ptr %tmp, align 4, !dbg !5711
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5712
  %1 = load i32, ptr %tmp, align 4, !dbg !5711
  %call = call ptr @spinlock_check(ptr noundef @pcibios_fwaddrmap_lock) #17, !dbg !5712
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !5712
  store i64 %call2, ptr %flags, align 8, !dbg !5712
  br label %do.cond, !dbg !5712

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5712

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !5710

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !5710

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5713
  %call5 = call ptr @pcibios_fwaddrmap_lookup(ptr noundef %2) #17, !dbg !5714
  store ptr %call5, ptr %map, align 8, !dbg !5715
  %3 = load ptr, ptr %map, align 8, !dbg !5716
  %tobool6 = icmp ne ptr %3, null, !dbg !5716
  br i1 %tobool6, label %if.else, label %if.then7, !dbg !5717

if.then7:                                         ; preds = %do.end4
  %4 = load i64, ptr %flags, align 8, !dbg !5718
  call void @spin_unlock_irqrestore(ptr noundef @pcibios_fwaddrmap_lock, i64 noundef %4) #17, !dbg !5719
  %call8 = call noalias ptr @kzalloc(i64 noundef 112, i32 noundef 3264) #19, !dbg !5720
  store ptr %call8, ptr %map, align 8, !dbg !5721
  %5 = load ptr, ptr %map, align 8, !dbg !5722
  %tobool9 = icmp ne ptr %5, null, !dbg !5722
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5724

if.then10:                                        ; preds = %if.then7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5725

if.end11:                                         ; preds = %if.then7
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5726
  %call12 = call ptr @pci_dev_get(ptr noundef %6) #17, !dbg !5727
  %7 = load ptr, ptr %map, align 8, !dbg !5728
  %dev13 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %7, i32 0, i32 1, !dbg !5729
  store ptr %call12, ptr %dev13, align 8, !dbg !5730
  %8 = load i64, ptr %fw_addr.addr, align 8, !dbg !5731
  %9 = load ptr, ptr %map, align 8, !dbg !5732
  %fw_addr14 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %9, i32 0, i32 2, !dbg !5733
  %10 = load i32, ptr %idx.addr, align 4, !dbg !5734
  %idxprom = sext i32 %10 to i64, !dbg !5732
  %arrayidx = getelementptr [11 x i64], ptr %fw_addr14, i64 0, i64 %idxprom, !dbg !5732
  store i64 %8, ptr %arrayidx, align 8, !dbg !5735
  %11 = load ptr, ptr %map, align 8, !dbg !5736
  %list = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %11, i32 0, i32 0, !dbg !5737
  call void @INIT_LIST_HEAD(ptr noundef %list) #17, !dbg !5738
  br label %do.body15, !dbg !5739

do.body15:                                        ; preds = %if.end11
  br label %do.body16, !dbg !5740

do.body16:                                        ; preds = %do.body15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy17) #16, !dbg !5741
  call void @llvm.dbg.declare(metadata ptr %__dummy17, metadata !5691, metadata !DIExpression()), !dbg !5741
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy218) #16, !dbg !5741
  call void @llvm.dbg.declare(metadata ptr %__dummy218, metadata !5697, metadata !DIExpression()), !dbg !5741
  %cmp19 = icmp eq ptr %__dummy17, %__dummy218, !dbg !5741
  %conv20 = zext i1 %cmp19 to i32, !dbg !5741
  store i32 1, ptr %tmp21, align 4, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy218) #16, !dbg !5742
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy17) #16, !dbg !5742
  %12 = load i32, ptr %tmp21, align 4, !dbg !5741
  %call22 = call ptr @spinlock_check(ptr noundef @pcibios_fwaddrmap_lock) #17, !dbg !5742
  %call23 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call22) #17, !dbg !5742
  store i64 %call23, ptr %flags, align 8, !dbg !5742
  br label %do.cond24, !dbg !5742

do.cond24:                                        ; preds = %do.body16
  br label %do.end25, !dbg !5742

do.end25:                                         ; preds = %do.cond24
  br label %do.cond26, !dbg !5740

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !5740

do.end27:                                         ; preds = %do.cond26
  %13 = load ptr, ptr %map, align 8, !dbg !5743
  %list28 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %13, i32 0, i32 0, !dbg !5744
  call void @list_add_tail(ptr noundef %list28, ptr noundef @pcibios_fwaddrmappings) #17, !dbg !5745
  br label %if.end32, !dbg !5746

if.else:                                          ; preds = %do.end4
  %14 = load i64, ptr %fw_addr.addr, align 8, !dbg !5747
  %15 = load ptr, ptr %map, align 8, !dbg !5748
  %fw_addr29 = getelementptr inbounds %struct.pcibios_fwaddrmap, ptr %15, i32 0, i32 2, !dbg !5749
  %16 = load i32, ptr %idx.addr, align 4, !dbg !5750
  %idxprom30 = sext i32 %16 to i64, !dbg !5748
  %arrayidx31 = getelementptr [11 x i64], ptr %fw_addr29, i64 0, i64 %idxprom30, !dbg !5748
  store i64 %14, ptr %arrayidx31, align 8, !dbg !5751
  br label %if.end32

if.end32:                                         ; preds = %if.else, %do.end27
  %17 = load i64, ptr %flags, align 8, !dbg !5752
  call void @spin_unlock_irqrestore(ptr noundef @pcibios_fwaddrmap_lock, i64 noundef %17) #17, !dbg !5753
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5754
  br label %cleanup, !dbg !5754

cleanup:                                          ; preds = %if.end32, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %map) #16, !dbg !5754
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5754
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5754

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5755 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5758 dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5761 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5765, metadata !DIExpression()), !dbg !5767
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5766, metadata !DIExpression()), !dbg !5768
  %0 = load i64, ptr %size.addr, align 8, !dbg !5769
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5770
  %or = or i32 %1, 256, !dbg !5771
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5772
  ret ptr %call, !dbg !5773
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5774 dso_local ptr @pci_dev_get(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #7 align 16 !dbg !5777 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5779, metadata !DIExpression()), !dbg !5780
  br label %do.body, !dbg !5781

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5782

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5784

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5782

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5786
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5786
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5786
  store volatile ptr %0, ptr %next, align 8, !dbg !5786
  br label %do.end3, !dbg !5786

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5782

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5788

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5789

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5791

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5789

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5793
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5793
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5793
  store volatile ptr %2, ptr %prev, align 8, !dbg !5793
  br label %do.end9, !dbg !5793

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5789

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5795
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #7 align 16 !dbg !5796 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5798, metadata !DIExpression()), !dbg !5800
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5799, metadata !DIExpression()), !dbg !5801
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5802
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5803
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5804
  %2 = load ptr, ptr %prev, align 8, !dbg !5804
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5805
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !5806
  ret void, !dbg !5807
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5808 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5810, metadata !DIExpression()), !dbg !5815
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5811, metadata !DIExpression()), !dbg !5816
  %0 = load i64, ptr %size.addr, align 8, !dbg !5817
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5818
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5819

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5820
  %tobool = icmp ne i64 %2, 0, !dbg !5820
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5821

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5822
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5812, metadata !DIExpression()), !dbg !5823
  %3 = load i64, ptr %size.addr, align 8, !dbg !5824
  %cmp = icmp ugt i64 %3, 8192, !dbg !5826
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5827

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5828
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5829
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !5830
  store ptr %call, ptr %retval, align 8, !dbg !5831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5831

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5832
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5832
  store i32 %call2, ptr %index, align 4, !dbg !5833
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5834
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5835
  %9 = ptrtoint ptr %8 to i64, !dbg !5835
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5836
  %idxprom = zext i32 %call3 to i64, !dbg !5837
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5837
  %10 = load i32, ptr %index, align 4, !dbg !5838
  %idxprom4 = zext i32 %10 to i64, !dbg !5837
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5837
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5837
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5839
  %13 = load i64, ptr %size.addr, align 8, !dbg !5840
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5841
  store ptr %call6, ptr %retval, align 8, !dbg !5842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5842

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5843
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5844
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5845
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !5846
  store ptr %call8, ptr %retval, align 8, !dbg !5847
  br label %return, !dbg !5847

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5848
  ret ptr %16, !dbg !5848
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5849 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !5850 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5854, metadata !DIExpression()), !dbg !5856
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5855, metadata !DIExpression()), !dbg !5857
  %0 = load i64, ptr %size.addr, align 8, !dbg !5858
  %tobool = icmp ne i64 %0, 0, !dbg !5858
  br i1 %tobool, label %if.end, label %if.then, !dbg !5860

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5861
  br label %return, !dbg !5861

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5862
  %cmp = icmp ule i64 %1, 8, !dbg !5864
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5865

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5866
  br label %return, !dbg !5866

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5867
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5869
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5870

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5871
  %cmp4 = icmp ule i64 %3, 96, !dbg !5872
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5873

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5874
  br label %return, !dbg !5874

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5875
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5877
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5878

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5879
  %cmp9 = icmp ule i64 %5, 192, !dbg !5880
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5881

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5882
  br label %return, !dbg !5882

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5883
  %cmp12 = icmp ule i64 %6, 8, !dbg !5885
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5886

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5888
  %cmp15 = icmp ule i64 %7, 16, !dbg !5890
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5891

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5892
  br label %return, !dbg !5892

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5893
  %cmp18 = icmp ule i64 %8, 32, !dbg !5895
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5896

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5897
  br label %return, !dbg !5897

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5898
  %cmp21 = icmp ule i64 %9, 64, !dbg !5900
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5901

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5902
  br label %return, !dbg !5902

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5903
  %cmp24 = icmp ule i64 %10, 128, !dbg !5905
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5906

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5907
  br label %return, !dbg !5907

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5908
  %cmp27 = icmp ule i64 %11, 256, !dbg !5910
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5911

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5912
  br label %return, !dbg !5912

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5913
  %cmp30 = icmp ule i64 %12, 512, !dbg !5915
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5916

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5917
  br label %return, !dbg !5917

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5918
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5920
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5921

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5922
  br label %return, !dbg !5922

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5923
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5925
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5926

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5927
  br label %return, !dbg !5927

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5928
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5930
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5931

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5932
  br label %return, !dbg !5932

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5933
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5935
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5936

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5937
  br label %return, !dbg !5937

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5938
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5940
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5941

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5942
  br label %return, !dbg !5942

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5943
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5945
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5946

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5947
  br label %return, !dbg !5947

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5948
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5950
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5951

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5952
  br label %return, !dbg !5952

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5953
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5955
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5956

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5957
  br label %return, !dbg !5957

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5958
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5960
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5961

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5962
  br label %return, !dbg !5962

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5963
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5965
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5966

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5967
  br label %return, !dbg !5967

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5968
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5970
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5971

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5972
  br label %return, !dbg !5972

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5973
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5975
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5976

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5977
  br label %return, !dbg !5977

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5978, !range !4949, !noundef !920
  %tobool69 = trunc i8 %25 to i1, !dbg !5978
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5980

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5981

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #21, !dbg !5982, !srcloc !5985
  unreachable, !dbg !5982

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5986

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5987

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5988

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5990

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5988

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #16, !dbg !5992, !srcloc !5994
  br label %do.end75, !dbg !5992

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5988

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5995
  br label %return, !dbg !5995

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5996
  ret i32 %26, !dbg !5996
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5997 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6003 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6007, metadata !DIExpression()), !dbg !6009
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6008, metadata !DIExpression()), !dbg !6010
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6011
  %and = and i32 %0, 17, !dbg !6011
  %cmp = icmp eq i32 %and, 0, !dbg !6011
  %lnot = xor i1 %cmp, true, !dbg !6011
  %lnot1 = xor i1 %lnot, true, !dbg !6011
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6011
  %conv = sext i32 %lnot.ext to i64, !dbg !6011
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6011
  %tobool = icmp ne i64 %expval, 0, !dbg !6011
  br i1 %tobool, label %if.then, label %if.end, !dbg !6013

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6014
  br label %return, !dbg !6014

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6015
  %and2 = and i32 %1, 1, !dbg !6017
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6017
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6018

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6019
  br label %return, !dbg !6019

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6020
  br label %return, !dbg !6020

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6022
  ret i32 %2, !dbg !6022
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6023 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6024 dso_local void @__compiletime_assert_204() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !6025 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6029, metadata !DIExpression()), !dbg !6032
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6030, metadata !DIExpression()), !dbg !6033
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6031, metadata !DIExpression()), !dbg !6034
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6035
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6037
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6038
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6039
  br i1 %call, label %if.end, label %if.then, !dbg !6040

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6041

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6042
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6043
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6044
  store ptr %3, ptr %prev1, align 8, !dbg !6045
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6046
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6047
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6048
  store ptr %5, ptr %next2, align 8, !dbg !6049
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6050
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6051
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6052
  store ptr %7, ptr %prev3, align 8, !dbg !6053
  br label %do.body, !dbg !6054

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6055

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6057

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6055

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6059
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6059
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6059
  store volatile ptr %9, ptr %next6, align 8, !dbg !6059
  br label %do.end7, !dbg !6059

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6055

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6061
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #7 align 16 !dbg !6062 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6066, metadata !DIExpression()), !dbg !6069
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6067, metadata !DIExpression()), !dbg !6070
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6068, metadata !DIExpression()), !dbg !6071
  ret i1 true, !dbg !6072
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pcibios_allocate_dev_rom_resource(ptr noundef %dev) #0 align 16 !dbg !6073 {
entry:
  %dev.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6075, metadata !DIExpression()), !dbg !6077
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #16, !dbg !6078
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6076, metadata !DIExpression()), !dbg !6079
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6080
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !6081
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 6, !dbg !6080
  store ptr %arrayidx, ptr %r, align 8, !dbg !6082
  %1 = load ptr, ptr %r, align 8, !dbg !6083
  %flags = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 3, !dbg !6085
  %2 = load i64, ptr %flags, align 8, !dbg !6085
  %tobool = icmp ne i64 %2, 0, !dbg !6083
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6086

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %r, align 8, !dbg !6087
  %start = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 0, !dbg !6088
  %4 = load i64, ptr %start, align 8, !dbg !6088
  %tobool1 = icmp ne i64 %4, 0, !dbg !6087
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6089

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %r, align 8, !dbg !6091
  %parent = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 5, !dbg !6093
  %6 = load ptr, ptr %parent, align 8, !dbg !6093
  %tobool2 = icmp ne ptr %6, null, !dbg !6091
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !6094

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6095

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6096
  %call = call i32 @pci_claim_resource(ptr noundef %7, i32 noundef 6) #17, !dbg !6098
  %cmp = icmp slt i32 %call, 0, !dbg !6099
  br i1 %cmp, label %if.then5, label %if.end8, !dbg !6100

if.then5:                                         ; preds = %if.end4
  %8 = load ptr, ptr %r, align 8, !dbg !6101
  %start6 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !6103
  %9 = load i64, ptr %start6, align 8, !dbg !6103
  %10 = load ptr, ptr %r, align 8, !dbg !6104
  %end = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 1, !dbg !6105
  %11 = load i64, ptr %end, align 8, !dbg !6106
  %sub = sub i64 %11, %9, !dbg !6106
  store i64 %sub, ptr %end, align 8, !dbg !6106
  %12 = load ptr, ptr %r, align 8, !dbg !6107
  %start7 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 0, !dbg !6108
  store i64 0, ptr %start7, align 8, !dbg !6109
  br label %if.end8, !dbg !6110

if.end8:                                          ; preds = %if.then5, %if.end4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6111
  br label %cleanup, !dbg !6111

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #16, !dbg !6111
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6111

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923}
!llvm.ident = !{!4924}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pcibios_fw_addr_done", scope: !2, file: !3, line: 55, type: !711, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/pci/.i386.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/pci/i386\22 -D KBUILD_BASENAME=\22i386\22 -D KBUILD_MODNAME=\22i386\22 -D __KBUILD_MODNAME=kmod_i386 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/pci/i386.ll arch/x86/pci/i386.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !166, globals: !4889, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/pci/i386.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fa12955841310cfa5f099b8d3851064")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146, !156}
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
!156 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !157, line: 364, baseType: !7, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!158 = !{!159, !160, !161, !162, !163, !164, !165}
!159 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!160 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!161 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!162 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!163 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!164 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!165 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!166 = !{!167, !168, !4880, !4887, !182, !109, !1145, !340}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !147, line: 647, size: 8256, elements: !170)
!170 = !{!171, !178, !179, !180, !181, !4832, !4833, !4835, !4836, !4837, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4871, !4872, !4874, !4875, !4876, !4877, !4878, !4879}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !169, file: !147, line: 648, baseType: !172, size: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !173, line: 190, size: 128, elements: !174)
!173 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !173, line: 191, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !173, line: 191, baseType: !176, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !169, file: !147, line: 649, baseType: !168, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !169, file: !147, line: 650, baseType: !172, size: 128, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !169, file: !147, line: 651, baseType: !172, size: 128, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !169, file: !147, line: 652, baseType: !182, size: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !147, line: 322, size: 16640, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !193, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4703, !4704, !4705, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721, !4722, !4723, !4724, !4725, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4795, !4796, !4797, !4799, !4800, !4802, !4803, !4804, !4805, !4811, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !183, file: !147, line: 323, baseType: !172, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !183, file: !147, line: 324, baseType: !168, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !183, file: !147, line: 325, baseType: !168, size: 64, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !183, file: !147, line: 327, baseType: !167, size: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !183, file: !147, line: 328, baseType: !190, size: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !192, line: 131, flags: DIFlagFwdDecl)
!192 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!193 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !183, file: !147, line: 329, baseType: !194, size: 64, offset: 384)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !147, line: 76, size: 832, elements: !196)
!196 = !{!197, !198, !199, !202, !204}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !195, file: !147, line: 77, baseType: !168, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !195, file: !147, line: 78, baseType: !172, size: 128, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !195, file: !147, line: 79, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !147, line: 79, flags: DIFlagFwdDecl)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !195, file: !147, line: 80, baseType: !203, size: 8, offset: 256)
!203 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !195, file: !147, line: 81, baseType: !205, size: 512, offset: 320)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !206, line: 64, size: 512, elements: !207)
!206 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!207 = !{!208, !212, !213, !215, !303, !4030, !4133, !4138, !4139, !4140, !4141, !4142}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !206, line: 65, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !205, file: !206, line: 66, baseType: !172, size: 128, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !205, file: !206, line: 67, baseType: !214, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !205, file: !206, line: 68, baseType: !216, size: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !206, line: 168, size: 768, elements: !218)
!218 = !{!219, !220, !262, !263}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !217, file: !206, line: 169, baseType: !172, size: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !217, file: !206, line: 170, baseType: !221, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !222, line: 29, baseType: !223)
!222 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !222, line: 17, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !222, line: 18, baseType: !226, size: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !222, line: 18, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !226, file: !222, line: 19, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !230, line: 14, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !229, file: !230, line: 15, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !234, line: 44, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !234, line: 14, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !234, line: 15, baseType: !238, size: 32)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !234, line: 15, size: 32, elements: !239)
!239 = !{!240, !245, !254}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !238, file: !234, line: 16, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !173, line: 174, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 172, size: 32, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !242, file: !173, line: 173, baseType: !109, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !234, line: 24, baseType: !246, size: 16)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !234, line: 24, size: 16, elements: !247)
!247 = !{!248, !253}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !246, file: !234, line: 25, baseType: !249, size: 8)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !250, line: 17, baseType: !251)
!250 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !252, line: 21, baseType: !203)
!252 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!253 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !246, file: !234, line: 26, baseType: !249, size: 8, offset: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !234, line: 28, baseType: !255, size: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !238, file: !234, line: 28, size: 32, elements: !256)
!256 = !{!257, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !255, file: !234, line: 29, baseType: !258, size: 16)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !250, line: 19, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !252, line: 24, baseType: !260)
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !255, file: !234, line: 30, baseType: !258, size: 16, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !217, file: !206, line: 171, baseType: !205, size: 512, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !217, file: !206, line: 172, baseType: !264, size: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !206, line: 133, size: 192, elements: !267)
!267 = !{!268, !275, !280}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !266, file: !206, line: 134, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!109, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !206, line: 135, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!209, !273}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !266, file: !206, line: 136, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!109, !273, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !206, line: 125, size: 20736, elements: !287)
!287 = !{!288, !293, !297, !298, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !286, file: !206, line: 126, baseType: !289, size: 192)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 192, elements: !291)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!291 = !{!292}
!292 = !DISubrange(count: 3)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !286, file: !206, line: 127, baseType: !294, size: 4096, offset: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 4096, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !286, file: !206, line: 128, baseType: !109, size: 32, offset: 4288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !286, file: !206, line: 129, baseType: !299, size: 16384, offset: 4320)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 16384, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 2048)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !286, file: !206, line: 130, baseType: !109, size: 32, offset: 20704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !205, file: !206, line: 69, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !206, line: 116, size: 384, elements: !307)
!307 = !{!308, !312, !341, !3992, !4020, !4024}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !206, line: 117, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !214}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !306, file: !206, line: 118, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !316, line: 254, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!317 = !{!318, !333}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !315, file: !316, line: 255, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !214, !327, !290}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !173, line: 66, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !324, line: 73, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !324, line: 15, baseType: !326)
!326 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !316, line: 30, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !316, line: 31, baseType: !209, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !328, file: !316, line: 32, baseType: !332, size: 16, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !173, line: 24, baseType: !260)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !315, file: !316, line: 256, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!322, !214, !327, !209, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 61, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !340)
!340 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !306, file: !206, line: 119, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !316, line: 84, size: 320, elements: !346)
!346 = !{!347, !348, !352, !3988, !3990}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !345, file: !316, line: 85, baseType: !209, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !345, file: !316, line: 86, baseType: !349, size: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!332, !214, !327, !109}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !345, file: !316, line: 88, baseType: !353, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!332, !214, !356, !109}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !316, line: 175, size: 512, elements: !358)
!358 = !{!359, !360, !361, !362, !3979, !3983, !3984}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !357, file: !316, line: 176, baseType: !328, size: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !316, line: 177, baseType: !337, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !357, file: !316, line: 178, baseType: !167, size: 64, offset: 192)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !357, file: !316, line: 179, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !368)
!368 = !{!369, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3973, !3974, !3975, !3976, !3977, !3978}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !367, file: !14, line: 473, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !372)
!372 = !{!373, !374, !375, !383, !384, !391, !392, !395, !396, !3752, !3753, !3754, !3755, !3756, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3796, !3799, !3800, !3801, !3810, !3811, !3812, !3813}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !371, file: !14, line: 642, baseType: !332, size: 16)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !371, file: !14, line: 643, baseType: !260, size: 16, offset: 16)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !371, file: !14, line: 644, baseType: !376, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !377, line: 23, baseType: !378)
!377 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 21, size: 32, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !377, line: 22, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !173, line: 37, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !324, line: 49, baseType: !7)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !371, file: !14, line: 645, baseType: !172, size: 128, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !371, file: !14, line: 646, baseType: !385, size: 32, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !377, line: 28, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !377, line: 26, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !386, file: !377, line: 27, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !173, line: 38, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !324, line: 50, baseType: !7)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !371, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !371, file: !14, line: 650, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !371, file: !14, line: 651, baseType: !393, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !371, file: !14, line: 654, baseType: !397, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !400)
!400 = !{!401, !3580, !3590, !3594, !3598, !3602, !3606, !3610, !3614, !3618, !3622, !3623, !3627, !3631, !3668, !3697, !3701, !3707, !3711, !3715, !3719, !3723, !3727, !3733, !3737}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !399, file: !14, line: 1967, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!405, !370, !405, !7}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !407, line: 82, size: 1536, elements: !408)
!407 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!408 = !{!409, !410, !420, !428, !429, !449, !450, !454, !467, !3563, !3564, !3565, !3566, !3572, !3573, !3574}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !406, file: !407, line: 84, baseType: !7, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !406, file: !407, line: 85, baseType: !411, size: 32, offset: 32)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !412, line: 275, baseType: !413)
!412 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !412, line: 275, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !413, file: !412, line: 275, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !412, line: 69, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !412, line: 64, size: 32, elements: !418)
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !417, file: !412, line: 65, baseType: !7, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !406, file: !407, line: 86, baseType: !421, size: 128, offset: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !422, line: 38, size: 128, elements: !423)
!422 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!423 = !{!424, !426}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !421, file: !422, line: 39, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !421, file: !422, line: 39, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !406, file: !407, line: 87, baseType: !405, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !406, file: !407, line: 88, baseType: !430, size: 128, offset: 256)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !407, line: 49, size: 128, elements: !431)
!431 = !{!432, !446}
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !430, file: !407, line: 50, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !430, file: !407, line: 50, size: 64, elements: !434)
!434 = !{!435, !442}
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !407, line: 51, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !433, file: !407, line: 51, size: 64, elements: !437)
!437 = !{!438, !441}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !436, file: !407, line: 52, baseType: !439, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !250, line: 21, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !252, line: 27, baseType: !7)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !436, file: !407, line: 52, baseType: !439, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !433, file: !407, line: 54, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !250, line: 23, baseType: !444)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !252, line: 31, baseType: !445)
!445 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !430, file: !407, line: 56, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !406, file: !407, line: 89, baseType: !370, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !406, file: !407, line: 91, baseType: !451, size: 256, offset: 448)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !406, file: !407, line: 94, baseType: !455, size: 64, offset: 704)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !456, line: 25, size: 64, elements: !457)
!456 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, scope: !455, file: !456, line: 26, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !455, file: !456, line: 26, size: 64, elements: !460)
!460 = !{!461, !462}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !459, file: !456, line: 28, baseType: !444, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !459, file: !456, line: 30, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !459, file: !456, line: 30, size: 64, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !463, file: !456, line: 31, baseType: !221, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !463, file: !456, line: 32, baseType: !109, size: 32, offset: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !406, file: !407, line: 95, baseType: !468, size: 64, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !407, line: 128, size: 1024, align: 512, elements: !471)
!471 = !{!472, !476, !477, !484, !490, !494, !498, !502, !503, !507, !511, !3553, !3557}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !470, file: !407, line: 129, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!109, !405, !7}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !470, file: !407, line: 130, baseType: !473, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !470, file: !407, line: 131, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!109, !481, !483}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !470, file: !407, line: 132, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!109, !481, !7, !209, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !470, file: !407, line: 134, baseType: !491, size: 64, offset: 256)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!109, !481}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !470, file: !407, line: 135, baseType: !495, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!109, !405}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !470, file: !407, line: 136, baseType: !499, size: 64, offset: 384)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !405}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !470, file: !407, line: 137, baseType: !499, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !470, file: !407, line: 138, baseType: !504, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !405, !370}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !470, file: !407, line: 139, baseType: !508, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!290, !405, !290, !109}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !470, file: !407, line: 140, baseType: !512, size: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !3552}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !517, line: 70, size: 256, elements: !518)
!517 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!518 = !{!519, !520, !3548, !3549}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !516, file: !517, line: 71, baseType: !405, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !516, file: !517, line: 72, baseType: !521, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !523)
!523 = !{!524, !525, !528, !529, !530, !534, !1014, !1154, !1194, !1284, !1288, !1289, !1290, !1291, !1292, !1301, !1302, !1303, !1304, !1309, !1313, !1314, !1317, !1320, !1323, !1326, !1327, !1328, !1369, !3481, !3482, !3483, !3484, !3485, !3486, !3489, !3491, !3498, !3499, !3500, !3501, !3502, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !522, file: !14, line: 1191, baseType: !172, size: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !522, file: !14, line: 1192, baseType: !526, size: 32, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !173, line: 21, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !173, line: 18, baseType: !439)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !522, file: !14, line: 1193, baseType: !203, size: 8, offset: 160)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !522, file: !14, line: 1194, baseType: !340, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !522, file: !14, line: 1195, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !173, line: 52, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !324, line: 88, baseType: !533)
!533 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !522, file: !14, line: 1196, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !537)
!537 = !{!538, !539, !540, !547, !551, !555, !559, !999, !1000, !1004, !1006, !1007, !1008, !1010, !1011, !1012, !1013}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !536, file: !14, line: 2367, baseType: !209, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !536, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !536, file: !14, line: 2376, baseType: !541, size: 64, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!109, !544}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !546, line: 32, flags: DIFlagFwdDecl)
!546 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !536, file: !14, line: 2377, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !536, file: !14, line: 2378, baseType: !552, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!405, !535, !109, !209, !167}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !536, file: !14, line: 2380, baseType: !556, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !521}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !536, file: !14, line: 2381, baseType: !560, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !562)
!562 = !{!563, !564, !565, !569, !591, !617, !618, !619, !620, !624, !629, !630, !650, !706, !707, !708, !709, !710, !713, !714, !715, !723, !727, !754, !775, !776, !777, !778, !787, !810, !811, !814, !817, !818, !819, !820, !821, !822, !823, !828, !829, !957, !965, !966, !967, !969, !973, !974, !978, !979, !980, !981, !983, !984, !985, !992, !993, !994, !998}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !561, file: !6, line: 403, baseType: !5, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !561, file: !6, line: 406, baseType: !172, size: 128, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !561, file: !6, line: 409, baseType: !566, size: 448, offset: 192)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 448, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 56)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !561, file: !6, line: 417, baseType: !570, size: 768, offset: 640)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !571)
!571 = !{!572, !573, !574, !575, !578}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !570, file: !6, line: 46, baseType: !205, size: 512)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !570, file: !6, line: 47, baseType: !560, size: 64, offset: 512)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !570, file: !6, line: 48, baseType: !214, size: 64, offset: 576)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !570, file: !6, line: 49, baseType: !576, size: 64, offset: 640)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !570, file: !6, line: 50, baseType: !579, size: 64, offset: 704)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !581, line: 26, size: 256, elements: !582)
!581 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!582 = !{!583, !584}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !580, file: !581, line: 27, baseType: !7, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !580, file: !581, line: 28, baseType: !585, size: 192, offset: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !586, line: 43, size: 192, elements: !587)
!586 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!587 = !{!588, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !585, file: !586, line: 44, baseType: !589, size: 32)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !230, line: 23, baseType: !229)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !585, file: !586, line: 45, baseType: !172, size: 128, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !561, file: !6, line: 418, baseType: !592, size: 64, offset: 1408)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !594)
!594 = !{!595, !596, !601, !605, !609, !613}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !593, file: !6, line: 54, baseType: !328, size: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !593, file: !6, line: 55, baseType: !597, size: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!322, !592, !600, !290}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !593, file: !6, line: 57, baseType: !602, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!322, !592, !600, !209, !337}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !593, file: !6, line: 59, baseType: !606, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{null, !560, !209}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !593, file: !6, line: 60, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!109, !560}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !593, file: !6, line: 61, baseType: !614, size: 64, offset: 384)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !560}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !561, file: !6, line: 419, baseType: !209, size: 64, offset: 1472)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !561, file: !6, line: 420, baseType: !209, size: 64, offset: 1536)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !561, file: !6, line: 421, baseType: !214, size: 64, offset: 1600)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !561, file: !6, line: 424, baseType: !621, size: 64, offset: 1664)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !561, file: !6, line: 425, baseType: !625, size: 64, offset: 1728)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !250, line: 20, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !252, line: 26, baseType: !109)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !561, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !561, file: !6, line: 435, baseType: !631, size: 256, offset: 1856)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !632, line: 66, size: 256, elements: !633)
!632 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!633 = !{!634, !643, !644, !649}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !631, file: !632, line: 67, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !636, line: 13, baseType: !637)
!636 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !173, line: 181, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 179, size: 64, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !638, file: !173, line: 180, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !250, line: 22, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !252, line: 30, baseType: !533)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !631, file: !632, line: 68, baseType: !589, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !631, file: !632, line: 70, baseType: !645, size: 32, offset: 96)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !646, line: 15, size: 32, elements: !647)
!646 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !645, file: !646, line: 20, baseType: !241, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !631, file: !632, line: 72, baseType: !172, size: 128, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !561, file: !6, line: 437, baseType: !651, size: 64, offset: 2112)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !653, line: 69, size: 320, elements: !654)
!653 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!654 = !{!655, !656, !657, !677, !679, !683, !684}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !652, file: !653, line: 70, baseType: !209, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !652, file: !653, line: 71, baseType: !560, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !652, file: !653, line: 72, baseType: !658, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !653, line: 47, size: 256, elements: !661)
!661 = !{!662, !663, !669, !673}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !653, line: 49, baseType: !7, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !660, file: !653, line: 51, baseType: !664, size: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!109, !209, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !660, file: !653, line: 53, baseType: !670, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!109, !290, !667}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !660, file: !653, line: 55, baseType: !674, size: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !167}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !652, file: !653, line: 73, baseType: !678, size: 16, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !652, file: !653, line: 74, baseType: !680, size: 8, offset: 208)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !250, line: 16, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !252, line: 20, baseType: !682)
!682 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !652, file: !653, line: 75, baseType: !249, size: 8, offset: 216)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !652, file: !653, line: 76, baseType: !685, size: 64, offset: 256)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !652, file: !653, line: 76, size: 64, elements: !686)
!686 = !{!687, !688, !695}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !685, file: !653, line: 77, baseType: !167, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !685, file: !653, line: 78, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !653, line: 86, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !691, file: !653, line: 87, baseType: !7, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !691, file: !653, line: 88, baseType: !290, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !685, file: !653, line: 79, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !653, line: 92, size: 256, elements: !699)
!699 = !{!700, !701, !702, !704, !705}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !698, file: !653, line: 94, baseType: !7, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !698, file: !653, line: 95, baseType: !7, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !698, file: !653, line: 96, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !698, file: !653, line: 97, baseType: !658, size: 64, offset: 128)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !698, file: !653, line: 98, baseType: !167, size: 64, offset: 192)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !561, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !561, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !561, file: !6, line: 442, baseType: !621, size: 64, offset: 2240)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !561, file: !6, line: 443, baseType: !625, size: 64, offset: 2304)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !561, file: !6, line: 444, baseType: !711, size: 8, offset: 2368)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !173, line: 35, baseType: !712)
!712 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !561, file: !6, line: 451, baseType: !711, size: 8, offset: 2376)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !561, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !561, file: !6, line: 455, baseType: !716, size: 64, offset: 2432)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !718, line: 23, size: 96, elements: !719)
!718 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!719 = !{!720, !721, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !717, file: !718, line: 24, baseType: !109, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !717, file: !718, line: 24, baseType: !109, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !717, file: !718, line: 24, baseType: !109, size: 32, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !561, file: !6, line: 458, baseType: !724, size: 64, offset: 2496)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!109}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !561, file: !6, line: 460, baseType: !728, size: 4032, align: 512, offset: 2560)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !729, size: 4032, elements: !752)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !729, file: !6, line: 363, baseType: !167, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !729, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !729, file: !6, line: 367, baseType: !734, size: 448, offset: 128)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !734, file: !6, line: 320, baseType: !560, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !734, file: !6, line: 321, baseType: !738, size: 384, offset: 64)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !739, line: 40, size: 384, elements: !740)
!739 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !738, file: !739, line: 41, baseType: !742, size: 384, align: 64)
!742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !743, size: 384, align: 64, elements: !750)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !744, line: 5, size: 192, align: 64, elements: !745)
!744 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!745 = !{!746, !747, !749}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !743, file: !744, line: 6, baseType: !340, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !743, file: !744, line: 7, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !743, file: !744, line: 8, baseType: !748, size: 64, offset: 128)
!750 = !{!751}
!751 = !DISubrange(count: 2)
!752 = !{!753}
!753 = !DISubrange(count: 7)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !561, file: !6, line: 463, baseType: !755, size: 192, offset: 6592)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !756, line: 8, size: 192, elements: !757)
!756 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!757 = !{!758, !759, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !755, file: !756, line: 10, baseType: !7, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !755, file: !756, line: 11, baseType: !760, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !755, file: !756, line: 12, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !764, line: 59, size: 48, elements: !765)
!764 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!765 = !{!766, !770, !771, !772, !773, !774}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !763, file: !764, line: 60, baseType: !767, size: 16)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !250, line: 18, baseType: !768)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !252, line: 23, baseType: !769)
!769 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !763, file: !764, line: 61, baseType: !767, size: 16, offset: 16)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !763, file: !764, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !763, file: !764, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !763, file: !764, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !763, file: !764, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !561, file: !6, line: 465, baseType: !340, size: 64, offset: 6784)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !561, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !561, file: !6, line: 470, baseType: !172, size: 128, offset: 6912)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !561, file: !6, line: 471, baseType: !779, size: 64, offset: 7040)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !781, line: 33, size: 96, elements: !782)
!781 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!782 = !{!783, !784, !785, !786}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !780, file: !781, line: 37, baseType: !109, size: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !780, file: !781, line: 43, baseType: !109, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !780, file: !781, line: 45, baseType: !260, size: 16, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !781, line: 47, baseType: !260, size: 16, offset: 80)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !561, file: !6, line: 476, baseType: !788, size: 64, offset: 7104)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !790)
!790 = !{!791, !807, !808, !809}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !789, file: !6, line: 379, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !794, line: 204, baseType: !795)
!794 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !794, line: 197, size: 192, elements: !796)
!796 = !{!797, !799, !800, !801, !803, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !795, file: !794, line: 198, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !794, line: 21, baseType: !440)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !795, file: !794, line: 199, baseType: !203, size: 8, offset: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !795, file: !794, line: 200, baseType: !203, size: 8, offset: 40)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !795, file: !794, line: 201, baseType: !802, size: 16, offset: 48)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !794, line: 17, baseType: !259)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !795, file: !794, line: 202, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !794, line: 16, baseType: !444)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !795, file: !794, line: 203, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !794, line: 22, baseType: !444)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !789, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !789, file: !6, line: 381, baseType: !290, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !789, file: !6, line: 382, baseType: !290, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !561, file: !6, line: 477, baseType: !789, size: 256, offset: 7168)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !561, file: !6, line: 480, baseType: !812, size: 64, offset: 7424)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !561, file: !6, line: 483, baseType: !815, size: 64, offset: 7488)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !561, file: !6, line: 488, baseType: !290, size: 64, offset: 7552)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !561, file: !6, line: 492, baseType: !167, size: 64, offset: 7616)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !561, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !561, file: !6, line: 495, baseType: !167, size: 64, offset: 7744)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !561, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !561, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !561, file: !6, line: 500, baseType: !824, size: 64, offset: 7872)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !826, line: 45, baseType: !827)
!826 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !561, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !561, file: !6, line: 504, baseType: !830, size: 64, offset: 8000)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !833, line: 96, size: 192, elements: !834)
!833 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!834 = !{!835, !836, !917, !921}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !832, file: !833, line: 97, baseType: !7, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !832, file: !833, line: 98, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !833, line: 24, size: 3072, elements: !839)
!839 = !{!840, !842, !843, !844, !845, !869, !870, !871, !872, !890, !902, !903, !914, !915, !916}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !838, file: !833, line: 26, baseType: !841, size: 128)
!841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !635, size: 128, elements: !750)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !838, file: !833, line: 27, baseType: !841, size: 128, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !838, file: !833, line: 28, baseType: !109, size: 32, offset: 256)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !838, file: !833, line: 31, baseType: !221, size: 32, align: 512, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !838, file: !833, line: 32, baseType: !846, size: 960, offset: 576)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !847, line: 206, size: 960, elements: !848)
!847 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!848 = !{!849, !858, !863, !865, !866, !868}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !846, file: !847, line: 207, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !173, line: 232, size: 128, align: 64, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !851, file: !173, line: 233, baseType: !850, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !851, file: !173, line: 234, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !850}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !846, file: !847, line: 208, baseType: !859, size: 256, offset: 64)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 256, elements: !861)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!861 = !{!862}
!862 = !DISubrange(count: 4)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !846, file: !847, line: 209, baseType: !864, size: 256, offset: 320)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 256, elements: !861)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !846, file: !847, line: 213, baseType: !326, size: 64, offset: 576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !846, file: !847, line: 215, baseType: !867, size: 256, offset: 640)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !861)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !846, file: !847, line: 216, baseType: !249, size: 8, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !838, file: !833, line: 33, baseType: !340, size: 64, offset: 1536)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !838, file: !833, line: 34, baseType: !340, size: 64, offset: 1600)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !838, file: !833, line: 35, baseType: !711, size: 8, offset: 1664)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !838, file: !833, line: 36, baseType: !873, size: 320, offset: 1728)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !874, line: 11, size: 320, elements: !875)
!874 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!875 = !{!876, !883, !884, !889}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !873, file: !874, line: 16, baseType: !877, size: 128)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !173, line: 198, size: 128, elements: !878)
!878 = !{!879, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !877, file: !173, line: 199, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !877, file: !173, line: 199, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !873, file: !874, line: 17, baseType: !340, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !873, file: !874, line: 18, baseType: !885, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !873, file: !874, line: 19, baseType: !439, size: 32, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !838, file: !833, line: 37, baseType: !891, size: 256, offset: 2048)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !892, line: 98, size: 256, elements: !893)
!892 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!893 = !{!894, !895, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !891, file: !892, line: 99, baseType: !635, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !891, file: !892, line: 100, baseType: !172, size: 128, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !891, file: !892, line: 101, baseType: !897, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !892, line: 21, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{null, !901}
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !838, file: !833, line: 38, baseType: !851, size: 128, align: 64, offset: 2304)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !838, file: !833, line: 39, baseType: !904, size: 64, offset: 2432)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !833, line: 49, size: 768, elements: !906)
!906 = !{!907, !908, !909, !910, !911, !912, !913}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !833, line: 50, baseType: !221, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !905, file: !833, line: 51, baseType: !864, size: 256, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !905, file: !833, line: 53, baseType: !864, size: 256, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !905, file: !833, line: 54, baseType: !340, size: 64, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !905, file: !833, line: 55, baseType: !904, size: 64, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !905, file: !833, line: 56, baseType: !109, size: 32, offset: 704)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !905, file: !833, line: 57, baseType: !109, size: 32, offset: 736)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !838, file: !833, line: 40, baseType: !340, size: 64, offset: 2496)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !838, file: !833, line: 42, baseType: !109, size: 32, offset: 2560)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !838, file: !833, line: 43, baseType: !831, size: 64, offset: 2624)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !832, file: !833, line: 99, baseType: !918, offset: 128)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !919, line: 211, elements: !920)
!919 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!920 = !{}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !832, file: !833, line: 100, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !833, line: 63, size: 3008, elements: !924)
!924 = !{!925, !926, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !956}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !923, file: !833, line: 64, baseType: !904, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !923, file: !833, line: 65, baseType: !927, size: 192, offset: 64)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 192, elements: !291)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !923, file: !833, line: 67, baseType: !109, size: 32, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !923, file: !833, line: 68, baseType: !631, size: 256, offset: 320)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !923, file: !833, line: 69, baseType: !221, size: 32, offset: 576)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !923, file: !833, line: 70, baseType: !631, size: 256, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !923, file: !833, line: 71, baseType: !340, size: 64, offset: 896)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !923, file: !833, line: 72, baseType: !340, size: 64, offset: 960)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !923, file: !833, line: 73, baseType: !340, size: 64, offset: 1024)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !923, file: !833, line: 74, baseType: !340, size: 64, offset: 1088)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !923, file: !833, line: 75, baseType: !340, size: 64, offset: 1152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !923, file: !833, line: 76, baseType: !340, size: 64, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !923, file: !833, line: 77, baseType: !340, size: 64, offset: 1280)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !923, file: !833, line: 78, baseType: !340, size: 64, offset: 1344)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !923, file: !833, line: 79, baseType: !711, size: 8, offset: 1408)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !923, file: !833, line: 80, baseType: !340, size: 64, offset: 1472)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !923, file: !833, line: 81, baseType: !631, size: 256, offset: 1536)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !923, file: !833, line: 82, baseType: !580, size: 256, offset: 1792)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !923, file: !833, line: 84, baseType: !241, size: 32, offset: 2048)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !923, file: !833, line: 87, baseType: !340, size: 64, offset: 2112)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !923, file: !833, line: 88, baseType: !340, size: 64, offset: 2176)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !923, file: !833, line: 89, baseType: !948, size: 704, offset: 2240)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !892, line: 111, size: 704, elements: !949)
!949 = !{!950, !951, !952, !955}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !948, file: !892, line: 112, baseType: !891, size: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !948, file: !892, line: 113, baseType: !873, size: 320, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !948, file: !892, line: 116, baseType: !953, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !892, line: 18, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !948, file: !892, line: 117, baseType: !109, size: 32, offset: 640)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !923, file: !833, line: 90, baseType: !831, size: 64, offset: 2944)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !561, file: !6, line: 515, baseType: !958, size: 64, offset: 8064)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !960, line: 117, size: 128, elements: !961)
!960 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!961 = !{!962, !963, !964}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !959, file: !960, line: 118, baseType: !627, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !959, file: !960, line: 119, baseType: !627, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !959, file: !960, line: 120, baseType: !326, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !561, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !561, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !561, file: !6, line: 520, baseType: !968, size: 64, offset: 8192)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !561, file: !6, line: 523, baseType: !970, size: 64, offset: 8256)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !561, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !561, file: !6, line: 525, baseType: !975, size: 64, offset: 8384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !561, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !561, file: !6, line: 533, baseType: !167, size: 64, offset: 8512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !561, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !561, file: !6, line: 535, baseType: !982, size: 64, offset: 8640)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !561, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !561, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !561, file: !6, line: 540, baseType: !986, size: 64, offset: 8768)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !988, line: 32, size: 64, elements: !989)
!988 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !987, file: !988, line: 33, baseType: !627, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !987, file: !988, line: 34, baseType: !627, size: 32, offset: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !561, file: !6, line: 563, baseType: !172, size: 128, offset: 8832)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !561, file: !6, line: 565, baseType: !172, size: 128, offset: 8960)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !561, file: !6, line: 568, baseType: !995, size: 64, offset: 9088)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{null}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !561, file: !6, line: 570, baseType: !241, size: 32, offset: 9152)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !536, file: !14, line: 2382, baseType: !535, size: 64, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !536, file: !14, line: 2383, baseType: !1001, size: 64, offset: 512)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !173, line: 194, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1001, file: !173, line: 195, baseType: !880, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !536, file: !14, line: 2385, baseType: !1005, offset: 576)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !919, line: 206, elements: !920)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !536, file: !14, line: 2386, baseType: !1005, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !536, file: !14, line: 2387, baseType: !1005, offset: 576)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !536, file: !14, line: 2388, baseType: !1009, offset: 576)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, elements: !291)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !536, file: !14, line: 2390, baseType: !1005, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !536, file: !14, line: 2391, baseType: !1005, offset: 576)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !536, file: !14, line: 2392, baseType: !1005, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !536, file: !14, line: 2393, baseType: !1005, offset: 576)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !522, file: !14, line: 1197, baseType: !1015, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1018)
!1018 = !{!1019, !1023, !1027, !1028, !1032, !1038, !1042, !1043, !1044, !1048, !1052, !1056, !1057, !1058, !1064, !1068, !1069, !1076, !1077, !1078, !1079, !1083, !1087, !1136, !1152, !1153}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1017, file: !14, line: 2058, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!370, !521}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1017, file: !14, line: 2059, baseType: !1024, size: 64, offset: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !370}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1017, file: !14, line: 2060, baseType: !1024, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1017, file: !14, line: 2062, baseType: !1029, size: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !370, !109}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1017, file: !14, line: 2063, baseType: !1033, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!109, !370, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1017, file: !14, line: 2064, baseType: !1039, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!109, !370}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1017, file: !14, line: 2065, baseType: !1024, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1017, file: !14, line: 2066, baseType: !556, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1017, file: !14, line: 2067, baseType: !1045, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!109, !521, !109}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1017, file: !14, line: 2068, baseType: !1049, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!109, !521, !13}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1017, file: !14, line: 2069, baseType: !1053, size: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!109, !521}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1017, file: !14, line: 2070, baseType: !1049, size: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1017, file: !14, line: 2071, baseType: !1053, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1017, file: !14, line: 2072, baseType: !1059, size: 64, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!109, !405, !1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1017, file: !14, line: 2073, baseType: !1065, size: 64, offset: 896)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!109, !521, !760, !290}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1017, file: !14, line: 2074, baseType: !556, size: 64, offset: 960)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1017, file: !14, line: 2076, baseType: !1070, size: 64, offset: 1024)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!109, !1073, !405}
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1075, line: 66, flags: DIFlagFwdDecl)
!1075 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1017, file: !14, line: 2077, baseType: !1070, size: 64, offset: 1088)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1017, file: !14, line: 2078, baseType: !1070, size: 64, offset: 1152)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1017, file: !14, line: 2079, baseType: !1070, size: 64, offset: 1216)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1017, file: !14, line: 2081, baseType: !1080, size: 64, offset: 1280)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!322, !521, !109, !290, !337, !531}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1017, file: !14, line: 2082, baseType: !1084, size: 64, offset: 1344)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!322, !521, !109, !209, !337, !531}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1017, file: !14, line: 2083, baseType: !1088, size: 64, offset: 1408)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!1091, !370}
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1094)
!1094 = !{!1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1119, !1120, !1121}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1093, file: !19, line: 297, baseType: !877, size: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1093, file: !19, line: 298, baseType: !172, size: 128, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1093, file: !19, line: 299, baseType: !172, size: 128, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1093, file: !19, line: 300, baseType: !172, size: 128, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1093, file: !19, line: 301, baseType: !631, size: 256, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1093, file: !19, line: 302, baseType: !221, size: 32, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1093, file: !19, line: 303, baseType: !241, size: 32, offset: 800)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1093, file: !19, line: 304, baseType: !521, size: 64, offset: 832)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1093, file: !19, line: 305, baseType: !1104, size: 64, offset: 896)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1105)
!1105 = !{!1106, !1118}
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !19, line: 69, baseType: !1107, size: 32)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1104, file: !19, line: 69, size: 32, elements: !1108)
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1107, file: !19, line: 70, baseType: !376, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1107, file: !19, line: 71, baseType: !385, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1107, file: !19, line: 72, baseType: !1112, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1113, line: 24, baseType: !1114)
!1113 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1113, line: 22, size: 32, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1114, file: !1113, line: 23, baseType: !1117, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1113, line: 20, baseType: !382)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1104, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1093, file: !19, line: 306, baseType: !531, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1093, file: !19, line: 307, baseType: !340, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1093, file: !19, line: 308, baseType: !1122, size: 576, offset: 1088)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1123)
!1123 = !{!1124, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1135}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1122, file: !19, line: 206, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !533)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1122, file: !19, line: 207, baseType: !1125, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1122, file: !19, line: 208, baseType: !1125, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1122, file: !19, line: 209, baseType: !1125, size: 64, offset: 192)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1122, file: !19, line: 210, baseType: !1125, size: 64, offset: 256)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1122, file: !19, line: 211, baseType: !1125, size: 64, offset: 320)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1122, file: !19, line: 212, baseType: !1125, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1122, file: !19, line: 213, baseType: !1133, size: 64, offset: 448)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1134, line: 8, baseType: !642)
!1134 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1122, file: !19, line: 214, baseType: !1133, size: 64, offset: 512)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1017, file: !14, line: 2085, baseType: !1137, size: 64, offset: 1472)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!326, !521, !1140}
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1142, line: 15, size: 256, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1143 = !{!1144, !1146, !1147, !1148, !1149}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1141, file: !1142, line: 16, baseType: !1145, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !173, line: 154, baseType: !7)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1141, file: !1142, line: 19, baseType: !109, size: 32, offset: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1141, file: !1142, line: 26, baseType: !340, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1141, file: !1142, line: 33, baseType: !340, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1141, file: !1142, line: 36, baseType: !1150, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1017, file: !14, line: 2087, baseType: !1137, size: 64, offset: 1536)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1017, file: !14, line: 2089, baseType: !556, size: 64, offset: 1600)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !522, file: !14, line: 1198, baseType: !1155, size: 64, offset: 448)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1157)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1158)
!1158 = !{!1159, !1163, !1167, !1171, !1172, !1173, !1174, !1175, !1180, !1185, !1189}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1157, file: !19, line: 325, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!109, !1092}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1157, file: !19, line: 326, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1092, !521, !109}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1157, file: !19, line: 327, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1092}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1157, file: !19, line: 328, baseType: !1160, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1157, file: !19, line: 329, baseType: !1160, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1157, file: !19, line: 330, baseType: !1160, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1157, file: !19, line: 331, baseType: !1045, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1157, file: !19, line: 334, baseType: !1176, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!1179, !370}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1157, file: !19, line: 335, baseType: !1181, size: 64, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!109, !370, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1157, file: !19, line: 337, baseType: !1186, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!109, !370, !1179}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1157, file: !19, line: 339, baseType: !1190, size: 64, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!109, !521, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !522, file: !14, line: 1199, baseType: !1195, size: 64, offset: 512)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1198)
!1198 = !{!1199, !1210, !1211, !1215, !1216, !1217, !1232, !1255, !1259, !1260, !1283}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1197, file: !19, line: 431, baseType: !1200, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!109, !521, !109, !109, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1205)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1206, line: 8, size: 128, elements: !1207)
!1206 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1207 = !{!1208, !1209}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1205, file: !1206, line: 9, baseType: !515, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1205, file: !1206, line: 10, baseType: !405, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1197, file: !19, line: 432, baseType: !1045, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1197, file: !19, line: 433, baseType: !1212, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!109, !521, !7}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1197, file: !19, line: 434, baseType: !1212, size: 64, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1197, file: !19, line: 435, baseType: !1045, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1197, file: !19, line: 436, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!109, !521, !109, !1221}
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1222, file: !19, line: 418, baseType: !109, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1222, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1222, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1222, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1222, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1222, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1222, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1222, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1197, file: !19, line: 437, baseType: !1233, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!109, !521, !1104, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1237, file: !19, line: 346, baseType: !109, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1237, file: !19, line: 347, baseType: !443, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1237, file: !19, line: 348, baseType: !443, size: 64, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1237, file: !19, line: 349, baseType: !443, size: 64, offset: 192)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1237, file: !19, line: 350, baseType: !443, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1237, file: !19, line: 351, baseType: !443, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1237, file: !19, line: 352, baseType: !443, size: 64, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1237, file: !19, line: 353, baseType: !641, size: 64, offset: 448)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1237, file: !19, line: 355, baseType: !641, size: 64, offset: 512)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1237, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1237, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1237, file: !19, line: 358, baseType: !443, size: 64, offset: 640)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1237, file: !19, line: 359, baseType: !443, size: 64, offset: 704)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1237, file: !19, line: 360, baseType: !443, size: 64, offset: 768)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1237, file: !19, line: 361, baseType: !641, size: 64, offset: 832)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1237, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1197, file: !19, line: 438, baseType: !1256, size: 64, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!109, !521, !1193, !1236}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1197, file: !19, line: 440, baseType: !1233, size: 64, offset: 512)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1197, file: !19, line: 441, baseType: !1261, size: 64, offset: 576)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!109, !521, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1265, file: !19, line: 412, baseType: !7, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1265, file: !19, line: 413, baseType: !1269, size: 1344, offset: 64)
!1269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 1344, elements: !291)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1282}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1270, file: !19, line: 398, baseType: !7, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1270, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1270, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1270, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1270, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1270, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1270, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1270, file: !19, line: 406, baseType: !445, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1270, file: !19, line: 407, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !173, line: 132, baseType: !443)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1270, file: !19, line: 408, baseType: !1281, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1197, file: !19, line: 442, baseType: !1212, size: 64, offset: 640)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !522, file: !14, line: 1200, baseType: !1285, size: 64, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !522, file: !14, line: 1201, baseType: !340, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !522, file: !14, line: 1202, baseType: !340, size: 64, offset: 704)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !522, file: !14, line: 1203, baseType: !340, size: 64, offset: 768)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !522, file: !14, line: 1204, baseType: !405, size: 64, offset: 832)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !522, file: !14, line: 1205, baseType: !1293, size: 320, offset: 896)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1294, line: 48, size: 320, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1295 = !{!1296, !1297, !1298, !1299, !1300}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1293, file: !1294, line: 49, baseType: !635, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1293, file: !1294, line: 55, baseType: !635, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1293, file: !1294, line: 57, baseType: !645, size: 32, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1293, file: !1294, line: 59, baseType: !589, size: 32, offset: 160)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1293, file: !1294, line: 60, baseType: !172, size: 128, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !522, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !522, file: !14, line: 1207, baseType: !241, size: 32, offset: 1248)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !522, file: !14, line: 1209, baseType: !167, size: 64, offset: 1280)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !522, file: !14, line: 1211, baseType: !1305, size: 64, offset: 1344)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !522, file: !14, line: 1223, baseType: !1310, size: 64, offset: 1408)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !422, line: 34, size: 64, elements: !1311)
!1311 = !{!1312}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1310, file: !422, line: 35, baseType: !425, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !522, file: !14, line: 1224, baseType: !172, size: 128, offset: 1472)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !522, file: !14, line: 1225, baseType: !1315, size: 64, offset: 1600)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !522, file: !14, line: 1226, baseType: !1318, size: 64, offset: 1664)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !522, file: !14, line: 1227, baseType: !1321, size: 64, offset: 1728)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !522, file: !14, line: 1228, baseType: !1324, size: 64, offset: 1792)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !522, file: !14, line: 1229, baseType: !877, size: 128, offset: 1856)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !522, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !522, file: !14, line: 1231, baseType: !1329, size: 2496, offset: 2048)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1335, !1367}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1329, file: !19, line: 522, baseType: !7, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1329, file: !19, line: 523, baseType: !1293, size: 320, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1329, file: !19, line: 524, baseType: !1334, size: 192, offset: 384)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 192, elements: !291)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1329, file: !19, line: 525, baseType: !1336, size: 1728, offset: 576)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 1728, elements: !291)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1338)
!1338 = !{!1339, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1337, file: !19, line: 223, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1342)
!1342 = !{!1343, !1344, !1357, !1358}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1341, file: !19, line: 446, baseType: !109, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1341, file: !19, line: 447, baseType: !1345, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1347)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1347, file: !19, line: 313, baseType: !1045, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1347, file: !19, line: 314, baseType: !1045, size: 64, offset: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1347, file: !19, line: 315, baseType: !1045, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1347, file: !19, line: 316, baseType: !1045, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1347, file: !19, line: 317, baseType: !1160, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1347, file: !19, line: 318, baseType: !1160, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1347, file: !19, line: 319, baseType: !1160, size: 64, offset: 384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1347, file: !19, line: 320, baseType: !1190, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1341, file: !19, line: 448, baseType: !560, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1341, file: !19, line: 449, baseType: !1340, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1337, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1337, file: !19, line: 226, baseType: !172, size: 128, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1337, file: !19, line: 227, baseType: !340, size: 64, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1337, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1337, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1337, file: !19, line: 230, baseType: !1125, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1337, file: !19, line: 231, baseType: !1125, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1337, file: !19, line: 232, baseType: !167, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1329, file: !19, line: 526, baseType: !1368, size: 192, offset: 2304)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1345, size: 192, elements: !291)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !522, file: !14, line: 1233, baseType: !1370, size: 2368, offset: 4544)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1370, file: !14, line: 1185, baseType: !260, size: 16)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1370, file: !14, line: 1186, baseType: !260, size: 16, offset: 16)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1370, file: !14, line: 1187, baseType: !1375, size: 2304, offset: 64)
!1375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1376, size: 2304, elements: !291)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1377, line: 12, size: 768, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1378 = !{!1379, !1393, !1394, !3479, !3480}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1376, file: !1377, line: 13, baseType: !1380, size: 384)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1381, line: 17, size: 384, elements: !1382)
!1381 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1382 = !{!1383, !1384, !1385, !1392}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1380, file: !1381, line: 18, baseType: !109, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1380, file: !1381, line: 19, baseType: !109, size: 32, offset: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1380, file: !1381, line: 20, baseType: !1386, size: 192, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1387, line: 41, baseType: !1388)
!1387 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1387, line: 37, size: 192, elements: !1389)
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1388, file: !1387, line: 38, baseType: !221, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1388, file: !1387, line: 39, baseType: !172, size: 128, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1380, file: !1381, line: 22, baseType: !851, size: 128, align: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1376, file: !1377, line: 14, baseType: !703, size: 64, offset: 384)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1376, file: !1377, line: 15, baseType: !1395, size: 64, offset: 448)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1396, line: 16, size: 64, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1395, file: !1396, line: 17, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1075, line: 746, size: 58368, elements: !1401)
!1401 = !{!1402, !1410, !1411, !1412, !1418, !1419, !1420, !1421, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1492, !1503, !1598, !1602, !1605, !1636, !1637, !1638, !1639, !1650, !1652, !1653, !1654, !1655, !1656, !1657, !1668, !1669, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1686, !1687, !1694, !1695, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2654, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2702, !2708, !2709, !2710, !2711, !2712, !2716, !2719, !2726, !2731, !2734, !2737, !2740, !2743, !2881, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2919, !2920, !2921, !2930, !2938, !2939, !2940, !2941, !2942, !2947, !2948, !2949, !2952, !2953, !2956, !2959, !2962, !2970, !2973, !2974, !3060, !3061, !3062, !3063, !3064, !3070, !3071, !3072, !3073, !3076, !3077, !3080, !3083, !3084, !3087, !3088, !3089, !3092, !3093, !3094, !3095, !3096, !3097, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3129, !3130, !3136, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3148, !3220, !3222, !3223, !3224, !3225, !3226, !3227, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3256, !3257, !3258}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1400, file: !1075, line: 752, baseType: !1403, size: 192)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1404, line: 56, size: 192, elements: !1405)
!1404 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1405 = !{!1406, !1407, !1408, !1409}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1403, file: !1404, line: 57, baseType: !340, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1403, file: !1404, line: 58, baseType: !340, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1403, file: !1404, line: 59, baseType: !439, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1403, file: !1404, line: 61, baseType: !439, size: 32, offset: 160)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1400, file: !1075, line: 754, baseType: !7, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1400, file: !1075, line: 767, baseType: !167, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1400, file: !1075, line: 768, baseType: !1413, size: 32, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1414, line: 113, baseType: !1415)
!1414 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1414, line: 111, size: 32, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1415, file: !1414, line: 112, baseType: !241, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1400, file: !1075, line: 770, baseType: !7, size: 32, offset: 352)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1400, file: !1075, line: 771, baseType: !7, size: 32, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1400, file: !1075, line: 774, baseType: !109, size: 32, offset: 416)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1400, file: !1075, line: 775, baseType: !1422, size: 128, offset: 448)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1423, line: 58, size: 128, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1424 = !{!1425, !1431, !1436, !1437}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1422, file: !1423, line: 59, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1427, line: 60, size: 64, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1426, file: !1427, line: 61, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !1423, line: 60, baseType: !1432, size: 32, offset: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1422, file: !1423, line: 60, size: 32, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1432, file: !1423, line: 61, baseType: !7, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1432, file: !1423, line: 62, baseType: !241, size: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1422, file: !1423, line: 65, baseType: !258, size: 16, offset: 96)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1422, file: !1423, line: 65, baseType: !258, size: 16, offset: 112)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1400, file: !1075, line: 776, baseType: !7, size: 32, offset: 576)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1400, file: !1075, line: 777, baseType: !340, size: 64, offset: 640)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1400, file: !1075, line: 778, baseType: !1399, size: 64, offset: 704)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1400, file: !1075, line: 787, baseType: !109, size: 32, offset: 768)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1400, file: !1075, line: 788, baseType: !109, size: 32, offset: 800)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1400, file: !1075, line: 790, baseType: !109, size: 32, offset: 832)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1400, file: !1075, line: 792, baseType: !109, size: 32, offset: 864)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1400, file: !1075, line: 793, baseType: !109, size: 32, offset: 896)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1400, file: !1075, line: 794, baseType: !109, size: 32, offset: 928)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1400, file: !1075, line: 795, baseType: !7, size: 32, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1400, file: !1075, line: 797, baseType: !1449, size: 2048, offset: 1024)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1075, line: 551, size: 2048, elements: !1450)
!1450 = !{!1451, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1471, !1474, !1475, !1476}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1449, file: !1075, line: 553, baseType: !1452, size: 128)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1075, line: 411, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1452, file: !1075, line: 412, baseType: !340, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1452, file: !1075, line: 413, baseType: !439, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1449, file: !1075, line: 554, baseType: !743, size: 192, align: 64, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1449, file: !1075, line: 555, baseType: !443, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1449, file: !1075, line: 556, baseType: !443, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1449, file: !1075, line: 558, baseType: !172, size: 128, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1449, file: !1075, line: 559, baseType: !7, size: 32, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1449, file: !1075, line: 561, baseType: !443, size: 64, offset: 640)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1449, file: !1075, line: 562, baseType: !443, size: 64, offset: 704)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1449, file: !1075, line: 563, baseType: !443, size: 64, offset: 768)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1449, file: !1075, line: 564, baseType: !443, size: 64, offset: 832)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1449, file: !1075, line: 565, baseType: !641, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1449, file: !1075, line: 566, baseType: !443, size: 64, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1449, file: !1075, line: 568, baseType: !443, size: 64, offset: 1024)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1449, file: !1075, line: 571, baseType: !109, size: 32, offset: 1088)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1449, file: !1075, line: 572, baseType: !1470, size: 64, offset: 1152)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1449, file: !1075, line: 574, baseType: !1472, size: 64, offset: 1216)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1075, line: 49, flags: DIFlagFwdDecl)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1449, file: !1075, line: 576, baseType: !1472, size: 64, offset: 1280)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1449, file: !1075, line: 578, baseType: !340, size: 64, offset: 1344)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1449, file: !1075, line: 588, baseType: !1477, size: 512, align: 512, offset: 1536)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1075, line: 497, size: 512, align: 512, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1477, file: !1075, line: 498, baseType: !443, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1477, file: !1075, line: 499, baseType: !443, size: 64, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1477, file: !1075, line: 500, baseType: !443, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1477, file: !1075, line: 501, baseType: !439, size: 32, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1477, file: !1075, line: 502, baseType: !439, size: 32, offset: 224)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1477, file: !1075, line: 503, baseType: !340, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1477, file: !1075, line: 504, baseType: !340, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1477, file: !1075, line: 505, baseType: !340, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1477, file: !1075, line: 506, baseType: !1488, size: 64, align: 64, offset: 448)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1075, line: 445, size: 64, align: 64, elements: !1489)
!1489 = !{!1490, !1491}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1488, file: !1075, line: 446, baseType: !7, size: 32)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1488, file: !1075, line: 447, baseType: !7, size: 32, offset: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1400, file: !1075, line: 798, baseType: !1493, size: 384, offset: 3072)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1075, line: 592, size: 384, elements: !1494)
!1494 = !{!1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1493, file: !1075, line: 593, baseType: !172, size: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1493, file: !1075, line: 594, baseType: !340, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1493, file: !1075, line: 595, baseType: !340, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1493, file: !1075, line: 596, baseType: !7, size: 32, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1493, file: !1075, line: 597, baseType: !260, size: 16, offset: 288)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1493, file: !1075, line: 598, baseType: !260, size: 16, offset: 304)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1493, file: !1075, line: 600, baseType: !1502, size: 64, offset: 320)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1400, file: !1075, line: 799, baseType: !1504, size: 1792, offset: 3456)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1075, line: 610, size: 1792, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1595, !1596}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1504, file: !1075, line: 611, baseType: !743, size: 192, align: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1504, file: !1075, line: 618, baseType: !443, size: 64, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1504, file: !1075, line: 619, baseType: !443, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1504, file: !1075, line: 620, baseType: !443, size: 64, offset: 320)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1504, file: !1075, line: 621, baseType: !443, size: 64, offset: 384)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1504, file: !1075, line: 622, baseType: !443, size: 64, offset: 448)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1504, file: !1075, line: 629, baseType: !641, size: 64, offset: 512)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1504, file: !1075, line: 630, baseType: !443, size: 64, offset: 576)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1504, file: !1075, line: 631, baseType: !7, size: 32, offset: 640)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1504, file: !1075, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1504, file: !1075, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1504, file: !1075, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1504, file: !1075, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1504, file: !1075, line: 662, baseType: !1520, size: 512, offset: 704)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1521)
!1521 = !{!1522, !1530, !1531, !1536, !1591, !1592, !1593, !1594}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1520, file: !25, line: 119, baseType: !1523, size: 256)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1524, line: 9, size: 256, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1523, file: !1524, line: 10, baseType: !743, size: 192, align: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1523, file: !1524, line: 11, baseType: !1528, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1529, line: 29, baseType: !641)
!1529 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1520, file: !25, line: 120, baseType: !1528, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1520, file: !25, line: 121, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!24, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1520, file: !25, line: 122, baseType: !1537, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1539)
!1539 = !{!1540, !1565, !1566, !1569, !1574, !1575, !1586, !1590}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1538, file: !25, line: 160, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1543)
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1542, file: !25, line: 216, baseType: !589, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1542, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1542, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1542, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1542, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1542, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1542, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1542, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1542, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1542, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1542, file: !25, line: 227, baseType: !260, size: 16, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1542, file: !25, line: 228, baseType: !260, size: 16, offset: 208)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1542, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1542, file: !25, line: 235, baseType: !1528, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1542, file: !25, line: 236, baseType: !1535, size: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1542, file: !25, line: 237, baseType: !1528, size: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1542, file: !25, line: 238, baseType: !1535, size: 64, offset: 448)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1542, file: !25, line: 239, baseType: !1562, size: 4096, align: 512, offset: 512)
!1562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1538, size: 4096, align: 512, elements: !1563)
!1563 = !{!1564}
!1564 = !DISubrange(count: 8)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1538, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1538, file: !25, line: 162, baseType: !1567, size: 32, offset: 96)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !173, line: 32, baseType: !1568)
!1568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !324, line: 96, baseType: !109)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1538, file: !25, line: 163, baseType: !1570, size: 32, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !412, line: 274, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !412, line: 274, size: 32, elements: !1572)
!1572 = !{!1573}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1571, file: !412, line: 274, baseType: !416, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1538, file: !25, line: 164, baseType: !1535, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1538, file: !25, line: 165, baseType: !1576, size: 128, offset: 256)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1524, line: 14, size: 128, elements: !1577)
!1577 = !{!1578}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1576, file: !1524, line: 15, baseType: !1579, size: 128)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !744, line: 26, size: 128, elements: !1580)
!1580 = !{!1581, !1585}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1579, file: !744, line: 27, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !744, line: 12, size: 64, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1582, file: !744, line: 13, baseType: !748, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1579, file: !744, line: 28, baseType: !748, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1538, file: !25, line: 166, baseType: !1587, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1528}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1538, file: !25, line: 167, baseType: !1528, size: 64, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1520, file: !25, line: 123, baseType: !249, size: 8, offset: 448)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1520, file: !25, line: 124, baseType: !249, size: 8, offset: 456)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1520, file: !25, line: 125, baseType: !249, size: 8, offset: 464)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1520, file: !25, line: 126, baseType: !249, size: 8, offset: 472)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1504, file: !1075, line: 671, baseType: !1520, size: 512, offset: 1216)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1504, file: !1075, line: 679, baseType: !1597, size: 64, offset: 1728)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1400, file: !1075, line: 800, baseType: !1599, size: 64, offset: 5248)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1075, line: 800, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1400, file: !1075, line: 809, baseType: !1603, size: 64, offset: 5312)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1075, line: 70, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1400, file: !1075, line: 825, baseType: !1606, size: 2048, align: 512, offset: 5632)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1075, line: 509, size: 2048, align: 512, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1606, file: !1075, line: 511, baseType: !443, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1606, file: !1075, line: 512, baseType: !443, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1606, file: !1075, line: 513, baseType: !443, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1606, file: !1075, line: 514, baseType: !443, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1606, file: !1075, line: 515, baseType: !443, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1606, file: !1075, line: 516, baseType: !443, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1606, file: !1075, line: 518, baseType: !443, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1606, file: !1075, line: 519, baseType: !443, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1606, file: !1075, line: 520, baseType: !641, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1606, file: !1075, line: 522, baseType: !443, size: 64, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1606, file: !1075, line: 523, baseType: !443, size: 64, offset: 640)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1606, file: !1075, line: 524, baseType: !641, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1606, file: !1075, line: 526, baseType: !641, size: 64, offset: 768)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1606, file: !1075, line: 527, baseType: !443, size: 64, offset: 832)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1606, file: !1075, line: 529, baseType: !443, size: 64, offset: 896)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1606, file: !1075, line: 530, baseType: !443, size: 64, offset: 960)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1606, file: !1075, line: 531, baseType: !443, size: 64, offset: 1024)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1606, file: !1075, line: 532, baseType: !443, size: 64, offset: 1088)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1606, file: !1075, line: 533, baseType: !443, size: 64, offset: 1152)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1606, file: !1075, line: 535, baseType: !443, size: 64, offset: 1216)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1606, file: !1075, line: 536, baseType: !443, size: 64, offset: 1280)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1606, file: !1075, line: 537, baseType: !443, size: 64, offset: 1344)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1606, file: !1075, line: 538, baseType: !443, size: 64, offset: 1408)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1606, file: !1075, line: 539, baseType: !443, size: 64, offset: 1472)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1606, file: !1075, line: 540, baseType: !443, size: 64, offset: 1536)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1606, file: !1075, line: 541, baseType: !443, size: 64, offset: 1600)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1606, file: !1075, line: 542, baseType: !443, size: 64, offset: 1664)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1606, file: !1075, line: 543, baseType: !443, size: 64, offset: 1728)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1400, file: !1075, line: 833, baseType: !7, size: 32, offset: 7680)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1400, file: !1075, line: 836, baseType: !7, size: 32, offset: 7712)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1400, file: !1075, line: 837, baseType: !109, size: 32, offset: 7744)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1400, file: !1075, line: 838, baseType: !1640, size: 64, offset: 7808)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1643, line: 19, baseType: !1644)
!1643 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1643, line: 19, size: 64, elements: !1645)
!1645 = !{!1646}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1644, file: !1643, line: 19, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 64, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 1)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1400, file: !1075, line: 839, baseType: !1651, size: 64, offset: 7872)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1400, file: !1075, line: 840, baseType: !1642, size: 64, offset: 7936)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1400, file: !1075, line: 841, baseType: !167, size: 64, offset: 8000)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1400, file: !1075, line: 843, baseType: !260, size: 16, offset: 8064)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1400, file: !1075, line: 845, baseType: !260, size: 16, offset: 8080)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1400, file: !1075, line: 848, baseType: !109, size: 32, offset: 8096)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1400, file: !1075, line: 849, baseType: !1658, size: 32, offset: 8128)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1075, line: 718, size: 32, elements: !1659)
!1659 = !{!1660, !1667}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1658, file: !1075, line: 724, baseType: !1661, size: 32)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1658, file: !1075, line: 719, size: 32, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1661, file: !1075, line: 720, baseType: !249, size: 8)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1661, file: !1075, line: 721, baseType: !249, size: 8, offset: 8)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1661, file: !1075, line: 722, baseType: !249, size: 8, offset: 16)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1661, file: !1075, line: 723, baseType: !249, size: 8, offset: 24)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1658, file: !1075, line: 725, baseType: !439, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1400, file: !1075, line: 850, baseType: !172, size: 128, offset: 8192)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1400, file: !1075, line: 851, baseType: !1670, size: 64, offset: 8320)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1075, line: 60, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1400, file: !1075, line: 855, baseType: !340, size: 64, offset: 8384)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1400, file: !1075, line: 856, baseType: !249, size: 8, offset: 8448)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1400, file: !1075, line: 857, baseType: !249, size: 8, offset: 8456)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1400, file: !1075, line: 858, baseType: !109, size: 32, offset: 8480)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1400, file: !1075, line: 859, baseType: !172, size: 128, offset: 8512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1400, file: !1075, line: 860, baseType: !109, size: 32, offset: 8640)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1400, file: !1075, line: 861, baseType: !172, size: 128, offset: 8704)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1400, file: !1075, line: 873, baseType: !1680, size: 256, offset: 8832)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1075, line: 376, size: 256, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1685}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1680, file: !1075, line: 381, baseType: !340, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1680, file: !1075, line: 384, baseType: !445, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1680, file: !1075, line: 389, baseType: !445, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1680, file: !1075, line: 392, baseType: !445, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1400, file: !1075, line: 875, baseType: !172, size: 128, offset: 9088)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1400, file: !1075, line: 877, baseType: !1688, size: 320, offset: 9216)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1689, line: 86, size: 320, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1690 = !{!1691, !1692, !1693}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1688, file: !1689, line: 87, baseType: !109, size: 32)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1688, file: !1689, line: 88, baseType: !172, size: 128, offset: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1688, file: !1689, line: 89, baseType: !172, size: 128, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1400, file: !1075, line: 878, baseType: !743, size: 192, align: 64, offset: 9536)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1400, file: !1075, line: 881, baseType: !1696, size: 64, offset: 9728)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1698)
!1698 = !{!1699, !2573}
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !38, line: 734, baseType: !1700, size: 10240)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !38, line: 734, size: 10240, elements: !1701)
!1701 = !{!1702, !1706, !1719, !2450, !2451, !2452, !2453, !2454, !2455, !2462, !2463, !2464, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2503, !2505, !2508, !2553, !2554, !2555, !2558, !2559, !2560, !2563, !2564, !2565, !2571, !2572}
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !38, line: 739, baseType: !1703, size: 512, align: 512)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1700, file: !38, line: 739, size: 512, align: 512, elements: !1704)
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1703, file: !38, line: 747, baseType: !241, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1700, file: !38, line: 750, baseType: !1707, size: 128, offset: 512)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1708, line: 218, size: 128, elements: !1709)
!1708 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1709 = !{!1710, !1717, !1718}
!1710 = !DIDerivedType(tag: DW_TAG_member, scope: !1707, file: !1708, line: 219, baseType: !1711, size: 32)
!1711 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1707, file: !1708, line: 219, size: 32, elements: !1712)
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1711, file: !1708, line: 220, baseType: !221, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1711, file: !1708, line: 221, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1708, line: 197, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1708, line: 197, elements: !920)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1707, file: !1708, line: 223, baseType: !7, size: 32, offset: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1707, file: !1708, line: 224, baseType: !167, size: 64, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1700, file: !38, line: 752, baseType: !1720, size: 64, offset: 640)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!340, !1723, !340, !340, !340, !340}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1725)
!1725 = !{!1726, !1732, !1733, !1735, !1736, !1737, !1738, !1739, !1789, !1979, !1988, !1989, !1990, !2440, !2441, !2442, !2443, !2445, !2446, !2449}
!1726 = !DIDerivedType(tag: DW_TAG_member, scope: !1724, file: !14, line: 995, baseType: !1727, size: 128)
!1727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1724, file: !14, line: 995, size: 128, elements: !1728)
!1728 = !{!1729, !1730, !1731}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1727, file: !14, line: 996, baseType: !1426, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1727, file: !14, line: 997, baseType: !851, size: 128, align: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1727, file: !14, line: 998, baseType: !7, size: 32)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1724, file: !14, line: 1005, baseType: !221, size: 32, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1724, file: !14, line: 1006, baseType: !1734, size: 32, offset: 160)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !173, line: 156, baseType: !7)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1724, file: !14, line: 1007, baseType: !635, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1724, file: !14, line: 1008, baseType: !631, size: 256, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1724, file: !14, line: 1009, baseType: !531, size: 64, offset: 512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1724, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1724, file: !14, line: 1011, baseType: !1740, size: 256, offset: 640)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1741)
!1741 = !{!1742, !1763, !1785, !1786, !1787, !1788}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1740, file: !14, line: 949, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1744, line: 34, baseType: !1745)
!1744 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1744, line: 25, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1745, file: !1744, line: 26, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1749, line: 27, baseType: !1750)
!1749 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1749, line: 13, size: 64, elements: !1751)
!1751 = !{!1752, !1762}
!1752 = !DIDerivedType(tag: DW_TAG_member, scope: !1750, file: !1749, line: 14, baseType: !1753, size: 32)
!1753 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1750, file: !1749, line: 14, size: 32, elements: !1754)
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1753, file: !1749, line: 15, baseType: !241, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, scope: !1753, file: !1749, line: 16, baseType: !1757, size: 32)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1753, file: !1749, line: 16, size: 32, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1757, file: !1749, line: 18, baseType: !249, size: 8)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1757, file: !1749, line: 19, baseType: !1761, size: 24, offset: 8)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 24, elements: !291)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1750, file: !1749, line: 26, baseType: !233, size: 32, offset: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1740, file: !14, line: 950, baseType: !1764, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1772, !1773, !1774, !1775}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1765, file: !30, line: 61, baseType: !1413, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1765, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1765, file: !30, line: 63, baseType: !221, size: 32, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1765, file: !30, line: 65, baseType: !1771, size: 256, offset: 128)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1001, size: 256, elements: !861)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1765, file: !30, line: 66, baseType: !1001, size: 64, offset: 384)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1765, file: !30, line: 68, baseType: !1386, size: 192, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1765, file: !30, line: 69, baseType: !851, size: 128, align: 64, offset: 640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1765, file: !30, line: 70, baseType: !1776, offset: 768)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1777, elements: !1783)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1778)
!1778 = !{!1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1777, file: !30, line: 55, baseType: !109, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1777, file: !30, line: 56, baseType: !1781, size: 64, offset: 64)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1783 = !{!1784}
!1784 = !DISubrange(count: -1)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1740, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1740, file: !14, line: 952, baseType: !376, size: 32, offset: 160)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1740, file: !14, line: 952, baseType: !376, size: 32, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1740, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1724, file: !14, line: 1012, baseType: !1790, size: 64, offset: 896)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1792)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1793, line: 110, size: 1472, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1794 = !{!1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1811, !1812, !1813, !1814, !1815, !1816, !1924, !1925, !1926, !1927, !1928, !1959, !1962, !1966, !1974}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1792, file: !1793, line: 111, baseType: !635, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1792, file: !1793, line: 112, baseType: !376, size: 32, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1792, file: !1793, line: 113, baseType: !385, size: 32, offset: 96)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1792, file: !1793, line: 114, baseType: !376, size: 32, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1792, file: !1793, line: 115, baseType: !385, size: 32, offset: 160)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1792, file: !1793, line: 116, baseType: !376, size: 32, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1792, file: !1793, line: 117, baseType: !385, size: 32, offset: 224)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1792, file: !1793, line: 118, baseType: !376, size: 32, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1792, file: !1793, line: 119, baseType: !385, size: 32, offset: 288)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1792, file: !1793, line: 120, baseType: !7, size: 32, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1792, file: !1793, line: 121, baseType: !1806, size: 64, offset: 384)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1807, line: 24, baseType: !1808)
!1807 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1807, line: 24, size: 64, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1808, file: !1807, line: 24, baseType: !443, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1792, file: !1793, line: 122, baseType: !1806, size: 64, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1792, file: !1793, line: 123, baseType: !1806, size: 64, offset: 512)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1792, file: !1793, line: 124, baseType: !1806, size: 64, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1792, file: !1793, line: 125, baseType: !1806, size: 64, offset: 640)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1792, file: !1793, line: 127, baseType: !203, size: 8, offset: 704)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1792, file: !1793, line: 129, baseType: !1817, size: 64, offset: 768)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1819, line: 195, size: 1728, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1820 = !{!1821, !1822, !1825, !1830, !1831, !1834, !1835, !1840, !1841, !1842, !1843, !1846, !1847, !1848, !1849, !1850, !1888, !1909}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1818, file: !1819, line: 196, baseType: !1413, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1818, file: !1819, line: 197, baseType: !1823, size: 32, offset: 32)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1819, line: 28, baseType: !1824)
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !173, line: 104, baseType: !627)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1819, line: 198, baseType: !1826, size: 192, offset: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !1819, line: 198, size: 192, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1826, file: !1819, line: 199, baseType: !172, size: 128)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1826, file: !1819, line: 200, baseType: !743, size: 192, align: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1818, file: !1819, line: 205, baseType: !1293, size: 320, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1818, file: !1819, line: 206, baseType: !1832, size: 64, offset: 576)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1819, line: 206, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1818, file: !1819, line: 207, baseType: !167, size: 64, offset: 640)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1819, line: 208, baseType: !1836, size: 64, offset: 704)
!1836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !1819, line: 208, size: 64, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1836, file: !1819, line: 209, baseType: !1133, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1836, file: !1819, line: 210, baseType: !1133, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1818, file: !1819, line: 212, baseType: !1133, size: 64, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1818, file: !1819, line: 213, baseType: !376, size: 32, offset: 832)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1818, file: !1819, line: 214, baseType: !385, size: 32, offset: 864)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1818, file: !1819, line: 215, baseType: !1844, size: 32, offset: 896)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1819, line: 31, baseType: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !173, line: 110, baseType: !439)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1818, file: !1819, line: 216, baseType: !260, size: 16, offset: 928)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1818, file: !1819, line: 217, baseType: !260, size: 16, offset: 944)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1818, file: !1819, line: 221, baseType: !769, size: 16, offset: 960)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1818, file: !1819, line: 228, baseType: !340, size: 64, offset: 1024)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1819, line: 245, baseType: !1851, size: 320, offset: 1088)
!1851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !1819, line: 245, size: 320, elements: !1852)
!1852 = !{!1853, !1880}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1851, file: !1819, line: 246, baseType: !1854, size: 320)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1819, line: 114, size: 320, elements: !1855)
!1855 = !{!1856, !1857, !1869, !1872, !1879}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1854, file: !1819, line: 116, baseType: !340, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !1819, line: 117, baseType: !1858, size: 64, offset: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !1819, line: 117, size: 64, elements: !1859)
!1859 = !{!1860, !1868}
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1819, line: 118, baseType: !1861, size: 64)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1858, file: !1819, line: 118, size: 64, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1861, file: !1819, line: 120, baseType: !258, size: 16)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1861, file: !1819, line: 121, baseType: !1865, size: 48, offset: 16)
!1865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 48, elements: !1866)
!1866 = !{!1867}
!1867 = !DISubrange(count: 6)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1858, file: !1819, line: 127, baseType: !340, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1854, file: !1819, line: 129, baseType: !1870, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1819, line: 102, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1854, file: !1819, line: 130, baseType: !1873, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1819, line: 108, size: 192, elements: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1874, file: !1819, line: 109, baseType: !851, size: 128, align: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1874, file: !1819, line: 110, baseType: !1413, size: 32, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1874, file: !1819, line: 111, baseType: !711, size: 8, offset: 160)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1854, file: !1819, line: 131, baseType: !209, size: 64, offset: 256)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1851, file: !1819, line: 247, baseType: !1881, size: 320)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1851, file: !1819, line: 247, size: 320, elements: !1882)
!1882 = !{!1883, !1884, !1885, !1886, !1887}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1881, file: !1819, line: 248, baseType: !340, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1881, file: !1819, line: 249, baseType: !340, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1881, file: !1819, line: 250, baseType: !1870, size: 64, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1881, file: !1819, line: 251, baseType: !1873, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1881, file: !1819, line: 252, baseType: !290, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1818, file: !1819, line: 260, baseType: !1889, size: 256, offset: 1408)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1818, file: !1819, line: 260, size: 256, elements: !1890)
!1890 = !{!1891, !1897}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1889, file: !1819, line: 261, baseType: !1892, size: 256)
!1892 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1819, line: 134, size: 256, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1892, file: !1819, line: 135, baseType: !167, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1892, file: !1819, line: 136, baseType: !1896, size: 256)
!1896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 256, elements: !861)
!1897 = !DIDerivedType(tag: DW_TAG_member, scope: !1889, file: !1819, line: 262, baseType: !1898, size: 256)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1889, file: !1819, line: 262, size: 256, elements: !1899)
!1899 = !{!1900, !1901}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1898, file: !1819, line: 264, baseType: !172, size: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1898, file: !1819, line: 265, baseType: !1902, size: 128, offset: 128)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1903, line: 22, size: 128, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1904 = !{!1905, !1908}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1902, file: !1903, line: 23, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1903, line: 23, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1902, file: !1903, line: 24, baseType: !340, size: 64, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1818, file: !1819, line: 280, baseType: !1910, size: 64, offset: 1664)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1819, line: 176, size: 192, elements: !1912)
!1912 = !{!1913, !1922, !1923}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1911, file: !1819, line: 177, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1819, line: 171, baseType: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!109, !1817, !1918, !1920, !1817}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1911, file: !1819, line: 178, baseType: !1817, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1911, file: !1819, line: 179, baseType: !1870, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1792, file: !1793, line: 130, baseType: !1817, size: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1792, file: !1793, line: 131, baseType: !1817, size: 64, offset: 896)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1792, file: !1793, line: 132, baseType: !1817, size: 64, offset: 960)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1792, file: !1793, line: 135, baseType: !167, size: 64, offset: 1024)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1792, file: !1793, line: 137, baseType: !1929, size: 64, offset: 1088)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1931, line: 14, size: 1088, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1932 = !{!1933, !1934, !1943, !1944, !1945, !1946, !1947, !1948}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1930, file: !1931, line: 15, baseType: !1413, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1930, file: !1931, line: 17, baseType: !1935, size: 320, offset: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1936, line: 22, size: 320, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1937 = !{!1938, !1939, !1940, !1941}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1935, file: !1936, line: 23, baseType: !589, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1935, file: !1936, line: 24, baseType: !641, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1935, file: !1936, line: 26, baseType: !172, size: 128, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1935, file: !1936, line: 28, baseType: !1942, size: 64, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1930, file: !1931, line: 19, baseType: !340, size: 64, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1930, file: !1931, line: 20, baseType: !635, size: 64, offset: 448)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1930, file: !1931, line: 23, baseType: !877, size: 128, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1930, file: !1931, line: 24, baseType: !376, size: 32, offset: 640)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1930, file: !1931, line: 29, baseType: !635, size: 64, offset: 704)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1930, file: !1931, line: 36, baseType: !1949, size: 320, offset: 768)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1950, line: 15, size: 320, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957, !1958}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1949, file: !1950, line: 16, baseType: !589, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1949, file: !1950, line: 18, baseType: !109, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1949, file: !1950, line: 19, baseType: !109, size: 32, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1949, file: !1950, line: 20, baseType: !109, size: 32, offset: 96)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1949, file: !1950, line: 21, baseType: !109, size: 32, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1949, file: !1950, line: 22, baseType: !340, size: 64, offset: 192)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1950, line: 23, baseType: !340, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1792, file: !1793, line: 138, baseType: !1960, size: 64, offset: 1152)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1792, file: !1793, line: 139, baseType: !1963, size: 64, offset: 1216)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1965, line: 16, flags: DIFlagFwdDecl)
!1965 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1792, file: !1793, line: 140, baseType: !1967, size: 64, offset: 1280)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1793, line: 25, size: 64, elements: !1969)
!1969 = !{!1970, !1971, !1972}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1968, file: !1793, line: 26, baseType: !241, size: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1968, file: !1793, line: 27, baseType: !109, size: 32, offset: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1968, file: !1793, line: 28, baseType: !1973, offset: 64)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, elements: !1783)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !1793, line: 142, baseType: !1975, size: 128, offset: 1344)
!1975 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1792, file: !1793, line: 142, size: 128, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1975, file: !1793, line: 143, baseType: !109, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1975, file: !1793, line: 144, baseType: !851, size: 128, align: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1724, file: !14, line: 1013, baseType: !1980, size: 256, offset: 960)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1981)
!1981 = !{!1982, !1983, !1984, !1985, !1986, !1987}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1980, file: !14, line: 971, baseType: !340, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1980, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1980, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1980, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1980, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1980, file: !14, line: 976, baseType: !531, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1724, file: !14, line: 1014, baseType: !1205, size: 128, offset: 1216)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1724, file: !14, line: 1015, baseType: !370, size: 64, offset: 1344)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1724, file: !14, line: 1016, baseType: !1991, size: 64, offset: 1408)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1994)
!1994 = !{!1995, !1996, !2000, !2005, !2009, !2038, !2039, !2045, !2058, !2066, !2070, !2071, !2362, !2363, !2367, !2372, !2373, !2377, !2381, !2387, !2388, !2392, !2393, !2399, !2403, !2407, !2413, !2417, !2421, !2425, !2429, !2430, !2436}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1993, file: !14, line: 1915, baseType: !560, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1993, file: !14, line: 1916, baseType: !1997, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!531, !1723, !531, !109}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1993, file: !14, line: 1917, baseType: !2001, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!322, !1723, !290, !337, !2004}
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1993, file: !14, line: 1918, baseType: !2006, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!322, !1723, !209, !337, !2004}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1993, file: !14, line: 1919, baseType: !2010, size: 64, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!322, !2013, !2035}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2022, !2023, !2024, !2025}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2014, file: !14, line: 374, baseType: !1723, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2014, file: !14, line: 375, baseType: !531, size: 64, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2014, file: !14, line: 376, baseType: !2019, size: 64, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{null, !2013, !326}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2014, file: !14, line: 377, baseType: !167, size: 64, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2014, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2014, file: !14, line: 379, baseType: !258, size: 16, offset: 288)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !2014, file: !14, line: 380, baseType: !2026, size: 64, offset: 320)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2014, file: !14, line: 380, size: 64, elements: !2027)
!2027 = !{!2028, !2031}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2026, file: !14, line: 386, baseType: !2029, size: 64)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2026, file: !14, line: 395, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{!322, !167}
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2037, line: 17, flags: DIFlagFwdDecl)
!2037 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1993, file: !14, line: 1920, baseType: !2010, size: 64, offset: 320)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1993, file: !14, line: 1921, baseType: !2040, size: 64, offset: 384)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!109, !2013, !2043, !7}
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1993, file: !14, line: 1923, baseType: !2046, size: 64, offset: 448)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!109, !1723, !2049}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2051)
!2051 = !{!2052, !2057}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2050, file: !14, line: 1859, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2054)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!711, !2049, !209, !109, !531, !443, !7}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2050, file: !14, line: 1860, baseType: !531, size: 64, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1993, file: !14, line: 1924, baseType: !2059, size: 64, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!2062, !1723, !2064}
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2063, line: 59, baseType: !7)
!2063 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !546, line: 31, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1993, file: !14, line: 1925, baseType: !2067, size: 64, offset: 576)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!326, !1723, !7, !340}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1993, file: !14, line: 1926, baseType: !2067, size: 64, offset: 640)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1993, file: !14, line: 1927, baseType: !2072, size: 64, offset: 704)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!109, !1723, !2075}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2077)
!2077 = !{!2078, !2087, !2088, !2096, !2103, !2104, !2109, !2110, !2115, !2116, !2119, !2355, !2356, !2357, !2358, !2359, !2360}
!2078 = !DIDerivedType(tag: DW_TAG_member, scope: !2076, file: !38, line: 628, baseType: !2079, size: 128)
!2079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !38, line: 628, size: 128, elements: !2080)
!2080 = !{!2081, !2086}
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !2079, file: !38, line: 629, baseType: !2082, size: 128)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2079, file: !38, line: 629, size: 128, elements: !2083)
!2083 = !{!2084, !2085}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2082, file: !38, line: 631, baseType: !340, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2082, file: !38, line: 632, baseType: !340, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2079, file: !38, line: 635, baseType: !851, size: 128, align: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2076, file: !38, line: 639, baseType: !1696, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2076, file: !38, line: 640, baseType: !2089, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2090, line: 297, baseType: !2091)
!2090 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2090, line: 297, size: 64, elements: !2092)
!2092 = !{!2093}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2091, file: !2090, line: 297, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2095, line: 19, baseType: !340)
!2095 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2096 = !DIDerivedType(tag: DW_TAG_member, scope: !2076, file: !38, line: 646, baseType: !2097, size: 64, offset: 256)
!2097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2076, file: !38, line: 646, size: 64, elements: !2098)
!2098 = !{!2099, !2102}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2097, file: !38, line: 647, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !340)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2097, file: !38, line: 648, baseType: !2101, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2076, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2076, file: !38, line: 667, baseType: !2105, size: 64, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2107)
!2107 = !{!2108}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2106, file: !38, line: 580, baseType: !1293, size: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2076, file: !38, line: 670, baseType: !711, size: 8, offset: 448)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2076, file: !38, line: 681, baseType: !2111, size: 256, offset: 512)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2076, file: !38, line: 678, size: 256, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2111, file: !38, line: 679, baseType: !743, size: 192, align: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2111, file: !38, line: 680, baseType: !340, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2076, file: !38, line: 689, baseType: !172, size: 128, offset: 768)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2076, file: !38, line: 691, baseType: !2117, size: 64, offset: 896)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2076, file: !38, line: 694, baseType: !2120, size: 64, offset: 960)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2123, line: 563, size: 1024, elements: !2124)
!2123 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2124 = !{!2125, !2129, !2130, !2134, !2138, !2142, !2319, !2323, !2327, !2331, !2332, !2333, !2337, !2341, !2347, !2351}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2122, file: !2123, line: 564, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !2075}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2122, file: !2123, line: 569, baseType: !2126, size: 64, offset: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2122, file: !2123, line: 571, baseType: !2131, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!109, !2075, !340}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2122, file: !2123, line: 572, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!109, !2075}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2122, file: !2123, line: 578, baseType: !2139, size: 64, offset: 256)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!109, !2075, !340, !340, !340}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2122, file: !2123, line: 580, baseType: !2143, size: 64, offset: 320)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2146, !2147}
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2123, line: 512, size: 896, elements: !2149)
!2149 = !{!2150, !2158, !2159, !2166, !2173, !2183, !2312, !2313, !2315, !2317}
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !2123, line: 513, baseType: !2151, size: 320)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2148, file: !2123, line: 513, size: 320, elements: !2152)
!2152 = !{!2153, !2154, !2155, !2156, !2157}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2151, file: !2123, line: 514, baseType: !2075, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2151, file: !2123, line: 515, baseType: !1145, size: 32, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2151, file: !2123, line: 516, baseType: !340, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2151, file: !2123, line: 517, baseType: !340, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2151, file: !2123, line: 518, baseType: !340, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2148, file: !2123, line: 520, baseType: !37, size: 32, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2148, file: !2123, line: 522, baseType: !2160, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2095, line: 22, baseType: !2162)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2095, line: 22, size: 64, elements: !2163)
!2163 = !{!2164}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2162, file: !2095, line: 22, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2095, line: 15, baseType: !340)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2148, file: !2123, line: 524, baseType: !2167, size: 64, offset: 448)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2090, line: 372, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2090, line: 372, size: 64, elements: !2170)
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2169, file: !2090, line: 372, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2095, line: 16, baseType: !340)
!2173 = !DIDerivedType(tag: DW_TAG_member, scope: !2148, file: !2123, line: 527, baseType: !2174, size: 64, offset: 512)
!2174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2148, file: !2123, line: 527, size: 64, elements: !2175)
!2175 = !{!2176, !2182}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2174, file: !2123, line: 528, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2095, line: 21, baseType: !2178)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2095, line: 21, size: 64, elements: !2179)
!2179 = !{!2180}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2178, file: !2095, line: 21, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2095, line: 14, baseType: !340)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2174, file: !2123, line: 529, baseType: !2161, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2148, file: !2123, line: 534, baseType: !2184, size: 64, offset: 576)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2186)
!2186 = !{!2187, !2188, !2306, !2311}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2185, file: !38, line: 75, baseType: !340, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !38, line: 83, baseType: !2189, size: 320, offset: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2185, file: !38, line: 83, size: 320, elements: !2190)
!2190 = !{!2191, !2212, !2226, !2230, !2305}
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !38, line: 84, baseType: !2192, size: 320)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !38, line: 84, size: 320, elements: !2193)
!2193 = !{!2194, !2205, !2206, !2211}
!2194 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !38, line: 90, baseType: !2195, size: 128)
!2195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2192, file: !38, line: 90, size: 128, elements: !2196)
!2196 = !{!2197, !2198, !2203, !2204}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2195, file: !38, line: 91, baseType: !172, size: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2195, file: !38, line: 94, baseType: !2199, size: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2195, file: !38, line: 94, size: 128, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2199, file: !38, line: 96, baseType: !167, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2199, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2195, file: !38, line: 102, baseType: !172, size: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2195, file: !38, line: 103, baseType: !172, size: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2192, file: !38, line: 106, baseType: !366, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2192, file: !38, line: 107, baseType: !2207, size: 64, offset: 192)
!2207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2192, file: !38, line: 107, size: 64, elements: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2207, file: !38, line: 108, baseType: !340, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2207, file: !38, line: 109, baseType: !340, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2192, file: !38, line: 117, baseType: !340, size: 64, offset: 256)
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !38, line: 119, baseType: !2213, size: 320)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !38, line: 119, size: 320, elements: !2214)
!2214 = !{!2215, !2216, !2219, !2220, !2221}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2213, file: !38, line: 124, baseType: !340, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2213, file: !38, line: 125, baseType: !2217, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2213, file: !38, line: 126, baseType: !340, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2213, file: !38, line: 127, baseType: !340, size: 64, offset: 192)
!2221 = !DIDerivedType(tag: DW_TAG_member, scope: !2213, file: !38, line: 128, baseType: !2222, size: 64, offset: 256)
!2222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2213, file: !38, line: 128, size: 64, elements: !2223)
!2223 = !{!2224, !2225}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2222, file: !38, line: 133, baseType: !340, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2222, file: !38, line: 138, baseType: !635, size: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !38, line: 141, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !38, line: 141, size: 64, elements: !2228)
!2228 = !{!2229}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2227, file: !38, line: 142, baseType: !340, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, scope: !2189, file: !38, line: 144, baseType: !2231, size: 128)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2189, file: !38, line: 144, size: 128, elements: !2232)
!2232 = !{!2233, !2304}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2231, file: !38, line: 146, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2236)
!2236 = !{!2237, !2247, !2268, !2269, !2270, !2271, !2272, !2286, !2287, !2288}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2235, file: !54, line: 127, baseType: !2238, size: 384)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2239)
!2239 = !{!2240, !2241, !2243, !2244, !2245, !2246}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2238, file: !54, line: 22, baseType: !340, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2238, file: !54, line: 23, baseType: !2242, size: 64, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2238, file: !54, line: 24, baseType: !2242, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2238, file: !54, line: 25, baseType: !340, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2238, file: !54, line: 26, baseType: !340, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2238, file: !54, line: 27, baseType: !340, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2235, file: !54, line: 128, baseType: !2248, size: 128, offset: 384)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2249, line: 105, size: 128, elements: !2250)
!2249 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2250 = !{!2251, !2252}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2248, file: !2249, line: 110, baseType: !340, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2248, file: !2249, line: 118, baseType: !2253, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2249, line: 95, size: 448, elements: !2255)
!2255 = !{!2256, !2257, !2263, !2264, !2265, !2266, !2267}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2254, file: !2249, line: 96, baseType: !635, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2254, file: !2249, line: 97, baseType: !2258, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2249, line: 60, baseType: !2260)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !2262}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2254, file: !2249, line: 98, baseType: !2258, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2254, file: !2249, line: 99, baseType: !711, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2254, file: !2249, line: 100, baseType: !711, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2254, file: !2249, line: 101, baseType: !851, size: 128, align: 64, offset: 256)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2254, file: !2249, line: 102, baseType: !2262, size: 64, offset: 384)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2235, file: !54, line: 129, baseType: !580, size: 256, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2235, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2235, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2235, file: !54, line: 132, baseType: !340, size: 64, offset: 832)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2235, file: !54, line: 133, baseType: !2273, size: 64, offset: 896)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2275)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2276)
!2276 = !{!2277, !2281, !2282}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2275, file: !54, line: 83, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{null, !2184}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2275, file: !54, line: 89, baseType: !2143, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2275, file: !54, line: 100, baseType: !2283, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!109, !2234, !340, !340, !109}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2235, file: !54, line: 134, baseType: !167, size: 64, offset: 960)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2235, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !54, line: 136, baseType: !2289, size: 128, offset: 1088)
!2289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2235, file: !54, line: 136, size: 128, elements: !2290)
!2290 = !{!2291, !2297}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2289, file: !54, line: 137, baseType: !2292, size: 128)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2293, line: 6, size: 128, elements: !2294)
!2293 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2292, file: !2293, line: 7, baseType: !443, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2292, file: !2293, line: 8, baseType: !443, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, scope: !2289, file: !54, line: 138, baseType: !2298)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2289, file: !54, line: 138, elements: !2299)
!2299 = !{!2300, !2302}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2298, file: !54, line: 138, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2298, file: !54, line: 138, elements: !920)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2298, file: !54, line: 138, baseType: !2303)
!2303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2292, elements: !1783)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2231, file: !38, line: 147, baseType: !167, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2189, file: !38, line: 161, baseType: !851, size: 128, align: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !38, line: 164, baseType: !2307, size: 32, offset: 384)
!2307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2185, file: !38, line: 164, size: 32, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2307, file: !38, line: 169, baseType: !241, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2307, file: !38, line: 177, baseType: !7, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2185, file: !38, line: 181, baseType: !241, size: 32, offset: 416)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2148, file: !2123, line: 535, baseType: !2184, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2148, file: !2123, line: 541, baseType: !2314, size: 64, offset: 704)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2148, file: !2123, line: 545, baseType: !2316, size: 64, offset: 768)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2148, file: !2123, line: 549, baseType: !2318, size: 64, offset: 832)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2090, line: 520, baseType: !2184)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2122, file: !2123, line: 581, baseType: !2320, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!2146, !2147, !7}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2122, file: !2123, line: 582, baseType: !2324, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!2146, !2147, !340, !340}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2122, file: !2123, line: 584, baseType: !2328, size: 64, offset: 512)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!340, !2075}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2122, file: !2123, line: 588, baseType: !2143, size: 64, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2122, file: !2123, line: 591, baseType: !2143, size: 64, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2122, file: !2123, line: 597, baseType: !2334, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!109, !2075, !340, !167, !109, !109}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2122, file: !2123, line: 603, baseType: !2338, size: 64, offset: 768)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!209, !2075}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2122, file: !2123, line: 613, baseType: !2342, size: 64, offset: 832)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!109, !2075, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2122, file: !2123, line: 625, baseType: !2348, size: 64, offset: 896)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!2345, !2075, !340}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2122, file: !2123, line: 633, baseType: !2352, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2184, !2075, !340}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2076, file: !38, line: 697, baseType: !340, size: 64, offset: 1024)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2076, file: !38, line: 699, baseType: !1723, size: 64, offset: 1088)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2076, file: !38, line: 700, baseType: !167, size: 64, offset: 1152)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2076, file: !38, line: 711, baseType: !635, size: 64, offset: 1216)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2076, file: !38, line: 717, baseType: !2345, size: 64, offset: 1280)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2076, file: !38, line: 722, baseType: !2361, offset: 1344)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !920)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1993, file: !14, line: 1928, baseType: !340, size: 64, offset: 768)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1993, file: !14, line: 1929, baseType: !2364, size: 64, offset: 832)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!109, !370, !1723}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1993, file: !14, line: 1930, baseType: !2368, size: 64, offset: 896)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!109, !1723, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !167)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1993, file: !14, line: 1931, baseType: !2364, size: 64, offset: 960)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1993, file: !14, line: 1932, baseType: !2374, size: 64, offset: 1024)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!109, !1723, !531, !531, !109}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1993, file: !14, line: 1933, baseType: !2378, size: 64, offset: 1088)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!109, !109, !1723, !109}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1993, file: !14, line: 1934, baseType: !2382, size: 64, offset: 1152)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!109, !1723, !109, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1993, file: !14, line: 1935, baseType: !1720, size: 64, offset: 1216)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1993, file: !14, line: 1936, baseType: !2389, size: 64, offset: 1280)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!109, !109}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1993, file: !14, line: 1937, baseType: !2382, size: 64, offset: 1344)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1993, file: !14, line: 1938, baseType: !2394, size: 64, offset: 1408)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!322, !2397, !1723, !2004, !337, !7}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1075, line: 59, flags: DIFlagFwdDecl)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1993, file: !14, line: 1939, baseType: !2400, size: 64, offset: 1472)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!322, !1723, !2004, !2397, !337, !7}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1993, file: !14, line: 1940, baseType: !2404, size: 64, offset: 1536)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{null, !1723}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1993, file: !14, line: 1941, baseType: !2408, size: 64, offset: 1600)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!109, !1723, !109, !2411, !2412}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1993, file: !14, line: 1942, baseType: !2414, size: 64, offset: 1664)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!326, !1723, !109, !531, !531}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1993, file: !14, line: 1944, baseType: !2418, size: 64, offset: 1728)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{null, !1073, !1723}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1993, file: !14, line: 1948, baseType: !2422, size: 64, offset: 1792)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!322, !1723, !531, !1723, !531, !337, !7}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1993, file: !14, line: 1950, baseType: !2426, size: 64, offset: 1856)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!531, !1723, !531, !1723, !531, !531, !7}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1993, file: !14, line: 1953, baseType: !2374, size: 64, offset: 1920)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1993, file: !14, line: 1954, baseType: !2431, size: 64, offset: 1984)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!109, !2434, !7}
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1993, file: !14, line: 1955, baseType: !2437, size: 64, offset: 2048)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!109, !2434, !2043, !7}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1724, file: !14, line: 1018, baseType: !443, size: 64, offset: 1472)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1724, file: !14, line: 1020, baseType: !167, size: 64, offset: 1536)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1724, file: !14, line: 1023, baseType: !167, size: 64, offset: 1600)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1724, file: !14, line: 1027, baseType: !2444, size: 64, offset: 1664)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1724, file: !14, line: 1029, baseType: !366, size: 64, offset: 1728)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1724, file: !14, line: 1030, baseType: !2447, size: 32, offset: 1792)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2448, line: 8, baseType: !439)
!2448 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1724, file: !14, line: 1031, baseType: !2447, size: 32, offset: 1824)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1700, file: !38, line: 756, baseType: !340, size: 64, offset: 704)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1700, file: !38, line: 757, baseType: !340, size: 64, offset: 768)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1700, file: !38, line: 760, baseType: !340, size: 64, offset: 832)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1700, file: !38, line: 761, baseType: !340, size: 64, offset: 896)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1700, file: !38, line: 763, baseType: !340, size: 64, offset: 960)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1700, file: !38, line: 764, baseType: !2456, size: 64, offset: 1024)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2090, line: 299, baseType: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2090, line: 299, size: 64, elements: !2459)
!2459 = !{!2460}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2458, file: !2090, line: 299, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2095, line: 18, baseType: !340)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1700, file: !38, line: 773, baseType: !241, size: 32, offset: 1088)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1700, file: !38, line: 785, baseType: !241, size: 32, offset: 1120)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1700, file: !38, line: 795, baseType: !2465, size: 64, offset: 1152)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2467)
!2467 = !{!2468, !2469}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2466, file: !38, line: 727, baseType: !443, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2466, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1700, file: !38, line: 801, baseType: !340, size: 64, offset: 1216)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1700, file: !38, line: 804, baseType: !635, size: 64, offset: 1280)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1700, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1700, file: !38, line: 808, baseType: !221, size: 32, offset: 1376)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1700, file: !38, line: 823, baseType: !1293, size: 320, offset: 1408)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1700, file: !38, line: 825, baseType: !172, size: 128, offset: 1728)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1700, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1700, file: !38, line: 849, baseType: !340, size: 64, offset: 1920)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1700, file: !38, line: 850, baseType: !340, size: 64, offset: 1984)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1700, file: !38, line: 852, baseType: !340, size: 64, offset: 2048)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1700, file: !38, line: 853, baseType: !340, size: 64, offset: 2112)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1700, file: !38, line: 854, baseType: !637, size: 64, offset: 2176)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1700, file: !38, line: 855, baseType: !340, size: 64, offset: 2240)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1700, file: !38, line: 856, baseType: !340, size: 64, offset: 2304)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1700, file: !38, line: 857, baseType: !340, size: 64, offset: 2368)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1700, file: !38, line: 858, baseType: !340, size: 64, offset: 2432)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1700, file: !38, line: 865, baseType: !416, size: 32, offset: 2496)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1700, file: !38, line: 867, baseType: !221, size: 32, offset: 2528)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1700, file: !38, line: 869, baseType: !340, size: 64, offset: 2560)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1700, file: !38, line: 869, baseType: !340, size: 64, offset: 2624)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1700, file: !38, line: 869, baseType: !340, size: 64, offset: 2688)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1700, file: !38, line: 869, baseType: !340, size: 64, offset: 2752)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1700, file: !38, line: 870, baseType: !340, size: 64, offset: 2816)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1700, file: !38, line: 870, baseType: !340, size: 64, offset: 2880)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1700, file: !38, line: 870, baseType: !340, size: 64, offset: 2944)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1700, file: !38, line: 871, baseType: !340, size: 64, offset: 3008)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1700, file: !38, line: 871, baseType: !340, size: 64, offset: 3072)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1700, file: !38, line: 871, baseType: !340, size: 64, offset: 3136)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1700, file: !38, line: 871, baseType: !340, size: 64, offset: 3200)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1700, file: !38, line: 873, baseType: !2500, size: 3328, offset: 3264)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 3328, elements: !2501)
!2501 = !{!2502}
!2502 = !DISubrange(count: 52)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1700, file: !38, line: 875, baseType: !2504, size: 1280, offset: 6592)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1935, size: 1280, elements: !861)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1700, file: !38, line: 877, baseType: !2506, size: 64, offset: 7872)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1700, file: !38, line: 880, baseType: !2509, size: 1088, offset: 7936)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2510, line: 72, baseType: !2511)
!2510 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2510, line: 23, size: 1088, elements: !2512)
!2512 = !{!2513, !2514, !2515, !2516, !2517, !2520, !2521, !2522, !2523, !2550, !2551, !2552}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2511, file: !2510, line: 28, baseType: !443, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2511, file: !2510, line: 38, baseType: !637, size: 64, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2511, file: !2510, line: 40, baseType: !340, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2511, file: !2510, line: 43, baseType: !1293, size: 320, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2511, file: !2510, line: 44, baseType: !2518, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2510, line: 44, flags: DIFlagFwdDecl)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !2510, line: 48, baseType: !340, size: 64, offset: 576)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2511, file: !2510, line: 59, baseType: !631, size: 256, offset: 640)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2511, file: !2510, line: 60, baseType: !167, size: 64, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2511, file: !2510, line: 61, baseType: !2524, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2526)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2527, line: 13, size: 1216, elements: !2528)
!2527 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2526, file: !2527, line: 14, baseType: !167, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2526, file: !2527, line: 15, baseType: !340, size: 64, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2526, file: !2527, line: 17, baseType: !340, size: 64, offset: 128)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2526, file: !2527, line: 17, baseType: !340, size: 64, offset: 192)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2526, file: !2527, line: 18, baseType: !340, size: 64, offset: 256)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2526, file: !2527, line: 18, baseType: !340, size: 64, offset: 320)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2526, file: !2527, line: 19, baseType: !2536, size: 64, offset: 384)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2526, file: !2527, line: 21, baseType: !326, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2526, file: !2527, line: 23, baseType: !326, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2526, file: !2527, line: 24, baseType: !326, size: 64, offset: 576)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2526, file: !2527, line: 25, baseType: !326, size: 64, offset: 640)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2526, file: !2527, line: 26, baseType: !326, size: 64, offset: 704)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2526, file: !2527, line: 27, baseType: !326, size: 64, offset: 768)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2526, file: !2527, line: 28, baseType: !326, size: 64, offset: 832)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2526, file: !2527, line: 29, baseType: !326, size: 64, offset: 896)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2526, file: !2527, line: 30, baseType: !326, size: 64, offset: 960)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2526, file: !2527, line: 31, baseType: !326, size: 64, offset: 1024)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2526, file: !2527, line: 32, baseType: !326, size: 64, offset: 1088)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2526, file: !2527, line: 33, baseType: !326, size: 64, offset: 1152)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2511, file: !2510, line: 63, baseType: !241, size: 32, offset: 1024)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2511, file: !2510, line: 69, baseType: !258, size: 16, offset: 1056)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2511, file: !2510, line: 70, baseType: !767, size: 16, offset: 1072)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1700, file: !38, line: 882, baseType: !340, size: 64, offset: 9024)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1700, file: !38, line: 885, baseType: !221, size: 32, offset: 9088)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1700, file: !38, line: 886, baseType: !2556, size: 64, offset: 9152)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1700, file: !38, line: 901, baseType: !1960, size: 64, offset: 9216)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1700, file: !38, line: 904, baseType: !1723, size: 64, offset: 9280)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1700, file: !38, line: 906, baseType: !2561, size: 64, offset: 9344)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1700, file: !38, line: 930, baseType: !241, size: 32, offset: 9408)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1700, file: !38, line: 933, baseType: !241, size: 32, offset: 9440)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1700, file: !38, line: 935, baseType: !2566, size: 64, offset: 9472)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2567)
!2567 = !{!2568}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2566, file: !68, line: 104, baseType: !2569, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1700, file: !38, line: 940, baseType: !635, size: 64, offset: 9536)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1700, file: !38, line: 942, baseType: !891, size: 256, offset: 9600)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1697, file: !38, line: 986, baseType: !2574, offset: 10240)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, elements: !1783)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1400, file: !1075, line: 882, baseType: !1696, size: 64, offset: 9792)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1400, file: !1075, line: 884, baseType: !109, size: 32, offset: 9856)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1400, file: !1075, line: 885, baseType: !109, size: 32, offset: 9888)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1400, file: !1075, line: 886, baseType: !109, size: 32, offset: 9920)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1400, file: !1075, line: 888, baseType: !109, size: 32, offset: 9952)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1400, file: !1075, line: 890, baseType: !340, size: 64, offset: 9984)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1400, file: !1075, line: 893, baseType: !7, size: 32, offset: 10048)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1400, file: !1075, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1400, file: !1075, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1400, file: !1075, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1400, file: !1075, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1400, file: !1075, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1400, file: !1075, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1400, file: !1075, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1400, file: !1075, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1400, file: !1075, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1400, file: !1075, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1400, file: !1075, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1400, file: !1075, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1400, file: !1075, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1400, file: !1075, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1400, file: !1075, line: 969, baseType: !340, size: 64, offset: 10176)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1400, file: !1075, line: 971, baseType: !2598, size: 448, offset: 10240)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2599)
!2599 = !{!2600, !2601, !2606}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2598, file: !62, line: 26, baseType: !340, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2598, file: !62, line: 27, baseType: !2602, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!326, !2605}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, scope: !2598, file: !62, line: 28, baseType: !2607, size: 320, offset: 128)
!2607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2598, file: !62, line: 28, size: 320, elements: !2608)
!2608 = !{!2609, !2619, !2644}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2607, file: !62, line: 37, baseType: !2610, size: 320)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2607, file: !62, line: 30, size: 320, elements: !2611)
!2611 = !{!2612, !2614, !2615, !2616, !2617, !2618}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2610, file: !62, line: 31, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2610, file: !62, line: 32, baseType: !439, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2610, file: !62, line: 33, baseType: !439, size: 32, offset: 96)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2610, file: !62, line: 34, baseType: !439, size: 32, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2610, file: !62, line: 35, baseType: !443, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2610, file: !62, line: 36, baseType: !2613, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2607, file: !62, line: 47, baseType: !2620, size: 192)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2607, file: !62, line: 39, size: 192, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2643}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2620, file: !62, line: 40, baseType: !1567, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2620, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, scope: !2620, file: !62, line: 42, baseType: !2625, size: 64, offset: 64)
!2625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2620, file: !62, line: 42, size: 64, elements: !2626)
!2626 = !{!2627, !2635}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2625, file: !62, line: 43, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2630, line: 7, size: 128, elements: !2631)
!2630 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2631 = !{!2632, !2634}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2629, file: !2630, line: 8, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !324, line: 93, baseType: !533)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2629, file: !2630, line: 9, baseType: !533, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2625, file: !62, line: 44, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2638, line: 7, size: 64, elements: !2639)
!2638 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2639 = !{!2640, !2642}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2637, file: !2638, line: 8, baseType: !2641, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2638, line: 5, baseType: !627)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2637, file: !2638, line: 9, baseType: !627, size: 32, offset: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2620, file: !62, line: 46, baseType: !443, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2607, file: !62, line: 55, baseType: !2645, size: 256)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2607, file: !62, line: 49, size: 256, elements: !2646)
!2646 = !{!2647, !2650, !2651, !2652, !2653}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2645, file: !62, line: 50, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2645, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2645, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2645, file: !62, line: 53, baseType: !340, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2645, file: !62, line: 54, baseType: !340, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1400, file: !1075, line: 973, baseType: !2655, size: 32, offset: 10688)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !173, line: 27, baseType: !2656)
!2656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !324, line: 28, baseType: !109)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1400, file: !1075, line: 974, baseType: !2655, size: 32, offset: 10720)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1400, file: !1075, line: 978, baseType: !340, size: 64, offset: 10752)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1400, file: !1075, line: 987, baseType: !1399, size: 64, offset: 10816)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1400, file: !1075, line: 990, baseType: !1399, size: 64, offset: 10880)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1400, file: !1075, line: 995, baseType: !172, size: 128, offset: 10944)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1400, file: !1075, line: 996, baseType: !172, size: 128, offset: 11072)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1400, file: !1075, line: 997, baseType: !1399, size: 64, offset: 11200)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1400, file: !1075, line: 1005, baseType: !172, size: 128, offset: 11264)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1400, file: !1075, line: 1006, baseType: !172, size: 128, offset: 11392)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1400, file: !1075, line: 1009, baseType: !1764, size: 64, offset: 11520)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1400, file: !1075, line: 1010, baseType: !2668, size: 512, offset: 11584)
!2668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !877, size: 512, elements: !861)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1400, file: !1075, line: 1011, baseType: !172, size: 128, offset: 12096)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1400, file: !1075, line: 1012, baseType: !172, size: 128, offset: 12224)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1400, file: !1075, line: 1014, baseType: !579, size: 64, offset: 12352)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1400, file: !1075, line: 1017, baseType: !760, size: 64, offset: 12416)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1400, file: !1075, line: 1020, baseType: !760, size: 64, offset: 12480)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1400, file: !1075, line: 1023, baseType: !167, size: 64, offset: 12544)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1400, file: !1075, line: 1025, baseType: !443, size: 64, offset: 12608)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1400, file: !1075, line: 1026, baseType: !443, size: 64, offset: 12672)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1400, file: !1075, line: 1031, baseType: !443, size: 64, offset: 12736)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1400, file: !1075, line: 1032, baseType: !2679, size: 192, offset: 12800)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1075, line: 324, size: 192, elements: !2680)
!2680 = !{!2681, !2682, !2683}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2679, file: !1075, line: 326, baseType: !443, size: 64)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2679, file: !1075, line: 327, baseType: !443, size: 64, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2679, file: !1075, line: 328, baseType: !589, size: 32, offset: 128)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1400, file: !1075, line: 1041, baseType: !340, size: 64, offset: 12992)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1400, file: !1075, line: 1042, baseType: !340, size: 64, offset: 13056)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1400, file: !1075, line: 1045, baseType: !443, size: 64, offset: 13120)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1400, file: !1075, line: 1048, baseType: !443, size: 64, offset: 13184)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1400, file: !1075, line: 1051, baseType: !340, size: 64, offset: 13248)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1400, file: !1075, line: 1052, baseType: !340, size: 64, offset: 13312)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1400, file: !1075, line: 1055, baseType: !2691, size: 640, offset: 13376)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2692, line: 132, size: 640, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2693 = !{!2694, !2700, !2701}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2691, file: !2692, line: 133, baseType: !2695, size: 576)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2696, size: 576, elements: !291)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2692, line: 117, size: 192, elements: !2697)
!2697 = !{!2698, !2699}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2696, file: !2692, line: 118, baseType: !443, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2696, file: !2692, line: 119, baseType: !1576, size: 128, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2691, file: !2692, line: 134, baseType: !7, size: 32, offset: 576)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2691, file: !2692, line: 135, baseType: !7, size: 32, offset: 608)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1400, file: !1075, line: 1058, baseType: !2703, size: 448, offset: 14016)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2692, line: 144, size: 448, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2703, file: !2692, line: 145, baseType: !851, size: 128, align: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2703, file: !2692, line: 146, baseType: !631, size: 256, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2703, file: !2692, line: 147, baseType: !7, size: 32, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1400, file: !1075, line: 1064, baseType: !1790, size: 64, offset: 14464)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1400, file: !1075, line: 1067, baseType: !1790, size: 64, offset: 14528)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1400, file: !1075, line: 1070, baseType: !1790, size: 64, offset: 14592)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1400, file: !1075, line: 1074, baseType: !1817, size: 64, offset: 14656)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1400, file: !1075, line: 1084, baseType: !2713, size: 128, offset: 14720)
!2713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 128, elements: !2714)
!2714 = !{!2715}
!2715 = !DISubrange(count: 16)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1400, file: !1075, line: 1086, baseType: !2717, size: 64, offset: 14848)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1075, line: 55, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1400, file: !1075, line: 1089, baseType: !2720, size: 64, offset: 14912)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2721, line: 12, size: 64, elements: !2722)
!2721 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2722 = !{!2723}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2720, file: !2721, line: 13, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2721, line: 8, flags: DIFlagFwdDecl)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1400, file: !1075, line: 1090, baseType: !2727, size: 128, offset: 14976)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2728, line: 13, size: 128, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2727, file: !2728, line: 14, baseType: !172, size: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1400, file: !1075, line: 1097, baseType: !2732, size: 64, offset: 15104)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1075, line: 50, flags: DIFlagFwdDecl)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1400, file: !1075, line: 1100, baseType: !2735, size: 64, offset: 15168)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1075, line: 1100, flags: DIFlagFwdDecl)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1400, file: !1075, line: 1103, baseType: !2738, size: 64, offset: 15232)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1075, line: 53, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1400, file: !1075, line: 1107, baseType: !2741, size: 64, offset: 15296)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1075, line: 56, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1400, file: !1075, line: 1110, baseType: !2744, size: 64, offset: 15360)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2746, line: 93, size: 8768, elements: !2747)
!2746 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2747 = !{!2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2795, !2804, !2805, !2807, !2808, !2809, !2812, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2850, !2851, !2858, !2868, !2871, !2872, !2875, !2876, !2877, !2878, !2879, !2880}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2745, file: !2746, line: 94, baseType: !1413, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2745, file: !2746, line: 95, baseType: !241, size: 32, offset: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2745, file: !2746, line: 96, baseType: !109, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2745, file: !2746, line: 97, baseType: !109, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2745, file: !2746, line: 98, baseType: !172, size: 128, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2745, file: !2746, line: 100, baseType: !1386, size: 192, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2745, file: !2746, line: 103, baseType: !1399, size: 64, offset: 448)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2745, file: !2746, line: 106, baseType: !2756, size: 192, offset: 512)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1965, line: 32, size: 192, elements: !2757)
!2757 = !{!2758, !2759}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2756, file: !1965, line: 33, baseType: !172, size: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2756, file: !1965, line: 34, baseType: !2760, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2761, line: 25, baseType: !2762)
!2761 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2761, line: 23, size: 64, elements: !2763)
!2763 = !{!2764}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2762, file: !2761, line: 24, baseType: !1647, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2745, file: !2746, line: 109, baseType: !1001, size: 64, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2745, file: !2746, line: 112, baseType: !109, size: 32, offset: 768)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2745, file: !2746, line: 114, baseType: !109, size: 32, offset: 800)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2745, file: !2746, line: 115, baseType: !1399, size: 64, offset: 832)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2745, file: !2746, line: 118, baseType: !109, size: 32, offset: 896)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2745, file: !2746, line: 119, baseType: !7, size: 32, offset: 928)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2745, file: !2746, line: 121, baseType: !2772, size: 64, offset: 960)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2746, line: 80, size: 448, elements: !2774)
!2774 = !{!2775, !2776, !2782}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2773, file: !2746, line: 81, baseType: !241, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2773, file: !2746, line: 82, baseType: !2777, size: 128, offset: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2746, line: 75, size: 128, elements: !2778)
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2777, file: !2746, line: 76, baseType: !1399, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2777, file: !2746, line: 77, baseType: !2781, size: 64, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2773, file: !2746, line: 83, baseType: !580, size: 256, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2745, file: !2746, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2745, file: !2746, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2745, file: !2746, line: 138, baseType: !7, size: 32, offset: 1056)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2745, file: !2746, line: 139, baseType: !172, size: 128, offset: 1088)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2745, file: !2746, line: 142, baseType: !1520, size: 512, offset: 1216)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2745, file: !2746, line: 143, baseType: !1528, size: 64, offset: 1728)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2745, file: !2746, line: 150, baseType: !2790, size: 256, offset: 1792)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2791, size: 256, elements: !750)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2746, line: 38, size: 128, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2791, file: !2746, line: 39, baseType: !443, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2791, file: !2746, line: 40, baseType: !443, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2745, file: !2746, line: 156, baseType: !2796, size: 192, offset: 2048)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2746, line: 66, size: 192, elements: !2797)
!2797 = !{!2798}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2796, file: !2746, line: 67, baseType: !2799, size: 192)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2746, line: 47, size: 192, elements: !2800)
!2800 = !{!2801, !2802, !2803}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2799, file: !2746, line: 48, baseType: !637, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2799, file: !2746, line: 49, baseType: !637, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2799, file: !2746, line: 50, baseType: !637, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2745, file: !2746, line: 160, baseType: !2691, size: 640, offset: 2240)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2745, file: !2746, line: 163, baseType: !2806, size: 256, offset: 2880)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1764, size: 256, elements: !861)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2745, file: !2746, line: 169, baseType: !1764, size: 64, offset: 3136)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2745, file: !2746, line: 172, baseType: !109, size: 32, offset: 3200)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2745, file: !2746, line: 174, baseType: !2810, size: 64, offset: 3264)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2746, line: 174, flags: DIFlagFwdDecl)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2745, file: !2746, line: 185, baseType: !2813, size: 64, offset: 3328)
!2813 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !412, line: 860, baseType: !2814)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 853, size: 64, elements: !2815)
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2814, file: !412, line: 858, baseType: !411, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2814, file: !412, line: 859, baseType: !221, size: 32, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2745, file: !2746, line: 186, baseType: !443, size: 64, offset: 3392)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2745, file: !2746, line: 186, baseType: !443, size: 64, offset: 3456)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2745, file: !2746, line: 186, baseType: !443, size: 64, offset: 3520)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2745, file: !2746, line: 186, baseType: !443, size: 64, offset: 3584)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2745, file: !2746, line: 187, baseType: !443, size: 64, offset: 3648)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2745, file: !2746, line: 188, baseType: !443, size: 64, offset: 3712)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2745, file: !2746, line: 189, baseType: !2679, size: 192, offset: 3776)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2745, file: !2746, line: 190, baseType: !340, size: 64, offset: 3968)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2745, file: !2746, line: 190, baseType: !340, size: 64, offset: 4032)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2745, file: !2746, line: 190, baseType: !340, size: 64, offset: 4096)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2745, file: !2746, line: 190, baseType: !340, size: 64, offset: 4160)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2745, file: !2746, line: 191, baseType: !340, size: 64, offset: 4224)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2745, file: !2746, line: 191, baseType: !340, size: 64, offset: 4288)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2745, file: !2746, line: 191, baseType: !340, size: 64, offset: 4352)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2745, file: !2746, line: 191, baseType: !340, size: 64, offset: 4416)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2745, file: !2746, line: 192, baseType: !340, size: 64, offset: 4480)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2745, file: !2746, line: 192, baseType: !340, size: 64, offset: 4544)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2745, file: !2746, line: 192, baseType: !340, size: 64, offset: 4608)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2745, file: !2746, line: 192, baseType: !340, size: 64, offset: 4672)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2745, file: !2746, line: 193, baseType: !340, size: 64, offset: 4736)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2745, file: !2746, line: 193, baseType: !340, size: 64, offset: 4800)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2745, file: !2746, line: 194, baseType: !2840, size: 448, offset: 4864)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2841, line: 12, size: 448, elements: !2842)
!2841 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2840, file: !2841, line: 15, baseType: !443, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2840, file: !2841, line: 17, baseType: !443, size: 64, offset: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2840, file: !2841, line: 19, baseType: !443, size: 64, offset: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2840, file: !2841, line: 21, baseType: !443, size: 64, offset: 192)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2840, file: !2841, line: 29, baseType: !443, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2840, file: !2841, line: 35, baseType: !443, size: 64, offset: 320)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2840, file: !2841, line: 44, baseType: !443, size: 64, offset: 384)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2745, file: !2746, line: 202, baseType: !445, size: 64, offset: 5312)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2745, file: !2746, line: 213, baseType: !2852, size: 2048, offset: 5376)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2853, size: 2048, elements: !2714)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2854, line: 43, size: 128, elements: !2855)
!2854 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2855 = !{!2856, !2857}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2853, file: !2854, line: 44, baseType: !339, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2853, file: !2854, line: 45, baseType: !339, size: 64, offset: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2745, file: !2746, line: 216, baseType: !2859, size: 448, offset: 7424)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2746, line: 30, size: 448, elements: !2860)
!2860 = !{!2861, !2862, !2863, !2864, !2865, !2866, !2867}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2859, file: !2746, line: 31, baseType: !109, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2859, file: !2746, line: 32, baseType: !326, size: 64, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2859, file: !2746, line: 33, baseType: !340, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2859, file: !2746, line: 34, baseType: !443, size: 64, offset: 192)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2859, file: !2746, line: 34, baseType: !443, size: 64, offset: 256)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2859, file: !2746, line: 35, baseType: !340, size: 64, offset: 320)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2859, file: !2746, line: 35, baseType: !340, size: 64, offset: 384)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2745, file: !2746, line: 219, baseType: !2869, size: 64, offset: 7872)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2746, line: 219, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2745, file: !2746, line: 222, baseType: !7, size: 32, offset: 7936)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2745, file: !2746, line: 223, baseType: !2873, size: 64, offset: 8000)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2746, line: 223, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2745, file: !2746, line: 230, baseType: !711, size: 8, offset: 8064)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2745, file: !2746, line: 231, baseType: !769, size: 16, offset: 8080)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2745, file: !2746, line: 232, baseType: !769, size: 16, offset: 8096)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2745, file: !2746, line: 234, baseType: !1696, size: 64, offset: 8128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2745, file: !2746, line: 237, baseType: !631, size: 256, offset: 8192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2745, file: !2746, line: 243, baseType: !1293, size: 320, offset: 8448)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1400, file: !1075, line: 1111, baseType: !2882, size: 64, offset: 15424)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2746, line: 20, size: 16640, elements: !2884)
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2883, file: !2746, line: 21, baseType: !221, size: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2883, file: !2746, line: 22, baseType: !1413, size: 32, offset: 32)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2883, file: !2746, line: 23, baseType: !1386, size: 192, offset: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2883, file: !2746, line: 24, baseType: !2889, size: 16384, offset: 256)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2890, size: 16384, elements: !295)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1965, line: 51, size: 256, elements: !2891)
!2891 = !{!2892}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2890, file: !1965, line: 52, baseType: !2893, size: 256)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1965, line: 37, size: 256, elements: !2894)
!2894 = !{!2895, !2902, !2903, !2907}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2893, file: !1965, line: 39, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2897, line: 83, baseType: !2898)
!2897 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2897, line: 82, baseType: !2900)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{null, !109}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2893, file: !1965, line: 40, baseType: !340, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2893, file: !1965, line: 46, baseType: !2904, size: 64, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2897, line: 86, baseType: !2905)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2897, line: 85, baseType: !996)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2893, file: !1965, line: 48, baseType: !2760, size: 64, offset: 192)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1400, file: !1075, line: 1112, baseType: !2760, size: 64, offset: 15488)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1400, file: !1075, line: 1113, baseType: !2760, size: 64, offset: 15552)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1400, file: !1075, line: 1115, baseType: !2760, size: 64, offset: 15616)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1400, file: !1075, line: 1116, baseType: !2756, size: 192, offset: 15680)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1400, file: !1075, line: 1117, baseType: !340, size: 64, offset: 15872)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1400, file: !1075, line: 1118, baseType: !337, size: 64, offset: 15936)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1400, file: !1075, line: 1119, baseType: !7, size: 32, offset: 16000)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1400, file: !1075, line: 1121, baseType: !850, size: 64, offset: 16064)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1400, file: !1075, line: 1125, baseType: !2917, size: 64, offset: 16128)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1075, line: 43, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1400, file: !1075, line: 1127, baseType: !376, size: 32, offset: 16192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1400, file: !1075, line: 1128, baseType: !7, size: 32, offset: 16224)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1400, file: !1075, line: 1130, baseType: !2922, size: 128, offset: 16256)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2923, line: 37, size: 128, elements: !2924)
!2923 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2924 = !{!2925, !2926, !2927}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2922, file: !2923, line: 38, baseType: !109, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2922, file: !2923, line: 39, baseType: !241, size: 32, offset: 32)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2922, file: !2923, line: 40, baseType: !2928, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2923, line: 24, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1400, file: !1075, line: 1131, baseType: !2931, size: 256, offset: 16384)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2932, line: 12, size: 256, elements: !2933)
!2932 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2933 = !{!2934, !2935, !2936, !2937}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2931, file: !2932, line: 13, baseType: !290, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2931, file: !2932, line: 14, baseType: !340, size: 64, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2931, file: !2932, line: 15, baseType: !340, size: 64, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2931, file: !2932, line: 16, baseType: !711, size: 8, offset: 192)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1400, file: !1075, line: 1134, baseType: !443, size: 64, offset: 16640)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1400, file: !1075, line: 1135, baseType: !443, size: 64, offset: 16704)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1400, file: !1075, line: 1138, baseType: !221, size: 32, offset: 16768)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1400, file: !1075, line: 1141, baseType: !589, size: 32, offset: 16800)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1400, file: !1075, line: 1143, baseType: !2943, size: 64, offset: 16832)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1075, line: 735, size: 64, elements: !2944)
!2944 = !{!2945}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2943, file: !1075, line: 736, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1400, file: !1075, line: 1147, baseType: !1579, size: 128, offset: 16896)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1400, file: !1075, line: 1149, baseType: !1399, size: 64, offset: 17024)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1400, file: !1075, line: 1151, baseType: !2950, size: 64, offset: 17088)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1075, line: 1151, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1400, file: !1075, line: 1188, baseType: !167, size: 64, offset: 17152)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1400, file: !1075, line: 1191, baseType: !2954, size: 64, offset: 17216)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1075, line: 44, flags: DIFlagFwdDecl)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1400, file: !1075, line: 1194, baseType: !2957, size: 64, offset: 17280)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1075, line: 45, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1400, file: !1075, line: 1197, baseType: !2960, size: 64, offset: 17344)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1075, line: 61, flags: DIFlagFwdDecl)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1400, file: !1075, line: 1199, baseType: !2963, size: 64, offset: 17408)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2965, line: 99, size: 128, elements: !2966)
!2965 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2966 = !{!2967, !2968, !2969}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2964, file: !2965, line: 100, baseType: !635, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2964, file: !2965, line: 101, baseType: !241, size: 32, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2964, file: !2965, line: 103, baseType: !260, size: 16, offset: 96)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1400, file: !1075, line: 1202, baseType: !2971, size: 64, offset: 17472)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1075, line: 48, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1400, file: !1075, line: 1205, baseType: !340, size: 64, offset: 17536)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1400, file: !1075, line: 1206, baseType: !2975, size: 64, offset: 17600)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1965, line: 14, baseType: !2977)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1965, line: 12, size: 384, elements: !2978)
!2978 = !{!2979}
!2979 = !DIDerivedType(tag: DW_TAG_member, scope: !2977, file: !1965, line: 13, baseType: !2980, size: 384)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2977, file: !1965, line: 13, size: 384, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2980, file: !1965, line: 13, baseType: !109, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2980, file: !1965, line: 13, baseType: !109, size: 32, offset: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2980, file: !1965, line: 13, baseType: !109, size: 32, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2980, file: !1965, line: 13, baseType: !2986, size: 256, offset: 128)
!2986 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2987, line: 37, size: 256, elements: !2988)
!2987 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2988 = !{!2989, !2994, !3007, !3013, !3022, !3049, !3054}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2986, file: !2987, line: 42, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !2987, line: 39, size: 64, elements: !2991)
!2991 = !{!2992, !2993}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2990, file: !2987, line: 40, baseType: !2656, size: 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2990, file: !2987, line: 41, baseType: !382, size: 32, offset: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2986, file: !2987, line: 50, baseType: !2995, size: 192)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !2987, line: 45, size: 192, elements: !2996)
!2996 = !{!2997, !2999, !3000, !3006}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2995, file: !2987, line: 46, baseType: !2998, size: 32)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !324, line: 95, baseType: !109)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2995, file: !2987, line: 47, baseType: !109, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2995, file: !2987, line: 48, baseType: !3001, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2987, line: 11, baseType: !3002)
!3002 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2987, line: 8, size: 64, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3002, file: !2987, line: 9, baseType: !109, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3002, file: !2987, line: 10, baseType: !167, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2995, file: !2987, line: 49, baseType: !109, size: 32, offset: 128)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2986, file: !2987, line: 57, baseType: !3008, size: 128)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !2987, line: 53, size: 128, elements: !3009)
!3009 = !{!3010, !3011, !3012}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3008, file: !2987, line: 54, baseType: !2656, size: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3008, file: !2987, line: 55, baseType: !382, size: 32, offset: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3008, file: !2987, line: 56, baseType: !3001, size: 64, offset: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2986, file: !2987, line: 66, baseType: !3014, size: 256)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !2987, line: 60, size: 256, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3021}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3014, file: !2987, line: 61, baseType: !2656, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3014, file: !2987, line: 62, baseType: !382, size: 32, offset: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3014, file: !2987, line: 63, baseType: !109, size: 32, offset: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3014, file: !2987, line: 64, baseType: !3020, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !324, line: 94, baseType: !325)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3014, file: !2987, line: 65, baseType: !3020, size: 64, offset: 192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2986, file: !2987, line: 105, baseType: !3023, size: 256)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !2987, line: 69, size: 256, elements: !3024)
!3024 = !{!3025, !3026}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3023, file: !2987, line: 70, baseType: !167, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !3023, file: !2987, line: 79, baseType: !3027, size: 192, offset: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3023, file: !2987, line: 79, size: 192, elements: !3028)
!3028 = !{!3029, !3030, !3031, !3038, !3043}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3027, file: !2987, line: 81, baseType: !109, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3027, file: !2987, line: 86, baseType: !769, size: 16)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3027, file: !2987, line: 92, baseType: !3032, size: 192)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !2987, line: 88, size: 192, elements: !3033)
!3033 = !{!3034, !3036, !3037}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3032, file: !2987, line: 89, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 64, elements: !1563)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3032, file: !2987, line: 90, baseType: !167, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3032, file: !2987, line: 91, baseType: !167, size: 64, offset: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3027, file: !2987, line: 97, baseType: !3039, size: 96)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !2987, line: 94, size: 96, elements: !3040)
!3040 = !{!3041, !3042}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3039, file: !2987, line: 95, baseType: !3035, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3039, file: !2987, line: 96, baseType: !440, size: 32, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3027, file: !2987, line: 103, baseType: !3044, size: 128)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !2987, line: 99, size: 128, elements: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3044, file: !2987, line: 100, baseType: !340, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3044, file: !2987, line: 101, baseType: !440, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3044, file: !2987, line: 102, baseType: !440, size: 32, offset: 96)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2986, file: !2987, line: 111, baseType: !3050, size: 128)
!3050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !2987, line: 108, size: 128, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3050, file: !2987, line: 109, baseType: !326, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3050, file: !2987, line: 110, baseType: !109, size: 32, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2986, file: !2987, line: 118, baseType: !3055, size: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2986, file: !2987, line: 114, size: 128, elements: !3056)
!3056 = !{!3057, !3058, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3055, file: !2987, line: 115, baseType: !167, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3055, file: !2987, line: 116, baseType: !109, size: 32, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3055, file: !2987, line: 117, baseType: !7, size: 32, offset: 96)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1400, file: !1075, line: 1208, baseType: !2840, size: 448, offset: 17664)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1400, file: !1075, line: 1215, baseType: !443, size: 64, offset: 18112)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1400, file: !1075, line: 1217, baseType: !443, size: 64, offset: 18176)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1400, file: !1075, line: 1219, baseType: !443, size: 64, offset: 18240)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1400, file: !1075, line: 1223, baseType: !3065, size: 64, offset: 18304)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3066, line: 99, baseType: !3067)
!3066 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3066, line: 99, size: 64, elements: !3068)
!3068 = !{!3069}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3067, file: !3066, line: 99, baseType: !1647, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1400, file: !1075, line: 1225, baseType: !411, size: 32, offset: 18368)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1400, file: !1075, line: 1226, baseType: !109, size: 32, offset: 18400)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1400, file: !1075, line: 1227, baseType: !109, size: 32, offset: 18432)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1400, file: !1075, line: 1231, baseType: !3074, size: 64, offset: 18496)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1075, line: 1231, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1400, file: !1075, line: 1233, baseType: !172, size: 128, offset: 18560)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1400, file: !1075, line: 1240, baseType: !3078, size: 64, offset: 18688)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1075, line: 62, flags: DIFlagFwdDecl)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1400, file: !1075, line: 1242, baseType: !3081, size: 64, offset: 18752)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1075, line: 1242, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1400, file: !1075, line: 1244, baseType: !172, size: 128, offset: 18816)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1400, file: !1075, line: 1245, baseType: !3085, size: 64, offset: 18944)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1075, line: 51, flags: DIFlagFwdDecl)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1400, file: !1075, line: 1246, baseType: !631, size: 256, offset: 19008)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1400, file: !1075, line: 1247, baseType: !7, size: 32, offset: 19264)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1400, file: !1075, line: 1250, baseType: !3090, size: 64, offset: 19328)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1075, line: 57, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1400, file: !1075, line: 1251, baseType: !631, size: 256, offset: 19392)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1400, file: !1075, line: 1252, baseType: !172, size: 128, offset: 19648)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1400, file: !1075, line: 1259, baseType: !2345, size: 64, offset: 19776)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1400, file: !1075, line: 1260, baseType: !769, size: 16, offset: 19840)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1400, file: !1075, line: 1261, baseType: !769, size: 16, offset: 19856)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1400, file: !1075, line: 1314, baseType: !3098, size: 64, offset: 19904)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3100, line: 62, size: 256, align: 256, elements: !3101)
!3100 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3101 = !{!3102, !3103, !3104, !3105, !3106, !3107, !3108}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3099, file: !3100, line: 75, baseType: !440, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3099, file: !3100, line: 90, baseType: !440, size: 32, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3099, file: !3100, line: 112, baseType: !444, size: 64, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3099, file: !3100, line: 132, baseType: !440, size: 32, offset: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3099, file: !3100, line: 140, baseType: !440, size: 32, offset: 160)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3099, file: !3100, line: 149, baseType: !440, size: 32, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3099, file: !3100, line: 154, baseType: !3109, offset: 224)
!3109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, elements: !1783)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1400, file: !1075, line: 1315, baseType: !439, size: 32, offset: 19968)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1400, file: !1075, line: 1316, baseType: !439, size: 32, offset: 20000)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1400, file: !1075, line: 1321, baseType: !340, size: 64, offset: 20032)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1400, file: !1075, line: 1325, baseType: !109, size: 32, offset: 20096)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1400, file: !1075, line: 1326, baseType: !109, size: 32, offset: 20128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1400, file: !1075, line: 1327, baseType: !109, size: 32, offset: 20160)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1400, file: !1075, line: 1328, baseType: !109, size: 32, offset: 20192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1400, file: !1075, line: 1329, baseType: !851, size: 128, align: 64, offset: 20224)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1400, file: !1075, line: 1332, baseType: !3119, size: 128, offset: 20352)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3120, line: 51, size: 128, elements: !3121)
!3120 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3121 = !{!3122, !3127, !3128}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3119, file: !3120, line: 60, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3124, line: 7, size: 64, elements: !3125)
!3124 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3125 = !{!3126}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3123, file: !3124, line: 12, baseType: !1644, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3119, file: !3120, line: 63, baseType: !711, size: 8, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3119, file: !3120, line: 70, baseType: !711, size: 8, offset: 72)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1400, file: !1075, line: 1335, baseType: !2397, size: 64, offset: 20480)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1400, file: !1075, line: 1337, baseType: !3131, size: 128, offset: 20544)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3120, line: 39, size: 128, elements: !3132)
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3131, file: !3120, line: 40, baseType: !2184, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3131, file: !3120, line: 42, baseType: !440, size: 32, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3131, file: !3120, line: 43, baseType: !440, size: 32, offset: 96)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1400, file: !1075, line: 1340, baseType: !3137, size: 64, offset: 20672)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1075, line: 69, flags: DIFlagFwdDecl)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1400, file: !1075, line: 1351, baseType: !109, size: 32, offset: 20736)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1400, file: !1075, line: 1352, baseType: !109, size: 32, offset: 20768)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1400, file: !1075, line: 1354, baseType: !340, size: 64, offset: 20800)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1400, file: !1075, line: 1364, baseType: !443, size: 64, offset: 20864)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1400, file: !1075, line: 1365, baseType: !443, size: 64, offset: 20928)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1400, file: !1075, line: 1412, baseType: !340, size: 64, offset: 20992)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1400, file: !1075, line: 1453, baseType: !3146, size: 64, offset: 21056)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1075, line: 1453, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1400, file: !1075, line: 1457, baseType: !3149, size: 64, offset: 21120)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3151)
!3151 = !{!3152, !3153, !3172, !3175, !3176, !3209, !3219}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3150, file: !68, line: 62, baseType: !67, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !68, line: 64, baseType: !3154, size: 192, offset: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3150, file: !68, line: 64, size: 192, elements: !3155)
!3155 = !{!3156, !3167}
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !3154, file: !68, line: 65, baseType: !3157, size: 192)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3154, file: !68, line: 65, size: 192, elements: !3158)
!3158 = !{!3159, !3166}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3157, file: !68, line: 66, baseType: !3160, size: 128)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3161, line: 50, size: 128, elements: !3162)
!3161 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3162 = !{!3163, !3164, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3160, file: !3161, line: 52, baseType: !340, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3160, file: !3161, line: 54, baseType: !7, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3160, file: !3161, line: 55, baseType: !7, size: 32, offset: 96)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3157, file: !68, line: 67, baseType: !340, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_member, scope: !3154, file: !68, line: 70, baseType: !3168, size: 192)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3154, file: !68, line: 70, size: 192, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3168, file: !68, line: 71, baseType: !851, size: 128, align: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3168, file: !68, line: 72, baseType: !340, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3150, file: !68, line: 76, baseType: !3173, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3150, file: !68, line: 77, baseType: !340, size: 64, offset: 320)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3150, file: !68, line: 79, baseType: !3177, size: 64, offset: 384)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3161, line: 25, size: 256, elements: !3179)
!3179 = !{!3180, !3186, !3190}
!3180 = !DIDerivedType(tag: DW_TAG_member, scope: !3178, file: !3161, line: 26, baseType: !3181, size: 128)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3178, file: !3161, line: 26, size: 128, elements: !3182)
!3182 = !{!3183, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3181, file: !3161, line: 27, baseType: !3184, size: 128)
!3184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 128, elements: !2714)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3181, file: !3161, line: 28, baseType: !3184, size: 128)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3178, file: !3161, line: 31, baseType: !3187, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3189)
!3189 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3161, line: 23, flags: DIFlagFwdDecl)
!3190 = !DIDerivedType(tag: DW_TAG_member, scope: !3178, file: !3161, line: 33, baseType: !3191, size: 64, offset: 192)
!3191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3178, file: !3161, line: 33, size: 64, elements: !3192)
!3192 = !{!3193, !3199, !3204}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3191, file: !3161, line: 38, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3191, file: !3161, line: 34, size: 64, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3194, file: !3161, line: 35, baseType: !627, size: 32)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3194, file: !3161, line: 36, baseType: !249, size: 8, offset: 32)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3194, file: !3161, line: 37, baseType: !249, size: 8, offset: 40)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3191, file: !3161, line: 42, baseType: !3200, size: 16)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3191, file: !3161, line: 39, size: 16, elements: !3201)
!3201 = !{!3202, !3203}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3200, file: !3161, line: 40, baseType: !249, size: 8)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3200, file: !3161, line: 41, baseType: !249, size: 8, offset: 8)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3191, file: !3161, line: 46, baseType: !3205, size: 16)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3191, file: !3161, line: 43, size: 16, elements: !3206)
!3206 = !{!3207, !3208}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3205, file: !3161, line: 44, baseType: !249, size: 8)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3205, file: !3161, line: 45, baseType: !249, size: 8, offset: 8)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3150, file: !68, line: 81, baseType: !3210, size: 64, offset: 448)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3212)
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3211, file: !68, line: 86, baseType: !3173, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3211, file: !68, line: 87, baseType: !340, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3211, file: !68, line: 88, baseType: !340, size: 64, offset: 128)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3211, file: !68, line: 89, baseType: !340, size: 64, offset: 192)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3211, file: !68, line: 90, baseType: !711, size: 8, offset: 256)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3211, file: !68, line: 92, baseType: !3210, size: 64, offset: 320)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3150, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1400, file: !1075, line: 1463, baseType: !3221, offset: 21184)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1075, line: 739, elements: !920)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1400, file: !1075, line: 1470, baseType: !851, size: 128, align: 64, offset: 21184)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1400, file: !1075, line: 1471, baseType: !1413, size: 32, offset: 21312)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1400, file: !1075, line: 1472, baseType: !109, size: 32, offset: 21344)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1400, file: !1075, line: 1474, baseType: !1399, size: 64, offset: 21376)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1400, file: !1075, line: 1475, baseType: !873, size: 320, offset: 21440)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1400, file: !1075, line: 1478, baseType: !3228, size: 64, offset: 21760)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2037, line: 49, size: 512, elements: !3230)
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3237, !3238, !3239, !3241}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3229, file: !2037, line: 50, baseType: !3228, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3229, file: !2037, line: 51, baseType: !167, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3229, file: !2037, line: 52, baseType: !340, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3229, file: !2037, line: 53, baseType: !340, size: 64, offset: 192)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3229, file: !2037, line: 54, baseType: !3236, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3229, file: !2037, line: 56, baseType: !7, size: 32, offset: 320)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3229, file: !2037, line: 58, baseType: !7, size: 32, offset: 352)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3229, file: !2037, line: 59, baseType: !3240, size: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !173, line: 159, baseType: !443)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3229, file: !2037, line: 60, baseType: !2536, size: 64, offset: 448)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1400, file: !1075, line: 1482, baseType: !1413, size: 32, offset: 21824)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1400, file: !1075, line: 1489, baseType: !167, size: 64, offset: 21888)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1400, file: !1075, line: 1504, baseType: !167, size: 64, offset: 21952)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1400, file: !1075, line: 1505, baseType: !444, size: 64, offset: 22016)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1400, file: !1075, line: 1506, baseType: !443, size: 64, offset: 22080)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1400, file: !1075, line: 1507, baseType: !444, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1400, file: !1075, line: 1508, baseType: !444, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1400, file: !1075, line: 1509, baseType: !444, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1400, file: !1075, line: 1510, baseType: !851, size: 128, align: 64, offset: 22208)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1400, file: !1075, line: 1511, baseType: !109, size: 32, offset: 22336)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1400, file: !1075, line: 1515, baseType: !3253, size: 64, offset: 22400)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1427, line: 56, size: 64, elements: !3254)
!3254 = !{!3255}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3253, file: !1427, line: 57, baseType: !1430, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1400, file: !1075, line: 1518, baseType: !3253, size: 64, offset: 22464)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1400, file: !1075, line: 1528, baseType: !851, size: 128, align: 64, offset: 22528)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1400, file: !1075, line: 1552, baseType: !3259, size: 35328, offset: 23040)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3260, line: 430, size: 35328, elements: !3261)
!3260 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3261 = !{!3262, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3291, !3292, !3293, !3294, !3295, !3296, !3299, !3300, !3301, !3302}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3259, file: !3260, line: 432, baseType: !3263, size: 192)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3264, size: 192, elements: !291)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3265, line: 16, size: 64, elements: !3266)
!3265 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3264, file: !3265, line: 17, baseType: !258, size: 16)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3264, file: !3265, line: 18, baseType: !258, size: 16, offset: 16)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3264, file: !3265, line: 19, baseType: !258, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3264, file: !3265, line: 19, baseType: !258, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3264, file: !3265, line: 19, baseType: !258, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3264, file: !3265, line: 19, baseType: !258, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3264, file: !3265, line: 19, baseType: !258, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3264, file: !3265, line: 20, baseType: !258, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3264, file: !3265, line: 20, baseType: !258, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3264, file: !3265, line: 20, baseType: !258, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3264, file: !3265, line: 20, baseType: !258, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3264, file: !3265, line: 20, baseType: !258, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3264, file: !3265, line: 20, baseType: !258, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3259, file: !3260, line: 436, baseType: !340, size: 64, offset: 192)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3259, file: !3260, line: 440, baseType: !260, size: 16, offset: 256)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3259, file: !3260, line: 441, baseType: !260, size: 16, offset: 272)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3259, file: !3260, line: 442, baseType: !260, size: 16, offset: 288)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3259, file: !3260, line: 443, baseType: !260, size: 16, offset: 304)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3259, file: !3260, line: 447, baseType: !340, size: 64, offset: 320)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3259, file: !3260, line: 448, baseType: !340, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3259, file: !3260, line: 459, baseType: !3288, size: 256, offset: 448)
!3288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3289, size: 256, elements: !861)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3260, line: 428, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3259, file: !3260, line: 461, baseType: !340, size: 64, offset: 704)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3259, file: !3260, line: 463, baseType: !340, size: 64, offset: 768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3259, file: !3260, line: 465, baseType: !340, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3259, file: !3260, line: 466, baseType: !340, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3259, file: !3260, line: 467, baseType: !340, size: 64, offset: 960)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3259, file: !3260, line: 473, baseType: !3297, size: 64, offset: 1024)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3260, line: 10, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3259, file: !3260, line: 480, baseType: !340, size: 64, offset: 1088)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3259, file: !3260, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3259, file: !3260, line: 491, baseType: !439, size: 32, offset: 1184)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3259, file: !3260, line: 501, baseType: !3303, size: 33792, offset: 1536)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3304, line: 448, size: 33792, elements: !3305)
!3304 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3305 = !{!3306, !3307, !3308, !3470, !3471, !3477, !3478}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3303, file: !3304, line: 461, baseType: !7, size: 32)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3303, file: !3304, line: 468, baseType: !340, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3303, file: !3304, line: 476, baseType: !3309, size: 64, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3304, line: 356, size: 33280, align: 512, elements: !3311)
!3311 = !{!3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3310, file: !3304, line: 358, baseType: !7, size: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3310, file: !3304, line: 361, baseType: !7, size: 32, offset: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3310, file: !3304, line: 364, baseType: !443, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3310, file: !3304, line: 367, baseType: !443, size: 64, offset: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3310, file: !3304, line: 370, baseType: !443, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3310, file: !3304, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3310, file: !3304, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3310, file: !3304, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3310, file: !3304, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3310, file: !3304, line: 397, baseType: !3322, size: 32768, offset: 512)
!3322 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3304, line: 348, size: 32768, elements: !3323)
!3323 = !{!3324, !3339, !3376, !3453, !3466}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3322, file: !3304, line: 349, baseType: !3325, size: 896)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3304, line: 12, size: 896, elements: !3326)
!3326 = !{!3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3338}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3325, file: !3304, line: 13, baseType: !439, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3325, file: !3304, line: 14, baseType: !439, size: 32, offset: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3325, file: !3304, line: 15, baseType: !439, size: 32, offset: 64)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3325, file: !3304, line: 16, baseType: !439, size: 32, offset: 96)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3325, file: !3304, line: 17, baseType: !439, size: 32, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3325, file: !3304, line: 18, baseType: !439, size: 32, offset: 160)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3325, file: !3304, line: 19, baseType: !439, size: 32, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3325, file: !3304, line: 22, baseType: !3335, size: 640, offset: 224)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 640, elements: !3336)
!3336 = !{!3337}
!3337 = !DISubrange(count: 20)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3325, file: !3304, line: 25, baseType: !439, size: 32, offset: 864)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3322, file: !3304, line: 350, baseType: !3340, size: 4096, align: 128)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3304, line: 34, size: 4096, align: 128, elements: !3341)
!3341 = !{!3342, !3343, !3344, !3345, !3346, !3361, !3362, !3363, !3365, !3367, !3371}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3340, file: !3304, line: 35, baseType: !258, size: 16)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3340, file: !3304, line: 36, baseType: !258, size: 16, offset: 16)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3340, file: !3304, line: 37, baseType: !258, size: 16, offset: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3340, file: !3304, line: 38, baseType: !258, size: 16, offset: 48)
!3346 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3304, line: 39, baseType: !3347, size: 128, offset: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !3304, line: 39, size: 128, elements: !3348)
!3348 = !{!3349, !3354}
!3349 = !DIDerivedType(tag: DW_TAG_member, scope: !3347, file: !3304, line: 40, baseType: !3350, size: 128)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3347, file: !3304, line: 40, size: 128, elements: !3351)
!3351 = !{!3352, !3353}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3350, file: !3304, line: 41, baseType: !443, size: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3350, file: !3304, line: 42, baseType: !443, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, scope: !3347, file: !3304, line: 44, baseType: !3355, size: 128)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3347, file: !3304, line: 44, size: 128, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3355, file: !3304, line: 45, baseType: !439, size: 32)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3355, file: !3304, line: 46, baseType: !439, size: 32, offset: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3355, file: !3304, line: 47, baseType: !439, size: 32, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3355, file: !3304, line: 48, baseType: !439, size: 32, offset: 96)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3340, file: !3304, line: 51, baseType: !439, size: 32, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3340, file: !3304, line: 52, baseType: !439, size: 32, offset: 224)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3340, file: !3304, line: 55, baseType: !3364, size: 1024, offset: 256)
!3364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 1024, elements: !452)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3340, file: !3304, line: 58, baseType: !3366, size: 2048, offset: 1280)
!3366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 2048, elements: !295)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3340, file: !3304, line: 60, baseType: !3368, size: 384, offset: 3328)
!3368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 384, elements: !3369)
!3369 = !{!3370}
!3370 = !DISubrange(count: 12)
!3371 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3304, line: 62, baseType: !3372, size: 384, offset: 3712)
!3372 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !3304, line: 62, size: 384, elements: !3373)
!3373 = !{!3374, !3375}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3372, file: !3304, line: 63, baseType: !3368, size: 384)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3372, file: !3304, line: 64, baseType: !3368, size: 384)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3322, file: !3304, line: 351, baseType: !3377, size: 1088)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3304, line: 79, size: 1088, elements: !3378)
!3378 = !{!3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3452}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3377, file: !3304, line: 80, baseType: !439, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3377, file: !3304, line: 81, baseType: !439, size: 32, offset: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3377, file: !3304, line: 82, baseType: !439, size: 32, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3377, file: !3304, line: 83, baseType: !439, size: 32, offset: 96)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3377, file: !3304, line: 84, baseType: !439, size: 32, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3377, file: !3304, line: 85, baseType: !439, size: 32, offset: 160)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3377, file: !3304, line: 86, baseType: !439, size: 32, offset: 192)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3377, file: !3304, line: 88, baseType: !3335, size: 640, offset: 224)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3377, file: !3304, line: 89, baseType: !249, size: 8, offset: 864)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3377, file: !3304, line: 90, baseType: !249, size: 8, offset: 872)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3377, file: !3304, line: 91, baseType: !249, size: 8, offset: 880)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3377, file: !3304, line: 92, baseType: !249, size: 8, offset: 888)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3377, file: !3304, line: 93, baseType: !249, size: 8, offset: 896)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3377, file: !3304, line: 94, baseType: !249, size: 8, offset: 904)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3377, file: !3304, line: 95, baseType: !3394, size: 64, offset: 960)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3396, line: 11, size: 128, elements: !3397)
!3396 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3397 = !{!3398, !3399}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3395, file: !3396, line: 12, baseType: !326, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3395, file: !3396, line: 13, baseType: !3400, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3402, line: 103, size: 1344, elements: !3403)
!3402 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3432, !3433, !3434}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3401, file: !3402, line: 109, baseType: !340, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3401, file: !3402, line: 110, baseType: !340, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3401, file: !3402, line: 111, baseType: !340, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3401, file: !3402, line: 112, baseType: !340, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3401, file: !3402, line: 113, baseType: !340, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3401, file: !3402, line: 114, baseType: !340, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3401, file: !3402, line: 117, baseType: !340, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3401, file: !3402, line: 118, baseType: !340, size: 64, offset: 448)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3401, file: !3402, line: 119, baseType: !340, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3401, file: !3402, line: 120, baseType: !340, size: 64, offset: 576)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3401, file: !3402, line: 121, baseType: !340, size: 64, offset: 640)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3401, file: !3402, line: 122, baseType: !340, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3401, file: !3402, line: 123, baseType: !340, size: 64, offset: 768)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3401, file: !3402, line: 124, baseType: !340, size: 64, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3401, file: !3402, line: 125, baseType: !340, size: 64, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3401, file: !3402, line: 139, baseType: !340, size: 64, offset: 960)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3401, file: !3402, line: 142, baseType: !340, size: 64, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !3402, line: 144, baseType: !3422, size: 64, offset: 1088)
!3422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3401, file: !3402, line: 144, size: 64, elements: !3423)
!3423 = !{!3424, !3425, !3426}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3422, file: !3402, line: 146, baseType: !258, size: 16)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3422, file: !3402, line: 148, baseType: !443, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3422, file: !3402, line: 150, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3402, line: 59, size: 64, elements: !3428)
!3428 = !{!3429, !3430, !3431}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3427, file: !3402, line: 61, baseType: !443, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3427, file: !3402, line: 63, baseType: !443, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3427, file: !3402, line: 65, baseType: !443, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3401, file: !3402, line: 153, baseType: !340, size: 64, offset: 1152)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3401, file: !3402, line: 154, baseType: !340, size: 64, offset: 1216)
!3434 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !3402, line: 156, baseType: !3435, size: 64, offset: 1280)
!3435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3401, file: !3402, line: 156, size: 64, elements: !3436)
!3436 = !{!3437, !3438, !3439}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3435, file: !3402, line: 158, baseType: !258, size: 16)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3435, file: !3402, line: 160, baseType: !443, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3435, file: !3402, line: 162, baseType: !3440, size: 64)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3402, line: 69, size: 64, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3440, file: !3402, line: 71, baseType: !443, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3440, file: !3402, line: 73, baseType: !443, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3440, file: !3402, line: 75, baseType: !443, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3440, file: !3402, line: 77, baseType: !443, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3440, file: !3402, line: 80, baseType: !443, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3440, file: !3402, line: 83, baseType: !443, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3440, file: !3402, line: 86, baseType: !443, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3440, file: !3402, line: 88, baseType: !443, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3440, file: !3402, line: 93, baseType: !443, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3440, file: !3402, line: 100, baseType: !443, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3377, file: !3304, line: 96, baseType: !439, size: 32, offset: 1024)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3322, file: !3304, line: 352, baseType: !3454, size: 4608, align: 512)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3304, line: 333, size: 4608, align: 512, elements: !3455)
!3455 = !{!3456, !3457, !3464}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3454, file: !3304, line: 334, baseType: !3340, size: 4096, align: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3454, file: !3304, line: 335, baseType: !3458, size: 512, offset: 4096)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3304, line: 312, size: 512, elements: !3459)
!3459 = !{!3460, !3461, !3462}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3458, file: !3304, line: 313, baseType: !443, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3458, file: !3304, line: 314, baseType: !443, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3458, file: !3304, line: 315, baseType: !3463, size: 384, offset: 128)
!3463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 384, elements: !1866)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3454, file: !3304, line: 336, baseType: !3465, offset: 4608)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, elements: !1783)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3322, file: !3304, line: 353, baseType: !3467, size: 32768)
!3467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32768, elements: !3468)
!3468 = !{!3469}
!3469 = !DISubrange(count: 4096)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3303, file: !3304, line: 484, baseType: !3309, size: 64, offset: 192)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3303, file: !3304, line: 491, baseType: !3472, size: 128, offset: 256)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3304, line: 404, size: 128, elements: !3473)
!3473 = !{!3474, !3475, !3476}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3472, file: !3304, line: 424, baseType: !443, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3472, file: !3304, line: 432, baseType: !7, size: 32, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3472, file: !3304, line: 440, baseType: !7, size: 32, offset: 96)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3303, file: !3304, line: 498, baseType: !3472, size: 128, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3303, file: !3304, line: 508, baseType: !3310, size: 33280, align: 512, offset: 512)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1376, file: !1377, line: 16, baseType: !1386, size: 192, offset: 512)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1376, file: !1377, line: 17, baseType: !241, size: 32, offset: 704)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !522, file: !14, line: 1240, baseType: !167, size: 64, offset: 6912)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !522, file: !14, line: 1243, baseType: !439, size: 32, offset: 6976)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !522, file: !14, line: 1245, baseType: !1133, size: 64, offset: 7040)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !522, file: !14, line: 1246, baseType: !1133, size: 64, offset: 7104)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !522, file: !14, line: 1248, baseType: !440, size: 32, offset: 7168)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !522, file: !14, line: 1249, baseType: !3487, size: 64, offset: 7232)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !522, file: !14, line: 1252, baseType: !3490, size: 256, offset: 7296)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 256, elements: !452)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !522, file: !14, line: 1253, baseType: !3492, size: 128, offset: 7552)
!3492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3493, line: 21, baseType: !3494)
!3493 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3493, line: 19, size: 128, elements: !3495)
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3494, file: !3493, line: 20, baseType: !3497, size: 128)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 128, elements: !2714)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !522, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !522, file: !14, line: 1261, baseType: !631, size: 256, offset: 7744)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !522, file: !14, line: 1267, baseType: !209, size: 64, offset: 8000)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !522, file: !14, line: 1269, baseType: !468, size: 64, offset: 8064)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !522, file: !14, line: 1271, baseType: !3503, size: 448, offset: 8128)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1142, line: 63, size: 448, elements: !3504)
!3504 = !{!3505, !3510, !3511, !3512, !3513, !3514, !3515}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3503, file: !1142, line: 64, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!340, !3509, !1140}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3503, file: !1142, line: 66, baseType: !3506, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3503, file: !1142, line: 69, baseType: !326, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3503, file: !1142, line: 70, baseType: !109, size: 32, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3503, file: !1142, line: 71, baseType: !7, size: 32, offset: 224)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3503, file: !1142, line: 74, baseType: !172, size: 128, offset: 256)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3503, file: !1142, line: 85, baseType: !3516, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !522, file: !14, line: 1274, baseType: !635, size: 64, offset: 8576)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !522, file: !14, line: 1280, baseType: !635, size: 64, offset: 8640)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !522, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !522, file: !14, line: 1286, baseType: !2447, size: 32, offset: 8736)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !522, file: !14, line: 1289, baseType: !953, size: 64, offset: 8768)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !522, file: !14, line: 1290, baseType: !1001, size: 64, offset: 8832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !522, file: !14, line: 1297, baseType: !1960, size: 64, offset: 8896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !522, file: !14, line: 1304, baseType: !3525, size: 64, offset: 8960)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3526, line: 49, size: 64, elements: !3527)
!3526 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3527 = !{!3528}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3525, file: !3526, line: 50, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3526, line: 41, size: 512, align: 512, elements: !3531)
!3531 = !{!3532, !3533, !3538}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3530, file: !3526, line: 43, baseType: !221, size: 32)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3530, file: !3526, line: 45, baseType: !3534, size: 192, offset: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3526, line: 29, size: 192, elements: !3535)
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3534, file: !3526, line: 30, baseType: !172, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3534, file: !3526, line: 32, baseType: !326, size: 64, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3530, file: !3526, line: 46, baseType: !326, size: 64, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !522, file: !14, line: 1305, baseType: !3525, size: 64, offset: 9024)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !522, file: !14, line: 1306, baseType: !851, size: 128, align: 64, offset: 9088)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !522, file: !14, line: 1307, baseType: !891, size: 256, offset: 9216)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !522, file: !14, line: 1309, baseType: !631, size: 256, offset: 9472)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !522, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !522, file: !14, line: 1317, baseType: !221, size: 32, align: 512, offset: 10240)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !522, file: !14, line: 1318, baseType: !172, size: 128, offset: 10304)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !522, file: !14, line: 1320, baseType: !221, size: 32, offset: 10432)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !522, file: !14, line: 1321, baseType: !172, size: 128, offset: 10496)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !516, file: !517, line: 73, baseType: !109, size: 32, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !516, file: !517, line: 74, baseType: !3550, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1807, line: 42, flags: DIFlagFwdDecl)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !470, file: !407, line: 141, baseType: !3554, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!109, !1203, !711}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !470, file: !407, line: 142, baseType: !3558, size: 64, offset: 768)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!405, !405, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !406, file: !407, line: 96, baseType: !521, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !406, file: !407, line: 97, baseType: !340, size: 64, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !406, file: !407, line: 98, baseType: !167, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !407, line: 100, baseType: !3567, size: 128, offset: 1024)
!3567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 100, size: 128, elements: !3568)
!3568 = !{!3569, !3570}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3567, file: !407, line: 101, baseType: !172, size: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3567, file: !407, line: 102, baseType: !3571, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !406, file: !407, line: 104, baseType: !172, size: 128, offset: 1152)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !406, file: !407, line: 105, baseType: !172, size: 128, offset: 1280)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !406, file: !407, line: 113, baseType: !3575, size: 128, offset: 1408)
!3575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !406, file: !407, line: 109, size: 128, elements: !3576)
!3576 = !{!3577, !3578, !3579}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3575, file: !407, line: 110, baseType: !877, size: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3575, file: !407, line: 111, baseType: !421, size: 128)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3575, file: !407, line: 112, baseType: !851, size: 128, align: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !399, file: !14, line: 1968, baseType: !3581, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!209, !405, !370, !3584}
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3586, line: 10, size: 128, elements: !3587)
!3586 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3587 = !{!3588, !3589}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3585, file: !3586, line: 11, baseType: !674, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3585, file: !3586, line: 12, baseType: !167, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !399, file: !14, line: 1969, baseType: !3591, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!109, !3550, !370, !109}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !399, file: !14, line: 1970, baseType: !3595, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!393, !370, !109, !711}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !399, file: !14, line: 1972, baseType: !3599, size: 64, offset: 256)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!109, !405, !290, !109}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !399, file: !14, line: 1974, baseType: !3603, size: 64, offset: 320)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!109, !3550, !370, !405, !332, !711}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !399, file: !14, line: 1976, baseType: !3607, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!109, !405, !370, !405}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !399, file: !14, line: 1977, baseType: !3611, size: 64, offset: 448)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!109, !370, !405}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !399, file: !14, line: 1978, baseType: !3615, size: 64, offset: 512)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!109, !3550, !370, !405, !209}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !399, file: !14, line: 1980, baseType: !3619, size: 64, offset: 576)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!109, !3550, !370, !405, !332}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !399, file: !14, line: 1982, baseType: !3611, size: 64, offset: 640)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !399, file: !14, line: 1983, baseType: !3624, size: 64, offset: 704)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!109, !3550, !370, !405, !332, !526}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !399, file: !14, line: 1985, baseType: !3628, size: 64, offset: 768)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!109, !3550, !370, !405, !370, !405, !7}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !399, file: !14, line: 1987, baseType: !3632, size: 64, offset: 832)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!109, !3550, !405, !3635}
!3635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3636, size: 64)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3637)
!3637 = !{!3638, !3639, !3640, !3650, !3659, !3660, !3665, !3666, !3667}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3636, file: !14, line: 227, baseType: !7, size: 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3636, file: !14, line: 228, baseType: !332, size: 16, offset: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !14, line: 241, baseType: !3641, size: 32, offset: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3636, file: !14, line: 241, size: 32, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3641, file: !14, line: 242, baseType: !376, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3641, file: !14, line: 243, baseType: !3645, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3646, line: 16, baseType: !3647)
!3646 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3646, line: 14, size: 32, elements: !3648)
!3648 = !{!3649}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3647, file: !3646, line: 15, baseType: !381, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !14, line: 245, baseType: !3651, size: 32, offset: 96)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3636, file: !14, line: 245, size: 32, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3651, file: !14, line: 246, baseType: !385, size: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3651, file: !14, line: 247, baseType: !3655, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3646, line: 20, baseType: !3656)
!3656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3646, line: 18, size: 32, elements: !3657)
!3657 = !{!3658}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3656, file: !3646, line: 19, baseType: !389, size: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3636, file: !14, line: 249, baseType: !531, size: 64, offset: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3636, file: !14, line: 250, baseType: !3661, size: 128, offset: 192)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1134, line: 13, size: 128, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3661, file: !1134, line: 14, baseType: !1133, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3661, file: !1134, line: 15, baseType: !326, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3636, file: !14, line: 251, baseType: !3661, size: 128, offset: 320)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3636, file: !14, line: 252, baseType: !3661, size: 128, offset: 448)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3636, file: !14, line: 259, baseType: !1723, size: 64, offset: 576)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !399, file: !14, line: 1988, baseType: !3669, size: 64, offset: 896)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!109, !3550, !1203, !3672, !439, !7}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3674, line: 22, size: 1280, elements: !3675)
!3674 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3675 = !{!3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3673, file: !3674, line: 23, baseType: !439, size: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3673, file: !3674, line: 24, baseType: !332, size: 16, offset: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3673, file: !3674, line: 25, baseType: !7, size: 32, offset: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3673, file: !3674, line: 26, baseType: !1845, size: 32, offset: 96)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3673, file: !3674, line: 27, baseType: !443, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3673, file: !3674, line: 28, baseType: !443, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3673, file: !3674, line: 41, baseType: !443, size: 64, offset: 256)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3673, file: !3674, line: 42, baseType: !526, size: 32, offset: 320)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3673, file: !3674, line: 43, baseType: !526, size: 32, offset: 352)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3673, file: !3674, line: 44, baseType: !376, size: 32, offset: 384)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3673, file: !3674, line: 45, baseType: !385, size: 32, offset: 416)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3673, file: !3674, line: 46, baseType: !531, size: 64, offset: 448)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3673, file: !3674, line: 47, baseType: !3661, size: 128, offset: 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3673, file: !3674, line: 48, baseType: !3661, size: 128, offset: 640)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3673, file: !3674, line: 49, baseType: !3661, size: 128, offset: 768)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3673, file: !3674, line: 50, baseType: !3661, size: 128, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3673, file: !3674, line: 51, baseType: !443, size: 64, offset: 1024)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3673, file: !3674, line: 52, baseType: !443, size: 64, offset: 1088)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3673, file: !3674, line: 53, baseType: !439, size: 32, offset: 1152)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3673, file: !3674, line: 54, baseType: !439, size: 32, offset: 1184)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3673, file: !3674, line: 55, baseType: !443, size: 64, offset: 1216)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !399, file: !14, line: 1990, baseType: !3698, size: 64, offset: 960)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!322, !405, !290, !337}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !399, file: !14, line: 1991, baseType: !3702, size: 64, offset: 1024)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!109, !370, !3705, !443, !443}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !399, file: !14, line: 1993, baseType: !3708, size: 64, offset: 1088)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!109, !370, !109}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !399, file: !14, line: 1994, baseType: !3712, size: 64, offset: 1152)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!109, !370, !405, !1723, !7, !332}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !399, file: !14, line: 1997, baseType: !3716, size: 64, offset: 1216)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!109, !3550, !370, !1723, !332}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !399, file: !14, line: 1999, baseType: !3720, size: 64, offset: 1280)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!393, !3550, !405, !109}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !399, file: !14, line: 2001, baseType: !3724, size: 64, offset: 1344)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!109, !3550, !405, !393, !109}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !399, file: !14, line: 2003, baseType: !3728, size: 64, offset: 1408)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!109, !3550, !405, !3731}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !399, file: !14, line: 2005, baseType: !3734, size: 64, offset: 1472)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!109, !405, !3731}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !399, file: !14, line: 2006, baseType: !3738, size: 64, offset: 1536)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!3741, !370}
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3743)
!3743 = !{!3744, !3751}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3742, file: !14, line: 3193, baseType: !3745, size: 128)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3746, line: 296, size: 128, elements: !3747)
!3746 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3747 = !{!3748, !3749, !3750}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3745, file: !3746, line: 297, baseType: !221, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3745, file: !3746, line: 299, baseType: !1145, size: 32, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3745, file: !3746, line: 300, baseType: !167, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3742, file: !14, line: 3194, baseType: !439, size: 32, offset: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !371, file: !14, line: 655, baseType: !521, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !371, file: !14, line: 656, baseType: !366, size: 64, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !371, file: !14, line: 659, baseType: !167, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !371, file: !14, line: 663, baseType: !340, size: 64, offset: 640)
!3756 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !14, line: 671, baseType: !3757, size: 32, offset: 704)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !14, line: 671, size: 32, elements: !3758)
!3758 = !{!3759, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3757, file: !14, line: 672, baseType: !3760, size: 32)
!3760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3757, file: !14, line: 673, baseType: !7, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !371, file: !14, line: 675, baseType: !526, size: 32, offset: 736)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !371, file: !14, line: 676, baseType: !531, size: 64, offset: 768)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !371, file: !14, line: 677, baseType: !3661, size: 128, offset: 832)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !371, file: !14, line: 678, baseType: !3661, size: 128, offset: 960)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !371, file: !14, line: 679, baseType: !3661, size: 128, offset: 1088)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !371, file: !14, line: 680, baseType: !221, size: 32, offset: 1216)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !371, file: !14, line: 681, baseType: !260, size: 16, offset: 1248)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !371, file: !14, line: 682, baseType: !249, size: 8, offset: 1264)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !371, file: !14, line: 683, baseType: !249, size: 8, offset: 1272)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !371, file: !14, line: 684, baseType: !1281, size: 64, offset: 1280)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !371, file: !14, line: 691, baseType: !340, size: 64, offset: 1344)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !371, file: !14, line: 692, baseType: !1293, size: 320, offset: 1408)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !371, file: !14, line: 694, baseType: !340, size: 64, offset: 1728)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !371, file: !14, line: 695, baseType: !340, size: 64, offset: 1792)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !371, file: !14, line: 697, baseType: !877, size: 128, offset: 1856)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !371, file: !14, line: 698, baseType: !172, size: 128, offset: 1984)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !371, file: !14, line: 707, baseType: !172, size: 128, offset: 2112)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !371, file: !14, line: 708, baseType: !172, size: 128, offset: 2240)
!3780 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !14, line: 709, baseType: !3781, size: 128, offset: 2368)
!3781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !14, line: 709, size: 128, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3781, file: !14, line: 710, baseType: !1001, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3781, file: !14, line: 711, baseType: !851, size: 128, align: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !371, file: !14, line: 713, baseType: !637, size: 64, offset: 2496)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !371, file: !14, line: 714, baseType: !637, size: 64, offset: 2560)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !371, file: !14, line: 715, baseType: !241, size: 32, offset: 2624)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !371, file: !14, line: 716, baseType: !241, size: 32, offset: 2656)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !371, file: !14, line: 717, baseType: !241, size: 32, offset: 2688)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !371, file: !14, line: 719, baseType: !241, size: 32, offset: 2720)
!3791 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !14, line: 721, baseType: !3792, size: 64, offset: 2752)
!3792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !14, line: 721, size: 64, elements: !3793)
!3793 = !{!3794, !3795}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3792, file: !14, line: 722, baseType: !1991, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3792, file: !14, line: 723, baseType: !1024, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !371, file: !14, line: 725, baseType: !3797, size: 64, offset: 2816)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !371, file: !14, line: 726, baseType: !367, size: 1536, align: 64, offset: 2880)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !371, file: !14, line: 727, baseType: !172, size: 128, offset: 4416)
!3801 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !14, line: 728, baseType: !3802, size: 64, offset: 4544)
!3802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !14, line: 728, size: 64, elements: !3803)
!3803 = !{!3804, !3805, !3808, !3809}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3802, file: !14, line: 729, baseType: !2397, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3802, file: !14, line: 730, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3802, file: !14, line: 731, baseType: !290, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3802, file: !14, line: 732, baseType: !7, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !371, file: !14, line: 735, baseType: !440, size: 32, offset: 4608)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !371, file: !14, line: 738, baseType: !440, size: 32, offset: 4640)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !371, file: !14, line: 739, baseType: !3487, size: 64, offset: 4672)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !371, file: !14, line: 750, baseType: !167, size: 64, offset: 4736)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !367, file: !14, line: 474, baseType: !3745, size: 128, offset: 64)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !367, file: !14, line: 475, baseType: !1293, size: 320, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !367, file: !14, line: 476, baseType: !1145, size: 32, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !367, file: !14, line: 477, baseType: !241, size: 32, offset: 544)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !367, file: !14, line: 482, baseType: !1579, size: 128, offset: 576)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !367, file: !14, line: 483, baseType: !340, size: 64, offset: 704)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !367, file: !14, line: 484, baseType: !340, size: 64, offset: 768)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !367, file: !14, line: 485, baseType: !3822, size: 64, offset: 832)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3824)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3825)
!3825 = !{!3826, !3830, !3900, !3904, !3908, !3914, !3918, !3922, !3927, !3931, !3935, !3939, !3940, !3944, !3948, !3952, !3957, !3961, !3968, !3969}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3824, file: !14, line: 405, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!109, !2184, !1036}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3824, file: !14, line: 406, baseType: !3831, size: 64, offset: 64)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!109, !1723, !3834}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3836)
!3836 = !{!3837, !3867, !3881}
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !3835, file: !38, line: 295, baseType: !3838, size: 512)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3835, file: !38, line: 295, size: 512, elements: !3839)
!3839 = !{!3840, !3866}
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3838, file: !38, line: 296, baseType: !3841, size: 448)
!3841 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3838, file: !38, line: 296, size: 448, elements: !3842)
!3842 = !{!3843, !3844, !3853, !3854, !3855, !3864, !3865}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3841, file: !38, line: 298, baseType: !340, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, scope: !3841, file: !38, line: 299, baseType: !3845, size: 128, offset: 64)
!3845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3841, file: !38, line: 299, size: 128, elements: !3846)
!3846 = !{!3847, !3848}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3845, file: !38, line: 300, baseType: !172, size: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !3845, file: !38, line: 302, baseType: !3849, size: 128)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3845, file: !38, line: 302, size: 128, elements: !3850)
!3850 = !{!3851, !3852}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3849, file: !38, line: 303, baseType: !167, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3849, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3841, file: !38, line: 310, baseType: !366, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3841, file: !38, line: 311, baseType: !340, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, scope: !3841, file: !38, line: 312, baseType: !3856, size: 64, offset: 320)
!3856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3841, file: !38, line: 312, size: 64, elements: !3857)
!3857 = !{!3858, !3859}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3856, file: !38, line: 313, baseType: !167, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3856, file: !38, line: 314, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3862)
!3862 = !{!3863}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3861, file: !38, line: 256, baseType: !340, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3841, file: !38, line: 316, baseType: !241, size: 32, offset: 384)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3841, file: !38, line: 317, baseType: !241, size: 32, offset: 416)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3838, file: !38, line: 323, baseType: !2185, size: 512, align: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, scope: !3835, file: !38, line: 325, baseType: !3868, size: 512, offset: 512)
!3868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3835, file: !38, line: 325, size: 512, elements: !3869)
!3869 = !{!3870, !3880}
!3870 = !DIDerivedType(tag: DW_TAG_member, scope: !3868, file: !38, line: 326, baseType: !3871, size: 320)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3868, file: !38, line: 326, size: 320, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3871, file: !38, line: 327, baseType: !340, size: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3871, file: !38, line: 328, baseType: !340, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3871, file: !38, line: 329, baseType: !340, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3871, file: !38, line: 331, baseType: !241, size: 32, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3871, file: !38, line: 332, baseType: !241, size: 32, offset: 224)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3871, file: !38, line: 333, baseType: !241, size: 32, offset: 256)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3871, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3868, file: !38, line: 339, baseType: !2185, size: 512, align: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, scope: !3835, file: !38, line: 341, baseType: !3882, size: 512, offset: 1024)
!3882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3835, file: !38, line: 341, size: 512, elements: !3883)
!3883 = !{!3884, !3893, !3899}
!3884 = !DIDerivedType(tag: DW_TAG_member, scope: !3882, file: !38, line: 342, baseType: !3885, size: 384)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3882, file: !38, line: 342, size: 384, elements: !3886)
!3886 = !{!3887, !3888, !3889, !3890, !3891, !3892}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3885, file: !38, line: 343, baseType: !340, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3885, file: !38, line: 344, baseType: !340, size: 64, offset: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3885, file: !38, line: 346, baseType: !167, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3885, file: !38, line: 347, baseType: !167, size: 64, offset: 192)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3885, file: !38, line: 348, baseType: !167, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3885, file: !38, line: 349, baseType: !167, size: 64, offset: 320)
!3893 = !DIDerivedType(tag: DW_TAG_member, scope: !3882, file: !38, line: 352, baseType: !3894, size: 256)
!3894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3882, file: !38, line: 352, size: 256, elements: !3895)
!3895 = !{!3896, !3897, !3898}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3894, file: !38, line: 353, baseType: !340, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3894, file: !38, line: 354, baseType: !340, size: 64, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3894, file: !38, line: 356, baseType: !172, size: 128, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3882, file: !38, line: 359, baseType: !2185, size: 512, align: 128)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3824, file: !14, line: 409, baseType: !3901, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!109, !366, !1036}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3824, file: !14, line: 412, baseType: !3905, size: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!711, !366, !3834}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3824, file: !14, line: 414, baseType: !3909, size: 64, offset: 256)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3912}
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3824, file: !14, line: 416, baseType: !3915, size: 64, offset: 320)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!109, !1723, !366, !531, !7, !3236, !2412}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3824, file: !14, line: 419, baseType: !3919, size: 64, offset: 384)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!109, !1723, !366, !531, !7, !7, !2184, !167}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3824, file: !14, line: 424, baseType: !3923, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!3926, !366, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !173, line: 131, baseType: !443)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3824, file: !14, line: 425, baseType: !3928, size: 64, offset: 512)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{null, !3834, !337, !337}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3824, file: !14, line: 426, baseType: !3932, size: 64, offset: 576)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!711, !3834, !1145}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3824, file: !14, line: 427, baseType: !3936, size: 64, offset: 640)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{null, !3834}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3824, file: !14, line: 428, baseType: !2010, size: 64, offset: 704)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3824, file: !14, line: 433, baseType: !3941, size: 64, offset: 768)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!109, !366, !3834, !3834, !74}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3824, file: !14, line: 435, baseType: !3945, size: 64, offset: 832)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!109, !3834}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3824, file: !14, line: 436, baseType: !3949, size: 64, offset: 896)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!711, !3834, !337, !337}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3824, file: !14, line: 438, baseType: !3953, size: 64, offset: 960)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{null, !3834, !3956, !3956}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3824, file: !14, line: 439, baseType: !3958, size: 64, offset: 1024)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!109, !366, !2184}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3824, file: !14, line: 442, baseType: !3962, size: 64, offset: 1088)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!109, !3965, !1723, !3967}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3824, file: !14, line: 444, baseType: !2404, size: 64, offset: 1152)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3824, file: !14, line: 445, baseType: !3970, size: 64, offset: 1216)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!109, !2013, !2035}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !14, line: 486, baseType: !340, size: 64, offset: 896)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !367, file: !14, line: 487, baseType: !1293, size: 320, offset: 960)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !367, file: !14, line: 488, baseType: !2447, size: 32, offset: 1280)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !367, file: !14, line: 489, baseType: !221, size: 32, offset: 1312)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !367, file: !14, line: 490, baseType: !172, size: 128, offset: 1344)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !367, file: !14, line: 491, baseType: !167, size: 64, offset: 1472)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !357, file: !316, line: 180, baseType: !3980, size: 64, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!322, !1723, !214, !356, !290, !531, !337}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !357, file: !316, line: 182, baseType: !3980, size: 64, offset: 384)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !357, file: !316, line: 184, baseType: !3985, size: 64, offset: 448)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!109, !1723, !214, !356, !2075}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !345, file: !316, line: 90, baseType: !3989, size: 64, offset: 192)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !345, file: !316, line: 91, baseType: !3991, size: 64, offset: 256)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !306, file: !206, line: 120, baseType: !3993, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!3996, !273}
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3998)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3999)
!3999 = !{!4000, !4001, !4005, !4009, !4015, !4019}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3998, file: !82, line: 40, baseType: !81, size: 32)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3998, file: !82, line: 41, baseType: !4002, size: 64, offset: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!711}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3998, file: !82, line: 42, baseType: !4006, size: 64, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!167}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3998, file: !82, line: 43, baseType: !4010, size: 64, offset: 192)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!2536, !4013}
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3998, file: !82, line: 44, baseType: !4016, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!2536}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3998, file: !82, line: 45, baseType: !674, size: 64, offset: 320)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !306, file: !206, line: 121, baseType: !4021, size: 64, offset: 256)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!2536, !273}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !306, file: !206, line: 122, baseType: !4025, size: 64, offset: 320)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !273, !4028, !4029}
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !205, file: !206, line: 70, baseType: !4031, size: 64, offset: 384)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !546, line: 190, size: 1152, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4039, !4040, !4041, !4125, !4126, !4127, !4128, !4129, !4132}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4032, file: !546, line: 191, baseType: !241, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4032, file: !546, line: 192, baseType: !241, size: 32, offset: 32)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4032, file: !546, line: 202, baseType: !4031, size: 64, offset: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4032, file: !546, line: 203, baseType: !209, size: 64, offset: 128)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4032, file: !546, line: 205, baseType: !743, size: 192, align: 64, offset: 192)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4032, file: !546, line: 207, baseType: !2536, size: 64, offset: 384)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4032, file: !546, line: 208, baseType: !7, size: 32, offset: 448)
!4041 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !546, line: 209, baseType: !4042, size: 256, offset: 512)
!4042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4032, file: !546, line: 209, size: 256, elements: !4043)
!4043 = !{!4044, !4053, !4057}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4042, file: !546, line: 210, baseType: !4045, size: 256)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !546, line: 153, size: 256, elements: !4046)
!4046 = !{!4047, !4048, !4049, !4052}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4045, file: !546, line: 154, baseType: !340, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4045, file: !546, line: 156, baseType: !1582, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4045, file: !546, line: 162, baseType: !4050, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !546, line: 162, flags: DIFlagFwdDecl)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4045, file: !546, line: 167, baseType: !340, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4042, file: !546, line: 211, baseType: !4054, size: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !546, line: 170, size: 64, elements: !4055)
!4055 = !{!4056}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4054, file: !546, line: 171, baseType: !4031, size: 64)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4042, file: !546, line: 212, baseType: !4058, size: 256)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !546, line: 174, size: 256, elements: !4059)
!4059 = !{!4060, !4120, !4123, !4124}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4058, file: !546, line: 175, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4063)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !546, line: 271, size: 768, elements: !4064)
!4064 = !{!4065, !4085, !4089, !4093, !4097, !4101, !4105, !4109, !4110, !4111, !4112, !4116}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4063, file: !546, line: 276, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!109, !4069}
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !546, line: 251, size: 1216, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4070, file: !546, line: 253, baseType: !4031, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4070, file: !546, line: 254, baseType: !1723, size: 64, offset: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4070, file: !546, line: 255, baseType: !1073, size: 64, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4070, file: !546, line: 256, baseType: !167, size: 64, offset: 192)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4070, file: !546, line: 259, baseType: !631, size: 256, offset: 256)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4070, file: !546, line: 260, baseType: !631, size: 256, offset: 512)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4070, file: !546, line: 261, baseType: !109, size: 32, offset: 768)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4070, file: !546, line: 262, baseType: !172, size: 128, offset: 832)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4070, file: !546, line: 263, baseType: !290, size: 64, offset: 960)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4070, file: !546, line: 265, baseType: !337, size: 64, offset: 1024)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4070, file: !546, line: 266, baseType: !711, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4070, file: !546, line: 267, baseType: !711, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4070, file: !546, line: 268, baseType: !2120, size: 64, offset: 1152)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4063, file: !546, line: 277, baseType: !4086, size: 64, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{null, !4069}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4063, file: !546, line: 290, baseType: !4090, size: 64, offset: 128)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!109, !1073, !167}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4063, file: !546, line: 292, baseType: !4094, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!167, !1073, !2004}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4063, file: !546, line: 293, baseType: !4098, size: 64, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!167, !1073, !167, !2004}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4063, file: !546, line: 294, baseType: !4102, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{null, !1073, !167}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4063, file: !546, line: 296, baseType: !4106, size: 64, offset: 384)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!322, !4069, !290, !337, !531}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4063, file: !546, line: 306, baseType: !337, size: 64, offset: 448)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4063, file: !546, line: 313, baseType: !711, size: 8, offset: 512)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4063, file: !546, line: 314, baseType: !4106, size: 64, offset: 576)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4063, file: !546, line: 317, baseType: !4113, size: 64, offset: 640)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!2062, !4069, !2064}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4063, file: !546, line: 320, baseType: !4117, size: 64, offset: 704)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!109, !4069, !2075}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4058, file: !546, line: 176, baseType: !4121, size: 64, offset: 64)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !546, line: 35, flags: DIFlagFwdDecl)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4058, file: !546, line: 177, baseType: !531, size: 64, offset: 128)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4058, file: !546, line: 178, baseType: !4031, size: 64, offset: 192)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4032, file: !546, line: 215, baseType: !167, size: 64, offset: 768)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4032, file: !546, line: 221, baseType: !443, size: 64, offset: 832)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4032, file: !546, line: 223, baseType: !260, size: 16, offset: 896)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4032, file: !546, line: 224, baseType: !332, size: 16, offset: 912)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4032, file: !546, line: 225, baseType: !4130, size: 64, offset: 960)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !546, line: 36, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4032, file: !546, line: 227, baseType: !851, size: 128, align: 64, offset: 1024)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !205, file: !206, line: 71, baseType: !4134, size: 32, offset: 448)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4135, line: 19, size: 32, elements: !4136)
!4135 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4136 = !{!4137}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4134, file: !4135, line: 20, baseType: !1413, size: 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !205, file: !206, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !205, file: !206, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !205, file: !206, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !205, file: !206, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !205, file: !206, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !183, file: !147, line: 331, baseType: !7, size: 32, offset: 448)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !183, file: !147, line: 332, baseType: !260, size: 16, offset: 480)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !183, file: !147, line: 333, baseType: !260, size: 16, offset: 496)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !183, file: !147, line: 334, baseType: !260, size: 16, offset: 512)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !183, file: !147, line: 335, baseType: !260, size: 16, offset: 528)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !183, file: !147, line: 336, baseType: !7, size: 32, offset: 544)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !183, file: !147, line: 337, baseType: !249, size: 8, offset: 576)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !183, file: !147, line: 338, baseType: !249, size: 8, offset: 584)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !183, file: !147, line: 344, baseType: !4152, size: 64, offset: 640)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !147, line: 319, flags: DIFlagFwdDecl)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !183, file: !147, line: 345, baseType: !182, size: 64, offset: 704)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !183, file: !147, line: 347, baseType: !439, size: 32, offset: 768)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !183, file: !147, line: 348, baseType: !249, size: 8, offset: 800)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !183, file: !147, line: 349, baseType: !249, size: 8, offset: 808)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !183, file: !147, line: 350, baseType: !249, size: 8, offset: 816)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !183, file: !147, line: 351, baseType: !249, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !183, file: !147, line: 352, baseType: !249, size: 8, offset: 832)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !183, file: !147, line: 353, baseType: !249, size: 8, offset: 840)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !183, file: !147, line: 354, baseType: !258, size: 16, offset: 848)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !183, file: !147, line: 355, baseType: !982, size: 64, offset: 896)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !183, file: !147, line: 357, baseType: !4165, size: 64, offset: 960)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !147, line: 918, size: 2368, elements: !4167)
!4167 = !{!4168, !4169, !4170, !4185, !4189, !4193, !4201, !4205, !4206, !4210, !4211, !4215, !4235, !4236, !4237, !4697, !4702}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4166, file: !147, line: 919, baseType: !172, size: 128)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4166, file: !147, line: 920, baseType: !209, size: 64, offset: 128)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4166, file: !147, line: 921, baseType: !4171, size: 64, offset: 192)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4173)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4174, line: 44, size: 320, elements: !4175)
!4174 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4182, !4184}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4173, file: !4174, line: 45, baseType: !440, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4173, file: !4174, line: 45, baseType: !440, size: 32, offset: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4173, file: !4174, line: 46, baseType: !440, size: 32, offset: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4173, file: !4174, line: 46, baseType: !440, size: 32, offset: 96)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4173, file: !4174, line: 47, baseType: !440, size: 32, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4173, file: !4174, line: 47, baseType: !440, size: 32, offset: 160)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4173, file: !4174, line: 48, baseType: !4183, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4174, line: 15, baseType: !340)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4173, file: !4174, line: 49, baseType: !440, size: 32, offset: 256)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4166, file: !147, line: 922, baseType: !4186, size: 64, offset: 256)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!109, !182, !4171}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4166, file: !147, line: 923, baseType: !4190, size: 64, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{null, !182}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4166, file: !147, line: 924, baseType: !4194, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!109, !182, !4197}
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4198)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4199)
!4199 = !{!4200}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4198, file: !101, line: 59, baseType: !109, size: 32)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4166, file: !147, line: 925, baseType: !4202, size: 64, offset: 448)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!109, !182}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4166, file: !147, line: 926, baseType: !4190, size: 64, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4166, file: !147, line: 927, baseType: !4207, size: 64, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!109, !182, !109}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4166, file: !147, line: 928, baseType: !4207, size: 64, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4166, file: !147, line: 929, baseType: !4212, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!439, !182}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4166, file: !147, line: 930, baseType: !4216, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4218)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !147, line: 837, size: 448, elements: !4219)
!4219 = !{!4220, !4226, !4230, !4231, !4232, !4233, !4234}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4218, file: !147, line: 839, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4222, size: 64)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!4224, !182, !4225}
!4224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !147, line: 814, baseType: !7)
!4225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !147, line: 196, baseType: !7)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4218, file: !147, line: 843, baseType: !4227, size: 64, offset: 64)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!4224, !182}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4218, file: !147, line: 846, baseType: !4227, size: 64, offset: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4218, file: !147, line: 849, baseType: !4190, size: 64, offset: 192)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4218, file: !147, line: 850, baseType: !4190, size: 64, offset: 256)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4218, file: !147, line: 853, baseType: !4190, size: 64, offset: 320)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4218, file: !147, line: 856, baseType: !4190, size: 64, offset: 384)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4166, file: !147, line: 931, baseType: !342, size: 64, offset: 832)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4166, file: !147, line: 932, baseType: !342, size: 64, offset: 896)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4166, file: !147, line: 933, baseType: !4238, size: 1152, offset: 960)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4239)
!4239 = !{!4240, !4241, !4659, !4660, !4661, !4662, !4663, !4675, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4238, file: !88, line: 97, baseType: !209, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4238, file: !88, line: 98, baseType: !4242, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4244)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4245, line: 80, size: 1344, elements: !4246)
!4245 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4246 = !{!4247, !4248, !4249, !4250, !4251, !4252, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4649, !4650, !4651, !4652, !4653, !4654, !4658}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4244, file: !4245, line: 81, baseType: !209, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4244, file: !4245, line: 82, baseType: !209, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4244, file: !4245, line: 83, baseType: !342, size: 64, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4244, file: !4245, line: 84, baseType: !342, size: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4244, file: !4245, line: 85, baseType: !342, size: 64, offset: 256)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4244, file: !4245, line: 87, baseType: !4253, size: 64, offset: 320)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!109, !4256, !4320}
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4258)
!4258 = !{!4259, !4260, !4261, !4264, !4265, !4318, !4319, !4321, !4322, !4323, !4324, !4331, !4423, !4436, !4446, !4450, !4452, !4453, !4454, !4458, !4465, !4466, !4469, !4472, !4476, !4580, !4581, !4582, !4583, !4584, !4585, !4615, !4616, !4617, !4620, !4623, !4632, !4633, !4634, !4635, !4636, !4637}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4257, file: !94, line: 706, baseType: !205, size: 512)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4257, file: !94, line: 707, baseType: !4256, size: 64, offset: 512)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4257, file: !94, line: 709, baseType: !4262, size: 64, offset: 576)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4257, file: !94, line: 711, baseType: !209, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4257, file: !94, line: 712, baseType: !4266, size: 64, offset: 704)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4268)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4278, !4283, !4287}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4268, file: !94, line: 90, baseType: !209, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4268, file: !94, line: 91, baseType: !342, size: 64, offset: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4268, file: !94, line: 92, baseType: !4273, size: 64, offset: 128)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!109, !4276, !285}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4257)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4268, file: !94, line: 93, baseType: !4279, size: 64, offset: 192)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!290, !4276, !4282, !4028, !4029}
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4268, file: !94, line: 95, baseType: !4284, size: 64, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !4256}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4268, file: !94, line: 97, baseType: !4288, size: 64, offset: 320)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4290)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4291)
!4291 = !{!4292, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4290, file: !101, line: 287, baseType: !4293, size: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!109, !4256}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4290, file: !101, line: 288, baseType: !4284, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4290, file: !101, line: 289, baseType: !4293, size: 64, offset: 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4290, file: !101, line: 290, baseType: !4293, size: 64, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4290, file: !101, line: 291, baseType: !4293, size: 64, offset: 256)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4290, file: !101, line: 292, baseType: !4293, size: 64, offset: 320)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4290, file: !101, line: 293, baseType: !4293, size: 64, offset: 384)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4290, file: !101, line: 294, baseType: !4293, size: 64, offset: 448)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4290, file: !101, line: 295, baseType: !4293, size: 64, offset: 512)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4290, file: !101, line: 296, baseType: !4293, size: 64, offset: 576)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4290, file: !101, line: 297, baseType: !4293, size: 64, offset: 640)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4290, file: !101, line: 298, baseType: !4293, size: 64, offset: 704)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4290, file: !101, line: 299, baseType: !4293, size: 64, offset: 768)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4290, file: !101, line: 300, baseType: !4293, size: 64, offset: 832)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4290, file: !101, line: 301, baseType: !4293, size: 64, offset: 896)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4290, file: !101, line: 302, baseType: !4293, size: 64, offset: 960)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4290, file: !101, line: 303, baseType: !4293, size: 64, offset: 1024)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4290, file: !101, line: 304, baseType: !4293, size: 64, offset: 1088)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4290, file: !101, line: 305, baseType: !4293, size: 64, offset: 1152)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4290, file: !101, line: 306, baseType: !4293, size: 64, offset: 1216)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4290, file: !101, line: 307, baseType: !4293, size: 64, offset: 1280)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4290, file: !101, line: 308, baseType: !4293, size: 64, offset: 1344)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4290, file: !101, line: 309, baseType: !4293, size: 64, offset: 1408)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4257, file: !94, line: 714, baseType: !4242, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4257, file: !94, line: 715, baseType: !4320, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4257, file: !94, line: 717, baseType: !167, size: 64, offset: 896)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4257, file: !94, line: 719, baseType: !167, size: 64, offset: 960)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4257, file: !94, line: 721, baseType: !631, size: 256, offset: 1024)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4257, file: !94, line: 725, baseType: !4325, size: 448, offset: 1280)
!4325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4326)
!4326 = !{!4327, !4328, !4329, !4330}
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4325, file: !94, line: 518, baseType: !172, size: 128)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4325, file: !94, line: 519, baseType: !172, size: 128, offset: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4325, file: !94, line: 520, baseType: !172, size: 128, offset: 256)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4325, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4257, file: !94, line: 726, baseType: !4332, size: 2496, offset: 1728)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4333)
!4333 = !{!4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4416, !4420}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4332, file: !101, line: 664, baseType: !4197, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4332, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4332, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4332, file: !101, line: 667, baseType: !711, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4332, file: !101, line: 668, baseType: !711, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4332, file: !101, line: 669, baseType: !711, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4332, file: !101, line: 670, baseType: !711, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4332, file: !101, line: 671, baseType: !711, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4332, file: !101, line: 672, baseType: !711, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4332, file: !101, line: 673, baseType: !711, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4332, file: !101, line: 674, baseType: !711, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4332, file: !101, line: 675, baseType: !439, size: 32, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4332, file: !101, line: 676, baseType: !221, size: 32, offset: 96)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4332, file: !101, line: 678, baseType: !172, size: 128, offset: 128)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4332, file: !101, line: 679, baseType: !580, size: 256, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4332, file: !101, line: 680, baseType: !4350, size: 64, offset: 512)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4352, line: 43, size: 1536, elements: !4353)
!4352 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4353 = !{!4354, !4355, !4356, !4357, !4358, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4351, file: !4352, line: 44, baseType: !209, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4351, file: !4352, line: 45, baseType: !109, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4351, file: !4352, line: 46, baseType: !172, size: 128, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4351, file: !4352, line: 47, baseType: !221, size: 32, offset: 256)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4351, file: !4352, line: 48, baseType: !4359, size: 64, offset: 320)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4351, file: !4352, line: 49, baseType: !873, size: 320, offset: 384)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4351, file: !4352, line: 50, baseType: !340, size: 64, offset: 704)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4351, file: !4352, line: 51, baseType: !1528, size: 64, offset: 768)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4351, file: !4352, line: 52, baseType: !1528, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4351, file: !4352, line: 53, baseType: !1528, size: 64, offset: 896)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4351, file: !4352, line: 54, baseType: !1528, size: 64, offset: 960)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4351, file: !4352, line: 55, baseType: !1528, size: 64, offset: 1024)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4351, file: !4352, line: 56, baseType: !340, size: 64, offset: 1088)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4351, file: !4352, line: 57, baseType: !340, size: 64, offset: 1152)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4351, file: !4352, line: 58, baseType: !340, size: 64, offset: 1216)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4351, file: !4352, line: 59, baseType: !340, size: 64, offset: 1280)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4351, file: !4352, line: 60, baseType: !340, size: 64, offset: 1344)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4351, file: !4352, line: 61, baseType: !4256, size: 64, offset: 1408)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4351, file: !4352, line: 62, baseType: !711, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4351, file: !4352, line: 63, baseType: !711, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4332, file: !101, line: 681, baseType: !711, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4332, file: !101, line: 682, baseType: !711, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4332, file: !101, line: 683, baseType: !711, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4332, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4332, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4332, file: !101, line: 690, baseType: !1520, size: 512, offset: 640)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4332, file: !101, line: 691, baseType: !443, size: 64, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4332, file: !101, line: 692, baseType: !891, size: 256, offset: 1216)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4332, file: !101, line: 693, baseType: !1386, size: 192, offset: 1472)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4332, file: !101, line: 694, baseType: !4359, size: 64, offset: 1664)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4332, file: !101, line: 695, baseType: !241, size: 32, offset: 1728)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4332, file: !101, line: 696, baseType: !241, size: 32, offset: 1760)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4332, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4332, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4332, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4332, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4332, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4332, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4332, file: !101, line: 703, baseType: !711, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4332, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4332, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4332, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4332, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4332, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4332, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4332, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4332, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4332, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4332, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4332, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4332, file: !101, line: 715, baseType: !443, size: 64, offset: 2048)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4332, file: !101, line: 716, baseType: !443, size: 64, offset: 2112)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4332, file: !101, line: 717, baseType: !443, size: 64, offset: 2176)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4332, file: !101, line: 718, baseType: !443, size: 64, offset: 2240)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4332, file: !101, line: 720, baseType: !4411, size: 64, offset: 2304)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4413)
!4413 = !{!4414, !4415}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4412, file: !101, line: 633, baseType: !221, size: 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4412, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4332, file: !101, line: 721, baseType: !4417, size: 64, offset: 2368)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !4256, !627}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4332, file: !101, line: 722, baseType: !4421, size: 64, offset: 2432)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4257, file: !94, line: 727, baseType: !4424, size: 64, offset: 4224)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4426)
!4426 = !{!4427, !4428, !4429, !4433, !4434, !4435}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4425, file: !101, line: 743, baseType: !4290, size: 1472)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4425, file: !101, line: 744, baseType: !4293, size: 64, offset: 1472)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4425, file: !101, line: 745, baseType: !4430, size: 64, offset: 1536)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !4256, !711}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4425, file: !101, line: 746, baseType: !4293, size: 64, offset: 1600)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4425, file: !101, line: 747, baseType: !4284, size: 64, offset: 1664)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4425, file: !101, line: 748, baseType: !4284, size: 64, offset: 1728)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4257, file: !94, line: 736, baseType: !4437, size: 128, offset: 4288)
!4437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4438)
!4438 = !{!4439, !4443}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4437, file: !94, line: 531, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4442, line: 13, flags: DIFlagFwdDecl)
!4442 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4437, file: !94, line: 532, baseType: !4444, size: 64, offset: 64)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4257, file: !94, line: 738, baseType: !4447, size: 64, offset: 4416)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4449)
!4449 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4257, file: !94, line: 740, baseType: !4451, size: 64, offset: 4480)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4257, file: !94, line: 741, baseType: !443, size: 64, offset: 4544)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4257, file: !94, line: 746, baseType: !443, size: 64, offset: 4608)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4257, file: !94, line: 747, baseType: !4455, size: 64, offset: 4672)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4457)
!4457 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4257, file: !94, line: 749, baseType: !4459, size: 64, offset: 4736)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4461)
!4461 = !{!4462, !4463, !4464}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4460, file: !94, line: 433, baseType: !7, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4460, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4460, file: !94, line: 435, baseType: !340, size: 64, offset: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4257, file: !94, line: 751, baseType: !172, size: 128, offset: 4800)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4257, file: !94, line: 762, baseType: !4467, size: 64, offset: 4928)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4257, file: !94, line: 770, baseType: !4470, offset: 4992)
!4470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4471, line: 5, elements: !920)
!4471 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4257, file: !94, line: 772, baseType: !4473, size: 64, offset: 4992)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4475, line: 18, flags: DIFlagFwdDecl)
!4475 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4257, file: !94, line: 773, baseType: !4477, size: 64, offset: 5056)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4479, line: 41, size: 512, elements: !4480)
!4479 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4480 = !{!4481, !4482, !4576, !4577, !4578, !4579}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4478, file: !4479, line: 42, baseType: !4477, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4478, file: !4479, line: 43, baseType: !4483, size: 64, offset: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4485)
!4485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4479, line: 125, size: 1408, elements: !4486)
!4486 = !{!4487, !4491, !4495, !4501, !4505, !4506, !4511, !4515, !4519, !4523, !4527, !4528, !4532, !4536, !4540, !4551, !4552, !4553, !4554, !4564, !4568, !4572}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4485, file: !4479, line: 126, baseType: !4488, size: 64)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!4477, !4477}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4485, file: !4479, line: 127, baseType: !4492, size: 64, offset: 64)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !4477}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4485, file: !4479, line: 128, baseType: !4496, size: 64, offset: 128)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!711, !4499}
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4478)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4485, file: !4479, line: 129, baseType: !4502, size: 64, offset: 192)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!2536, !4499, !4276}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4485, file: !4479, line: 131, baseType: !4496, size: 64, offset: 256)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4485, file: !4479, line: 133, baseType: !4507, size: 64, offset: 320)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!4510, !4499}
!4510 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4479, line: 132, flags: DIFlagFwdDecl)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4485, file: !4479, line: 134, baseType: !4512, size: 64, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!711, !4499, !209}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4485, file: !4479, line: 136, baseType: !4516, size: 64, offset: 448)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{!109, !4499, !209, !7, !167, !337}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4485, file: !4479, line: 141, baseType: !4520, size: 64, offset: 512)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!109, !4499, !209, !968, !337}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4485, file: !4479, line: 144, baseType: !4524, size: 64, offset: 576)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!209, !4499}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4485, file: !4479, line: 145, baseType: !4524, size: 64, offset: 640)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4485, file: !4479, line: 146, baseType: !4529, size: 64, offset: 704)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!4477, !4499}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4485, file: !4479, line: 148, baseType: !4533, size: 64, offset: 768)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!4477, !4499, !4477}
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4485, file: !4479, line: 151, baseType: !4537, size: 64, offset: 832)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DISubroutineType(types: !4539)
!4539 = !{!4477, !4499, !209}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4485, file: !4479, line: 153, baseType: !4541, size: 64, offset: 896)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DISubroutineType(types: !4543)
!4543 = !{!109, !4499, !209, !209, !7, !7, !4544}
!4544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4545, size: 64)
!4545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4479, line: 94, size: 640, elements: !4546)
!4546 = !{!4547, !4548, !4549}
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4545, file: !4479, line: 95, baseType: !4477, size: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4545, file: !4479, line: 96, baseType: !7, size: 32, offset: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4545, file: !4479, line: 97, baseType: !4550, size: 512, offset: 128)
!4550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !443, size: 512, elements: !1563)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4485, file: !4479, line: 158, baseType: !4533, size: 64, offset: 960)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4485, file: !4479, line: 161, baseType: !4529, size: 64, offset: 1024)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4485, file: !4479, line: 163, baseType: !4488, size: 64, offset: 1088)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4485, file: !4479, line: 164, baseType: !4555, size: 64, offset: 1152)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!109, !4499, !4558}
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4479, line: 73, size: 128, elements: !4560)
!4560 = !{!4561, !4562, !4563}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4559, file: !4479, line: 74, baseType: !7, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4559, file: !4479, line: 75, baseType: !7, size: 32, offset: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4559, file: !4479, line: 76, baseType: !4499, size: 64, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4485, file: !4479, line: 166, baseType: !4565, size: 64, offset: 1216)
!4565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4566, size: 64)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!167, !4477, !109}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4485, file: !4479, line: 167, baseType: !4569, size: 64, offset: 1280)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!109, !4499, !7}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4485, file: !4479, line: 168, baseType: !4573, size: 64, offset: 1344)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!109, !4477}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4478, file: !4479, line: 44, baseType: !4256, size: 64, offset: 128)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4478, file: !4479, line: 45, baseType: !172, size: 128, offset: 192)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4478, file: !4479, line: 46, baseType: !172, size: 128, offset: 320)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4478, file: !4479, line: 47, baseType: !249, size: 8, offset: 448)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4257, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4257, file: !94, line: 778, baseType: !526, size: 32, offset: 5152)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4257, file: !94, line: 779, baseType: !439, size: 32, offset: 5184)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4257, file: !94, line: 781, baseType: !221, size: 32, offset: 5216)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4257, file: !94, line: 782, baseType: !172, size: 128, offset: 5248)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4257, file: !94, line: 784, baseType: !4586, size: 64, offset: 5376)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4588)
!4588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4589, line: 52, size: 768, elements: !4590)
!4589 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4590 = !{!4591, !4592, !4593, !4594, !4595, !4599, !4603, !4604, !4605, !4606, !4610, !4614}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4588, file: !4589, line: 53, baseType: !209, size: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4588, file: !4589, line: 55, baseType: !342, size: 64, offset: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4588, file: !4589, line: 56, baseType: !342, size: 64, offset: 128)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4588, file: !4589, line: 58, baseType: !4273, size: 64, offset: 192)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4588, file: !4589, line: 59, baseType: !4596, size: 64, offset: 256)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!290, !4276, !4282}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4588, file: !4589, line: 61, baseType: !4600, size: 64, offset: 320)
!4600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4601, size: 64)
!4601 = !DISubroutineType(types: !4602)
!4602 = !{null, !4586}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4588, file: !4589, line: 62, baseType: !4284, size: 64, offset: 384)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4588, file: !4589, line: 64, baseType: !4293, size: 64, offset: 448)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4588, file: !4589, line: 66, baseType: !3996, size: 64, offset: 512)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4588, file: !4589, line: 67, baseType: !4607, size: 64, offset: 576)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!2536, !4276}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4588, file: !4589, line: 69, baseType: !4611, size: 64, offset: 640)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{null, !4276, !4028, !4029}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4588, file: !4589, line: 71, baseType: !4288, size: 64, offset: 704)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4257, file: !94, line: 785, baseType: !342, size: 64, offset: 5440)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4257, file: !94, line: 787, baseType: !4284, size: 64, offset: 5504)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4257, file: !94, line: 788, baseType: !4618, size: 64, offset: 5568)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4257, file: !94, line: 789, baseType: !4621, size: 64, offset: 5632)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4257, file: !94, line: 791, baseType: !4624, size: 64, offset: 5696)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4626)
!4626 = !{!4627, !4628, !4629, !4630, !4631}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4625, file: !94, line: 598, baseType: !116, size: 32)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4625, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4625, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4625, file: !94, line: 601, baseType: !711, size: 8, offset: 96)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4625, file: !94, line: 602, baseType: !711, size: 8, offset: 104)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4257, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4257, file: !94, line: 795, baseType: !711, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4257, file: !94, line: 796, baseType: !711, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4257, file: !94, line: 797, baseType: !711, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4257, file: !94, line: 798, baseType: !711, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4257, file: !94, line: 799, baseType: !711, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4244, file: !4245, line: 88, baseType: !4273, size: 64, offset: 384)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4244, file: !4245, line: 89, baseType: !4293, size: 64, offset: 448)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4244, file: !4245, line: 90, baseType: !4284, size: 64, offset: 512)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4244, file: !4245, line: 91, baseType: !4284, size: 64, offset: 576)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4244, file: !4245, line: 92, baseType: !4284, size: 64, offset: 640)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4244, file: !4245, line: 94, baseType: !4293, size: 64, offset: 704)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4244, file: !4245, line: 95, baseType: !4293, size: 64, offset: 768)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4244, file: !4245, line: 97, baseType: !4646, size: 64, offset: 832)
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4647, size: 64)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!109, !4256, !4197}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4244, file: !4245, line: 98, baseType: !4293, size: 64, offset: 896)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4244, file: !4245, line: 100, baseType: !4293, size: 64, offset: 960)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4244, file: !4245, line: 102, baseType: !4293, size: 64, offset: 1024)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4244, file: !4245, line: 103, baseType: !4284, size: 64, offset: 1088)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4244, file: !4245, line: 105, baseType: !4288, size: 64, offset: 1152)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4244, file: !4245, line: 107, baseType: !4655, size: 64, offset: 1216)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4657)
!4657 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4245, line: 107, flags: DIFlagFwdDecl)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4244, file: !4245, line: 109, baseType: !711, size: 8, offset: 1280)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4238, file: !88, line: 100, baseType: !560, size: 64, offset: 128)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4238, file: !88, line: 101, baseType: !209, size: 64, offset: 192)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4238, file: !88, line: 103, baseType: !711, size: 8, offset: 256)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4238, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4238, file: !88, line: 106, baseType: !4664, size: 64, offset: 320)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4666)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4174, line: 282, size: 1600, elements: !4667)
!4667 = !{!4668, !4669, !4670, !4674}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4666, file: !4174, line: 283, baseType: !3490, size: 256)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4666, file: !4174, line: 284, baseType: !3490, size: 256, offset: 256)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4666, file: !4174, line: 285, baseType: !4671, size: 1024, offset: 512)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 1024, elements: !4672)
!4672 = !{!4673}
!4673 = !DISubrange(count: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4666, file: !4174, line: 286, baseType: !2536, size: 64, offset: 1536)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4238, file: !88, line: 107, baseType: !4676, size: 64, offset: 384)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4678)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4174, line: 217, size: 256, elements: !4679)
!4679 = !{!4680, !4681, !4682, !4683}
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4678, file: !4174, line: 218, baseType: !3497, size: 128)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4678, file: !4174, line: 219, baseType: !4183, size: 64, offset: 128)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4678, file: !4174, line: 220, baseType: !440, size: 32, offset: 192)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4678, file: !4174, line: 221, baseType: !440, size: 32, offset: 224)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4238, file: !88, line: 109, baseType: !4293, size: 64, offset: 448)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4238, file: !88, line: 110, baseType: !4284, size: 64, offset: 512)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4238, file: !88, line: 111, baseType: !4293, size: 64, offset: 576)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4238, file: !88, line: 112, baseType: !4284, size: 64, offset: 640)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4238, file: !88, line: 113, baseType: !4646, size: 64, offset: 704)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4238, file: !88, line: 114, baseType: !4293, size: 64, offset: 768)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4238, file: !88, line: 115, baseType: !342, size: 64, offset: 832)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4238, file: !88, line: 116, baseType: !342, size: 64, offset: 896)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4238, file: !88, line: 118, baseType: !4288, size: 64, offset: 960)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4238, file: !88, line: 119, baseType: !4284, size: 64, offset: 1024)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4238, file: !88, line: 121, baseType: !4695, size: 64, offset: 1088)
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4166, file: !147, line: 934, baseType: !4698, size: 192, offset: 2112)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !147, line: 801, size: 192, elements: !4699)
!4699 = !{!4700, !4701}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4698, file: !147, line: 802, baseType: !221, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4698, file: !147, line: 803, baseType: !172, size: 128, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4166, file: !147, line: 935, baseType: !711, size: 8, offset: 2304)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !183, file: !147, line: 358, baseType: !443, size: 64, offset: 1024)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !183, file: !147, line: 364, baseType: !4460, size: 128, offset: 1088)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !183, file: !147, line: 366, baseType: !4706, size: 32, offset: 1216)
!4706 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !147, line: 171, baseType: !109)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !183, file: !147, line: 369, baseType: !249, size: 8, offset: 1248)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !183, file: !147, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !183, file: !147, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !183, file: !147, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !183, file: !147, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !183, file: !147, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !183, file: !147, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !183, file: !147, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !183, file: !147, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !183, file: !147, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !183, file: !147, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !183, file: !147, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !183, file: !147, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !183, file: !147, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !183, file: !147, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !183, file: !147, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !183, file: !147, line: 390, baseType: !7, size: 32, offset: 1280)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !183, file: !147, line: 391, baseType: !7, size: 32, offset: 1312)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !183, file: !147, line: 394, baseType: !4726, size: 64, offset: 1344)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !147, line: 316, flags: DIFlagFwdDecl)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !183, file: !147, line: 395, baseType: !258, size: 16, offset: 1408)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !183, file: !147, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !183, file: !147, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !183, file: !147, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !183, file: !147, line: 402, baseType: !4225, size: 32, offset: 1440)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !183, file: !147, line: 403, baseType: !4257, size: 5824, offset: 1472)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !183, file: !147, line: 405, baseType: !109, size: 32, offset: 7296)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !183, file: !147, line: 411, baseType: !7, size: 32, offset: 7328)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !183, file: !147, line: 412, baseType: !4737, size: 5632, offset: 7360)
!4737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4738, size: 5632, elements: !4751)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4739, line: 21, size: 512, elements: !4740)
!4739 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4740 = !{!4741, !4743, !4744, !4745, !4746, !4747, !4749, !4750}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4738, file: !4739, line: 22, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !173, line: 164, baseType: !3240)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4738, file: !4739, line: 23, baseType: !4742, size: 64, offset: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4738, file: !4739, line: 24, baseType: !209, size: 64, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4738, file: !4739, line: 25, baseType: !340, size: 64, offset: 192)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4738, file: !4739, line: 26, baseType: !340, size: 64, offset: 256)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4738, file: !4739, line: 27, baseType: !4748, size: 64, offset: 320)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4738, file: !4739, line: 27, baseType: !4748, size: 64, offset: 384)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4738, file: !4739, line: 27, baseType: !4748, size: 64, offset: 448)
!4751 = !{!4752}
!4752 = !DISubrange(count: 11)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !183, file: !147, line: 413, baseType: !4738, size: 512, offset: 12992)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !183, file: !147, line: 415, baseType: !711, size: 8, offset: 13504)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !183, file: !147, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !183, file: !147, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !183, file: !147, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !183, file: !147, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !183, file: !147, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !183, file: !147, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !183, file: !147, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !183, file: !147, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !183, file: !147, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !183, file: !147, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !183, file: !147, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !183, file: !147, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !183, file: !147, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !183, file: !147, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !183, file: !147, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !183, file: !147, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !183, file: !147, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !183, file: !147, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !183, file: !147, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !183, file: !147, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !183, file: !147, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !183, file: !147, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !183, file: !147, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !183, file: !147, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !183, file: !147, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !183, file: !147, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !183, file: !147, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !183, file: !147, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !183, file: !147, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !183, file: !147, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !183, file: !147, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !183, file: !147, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !183, file: !147, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !183, file: !147, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !183, file: !147, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !183, file: !147, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !183, file: !147, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !183, file: !147, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !183, file: !147, line: 468, baseType: !4794, size: 16, offset: 13552)
!4794 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !147, line: 222, baseType: !260)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !183, file: !147, line: 469, baseType: !241, size: 32, offset: 13568)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !183, file: !147, line: 471, baseType: !221, size: 32, offset: 13600)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !183, file: !147, line: 472, baseType: !4798, size: 512, offset: 13632)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 512, elements: !2714)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !183, file: !147, line: 473, baseType: !1001, size: 64, offset: 14144)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !183, file: !147, line: 474, baseType: !4801, size: 704, offset: 14208)
!4801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 704, elements: !4751)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !183, file: !147, line: 475, baseType: !4801, size: 704, offset: 14912)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !183, file: !147, line: 487, baseType: !167, size: 64, offset: 15616)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !183, file: !147, line: 488, baseType: !589, size: 32, offset: 15680)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !183, file: !147, line: 490, baseType: !4806, size: 320, offset: 15744)
!4806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !147, line: 309, size: 320, elements: !4807)
!4807 = !{!4808, !4809, !4810}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4806, file: !147, line: 310, baseType: !631, size: 256)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4806, file: !147, line: 311, baseType: !7, size: 32, offset: 256)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4806, file: !147, line: 312, baseType: !249, size: 8, offset: 288)
!4811 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !147, line: 497, baseType: !4812, size: 64, offset: 16064)
!4812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !147, line: 497, size: 64, elements: !4813)
!4813 = !{!4814, !4817}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4812, file: !147, line: 498, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !147, line: 317, flags: DIFlagFwdDecl)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4812, file: !147, line: 499, baseType: !182, size: 64)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !183, file: !147, line: 501, baseType: !258, size: 16, offset: 16128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !183, file: !147, line: 502, baseType: !249, size: 8, offset: 16144)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !183, file: !147, line: 505, baseType: !258, size: 16, offset: 16160)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !183, file: !147, line: 506, baseType: !439, size: 32, offset: 16192)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !183, file: !147, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !183, file: !147, line: 510, baseType: !258, size: 16, offset: 16240)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !183, file: !147, line: 511, baseType: !258, size: 16, offset: 16256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !183, file: !147, line: 519, baseType: !258, size: 16, offset: 16272)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !183, file: !147, line: 520, baseType: !3240, size: 64, offset: 16320)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !183, file: !147, line: 521, baseType: !337, size: 64, offset: 16384)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !183, file: !147, line: 526, baseType: !209, size: 64, offset: 16448)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !183, file: !147, line: 528, baseType: !340, size: 64, offset: 16512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !183, file: !147, line: 531, baseType: !4831, size: 56, offset: 16576)
!4831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 56, elements: !752)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !169, file: !147, line: 653, baseType: !172, size: 128, offset: 512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !169, file: !147, line: 655, baseType: !4834, size: 256, offset: 640)
!4834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4748, size: 256, elements: !861)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !169, file: !147, line: 656, baseType: !172, size: 128, offset: 896)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !169, file: !147, line: 657, baseType: !4738, size: 512, offset: 1024)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !169, file: !147, line: 659, baseType: !4838, size: 64, offset: 1536)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !147, line: 773, size: 320, elements: !4840)
!4840 = !{!4841, !4845, !4849, !4853, !4857}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4839, file: !147, line: 774, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!109, !168}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4839, file: !147, line: 775, baseType: !4846, size: 64, offset: 64)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{null, !168}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4839, file: !147, line: 776, baseType: !4850, size: 64, offset: 128)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!167, !168, !7, !109}
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4839, file: !147, line: 777, baseType: !4854, size: 64, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!109, !168, !7, !109, !109, !2613}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4839, file: !147, line: 778, baseType: !4858, size: 64, offset: 256)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{!109, !168, !7, !109, !109, !439}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !169, file: !147, line: 660, baseType: !167, size: 64, offset: 1600)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !169, file: !147, line: 661, baseType: !190, size: 64, offset: 1664)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !169, file: !147, line: 663, baseType: !203, size: 8, offset: 1728)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !169, file: !147, line: 664, baseType: !203, size: 8, offset: 1736)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !169, file: !147, line: 665, baseType: !203, size: 8, offset: 1744)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !169, file: !147, line: 666, baseType: !203, size: 8, offset: 1752)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !169, file: !147, line: 671, baseType: !4868, size: 384, offset: 1760)
!4868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 384, elements: !4869)
!4869 = !{!4870}
!4870 = !DISubrange(count: 48)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !169, file: !147, line: 673, baseType: !260, size: 16, offset: 2144)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !169, file: !147, line: 674, baseType: !4873, size: 16, offset: 2160)
!4873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !147, line: 255, baseType: !260)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !169, file: !147, line: 675, baseType: !4256, size: 64, offset: 2176)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !169, file: !147, line: 676, baseType: !4257, size: 5824, offset: 2240)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !169, file: !147, line: 677, baseType: !356, size: 64, offset: 8064)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !169, file: !147, line: 678, baseType: !356, size: 64, offset: 8128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !169, file: !147, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !169, file: !147, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcibios_fwaddrmap", file: !3, line: 47, size: 896, elements: !4882)
!4882 = !{!4883, !4884, !4885}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4881, file: !3, line: 48, baseType: !172, size: 128)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4881, file: !3, line: 49, baseType: !182, size: 64, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "fw_addr", scope: !4881, file: !3, line: 50, baseType: !4886, size: 704, offset: 192)
!4886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4742, size: 704, elements: !4751)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !176)
!4889 = !{!4890, !4892, !4894, !4897, !0, !4902, !4904, !4906, !4911}
!4890 = !DIGlobalVariableExpression(var: !4891, expr: !DIExpression())
!4891 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pcibios_align_resource292", scope: !2, file: !3, line: 173, type: !167, isLocal: true, isDefinition: true)
!4892 = !DIGlobalVariableExpression(var: !4893, expr: !DIExpression())
!4893 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_i386__293_373_pcibios_assign_resources5294", scope: !2, file: !3, line: 373, type: !167, isLocal: true, isDefinition: true)
!4894 = !DIGlobalVariableExpression(var: !4895, expr: !DIExpression())
!4895 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !4896, isLocal: true, isDefinition: true)
!4896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 24, elements: !291)
!4897 = !DIGlobalVariableExpression(var: !4898, expr: !DIExpression())
!4898 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !4899, isLocal: true, isDefinition: true)
!4899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 176, elements: !4900)
!4900 = !{!4901}
!4901 = !DISubrange(count: 22)
!4902 = !DIGlobalVariableExpression(var: !4903, expr: !DIExpression())
!4903 = distinct !DIGlobalVariable(name: "pcibios_fwaddrmap_lock", scope: !2, file: !3, line: 54, type: !221, isLocal: true, isDefinition: true)
!4904 = !DIGlobalVariableExpression(var: !4905, expr: !DIExpression())
!4905 = distinct !DIGlobalVariable(name: "pcibios_fwaddrmappings", scope: !2, file: !3, line: 53, type: !172, isLocal: true, isDefinition: true)
!4906 = !DIGlobalVariableExpression(var: !4907, expr: !DIExpression())
!4907 = distinct !DIGlobalVariable(scope: null, file: !3, line: 280, type: !4908, isLocal: true, isDefinition: true)
!4908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 200, elements: !4909)
!4909 = !{!4910}
!4910 = !DISubrange(count: 25)
!4911 = !DIGlobalVariableExpression(var: !4912, expr: !DIExpression())
!4912 = distinct !DIGlobalVariable(scope: null, file: !157, line: 480, type: !4913, isLocal: true, isDefinition: true)
!4913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 168, elements: !4914)
!4914 = !{!4915}
!4915 = !DISubrange(count: 21)
!4916 = !{i32 7, !"Dwarf Version", i32 5}
!4917 = !{i32 2, !"Debug Info Version", i32 3}
!4918 = !{i32 1, !"wchar_size", i32 2}
!4919 = !{i32 8, !"cf-protection-branch", i32 1}
!4920 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4921 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4922 = !{i32 1, !"Code Model", i32 2}
!4923 = !{i32 1, !"override-stack-alignment", i32 8}
!4924 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4925 = distinct !DISubprogram(name: "pcibios_retrieve_fw_addr", scope: !3, file: !3, line: 99, type: !4926, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4928)
!4926 = !DISubroutineType(types: !4927)
!4927 = !{!4742, !182, !109}
!4928 = !{!4929, !4930, !4931, !4932, !4933, !4934, !4938}
!4929 = !DILocalVariable(name: "dev", arg: 1, scope: !4925, file: !3, line: 99, type: !182)
!4930 = !DILocalVariable(name: "idx", arg: 2, scope: !4925, file: !3, line: 99, type: !109)
!4931 = !DILocalVariable(name: "flags", scope: !4925, file: !3, line: 101, type: !340)
!4932 = !DILocalVariable(name: "map", scope: !4925, file: !3, line: 102, type: !4880)
!4933 = !DILocalVariable(name: "fw_addr", scope: !4925, file: !3, line: 103, type: !4742)
!4934 = !DILocalVariable(name: "__dummy", scope: !4935, file: !3, line: 108, type: !340)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 108, column: 2)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !3, line: 108, column: 2)
!4937 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 108, column: 2)
!4938 = !DILocalVariable(name: "__dummy2", scope: !4935, file: !3, line: 108, type: !340)
!4939 = !DILocation(line: 99, column: 58, scope: !4925)
!4940 = !DILocation(line: 99, column: 67, scope: !4925)
!4941 = !DILocation(line: 101, column: 2, scope: !4925)
!4942 = !DILocation(line: 101, column: 16, scope: !4925)
!4943 = !DILocation(line: 102, column: 2, scope: !4925)
!4944 = !DILocation(line: 102, column: 28, scope: !4925)
!4945 = !DILocation(line: 103, column: 2, scope: !4925)
!4946 = !DILocation(line: 103, column: 18, scope: !4925)
!4947 = !DILocation(line: 105, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 105, column: 6)
!4949 = !{i8 0, i8 2}
!4950 = !DILocation(line: 105, column: 6, scope: !4925)
!4951 = !DILocation(line: 106, column: 3, scope: !4948)
!4952 = !DILocation(line: 108, column: 2, scope: !4925)
!4953 = !DILocation(line: 108, column: 2, scope: !4937)
!4954 = !DILocation(line: 108, column: 2, scope: !4935)
!4955 = !DILocation(line: 108, column: 2, scope: !4936)
!4956 = !DILocation(line: 109, column: 33, scope: !4925)
!4957 = !DILocation(line: 109, column: 8, scope: !4925)
!4958 = !DILocation(line: 109, column: 6, scope: !4925)
!4959 = !DILocation(line: 110, column: 6, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4925, file: !3, line: 110, column: 6)
!4961 = !DILocation(line: 110, column: 6, scope: !4925)
!4962 = !DILocation(line: 111, column: 13, scope: !4960)
!4963 = !DILocation(line: 111, column: 18, scope: !4960)
!4964 = !DILocation(line: 111, column: 26, scope: !4960)
!4965 = !DILocation(line: 111, column: 11, scope: !4960)
!4966 = !DILocation(line: 111, column: 3, scope: !4960)
!4967 = !DILocation(line: 112, column: 50, scope: !4925)
!4968 = !DILocation(line: 112, column: 2, scope: !4925)
!4969 = !DILocation(line: 114, column: 9, scope: !4925)
!4970 = !DILocation(line: 114, column: 2, scope: !4925)
!4971 = !DILocation(line: 115, column: 1, scope: !4925)
!4972 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !4973, file: !4973, line: 32, type: !4974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4973 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!340, !4976}
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!4977 = distinct !DISubprogram(name: "spinlock_check", scope: !4978, file: !4978, line: 324, type: !4979, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4981)
!4978 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!4976, !2316}
!4981 = !{!4982}
!4982 = !DILocalVariable(name: "lock", arg: 1, scope: !4977, file: !4978, line: 324, type: !2316)
!4983 = !DILocation(line: 324, column: 67, scope: !4977)
!4984 = !DILocation(line: 326, column: 10, scope: !4977)
!4985 = !DILocation(line: 326, column: 16, scope: !4977)
!4986 = !DILocation(line: 326, column: 2, scope: !4977)
!4987 = distinct !DISubprogram(name: "pcibios_fwaddrmap_lookup", scope: !3, file: !3, line: 58, type: !4988, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4990)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!4880, !182}
!4990 = !{!4991, !4992, !4993, !4996}
!4991 = !DILocalVariable(name: "dev", arg: 1, scope: !4987, file: !3, line: 58, type: !182)
!4992 = !DILocalVariable(name: "map", scope: !4987, file: !3, line: 60, type: !4880)
!4993 = !DILocalVariable(name: "__mptr", scope: !4994, file: !3, line: 64, type: !167)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 64, column: 2)
!4995 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 64, column: 2)
!4996 = !DILocalVariable(name: "__mptr", scope: !4997, file: !3, line: 64, type: !167)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 64, column: 2)
!4998 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 64, column: 2)
!4999 = !DILocation(line: 58, column: 75, scope: !4987)
!5000 = !DILocation(line: 60, column: 2, scope: !4987)
!5001 = !DILocation(line: 60, column: 28, scope: !4987)
!5002 = !DILocation(line: 62, column: 2, scope: !4987)
!5003 = !DILocation(line: 62, column: 2, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 62, column: 2)
!5005 = !DILocation(line: 64, column: 2, scope: !4994)
!5006 = !DILocation(line: 64, column: 2, scope: !4995)
!5007 = !DILocation(line: 64, column: 2, scope: !4998)
!5008 = !DILocation(line: 65, column: 7, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4998, file: !3, line: 65, column: 7)
!5010 = !DILocation(line: 65, column: 12, scope: !5009)
!5011 = !DILocation(line: 65, column: 19, scope: !5009)
!5012 = !DILocation(line: 65, column: 16, scope: !5009)
!5013 = !DILocation(line: 65, column: 7, scope: !4998)
!5014 = !DILocation(line: 66, column: 11, scope: !5009)
!5015 = !DILocation(line: 66, column: 4, scope: !5009)
!5016 = !DILocation(line: 64, column: 2, scope: !4997)
!5017 = distinct !{!5017, !5006, !5018, !5019, !5020}
!5018 = !DILocation(line: 66, column: 11, scope: !4995)
!5019 = !{!"llvm.loop.mustprogress"}
!5020 = !{!"llvm.loop.unroll.disable"}
!5021 = !DILocation(line: 68, column: 2, scope: !4987)
!5022 = !DILocation(line: 69, column: 1, scope: !4987)
!5023 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !4978, file: !4978, line: 404, type: !5024, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5026)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{null, !2316, !340}
!5026 = !{!5027, !5028, !5029, !5032}
!5027 = !DILocalVariable(name: "lock", arg: 1, scope: !5023, file: !4978, line: 404, type: !2316)
!5028 = !DILocalVariable(name: "flags", arg: 2, scope: !5023, file: !4978, line: 404, type: !340)
!5029 = !DILocalVariable(name: "__dummy", scope: !5030, file: !4978, line: 406, type: !340)
!5030 = distinct !DILexicalBlock(scope: !5031, file: !4978, line: 406, column: 2)
!5031 = distinct !DILexicalBlock(scope: !5023, file: !4978, line: 406, column: 2)
!5032 = !DILocalVariable(name: "__dummy2", scope: !5030, file: !4978, line: 406, type: !340)
!5033 = !DILocation(line: 404, column: 64, scope: !5023)
!5034 = !DILocation(line: 404, column: 84, scope: !5023)
!5035 = !DILocation(line: 406, column: 2, scope: !5023)
!5036 = !DILocation(line: 406, column: 2, scope: !5030)
!5037 = !DILocation(line: 406, column: 2, scope: !5031)
!5038 = !DILocation(line: 407, column: 1, scope: !5023)
!5039 = distinct !DISubprogram(name: "pcibios_align_resource", scope: !3, file: !3, line: 155, type: !5040, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5044)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!4742, !167, !5042, !4742, !4742}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4738)
!5044 = !{!5045, !5046, !5047, !5048, !5049, !5050}
!5045 = !DILocalVariable(name: "data", arg: 1, scope: !5039, file: !3, line: 155, type: !167)
!5046 = !DILocalVariable(name: "res", arg: 2, scope: !5039, file: !3, line: 155, type: !5042)
!5047 = !DILocalVariable(name: "size", arg: 3, scope: !5039, file: !3, line: 156, type: !4742)
!5048 = !DILocalVariable(name: "align", arg: 4, scope: !5039, file: !3, line: 156, type: !4742)
!5049 = !DILocalVariable(name: "dev", scope: !5039, file: !3, line: 158, type: !182)
!5050 = !DILocalVariable(name: "start", scope: !5039, file: !3, line: 159, type: !4742)
!5051 = !DILocation(line: 155, column: 30, scope: !5039)
!5052 = !DILocation(line: 155, column: 59, scope: !5039)
!5053 = !DILocation(line: 156, column: 20, scope: !5039)
!5054 = !DILocation(line: 156, column: 42, scope: !5039)
!5055 = !DILocation(line: 158, column: 2, scope: !5039)
!5056 = !DILocation(line: 158, column: 18, scope: !5039)
!5057 = !DILocation(line: 158, column: 24, scope: !5039)
!5058 = !DILocation(line: 159, column: 2, scope: !5039)
!5059 = !DILocation(line: 159, column: 18, scope: !5039)
!5060 = !DILocation(line: 159, column: 26, scope: !5039)
!5061 = !DILocation(line: 159, column: 31, scope: !5039)
!5062 = !DILocation(line: 161, column: 6, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5039, file: !3, line: 161, column: 6)
!5064 = !DILocation(line: 161, column: 11, scope: !5063)
!5065 = !DILocation(line: 161, column: 17, scope: !5063)
!5066 = !DILocation(line: 161, column: 6, scope: !5039)
!5067 = !DILocation(line: 162, column: 33, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 162, column: 7)
!5069 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 161, column: 34)
!5070 = !DILocation(line: 162, column: 7, scope: !5068)
!5071 = !DILocation(line: 162, column: 7, scope: !5069)
!5072 = !DILocation(line: 163, column: 11, scope: !5068)
!5073 = !DILocation(line: 163, column: 4, scope: !5068)
!5074 = !DILocation(line: 164, column: 7, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 164, column: 7)
!5076 = !DILocation(line: 164, column: 13, scope: !5075)
!5077 = !DILocation(line: 164, column: 7, scope: !5069)
!5078 = !DILocation(line: 165, column: 13, scope: !5075)
!5079 = !DILocation(line: 165, column: 19, scope: !5075)
!5080 = !DILocation(line: 165, column: 28, scope: !5075)
!5081 = !DILocation(line: 165, column: 10, scope: !5075)
!5082 = !DILocation(line: 165, column: 4, scope: !5075)
!5083 = !DILocation(line: 166, column: 2, scope: !5069)
!5084 = !DILocation(line: 166, column: 13, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5063, file: !3, line: 166, column: 13)
!5086 = !DILocation(line: 166, column: 18, scope: !5085)
!5087 = !DILocation(line: 166, column: 24, scope: !5085)
!5088 = !DILocation(line: 166, column: 13, scope: !5063)
!5089 = !DILocation(line: 168, column: 7, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 168, column: 7)
!5091 = distinct !DILexicalBlock(scope: !5085, file: !3, line: 166, column: 42)
!5092 = !DILocation(line: 168, column: 13, scope: !5090)
!5093 = !DILocation(line: 168, column: 7, scope: !5091)
!5094 = !DILocation(line: 169, column: 10, scope: !5090)
!5095 = !DILocation(line: 169, column: 4, scope: !5090)
!5096 = !DILocation(line: 170, column: 2, scope: !5091)
!5097 = !DILocation(line: 171, column: 9, scope: !5039)
!5098 = !DILocation(line: 171, column: 2, scope: !5039)
!5099 = !DILocation(line: 172, column: 1, scope: !5039)
!5100 = distinct !DISubprogram(name: "skip_isa_ioresource_align", scope: !3, file: !3, line: 133, type: !4203, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5101)
!5101 = !{!5102}
!5102 = !DILocalVariable(name: "dev", arg: 1, scope: !5100, file: !3, line: 133, type: !182)
!5103 = !DILocation(line: 133, column: 43, scope: !5100)
!5104 = !DILocation(line: 135, column: 7, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5100, file: !3, line: 135, column: 6)
!5106 = !DILocation(line: 135, column: 17, scope: !5105)
!5107 = !DILocation(line: 135, column: 43, scope: !5105)
!5108 = !DILocation(line: 136, column: 8, scope: !5105)
!5109 = !DILocation(line: 136, column: 13, scope: !5105)
!5110 = !DILocation(line: 136, column: 18, scope: !5105)
!5111 = !DILocation(line: 136, column: 29, scope: !5105)
!5112 = !DILocation(line: 135, column: 6, scope: !5100)
!5113 = !DILocation(line: 137, column: 3, scope: !5105)
!5114 = !DILocation(line: 138, column: 2, scope: !5100)
!5115 = !DILocation(line: 139, column: 1, scope: !5100)
!5116 = distinct !DISubprogram(name: "__initstub__kmod_i386__293_373_pcibios_assign_resources5", scope: !3, file: !3, line: 373, type: !725, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5117 = !DILocation(line: 373, column: 1, scope: !5116)
!5118 = distinct !DISubprogram(name: "pcibios_assign_resources", scope: !3, file: !3, line: 355, type: !725, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5119)
!5119 = !{!5120, !5121, !5125}
!5120 = !DILocalVariable(name: "bus", scope: !5118, file: !3, line: 357, type: !168)
!5121 = !DILocalVariable(name: "__mptr", scope: !5122, file: !3, line: 360, type: !167)
!5122 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 360, column: 3)
!5123 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 360, column: 3)
!5124 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 359, column: 6)
!5125 = !DILocalVariable(name: "__mptr", scope: !5126, file: !3, line: 360, type: !167)
!5126 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 360, column: 3)
!5127 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 360, column: 3)
!5128 = !DILocation(line: 357, column: 2, scope: !5118)
!5129 = !DILocation(line: 357, column: 18, scope: !5118)
!5130 = !DILocation(line: 359, column: 8, scope: !5124)
!5131 = !DILocation(line: 359, column: 18, scope: !5124)
!5132 = !DILocation(line: 359, column: 6, scope: !5118)
!5133 = !DILocation(line: 360, column: 3, scope: !5122)
!5134 = !DILocation(line: 360, column: 3, scope: !5123)
!5135 = !DILocation(line: 360, column: 3, scope: !5127)
!5136 = !DILocation(line: 361, column: 35, scope: !5127)
!5137 = !DILocation(line: 361, column: 4, scope: !5127)
!5138 = !DILocation(line: 360, column: 3, scope: !5126)
!5139 = distinct !{!5139, !5134, !5140, !5019, !5020}
!5140 = !DILocation(line: 361, column: 38, scope: !5123)
!5141 = !DILocation(line: 363, column: 2, scope: !5118)
!5142 = !DILocation(line: 364, column: 2, scope: !5118)
!5143 = !DILocation(line: 367, column: 1, scope: !5118)
!5144 = !DILocation(line: 366, column: 2, scope: !5118)
!5145 = distinct !DISubprogram(name: "pcibios_resource_survey_bus", scope: !3, file: !3, line: 375, type: !4847, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5146)
!5146 = !{!5147}
!5147 = !DILocalVariable(name: "bus", arg: 1, scope: !5145, file: !3, line: 375, type: !168)
!5148 = !DILocation(line: 375, column: 50, scope: !5145)
!5149 = !DILocation(line: 377, column: 2, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 377, column: 2)
!5151 = !DILocation(line: 377, column: 2, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 377, column: 2)
!5153 = !DILocation(line: 379, column: 33, scope: !5145)
!5154 = !DILocation(line: 379, column: 2, scope: !5145)
!5155 = !DILocation(line: 381, column: 29, scope: !5145)
!5156 = !DILocation(line: 381, column: 2, scope: !5145)
!5157 = !DILocation(line: 382, column: 29, scope: !5145)
!5158 = !DILocation(line: 382, column: 2, scope: !5145)
!5159 = !DILocation(line: 384, column: 8, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 384, column: 6)
!5161 = !DILocation(line: 384, column: 18, scope: !5160)
!5162 = !DILocation(line: 384, column: 6, scope: !5145)
!5163 = !DILocation(line: 385, column: 34, scope: !5160)
!5164 = !DILocation(line: 385, column: 3, scope: !5160)
!5165 = !DILocation(line: 386, column: 1, scope: !5145)
!5166 = !DISubprogram(name: "_dev_printk", scope: !5167, file: !5167, line: 41, type: !5168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5167 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5168 = !DISubroutineType(types: !5169)
!5169 = !{null, !209, !4276, !209, null}
!5170 = distinct !DISubprogram(name: "pcibios_allocate_bus_resources", scope: !3, file: !3, line: 233, type: !4847, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5171)
!5171 = !{!5172, !5173, !5174, !5177}
!5172 = !DILocalVariable(name: "bus", arg: 1, scope: !5170, file: !3, line: 233, type: !168)
!5173 = !DILocalVariable(name: "child", scope: !5170, file: !3, line: 235, type: !168)
!5174 = !DILocalVariable(name: "__mptr", scope: !5175, file: !3, line: 240, type: !167)
!5175 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 240, column: 2)
!5176 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 240, column: 2)
!5177 = !DILocalVariable(name: "__mptr", scope: !5178, file: !3, line: 240, type: !167)
!5178 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 240, column: 2)
!5179 = distinct !DILexicalBlock(scope: !5176, file: !3, line: 240, column: 2)
!5180 = !DILocation(line: 233, column: 60, scope: !5170)
!5181 = !DILocation(line: 235, column: 2, scope: !5170)
!5182 = !DILocation(line: 235, column: 18, scope: !5170)
!5183 = !DILocation(line: 238, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5170, file: !3, line: 238, column: 6)
!5185 = !DILocation(line: 238, column: 11, scope: !5184)
!5186 = !DILocation(line: 238, column: 6, scope: !5170)
!5187 = !DILocation(line: 239, column: 37, scope: !5184)
!5188 = !DILocation(line: 239, column: 42, scope: !5184)
!5189 = !DILocation(line: 239, column: 3, scope: !5184)
!5190 = !DILocation(line: 240, column: 2, scope: !5175)
!5191 = !DILocation(line: 240, column: 2, scope: !5176)
!5192 = !DILocation(line: 240, column: 2, scope: !5179)
!5193 = !DILocation(line: 241, column: 34, scope: !5179)
!5194 = !DILocation(line: 241, column: 3, scope: !5179)
!5195 = !DILocation(line: 240, column: 2, scope: !5178)
!5196 = distinct !{!5196, !5191, !5197, !5019, !5020}
!5197 = !DILocation(line: 241, column: 39, scope: !5176)
!5198 = !DILocation(line: 242, column: 1, scope: !5170)
!5199 = distinct !DISubprogram(name: "pcibios_allocate_resources", scope: !3, file: !3, line: 307, type: !5200, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5202)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{null, !168, !109}
!5202 = !{!5203, !5204, !5205, !5206, !5207, !5210}
!5203 = !DILocalVariable(name: "bus", arg: 1, scope: !5199, file: !3, line: 307, type: !168)
!5204 = !DILocalVariable(name: "pass", arg: 2, scope: !5199, file: !3, line: 307, type: !109)
!5205 = !DILocalVariable(name: "dev", scope: !5199, file: !3, line: 309, type: !182)
!5206 = !DILocalVariable(name: "child", scope: !5199, file: !3, line: 310, type: !168)
!5207 = !DILocalVariable(name: "__mptr", scope: !5208, file: !3, line: 312, type: !167)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 312, column: 2)
!5209 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 312, column: 2)
!5210 = !DILocalVariable(name: "__mptr", scope: !5211, file: !3, line: 312, type: !167)
!5211 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 312, column: 2)
!5212 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 312, column: 2)
!5213 = !DILocation(line: 307, column: 56, scope: !5199)
!5214 = !DILocation(line: 307, column: 65, scope: !5199)
!5215 = !DILocation(line: 309, column: 2, scope: !5199)
!5216 = !DILocation(line: 309, column: 18, scope: !5199)
!5217 = !DILocation(line: 310, column: 2, scope: !5199)
!5218 = !DILocation(line: 310, column: 18, scope: !5199)
!5219 = !DILocation(line: 312, column: 2, scope: !5208)
!5220 = !DILocation(line: 312, column: 2, scope: !5209)
!5221 = !DILocation(line: 312, column: 2, scope: !5212)
!5222 = !DILocation(line: 313, column: 34, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 312, column: 52)
!5224 = !DILocation(line: 313, column: 39, scope: !5223)
!5225 = !DILocation(line: 313, column: 3, scope: !5223)
!5226 = !DILocation(line: 315, column: 11, scope: !5223)
!5227 = !DILocation(line: 315, column: 16, scope: !5223)
!5228 = !DILocation(line: 315, column: 9, scope: !5223)
!5229 = !DILocation(line: 316, column: 7, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 316, column: 7)
!5231 = !DILocation(line: 316, column: 7, scope: !5223)
!5232 = !DILocation(line: 317, column: 31, scope: !5230)
!5233 = !DILocation(line: 317, column: 38, scope: !5230)
!5234 = !DILocation(line: 317, column: 4, scope: !5230)
!5235 = !DILocation(line: 318, column: 2, scope: !5223)
!5236 = !DILocation(line: 312, column: 2, scope: !5211)
!5237 = distinct !{!5237, !5220, !5238, !5019, !5020}
!5238 = !DILocation(line: 318, column: 2, scope: !5209)
!5239 = !DILocation(line: 319, column: 1, scope: !5199)
!5240 = distinct !DISubprogram(name: "pcibios_allocate_rom_resources", scope: !3, file: !3, line: 341, type: !4847, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5241 = !{!5242, !5243, !5244, !5245, !5248}
!5242 = !DILocalVariable(name: "bus", arg: 1, scope: !5240, file: !3, line: 341, type: !168)
!5243 = !DILocalVariable(name: "dev", scope: !5240, file: !3, line: 343, type: !182)
!5244 = !DILocalVariable(name: "child", scope: !5240, file: !3, line: 344, type: !168)
!5245 = !DILocalVariable(name: "__mptr", scope: !5246, file: !3, line: 346, type: !167)
!5246 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 346, column: 2)
!5247 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 346, column: 2)
!5248 = !DILocalVariable(name: "__mptr", scope: !5249, file: !3, line: 346, type: !167)
!5249 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 346, column: 2)
!5250 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 346, column: 2)
!5251 = !DILocation(line: 341, column: 60, scope: !5240)
!5252 = !DILocation(line: 343, column: 2, scope: !5240)
!5253 = !DILocation(line: 343, column: 18, scope: !5240)
!5254 = !DILocation(line: 344, column: 2, scope: !5240)
!5255 = !DILocation(line: 344, column: 18, scope: !5240)
!5256 = !DILocation(line: 346, column: 2, scope: !5246)
!5257 = !DILocation(line: 346, column: 2, scope: !5247)
!5258 = !DILocation(line: 346, column: 2, scope: !5250)
!5259 = !DILocation(line: 347, column: 37, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 346, column: 52)
!5261 = !DILocation(line: 347, column: 3, scope: !5260)
!5262 = !DILocation(line: 349, column: 11, scope: !5260)
!5263 = !DILocation(line: 349, column: 16, scope: !5260)
!5264 = !DILocation(line: 349, column: 9, scope: !5260)
!5265 = !DILocation(line: 350, column: 7, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 350, column: 7)
!5267 = !DILocation(line: 350, column: 7, scope: !5260)
!5268 = !DILocation(line: 351, column: 35, scope: !5266)
!5269 = !DILocation(line: 351, column: 4, scope: !5266)
!5270 = !DILocation(line: 352, column: 2, scope: !5260)
!5271 = !DILocation(line: 346, column: 2, scope: !5249)
!5272 = distinct !{!5272, !5257, !5273, !5019, !5020}
!5273 = !DILocation(line: 352, column: 2, scope: !5247)
!5274 = !DILocation(line: 353, column: 1, scope: !5240)
!5275 = distinct !DISubprogram(name: "pcibios_resource_survey", scope: !3, file: !3, line: 388, type: !996, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5276)
!5276 = !{!5277, !5278, !5281, !5284, !5287, !5290, !5293}
!5277 = !DILocalVariable(name: "bus", scope: !5275, file: !3, line: 390, type: !168)
!5278 = !DILocalVariable(name: "__mptr", scope: !5279, file: !3, line: 394, type: !167)
!5279 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 394, column: 2)
!5280 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 394, column: 2)
!5281 = !DILocalVariable(name: "__mptr", scope: !5282, file: !3, line: 394, type: !167)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 394, column: 2)
!5283 = distinct !DILexicalBlock(scope: !5280, file: !3, line: 394, column: 2)
!5284 = !DILocalVariable(name: "__mptr", scope: !5285, file: !3, line: 397, type: !167)
!5285 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 397, column: 2)
!5286 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 397, column: 2)
!5287 = !DILocalVariable(name: "__mptr", scope: !5288, file: !3, line: 397, type: !167)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 397, column: 2)
!5289 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 397, column: 2)
!5290 = !DILocalVariable(name: "__mptr", scope: !5291, file: !3, line: 399, type: !167)
!5291 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 399, column: 2)
!5292 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 399, column: 2)
!5293 = !DILocalVariable(name: "__mptr", scope: !5294, file: !3, line: 399, type: !167)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 399, column: 2)
!5295 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 399, column: 2)
!5296 = !DILocation(line: 390, column: 2, scope: !5275)
!5297 = !DILocation(line: 390, column: 18, scope: !5275)
!5298 = !DILocation(line: 392, column: 2, scope: !5275)
!5299 = !DILocation(line: 392, column: 2, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 392, column: 2)
!5301 = !DILocation(line: 394, column: 2, scope: !5279)
!5302 = !DILocation(line: 394, column: 2, scope: !5280)
!5303 = !DILocation(line: 394, column: 2, scope: !5283)
!5304 = !DILocation(line: 395, column: 34, scope: !5283)
!5305 = !DILocation(line: 395, column: 3, scope: !5283)
!5306 = !DILocation(line: 394, column: 2, scope: !5282)
!5307 = distinct !{!5307, !5302, !5308, !5019, !5020}
!5308 = !DILocation(line: 395, column: 37, scope: !5280)
!5309 = !DILocation(line: 397, column: 2, scope: !5285)
!5310 = !DILocation(line: 397, column: 2, scope: !5286)
!5311 = !DILocation(line: 397, column: 2, scope: !5289)
!5312 = !DILocation(line: 398, column: 30, scope: !5289)
!5313 = !DILocation(line: 398, column: 3, scope: !5289)
!5314 = !DILocation(line: 397, column: 2, scope: !5288)
!5315 = distinct !{!5315, !5310, !5316, !5019, !5020}
!5316 = !DILocation(line: 398, column: 36, scope: !5286)
!5317 = !DILocation(line: 399, column: 2, scope: !5291)
!5318 = !DILocation(line: 399, column: 2, scope: !5292)
!5319 = !DILocation(line: 399, column: 2, scope: !5295)
!5320 = !DILocation(line: 400, column: 30, scope: !5295)
!5321 = !DILocation(line: 400, column: 3, scope: !5295)
!5322 = !DILocation(line: 399, column: 2, scope: !5294)
!5323 = distinct !{!5323, !5318, !5324, !5019, !5020}
!5324 = !DILocation(line: 400, column: 36, scope: !5292)
!5325 = !DILocation(line: 402, column: 2, scope: !5275)
!5326 = !DILocation(line: 408, column: 2, scope: !5275)
!5327 = !DILocation(line: 409, column: 1, scope: !5275)
!5328 = !DISubprogram(name: "e820__reserve_resources_late", scope: !5329, file: !5329, line: 34, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5329 = !DIFile(filename: "./arch/x86/include/asm/e820/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65a6719b6cd64e8daf1f569367f0fcc3")
!5330 = !DISubprogram(name: "ioapic_insert_resources", scope: !5331, file: !5331, line: 135, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5331 = !DIFile(filename: "./arch/x86/include/asm/io_apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c646052d57aa5ccfb364bced6a46c18")
!5332 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !4973, file: !4973, line: 43, type: !5333, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5333 = !DISubroutineType(types: !5334)
!5334 = !{null, !4976, !340}
!5335 = !DISubprogram(name: "pci_assign_unassigned_resources", scope: !147, file: !147, line: 1435, type: !996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5336 = distinct !DISubprogram(name: "pcibios_fw_addr_list_del", scope: !3, file: !3, line: 117, type: !996, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5337)
!5337 = !{!5338, !5339, !5340, !5341, !5345, !5346, !5349, !5351}
!5338 = !DILocalVariable(name: "flags", scope: !5336, file: !3, line: 119, type: !340)
!5339 = !DILocalVariable(name: "entry", scope: !5336, file: !3, line: 120, type: !4880)
!5340 = !DILocalVariable(name: "next", scope: !5336, file: !3, line: 120, type: !4880)
!5341 = !DILocalVariable(name: "__dummy", scope: !5342, file: !3, line: 122, type: !340)
!5342 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 122, column: 2)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 122, column: 2)
!5344 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 122, column: 2)
!5345 = !DILocalVariable(name: "__dummy2", scope: !5342, file: !3, line: 122, type: !340)
!5346 = !DILocalVariable(name: "__mptr", scope: !5347, file: !3, line: 123, type: !167)
!5347 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 123, column: 2)
!5348 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 123, column: 2)
!5349 = !DILocalVariable(name: "__mptr", scope: !5350, file: !3, line: 123, type: !167)
!5350 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 123, column: 2)
!5351 = !DILocalVariable(name: "__mptr", scope: !5352, file: !3, line: 123, type: !167)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 123, column: 2)
!5353 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 123, column: 2)
!5354 = !DILocation(line: 119, column: 2, scope: !5336)
!5355 = !DILocation(line: 119, column: 16, scope: !5336)
!5356 = !DILocation(line: 120, column: 2, scope: !5336)
!5357 = !DILocation(line: 120, column: 28, scope: !5336)
!5358 = !DILocation(line: 120, column: 36, scope: !5336)
!5359 = !DILocation(line: 122, column: 2, scope: !5336)
!5360 = !DILocation(line: 122, column: 2, scope: !5344)
!5361 = !DILocation(line: 122, column: 2, scope: !5342)
!5362 = !DILocation(line: 122, column: 2, scope: !5343)
!5363 = !DILocation(line: 123, column: 2, scope: !5347)
!5364 = !DILocation(line: 123, column: 2, scope: !5348)
!5365 = !DILocation(line: 123, column: 2, scope: !5350)
!5366 = !DILocation(line: 123, column: 2, scope: !5353)
!5367 = !DILocation(line: 124, column: 13, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 123, column: 71)
!5369 = !DILocation(line: 124, column: 20, scope: !5368)
!5370 = !DILocation(line: 124, column: 3, scope: !5368)
!5371 = !DILocation(line: 125, column: 15, scope: !5368)
!5372 = !DILocation(line: 125, column: 22, scope: !5368)
!5373 = !DILocation(line: 125, column: 3, scope: !5368)
!5374 = !DILocation(line: 126, column: 9, scope: !5368)
!5375 = !DILocation(line: 126, column: 3, scope: !5368)
!5376 = !DILocation(line: 127, column: 2, scope: !5368)
!5377 = !DILocation(line: 123, column: 2, scope: !5352)
!5378 = distinct !{!5378, !5364, !5379, !5019, !5020}
!5379 = !DILocation(line: 127, column: 2, scope: !5348)
!5380 = !DILocation(line: 128, column: 50, scope: !5336)
!5381 = !DILocation(line: 128, column: 2, scope: !5336)
!5382 = !DILocation(line: 129, column: 23, scope: !5336)
!5383 = !DILocation(line: 130, column: 1, scope: !5336)
!5384 = distinct !DISubprogram(name: "list_del", scope: !5385, file: !5385, line: 227, type: !5386, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5388)
!5385 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5386 = !DISubroutineType(types: !5387)
!5387 = !{null, !176}
!5388 = !{!5389}
!5389 = !DILocalVariable(name: "entry", arg: 1, scope: !5384, file: !5385, line: 227, type: !176)
!5390 = !DILocation(line: 227, column: 47, scope: !5384)
!5391 = !DILocation(line: 229, column: 19, scope: !5384)
!5392 = !DILocation(line: 229, column: 2, scope: !5384)
!5393 = !DILocation(line: 230, column: 2, scope: !5384)
!5394 = !DILocation(line: 230, column: 9, scope: !5384)
!5395 = !DILocation(line: 230, column: 14, scope: !5384)
!5396 = !DILocation(line: 231, column: 2, scope: !5384)
!5397 = !DILocation(line: 231, column: 9, scope: !5384)
!5398 = !DILocation(line: 231, column: 14, scope: !5384)
!5399 = !DILocation(line: 232, column: 1, scope: !5384)
!5400 = !DISubprogram(name: "pci_dev_put", scope: !147, file: !147, line: 1148, type: !4191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5401 = !DISubprogram(name: "kfree", scope: !157, file: !157, line: 227, type: !5402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5402 = !DISubroutineType(types: !5403)
!5403 = !{null, !2536}
!5404 = distinct !DISubprogram(name: "__list_del_entry", scope: !5385, file: !5385, line: 213, type: !5386, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5405)
!5405 = !{!5406}
!5406 = !DILocalVariable(name: "entry", arg: 1, scope: !5404, file: !5385, line: 213, type: !176)
!5407 = !DILocation(line: 213, column: 55, scope: !5404)
!5408 = !DILocation(line: 215, column: 30, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5404, file: !5385, line: 215, column: 6)
!5410 = !DILocation(line: 215, column: 7, scope: !5409)
!5411 = !DILocation(line: 215, column: 6, scope: !5404)
!5412 = !DILocation(line: 216, column: 3, scope: !5409)
!5413 = !DILocation(line: 218, column: 13, scope: !5404)
!5414 = !DILocation(line: 218, column: 20, scope: !5404)
!5415 = !DILocation(line: 218, column: 26, scope: !5404)
!5416 = !DILocation(line: 218, column: 33, scope: !5404)
!5417 = !DILocation(line: 218, column: 2, scope: !5404)
!5418 = !DILocation(line: 219, column: 1, scope: !5404)
!5419 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5385, file: !5385, line: 134, type: !5420, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5422)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{!711, !176}
!5422 = !{!5423}
!5423 = !DILocalVariable(name: "entry", arg: 1, scope: !5419, file: !5385, line: 134, type: !176)
!5424 = !DILocation(line: 134, column: 61, scope: !5419)
!5425 = !DILocation(line: 136, column: 2, scope: !5419)
!5426 = distinct !DISubprogram(name: "__list_del", scope: !5385, file: !5385, line: 193, type: !5427, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5429)
!5427 = !DISubroutineType(types: !5428)
!5428 = !{null, !176, !176}
!5429 = !{!5430, !5431}
!5430 = !DILocalVariable(name: "prev", arg: 1, scope: !5426, file: !5385, line: 193, type: !176)
!5431 = !DILocalVariable(name: "next", arg: 2, scope: !5426, file: !5385, line: 193, type: !176)
!5432 = !DILocation(line: 193, column: 50, scope: !5426)
!5433 = !DILocation(line: 193, column: 75, scope: !5426)
!5434 = !DILocation(line: 195, column: 15, scope: !5426)
!5435 = !DILocation(line: 195, column: 2, scope: !5426)
!5436 = !DILocation(line: 195, column: 8, scope: !5426)
!5437 = !DILocation(line: 195, column: 13, scope: !5426)
!5438 = !DILocation(line: 196, column: 2, scope: !5426)
!5439 = !DILocation(line: 196, column: 2, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5426, file: !5385, line: 196, column: 2)
!5441 = !DILocation(line: 196, column: 2, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5440, file: !5385, line: 196, column: 2)
!5443 = !DILocation(line: 196, column: 2, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5440, file: !5385, line: 196, column: 2)
!5445 = !DILocation(line: 197, column: 1, scope: !5426)
!5446 = distinct !DISubprogram(name: "pcibios_allocate_bridge_resources", scope: !3, file: !3, line: 209, type: !4191, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5447)
!5447 = !{!5448, !5449, !5450}
!5448 = !DILocalVariable(name: "dev", arg: 1, scope: !5446, file: !3, line: 209, type: !182)
!5449 = !DILocalVariable(name: "idx", scope: !5446, file: !3, line: 211, type: !109)
!5450 = !DILocalVariable(name: "r", scope: !5446, file: !3, line: 212, type: !4748)
!5451 = !DILocation(line: 209, column: 63, scope: !5446)
!5452 = !DILocation(line: 211, column: 2, scope: !5446)
!5453 = !DILocation(line: 211, column: 6, scope: !5446)
!5454 = !DILocation(line: 212, column: 2, scope: !5446)
!5455 = !DILocation(line: 212, column: 19, scope: !5446)
!5456 = !DILocation(line: 214, column: 11, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5446, file: !3, line: 214, column: 2)
!5458 = !DILocation(line: 214, column: 7, scope: !5457)
!5459 = !DILocation(line: 214, column: 35, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 214, column: 2)
!5461 = !DILocation(line: 214, column: 39, scope: !5460)
!5462 = !DILocation(line: 214, column: 2, scope: !5457)
!5463 = !DILocation(line: 215, column: 8, scope: !5464)
!5464 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 214, column: 67)
!5465 = !DILocation(line: 215, column: 13, scope: !5464)
!5466 = !DILocation(line: 215, column: 22, scope: !5464)
!5467 = !DILocation(line: 215, column: 5, scope: !5464)
!5468 = !DILocation(line: 216, column: 8, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 216, column: 7)
!5470 = !DILocation(line: 216, column: 11, scope: !5469)
!5471 = !DILocation(line: 216, column: 7, scope: !5464)
!5472 = !DILocation(line: 217, column: 4, scope: !5469)
!5473 = !DILocation(line: 218, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 218, column: 7)
!5475 = !DILocation(line: 218, column: 10, scope: !5474)
!5476 = !DILocation(line: 218, column: 7, scope: !5464)
!5477 = !DILocation(line: 219, column: 4, scope: !5474)
!5478 = !DILocation(line: 220, column: 8, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 220, column: 7)
!5480 = !DILocation(line: 220, column: 11, scope: !5479)
!5481 = !DILocation(line: 220, column: 17, scope: !5479)
!5482 = !DILocation(line: 220, column: 46, scope: !5479)
!5483 = !DILocation(line: 220, column: 51, scope: !5479)
!5484 = !DILocation(line: 220, column: 20, scope: !5479)
!5485 = !DILocation(line: 220, column: 56, scope: !5479)
!5486 = !DILocation(line: 220, column: 7, scope: !5464)
!5487 = !DILocation(line: 227, column: 15, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 220, column: 61)
!5489 = !DILocation(line: 227, column: 18, scope: !5488)
!5490 = !DILocation(line: 227, column: 22, scope: !5488)
!5491 = !DILocation(line: 227, column: 4, scope: !5488)
!5492 = !DILocation(line: 227, column: 7, scope: !5488)
!5493 = !DILocation(line: 227, column: 13, scope: !5488)
!5494 = !DILocation(line: 228, column: 4, scope: !5488)
!5495 = !DILocation(line: 228, column: 7, scope: !5488)
!5496 = !DILocation(line: 228, column: 13, scope: !5488)
!5497 = !DILocation(line: 229, column: 3, scope: !5488)
!5498 = !DILocation(line: 230, column: 2, scope: !5464)
!5499 = !DILocation(line: 214, column: 63, scope: !5460)
!5500 = !DILocation(line: 214, column: 2, scope: !5460)
!5501 = distinct !{!5501, !5462, !5502, !5019, !5020}
!5502 = !DILocation(line: 230, column: 2, scope: !5457)
!5503 = !DILocation(line: 231, column: 1, scope: !5446)
!5504 = !DISubprogram(name: "pci_claim_bridge_resource", scope: !147, file: !147, line: 1434, type: !4208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5505 = distinct !DISubprogram(name: "pcibios_allocate_dev_resources", scope: !3, file: !3, line: 249, type: !5506, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5508)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{null, !182, !109}
!5508 = !{!5509, !5510, !5511, !5512, !5513, !5514, !5515, !5516, !5522}
!5509 = !DILocalVariable(name: "dev", arg: 1, scope: !5505, file: !3, line: 249, type: !182)
!5510 = !DILocalVariable(name: "pass", arg: 2, scope: !5505, file: !3, line: 249, type: !109)
!5511 = !DILocalVariable(name: "idx", scope: !5505, file: !3, line: 251, type: !109)
!5512 = !DILocalVariable(name: "disabled", scope: !5505, file: !3, line: 251, type: !109)
!5513 = !DILocalVariable(name: "i", scope: !5505, file: !3, line: 251, type: !109)
!5514 = !DILocalVariable(name: "command", scope: !5505, file: !3, line: 252, type: !258)
!5515 = !DILocalVariable(name: "r", scope: !5505, file: !3, line: 253, type: !4748)
!5516 = !DILocalVariable(name: "idx_range", scope: !5505, file: !3, line: 255, type: !5517)
!5517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5518, size: 64, elements: !1648)
!5518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_check_idx_range", file: !3, line: 244, size: 64, elements: !5519)
!5519 = !{!5520, !5521}
!5520 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5518, file: !3, line: 245, baseType: !109, size: 32)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5518, file: !3, line: 246, baseType: !109, size: 32, offset: 32)
!5522 = !DILocalVariable(name: "reg", scope: !5523, file: !3, line: 297, type: !439)
!5523 = distinct !DILexicalBlock(scope: !5524, file: !3, line: 294, column: 41)
!5524 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 294, column: 7)
!5525 = distinct !DILexicalBlock(scope: !5526, file: !3, line: 292, column: 13)
!5526 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 292, column: 6)
!5527 = !DILocation(line: 249, column: 60, scope: !5505)
!5528 = !DILocation(line: 249, column: 69, scope: !5505)
!5529 = !DILocation(line: 251, column: 2, scope: !5505)
!5530 = !DILocation(line: 251, column: 6, scope: !5505)
!5531 = !DILocation(line: 251, column: 11, scope: !5505)
!5532 = !DILocation(line: 251, column: 21, scope: !5505)
!5533 = !DILocation(line: 252, column: 2, scope: !5505)
!5534 = !DILocation(line: 252, column: 6, scope: !5505)
!5535 = !DILocation(line: 253, column: 2, scope: !5505)
!5536 = !DILocation(line: 253, column: 19, scope: !5505)
!5537 = !DILocation(line: 255, column: 2, scope: !5505)
!5538 = !DILocation(line: 255, column: 29, scope: !5505)
!5539 = !DILocation(line: 262, column: 23, scope: !5505)
!5540 = !DILocation(line: 262, column: 2, scope: !5505)
!5541 = !DILocation(line: 263, column: 9, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5505, file: !3, line: 263, column: 2)
!5543 = !DILocation(line: 263, column: 7, scope: !5542)
!5544 = !DILocation(line: 263, column: 14, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 263, column: 2)
!5546 = !DILocation(line: 263, column: 16, scope: !5545)
!5547 = !DILocation(line: 263, column: 2, scope: !5542)
!5548 = !DILocation(line: 264, column: 24, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 264, column: 3)
!5550 = !DILocation(line: 264, column: 14, scope: !5549)
!5551 = !DILocation(line: 264, column: 27, scope: !5549)
!5552 = !DILocation(line: 264, column: 12, scope: !5549)
!5553 = !DILocation(line: 264, column: 8, scope: !5549)
!5554 = !DILocation(line: 264, column: 34, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 264, column: 3)
!5556 = !DILocation(line: 264, column: 51, scope: !5555)
!5557 = !DILocation(line: 264, column: 41, scope: !5555)
!5558 = !DILocation(line: 264, column: 54, scope: !5555)
!5559 = !DILocation(line: 264, column: 38, scope: !5555)
!5560 = !DILocation(line: 264, column: 3, scope: !5549)
!5561 = !DILocation(line: 265, column: 9, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 264, column: 66)
!5563 = !DILocation(line: 265, column: 14, scope: !5562)
!5564 = !DILocation(line: 265, column: 23, scope: !5562)
!5565 = !DILocation(line: 265, column: 6, scope: !5562)
!5566 = !DILocation(line: 266, column: 8, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 266, column: 8)
!5568 = !DILocation(line: 266, column: 11, scope: !5567)
!5569 = !DILocation(line: 266, column: 8, scope: !5562)
!5570 = !DILocation(line: 267, column: 5, scope: !5567)
!5571 = !DILocation(line: 268, column: 9, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 268, column: 8)
!5573 = !DILocation(line: 268, column: 12, scope: !5572)
!5574 = !DILocation(line: 268, column: 8, scope: !5562)
!5575 = !DILocation(line: 269, column: 5, scope: !5572)
!5576 = !DILocation(line: 270, column: 8, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 270, column: 8)
!5578 = !DILocation(line: 270, column: 11, scope: !5577)
!5579 = !DILocation(line: 270, column: 17, scope: !5577)
!5580 = !DILocation(line: 270, column: 8, scope: !5562)
!5581 = !DILocation(line: 271, column: 18, scope: !5577)
!5582 = !DILocation(line: 271, column: 26, scope: !5577)
!5583 = !DILocation(line: 271, column: 16, scope: !5577)
!5584 = !DILocation(line: 271, column: 14, scope: !5577)
!5585 = !DILocation(line: 271, column: 5, scope: !5577)
!5586 = !DILocation(line: 273, column: 18, scope: !5577)
!5587 = !DILocation(line: 273, column: 26, scope: !5577)
!5588 = !DILocation(line: 273, column: 16, scope: !5577)
!5589 = !DILocation(line: 273, column: 14, scope: !5577)
!5590 = !DILocation(line: 274, column: 8, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 274, column: 8)
!5592 = !DILocation(line: 274, column: 16, scope: !5591)
!5593 = !DILocation(line: 274, column: 13, scope: !5591)
!5594 = !DILocation(line: 274, column: 8, scope: !5562)
!5595 = !DILocation(line: 278, column: 28, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 278, column: 9)
!5597 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 274, column: 26)
!5598 = !DILocation(line: 278, column: 33, scope: !5596)
!5599 = !DILocation(line: 278, column: 9, scope: !5596)
!5600 = !DILocation(line: 278, column: 38, scope: !5596)
!5601 = !DILocation(line: 278, column: 9, scope: !5597)
!5602 = !DILocation(line: 279, column: 10, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5604, file: !3, line: 279, column: 10)
!5604 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 278, column: 43)
!5605 = !DILocation(line: 279, column: 13, scope: !5603)
!5606 = !DILocation(line: 279, column: 19, scope: !5603)
!5607 = !DILocation(line: 279, column: 10, scope: !5604)
!5608 = !DILocation(line: 280, column: 7, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 280, column: 7)
!5610 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 279, column: 43)
!5611 = !DILocation(line: 280, column: 7, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 280, column: 7)
!5613 = !DILocation(line: 282, column: 6, scope: !5610)
!5614 = !DILocation(line: 284, column: 28, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 282, column: 13)
!5616 = !DILocation(line: 285, column: 9, scope: !5615)
!5617 = !DILocation(line: 285, column: 14, scope: !5615)
!5618 = !DILocation(line: 285, column: 17, scope: !5615)
!5619 = !DILocation(line: 284, column: 7, scope: !5615)
!5620 = !DILocation(line: 286, column: 17, scope: !5615)
!5621 = !DILocation(line: 286, column: 20, scope: !5615)
!5622 = !DILocation(line: 286, column: 7, scope: !5615)
!5623 = !DILocation(line: 286, column: 10, scope: !5615)
!5624 = !DILocation(line: 286, column: 14, scope: !5615)
!5625 = !DILocation(line: 287, column: 7, scope: !5615)
!5626 = !DILocation(line: 287, column: 10, scope: !5615)
!5627 = !DILocation(line: 287, column: 16, scope: !5615)
!5628 = !DILocation(line: 289, column: 5, scope: !5604)
!5629 = !DILocation(line: 290, column: 4, scope: !5597)
!5630 = !DILocation(line: 291, column: 3, scope: !5562)
!5631 = !DILocation(line: 264, column: 62, scope: !5555)
!5632 = !DILocation(line: 264, column: 3, scope: !5555)
!5633 = distinct !{!5633, !5560, !5634, !5019, !5020}
!5634 = !DILocation(line: 291, column: 3, scope: !5549)
!5635 = !DILocation(line: 263, column: 42, scope: !5545)
!5636 = !DILocation(line: 263, column: 2, scope: !5545)
!5637 = distinct !{!5637, !5547, !5638, !5019, !5020}
!5638 = !DILocation(line: 291, column: 3, scope: !5542)
!5639 = !DILocation(line: 292, column: 7, scope: !5526)
!5640 = !DILocation(line: 292, column: 6, scope: !5505)
!5641 = !DILocation(line: 293, column: 8, scope: !5525)
!5642 = !DILocation(line: 293, column: 13, scope: !5525)
!5643 = !DILocation(line: 293, column: 5, scope: !5525)
!5644 = !DILocation(line: 294, column: 7, scope: !5524)
!5645 = !DILocation(line: 294, column: 10, scope: !5524)
!5646 = !DILocation(line: 294, column: 16, scope: !5524)
!5647 = !DILocation(line: 294, column: 7, scope: !5525)
!5648 = !DILocation(line: 297, column: 4, scope: !5523)
!5649 = !DILocation(line: 297, column: 8, scope: !5523)
!5650 = !DILocation(line: 299, column: 4, scope: !5523)
!5651 = !DILocation(line: 299, column: 7, scope: !5523)
!5652 = !DILocation(line: 299, column: 13, scope: !5523)
!5653 = !DILocation(line: 300, column: 26, scope: !5523)
!5654 = !DILocation(line: 300, column: 31, scope: !5523)
!5655 = !DILocation(line: 300, column: 36, scope: !5523)
!5656 = !DILocation(line: 300, column: 4, scope: !5523)
!5657 = !DILocation(line: 301, column: 27, scope: !5523)
!5658 = !DILocation(line: 301, column: 32, scope: !5523)
!5659 = !DILocation(line: 301, column: 37, scope: !5523)
!5660 = !DILocation(line: 302, column: 7, scope: !5523)
!5661 = !DILocation(line: 302, column: 11, scope: !5523)
!5662 = !DILocation(line: 301, column: 4, scope: !5523)
!5663 = !DILocation(line: 303, column: 3, scope: !5524)
!5664 = !DILocation(line: 303, column: 3, scope: !5523)
!5665 = !DILocation(line: 304, column: 2, scope: !5525)
!5666 = !DILocation(line: 305, column: 1, scope: !5505)
!5667 = !DISubprogram(name: "pci_read_config_word", scope: !147, file: !147, line: 1214, type: !5668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!109, !5670, !109, !5672}
!5670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5671, size: 64)
!5671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!5672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!5673 = !DISubprogram(name: "pci_claim_resource", scope: !147, file: !147, line: 1433, type: !4208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5674 = !DISubprogram(name: "_dev_info", scope: !5167, file: !5167, line: 56, type: !5675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{null, !4276, !209, null}
!5677 = distinct !DISubprogram(name: "pcibios_save_fw_addr", scope: !3, file: !3, line: 72, type: !5678, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5680)
!5678 = !DISubroutineType(types: !5679)
!5679 = !{null, !182, !109, !4742}
!5680 = !{!5681, !5682, !5683, !5684, !5685, !5686, !5690, !5691, !5697}
!5681 = !DILocalVariable(name: "dev", arg: 1, scope: !5677, file: !3, line: 72, type: !182)
!5682 = !DILocalVariable(name: "idx", arg: 2, scope: !5677, file: !3, line: 72, type: !109)
!5683 = !DILocalVariable(name: "fw_addr", arg: 3, scope: !5677, file: !3, line: 72, type: !4742)
!5684 = !DILocalVariable(name: "flags", scope: !5677, file: !3, line: 74, type: !340)
!5685 = !DILocalVariable(name: "map", scope: !5677, file: !3, line: 75, type: !4880)
!5686 = !DILocalVariable(name: "__dummy", scope: !5687, file: !3, line: 80, type: !340)
!5687 = distinct !DILexicalBlock(scope: !5688, file: !3, line: 80, column: 2)
!5688 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 80, column: 2)
!5689 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 80, column: 2)
!5690 = !DILocalVariable(name: "__dummy2", scope: !5687, file: !3, line: 80, type: !340)
!5691 = !DILocalVariable(name: "__dummy", scope: !5692, file: !3, line: 92, type: !340)
!5692 = distinct !DILexicalBlock(scope: !5693, file: !3, line: 92, column: 3)
!5693 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 92, column: 3)
!5694 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 92, column: 3)
!5695 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 82, column: 12)
!5696 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 82, column: 6)
!5697 = !DILocalVariable(name: "__dummy2", scope: !5692, file: !3, line: 92, type: !340)
!5698 = !DILocation(line: 72, column: 38, scope: !5677)
!5699 = !DILocation(line: 72, column: 47, scope: !5677)
!5700 = !DILocation(line: 72, column: 68, scope: !5677)
!5701 = !DILocation(line: 74, column: 2, scope: !5677)
!5702 = !DILocation(line: 74, column: 16, scope: !5677)
!5703 = !DILocation(line: 75, column: 2, scope: !5677)
!5704 = !DILocation(line: 75, column: 28, scope: !5677)
!5705 = !DILocation(line: 77, column: 6, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5677, file: !3, line: 77, column: 6)
!5707 = !DILocation(line: 77, column: 6, scope: !5677)
!5708 = !DILocation(line: 78, column: 3, scope: !5706)
!5709 = !DILocation(line: 80, column: 2, scope: !5677)
!5710 = !DILocation(line: 80, column: 2, scope: !5689)
!5711 = !DILocation(line: 80, column: 2, scope: !5687)
!5712 = !DILocation(line: 80, column: 2, scope: !5688)
!5713 = !DILocation(line: 81, column: 33, scope: !5677)
!5714 = !DILocation(line: 81, column: 8, scope: !5677)
!5715 = !DILocation(line: 81, column: 6, scope: !5677)
!5716 = !DILocation(line: 82, column: 7, scope: !5696)
!5717 = !DILocation(line: 82, column: 6, scope: !5677)
!5718 = !DILocation(line: 83, column: 51, scope: !5695)
!5719 = !DILocation(line: 83, column: 3, scope: !5695)
!5720 = !DILocation(line: 84, column: 9, scope: !5695)
!5721 = !DILocation(line: 84, column: 7, scope: !5695)
!5722 = !DILocation(line: 85, column: 8, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 85, column: 7)
!5724 = !DILocation(line: 85, column: 7, scope: !5695)
!5725 = !DILocation(line: 86, column: 4, scope: !5723)
!5726 = !DILocation(line: 88, column: 26, scope: !5695)
!5727 = !DILocation(line: 88, column: 14, scope: !5695)
!5728 = !DILocation(line: 88, column: 3, scope: !5695)
!5729 = !DILocation(line: 88, column: 8, scope: !5695)
!5730 = !DILocation(line: 88, column: 12, scope: !5695)
!5731 = !DILocation(line: 89, column: 23, scope: !5695)
!5732 = !DILocation(line: 89, column: 3, scope: !5695)
!5733 = !DILocation(line: 89, column: 8, scope: !5695)
!5734 = !DILocation(line: 89, column: 16, scope: !5695)
!5735 = !DILocation(line: 89, column: 21, scope: !5695)
!5736 = !DILocation(line: 90, column: 19, scope: !5695)
!5737 = !DILocation(line: 90, column: 24, scope: !5695)
!5738 = !DILocation(line: 90, column: 3, scope: !5695)
!5739 = !DILocation(line: 92, column: 3, scope: !5695)
!5740 = !DILocation(line: 92, column: 3, scope: !5694)
!5741 = !DILocation(line: 92, column: 3, scope: !5692)
!5742 = !DILocation(line: 92, column: 3, scope: !5693)
!5743 = !DILocation(line: 93, column: 18, scope: !5695)
!5744 = !DILocation(line: 93, column: 23, scope: !5695)
!5745 = !DILocation(line: 93, column: 3, scope: !5695)
!5746 = !DILocation(line: 94, column: 2, scope: !5695)
!5747 = !DILocation(line: 95, column: 23, scope: !5696)
!5748 = !DILocation(line: 95, column: 3, scope: !5696)
!5749 = !DILocation(line: 95, column: 8, scope: !5696)
!5750 = !DILocation(line: 95, column: 16, scope: !5696)
!5751 = !DILocation(line: 95, column: 21, scope: !5696)
!5752 = !DILocation(line: 96, column: 50, scope: !5677)
!5753 = !DILocation(line: 96, column: 2, scope: !5677)
!5754 = !DILocation(line: 97, column: 1, scope: !5677)
!5755 = !DISubprogram(name: "pci_read_config_dword", scope: !147, file: !147, line: 1215, type: !5756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!109, !5670, !109, !2613}
!5758 = !DISubprogram(name: "pci_write_config_dword", scope: !147, file: !147, line: 1218, type: !5759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{!109, !5670, !109, !439}
!5761 = distinct !DISubprogram(name: "kzalloc", scope: !157, file: !157, line: 719, type: !5762, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5764)
!5762 = !DISubroutineType(types: !5763)
!5763 = !{!167, !337, !1145}
!5764 = !{!5765, !5766}
!5765 = !DILocalVariable(name: "size", arg: 1, scope: !5761, file: !157, line: 719, type: !337)
!5766 = !DILocalVariable(name: "flags", arg: 2, scope: !5761, file: !157, line: 719, type: !1145)
!5767 = !DILocation(line: 719, column: 52, scope: !5761)
!5768 = !DILocation(line: 719, column: 64, scope: !5761)
!5769 = !DILocation(line: 721, column: 17, scope: !5761)
!5770 = !DILocation(line: 721, column: 23, scope: !5761)
!5771 = !DILocation(line: 721, column: 29, scope: !5761)
!5772 = !DILocation(line: 721, column: 9, scope: !5761)
!5773 = !DILocation(line: 721, column: 2, scope: !5761)
!5774 = !DISubprogram(name: "pci_dev_get", scope: !147, file: !147, line: 1147, type: !5775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!182, !182}
!5777 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5385, file: !5385, line: 35, type: !5386, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5778)
!5778 = !{!5779}
!5779 = !DILocalVariable(name: "list", arg: 1, scope: !5777, file: !5385, line: 35, type: !176)
!5780 = !DILocation(line: 35, column: 53, scope: !5777)
!5781 = !DILocation(line: 37, column: 2, scope: !5777)
!5782 = !DILocation(line: 37, column: 2, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5777, file: !5385, line: 37, column: 2)
!5784 = !DILocation(line: 37, column: 2, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5783, file: !5385, line: 37, column: 2)
!5786 = !DILocation(line: 37, column: 2, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5783, file: !5385, line: 37, column: 2)
!5788 = !DILocation(line: 38, column: 2, scope: !5777)
!5789 = !DILocation(line: 38, column: 2, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5777, file: !5385, line: 38, column: 2)
!5791 = !DILocation(line: 38, column: 2, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5790, file: !5385, line: 38, column: 2)
!5793 = !DILocation(line: 38, column: 2, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5790, file: !5385, line: 38, column: 2)
!5795 = !DILocation(line: 39, column: 1, scope: !5777)
!5796 = distinct !DISubprogram(name: "list_add_tail", scope: !5385, file: !5385, line: 181, type: !5427, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5797)
!5797 = !{!5798, !5799}
!5798 = !DILocalVariable(name: "new", arg: 1, scope: !5796, file: !5385, line: 181, type: !176)
!5799 = !DILocalVariable(name: "head", arg: 2, scope: !5796, file: !5385, line: 181, type: !176)
!5800 = !DILocation(line: 181, column: 52, scope: !5796)
!5801 = !DILocation(line: 181, column: 75, scope: !5796)
!5802 = !DILocation(line: 183, column: 13, scope: !5796)
!5803 = !DILocation(line: 183, column: 18, scope: !5796)
!5804 = !DILocation(line: 183, column: 24, scope: !5796)
!5805 = !DILocation(line: 183, column: 30, scope: !5796)
!5806 = !DILocation(line: 183, column: 2, scope: !5796)
!5807 = !DILocation(line: 184, column: 1, scope: !5796)
!5808 = distinct !DISubprogram(name: "kmalloc", scope: !157, file: !157, line: 591, type: !5762, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5809)
!5809 = !{!5810, !5811, !5812}
!5810 = !DILocalVariable(name: "size", arg: 1, scope: !5808, file: !157, line: 591, type: !337)
!5811 = !DILocalVariable(name: "flags", arg: 2, scope: !5808, file: !157, line: 591, type: !1145)
!5812 = !DILocalVariable(name: "index", scope: !5813, file: !157, line: 594, type: !7)
!5813 = distinct !DILexicalBlock(scope: !5814, file: !157, line: 593, column: 42)
!5814 = distinct !DILexicalBlock(scope: !5808, file: !157, line: 593, column: 6)
!5815 = !DILocation(line: 591, column: 61, scope: !5808)
!5816 = !DILocation(line: 591, column: 73, scope: !5808)
!5817 = !DILocation(line: 593, column: 27, scope: !5814)
!5818 = !DILocation(line: 593, column: 6, scope: !5814)
!5819 = !DILocation(line: 593, column: 33, scope: !5814)
!5820 = !DILocation(line: 593, column: 36, scope: !5814)
!5821 = !DILocation(line: 593, column: 6, scope: !5808)
!5822 = !DILocation(line: 594, column: 3, scope: !5813)
!5823 = !DILocation(line: 594, column: 16, scope: !5813)
!5824 = !DILocation(line: 596, column: 7, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5813, file: !157, line: 596, column: 7)
!5826 = !DILocation(line: 596, column: 12, scope: !5825)
!5827 = !DILocation(line: 596, column: 7, scope: !5813)
!5828 = !DILocation(line: 597, column: 25, scope: !5825)
!5829 = !DILocation(line: 597, column: 31, scope: !5825)
!5830 = !DILocation(line: 597, column: 11, scope: !5825)
!5831 = !DILocation(line: 597, column: 4, scope: !5825)
!5832 = !DILocation(line: 599, column: 11, scope: !5813)
!5833 = !DILocation(line: 599, column: 9, scope: !5813)
!5834 = !DILocation(line: 601, column: 33, scope: !5813)
!5835 = !DILocation(line: 601, column: 40, scope: !5813)
!5836 = !DILocation(line: 601, column: 20, scope: !5813)
!5837 = !DILocation(line: 601, column: 5, scope: !5813)
!5838 = !DILocation(line: 601, column: 51, scope: !5813)
!5839 = !DILocation(line: 602, column: 5, scope: !5813)
!5840 = !DILocation(line: 602, column: 12, scope: !5813)
!5841 = !DILocation(line: 600, column: 10, scope: !5813)
!5842 = !DILocation(line: 600, column: 3, scope: !5813)
!5843 = !DILocation(line: 603, column: 2, scope: !5814)
!5844 = !DILocation(line: 604, column: 19, scope: !5808)
!5845 = !DILocation(line: 604, column: 25, scope: !5808)
!5846 = !DILocation(line: 604, column: 9, scope: !5808)
!5847 = !DILocation(line: 604, column: 2, scope: !5808)
!5848 = !DILocation(line: 605, column: 1, scope: !5808)
!5849 = !DISubprogram(name: "kmalloc_large", scope: !157, file: !157, line: 531, type: !5762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5850 = distinct !DISubprogram(name: "__kmalloc_index", scope: !157, file: !157, line: 444, type: !5851, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5853)
!5851 = !DISubroutineType(types: !5852)
!5852 = !{!7, !337, !711}
!5853 = !{!5854, !5855}
!5854 = !DILocalVariable(name: "size", arg: 1, scope: !5850, file: !157, line: 444, type: !337)
!5855 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5850, file: !157, line: 445, type: !711)
!5856 = !DILocation(line: 444, column: 60, scope: !5850)
!5857 = !DILocation(line: 445, column: 16, scope: !5850)
!5858 = !DILocation(line: 447, column: 7, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 447, column: 6)
!5860 = !DILocation(line: 447, column: 6, scope: !5850)
!5861 = !DILocation(line: 448, column: 3, scope: !5859)
!5862 = !DILocation(line: 450, column: 6, scope: !5863)
!5863 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 450, column: 6)
!5864 = !DILocation(line: 450, column: 11, scope: !5863)
!5865 = !DILocation(line: 450, column: 6, scope: !5850)
!5866 = !DILocation(line: 451, column: 3, scope: !5863)
!5867 = !DILocation(line: 453, column: 32, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 453, column: 6)
!5869 = !DILocation(line: 453, column: 37, scope: !5868)
!5870 = !DILocation(line: 453, column: 42, scope: !5868)
!5871 = !DILocation(line: 453, column: 45, scope: !5868)
!5872 = !DILocation(line: 453, column: 50, scope: !5868)
!5873 = !DILocation(line: 453, column: 6, scope: !5850)
!5874 = !DILocation(line: 454, column: 3, scope: !5868)
!5875 = !DILocation(line: 455, column: 32, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 455, column: 6)
!5877 = !DILocation(line: 455, column: 37, scope: !5876)
!5878 = !DILocation(line: 455, column: 43, scope: !5876)
!5879 = !DILocation(line: 455, column: 46, scope: !5876)
!5880 = !DILocation(line: 455, column: 51, scope: !5876)
!5881 = !DILocation(line: 455, column: 6, scope: !5850)
!5882 = !DILocation(line: 456, column: 3, scope: !5876)
!5883 = !DILocation(line: 457, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 457, column: 6)
!5885 = !DILocation(line: 457, column: 11, scope: !5884)
!5886 = !DILocation(line: 457, column: 6, scope: !5850)
!5887 = !DILocation(line: 457, column: 26, scope: !5884)
!5888 = !DILocation(line: 458, column: 6, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 458, column: 6)
!5890 = !DILocation(line: 458, column: 11, scope: !5889)
!5891 = !DILocation(line: 458, column: 6, scope: !5850)
!5892 = !DILocation(line: 458, column: 26, scope: !5889)
!5893 = !DILocation(line: 459, column: 6, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 459, column: 6)
!5895 = !DILocation(line: 459, column: 11, scope: !5894)
!5896 = !DILocation(line: 459, column: 6, scope: !5850)
!5897 = !DILocation(line: 459, column: 26, scope: !5894)
!5898 = !DILocation(line: 460, column: 6, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 460, column: 6)
!5900 = !DILocation(line: 460, column: 11, scope: !5899)
!5901 = !DILocation(line: 460, column: 6, scope: !5850)
!5902 = !DILocation(line: 460, column: 26, scope: !5899)
!5903 = !DILocation(line: 461, column: 6, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 461, column: 6)
!5905 = !DILocation(line: 461, column: 11, scope: !5904)
!5906 = !DILocation(line: 461, column: 6, scope: !5850)
!5907 = !DILocation(line: 461, column: 26, scope: !5904)
!5908 = !DILocation(line: 462, column: 6, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 462, column: 6)
!5910 = !DILocation(line: 462, column: 11, scope: !5909)
!5911 = !DILocation(line: 462, column: 6, scope: !5850)
!5912 = !DILocation(line: 462, column: 26, scope: !5909)
!5913 = !DILocation(line: 463, column: 6, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 463, column: 6)
!5915 = !DILocation(line: 463, column: 11, scope: !5914)
!5916 = !DILocation(line: 463, column: 6, scope: !5850)
!5917 = !DILocation(line: 463, column: 26, scope: !5914)
!5918 = !DILocation(line: 464, column: 6, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 464, column: 6)
!5920 = !DILocation(line: 464, column: 11, scope: !5919)
!5921 = !DILocation(line: 464, column: 6, scope: !5850)
!5922 = !DILocation(line: 464, column: 26, scope: !5919)
!5923 = !DILocation(line: 465, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 465, column: 6)
!5925 = !DILocation(line: 465, column: 11, scope: !5924)
!5926 = !DILocation(line: 465, column: 6, scope: !5850)
!5927 = !DILocation(line: 465, column: 26, scope: !5924)
!5928 = !DILocation(line: 466, column: 6, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 466, column: 6)
!5930 = !DILocation(line: 466, column: 11, scope: !5929)
!5931 = !DILocation(line: 466, column: 6, scope: !5850)
!5932 = !DILocation(line: 466, column: 26, scope: !5929)
!5933 = !DILocation(line: 467, column: 6, scope: !5934)
!5934 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 467, column: 6)
!5935 = !DILocation(line: 467, column: 11, scope: !5934)
!5936 = !DILocation(line: 467, column: 6, scope: !5850)
!5937 = !DILocation(line: 467, column: 26, scope: !5934)
!5938 = !DILocation(line: 468, column: 6, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 468, column: 6)
!5940 = !DILocation(line: 468, column: 11, scope: !5939)
!5941 = !DILocation(line: 468, column: 6, scope: !5850)
!5942 = !DILocation(line: 468, column: 26, scope: !5939)
!5943 = !DILocation(line: 469, column: 6, scope: !5944)
!5944 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 469, column: 6)
!5945 = !DILocation(line: 469, column: 11, scope: !5944)
!5946 = !DILocation(line: 469, column: 6, scope: !5850)
!5947 = !DILocation(line: 469, column: 26, scope: !5944)
!5948 = !DILocation(line: 470, column: 6, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 470, column: 6)
!5950 = !DILocation(line: 470, column: 11, scope: !5949)
!5951 = !DILocation(line: 470, column: 6, scope: !5850)
!5952 = !DILocation(line: 470, column: 26, scope: !5949)
!5953 = !DILocation(line: 471, column: 6, scope: !5954)
!5954 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 471, column: 6)
!5955 = !DILocation(line: 471, column: 11, scope: !5954)
!5956 = !DILocation(line: 471, column: 6, scope: !5850)
!5957 = !DILocation(line: 471, column: 26, scope: !5954)
!5958 = !DILocation(line: 472, column: 6, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 472, column: 6)
!5960 = !DILocation(line: 472, column: 11, scope: !5959)
!5961 = !DILocation(line: 472, column: 6, scope: !5850)
!5962 = !DILocation(line: 472, column: 26, scope: !5959)
!5963 = !DILocation(line: 473, column: 6, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 473, column: 6)
!5965 = !DILocation(line: 473, column: 11, scope: !5964)
!5966 = !DILocation(line: 473, column: 6, scope: !5850)
!5967 = !DILocation(line: 473, column: 26, scope: !5964)
!5968 = !DILocation(line: 474, column: 6, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 474, column: 6)
!5970 = !DILocation(line: 474, column: 11, scope: !5969)
!5971 = !DILocation(line: 474, column: 6, scope: !5850)
!5972 = !DILocation(line: 474, column: 27, scope: !5969)
!5973 = !DILocation(line: 475, column: 6, scope: !5974)
!5974 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 475, column: 6)
!5975 = !DILocation(line: 475, column: 11, scope: !5974)
!5976 = !DILocation(line: 475, column: 6, scope: !5850)
!5977 = !DILocation(line: 475, column: 32, scope: !5974)
!5978 = !DILocation(line: 477, column: 50, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5850, file: !157, line: 477, column: 6)
!5980 = !DILocation(line: 477, column: 6, scope: !5850)
!5981 = !DILocation(line: 478, column: 3, scope: !5979)
!5982 = !DILocation(line: 478, column: 3, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5984, file: !157, line: 478, column: 3)
!5984 = distinct !DILexicalBlock(scope: !5979, file: !157, line: 478, column: 3)
!5985 = !{i32 -2141977705}
!5986 = !DILocation(line: 478, column: 3, scope: !5984)
!5987 = !DILocation(line: 480, column: 3, scope: !5979)
!5988 = !DILocation(line: 480, column: 3, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5979, file: !157, line: 480, column: 3)
!5990 = !DILocation(line: 480, column: 3, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5989, file: !157, line: 480, column: 3)
!5992 = !DILocation(line: 480, column: 3, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5989, file: !157, line: 480, column: 3)
!5994 = !{i64 2152989794, i64 2152989823, i64 2152989869, i64 2152989927, i64 2152989981, i64 2152990035, i64 2152990090, i64 2152990121}
!5995 = !DILocation(line: 483, column: 2, scope: !5850)
!5996 = !DILocation(line: 484, column: 1, scope: !5850)
!5997 = !DISubprogram(name: "kmalloc_trace", scope: !157, file: !157, line: 525, type: !5998, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5998 = !DISubroutineType(types: !5999)
!5999 = !{!167, !6000, !1145, !337}
!6000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6001, size: 64)
!6001 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6002, line: 11, flags: DIFlagFwdDecl)
!6002 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6003 = distinct !DISubprogram(name: "kmalloc_type", scope: !157, file: !157, line: 401, type: !6004, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6006)
!6004 = !DISubroutineType(types: !6005)
!6005 = !{!156, !1145, !340}
!6006 = !{!6007, !6008}
!6007 = !DILocalVariable(name: "flags", arg: 1, scope: !6003, file: !157, line: 401, type: !1145)
!6008 = !DILocalVariable(name: "caller", arg: 2, scope: !6003, file: !157, line: 401, type: !340)
!6009 = !DILocation(line: 401, column: 67, scope: !6003)
!6010 = !DILocation(line: 401, column: 88, scope: !6003)
!6011 = !DILocation(line: 407, column: 6, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6003, file: !157, line: 407, column: 6)
!6013 = !DILocation(line: 407, column: 6, scope: !6003)
!6014 = !DILocation(line: 413, column: 3, scope: !6012)
!6015 = !DILocation(line: 423, column: 38, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6003, file: !157, line: 423, column: 6)
!6017 = !DILocation(line: 423, column: 44, scope: !6016)
!6018 = !DILocation(line: 423, column: 6, scope: !6003)
!6019 = !DILocation(line: 424, column: 3, scope: !6016)
!6020 = !DILocation(line: 426, column: 3, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6003, file: !157, line: 425, column: 6)
!6022 = !DILocation(line: 429, column: 1, scope: !6003)
!6023 = !DISubprogram(name: "__kmalloc", scope: !157, file: !157, line: 488, type: !5762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6024 = !DISubprogram(name: "__compiletime_assert_204", scope: !157, file: !157, line: 478, type: !996, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6025 = distinct !DISubprogram(name: "__list_add", scope: !5385, file: !5385, line: 146, type: !6026, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6028)
!6026 = !DISubroutineType(types: !6027)
!6027 = !{null, !176, !176, !176}
!6028 = !{!6029, !6030, !6031}
!6029 = !DILocalVariable(name: "new", arg: 1, scope: !6025, file: !5385, line: 146, type: !176)
!6030 = !DILocalVariable(name: "prev", arg: 2, scope: !6025, file: !5385, line: 147, type: !176)
!6031 = !DILocalVariable(name: "next", arg: 3, scope: !6025, file: !5385, line: 148, type: !176)
!6032 = !DILocation(line: 146, column: 49, scope: !6025)
!6033 = !DILocation(line: 147, column: 28, scope: !6025)
!6034 = !DILocation(line: 148, column: 28, scope: !6025)
!6035 = !DILocation(line: 150, column: 24, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6025, file: !5385, line: 150, column: 6)
!6037 = !DILocation(line: 150, column: 29, scope: !6036)
!6038 = !DILocation(line: 150, column: 35, scope: !6036)
!6039 = !DILocation(line: 150, column: 7, scope: !6036)
!6040 = !DILocation(line: 150, column: 6, scope: !6025)
!6041 = !DILocation(line: 151, column: 3, scope: !6036)
!6042 = !DILocation(line: 153, column: 15, scope: !6025)
!6043 = !DILocation(line: 153, column: 2, scope: !6025)
!6044 = !DILocation(line: 153, column: 8, scope: !6025)
!6045 = !DILocation(line: 153, column: 13, scope: !6025)
!6046 = !DILocation(line: 154, column: 14, scope: !6025)
!6047 = !DILocation(line: 154, column: 2, scope: !6025)
!6048 = !DILocation(line: 154, column: 7, scope: !6025)
!6049 = !DILocation(line: 154, column: 12, scope: !6025)
!6050 = !DILocation(line: 155, column: 14, scope: !6025)
!6051 = !DILocation(line: 155, column: 2, scope: !6025)
!6052 = !DILocation(line: 155, column: 7, scope: !6025)
!6053 = !DILocation(line: 155, column: 12, scope: !6025)
!6054 = !DILocation(line: 156, column: 2, scope: !6025)
!6055 = !DILocation(line: 156, column: 2, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6025, file: !5385, line: 156, column: 2)
!6057 = !DILocation(line: 156, column: 2, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !6056, file: !5385, line: 156, column: 2)
!6059 = !DILocation(line: 156, column: 2, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6056, file: !5385, line: 156, column: 2)
!6061 = !DILocation(line: 157, column: 1, scope: !6025)
!6062 = distinct !DISubprogram(name: "__list_add_valid", scope: !5385, file: !5385, line: 128, type: !6063, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6065)
!6063 = !DISubroutineType(types: !6064)
!6064 = !{!711, !176, !176, !176}
!6065 = !{!6066, !6067, !6068}
!6066 = !DILocalVariable(name: "new", arg: 1, scope: !6062, file: !5385, line: 128, type: !176)
!6067 = !DILocalVariable(name: "prev", arg: 2, scope: !6062, file: !5385, line: 129, type: !176)
!6068 = !DILocalVariable(name: "next", arg: 3, scope: !6062, file: !5385, line: 130, type: !176)
!6069 = !DILocation(line: 128, column: 55, scope: !6062)
!6070 = !DILocation(line: 129, column: 23, scope: !6062)
!6071 = !DILocation(line: 130, column: 23, scope: !6062)
!6072 = !DILocation(line: 132, column: 2, scope: !6062)
!6073 = distinct !DISubprogram(name: "pcibios_allocate_dev_rom_resource", scope: !3, file: !3, line: 321, type: !4191, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6074)
!6074 = !{!6075, !6076}
!6075 = !DILocalVariable(name: "dev", arg: 1, scope: !6073, file: !3, line: 321, type: !182)
!6076 = !DILocalVariable(name: "r", scope: !6073, file: !3, line: 323, type: !4748)
!6077 = !DILocation(line: 321, column: 63, scope: !6073)
!6078 = !DILocation(line: 323, column: 2, scope: !6073)
!6079 = !DILocation(line: 323, column: 19, scope: !6073)
!6080 = !DILocation(line: 330, column: 7, scope: !6073)
!6081 = !DILocation(line: 330, column: 12, scope: !6073)
!6082 = !DILocation(line: 330, column: 4, scope: !6073)
!6083 = !DILocation(line: 331, column: 7, scope: !6084)
!6084 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 331, column: 6)
!6085 = !DILocation(line: 331, column: 10, scope: !6084)
!6086 = !DILocation(line: 331, column: 16, scope: !6084)
!6087 = !DILocation(line: 331, column: 20, scope: !6084)
!6088 = !DILocation(line: 331, column: 23, scope: !6084)
!6089 = !DILocation(line: 331, column: 6, scope: !6073)
!6090 = !DILocation(line: 332, column: 3, scope: !6084)
!6091 = !DILocation(line: 333, column: 6, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 333, column: 6)
!6093 = !DILocation(line: 333, column: 9, scope: !6092)
!6094 = !DILocation(line: 333, column: 6, scope: !6073)
!6095 = !DILocation(line: 334, column: 3, scope: !6092)
!6096 = !DILocation(line: 336, column: 25, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 336, column: 6)
!6098 = !DILocation(line: 336, column: 6, scope: !6097)
!6099 = !DILocation(line: 336, column: 48, scope: !6097)
!6100 = !DILocation(line: 336, column: 6, scope: !6073)
!6101 = !DILocation(line: 337, column: 13, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6097, file: !3, line: 336, column: 53)
!6103 = !DILocation(line: 337, column: 16, scope: !6102)
!6104 = !DILocation(line: 337, column: 3, scope: !6102)
!6105 = !DILocation(line: 337, column: 6, scope: !6102)
!6106 = !DILocation(line: 337, column: 10, scope: !6102)
!6107 = !DILocation(line: 338, column: 3, scope: !6102)
!6108 = !DILocation(line: 338, column: 6, scope: !6102)
!6109 = !DILocation(line: 338, column: 12, scope: !6102)
!6110 = !DILocation(line: 339, column: 2, scope: !6102)
!6111 = !DILocation(line: 340, column: 1, scope: !6073)
