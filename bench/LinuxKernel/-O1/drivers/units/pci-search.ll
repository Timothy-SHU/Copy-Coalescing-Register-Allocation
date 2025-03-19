; ModuleID = 'drivers/pci/search.c'
source_filename = "drivers/pci/search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_find_bus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_find_bus ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_find_next_bus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_find_next_bus ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_get_slot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_get_slot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_get_domain_bus_and_slot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_get_domain_bus_and_slot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_get_subsys: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_get_subsys ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_get_device: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_get_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_get_class: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_get_class ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_get_base_class: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_get_base_class ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_dev_present: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_dev_present ; .previous"

%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64, i32 }

@pci_bus_sem = hidden global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_bus_sem, i64 24), ptr getelementptr (i8, ptr @pci_bus_sem, i64 24) } }, align 8, !dbg !0
@__UNIQUE_ID___addressable_pci_find_bus292 = internal global ptr @pci_find_bus, section ".discard.addressable", align 8, !dbg !4900
@pci_root_buses = external dso_local global %struct.list_head, align 8
@__UNIQUE_ID___addressable_pci_find_next_bus293 = internal global ptr @pci_find_next_bus, section ".discard.addressable", align 8, !dbg !4902
@__UNIQUE_ID___addressable_pci_get_slot294 = internal global ptr @pci_get_slot, section ".discard.addressable", align 8, !dbg !4904
@__UNIQUE_ID___addressable_pci_get_domain_bus_and_slot295 = internal global ptr @pci_get_domain_bus_and_slot, section ".discard.addressable", align 8, !dbg !4906
@__UNIQUE_ID___addressable_pci_get_subsys296 = internal global ptr @pci_get_subsys, section ".discard.addressable", align 8, !dbg !4908
@__UNIQUE_ID___addressable_pci_get_device297 = internal global ptr @pci_get_device, section ".discard.addressable", align 8, !dbg !4910
@__UNIQUE_ID___addressable_pci_get_class298 = internal global ptr @pci_get_class, section ".discard.addressable", align 8, !dbg !4912
@__UNIQUE_ID___addressable_pci_get_base_class299 = internal global ptr @pci_get_base_class, section ".discard.addressable", align 8, !dbg !4914
@__UNIQUE_ID___addressable_pci_dev_present300 = internal global ptr @pci_dev_present, section ".discard.addressable", align 8, !dbg !4916
@pci_bus_type = external dso_local global %struct.bus_type, align 8
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_pci_find_bus292, ptr @__UNIQUE_ID___addressable_pci_find_next_bus293, ptr @__UNIQUE_ID___addressable_pci_get_slot294, ptr @__UNIQUE_ID___addressable_pci_get_domain_bus_and_slot295, ptr @__UNIQUE_ID___addressable_pci_get_subsys296, ptr @__UNIQUE_ID___addressable_pci_get_device297, ptr @__UNIQUE_ID___addressable_pci_get_class298, ptr @__UNIQUE_ID___addressable_pci_get_base_class299, ptr @__UNIQUE_ID___addressable_pci_dev_present300], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_for_each_dma_alias(ptr noundef %pdev, ptr noundef %fn, ptr noundef %data) #0 align 16 !dbg !4927 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %fn.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %bus = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %devfn = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !4934, metadata !DIExpression()), !dbg !4946
  store ptr %fn, ptr %fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fn.addr, metadata !4935, metadata !DIExpression()), !dbg !4947
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4936, metadata !DIExpression()), !dbg !4948
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #8, !dbg !4949
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !4937, metadata !DIExpression()), !dbg !4950
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #8, !dbg !4951
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4938, metadata !DIExpression()), !dbg !4952
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !4953
  %call = call ptr @pci_real_dma_dev(ptr noundef %0) #9, !dbg !4954
  store ptr %call, ptr %pdev.addr, align 8, !dbg !4955
  %1 = load ptr, ptr %fn.addr, align 8, !dbg !4956
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !4957
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !4958
  %call1 = call zeroext i16 @pci_dev_id(ptr noundef %3) #9, !dbg !4959
  %4 = load ptr, ptr %data.addr, align 8, !dbg !4960
  %call2 = call i32 %1(ptr noundef %2, i16 noundef zeroext %call1, ptr noundef %4) #9, !dbg !4956
  store i32 %call2, ptr %ret, align 4, !dbg !4961
  %5 = load i32, ptr %ret, align 4, !dbg !4962
  %tobool = icmp ne i32 %5, 0, !dbg !4962
  br i1 %tobool, label %if.then, label %if.end, !dbg !4964

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %ret, align 4, !dbg !4965
  store i32 %6, ptr %retval, align 4, !dbg !4966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !4966

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !4967
  %dma_alias_mask = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 24, !dbg !4967
  %8 = load ptr, ptr %dma_alias_mask, align 8, !dbg !4967
  %tobool3 = icmp ne ptr %8, null, !dbg !4967
  %lnot = xor i1 %tobool3, true, !dbg !4967
  %lnot4 = xor i1 %lnot, true, !dbg !4967
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4967
  %conv = sext i32 %lnot.ext to i64, !dbg !4967
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4967
  %tobool5 = icmp ne i64 %expval, 0, !dbg !4967
  br i1 %tobool5, label %if.then6, label %if.end20, !dbg !4968

if.then6:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %devfn) #8, !dbg !4969
  call void @llvm.dbg.declare(metadata ptr %devfn, metadata !4939, metadata !DIExpression()), !dbg !4970
  store i32 0, ptr %devfn, align 4, !dbg !4971
  br label %for.cond, !dbg !4971

for.cond:                                         ; preds = %for.inc, %if.then6
  %9 = load ptr, ptr %pdev.addr, align 8, !dbg !4973
  %dma_alias_mask7 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 24, !dbg !4973
  %10 = load ptr, ptr %dma_alias_mask7, align 8, !dbg !4973
  %11 = load i32, ptr %devfn, align 4, !dbg !4973
  %conv8 = zext i32 %11 to i64, !dbg !4973
  %call9 = call i64 @find_next_bit(ptr noundef %10, i64 noundef 256, i64 noundef %conv8) #9, !dbg !4973
  %conv10 = trunc i64 %call9 to i32, !dbg !4973
  store i32 %conv10, ptr %devfn, align 4, !dbg !4973
  %12 = load i32, ptr %devfn, align 4, !dbg !4973
  %cmp = icmp ult i32 %12, 256, !dbg !4973
  br i1 %cmp, label %for.body, label %for.end, !dbg !4971

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %fn.addr, align 8, !dbg !4975
  %14 = load ptr, ptr %pdev.addr, align 8, !dbg !4977
  %15 = load ptr, ptr %pdev.addr, align 8, !dbg !4978
  %bus12 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 1, !dbg !4978
  %16 = load ptr, ptr %bus12, align 8, !dbg !4978
  %number = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 12, !dbg !4978
  %17 = load i8, ptr %number, align 8, !dbg !4978
  %conv13 = zext i8 %17 to i16, !dbg !4978
  %conv14 = zext i16 %conv13 to i32, !dbg !4978
  %shl = shl i32 %conv14, 8, !dbg !4978
  %18 = load i32, ptr %devfn, align 4, !dbg !4978
  %or = or i32 %shl, %18, !dbg !4978
  %conv15 = trunc i32 %or to i16, !dbg !4978
  %19 = load ptr, ptr %data.addr, align 8, !dbg !4979
  %call16 = call i32 %13(ptr noundef %14, i16 noundef zeroext %conv15, ptr noundef %19) #9, !dbg !4975
  store i32 %call16, ptr %ret, align 4, !dbg !4980
  %20 = load i32, ptr %ret, align 4, !dbg !4981
  %tobool17 = icmp ne i32 %20, 0, !dbg !4981
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4983

if.then18:                                        ; preds = %for.body
  %21 = load i32, ptr %ret, align 4, !dbg !4984
  store i32 %21, ptr %retval, align 4, !dbg !4985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4985

if.end19:                                         ; preds = %for.body
  br label %for.inc, !dbg !4986

for.inc:                                          ; preds = %if.end19
  %22 = load i32, ptr %devfn, align 4, !dbg !4973
  %inc = add i32 %22, 1, !dbg !4973
  store i32 %inc, ptr %devfn, align 4, !dbg !4973
  br label %for.cond, !dbg !4973, !llvm.loop !4987

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4991
  br label %cleanup, !dbg !4991

cleanup:                                          ; preds = %for.end, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %devfn) #8, !dbg !4991
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup81 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end20, !dbg !4992

if.end20:                                         ; preds = %cleanup.cont, %if.end
  %23 = load ptr, ptr %pdev.addr, align 8, !dbg !4993
  %bus21 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 1, !dbg !4994
  %24 = load ptr, ptr %bus21, align 8, !dbg !4994
  store ptr %24, ptr %bus, align 8, !dbg !4995
  br label %for.cond22, !dbg !4996

for.cond22:                                       ; preds = %for.inc79, %if.end20
  %25 = load ptr, ptr %bus, align 8, !dbg !4997
  %call23 = call zeroext i1 @pci_is_root_bus(ptr noundef %25) #9, !dbg !4998
  %lnot24 = xor i1 %call23, true, !dbg !4999
  br i1 %lnot24, label %for.body26, label %for.end80, !dbg !5000

for.body26:                                       ; preds = %for.cond22
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !5001
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4942, metadata !DIExpression()), !dbg !5002
  %26 = load ptr, ptr %bus, align 8, !dbg !5003
  %self = getelementptr inbounds %struct.pci_bus, ptr %26, i32 0, i32 4, !dbg !5005
  %27 = load ptr, ptr %self, align 8, !dbg !5005
  %tobool27 = icmp ne ptr %27, null, !dbg !5003
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !5006

if.then28:                                        ; preds = %for.body26
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5007

if.end29:                                         ; preds = %for.body26
  %28 = load ptr, ptr %bus, align 8, !dbg !5008
  %self30 = getelementptr inbounds %struct.pci_bus, ptr %28, i32 0, i32 4, !dbg !5009
  %29 = load ptr, ptr %self30, align 8, !dbg !5009
  store ptr %29, ptr %tmp, align 8, !dbg !5010
  %30 = load ptr, ptr %tmp, align 8, !dbg !5011
  %dev_flags = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44, !dbg !5013
  %31 = load i16, ptr %dev_flags, align 2, !dbg !5013
  %conv31 = zext i16 %31 to i32, !dbg !5011
  %and = and i32 %conv31, 512, !dbg !5014
  %tobool32 = icmp ne i32 %and, 0, !dbg !5014
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5015

if.then33:                                        ; preds = %if.end29
  %32 = load i32, ptr %ret, align 4, !dbg !5016
  store i32 %32, ptr %retval, align 4, !dbg !5017
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5017

if.end34:                                         ; preds = %if.end29
  %33 = load ptr, ptr %tmp, align 8, !dbg !5018
  %call35 = call zeroext i1 @pci_is_pcie(ptr noundef %33) #9, !dbg !5020
  br i1 %call35, label %if.then36, label %if.else, !dbg !5021

if.then36:                                        ; preds = %if.end34
  %34 = load ptr, ptr %tmp, align 8, !dbg !5022
  %call37 = call i32 @pci_pcie_type(ptr noundef %34) #9, !dbg !5024
  switch i32 %call37, label %sw.epilog [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb38
    i32 8, label %sw.bb49
  ], !dbg !5025

sw.bb:                                            ; preds = %if.then36, %if.then36, %if.then36
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5026

sw.bb38:                                          ; preds = %if.then36
  %35 = load ptr, ptr %fn.addr, align 8, !dbg !5028
  %36 = load ptr, ptr %tmp, align 8, !dbg !5029
  %37 = load ptr, ptr %tmp, align 8, !dbg !5030
  %subordinate = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 2, !dbg !5030
  %38 = load ptr, ptr %subordinate, align 8, !dbg !5030
  %number39 = getelementptr inbounds %struct.pci_bus, ptr %38, i32 0, i32 12, !dbg !5030
  %39 = load i8, ptr %number39, align 8, !dbg !5030
  %conv40 = zext i8 %39 to i16, !dbg !5030
  %conv41 = zext i16 %conv40 to i32, !dbg !5030
  %shl42 = shl i32 %conv41, 8, !dbg !5030
  %or43 = or i32 %shl42, 0, !dbg !5030
  %conv44 = trunc i32 %or43 to i16, !dbg !5030
  %40 = load ptr, ptr %data.addr, align 8, !dbg !5031
  %call45 = call i32 %35(ptr noundef %36, i16 noundef zeroext %conv44, ptr noundef %40) #9, !dbg !5028
  store i32 %call45, ptr %ret, align 4, !dbg !5032
  %41 = load i32, ptr %ret, align 4, !dbg !5033
  %tobool46 = icmp ne i32 %41, 0, !dbg !5033
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !5035

if.then47:                                        ; preds = %sw.bb38
  %42 = load i32, ptr %ret, align 4, !dbg !5036
  store i32 %42, ptr %retval, align 4, !dbg !5037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5037

if.end48:                                         ; preds = %sw.bb38
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5038

sw.bb49:                                          ; preds = %if.then36
  %43 = load ptr, ptr %fn.addr, align 8, !dbg !5039
  %44 = load ptr, ptr %tmp, align 8, !dbg !5040
  %45 = load ptr, ptr %tmp, align 8, !dbg !5041
  %call50 = call zeroext i16 @pci_dev_id(ptr noundef %45) #9, !dbg !5042
  %46 = load ptr, ptr %data.addr, align 8, !dbg !5043
  %call51 = call i32 %43(ptr noundef %44, i16 noundef zeroext %call50, ptr noundef %46) #9, !dbg !5039
  store i32 %call51, ptr %ret, align 4, !dbg !5044
  %47 = load i32, ptr %ret, align 4, !dbg !5045
  %tobool52 = icmp ne i32 %47, 0, !dbg !5045
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !5047

if.then53:                                        ; preds = %sw.bb49
  %48 = load i32, ptr %ret, align 4, !dbg !5048
  store i32 %48, ptr %retval, align 4, !dbg !5049
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5049

if.end54:                                         ; preds = %sw.bb49
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5050

sw.epilog:                                        ; preds = %if.then36
  br label %if.end75, !dbg !5051

if.else:                                          ; preds = %if.end34
  %49 = load ptr, ptr %tmp, align 8, !dbg !5052
  %dev_flags55 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44, !dbg !5055
  %50 = load i16, ptr %dev_flags55, align 2, !dbg !5055
  %conv56 = zext i16 %50 to i32, !dbg !5052
  %and57 = and i32 %conv56, 32, !dbg !5056
  %tobool58 = icmp ne i32 %and57, 0, !dbg !5056
  br i1 %tobool58, label %if.then59, label %if.else68, !dbg !5057

if.then59:                                        ; preds = %if.else
  %51 = load ptr, ptr %fn.addr, align 8, !dbg !5058
  %52 = load ptr, ptr %tmp, align 8, !dbg !5059
  %53 = load ptr, ptr %tmp, align 8, !dbg !5060
  %subordinate60 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 2, !dbg !5060
  %54 = load ptr, ptr %subordinate60, align 8, !dbg !5060
  %number61 = getelementptr inbounds %struct.pci_bus, ptr %54, i32 0, i32 12, !dbg !5060
  %55 = load i8, ptr %number61, align 8, !dbg !5060
  %conv62 = zext i8 %55 to i16, !dbg !5060
  %conv63 = zext i16 %conv62 to i32, !dbg !5060
  %shl64 = shl i32 %conv63, 8, !dbg !5060
  %or65 = or i32 %shl64, 0, !dbg !5060
  %conv66 = trunc i32 %or65 to i16, !dbg !5060
  %56 = load ptr, ptr %data.addr, align 8, !dbg !5061
  %call67 = call i32 %51(ptr noundef %52, i16 noundef zeroext %conv66, ptr noundef %56) #9, !dbg !5058
  store i32 %call67, ptr %ret, align 4, !dbg !5062
  br label %if.end71, !dbg !5063

if.else68:                                        ; preds = %if.else
  %57 = load ptr, ptr %fn.addr, align 8, !dbg !5064
  %58 = load ptr, ptr %tmp, align 8, !dbg !5065
  %59 = load ptr, ptr %tmp, align 8, !dbg !5066
  %call69 = call zeroext i16 @pci_dev_id(ptr noundef %59) #9, !dbg !5067
  %60 = load ptr, ptr %data.addr, align 8, !dbg !5068
  %call70 = call i32 %57(ptr noundef %58, i16 noundef zeroext %call69, ptr noundef %60) #9, !dbg !5064
  store i32 %call70, ptr %ret, align 4, !dbg !5069
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then59
  %61 = load i32, ptr %ret, align 4, !dbg !5070
  %tobool72 = icmp ne i32 %61, 0, !dbg !5070
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !5072

if.then73:                                        ; preds = %if.end71
  %62 = load i32, ptr %ret, align 4, !dbg !5073
  store i32 %62, ptr %retval, align 4, !dbg !5074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup76, !dbg !5074

if.end74:                                         ; preds = %if.end71
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %sw.epilog
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5075
  br label %cleanup76, !dbg !5075

cleanup76:                                        ; preds = %if.end75, %if.then73, %if.end54, %if.then53, %if.end48, %if.then47, %sw.bb, %if.then33, %if.then28
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !5075
  %cleanup.dest77 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest77, label %cleanup81 [
    i32 0, label %cleanup.cont78
    i32 7, label %for.inc79
  ]

cleanup.cont78:                                   ; preds = %cleanup76
  br label %for.inc79, !dbg !5076

for.inc79:                                        ; preds = %cleanup.cont78, %cleanup76
  %63 = load ptr, ptr %bus, align 8, !dbg !5077
  %parent = getelementptr inbounds %struct.pci_bus, ptr %63, i32 0, i32 1, !dbg !5078
  %64 = load ptr, ptr %parent, align 8, !dbg !5078
  store ptr %64, ptr %bus, align 8, !dbg !5079
  br label %for.cond22, !dbg !5080, !llvm.loop !5081

for.end80:                                        ; preds = %for.cond22
  %65 = load i32, ptr %ret, align 4, !dbg !5083
  store i32 %65, ptr %retval, align 4, !dbg !5084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup81, !dbg !5084

cleanup81:                                        ; preds = %for.end80, %cleanup76, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #8, !dbg !5085
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #8, !dbg !5085
  %66 = load i32, ptr %retval, align 4, !dbg !5085
  ret i32 %66, !dbg !5085
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5086 dso_local ptr @pci_real_dma_dev(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pci_dev_id(ptr noundef %dev) #4 align 16 !dbg !5089 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5093, metadata !DIExpression()), !dbg !5094
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5095
  %bus = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !5095
  %1 = load ptr, ptr %bus, align 8, !dbg !5095
  %number = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 12, !dbg !5095
  %2 = load i8, ptr %number, align 8, !dbg !5095
  %conv = zext i8 %2 to i16, !dbg !5095
  %conv1 = zext i16 %conv to i32, !dbg !5095
  %shl = shl i32 %conv1, 8, !dbg !5095
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5095
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 6, !dbg !5095
  %4 = load i32, ptr %devfn, align 8, !dbg !5095
  %or = or i32 %shl, %4, !dbg !5095
  %conv2 = trunc i32 %or to i16, !dbg !5095
  ret i16 %conv2, !dbg !5096
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !5097 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5103, metadata !DIExpression()), !dbg !5109
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5104, metadata !DIExpression()), !dbg !5110
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5105, metadata !DIExpression()), !dbg !5111
  %0 = load i64, ptr %size.addr, align 8, !dbg !5112
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5112
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5112

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5112
  %cmp = icmp ule i64 %2, 64, !dbg !5112
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5112

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5112
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5112
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5113

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8, !dbg !5114
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5106, metadata !DIExpression()), !dbg !5115
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5116
  %5 = load i64, ptr %size.addr, align 8, !dbg !5116
  %cmp3 = icmp uge i64 %4, %5, !dbg !5116
  %lnot = xor i1 %cmp3, true, !dbg !5116
  %lnot4 = xor i1 %lnot, true, !dbg !5116
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5116
  %conv = sext i32 %lnot.ext to i64, !dbg !5116
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5116
  %tobool = icmp ne i64 %expval, 0, !dbg !5116
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5118

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5119
  store i64 %6, ptr %retval, align 8, !dbg !5120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5120

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5121
  %8 = load i64, ptr %7, align 8, !dbg !5122
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5123
  %shl = shl i64 1, %9, !dbg !5123
  %sub = sub i64 -1, %shl, !dbg !5123
  %add = add i64 %sub, 1, !dbg !5123
  %10 = load i64, ptr %size.addr, align 8, !dbg !5123
  %sub6 = sub i64 %10, 1, !dbg !5123
  %sub7 = sub i64 63, %sub6, !dbg !5123
  %shr = lshr i64 -1, %sub7, !dbg !5123
  %and = and i64 %add, %shr, !dbg !5123
  %add8 = add i64 0, %and, !dbg !5123
  %and9 = and i64 %8, %add8, !dbg !5124
  store i64 %and9, ptr %val, align 8, !dbg !5125
  %11 = load i64, ptr %val, align 8, !dbg !5126
  %tobool10 = icmp ne i64 %11, 0, !dbg !5126
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5126

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5127
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5127
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5127

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5127
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5127
  %cast = trunc i64 %15 to i32, !dbg !5127
  %conv12 = sext i32 %cast to i64, !dbg !5127
  br label %cond.end, !dbg !5127

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5127
  %call = call i64 @variable__ffs(i64 noundef %16) #9, !dbg !5127
  br label %cond.end, !dbg !5127

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5127
  br label %cond.end14, !dbg !5126

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5128
  br label %cond.end14, !dbg !5126

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5126
  store i64 %cond15, ptr %retval, align 8, !dbg !5129
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5129

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8, !dbg !5130
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5131
  %19 = load i64, ptr %size.addr, align 8, !dbg !5132
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5133
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #9, !dbg !5134
  store i64 %call17, ptr %retval, align 8, !dbg !5135
  br label %return, !dbg !5135

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5136
  ret i64 %21, !dbg !5136
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_root_bus(ptr noundef %pbus) #4 align 16 !dbg !5137 {
entry:
  %pbus.addr = alloca ptr, align 8
  store ptr %pbus, ptr %pbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pbus.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  %0 = load ptr, ptr %pbus.addr, align 8, !dbg !5143
  %parent = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1, !dbg !5144
  %1 = load ptr, ptr %parent, align 8, !dbg !5144
  %tobool = icmp ne ptr %1, null, !dbg !5145
  %lnot = xor i1 %tobool, true, !dbg !5145
  ret i1 %lnot, !dbg !5146
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_pcie(ptr noundef %dev) #4 align 16 !dbg !5147 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5151, metadata !DIExpression()), !dbg !5152
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5153
  %call = call i32 @pci_pcie_cap(ptr noundef %0) #9, !dbg !5154
  %tobool = icmp ne i32 %call, 0, !dbg !5154
  ret i1 %tobool, !dbg !5155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_type(ptr noundef %dev) #4 align 16 !dbg !5156 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5164
  %call = call zeroext i16 @pcie_caps_reg(ptr noundef %0) #9, !dbg !5165
  %conv = zext i16 %call to i32, !dbg !5165
  %and = and i32 %conv, 240, !dbg !5166
  %shr = ashr i32 %and, 4, !dbg !5167
  ret i32 %shr, !dbg !5168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_find_bus(i32 noundef %domain, i32 noundef %busnr) #0 align 16 !dbg !5169 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca i32, align 4
  %busnr.addr = alloca i32, align 4
  %bus = alloca ptr, align 8
  %tmp_bus = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %domain, ptr %domain.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !5173, metadata !DIExpression()), !dbg !5177
  store i32 %busnr, ptr %busnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %busnr.addr, metadata !5174, metadata !DIExpression()), !dbg !5178
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #8, !dbg !5179
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5175, metadata !DIExpression()), !dbg !5180
  store ptr null, ptr %bus, align 8, !dbg !5180
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_bus) #8, !dbg !5181
  call void @llvm.dbg.declare(metadata ptr %tmp_bus, metadata !5176, metadata !DIExpression()), !dbg !5182
  br label %while.cond, !dbg !5183

while.cond:                                       ; preds = %if.end5, %if.then, %entry
  %0 = load ptr, ptr %bus, align 8, !dbg !5184
  %call = call ptr @pci_find_next_bus(ptr noundef %0) #9, !dbg !5185
  store ptr %call, ptr %bus, align 8, !dbg !5186
  %cmp = icmp ne ptr %call, null, !dbg !5187
  br i1 %cmp, label %while.body, label %while.end, !dbg !5183

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %bus, align 8, !dbg !5188
  %call1 = call i32 @pci_domain_nr(ptr noundef %1) #9, !dbg !5191
  %2 = load i32, ptr %domain.addr, align 4, !dbg !5192
  %cmp2 = icmp ne i32 %call1, %2, !dbg !5193
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5194

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !5195, !llvm.loop !5196

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %bus, align 8, !dbg !5198
  %4 = load i32, ptr %busnr.addr, align 4, !dbg !5199
  %conv = trunc i32 %4 to i8, !dbg !5199
  %call3 = call ptr @pci_do_find_bus(ptr noundef %3, i8 noundef zeroext %conv) #9, !dbg !5200
  store ptr %call3, ptr %tmp_bus, align 8, !dbg !5201
  %5 = load ptr, ptr %tmp_bus, align 8, !dbg !5202
  %tobool = icmp ne ptr %5, null, !dbg !5202
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !5204

if.then4:                                         ; preds = %if.end
  %6 = load ptr, ptr %tmp_bus, align 8, !dbg !5205
  store ptr %6, ptr %retval, align 8, !dbg !5206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5206

if.end5:                                          ; preds = %if.end
  br label %while.cond, !dbg !5183, !llvm.loop !5196

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !5207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5207

cleanup:                                          ; preds = %while.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_bus) #8, !dbg !5208
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #8, !dbg !5208
  %7 = load ptr, ptr %retval, align 8, !dbg !5208
  ret ptr %7, !dbg !5208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_find_next_bus(ptr noundef %from) #0 align 16 !dbg !5209 {
entry:
  %from.addr = alloca ptr, align 8
  %n = alloca ptr, align 8
  %b = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5215, metadata !DIExpression()), !dbg !5221
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #8, !dbg !5222
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5216, metadata !DIExpression()), !dbg !5223
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8, !dbg !5224
  call void @llvm.dbg.declare(metadata ptr %b, metadata !5217, metadata !DIExpression()), !dbg !5225
  store ptr null, ptr %b, align 8, !dbg !5225
  call void @down_read(ptr noundef @pci_bus_sem) #9, !dbg !5226
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5227
  %tobool = icmp ne ptr %0, null, !dbg !5227
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5227

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %from.addr, align 8, !dbg !5228
  %node = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 0, !dbg !5229
  %next = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !5230
  %2 = load ptr, ptr %next, align 8, !dbg !5230
  br label %cond.end, !dbg !5227

cond.false:                                       ; preds = %entry
  %3 = load ptr, ptr @pci_root_buses, align 8, !dbg !5231
  br label %cond.end, !dbg !5227

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ %3, %cond.false ], !dbg !5227
  store ptr %cond, ptr %n, align 8, !dbg !5232
  %4 = load ptr, ptr %n, align 8, !dbg !5233
  %cmp = icmp ne ptr %4, @pci_root_buses, !dbg !5234
  br i1 %cmp, label %if.then, label %if.end, !dbg !5235

if.then:                                          ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5236
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5218, metadata !DIExpression()), !dbg !5236
  %5 = load ptr, ptr %n, align 8, !dbg !5236
  store ptr %5, ptr %__mptr, align 8, !dbg !5236
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5236
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !5236
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5236
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5237
  %7 = load ptr, ptr %tmp, align 8, !dbg !5236
  store ptr %7, ptr %b, align 8, !dbg !5238
  br label %if.end, !dbg !5239

if.end:                                           ; preds = %if.then, %cond.end
  call void @up_read(ptr noundef @pci_bus_sem) #9, !dbg !5240
  %8 = load ptr, ptr %b, align 8, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #8, !dbg !5242
  ret ptr %8, !dbg !5243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_domain_nr(ptr noundef %bus) #4 align 16 !dbg !5244 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5249
  %call = call ptr @to_pci_sysdata(ptr noundef %0) #9, !dbg !5250
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %call, i32 0, i32 0, !dbg !5251
  %1 = load i32, ptr %domain, align 8, !dbg !5251
  ret i32 %1, !dbg !5252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_do_find_bus(ptr noundef %bus, i8 noundef zeroext %busnr) #0 align 16 !dbg !5253 {
entry:
  %retval = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %busnr.addr = alloca i8, align 1
  %child = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5257, metadata !DIExpression()), !dbg !5267
  store i8 %busnr, ptr %busnr.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %busnr.addr, metadata !5258, metadata !DIExpression()), !dbg !5268
  call void @llvm.lifetime.start.p0(i64 8, ptr %child) #8, !dbg !5269
  call void @llvm.dbg.declare(metadata ptr %child, metadata !5259, metadata !DIExpression()), !dbg !5270
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #8, !dbg !5271
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !5260, metadata !DIExpression()), !dbg !5272
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5273
  %number = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 12, !dbg !5275
  %1 = load i8, ptr %number, align 8, !dbg !5275
  %conv = zext i8 %1 to i32, !dbg !5273
  %2 = load i8, ptr %busnr.addr, align 1, !dbg !5276
  %conv1 = zext i8 %2 to i32, !dbg !5276
  %cmp = icmp eq i32 %conv, %conv1, !dbg !5277
  br i1 %cmp, label %if.then, label %if.end, !dbg !5278

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %bus.addr, align 8, !dbg !5279
  store ptr %3, ptr %retval, align 8, !dbg !5280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5280

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5261, metadata !DIExpression()), !dbg !5281
  %4 = load ptr, ptr %bus.addr, align 8, !dbg !5281
  %children = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 2, !dbg !5281
  %next = getelementptr inbounds %struct.list_head, ptr %children, i32 0, i32 0, !dbg !5281
  %5 = load ptr, ptr %next, align 8, !dbg !5281
  store ptr %5, ptr %__mptr, align 8, !dbg !5281
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5281
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !5281
  store ptr %add.ptr, ptr %tmp3, align 8, !dbg !5281
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5282
  %7 = load ptr, ptr %tmp3, align 8, !dbg !5281
  store ptr %7, ptr %tmp, align 8, !dbg !5282
  br label %for.cond, !dbg !5282

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %tmp, align 8, !dbg !5283
  %node = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 0, !dbg !5283
  %9 = load ptr, ptr %bus.addr, align 8, !dbg !5283
  %children4 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 2, !dbg !5283
  %cmp5 = icmp eq ptr %node, %children4, !dbg !5283
  %lnot = xor i1 %cmp5, true, !dbg !5283
  br i1 %lnot, label %for.body, label %for.end, !dbg !5282

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %tmp, align 8, !dbg !5284
  %11 = load i8, ptr %busnr.addr, align 1, !dbg !5286
  %call = call ptr @pci_do_find_bus(ptr noundef %10, i8 noundef zeroext %11) #9, !dbg !5287
  store ptr %call, ptr %child, align 8, !dbg !5288
  %12 = load ptr, ptr %child, align 8, !dbg !5289
  %tobool = icmp ne ptr %12, null, !dbg !5289
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !5291

if.then7:                                         ; preds = %for.body
  %13 = load ptr, ptr %child, align 8, !dbg !5292
  store ptr %13, ptr %retval, align 8, !dbg !5293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5293

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !5294

for.inc:                                          ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #8, !dbg !5295
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !5264, metadata !DIExpression()), !dbg !5295
  %14 = load ptr, ptr %tmp, align 8, !dbg !5295
  %node10 = getelementptr inbounds %struct.pci_bus, ptr %14, i32 0, i32 0, !dbg !5295
  %next11 = getelementptr inbounds %struct.list_head, ptr %node10, i32 0, i32 0, !dbg !5295
  %15 = load ptr, ptr %next11, align 8, !dbg !5295
  store ptr %15, ptr %__mptr9, align 8, !dbg !5295
  %16 = load ptr, ptr %__mptr9, align 8, !dbg !5295
  %add.ptr13 = getelementptr i8, ptr %16, i64 0, !dbg !5295
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !5295
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #8, !dbg !5283
  %17 = load ptr, ptr %tmp12, align 8, !dbg !5295
  store ptr %17, ptr %tmp, align 8, !dbg !5283
  br label %for.cond, !dbg !5283, !llvm.loop !5296

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5298

cleanup:                                          ; preds = %for.end, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #8, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 8, ptr %child) #8, !dbg !5299
  %18 = load ptr, ptr %retval, align 8, !dbg !5299
  ret ptr %18, !dbg !5299
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5300 dso_local void @down_read(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5304 dso_local void @up_read(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_get_slot(ptr noundef %bus, i32 noundef %devfn) #0 align 16 !dbg !5305 {
entry:
  %bus.addr = alloca ptr, align 8
  %devfn.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5309, metadata !DIExpression()), !dbg !5319
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5310, metadata !DIExpression()), !dbg !5320
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !5321
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5311, metadata !DIExpression()), !dbg !5322
  call void @down_read(ptr noundef @pci_bus_sem) #9, !dbg !5323
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5312, metadata !DIExpression()), !dbg !5324
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5324
  %devices = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 3, !dbg !5324
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5324
  %1 = load ptr, ptr %next, align 8, !dbg !5324
  store ptr %1, ptr %__mptr, align 8, !dbg !5324
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5324
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5324
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5324
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5325
  %3 = load ptr, ptr %tmp, align 8, !dbg !5324
  store ptr %3, ptr %dev, align 8, !dbg !5325
  br label %for.cond, !dbg !5325

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !5326
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 0, !dbg !5326
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !5326
  %devices1 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 3, !dbg !5326
  %cmp = icmp eq ptr %bus_list, %devices1, !dbg !5326
  %lnot = xor i1 %cmp, true, !dbg !5326
  br i1 %lnot, label %for.body, label %for.end, !dbg !5325

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dev, align 8, !dbg !5327
  %devfn2 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 6, !dbg !5330
  %7 = load i32, ptr %devfn2, align 8, !dbg !5330
  %8 = load i32, ptr %devfn.addr, align 4, !dbg !5331
  %cmp3 = icmp eq i32 %7, %8, !dbg !5332
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5333

if.then:                                          ; preds = %for.body
  br label %out, !dbg !5334

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5335

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #8, !dbg !5336
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5315, metadata !DIExpression()), !dbg !5336
  %9 = load ptr, ptr %dev, align 8, !dbg !5336
  %bus_list5 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 0, !dbg !5336
  %next6 = getelementptr inbounds %struct.list_head, ptr %bus_list5, i32 0, i32 0, !dbg !5336
  %10 = load ptr, ptr %next6, align 8, !dbg !5336
  store ptr %10, ptr %__mptr4, align 8, !dbg !5336
  %11 = load ptr, ptr %__mptr4, align 8, !dbg !5336
  %add.ptr8 = getelementptr i8, ptr %11, i64 0, !dbg !5336
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #8, !dbg !5326
  %12 = load ptr, ptr %tmp7, align 8, !dbg !5336
  store ptr %12, ptr %dev, align 8, !dbg !5326
  br label %for.cond, !dbg !5326, !llvm.loop !5337

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %dev, align 8, !dbg !5339
  br label %out, !dbg !5340

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !5318), !dbg !5341
  %13 = load ptr, ptr %dev, align 8, !dbg !5342
  %call = call ptr @pci_dev_get(ptr noundef %13) #9, !dbg !5343
  call void @up_read(ptr noundef @pci_bus_sem) #9, !dbg !5344
  %14 = load ptr, ptr %dev, align 8, !dbg !5345
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !5346
  ret ptr %14, !dbg !5347
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5348 dso_local ptr @pci_dev_get(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_get_domain_bus_and_slot(i32 noundef %domain, i32 noundef %bus, i32 noundef %devfn) #0 align 16 !dbg !5349 {
entry:
  %retval = alloca ptr, align 8
  %domain.addr = alloca i32, align 4
  %bus.addr = alloca i32, align 4
  %devfn.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %domain, ptr %domain.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %domain.addr, metadata !5353, metadata !DIExpression()), !dbg !5357
  store i32 %bus, ptr %bus.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5354, metadata !DIExpression()), !dbg !5358
  store i32 %devfn, ptr %devfn.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devfn.addr, metadata !5355, metadata !DIExpression()), !dbg !5359
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !5360
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5356, metadata !DIExpression()), !dbg !5361
  store ptr null, ptr %dev, align 8, !dbg !5361
  br label %while.cond, !dbg !5362

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %dev, align 8, !dbg !5362
  %call = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %0) #9, !dbg !5362
  store ptr %call, ptr %dev, align 8, !dbg !5362
  %cmp = icmp ne ptr %call, null, !dbg !5362
  br i1 %cmp, label %while.body, label %while.end, !dbg !5362

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %dev, align 8, !dbg !5363
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !5366
  %2 = load ptr, ptr %bus1, align 8, !dbg !5366
  %call2 = call i32 @pci_domain_nr(ptr noundef %2) #9, !dbg !5367
  %3 = load i32, ptr %domain.addr, align 4, !dbg !5368
  %cmp3 = icmp eq i32 %call2, %3, !dbg !5369
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !5370

land.lhs.true:                                    ; preds = %while.body
  %4 = load ptr, ptr %dev, align 8, !dbg !5371
  %bus4 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 1, !dbg !5372
  %5 = load ptr, ptr %bus4, align 8, !dbg !5372
  %number = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 12, !dbg !5373
  %6 = load i8, ptr %number, align 8, !dbg !5373
  %conv = zext i8 %6 to i32, !dbg !5371
  %7 = load i32, ptr %bus.addr, align 4, !dbg !5374
  %cmp5 = icmp eq i32 %conv, %7, !dbg !5375
  br i1 %cmp5, label %land.lhs.true7, label %if.end, !dbg !5376

land.lhs.true7:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %dev, align 8, !dbg !5377
  %devfn8 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 6, !dbg !5378
  %9 = load i32, ptr %devfn8, align 8, !dbg !5378
  %10 = load i32, ptr %devfn.addr, align 4, !dbg !5379
  %cmp9 = icmp eq i32 %9, %10, !dbg !5380
  br i1 %cmp9, label %if.then, label %if.end, !dbg !5381

if.then:                                          ; preds = %land.lhs.true7
  %11 = load ptr, ptr %dev, align 8, !dbg !5382
  store ptr %11, ptr %retval, align 8, !dbg !5383
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5383

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true, %while.body
  br label %while.cond, !dbg !5362, !llvm.loop !5384

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !5386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5386

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !5387
  %12 = load ptr, ptr %retval, align 8, !dbg !5387
  ret ptr %12, !dbg !5387
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_get_device(i32 noundef %vendor, i32 noundef %device, ptr noundef %from) #0 align 16 !dbg !5388 {
entry:
  %vendor.addr = alloca i32, align 4
  %device.addr = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  store i32 %vendor, ptr %vendor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !5392, metadata !DIExpression()), !dbg !5395
  store i32 %device, ptr %device.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5393, metadata !DIExpression()), !dbg !5396
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5394, metadata !DIExpression()), !dbg !5397
  %0 = load i32, ptr %vendor.addr, align 4, !dbg !5398
  %1 = load i32, ptr %device.addr, align 4, !dbg !5399
  %2 = load ptr, ptr %from.addr, align 8, !dbg !5400
  %call = call ptr @pci_get_subsys(i32 noundef %0, i32 noundef %1, i32 noundef -1, i32 noundef -1, ptr noundef %2) #9, !dbg !5401
  ret ptr %call, !dbg !5402
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_get_subsys(i32 noundef %vendor, i32 noundef %device, i32 noundef %ss_vendor, i32 noundef %ss_device, ptr noundef %from) #0 align 16 !dbg !5403 {
entry:
  %vendor.addr = alloca i32, align 4
  %device.addr = alloca i32, align 4
  %ss_vendor.addr = alloca i32, align 4
  %ss_device.addr = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  %id = alloca %struct.pci_device_id, align 8
  store i32 %vendor, ptr %vendor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vendor.addr, metadata !5407, metadata !DIExpression()), !dbg !5413
  store i32 %device, ptr %device.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5408, metadata !DIExpression()), !dbg !5414
  store i32 %ss_vendor, ptr %ss_vendor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ss_vendor.addr, metadata !5409, metadata !DIExpression()), !dbg !5415
  store i32 %ss_device, ptr %ss_device.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ss_device.addr, metadata !5410, metadata !DIExpression()), !dbg !5416
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5411, metadata !DIExpression()), !dbg !5417
  call void @llvm.lifetime.start.p0(i64 40, ptr %id) #8, !dbg !5418
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5412, metadata !DIExpression()), !dbg !5419
  %vendor1 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 0, !dbg !5420
  %0 = load i32, ptr %vendor.addr, align 4, !dbg !5421
  store i32 %0, ptr %vendor1, align 8, !dbg !5420
  %device2 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1, !dbg !5420
  %1 = load i32, ptr %device.addr, align 4, !dbg !5422
  store i32 %1, ptr %device2, align 4, !dbg !5420
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 2, !dbg !5420
  %2 = load i32, ptr %ss_vendor.addr, align 4, !dbg !5423
  store i32 %2, ptr %subvendor, align 8, !dbg !5420
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3, !dbg !5420
  %3 = load i32, ptr %ss_device.addr, align 4, !dbg !5424
  store i32 %3, ptr %subdevice, align 4, !dbg !5420
  %class = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 4, !dbg !5420
  store i32 0, ptr %class, align 8, !dbg !5420
  %class_mask = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 5, !dbg !5420
  store i32 0, ptr %class_mask, align 4, !dbg !5420
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6, !dbg !5420
  store i64 0, ptr %driver_data, align 8, !dbg !5420
  %override_only = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 7, !dbg !5420
  store i32 0, ptr %override_only, align 8, !dbg !5420
  %4 = load ptr, ptr %from.addr, align 8, !dbg !5425
  %call = call ptr @pci_get_dev_by_id(ptr noundef %id, ptr noundef %4) #9, !dbg !5426
  call void @llvm.lifetime.end.p0(i64 40, ptr %id) #8, !dbg !5427
  ret ptr %call, !dbg !5428
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_get_dev_by_id(ptr noundef %id, ptr noundef %from) #0 align 16 !dbg !5429 {
entry:
  %id.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %dev_start = alloca ptr, align 8
  %pdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5433, metadata !DIExpression()), !dbg !5441
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5434, metadata !DIExpression()), !dbg !5442
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #8, !dbg !5443
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5435, metadata !DIExpression()), !dbg !5444
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_start) #8, !dbg !5445
  call void @llvm.dbg.declare(metadata ptr %dev_start, metadata !5436, metadata !DIExpression()), !dbg !5446
  store ptr null, ptr %dev_start, align 8, !dbg !5446
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #8, !dbg !5447
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !5437, metadata !DIExpression()), !dbg !5448
  store ptr null, ptr %pdev, align 8, !dbg !5448
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5449
  %tobool = icmp ne ptr %0, null, !dbg !5449
  br i1 %tobool, label %if.then, label %if.end, !dbg !5451

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %from.addr, align 8, !dbg !5452
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 37, !dbg !5453
  store ptr %dev1, ptr %dev_start, align 8, !dbg !5454
  br label %if.end, !dbg !5455

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %dev_start, align 8, !dbg !5456
  %3 = load ptr, ptr %id.addr, align 8, !dbg !5457
  %call = call ptr @bus_find_device(ptr noundef @pci_bus_type, ptr noundef %2, ptr noundef %3, ptr noundef @match_pci_dev_by_id) #9, !dbg !5458
  store ptr %call, ptr %dev, align 8, !dbg !5459
  %4 = load ptr, ptr %dev, align 8, !dbg !5460
  %tobool2 = icmp ne ptr %4, null, !dbg !5460
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5461

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5438, metadata !DIExpression()), !dbg !5462
  %5 = load ptr, ptr %dev, align 8, !dbg !5462
  store ptr %5, ptr %__mptr, align 8, !dbg !5462
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5462
  %add.ptr = getelementptr i8, ptr %6, i64 -184, !dbg !5462
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5462
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5463
  %7 = load ptr, ptr %tmp, align 8, !dbg !5462
  store ptr %7, ptr %pdev, align 8, !dbg !5464
  br label %if.end4, !dbg !5465

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %from.addr, align 8, !dbg !5466
  call void @pci_dev_put(ptr noundef %8) #9, !dbg !5467
  %9 = load ptr, ptr %pdev, align 8, !dbg !5468
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #8, !dbg !5469
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_start) #8, !dbg !5469
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #8, !dbg !5469
  ret ptr %9, !dbg !5470
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_get_class(i32 noundef %class, ptr noundef %from) #0 align 16 !dbg !5471 {
entry:
  %class.addr = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  %id = alloca %struct.pci_device_id, align 8
  store i32 %class, ptr %class.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !5475, metadata !DIExpression()), !dbg !5478
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5476, metadata !DIExpression()), !dbg !5479
  call void @llvm.lifetime.start.p0(i64 40, ptr %id) #8, !dbg !5480
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5477, metadata !DIExpression()), !dbg !5481
  %vendor = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 0, !dbg !5482
  store i32 -1, ptr %vendor, align 8, !dbg !5482
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1, !dbg !5482
  store i32 -1, ptr %device, align 4, !dbg !5482
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 2, !dbg !5482
  store i32 -1, ptr %subvendor, align 8, !dbg !5482
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3, !dbg !5482
  store i32 -1, ptr %subdevice, align 4, !dbg !5482
  %class1 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 4, !dbg !5482
  %0 = load i32, ptr %class.addr, align 4, !dbg !5483
  store i32 %0, ptr %class1, align 8, !dbg !5482
  %class_mask = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 5, !dbg !5482
  store i32 -1, ptr %class_mask, align 4, !dbg !5482
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6, !dbg !5482
  store i64 0, ptr %driver_data, align 8, !dbg !5482
  %override_only = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 7, !dbg !5482
  store i32 0, ptr %override_only, align 8, !dbg !5482
  %1 = load ptr, ptr %from.addr, align 8, !dbg !5484
  %call = call ptr @pci_get_dev_by_id(ptr noundef %id, ptr noundef %1) #9, !dbg !5485
  call void @llvm.lifetime.end.p0(i64 40, ptr %id) #8, !dbg !5486
  ret ptr %call, !dbg !5487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_get_base_class(i32 noundef %class, ptr noundef %from) #0 align 16 !dbg !5488 {
entry:
  %class.addr = alloca i32, align 4
  %from.addr = alloca ptr, align 8
  %id = alloca %struct.pci_device_id, align 8
  store i32 %class, ptr %class.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %class.addr, metadata !5490, metadata !DIExpression()), !dbg !5493
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5491, metadata !DIExpression()), !dbg !5494
  call void @llvm.lifetime.start.p0(i64 40, ptr %id) #8, !dbg !5495
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5492, metadata !DIExpression()), !dbg !5496
  %vendor = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 0, !dbg !5497
  store i32 -1, ptr %vendor, align 8, !dbg !5497
  %device = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 1, !dbg !5497
  store i32 -1, ptr %device, align 4, !dbg !5497
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 2, !dbg !5497
  store i32 -1, ptr %subvendor, align 8, !dbg !5497
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 3, !dbg !5497
  store i32 -1, ptr %subdevice, align 4, !dbg !5497
  %class1 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 4, !dbg !5497
  %0 = load i32, ptr %class.addr, align 4, !dbg !5498
  %shl = shl i32 %0, 16, !dbg !5499
  store i32 %shl, ptr %class1, align 8, !dbg !5497
  %class_mask = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 5, !dbg !5497
  store i32 16711680, ptr %class_mask, align 4, !dbg !5497
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6, !dbg !5497
  store i64 0, ptr %driver_data, align 8, !dbg !5497
  %override_only = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 7, !dbg !5497
  store i32 0, ptr %override_only, align 8, !dbg !5497
  %1 = load ptr, ptr %from.addr, align 8, !dbg !5500
  %call = call ptr @pci_get_dev_by_id(ptr noundef %id, ptr noundef %1) #9, !dbg !5501
  call void @llvm.lifetime.end.p0(i64 40, ptr %id) #8, !dbg !5502
  ret ptr %call, !dbg !5503
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_dev_present(ptr noundef %ids) #0 align 16 !dbg !5504 {
entry:
  %retval = alloca i32, align 4
  %ids.addr = alloca ptr, align 8
  %found = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ids, ptr %ids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ids.addr, metadata !5508, metadata !DIExpression()), !dbg !5510
  call void @llvm.lifetime.start.p0(i64 8, ptr %found) #8, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %found, metadata !5509, metadata !DIExpression()), !dbg !5512
  store ptr null, ptr %found, align 8, !dbg !5512
  br label %while.cond, !dbg !5513

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %ids.addr, align 8, !dbg !5514
  %vendor = getelementptr inbounds %struct.pci_device_id, ptr %0, i32 0, i32 0, !dbg !5515
  %1 = load i32, ptr %vendor, align 8, !dbg !5515
  %tobool = icmp ne i32 %1, 0, !dbg !5514
  br i1 %tobool, label %lor.end, label %lor.lhs.false, !dbg !5516

lor.lhs.false:                                    ; preds = %while.cond
  %2 = load ptr, ptr %ids.addr, align 8, !dbg !5517
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %2, i32 0, i32 2, !dbg !5518
  %3 = load i32, ptr %subvendor, align 8, !dbg !5518
  %tobool1 = icmp ne i32 %3, 0, !dbg !5517
  br i1 %tobool1, label %lor.end, label %lor.rhs, !dbg !5519

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %ids.addr, align 8, !dbg !5520
  %class_mask = getelementptr inbounds %struct.pci_device_id, ptr %4, i32 0, i32 5, !dbg !5521
  %5 = load i32, ptr %class_mask, align 4, !dbg !5521
  %tobool2 = icmp ne i32 %5, 0, !dbg !5519
  br label %lor.end, !dbg !5519

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %6 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %tobool2, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !5513

while.body:                                       ; preds = %lor.end
  %7 = load ptr, ptr %ids.addr, align 8, !dbg !5522
  %call = call ptr @pci_get_dev_by_id(ptr noundef %7, ptr noundef null) #9, !dbg !5524
  store ptr %call, ptr %found, align 8, !dbg !5525
  %8 = load ptr, ptr %found, align 8, !dbg !5526
  %tobool3 = icmp ne ptr %8, null, !dbg !5526
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5528

if.then:                                          ; preds = %while.body
  %9 = load ptr, ptr %found, align 8, !dbg !5529
  call void @pci_dev_put(ptr noundef %9) #9, !dbg !5531
  store i32 1, ptr %retval, align 4, !dbg !5532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5532

if.end:                                           ; preds = %while.body
  %10 = load ptr, ptr %ids.addr, align 8, !dbg !5533
  %incdec.ptr = getelementptr %struct.pci_device_id, ptr %10, i32 1, !dbg !5533
  store ptr %incdec.ptr, ptr %ids.addr, align 8, !dbg !5533
  br label %while.cond, !dbg !5513, !llvm.loop !5534

while.end:                                        ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !5536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5536

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %found) #8, !dbg !5537
  %11 = load i32, ptr %retval, align 4, !dbg !5537
  ret i32 %11, !dbg !5537
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5538 dso_local void @pci_dev_put(ptr noundef) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !5539 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5544, metadata !DIExpression()), !dbg !5545
  %0 = load i64, ptr %word.addr, align 8, !dbg !5546
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #10, !dbg !5547, !srcloc !5548
  store i64 %1, ptr %word.addr, align 8, !dbg !5547
  %2 = load i64, ptr %word.addr, align 8, !dbg !5549
  ret i64 %2, !dbg !5550
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5551 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_pcie_cap(ptr noundef %dev) #4 align 16 !dbg !5552 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5556
  %pcie_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 17, !dbg !5557
  %1 = load i8, ptr %pcie_cap, align 4, !dbg !5557
  %conv = zext i8 %1 to i32, !dbg !5556
  ret i32 %conv, !dbg !5558
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @pcie_caps_reg(ptr noundef %dev) #4 align 16 !dbg !5559 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5563, metadata !DIExpression()), !dbg !5564
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5565
  %pcie_flags_reg = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 23, !dbg !5566
  %1 = load i16, ptr %pcie_flags_reg, align 2, !dbg !5566
  ret i16 %1, !dbg !5567
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pci_sysdata(ptr noundef %bus) #4 align 16 !dbg !5568 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5582, metadata !DIExpression()), !dbg !5583
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !5584
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10, !dbg !5585
  %1 = load ptr, ptr %sysdata, align 8, !dbg !5585
  ret ptr %1, !dbg !5586
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5587 dso_local ptr @bus_find_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @match_pci_dev_by_id(ptr noundef %dev, ptr noundef %data) #0 align 16 !dbg !5593 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %pdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %id = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5595, metadata !DIExpression()), !dbg !5601
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5596, metadata !DIExpression()), !dbg !5602
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #8, !dbg !5603
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !5597, metadata !DIExpression()), !dbg !5604
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5605
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5598, metadata !DIExpression()), !dbg !5605
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5605
  store ptr %0, ptr %__mptr, align 8, !dbg !5605
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5605
  %add.ptr = getelementptr i8, ptr %1, i64 -184, !dbg !5605
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5605
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5606
  %2 = load ptr, ptr %tmp, align 8, !dbg !5605
  store ptr %2, ptr %pdev, align 8, !dbg !5604
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #8, !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5600, metadata !DIExpression()), !dbg !5608
  %3 = load ptr, ptr %data.addr, align 8, !dbg !5609
  store ptr %3, ptr %id, align 8, !dbg !5608
  %4 = load ptr, ptr %id, align 8, !dbg !5610
  %5 = load ptr, ptr %pdev, align 8, !dbg !5612
  %call = call ptr @pci_match_one_device(ptr noundef %4, ptr noundef %5) #9, !dbg !5613
  %tobool = icmp ne ptr %call, null, !dbg !5613
  br i1 %tobool, label %if.then, label %if.end, !dbg !5614

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !5615
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5615

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5616

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #8, !dbg !5617
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #8, !dbg !5617
  %6 = load i32, ptr %retval, align 4, !dbg !5617
  ret i32 %6, !dbg !5617
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_match_one_device(ptr noundef %id, ptr noundef %dev) #4 align 16 !dbg !5618 {
entry:
  %retval = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5622, metadata !DIExpression()), !dbg !5624
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5623, metadata !DIExpression()), !dbg !5625
  %0 = load ptr, ptr %id.addr, align 8, !dbg !5626
  %vendor = getelementptr inbounds %struct.pci_device_id, ptr %0, i32 0, i32 0, !dbg !5628
  %1 = load i32, ptr %vendor, align 8, !dbg !5628
  %cmp = icmp eq i32 %1, -1, !dbg !5629
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !5630

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %id.addr, align 8, !dbg !5631
  %vendor1 = getelementptr inbounds %struct.pci_device_id, ptr %2, i32 0, i32 0, !dbg !5632
  %3 = load i32, ptr %vendor1, align 8, !dbg !5632
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5633
  %vendor2 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 7, !dbg !5634
  %5 = load i16, ptr %vendor2, align 4, !dbg !5634
  %conv = zext i16 %5 to i32, !dbg !5633
  %cmp3 = icmp eq i32 %3, %conv, !dbg !5635
  br i1 %cmp3, label %land.lhs.true, label %if.end, !dbg !5636

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %id.addr, align 8, !dbg !5637
  %device = getelementptr inbounds %struct.pci_device_id, ptr %6, i32 0, i32 1, !dbg !5638
  %7 = load i32, ptr %device, align 4, !dbg !5638
  %cmp5 = icmp eq i32 %7, -1, !dbg !5639
  br i1 %cmp5, label %land.lhs.true13, label %lor.lhs.false7, !dbg !5640

lor.lhs.false7:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %id.addr, align 8, !dbg !5641
  %device8 = getelementptr inbounds %struct.pci_device_id, ptr %8, i32 0, i32 1, !dbg !5642
  %9 = load i32, ptr %device8, align 4, !dbg !5642
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5643
  %device9 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 8, !dbg !5644
  %11 = load i16, ptr %device9, align 2, !dbg !5644
  %conv10 = zext i16 %11 to i32, !dbg !5643
  %cmp11 = icmp eq i32 %9, %conv10, !dbg !5645
  br i1 %cmp11, label %land.lhs.true13, label %if.end, !dbg !5646

land.lhs.true13:                                  ; preds = %lor.lhs.false7, %land.lhs.true
  %12 = load ptr, ptr %id.addr, align 8, !dbg !5647
  %subvendor = getelementptr inbounds %struct.pci_device_id, ptr %12, i32 0, i32 2, !dbg !5648
  %13 = load i32, ptr %subvendor, align 8, !dbg !5648
  %cmp14 = icmp eq i32 %13, -1, !dbg !5649
  br i1 %cmp14, label %land.lhs.true21, label %lor.lhs.false16, !dbg !5650

lor.lhs.false16:                                  ; preds = %land.lhs.true13
  %14 = load ptr, ptr %id.addr, align 8, !dbg !5651
  %subvendor17 = getelementptr inbounds %struct.pci_device_id, ptr %14, i32 0, i32 2, !dbg !5652
  %15 = load i32, ptr %subvendor17, align 8, !dbg !5652
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !5653
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 9, !dbg !5654
  %17 = load i16, ptr %subsystem_vendor, align 8, !dbg !5654
  %conv18 = zext i16 %17 to i32, !dbg !5653
  %cmp19 = icmp eq i32 %15, %conv18, !dbg !5655
  br i1 %cmp19, label %land.lhs.true21, label %if.end, !dbg !5656

land.lhs.true21:                                  ; preds = %lor.lhs.false16, %land.lhs.true13
  %18 = load ptr, ptr %id.addr, align 8, !dbg !5657
  %subdevice = getelementptr inbounds %struct.pci_device_id, ptr %18, i32 0, i32 3, !dbg !5658
  %19 = load i32, ptr %subdevice, align 4, !dbg !5658
  %cmp22 = icmp eq i32 %19, -1, !dbg !5659
  br i1 %cmp22, label %land.lhs.true29, label %lor.lhs.false24, !dbg !5660

lor.lhs.false24:                                  ; preds = %land.lhs.true21
  %20 = load ptr, ptr %id.addr, align 8, !dbg !5661
  %subdevice25 = getelementptr inbounds %struct.pci_device_id, ptr %20, i32 0, i32 3, !dbg !5662
  %21 = load i32, ptr %subdevice25, align 4, !dbg !5662
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5663
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 10, !dbg !5664
  %23 = load i16, ptr %subsystem_device, align 2, !dbg !5664
  %conv26 = zext i16 %23 to i32, !dbg !5663
  %cmp27 = icmp eq i32 %21, %conv26, !dbg !5665
  br i1 %cmp27, label %land.lhs.true29, label %if.end, !dbg !5666

land.lhs.true29:                                  ; preds = %lor.lhs.false24, %land.lhs.true21
  %24 = load ptr, ptr %id.addr, align 8, !dbg !5667
  %class = getelementptr inbounds %struct.pci_device_id, ptr %24, i32 0, i32 4, !dbg !5668
  %25 = load i32, ptr %class, align 8, !dbg !5668
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5669
  %class30 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 11, !dbg !5670
  %27 = load i32, ptr %class30, align 4, !dbg !5670
  %xor = xor i32 %25, %27, !dbg !5671
  %28 = load ptr, ptr %id.addr, align 8, !dbg !5672
  %class_mask = getelementptr inbounds %struct.pci_device_id, ptr %28, i32 0, i32 5, !dbg !5673
  %29 = load i32, ptr %class_mask, align 4, !dbg !5673
  %and = and i32 %xor, %29, !dbg !5674
  %tobool = icmp ne i32 %and, 0, !dbg !5674
  br i1 %tobool, label %if.end, label %if.then, !dbg !5675

if.then:                                          ; preds = %land.lhs.true29
  %30 = load ptr, ptr %id.addr, align 8, !dbg !5676
  store ptr %30, ptr %retval, align 8, !dbg !5677
  br label %return, !dbg !5677

if.end:                                           ; preds = %land.lhs.true29, %lor.lhs.false24, %lor.lhs.false16, %lor.lhs.false7, %lor.lhs.false
  store ptr null, ptr %retval, align 8, !dbg !5678
  br label %return, !dbg !5678

return:                                           ; preds = %if.end, %if.then
  %31 = load ptr, ptr %retval, align 8, !dbg !5679
  ret ptr %31, !dbg !5679
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925}
!llvm.ident = !{!4926}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_bus_sem", scope: !2, file: !3, line: 17, type: !1283, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.search.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/search\22 -D KBUILD_BASENAME=\22search\22 -D KBUILD_MODNAME=\22search\22 -D __KBUILD_MODNAME=kmod_search -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/search.ll drivers/pci/search.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4899, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/search.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f334fc4e7ada32921da44396b2f4019")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_dev_flags", file: !142, line: 223, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155}
!144 = !DIEnumerator(name: "PCI_DEV_FLAGS_MSI_INTX_DISABLE_BUG", value: 1)
!145 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_D3", value: 2)
!146 = !DIEnumerator(name: "PCI_DEV_FLAGS_ASSIGNED", value: 4)
!147 = !DIEnumerator(name: "PCI_DEV_FLAGS_ACS_ENABLED_QUIRK", value: 8)
!148 = !DIEnumerator(name: "PCI_DEV_FLAG_PCIE_BRIDGE_ALIAS", value: 32)
!149 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_BUS_RESET", value: 64)
!150 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_PM_RESET", value: 128)
!151 = !DIEnumerator(name: "PCI_DEV_FLAGS_VPD_REF_F0", value: 256)
!152 = !DIEnumerator(name: "PCI_DEV_FLAGS_BRIDGE_XLATE_ROOT", value: 512)
!153 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_FLR_RESET", value: 1024)
!154 = !DIEnumerator(name: "PCI_DEV_FLAGS_NO_RELAXED_ORDERING", value: 2048)
!155 = !DIEnumerator(name: "PCI_DEV_FLAGS_HAS_MSI_MASKING", value: 4096)
!156 = !{!157, !162, !163, !177, !109, !330}
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !158, line: 19, baseType: !159)
!158 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !160, line: 24, baseType: !161)
!160 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!161 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !142, line: 647, size: 8256, elements: !165)
!165 = !{!166, !173, !174, !175, !176, !4851, !4852, !4854, !4855, !4856, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4890, !4891, !4893, !4894, !4895, !4896, !4897, !4898}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !164, file: !142, line: 648, baseType: !167, size: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !168, line: 190, size: 128, elements: !169)
!168 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!169 = !{!170, !172}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !168, line: 191, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !167, file: !168, line: 191, baseType: !171, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !164, file: !142, line: 649, baseType: !163, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !164, file: !142, line: 650, baseType: !167, size: 128, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !164, file: !142, line: 651, baseType: !167, size: 128, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !164, file: !142, line: 652, baseType: !177, size: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !142, line: 322, size: 16640, elements: !179)
!179 = !{!180, !181, !182, !183, !184, !188, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4698, !4699, !4700, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4790, !4791, !4792, !4794, !4795, !4797, !4798, !4799, !4800, !4806, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !178, file: !142, line: 323, baseType: !167, size: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !178, file: !142, line: 324, baseType: !163, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !178, file: !142, line: 325, baseType: !163, size: 64, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !178, file: !142, line: 327, baseType: !162, size: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !178, file: !142, line: 328, baseType: !185, size: 64, offset: 320)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !187, line: 131, flags: DIFlagFwdDecl)
!187 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !178, file: !142, line: 329, baseType: !189, size: 64, offset: 384)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !142, line: 76, size: 832, elements: !191)
!191 = !{!192, !193, !194, !197, !199}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !190, file: !142, line: 77, baseType: !163, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !190, file: !142, line: 78, baseType: !167, size: 128, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !190, file: !142, line: 79, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !142, line: 79, flags: DIFlagFwdDecl)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !190, file: !142, line: 80, baseType: !198, size: 8, offset: 256)
!198 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !190, file: !142, line: 81, baseType: !200, size: 512, offset: 320)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !201, line: 64, size: 512, elements: !202)
!201 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!202 = !{!203, !207, !208, !210, !293, !4020, !4123, !4128, !4129, !4130, !4131, !4132}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !200, file: !201, line: 65, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!206 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !200, file: !201, line: 66, baseType: !167, size: 128, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !200, file: !201, line: 67, baseType: !209, size: 64, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !200, file: !201, line: 68, baseType: !211, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !201, line: 168, size: 768, elements: !213)
!213 = !{!214, !215, !252, !253}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !212, file: !201, line: 169, baseType: !167, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !212, file: !201, line: 170, baseType: !216, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !217, line: 29, baseType: !218)
!217 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !217, line: 17, size: 32, elements: !219)
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !217, line: 18, baseType: !221, size: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !217, line: 18, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !221, file: !217, line: 19, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !225, line: 14, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !224, file: !225, line: 15, baseType: !228, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !229, line: 44, baseType: !230)
!229 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !229, line: 14, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !229, line: 15, baseType: !233, size: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !229, line: 15, size: 32, elements: !234)
!234 = !{!235, !240, !247}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !233, file: !229, line: 16, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !168, line: 174, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 172, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !237, file: !168, line: 173, baseType: !109, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !229, line: 24, baseType: !241, size: 16)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !229, line: 24, size: 16, elements: !242)
!242 = !{!243, !246}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !241, file: !229, line: 25, baseType: !244, size: 8)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !158, line: 17, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !160, line: 21, baseType: !198)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !241, file: !229, line: 26, baseType: !244, size: 8, offset: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !233, file: !229, line: 28, baseType: !248, size: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !233, file: !229, line: 28, size: 32, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !248, file: !229, line: 29, baseType: !157, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !248, file: !229, line: 30, baseType: !157, size: 16, offset: 16)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !212, file: !201, line: 171, baseType: !200, size: 512, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !212, file: !201, line: 172, baseType: !254, size: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !201, line: 133, size: 192, elements: !257)
!257 = !{!258, !265, !270}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !256, file: !201, line: 134, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!109, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !201, line: 135, baseType: !266, size: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!204, !263}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !256, file: !201, line: 136, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!109, !263, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !201, line: 125, size: 20736, elements: !277)
!277 = !{!278, !283, !287, !288, !292}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !276, file: !201, line: 126, baseType: !279, size: 192)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 192, elements: !281)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !276, file: !201, line: 127, baseType: !284, size: 4096, offset: 192)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !280, size: 4096, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !276, file: !201, line: 128, baseType: !109, size: 32, offset: 4288)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !276, file: !201, line: 129, baseType: !289, size: 16384, offset: 4320)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 16384, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 2048)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !276, file: !201, line: 130, baseType: !109, size: 32, offset: 20704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !200, file: !201, line: 69, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !201, line: 116, size: 384, elements: !297)
!297 = !{!298, !302, !331, !3982, !4010, !4014}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !296, file: !201, line: 117, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !209}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !296, file: !201, line: 118, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !306, line: 254, size: 128, elements: !307)
!306 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!307 = !{!308, !323}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !305, file: !306, line: 255, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!312, !209, !317, !280}
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !168, line: 66, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !314, line: 73, baseType: !315)
!314 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !314, line: 15, baseType: !316)
!316 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !306, line: 30, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !306, line: 31, baseType: !204, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !318, file: !306, line: 32, baseType: !322, size: 16, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !168, line: 24, baseType: !161)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !305, file: !306, line: 256, baseType: !324, size: 64, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!312, !209, !317, !204, !327}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !168, line: 61, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !314, line: 72, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !314, line: 16, baseType: !330)
!330 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !296, file: !201, line: 119, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !306, line: 84, size: 320, elements: !336)
!336 = !{!337, !338, !342, !3978, !3980}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !335, file: !306, line: 85, baseType: !204, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !335, file: !306, line: 86, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!322, !209, !317, !109}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !335, file: !306, line: 88, baseType: !343, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!322, !209, !346, !109}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !306, line: 175, size: 512, elements: !348)
!348 = !{!349, !350, !351, !352, !3969, !3973, !3974}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !347, file: !306, line: 176, baseType: !318, size: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !347, file: !306, line: 177, baseType: !327, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !347, file: !306, line: 178, baseType: !162, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !347, file: !306, line: 179, baseType: !353, size: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !358)
!358 = !{!359, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3963, !3964, !3965, !3966, !3967, !3968}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !357, file: !14, line: 473, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !362)
!362 = !{!363, !364, !365, !373, !374, !381, !382, !385, !386, !3742, !3743, !3744, !3745, !3746, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3786, !3789, !3790, !3791, !3800, !3801, !3802, !3803}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !361, file: !14, line: 642, baseType: !322, size: 16)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !361, file: !14, line: 643, baseType: !161, size: 16, offset: 16)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !361, file: !14, line: 644, baseType: !366, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !367, line: 23, baseType: !368)
!367 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 21, size: 32, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !368, file: !367, line: 22, baseType: !371, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !168, line: 37, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !314, line: 49, baseType: !7)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !361, file: !14, line: 645, baseType: !167, size: 128, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !361, file: !14, line: 646, baseType: !375, size: 32, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !367, line: 28, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 26, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !376, file: !367, line: 27, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !168, line: 38, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !314, line: 50, baseType: !7)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !361, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !361, file: !14, line: 650, baseType: !383, size: 64, offset: 256)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !361, file: !14, line: 651, baseType: !383, size: 64, offset: 320)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !361, file: !14, line: 654, baseType: !387, size: 64, offset: 384)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !390)
!390 = !{!391, !3570, !3580, !3584, !3588, !3592, !3596, !3600, !3604, !3608, !3612, !3613, !3617, !3621, !3658, !3687, !3691, !3697, !3701, !3705, !3709, !3713, !3717, !3723, !3727}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !389, file: !14, line: 1967, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!395, !360, !395, !7}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !397, line: 82, size: 1536, elements: !398)
!397 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!398 = !{!399, !400, !410, !418, !419, !439, !440, !444, !457, !3553, !3554, !3555, !3556, !3562, !3563, !3564}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !396, file: !397, line: 84, baseType: !7, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !396, file: !397, line: 85, baseType: !401, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !402, line: 275, baseType: !403)
!402 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !402, line: 275, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !403, file: !402, line: 275, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !402, line: 69, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !402, line: 64, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !407, file: !402, line: 65, baseType: !7, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !396, file: !397, line: 86, baseType: !411, size: 128, offset: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !412, line: 38, size: 128, elements: !413)
!412 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!413 = !{!414, !416}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !411, file: !412, line: 39, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !411, file: !412, line: 39, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !396, file: !397, line: 87, baseType: !395, size: 64, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !396, file: !397, line: 88, baseType: !420, size: 128, offset: 256)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !397, line: 49, size: 128, elements: !421)
!421 = !{!422, !436}
!422 = !DIDerivedType(tag: DW_TAG_member, scope: !420, file: !397, line: 50, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !397, line: 50, size: 64, elements: !424)
!424 = !{!425, !432}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !397, line: 51, baseType: !426, size: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !397, line: 51, size: 64, elements: !427)
!427 = !{!428, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !426, file: !397, line: 52, baseType: !429, size: 32)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !158, line: 21, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !160, line: 27, baseType: !7)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !426, file: !397, line: 52, baseType: !429, size: 32, offset: 32)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !423, file: !397, line: 54, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !158, line: 23, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !160, line: 31, baseType: !435)
!435 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !420, file: !397, line: 56, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !396, file: !397, line: 89, baseType: !360, size: 64, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !396, file: !397, line: 91, baseType: !441, size: 256, offset: 448)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !396, file: !397, line: 94, baseType: !445, size: 64, offset: 704)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !446, line: 25, size: 64, elements: !447)
!446 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, scope: !445, file: !446, line: 26, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !445, file: !446, line: 26, size: 64, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !449, file: !446, line: 28, baseType: !434, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !446, line: 30, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !449, file: !446, line: 30, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !453, file: !446, line: 31, baseType: !216, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !453, file: !446, line: 32, baseType: !109, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !396, file: !397, line: 95, baseType: !458, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !397, line: 128, size: 1024, align: 512, elements: !461)
!461 = !{!462, !466, !467, !474, !480, !484, !488, !492, !493, !497, !501, !3543, !3547}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !460, file: !397, line: 129, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!109, !395, !7}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !460, file: !397, line: 130, baseType: !463, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !460, file: !397, line: 131, baseType: !468, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!109, !471, !473}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !460, file: !397, line: 132, baseType: !475, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!109, !471, !7, !204, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !460, file: !397, line: 134, baseType: !481, size: 64, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!109, !471}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !460, file: !397, line: 135, baseType: !485, size: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!109, !395}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !460, file: !397, line: 136, baseType: !489, size: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !395}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !460, file: !397, line: 137, baseType: !489, size: 64, offset: 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !460, file: !397, line: 138, baseType: !494, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !395, !360}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !460, file: !397, line: 139, baseType: !498, size: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!280, !395, !280, !109}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !460, file: !397, line: 140, baseType: !502, size: 64, offset: 640)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!505, !3542}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !507, line: 70, size: 256, elements: !508)
!507 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!508 = !{!509, !510, !3538, !3539}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !506, file: !507, line: 71, baseType: !395, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !506, file: !507, line: 72, baseType: !511, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !513)
!513 = !{!514, !515, !518, !519, !520, !524, !1004, !1144, !1184, !1274, !1278, !1279, !1280, !1281, !1282, !1291, !1292, !1293, !1294, !1299, !1303, !1304, !1307, !1310, !1313, !1316, !1317, !1318, !1359, !3471, !3472, !3473, !3474, !3475, !3476, !3479, !3481, !3488, !3489, !3490, !3491, !3492, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !512, file: !14, line: 1191, baseType: !167, size: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !512, file: !14, line: 1192, baseType: !516, size: 32, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !168, line: 21, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !168, line: 18, baseType: !429)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !512, file: !14, line: 1193, baseType: !198, size: 8, offset: 160)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !512, file: !14, line: 1194, baseType: !330, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !512, file: !14, line: 1195, baseType: !521, size: 64, offset: 256)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !168, line: 52, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !314, line: 88, baseType: !523)
!523 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !512, file: !14, line: 1196, baseType: !525, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !527)
!527 = !{!528, !529, !530, !537, !541, !545, !549, !989, !990, !994, !996, !997, !998, !1000, !1001, !1002, !1003}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !526, file: !14, line: 2367, baseType: !204, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !526, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !526, file: !14, line: 2376, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!109, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !536, line: 32, flags: DIFlagFwdDecl)
!536 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !526, file: !14, line: 2377, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !526, file: !14, line: 2378, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!395, !525, !109, !204, !162}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !526, file: !14, line: 2380, baseType: !546, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !511}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !526, file: !14, line: 2381, baseType: !550, size: 64, offset: 384)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !552)
!552 = !{!553, !554, !555, !559, !581, !607, !608, !609, !610, !614, !619, !620, !640, !696, !697, !698, !699, !700, !703, !704, !705, !713, !717, !744, !765, !766, !767, !768, !777, !800, !801, !804, !807, !808, !809, !810, !811, !812, !813, !818, !819, !947, !955, !956, !957, !959, !963, !964, !968, !969, !970, !971, !973, !974, !975, !982, !983, !984, !988}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !551, file: !6, line: 403, baseType: !5, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !551, file: !6, line: 406, baseType: !167, size: 128, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !551, file: !6, line: 409, baseType: !556, size: 448, offset: 192)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 448, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 56)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !551, file: !6, line: 417, baseType: !560, size: 768, offset: 640)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !561)
!561 = !{!562, !563, !564, !565, !568}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !560, file: !6, line: 46, baseType: !200, size: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !560, file: !6, line: 47, baseType: !550, size: 64, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !560, file: !6, line: 48, baseType: !209, size: 64, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !560, file: !6, line: 49, baseType: !566, size: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !560, file: !6, line: 50, baseType: !569, size: 64, offset: 704)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !571, line: 26, size: 256, elements: !572)
!571 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!572 = !{!573, !574}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !570, file: !571, line: 27, baseType: !7, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !570, file: !571, line: 28, baseType: !575, size: 192, offset: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !576, line: 43, size: 192, elements: !577)
!576 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!577 = !{!578, !580}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !575, file: !576, line: 44, baseType: !579, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !225, line: 23, baseType: !224)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !575, file: !576, line: 45, baseType: !167, size: 128, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !551, file: !6, line: 418, baseType: !582, size: 64, offset: 1408)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !584)
!584 = !{!585, !586, !591, !595, !599, !603}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !583, file: !6, line: 54, baseType: !318, size: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !583, file: !6, line: 55, baseType: !587, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!312, !582, !590, !280}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !583, file: !6, line: 57, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!312, !582, !590, !204, !327}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !583, file: !6, line: 59, baseType: !596, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{null, !550, !204}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !583, file: !6, line: 60, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!109, !550}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !583, file: !6, line: 61, baseType: !604, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !550}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !551, file: !6, line: 419, baseType: !204, size: 64, offset: 1472)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !551, file: !6, line: 420, baseType: !204, size: 64, offset: 1536)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !551, file: !6, line: 421, baseType: !209, size: 64, offset: 1600)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !551, file: !6, line: 424, baseType: !611, size: 64, offset: 1664)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !613)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !551, file: !6, line: 425, baseType: !615, size: 64, offset: 1728)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !158, line: 20, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !160, line: 26, baseType: !109)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !551, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !551, file: !6, line: 435, baseType: !621, size: 256, offset: 1856)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !622, line: 66, size: 256, elements: !623)
!622 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!623 = !{!624, !633, !634, !639}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !621, file: !622, line: 67, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !626, line: 13, baseType: !627)
!626 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !168, line: 181, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !168, line: 179, size: 64, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !628, file: !168, line: 180, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !158, line: 22, baseType: !632)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !160, line: 30, baseType: !523)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !621, file: !622, line: 68, baseType: !579, size: 32, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !621, file: !622, line: 70, baseType: !635, size: 32, offset: 96)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !636, line: 15, size: 32, elements: !637)
!636 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !635, file: !636, line: 20, baseType: !236, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !621, file: !622, line: 72, baseType: !167, size: 128, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !551, file: !6, line: 437, baseType: !641, size: 64, offset: 2112)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !643, line: 69, size: 320, elements: !644)
!643 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!644 = !{!645, !646, !647, !667, !669, !673, !674}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !642, file: !643, line: 70, baseType: !204, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !642, file: !643, line: 71, baseType: !550, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !642, file: !643, line: 72, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !643, line: 47, size: 256, elements: !651)
!651 = !{!652, !653, !659, !663}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !643, line: 49, baseType: !7, size: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !650, file: !643, line: 51, baseType: !654, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!109, !204, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !650, file: !643, line: 53, baseType: !660, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!109, !280, !657}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !650, file: !643, line: 55, baseType: !664, size: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !162}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !642, file: !643, line: 73, baseType: !668, size: 16, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !642, file: !643, line: 74, baseType: !670, size: 8, offset: 208)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !158, line: 16, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !160, line: 20, baseType: !672)
!672 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !643, line: 75, baseType: !244, size: 8, offset: 216)
!674 = !DIDerivedType(tag: DW_TAG_member, scope: !642, file: !643, line: 76, baseType: !675, size: 64, offset: 256)
!675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !642, file: !643, line: 76, size: 64, elements: !676)
!676 = !{!677, !678, !685}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !675, file: !643, line: 77, baseType: !162, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !675, file: !643, line: 78, baseType: !679, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !643, line: 86, size: 128, elements: !682)
!682 = !{!683, !684}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !681, file: !643, line: 87, baseType: !7, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !681, file: !643, line: 88, baseType: !280, size: 64, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !675, file: !643, line: 79, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !643, line: 92, size: 256, elements: !689)
!689 = !{!690, !691, !692, !694, !695}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !688, file: !643, line: 94, baseType: !7, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !688, file: !643, line: 95, baseType: !7, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !688, file: !643, line: 96, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !688, file: !643, line: 97, baseType: !648, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !688, file: !643, line: 98, baseType: !162, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !551, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !551, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !551, file: !6, line: 442, baseType: !611, size: 64, offset: 2240)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !551, file: !6, line: 443, baseType: !615, size: 64, offset: 2304)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !551, file: !6, line: 444, baseType: !701, size: 8, offset: 2368)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !168, line: 35, baseType: !702)
!702 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !551, file: !6, line: 451, baseType: !701, size: 8, offset: 2376)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !551, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !551, file: !6, line: 455, baseType: !706, size: 64, offset: 2432)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !708, line: 23, size: 96, elements: !709)
!708 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!709 = !{!710, !711, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !707, file: !708, line: 24, baseType: !109, size: 32)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !707, file: !708, line: 24, baseType: !109, size: 32, offset: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !707, file: !708, line: 24, baseType: !109, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !551, file: !6, line: 458, baseType: !714, size: 64, offset: 2496)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!109}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !551, file: !6, line: 460, baseType: !718, size: 4032, align: 512, offset: 2560)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 4032, elements: !742)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !720)
!720 = !{!721, !722, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !719, file: !6, line: 363, baseType: !162, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !719, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !719, file: !6, line: 367, baseType: !724, size: 448, offset: 128)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !724, file: !6, line: 320, baseType: !550, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !724, file: !6, line: 321, baseType: !728, size: 384, offset: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !729, line: 40, size: 384, elements: !730)
!729 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !729, line: 41, baseType: !732, size: 384, align: 64)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 384, align: 64, elements: !740)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !734, line: 5, size: 192, align: 64, elements: !735)
!734 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!735 = !{!736, !737, !739}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !733, file: !734, line: 6, baseType: !330, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !733, file: !734, line: 7, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !733, file: !734, line: 8, baseType: !738, size: 64, offset: 128)
!740 = !{!741}
!741 = !DISubrange(count: 2)
!742 = !{!743}
!743 = !DISubrange(count: 7)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !551, file: !6, line: 463, baseType: !745, size: 192, offset: 6592)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !746, line: 8, size: 192, elements: !747)
!746 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!747 = !{!748, !749, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !745, file: !746, line: 10, baseType: !7, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !745, file: !746, line: 11, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !745, file: !746, line: 12, baseType: !752, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !754, line: 59, size: 48, elements: !755)
!754 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!755 = !{!756, !760, !761, !762, !763, !764}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !753, file: !754, line: 60, baseType: !757, size: 16)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !158, line: 18, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !160, line: 23, baseType: !759)
!759 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !753, file: !754, line: 61, baseType: !757, size: 16, offset: 16)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !753, file: !754, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !753, file: !754, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !753, file: !754, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !753, file: !754, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !551, file: !6, line: 465, baseType: !330, size: 64, offset: 6784)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !551, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !551, file: !6, line: 470, baseType: !167, size: 128, offset: 6912)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !551, file: !6, line: 471, baseType: !769, size: 64, offset: 7040)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !771, line: 33, size: 96, elements: !772)
!771 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!772 = !{!773, !774, !775, !776}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !770, file: !771, line: 37, baseType: !109, size: 32)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !770, file: !771, line: 43, baseType: !109, size: 32, offset: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !770, file: !771, line: 45, baseType: !161, size: 16, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !771, line: 47, baseType: !161, size: 16, offset: 80)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !551, file: !6, line: 476, baseType: !778, size: 64, offset: 7104)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !780)
!780 = !{!781, !797, !798, !799}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !779, file: !6, line: 379, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !784, line: 204, baseType: !785)
!784 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !784, line: 197, size: 192, elements: !786)
!786 = !{!787, !789, !790, !791, !793, !795}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !785, file: !784, line: 198, baseType: !788, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !784, line: 21, baseType: !430)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !785, file: !784, line: 199, baseType: !198, size: 8, offset: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !785, file: !784, line: 200, baseType: !198, size: 8, offset: 40)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !785, file: !784, line: 201, baseType: !792, size: 16, offset: 48)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !784, line: 17, baseType: !159)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !785, file: !784, line: 202, baseType: !794, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !784, line: 16, baseType: !434)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !785, file: !784, line: 203, baseType: !796, size: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !784, line: 22, baseType: !434)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !779, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !779, file: !6, line: 381, baseType: !280, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !779, file: !6, line: 382, baseType: !280, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !551, file: !6, line: 477, baseType: !779, size: 256, offset: 7168)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !551, file: !6, line: 480, baseType: !802, size: 64, offset: 7424)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !551, file: !6, line: 483, baseType: !805, size: 64, offset: 7488)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !551, file: !6, line: 488, baseType: !280, size: 64, offset: 7552)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !551, file: !6, line: 492, baseType: !162, size: 64, offset: 7616)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !551, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !551, file: !6, line: 495, baseType: !162, size: 64, offset: 7744)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !551, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !551, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !551, file: !6, line: 500, baseType: !814, size: 64, offset: 7872)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !816, line: 45, baseType: !817)
!816 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !551, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !551, file: !6, line: 504, baseType: !820, size: 64, offset: 8000)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !823, line: 96, size: 192, elements: !824)
!823 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!824 = !{!825, !826, !907, !911}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !822, file: !823, line: 97, baseType: !7, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !822, file: !823, line: 98, baseType: !827, size: 64, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !823, line: 24, size: 3072, elements: !829)
!829 = !{!830, !832, !833, !834, !835, !859, !860, !861, !862, !880, !892, !893, !904, !905, !906}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !828, file: !823, line: 26, baseType: !831, size: 128)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 128, elements: !740)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !828, file: !823, line: 27, baseType: !831, size: 128, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !828, file: !823, line: 28, baseType: !109, size: 32, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !828, file: !823, line: 31, baseType: !216, size: 32, align: 512, offset: 512)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !828, file: !823, line: 32, baseType: !836, size: 960, offset: 576)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !837, line: 206, size: 960, elements: !838)
!837 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!838 = !{!839, !848, !853, !855, !856, !858}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !836, file: !837, line: 207, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !168, line: 232, size: 128, align: 64, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !841, file: !168, line: 233, baseType: !840, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !841, file: !168, line: 234, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !840}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !836, file: !837, line: 208, baseType: !849, size: 256, offset: 64)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !850, size: 256, elements: !851)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!851 = !{!852}
!852 = !DISubrange(count: 4)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !836, file: !837, line: 209, baseType: !854, size: 256, offset: 320)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !851)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !836, file: !837, line: 213, baseType: !316, size: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !836, file: !837, line: 215, baseType: !857, size: 256, offset: 640)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !851)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !837, line: 216, baseType: !244, size: 8, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !828, file: !823, line: 33, baseType: !330, size: 64, offset: 1536)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !828, file: !823, line: 34, baseType: !330, size: 64, offset: 1600)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !828, file: !823, line: 35, baseType: !701, size: 8, offset: 1664)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !828, file: !823, line: 36, baseType: !863, size: 320, offset: 1728)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !864, line: 11, size: 320, elements: !865)
!864 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!865 = !{!866, !873, !874, !879}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !863, file: !864, line: 16, baseType: !867, size: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !168, line: 198, size: 128, elements: !868)
!868 = !{!869, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !867, file: !168, line: 199, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !867, file: !168, line: 199, baseType: !872, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !863, file: !864, line: 17, baseType: !330, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !863, file: !864, line: 18, baseType: !875, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{null, !878}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !863, file: !864, line: 19, baseType: !429, size: 32, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !828, file: !823, line: 37, baseType: !881, size: 256, offset: 2048)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !882, line: 98, size: 256, elements: !883)
!882 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !881, file: !882, line: 99, baseType: !625, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !881, file: !882, line: 100, baseType: !167, size: 128, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !881, file: !882, line: 101, baseType: !887, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !882, line: 21, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{null, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !828, file: !823, line: 38, baseType: !841, size: 128, align: 64, offset: 2304)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !828, file: !823, line: 39, baseType: !894, size: 64, offset: 2432)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !823, line: 49, size: 768, elements: !896)
!896 = !{!897, !898, !899, !900, !901, !902, !903}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !895, file: !823, line: 50, baseType: !216, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !895, file: !823, line: 51, baseType: !854, size: 256, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !895, file: !823, line: 53, baseType: !854, size: 256, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !895, file: !823, line: 54, baseType: !330, size: 64, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !895, file: !823, line: 55, baseType: !894, size: 64, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !895, file: !823, line: 56, baseType: !109, size: 32, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !895, file: !823, line: 57, baseType: !109, size: 32, offset: 736)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !828, file: !823, line: 40, baseType: !330, size: 64, offset: 2496)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !828, file: !823, line: 42, baseType: !109, size: 32, offset: 2560)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !828, file: !823, line: 43, baseType: !821, size: 64, offset: 2624)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !822, file: !823, line: 99, baseType: !908, offset: 128)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !909, line: 211, elements: !910)
!909 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!910 = !{}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !822, file: !823, line: 100, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !823, line: 63, size: 3008, elements: !914)
!914 = !{!915, !916, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !946}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !913, file: !823, line: 64, baseType: !894, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !913, file: !823, line: 65, baseType: !917, size: 192, offset: 64)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !894, size: 192, elements: !281)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !913, file: !823, line: 67, baseType: !109, size: 32, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !913, file: !823, line: 68, baseType: !621, size: 256, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !913, file: !823, line: 69, baseType: !216, size: 32, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !913, file: !823, line: 70, baseType: !621, size: 256, offset: 640)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !913, file: !823, line: 71, baseType: !330, size: 64, offset: 896)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !913, file: !823, line: 72, baseType: !330, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !913, file: !823, line: 73, baseType: !330, size: 64, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !913, file: !823, line: 74, baseType: !330, size: 64, offset: 1088)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !913, file: !823, line: 75, baseType: !330, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !913, file: !823, line: 76, baseType: !330, size: 64, offset: 1216)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !913, file: !823, line: 77, baseType: !330, size: 64, offset: 1280)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !913, file: !823, line: 78, baseType: !330, size: 64, offset: 1344)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !913, file: !823, line: 79, baseType: !701, size: 8, offset: 1408)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !913, file: !823, line: 80, baseType: !330, size: 64, offset: 1472)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !913, file: !823, line: 81, baseType: !621, size: 256, offset: 1536)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !913, file: !823, line: 82, baseType: !570, size: 256, offset: 1792)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !913, file: !823, line: 84, baseType: !236, size: 32, offset: 2048)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !913, file: !823, line: 87, baseType: !330, size: 64, offset: 2112)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !913, file: !823, line: 88, baseType: !330, size: 64, offset: 2176)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !913, file: !823, line: 89, baseType: !938, size: 704, offset: 2240)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !882, line: 111, size: 704, elements: !939)
!939 = !{!940, !941, !942, !945}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !938, file: !882, line: 112, baseType: !881, size: 256)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !938, file: !882, line: 113, baseType: !863, size: 320, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !938, file: !882, line: 116, baseType: !943, size: 64, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !882, line: 18, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !938, file: !882, line: 117, baseType: !109, size: 32, offset: 640)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !913, file: !823, line: 90, baseType: !821, size: 64, offset: 2944)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !551, file: !6, line: 515, baseType: !948, size: 64, offset: 8064)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !950, line: 117, size: 128, elements: !951)
!950 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!951 = !{!952, !953, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !949, file: !950, line: 118, baseType: !617, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !949, file: !950, line: 119, baseType: !617, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !949, file: !950, line: 120, baseType: !316, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !551, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !551, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !551, file: !6, line: 520, baseType: !958, size: 64, offset: 8192)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !551, file: !6, line: 523, baseType: !960, size: 64, offset: 8256)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !551, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !551, file: !6, line: 525, baseType: !965, size: 64, offset: 8384)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !551, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !551, file: !6, line: 533, baseType: !162, size: 64, offset: 8512)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !551, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !551, file: !6, line: 535, baseType: !972, size: 64, offset: 8640)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !551, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !551, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !551, file: !6, line: 540, baseType: !976, size: 64, offset: 8768)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !978, line: 32, size: 64, elements: !979)
!978 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !977, file: !978, line: 33, baseType: !617, size: 32)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !977, file: !978, line: 34, baseType: !617, size: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !551, file: !6, line: 563, baseType: !167, size: 128, offset: 8832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !551, file: !6, line: 565, baseType: !167, size: 128, offset: 8960)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !551, file: !6, line: 568, baseType: !985, size: 64, offset: 9088)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{null}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !551, file: !6, line: 570, baseType: !236, size: 32, offset: 9152)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !526, file: !14, line: 2382, baseType: !525, size: 64, offset: 448)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !526, file: !14, line: 2383, baseType: !991, size: 64, offset: 512)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !168, line: 194, size: 64, elements: !992)
!992 = !{!993}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !991, file: !168, line: 195, baseType: !870, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !526, file: !14, line: 2385, baseType: !995, offset: 576)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !909, line: 206, elements: !910)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !526, file: !14, line: 2386, baseType: !995, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !526, file: !14, line: 2387, baseType: !995, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !526, file: !14, line: 2388, baseType: !999, offset: 576)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !995, elements: !281)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !526, file: !14, line: 2390, baseType: !995, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !526, file: !14, line: 2391, baseType: !995, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !526, file: !14, line: 2392, baseType: !995, offset: 576)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !526, file: !14, line: 2393, baseType: !995, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !512, file: !14, line: 1197, baseType: !1005, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1007)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1008)
!1008 = !{!1009, !1013, !1017, !1018, !1022, !1028, !1032, !1033, !1034, !1038, !1042, !1046, !1047, !1048, !1054, !1058, !1059, !1066, !1067, !1068, !1069, !1073, !1077, !1126, !1142, !1143}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1007, file: !14, line: 2058, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!360, !511}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1007, file: !14, line: 2059, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !360}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1007, file: !14, line: 2060, baseType: !1014, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1007, file: !14, line: 2062, baseType: !1019, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !360, !109}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1007, file: !14, line: 2063, baseType: !1023, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!109, !360, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1007, file: !14, line: 2064, baseType: !1029, size: 64, offset: 320)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!109, !360}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1007, file: !14, line: 2065, baseType: !1014, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1007, file: !14, line: 2066, baseType: !546, size: 64, offset: 448)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1007, file: !14, line: 2067, baseType: !1035, size: 64, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!109, !511, !109}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1007, file: !14, line: 2068, baseType: !1039, size: 64, offset: 576)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!109, !511, !13}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1007, file: !14, line: 2069, baseType: !1043, size: 64, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!109, !511}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1007, file: !14, line: 2070, baseType: !1039, size: 64, offset: 704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1007, file: !14, line: 2071, baseType: !1043, size: 64, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1007, file: !14, line: 2072, baseType: !1049, size: 64, offset: 832)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!109, !395, !1052}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1007, file: !14, line: 2073, baseType: !1055, size: 64, offset: 896)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!109, !511, !750, !280}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1007, file: !14, line: 2074, baseType: !546, size: 64, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1007, file: !14, line: 2076, baseType: !1060, size: 64, offset: 1024)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!109, !1063, !395}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1065, line: 66, flags: DIFlagFwdDecl)
!1065 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1007, file: !14, line: 2077, baseType: !1060, size: 64, offset: 1088)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1007, file: !14, line: 2078, baseType: !1060, size: 64, offset: 1152)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1007, file: !14, line: 2079, baseType: !1060, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1007, file: !14, line: 2081, baseType: !1070, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!312, !511, !109, !280, !327, !521}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1007, file: !14, line: 2082, baseType: !1074, size: 64, offset: 1344)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!312, !511, !109, !204, !327, !521}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1007, file: !14, line: 2083, baseType: !1078, size: 64, offset: 1408)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!1081, !360}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1109, !1110, !1111}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1083, file: !19, line: 297, baseType: !867, size: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1083, file: !19, line: 298, baseType: !167, size: 128, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1083, file: !19, line: 299, baseType: !167, size: 128, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1083, file: !19, line: 300, baseType: !167, size: 128, offset: 384)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1083, file: !19, line: 301, baseType: !621, size: 256, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1083, file: !19, line: 302, baseType: !216, size: 32, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1083, file: !19, line: 303, baseType: !236, size: 32, offset: 800)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1083, file: !19, line: 304, baseType: !511, size: 64, offset: 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1083, file: !19, line: 305, baseType: !1094, size: 64, offset: 896)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1095)
!1095 = !{!1096, !1108}
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !19, line: 69, baseType: !1097, size: 32)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !19, line: 69, size: 32, elements: !1098)
!1098 = !{!1099, !1100, !1101}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1097, file: !19, line: 70, baseType: !366, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1097, file: !19, line: 71, baseType: !375, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1097, file: !19, line: 72, baseType: !1102, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1103, line: 24, baseType: !1104)
!1103 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1103, line: 22, size: 32, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1104, file: !1103, line: 23, baseType: !1107, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1103, line: 20, baseType: !372)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1094, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1083, file: !19, line: 306, baseType: !521, size: 64, offset: 960)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1083, file: !19, line: 307, baseType: !330, size: 64, offset: 1024)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1083, file: !19, line: 308, baseType: !1112, size: 576, offset: 1088)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1113)
!1113 = !{!1114, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1125}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1112, file: !19, line: 206, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !523)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1112, file: !19, line: 207, baseType: !1115, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1112, file: !19, line: 208, baseType: !1115, size: 64, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1112, file: !19, line: 209, baseType: !1115, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1112, file: !19, line: 210, baseType: !1115, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1112, file: !19, line: 211, baseType: !1115, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1112, file: !19, line: 212, baseType: !1115, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1112, file: !19, line: 213, baseType: !1123, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1124, line: 8, baseType: !632)
!1124 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1112, file: !19, line: 214, baseType: !1123, size: 64, offset: 512)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1007, file: !14, line: 2085, baseType: !1127, size: 64, offset: 1472)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!316, !511, !1130}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1132, line: 15, size: 256, elements: !1133)
!1132 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1133 = !{!1134, !1136, !1137, !1138, !1139}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1131, file: !1132, line: 16, baseType: !1135, size: 32)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !168, line: 154, baseType: !7)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1131, file: !1132, line: 19, baseType: !109, size: 32, offset: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1131, file: !1132, line: 26, baseType: !330, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1131, file: !1132, line: 33, baseType: !330, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1131, file: !1132, line: 36, baseType: !1140, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1007, file: !14, line: 2087, baseType: !1127, size: 64, offset: 1536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1007, file: !14, line: 2089, baseType: !546, size: 64, offset: 1600)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !512, file: !14, line: 1198, baseType: !1145, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1148)
!1148 = !{!1149, !1153, !1157, !1161, !1162, !1163, !1164, !1165, !1170, !1175, !1179}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1147, file: !19, line: 325, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!109, !1082}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1147, file: !19, line: 326, baseType: !1154, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1082, !511, !109}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1147, file: !19, line: 327, baseType: !1158, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1082}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1147, file: !19, line: 328, baseType: !1150, size: 64, offset: 192)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1147, file: !19, line: 329, baseType: !1150, size: 64, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1147, file: !19, line: 330, baseType: !1150, size: 64, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1147, file: !19, line: 331, baseType: !1035, size: 64, offset: 384)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1147, file: !19, line: 334, baseType: !1166, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1169, !360}
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1147, file: !19, line: 335, baseType: !1171, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!109, !360, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1147, file: !19, line: 337, baseType: !1176, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!109, !360, !1169}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1147, file: !19, line: 339, baseType: !1180, size: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!109, !511, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !512, file: !14, line: 1199, baseType: !1185, size: 64, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1188)
!1188 = !{!1189, !1200, !1201, !1205, !1206, !1207, !1222, !1245, !1249, !1250, !1273}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1187, file: !19, line: 431, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!109, !511, !109, !109, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1196, line: 8, size: 128, elements: !1197)
!1196 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1195, file: !1196, line: 9, baseType: !505, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1195, file: !1196, line: 10, baseType: !395, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1187, file: !19, line: 432, baseType: !1035, size: 64, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1187, file: !19, line: 433, baseType: !1202, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!109, !511, !7}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1187, file: !19, line: 434, baseType: !1202, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1187, file: !19, line: 435, baseType: !1035, size: 64, offset: 256)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1187, file: !19, line: 436, baseType: !1208, size: 64, offset: 320)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!109, !511, !109, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1212, file: !19, line: 418, baseType: !109, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1212, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1212, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1212, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1212, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1212, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1212, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1212, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1187, file: !19, line: 437, baseType: !1223, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!109, !511, !1094, !1226}
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1227, file: !19, line: 346, baseType: !109, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1227, file: !19, line: 347, baseType: !433, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1227, file: !19, line: 348, baseType: !433, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1227, file: !19, line: 349, baseType: !433, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1227, file: !19, line: 350, baseType: !433, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1227, file: !19, line: 351, baseType: !433, size: 64, offset: 320)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1227, file: !19, line: 352, baseType: !433, size: 64, offset: 384)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1227, file: !19, line: 353, baseType: !631, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1227, file: !19, line: 355, baseType: !631, size: 64, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1227, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1227, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1227, file: !19, line: 358, baseType: !433, size: 64, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1227, file: !19, line: 359, baseType: !433, size: 64, offset: 704)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1227, file: !19, line: 360, baseType: !433, size: 64, offset: 768)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1227, file: !19, line: 361, baseType: !631, size: 64, offset: 832)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1227, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1187, file: !19, line: 438, baseType: !1246, size: 64, offset: 448)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!109, !511, !1183, !1226}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1187, file: !19, line: 440, baseType: !1223, size: 64, offset: 512)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1187, file: !19, line: 441, baseType: !1251, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!109, !511, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1256)
!1256 = !{!1257, !1258}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1255, file: !19, line: 412, baseType: !7, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1255, file: !19, line: 413, baseType: !1259, size: 1344, offset: 64)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 1344, elements: !281)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1261)
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1272}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1260, file: !19, line: 398, baseType: !7, size: 32)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1260, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1260, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1260, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1260, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1260, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1260, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1260, file: !19, line: 406, baseType: !435, size: 64, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1260, file: !19, line: 407, baseType: !1271, size: 64, offset: 320)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !168, line: 132, baseType: !433)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1260, file: !19, line: 408, baseType: !1271, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1187, file: !19, line: 442, baseType: !1202, size: 64, offset: 640)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !512, file: !14, line: 1200, baseType: !1275, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !512, file: !14, line: 1201, baseType: !330, size: 64, offset: 640)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !512, file: !14, line: 1202, baseType: !330, size: 64, offset: 704)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !512, file: !14, line: 1203, baseType: !330, size: 64, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !512, file: !14, line: 1204, baseType: !395, size: 64, offset: 832)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !512, file: !14, line: 1205, baseType: !1283, size: 320, offset: 896)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1284, line: 48, size: 320, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1285 = !{!1286, !1287, !1288, !1289, !1290}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1283, file: !1284, line: 49, baseType: !625, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1283, file: !1284, line: 55, baseType: !625, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1283, file: !1284, line: 57, baseType: !635, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1283, file: !1284, line: 59, baseType: !579, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1283, file: !1284, line: 60, baseType: !167, size: 128, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !512, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !512, file: !14, line: 1207, baseType: !236, size: 32, offset: 1248)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !512, file: !14, line: 1209, baseType: !162, size: 64, offset: 1280)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !512, file: !14, line: 1211, baseType: !1295, size: 64, offset: 1344)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !512, file: !14, line: 1223, baseType: !1300, size: 64, offset: 1408)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !412, line: 34, size: 64, elements: !1301)
!1301 = !{!1302}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1300, file: !412, line: 35, baseType: !415, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !512, file: !14, line: 1224, baseType: !167, size: 128, offset: 1472)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !512, file: !14, line: 1225, baseType: !1305, size: 64, offset: 1600)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !512, file: !14, line: 1226, baseType: !1308, size: 64, offset: 1664)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !512, file: !14, line: 1227, baseType: !1311, size: 64, offset: 1728)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !512, file: !14, line: 1228, baseType: !1314, size: 64, offset: 1792)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !512, file: !14, line: 1229, baseType: !867, size: 128, offset: 1856)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !512, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !512, file: !14, line: 1231, baseType: !1319, size: 2496, offset: 2048)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1325, !1357}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !19, line: 522, baseType: !7, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1319, file: !19, line: 523, baseType: !1283, size: 320, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1319, file: !19, line: 524, baseType: !1324, size: 192, offset: 384)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 192, elements: !281)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1319, file: !19, line: 525, baseType: !1326, size: 1728, offset: 576)
!1326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 1728, elements: !281)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1328)
!1328 = !{!1329, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1327, file: !19, line: 223, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1332)
!1332 = !{!1333, !1334, !1347, !1348}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1331, file: !19, line: 446, baseType: !109, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1331, file: !19, line: 447, baseType: !1335, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1337, file: !19, line: 313, baseType: !1035, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1337, file: !19, line: 314, baseType: !1035, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1337, file: !19, line: 315, baseType: !1035, size: 64, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1337, file: !19, line: 316, baseType: !1035, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1337, file: !19, line: 317, baseType: !1150, size: 64, offset: 256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1337, file: !19, line: 318, baseType: !1150, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1337, file: !19, line: 319, baseType: !1150, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1337, file: !19, line: 320, baseType: !1180, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1331, file: !19, line: 448, baseType: !550, size: 64, offset: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1331, file: !19, line: 449, baseType: !1330, size: 64, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1327, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1327, file: !19, line: 226, baseType: !167, size: 128, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1327, file: !19, line: 227, baseType: !330, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1327, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1327, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1327, file: !19, line: 230, baseType: !1115, size: 64, offset: 384)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1327, file: !19, line: 231, baseType: !1115, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1327, file: !19, line: 232, baseType: !162, size: 64, offset: 512)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1319, file: !19, line: 526, baseType: !1358, size: 192, offset: 2304)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 192, elements: !281)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !512, file: !14, line: 1233, baseType: !1360, size: 2368, offset: 4544)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1360, file: !14, line: 1185, baseType: !161, size: 16)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1360, file: !14, line: 1186, baseType: !161, size: 16, offset: 16)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1360, file: !14, line: 1187, baseType: !1365, size: 2304, offset: 64)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, size: 2304, elements: !281)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1367, line: 12, size: 768, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1368 = !{!1369, !1383, !1384, !3469, !3470}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1366, file: !1367, line: 13, baseType: !1370, size: 384)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1371, line: 17, size: 384, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1372 = !{!1373, !1374, !1375, !1382}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1370, file: !1371, line: 18, baseType: !109, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1370, file: !1371, line: 19, baseType: !109, size: 32, offset: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1370, file: !1371, line: 20, baseType: !1376, size: 192, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1377, line: 41, baseType: !1378)
!1377 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1377, line: 37, size: 192, elements: !1379)
!1379 = !{!1380, !1381}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1378, file: !1377, line: 38, baseType: !216, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1378, file: !1377, line: 39, baseType: !167, size: 128, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1370, file: !1371, line: 22, baseType: !841, size: 128, align: 64, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1366, file: !1367, line: 14, baseType: !693, size: 64, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1366, file: !1367, line: 15, baseType: !1385, size: 64, offset: 448)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1386, line: 16, size: 64, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1385, file: !1386, line: 17, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1065, line: 746, size: 58368, elements: !1391)
!1391 = !{!1392, !1400, !1401, !1402, !1408, !1409, !1410, !1411, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1482, !1493, !1588, !1592, !1595, !1626, !1627, !1628, !1629, !1640, !1642, !1643, !1644, !1645, !1646, !1647, !1658, !1659, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1676, !1677, !1684, !1685, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2644, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2692, !2698, !2699, !2700, !2701, !2702, !2706, !2709, !2716, !2721, !2724, !2727, !2730, !2733, !2871, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2909, !2910, !2911, !2920, !2928, !2929, !2930, !2931, !2932, !2937, !2938, !2939, !2942, !2943, !2946, !2949, !2952, !2960, !2963, !2964, !3050, !3051, !3052, !3053, !3054, !3060, !3061, !3062, !3063, !3066, !3067, !3070, !3073, !3074, !3077, !3078, !3079, !3082, !3083, !3084, !3085, !3086, !3087, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3119, !3120, !3126, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3138, !3210, !3212, !3213, !3214, !3215, !3216, !3217, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3246, !3247, !3248}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1390, file: !1065, line: 752, baseType: !1393, size: 192)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1394, line: 56, size: 192, elements: !1395)
!1394 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1395 = !{!1396, !1397, !1398, !1399}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1393, file: !1394, line: 57, baseType: !330, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1393, file: !1394, line: 58, baseType: !330, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1393, file: !1394, line: 59, baseType: !429, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1393, file: !1394, line: 61, baseType: !429, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1390, file: !1065, line: 754, baseType: !7, size: 32, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1390, file: !1065, line: 767, baseType: !162, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1390, file: !1065, line: 768, baseType: !1403, size: 32, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1404, line: 113, baseType: !1405)
!1404 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1404, line: 111, size: 32, elements: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1405, file: !1404, line: 112, baseType: !236, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1390, file: !1065, line: 770, baseType: !7, size: 32, offset: 352)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1390, file: !1065, line: 771, baseType: !7, size: 32, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1390, file: !1065, line: 774, baseType: !109, size: 32, offset: 416)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1390, file: !1065, line: 775, baseType: !1412, size: 128, offset: 448)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1413, line: 58, size: 128, elements: !1414)
!1413 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1414 = !{!1415, !1421, !1426, !1427}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1412, file: !1413, line: 59, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1417, line: 60, size: 64, elements: !1418)
!1417 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1416, file: !1417, line: 61, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !1413, line: 60, baseType: !1422, size: 32, offset: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !1413, line: 60, size: 32, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1422, file: !1413, line: 61, baseType: !7, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1422, file: !1413, line: 62, baseType: !236, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1412, file: !1413, line: 65, baseType: !157, size: 16, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1412, file: !1413, line: 65, baseType: !157, size: 16, offset: 112)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1390, file: !1065, line: 776, baseType: !7, size: 32, offset: 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1390, file: !1065, line: 777, baseType: !330, size: 64, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1390, file: !1065, line: 778, baseType: !1389, size: 64, offset: 704)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1390, file: !1065, line: 787, baseType: !109, size: 32, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1390, file: !1065, line: 788, baseType: !109, size: 32, offset: 800)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1390, file: !1065, line: 790, baseType: !109, size: 32, offset: 832)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1390, file: !1065, line: 792, baseType: !109, size: 32, offset: 864)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1390, file: !1065, line: 793, baseType: !109, size: 32, offset: 896)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1390, file: !1065, line: 794, baseType: !109, size: 32, offset: 928)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1390, file: !1065, line: 795, baseType: !7, size: 32, offset: 960)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1390, file: !1065, line: 797, baseType: !1439, size: 2048, offset: 1024)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1065, line: 551, size: 2048, elements: !1440)
!1440 = !{!1441, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1461, !1464, !1465, !1466}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1439, file: !1065, line: 553, baseType: !1442, size: 128)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1065, line: 411, size: 128, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1442, file: !1065, line: 412, baseType: !330, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1442, file: !1065, line: 413, baseType: !429, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1439, file: !1065, line: 554, baseType: !733, size: 192, align: 64, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1439, file: !1065, line: 555, baseType: !433, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1439, file: !1065, line: 556, baseType: !433, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1439, file: !1065, line: 558, baseType: !167, size: 128, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1439, file: !1065, line: 559, baseType: !7, size: 32, offset: 576)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1439, file: !1065, line: 561, baseType: !433, size: 64, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1439, file: !1065, line: 562, baseType: !433, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1439, file: !1065, line: 563, baseType: !433, size: 64, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1439, file: !1065, line: 564, baseType: !433, size: 64, offset: 832)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1439, file: !1065, line: 565, baseType: !631, size: 64, offset: 896)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1439, file: !1065, line: 566, baseType: !433, size: 64, offset: 960)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1439, file: !1065, line: 568, baseType: !433, size: 64, offset: 1024)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1439, file: !1065, line: 571, baseType: !109, size: 32, offset: 1088)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1439, file: !1065, line: 572, baseType: !1460, size: 64, offset: 1152)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1439, file: !1065, line: 574, baseType: !1462, size: 64, offset: 1216)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1065, line: 49, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1439, file: !1065, line: 576, baseType: !1462, size: 64, offset: 1280)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1439, file: !1065, line: 578, baseType: !330, size: 64, offset: 1344)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1439, file: !1065, line: 588, baseType: !1467, size: 512, align: 512, offset: 1536)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1065, line: 497, size: 512, align: 512, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1467, file: !1065, line: 498, baseType: !433, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1467, file: !1065, line: 499, baseType: !433, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1467, file: !1065, line: 500, baseType: !433, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1467, file: !1065, line: 501, baseType: !429, size: 32, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1467, file: !1065, line: 502, baseType: !429, size: 32, offset: 224)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1467, file: !1065, line: 503, baseType: !330, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1467, file: !1065, line: 504, baseType: !330, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1467, file: !1065, line: 505, baseType: !330, size: 64, offset: 384)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1467, file: !1065, line: 506, baseType: !1478, size: 64, align: 64, offset: 448)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1065, line: 445, size: 64, align: 64, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1478, file: !1065, line: 446, baseType: !7, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1478, file: !1065, line: 447, baseType: !7, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1390, file: !1065, line: 798, baseType: !1483, size: 384, offset: 3072)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1065, line: 592, size: 384, elements: !1484)
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1490, !1491}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1483, file: !1065, line: 593, baseType: !167, size: 128)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1483, file: !1065, line: 594, baseType: !330, size: 64, offset: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1483, file: !1065, line: 595, baseType: !330, size: 64, offset: 192)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1483, file: !1065, line: 596, baseType: !7, size: 32, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1483, file: !1065, line: 597, baseType: !161, size: 16, offset: 288)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1483, file: !1065, line: 598, baseType: !161, size: 16, offset: 304)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1483, file: !1065, line: 600, baseType: !1492, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1390, file: !1065, line: 799, baseType: !1494, size: 1792, offset: 3456)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1065, line: 610, size: 1792, elements: !1495)
!1495 = !{!1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1585, !1586}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1494, file: !1065, line: 611, baseType: !733, size: 192, align: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1494, file: !1065, line: 618, baseType: !433, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1494, file: !1065, line: 619, baseType: !433, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1494, file: !1065, line: 620, baseType: !433, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1494, file: !1065, line: 621, baseType: !433, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1494, file: !1065, line: 622, baseType: !433, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1494, file: !1065, line: 629, baseType: !631, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1494, file: !1065, line: 630, baseType: !433, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1494, file: !1065, line: 631, baseType: !7, size: 32, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1494, file: !1065, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1494, file: !1065, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1494, file: !1065, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1494, file: !1065, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1494, file: !1065, line: 662, baseType: !1510, size: 512, offset: 704)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1511)
!1511 = !{!1512, !1520, !1521, !1526, !1581, !1582, !1583, !1584}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1510, file: !25, line: 119, baseType: !1513, size: 256)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1514, line: 9, size: 256, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1513, file: !1514, line: 10, baseType: !733, size: 192, align: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1513, file: !1514, line: 11, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1519, line: 29, baseType: !631)
!1519 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1510, file: !25, line: 120, baseType: !1518, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1510, file: !25, line: 121, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!24, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1510, file: !25, line: 122, baseType: !1527, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1529)
!1529 = !{!1530, !1555, !1556, !1559, !1564, !1565, !1576, !1580}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1528, file: !25, line: 160, baseType: !1531, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1532, file: !25, line: 216, baseType: !579, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1532, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1532, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1532, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1532, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1532, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1532, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1532, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1532, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1532, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1532, file: !25, line: 227, baseType: !161, size: 16, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1532, file: !25, line: 228, baseType: !161, size: 16, offset: 208)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1532, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1532, file: !25, line: 235, baseType: !1518, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1532, file: !25, line: 236, baseType: !1525, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1532, file: !25, line: 237, baseType: !1518, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1532, file: !25, line: 238, baseType: !1525, size: 64, offset: 448)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1532, file: !25, line: 239, baseType: !1552, size: 4096, align: 512, offset: 512)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 4096, align: 512, elements: !1553)
!1553 = !{!1554}
!1554 = !DISubrange(count: 8)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1528, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1528, file: !25, line: 162, baseType: !1557, size: 32, offset: 96)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !168, line: 32, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !314, line: 96, baseType: !109)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1528, file: !25, line: 163, baseType: !1560, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !402, line: 274, baseType: !1561)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !402, line: 274, size: 32, elements: !1562)
!1562 = !{!1563}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1561, file: !402, line: 274, baseType: !406, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1528, file: !25, line: 164, baseType: !1525, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1528, file: !25, line: 165, baseType: !1566, size: 128, offset: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1514, line: 14, size: 128, elements: !1567)
!1567 = !{!1568}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1566, file: !1514, line: 15, baseType: !1569, size: 128)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !734, line: 26, size: 128, elements: !1570)
!1570 = !{!1571, !1575}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1569, file: !734, line: 27, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !734, line: 12, size: 64, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1572, file: !734, line: 13, baseType: !738, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1569, file: !734, line: 28, baseType: !738, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1528, file: !25, line: 166, baseType: !1577, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1518}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1528, file: !25, line: 167, baseType: !1518, size: 64, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1510, file: !25, line: 123, baseType: !244, size: 8, offset: 448)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1510, file: !25, line: 124, baseType: !244, size: 8, offset: 456)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1510, file: !25, line: 125, baseType: !244, size: 8, offset: 464)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1510, file: !25, line: 126, baseType: !244, size: 8, offset: 472)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1494, file: !1065, line: 671, baseType: !1510, size: 512, offset: 1216)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1494, file: !1065, line: 679, baseType: !1587, size: 64, offset: 1728)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1390, file: !1065, line: 800, baseType: !1589, size: 64, offset: 5248)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1065, line: 800, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1390, file: !1065, line: 809, baseType: !1593, size: 64, offset: 5312)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1065, line: 70, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1390, file: !1065, line: 825, baseType: !1596, size: 2048, align: 512, offset: 5632)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1065, line: 509, size: 2048, align: 512, elements: !1597)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1596, file: !1065, line: 511, baseType: !433, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1596, file: !1065, line: 512, baseType: !433, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1596, file: !1065, line: 513, baseType: !433, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1596, file: !1065, line: 514, baseType: !433, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1596, file: !1065, line: 515, baseType: !433, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1596, file: !1065, line: 516, baseType: !433, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1596, file: !1065, line: 518, baseType: !433, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1596, file: !1065, line: 519, baseType: !433, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1596, file: !1065, line: 520, baseType: !631, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1596, file: !1065, line: 522, baseType: !433, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1596, file: !1065, line: 523, baseType: !433, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1596, file: !1065, line: 524, baseType: !631, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1596, file: !1065, line: 526, baseType: !631, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1596, file: !1065, line: 527, baseType: !433, size: 64, offset: 832)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1596, file: !1065, line: 529, baseType: !433, size: 64, offset: 896)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1596, file: !1065, line: 530, baseType: !433, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1596, file: !1065, line: 531, baseType: !433, size: 64, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1596, file: !1065, line: 532, baseType: !433, size: 64, offset: 1088)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1596, file: !1065, line: 533, baseType: !433, size: 64, offset: 1152)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1596, file: !1065, line: 535, baseType: !433, size: 64, offset: 1216)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1596, file: !1065, line: 536, baseType: !433, size: 64, offset: 1280)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1596, file: !1065, line: 537, baseType: !433, size: 64, offset: 1344)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1596, file: !1065, line: 538, baseType: !433, size: 64, offset: 1408)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1596, file: !1065, line: 539, baseType: !433, size: 64, offset: 1472)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1596, file: !1065, line: 540, baseType: !433, size: 64, offset: 1536)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1596, file: !1065, line: 541, baseType: !433, size: 64, offset: 1600)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1596, file: !1065, line: 542, baseType: !433, size: 64, offset: 1664)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1596, file: !1065, line: 543, baseType: !433, size: 64, offset: 1728)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1390, file: !1065, line: 833, baseType: !7, size: 32, offset: 7680)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1390, file: !1065, line: 836, baseType: !7, size: 32, offset: 7712)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1390, file: !1065, line: 837, baseType: !109, size: 32, offset: 7744)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1390, file: !1065, line: 838, baseType: !1630, size: 64, offset: 7808)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1633, line: 19, baseType: !1634)
!1633 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1633, line: 19, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1634, file: !1633, line: 19, baseType: !1637, size: 64)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !1638)
!1638 = !{!1639}
!1639 = !DISubrange(count: 1)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1390, file: !1065, line: 839, baseType: !1641, size: 64, offset: 7872)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1390, file: !1065, line: 840, baseType: !1632, size: 64, offset: 7936)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1390, file: !1065, line: 841, baseType: !162, size: 64, offset: 8000)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1390, file: !1065, line: 843, baseType: !161, size: 16, offset: 8064)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1390, file: !1065, line: 845, baseType: !161, size: 16, offset: 8080)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1390, file: !1065, line: 848, baseType: !109, size: 32, offset: 8096)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1390, file: !1065, line: 849, baseType: !1648, size: 32, offset: 8128)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1065, line: 718, size: 32, elements: !1649)
!1649 = !{!1650, !1657}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1648, file: !1065, line: 724, baseType: !1651, size: 32)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !1065, line: 719, size: 32, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1651, file: !1065, line: 720, baseType: !244, size: 8)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1651, file: !1065, line: 721, baseType: !244, size: 8, offset: 8)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1651, file: !1065, line: 722, baseType: !244, size: 8, offset: 16)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1651, file: !1065, line: 723, baseType: !244, size: 8, offset: 24)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1648, file: !1065, line: 725, baseType: !429, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1390, file: !1065, line: 850, baseType: !167, size: 128, offset: 8192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1390, file: !1065, line: 851, baseType: !1660, size: 64, offset: 8320)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1065, line: 60, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1390, file: !1065, line: 855, baseType: !330, size: 64, offset: 8384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1390, file: !1065, line: 856, baseType: !244, size: 8, offset: 8448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1390, file: !1065, line: 857, baseType: !244, size: 8, offset: 8456)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1390, file: !1065, line: 858, baseType: !109, size: 32, offset: 8480)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1390, file: !1065, line: 859, baseType: !167, size: 128, offset: 8512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1390, file: !1065, line: 860, baseType: !109, size: 32, offset: 8640)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1390, file: !1065, line: 861, baseType: !167, size: 128, offset: 8704)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1390, file: !1065, line: 873, baseType: !1670, size: 256, offset: 8832)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1065, line: 376, size: 256, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1670, file: !1065, line: 381, baseType: !330, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1670, file: !1065, line: 384, baseType: !435, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1670, file: !1065, line: 389, baseType: !435, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1670, file: !1065, line: 392, baseType: !435, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1390, file: !1065, line: 875, baseType: !167, size: 128, offset: 9088)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1390, file: !1065, line: 877, baseType: !1678, size: 320, offset: 9216)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1679, line: 86, size: 320, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1680 = !{!1681, !1682, !1683}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1678, file: !1679, line: 87, baseType: !109, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1678, file: !1679, line: 88, baseType: !167, size: 128, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1678, file: !1679, line: 89, baseType: !167, size: 128, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1390, file: !1065, line: 878, baseType: !733, size: 192, align: 64, offset: 9536)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1390, file: !1065, line: 881, baseType: !1686, size: 64, offset: 9728)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1688)
!1688 = !{!1689, !2563}
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !38, line: 734, baseType: !1690, size: 10240)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !38, line: 734, size: 10240, elements: !1691)
!1691 = !{!1692, !1696, !1709, !2440, !2441, !2442, !2443, !2444, !2445, !2452, !2453, !2454, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2493, !2495, !2498, !2543, !2544, !2545, !2548, !2549, !2550, !2553, !2554, !2555, !2561, !2562}
!1692 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !38, line: 739, baseType: !1693, size: 512, align: 512)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !38, line: 739, size: 512, align: 512, elements: !1694)
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1693, file: !38, line: 747, baseType: !236, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1690, file: !38, line: 750, baseType: !1697, size: 128, offset: 512)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1698, line: 218, size: 128, elements: !1699)
!1698 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1699 = !{!1700, !1707, !1708}
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1698, line: 219, baseType: !1701, size: 32)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1697, file: !1698, line: 219, size: 32, elements: !1702)
!1702 = !{!1703, !1704}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1701, file: !1698, line: 220, baseType: !216, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1701, file: !1698, line: 221, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1698, line: 197, baseType: !1706)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1698, line: 197, elements: !910)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1697, file: !1698, line: 223, baseType: !7, size: 32, offset: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1697, file: !1698, line: 224, baseType: !162, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1690, file: !38, line: 752, baseType: !1710, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!330, !1713, !330, !330, !330, !330}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1715)
!1715 = !{!1716, !1722, !1723, !1725, !1726, !1727, !1728, !1729, !1779, !1969, !1978, !1979, !1980, !2430, !2431, !2432, !2433, !2435, !2436, !2439}
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1714, file: !14, line: 995, baseType: !1717, size: 128)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1714, file: !14, line: 995, size: 128, elements: !1718)
!1718 = !{!1719, !1720, !1721}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1717, file: !14, line: 996, baseType: !1416, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1717, file: !14, line: 997, baseType: !841, size: 128, align: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1717, file: !14, line: 998, baseType: !7, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1714, file: !14, line: 1005, baseType: !216, size: 32, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1714, file: !14, line: 1006, baseType: !1724, size: 32, offset: 160)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !168, line: 156, baseType: !7)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1714, file: !14, line: 1007, baseType: !625, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1714, file: !14, line: 1008, baseType: !621, size: 256, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1714, file: !14, line: 1009, baseType: !521, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1714, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1714, file: !14, line: 1011, baseType: !1730, size: 256, offset: 640)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1731)
!1731 = !{!1732, !1753, !1775, !1776, !1777, !1778}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1730, file: !14, line: 949, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1734, line: 34, baseType: !1735)
!1734 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1734, line: 25, size: 64, elements: !1736)
!1736 = !{!1737}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1735, file: !1734, line: 26, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1739, line: 27, baseType: !1740)
!1739 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1739, line: 13, size: 64, elements: !1741)
!1741 = !{!1742, !1752}
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1740, file: !1739, line: 14, baseType: !1743, size: 32)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1740, file: !1739, line: 14, size: 32, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1743, file: !1739, line: 15, baseType: !236, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !1739, line: 16, baseType: !1747, size: 32)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1743, file: !1739, line: 16, size: 32, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1747, file: !1739, line: 18, baseType: !244, size: 8)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1747, file: !1739, line: 19, baseType: !1751, size: 24, offset: 8)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 24, elements: !281)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1740, file: !1739, line: 26, baseType: !228, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1730, file: !14, line: 950, baseType: !1754, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1756)
!1756 = !{!1757, !1758, !1759, !1760, !1762, !1763, !1764, !1765}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1755, file: !30, line: 61, baseType: !1403, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1755, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1755, file: !30, line: 63, baseType: !216, size: 32, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1755, file: !30, line: 65, baseType: !1761, size: 256, offset: 128)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !991, size: 256, elements: !851)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1755, file: !30, line: 66, baseType: !991, size: 64, offset: 384)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1755, file: !30, line: 68, baseType: !1376, size: 192, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1755, file: !30, line: 69, baseType: !841, size: 128, align: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1755, file: !30, line: 70, baseType: !1766, offset: 768)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1767, elements: !1773)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1767, file: !30, line: 55, baseType: !109, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1767, file: !30, line: 56, baseType: !1771, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1773 = !{!1774}
!1774 = !DISubrange(count: -1)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1730, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1730, file: !14, line: 952, baseType: !366, size: 32, offset: 160)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1730, file: !14, line: 952, baseType: !366, size: 32, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1730, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1714, file: !14, line: 1012, baseType: !1780, size: 64, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1782)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1783, line: 110, size: 1472, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1784 = !{!1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1801, !1802, !1803, !1804, !1805, !1806, !1914, !1915, !1916, !1917, !1918, !1949, !1952, !1956, !1964}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1782, file: !1783, line: 111, baseType: !625, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1782, file: !1783, line: 112, baseType: !366, size: 32, offset: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1782, file: !1783, line: 113, baseType: !375, size: 32, offset: 96)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1782, file: !1783, line: 114, baseType: !366, size: 32, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1782, file: !1783, line: 115, baseType: !375, size: 32, offset: 160)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1782, file: !1783, line: 116, baseType: !366, size: 32, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1782, file: !1783, line: 117, baseType: !375, size: 32, offset: 224)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1782, file: !1783, line: 118, baseType: !366, size: 32, offset: 256)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1782, file: !1783, line: 119, baseType: !375, size: 32, offset: 288)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1782, file: !1783, line: 120, baseType: !7, size: 32, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1782, file: !1783, line: 121, baseType: !1796, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1797, line: 24, baseType: !1798)
!1797 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1797, line: 24, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1798, file: !1797, line: 24, baseType: !433, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1782, file: !1783, line: 122, baseType: !1796, size: 64, offset: 448)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1782, file: !1783, line: 123, baseType: !1796, size: 64, offset: 512)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1782, file: !1783, line: 124, baseType: !1796, size: 64, offset: 576)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1782, file: !1783, line: 125, baseType: !1796, size: 64, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1782, file: !1783, line: 127, baseType: !198, size: 8, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1782, file: !1783, line: 129, baseType: !1807, size: 64, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1809, line: 195, size: 1728, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1810 = !{!1811, !1812, !1815, !1820, !1821, !1824, !1825, !1830, !1831, !1832, !1833, !1836, !1837, !1838, !1839, !1840, !1878, !1899}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1808, file: !1809, line: 196, baseType: !1403, size: 32)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1808, file: !1809, line: 197, baseType: !1813, size: 32, offset: 32)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1809, line: 28, baseType: !1814)
!1814 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !168, line: 104, baseType: !617)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 198, baseType: !1816, size: 192, offset: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 198, size: 192, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1816, file: !1809, line: 199, baseType: !167, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1816, file: !1809, line: 200, baseType: !733, size: 192, align: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1808, file: !1809, line: 205, baseType: !1283, size: 320, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1808, file: !1809, line: 206, baseType: !1822, size: 64, offset: 576)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1809, line: 206, flags: DIFlagFwdDecl)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1808, file: !1809, line: 207, baseType: !162, size: 64, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 208, baseType: !1826, size: 64, offset: 704)
!1826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 208, size: 64, elements: !1827)
!1827 = !{!1828, !1829}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1826, file: !1809, line: 209, baseType: !1123, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1826, file: !1809, line: 210, baseType: !1123, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1808, file: !1809, line: 212, baseType: !1123, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1808, file: !1809, line: 213, baseType: !366, size: 32, offset: 832)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1808, file: !1809, line: 214, baseType: !375, size: 32, offset: 864)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1808, file: !1809, line: 215, baseType: !1834, size: 32, offset: 896)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1809, line: 31, baseType: !1835)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !168, line: 110, baseType: !429)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1808, file: !1809, line: 216, baseType: !161, size: 16, offset: 928)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1808, file: !1809, line: 217, baseType: !161, size: 16, offset: 944)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1808, file: !1809, line: 221, baseType: !759, size: 16, offset: 960)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1808, file: !1809, line: 228, baseType: !330, size: 64, offset: 1024)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 245, baseType: !1841, size: 320, offset: 1088)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 245, size: 320, elements: !1842)
!1842 = !{!1843, !1870}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1841, file: !1809, line: 246, baseType: !1844, size: 320)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1809, line: 114, size: 320, elements: !1845)
!1845 = !{!1846, !1847, !1859, !1862, !1869}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1844, file: !1809, line: 116, baseType: !330, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !1844, file: !1809, line: 117, baseType: !1848, size: 64, offset: 64)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1844, file: !1809, line: 117, size: 64, elements: !1849)
!1849 = !{!1850, !1858}
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1848, file: !1809, line: 118, baseType: !1851, size: 64)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1848, file: !1809, line: 118, size: 64, elements: !1852)
!1852 = !{!1853, !1854}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1851, file: !1809, line: 120, baseType: !157, size: 16)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1851, file: !1809, line: 121, baseType: !1855, size: 48, offset: 16)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 48, elements: !1856)
!1856 = !{!1857}
!1857 = !DISubrange(count: 6)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1848, file: !1809, line: 127, baseType: !330, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1844, file: !1809, line: 129, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1809, line: 102, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1844, file: !1809, line: 130, baseType: !1863, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1809, line: 108, size: 192, elements: !1865)
!1865 = !{!1866, !1867, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1864, file: !1809, line: 109, baseType: !841, size: 128, align: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1864, file: !1809, line: 110, baseType: !1403, size: 32, offset: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1864, file: !1809, line: 111, baseType: !701, size: 8, offset: 160)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1844, file: !1809, line: 131, baseType: !204, size: 64, offset: 256)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1809, line: 247, baseType: !1871, size: 320)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1809, line: 247, size: 320, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1876, !1877}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1871, file: !1809, line: 248, baseType: !330, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1871, file: !1809, line: 249, baseType: !330, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1871, file: !1809, line: 250, baseType: !1860, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1871, file: !1809, line: 251, baseType: !1863, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1871, file: !1809, line: 252, baseType: !280, size: 64, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 260, baseType: !1879, size: 256, offset: 1408)
!1879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 260, size: 256, elements: !1880)
!1880 = !{!1881, !1887}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1879, file: !1809, line: 261, baseType: !1882, size: 256)
!1882 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1809, line: 134, size: 256, elements: !1883)
!1883 = !{!1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1882, file: !1809, line: 135, baseType: !162, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1882, file: !1809, line: 136, baseType: !1886, size: 256)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 256, elements: !851)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1879, file: !1809, line: 262, baseType: !1888, size: 256)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1879, file: !1809, line: 262, size: 256, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1888, file: !1809, line: 264, baseType: !167, size: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1888, file: !1809, line: 265, baseType: !1892, size: 128, offset: 128)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1893, line: 22, size: 128, elements: !1894)
!1893 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1894 = !{!1895, !1898}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1892, file: !1893, line: 23, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1893, line: 23, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1892, file: !1893, line: 24, baseType: !330, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1808, file: !1809, line: 280, baseType: !1900, size: 64, offset: 1664)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1809, line: 176, size: 192, elements: !1902)
!1902 = !{!1903, !1912, !1913}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1901, file: !1809, line: 177, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1809, line: 171, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!109, !1807, !1908, !1910, !1807}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1901, file: !1809, line: 178, baseType: !1807, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1901, file: !1809, line: 179, baseType: !1860, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1782, file: !1783, line: 130, baseType: !1807, size: 64, offset: 832)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1782, file: !1783, line: 131, baseType: !1807, size: 64, offset: 896)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1782, file: !1783, line: 132, baseType: !1807, size: 64, offset: 960)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1782, file: !1783, line: 135, baseType: !162, size: 64, offset: 1024)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1782, file: !1783, line: 137, baseType: !1919, size: 64, offset: 1088)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1921, line: 14, size: 1088, elements: !1922)
!1921 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1922 = !{!1923, !1924, !1933, !1934, !1935, !1936, !1937, !1938}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1920, file: !1921, line: 15, baseType: !1403, size: 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1920, file: !1921, line: 17, baseType: !1925, size: 320, offset: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1926, line: 22, size: 320, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1927 = !{!1928, !1929, !1930, !1931}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1925, file: !1926, line: 23, baseType: !579, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1925, file: !1926, line: 24, baseType: !631, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1925, file: !1926, line: 26, baseType: !167, size: 128, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1925, file: !1926, line: 28, baseType: !1932, size: 64, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1920, file: !1921, line: 19, baseType: !330, size: 64, offset: 384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1920, file: !1921, line: 20, baseType: !625, size: 64, offset: 448)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1920, file: !1921, line: 23, baseType: !867, size: 128, offset: 512)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1920, file: !1921, line: 24, baseType: !366, size: 32, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1920, file: !1921, line: 29, baseType: !625, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1920, file: !1921, line: 36, baseType: !1939, size: 320, offset: 768)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1940, line: 15, size: 320, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1939, file: !1940, line: 16, baseType: !579, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1939, file: !1940, line: 18, baseType: !109, size: 32, offset: 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1939, file: !1940, line: 19, baseType: !109, size: 32, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1939, file: !1940, line: 20, baseType: !109, size: 32, offset: 96)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1939, file: !1940, line: 21, baseType: !109, size: 32, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1939, file: !1940, line: 22, baseType: !330, size: 64, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1939, file: !1940, line: 23, baseType: !330, size: 64, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1782, file: !1783, line: 138, baseType: !1950, size: 64, offset: 1152)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1782, file: !1783, line: 139, baseType: !1953, size: 64, offset: 1216)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1955, line: 16, flags: DIFlagFwdDecl)
!1955 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1782, file: !1783, line: 140, baseType: !1957, size: 64, offset: 1280)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1783, line: 25, size: 64, elements: !1959)
!1959 = !{!1960, !1961, !1962}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1958, file: !1783, line: 26, baseType: !236, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1958, file: !1783, line: 27, baseType: !109, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1958, file: !1783, line: 28, baseType: !1963, offset: 64)
!1963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, elements: !1773)
!1964 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !1783, line: 142, baseType: !1965, size: 128, offset: 1344)
!1965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !1783, line: 142, size: 128, elements: !1966)
!1966 = !{!1967, !1968}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1965, file: !1783, line: 143, baseType: !109, size: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1965, file: !1783, line: 144, baseType: !841, size: 128, align: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1714, file: !14, line: 1013, baseType: !1970, size: 256, offset: 960)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1970, file: !14, line: 971, baseType: !330, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1970, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1970, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1970, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1970, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1970, file: !14, line: 976, baseType: !521, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1714, file: !14, line: 1014, baseType: !1195, size: 128, offset: 1216)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1714, file: !14, line: 1015, baseType: !360, size: 64, offset: 1344)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1714, file: !14, line: 1016, baseType: !1981, size: 64, offset: 1408)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1984)
!1984 = !{!1985, !1986, !1990, !1995, !1999, !2028, !2029, !2035, !2048, !2056, !2060, !2061, !2352, !2353, !2357, !2362, !2363, !2367, !2371, !2377, !2378, !2382, !2383, !2389, !2393, !2397, !2403, !2407, !2411, !2415, !2419, !2420, !2426}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1983, file: !14, line: 1915, baseType: !550, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1983, file: !14, line: 1916, baseType: !1987, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!521, !1713, !521, !109}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1983, file: !14, line: 1917, baseType: !1991, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!312, !1713, !280, !327, !1994}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1983, file: !14, line: 1918, baseType: !1996, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!312, !1713, !204, !327, !1994}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1983, file: !14, line: 1919, baseType: !2000, size: 64, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!312, !2003, !2025}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2012, !2013, !2014, !2015}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2004, file: !14, line: 374, baseType: !1713, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2004, file: !14, line: 375, baseType: !521, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2004, file: !14, line: 376, baseType: !2009, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{null, !2003, !316}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2004, file: !14, line: 377, baseType: !162, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2004, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2004, file: !14, line: 379, baseType: !157, size: 16, offset: 288)
!2015 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !14, line: 380, baseType: !2016, size: 64, offset: 320)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2004, file: !14, line: 380, size: 64, elements: !2017)
!2017 = !{!2018, !2021}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2016, file: !14, line: 386, baseType: !2019, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2016, file: !14, line: 395, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!312, !162}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2027, line: 17, flags: DIFlagFwdDecl)
!2027 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1983, file: !14, line: 1920, baseType: !2000, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1983, file: !14, line: 1921, baseType: !2030, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!109, !2003, !2033, !7}
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1983, file: !14, line: 1923, baseType: !2036, size: 64, offset: 448)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!109, !1713, !2039}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2041)
!2041 = !{!2042, !2047}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2040, file: !14, line: 1859, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2044)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!701, !2039, !204, !109, !521, !433, !7}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2040, file: !14, line: 1860, baseType: !521, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1983, file: !14, line: 1924, baseType: !2049, size: 64, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!2052, !1713, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2053, line: 59, baseType: !7)
!2053 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !536, line: 31, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1983, file: !14, line: 1925, baseType: !2057, size: 64, offset: 576)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!316, !1713, !7, !330}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1983, file: !14, line: 1926, baseType: !2057, size: 64, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1983, file: !14, line: 1927, baseType: !2062, size: 64, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!109, !1713, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2067)
!2067 = !{!2068, !2077, !2078, !2086, !2093, !2094, !2099, !2100, !2105, !2106, !2109, !2345, !2346, !2347, !2348, !2349, !2350}
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !38, line: 628, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !38, line: 628, size: 128, elements: !2070)
!2070 = !{!2071, !2076}
!2071 = !DIDerivedType(tag: DW_TAG_member, scope: !2069, file: !38, line: 629, baseType: !2072, size: 128)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2069, file: !38, line: 629, size: 128, elements: !2073)
!2073 = !{!2074, !2075}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2072, file: !38, line: 631, baseType: !330, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2072, file: !38, line: 632, baseType: !330, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2069, file: !38, line: 635, baseType: !841, size: 128, align: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2066, file: !38, line: 639, baseType: !1686, size: 64, offset: 128)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2066, file: !38, line: 640, baseType: !2079, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2080, line: 297, baseType: !2081)
!2080 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2080, line: 297, size: 64, elements: !2082)
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2081, file: !2080, line: 297, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2085, line: 19, baseType: !330)
!2085 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2086 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !38, line: 646, baseType: !2087, size: 64, offset: 256)
!2087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2066, file: !38, line: 646, size: 64, elements: !2088)
!2088 = !{!2089, !2092}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2087, file: !38, line: 647, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !330)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2087, file: !38, line: 648, baseType: !2091, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2066, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2066, file: !38, line: 667, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2097)
!2097 = !{!2098}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2096, file: !38, line: 580, baseType: !1283, size: 320)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2066, file: !38, line: 670, baseType: !701, size: 8, offset: 448)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2066, file: !38, line: 681, baseType: !2101, size: 256, offset: 512)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !38, line: 678, size: 256, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2101, file: !38, line: 679, baseType: !733, size: 192, align: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2101, file: !38, line: 680, baseType: !330, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2066, file: !38, line: 689, baseType: !167, size: 128, offset: 768)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2066, file: !38, line: 691, baseType: !2107, size: 64, offset: 896)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2066, file: !38, line: 694, baseType: !2110, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2113, line: 563, size: 1024, elements: !2114)
!2113 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2114 = !{!2115, !2119, !2120, !2124, !2128, !2132, !2309, !2313, !2317, !2321, !2322, !2323, !2327, !2331, !2337, !2341}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2112, file: !2113, line: 564, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{null, !2065}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2112, file: !2113, line: 569, baseType: !2116, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2112, file: !2113, line: 571, baseType: !2121, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!109, !2065, !330}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2112, file: !2113, line: 572, baseType: !2125, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!109, !2065}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2112, file: !2113, line: 578, baseType: !2129, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!109, !2065, !330, !330, !330}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2112, file: !2113, line: 580, baseType: !2133, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2113, line: 512, size: 896, elements: !2139)
!2139 = !{!2140, !2148, !2149, !2156, !2163, !2173, !2302, !2303, !2305, !2307}
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !2138, file: !2113, line: 513, baseType: !2141, size: 320)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2138, file: !2113, line: 513, size: 320, elements: !2142)
!2142 = !{!2143, !2144, !2145, !2146, !2147}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2141, file: !2113, line: 514, baseType: !2065, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2141, file: !2113, line: 515, baseType: !1135, size: 32, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2141, file: !2113, line: 516, baseType: !330, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2141, file: !2113, line: 517, baseType: !330, size: 64, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2141, file: !2113, line: 518, baseType: !330, size: 64, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2138, file: !2113, line: 520, baseType: !37, size: 32, offset: 320)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2138, file: !2113, line: 522, baseType: !2150, size: 64, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2085, line: 22, baseType: !2152)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2085, line: 22, size: 64, elements: !2153)
!2153 = !{!2154}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2152, file: !2085, line: 22, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2085, line: 15, baseType: !330)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2138, file: !2113, line: 524, baseType: !2157, size: 64, offset: 448)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2080, line: 372, baseType: !2159)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2080, line: 372, size: 64, elements: !2160)
!2160 = !{!2161}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2159, file: !2080, line: 372, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2085, line: 16, baseType: !330)
!2163 = !DIDerivedType(tag: DW_TAG_member, scope: !2138, file: !2113, line: 527, baseType: !2164, size: 64, offset: 512)
!2164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2138, file: !2113, line: 527, size: 64, elements: !2165)
!2165 = !{!2166, !2172}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2164, file: !2113, line: 528, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2085, line: 21, baseType: !2168)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2085, line: 21, size: 64, elements: !2169)
!2169 = !{!2170}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2168, file: !2085, line: 21, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2085, line: 14, baseType: !330)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2164, file: !2113, line: 529, baseType: !2151, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2138, file: !2113, line: 534, baseType: !2174, size: 64, offset: 576)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2176)
!2176 = !{!2177, !2178, !2296, !2301}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2175, file: !38, line: 75, baseType: !330, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !38, line: 83, baseType: !2179, size: 320, offset: 64)
!2179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !38, line: 83, size: 320, elements: !2180)
!2180 = !{!2181, !2202, !2216, !2220, !2295}
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !38, line: 84, baseType: !2182, size: 320)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !38, line: 84, size: 320, elements: !2183)
!2183 = !{!2184, !2195, !2196, !2201}
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !38, line: 90, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2182, file: !38, line: 90, size: 128, elements: !2186)
!2186 = !{!2187, !2188, !2193, !2194}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2185, file: !38, line: 91, baseType: !167, size: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, scope: !2185, file: !38, line: 94, baseType: !2189, size: 128)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2185, file: !38, line: 94, size: 128, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2189, file: !38, line: 96, baseType: !162, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2189, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2185, file: !38, line: 102, baseType: !167, size: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2185, file: !38, line: 103, baseType: !167, size: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2182, file: !38, line: 106, baseType: !356, size: 64, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !38, line: 107, baseType: !2197, size: 64, offset: 192)
!2197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2182, file: !38, line: 107, size: 64, elements: !2198)
!2198 = !{!2199, !2200}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2197, file: !38, line: 108, baseType: !330, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2197, file: !38, line: 109, baseType: !330, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2182, file: !38, line: 117, baseType: !330, size: 64, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !38, line: 119, baseType: !2203, size: 320)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !38, line: 119, size: 320, elements: !2204)
!2204 = !{!2205, !2206, !2209, !2210, !2211}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2203, file: !38, line: 124, baseType: !330, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2203, file: !38, line: 125, baseType: !2207, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2203, file: !38, line: 126, baseType: !330, size: 64, offset: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2203, file: !38, line: 127, baseType: !330, size: 64, offset: 192)
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2203, file: !38, line: 128, baseType: !2212, size: 64, offset: 256)
!2212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2203, file: !38, line: 128, size: 64, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2212, file: !38, line: 133, baseType: !330, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2212, file: !38, line: 138, baseType: !625, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !38, line: 141, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !38, line: 141, size: 64, elements: !2218)
!2218 = !{!2219}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2217, file: !38, line: 142, baseType: !330, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, scope: !2179, file: !38, line: 144, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2179, file: !38, line: 144, size: 128, elements: !2222)
!2222 = !{!2223, !2294}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2221, file: !38, line: 146, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2226)
!2226 = !{!2227, !2237, !2258, !2259, !2260, !2261, !2262, !2276, !2277, !2278}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2225, file: !54, line: 127, baseType: !2228, size: 384)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2229)
!2229 = !{!2230, !2231, !2233, !2234, !2235, !2236}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2228, file: !54, line: 22, baseType: !330, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2228, file: !54, line: 23, baseType: !2232, size: 64, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2228, file: !54, line: 24, baseType: !2232, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2228, file: !54, line: 25, baseType: !330, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2228, file: !54, line: 26, baseType: !330, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2228, file: !54, line: 27, baseType: !330, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2225, file: !54, line: 128, baseType: !2238, size: 128, offset: 384)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2239, line: 105, size: 128, elements: !2240)
!2239 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2240 = !{!2241, !2242}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2238, file: !2239, line: 110, baseType: !330, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2238, file: !2239, line: 118, baseType: !2243, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2239, line: 95, size: 448, elements: !2245)
!2245 = !{!2246, !2247, !2253, !2254, !2255, !2256, !2257}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2244, file: !2239, line: 96, baseType: !625, size: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2244, file: !2239, line: 97, baseType: !2248, size: 64, offset: 64)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2239, line: 60, baseType: !2250)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !2252}
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2244, file: !2239, line: 98, baseType: !2248, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2244, file: !2239, line: 99, baseType: !701, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2244, file: !2239, line: 100, baseType: !701, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2244, file: !2239, line: 101, baseType: !841, size: 128, align: 64, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2244, file: !2239, line: 102, baseType: !2252, size: 64, offset: 384)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2225, file: !54, line: 129, baseType: !570, size: 256, offset: 512)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2225, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2225, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2225, file: !54, line: 132, baseType: !330, size: 64, offset: 832)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2225, file: !54, line: 133, baseType: !2263, size: 64, offset: 896)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2265)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2266)
!2266 = !{!2267, !2271, !2272}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2265, file: !54, line: 83, baseType: !2268, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !2174}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2265, file: !54, line: 89, baseType: !2133, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2265, file: !54, line: 100, baseType: !2273, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!109, !2224, !330, !330, !109}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2225, file: !54, line: 134, baseType: !162, size: 64, offset: 960)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2225, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2225, file: !54, line: 136, baseType: !2279, size: 128, offset: 1088)
!2279 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2225, file: !54, line: 136, size: 128, elements: !2280)
!2280 = !{!2281, !2287}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2279, file: !54, line: 137, baseType: !2282, size: 128)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2283, line: 6, size: 128, elements: !2284)
!2283 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2284 = !{!2285, !2286}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2282, file: !2283, line: 7, baseType: !433, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2282, file: !2283, line: 8, baseType: !433, size: 64, offset: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !54, line: 138, baseType: !2288)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2279, file: !54, line: 138, elements: !2289)
!2289 = !{!2290, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2288, file: !54, line: 138, baseType: !2291)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2288, file: !54, line: 138, elements: !910)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2288, file: !54, line: 138, baseType: !2293)
!2293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2282, elements: !1773)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2221, file: !38, line: 147, baseType: !162, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2179, file: !38, line: 161, baseType: !841, size: 128, align: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !38, line: 164, baseType: !2297, size: 32, offset: 384)
!2297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !38, line: 164, size: 32, elements: !2298)
!2298 = !{!2299, !2300}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2297, file: !38, line: 169, baseType: !236, size: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2297, file: !38, line: 177, baseType: !7, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2175, file: !38, line: 181, baseType: !236, size: 32, offset: 416)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2138, file: !2113, line: 535, baseType: !2174, size: 64, offset: 640)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2138, file: !2113, line: 541, baseType: !2304, size: 64, offset: 704)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2138, file: !2113, line: 545, baseType: !2306, size: 64, offset: 768)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2138, file: !2113, line: 549, baseType: !2308, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2080, line: 520, baseType: !2174)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2112, file: !2113, line: 581, baseType: !2310, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!2136, !2137, !7}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2112, file: !2113, line: 582, baseType: !2314, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!2136, !2137, !330, !330}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2112, file: !2113, line: 584, baseType: !2318, size: 64, offset: 512)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!330, !2065}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2112, file: !2113, line: 588, baseType: !2133, size: 64, offset: 576)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2112, file: !2113, line: 591, baseType: !2133, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2112, file: !2113, line: 597, baseType: !2324, size: 64, offset: 704)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!109, !2065, !330, !162, !109, !109}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2112, file: !2113, line: 603, baseType: !2328, size: 64, offset: 768)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!204, !2065}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2112, file: !2113, line: 613, baseType: !2332, size: 64, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!109, !2065, !2335}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2112, file: !2113, line: 625, baseType: !2338, size: 64, offset: 896)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2335, !2065, !330}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2112, file: !2113, line: 633, baseType: !2342, size: 64, offset: 960)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!2174, !2065, !330}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2066, file: !38, line: 697, baseType: !330, size: 64, offset: 1024)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2066, file: !38, line: 699, baseType: !1713, size: 64, offset: 1088)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2066, file: !38, line: 700, baseType: !162, size: 64, offset: 1152)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2066, file: !38, line: 711, baseType: !625, size: 64, offset: 1216)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2066, file: !38, line: 717, baseType: !2335, size: 64, offset: 1280)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2066, file: !38, line: 722, baseType: !2351, offset: 1344)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !910)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1983, file: !14, line: 1928, baseType: !330, size: 64, offset: 768)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1983, file: !14, line: 1929, baseType: !2354, size: 64, offset: 832)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!109, !360, !1713}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1983, file: !14, line: 1930, baseType: !2358, size: 64, offset: 896)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!109, !1713, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !162)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1983, file: !14, line: 1931, baseType: !2354, size: 64, offset: 960)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1983, file: !14, line: 1932, baseType: !2364, size: 64, offset: 1024)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!109, !1713, !521, !521, !109}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1983, file: !14, line: 1933, baseType: !2368, size: 64, offset: 1088)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!109, !109, !1713, !109}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1983, file: !14, line: 1934, baseType: !2372, size: 64, offset: 1152)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!109, !1713, !109, !2375}
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1983, file: !14, line: 1935, baseType: !1710, size: 64, offset: 1216)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1983, file: !14, line: 1936, baseType: !2379, size: 64, offset: 1280)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!109, !109}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1983, file: !14, line: 1937, baseType: !2372, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1983, file: !14, line: 1938, baseType: !2384, size: 64, offset: 1408)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!312, !2387, !1713, !1994, !327, !7}
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1065, line: 59, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1983, file: !14, line: 1939, baseType: !2390, size: 64, offset: 1472)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!312, !1713, !1994, !2387, !327, !7}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1983, file: !14, line: 1940, baseType: !2394, size: 64, offset: 1536)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !1713}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1983, file: !14, line: 1941, baseType: !2398, size: 64, offset: 1600)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!109, !1713, !109, !2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1983, file: !14, line: 1942, baseType: !2404, size: 64, offset: 1664)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!316, !1713, !109, !521, !521}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1983, file: !14, line: 1944, baseType: !2408, size: 64, offset: 1728)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !1063, !1713}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1983, file: !14, line: 1948, baseType: !2412, size: 64, offset: 1792)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!312, !1713, !521, !1713, !521, !327, !7}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1983, file: !14, line: 1950, baseType: !2416, size: 64, offset: 1856)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!521, !1713, !521, !1713, !521, !521, !7}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1983, file: !14, line: 1953, baseType: !2364, size: 64, offset: 1920)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1983, file: !14, line: 1954, baseType: !2421, size: 64, offset: 1984)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!109, !2424, !7}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1983, file: !14, line: 1955, baseType: !2427, size: 64, offset: 2048)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!109, !2424, !2033, !7}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1714, file: !14, line: 1018, baseType: !433, size: 64, offset: 1472)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1714, file: !14, line: 1020, baseType: !162, size: 64, offset: 1536)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1714, file: !14, line: 1023, baseType: !162, size: 64, offset: 1600)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1714, file: !14, line: 1027, baseType: !2434, size: 64, offset: 1664)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1714, file: !14, line: 1029, baseType: !356, size: 64, offset: 1728)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1714, file: !14, line: 1030, baseType: !2437, size: 32, offset: 1792)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2438, line: 8, baseType: !429)
!2438 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1714, file: !14, line: 1031, baseType: !2437, size: 32, offset: 1824)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1690, file: !38, line: 756, baseType: !330, size: 64, offset: 704)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1690, file: !38, line: 757, baseType: !330, size: 64, offset: 768)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1690, file: !38, line: 760, baseType: !330, size: 64, offset: 832)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1690, file: !38, line: 761, baseType: !330, size: 64, offset: 896)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1690, file: !38, line: 763, baseType: !330, size: 64, offset: 960)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1690, file: !38, line: 764, baseType: !2446, size: 64, offset: 1024)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2080, line: 299, baseType: !2448)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2080, line: 299, size: 64, elements: !2449)
!2449 = !{!2450}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2448, file: !2080, line: 299, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2085, line: 18, baseType: !330)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1690, file: !38, line: 773, baseType: !236, size: 32, offset: 1088)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1690, file: !38, line: 785, baseType: !236, size: 32, offset: 1120)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1690, file: !38, line: 795, baseType: !2455, size: 64, offset: 1152)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2456, file: !38, line: 727, baseType: !433, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2456, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1690, file: !38, line: 801, baseType: !330, size: 64, offset: 1216)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1690, file: !38, line: 804, baseType: !625, size: 64, offset: 1280)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1690, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1690, file: !38, line: 808, baseType: !216, size: 32, offset: 1376)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1690, file: !38, line: 823, baseType: !1283, size: 320, offset: 1408)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1690, file: !38, line: 825, baseType: !167, size: 128, offset: 1728)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1690, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1690, file: !38, line: 849, baseType: !330, size: 64, offset: 1920)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1690, file: !38, line: 850, baseType: !330, size: 64, offset: 1984)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1690, file: !38, line: 852, baseType: !330, size: 64, offset: 2048)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1690, file: !38, line: 853, baseType: !330, size: 64, offset: 2112)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1690, file: !38, line: 854, baseType: !627, size: 64, offset: 2176)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1690, file: !38, line: 855, baseType: !330, size: 64, offset: 2240)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1690, file: !38, line: 856, baseType: !330, size: 64, offset: 2304)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1690, file: !38, line: 857, baseType: !330, size: 64, offset: 2368)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1690, file: !38, line: 858, baseType: !330, size: 64, offset: 2432)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1690, file: !38, line: 865, baseType: !406, size: 32, offset: 2496)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1690, file: !38, line: 867, baseType: !216, size: 32, offset: 2528)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1690, file: !38, line: 869, baseType: !330, size: 64, offset: 2560)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1690, file: !38, line: 869, baseType: !330, size: 64, offset: 2624)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1690, file: !38, line: 869, baseType: !330, size: 64, offset: 2688)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1690, file: !38, line: 869, baseType: !330, size: 64, offset: 2752)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1690, file: !38, line: 870, baseType: !330, size: 64, offset: 2816)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1690, file: !38, line: 870, baseType: !330, size: 64, offset: 2880)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1690, file: !38, line: 870, baseType: !330, size: 64, offset: 2944)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1690, file: !38, line: 871, baseType: !330, size: 64, offset: 3008)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1690, file: !38, line: 871, baseType: !330, size: 64, offset: 3072)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1690, file: !38, line: 871, baseType: !330, size: 64, offset: 3136)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1690, file: !38, line: 871, baseType: !330, size: 64, offset: 3200)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1690, file: !38, line: 873, baseType: !2490, size: 3328, offset: 3264)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 3328, elements: !2491)
!2491 = !{!2492}
!2492 = !DISubrange(count: 52)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1690, file: !38, line: 875, baseType: !2494, size: 1280, offset: 6592)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1925, size: 1280, elements: !851)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1690, file: !38, line: 877, baseType: !2496, size: 64, offset: 7872)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1690, file: !38, line: 880, baseType: !2499, size: 1088, offset: 7936)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2500, line: 72, baseType: !2501)
!2500 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2500, line: 23, size: 1088, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2510, !2511, !2512, !2513, !2540, !2541, !2542}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2501, file: !2500, line: 28, baseType: !433, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2501, file: !2500, line: 38, baseType: !627, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2501, file: !2500, line: 40, baseType: !330, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2501, file: !2500, line: 43, baseType: !1283, size: 320, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2501, file: !2500, line: 44, baseType: !2508, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2500, line: 44, flags: DIFlagFwdDecl)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2501, file: !2500, line: 48, baseType: !330, size: 64, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2501, file: !2500, line: 59, baseType: !621, size: 256, offset: 640)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2501, file: !2500, line: 60, baseType: !162, size: 64, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2501, file: !2500, line: 61, baseType: !2514, size: 64, offset: 960)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2516)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2517, line: 13, size: 1216, elements: !2518)
!2517 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2518 = !{!2519, !2520, !2521, !2522, !2523, !2524, !2525, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2516, file: !2517, line: 14, baseType: !162, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2516, file: !2517, line: 15, baseType: !330, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2516, file: !2517, line: 17, baseType: !330, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2516, file: !2517, line: 17, baseType: !330, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2516, file: !2517, line: 18, baseType: !330, size: 64, offset: 256)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2516, file: !2517, line: 18, baseType: !330, size: 64, offset: 320)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2516, file: !2517, line: 19, baseType: !2526, size: 64, offset: 384)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2516, file: !2517, line: 21, baseType: !316, size: 64, offset: 448)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2516, file: !2517, line: 23, baseType: !316, size: 64, offset: 512)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2516, file: !2517, line: 24, baseType: !316, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2516, file: !2517, line: 25, baseType: !316, size: 64, offset: 640)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2516, file: !2517, line: 26, baseType: !316, size: 64, offset: 704)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2516, file: !2517, line: 27, baseType: !316, size: 64, offset: 768)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2516, file: !2517, line: 28, baseType: !316, size: 64, offset: 832)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2516, file: !2517, line: 29, baseType: !316, size: 64, offset: 896)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2516, file: !2517, line: 30, baseType: !316, size: 64, offset: 960)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2516, file: !2517, line: 31, baseType: !316, size: 64, offset: 1024)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2516, file: !2517, line: 32, baseType: !316, size: 64, offset: 1088)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2516, file: !2517, line: 33, baseType: !316, size: 64, offset: 1152)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2501, file: !2500, line: 63, baseType: !236, size: 32, offset: 1024)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2501, file: !2500, line: 69, baseType: !157, size: 16, offset: 1056)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2501, file: !2500, line: 70, baseType: !757, size: 16, offset: 1072)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !38, line: 882, baseType: !330, size: 64, offset: 9024)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1690, file: !38, line: 885, baseType: !216, size: 32, offset: 9088)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1690, file: !38, line: 886, baseType: !2546, size: 64, offset: 9152)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1690, file: !38, line: 901, baseType: !1950, size: 64, offset: 9216)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1690, file: !38, line: 904, baseType: !1713, size: 64, offset: 9280)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1690, file: !38, line: 906, baseType: !2551, size: 64, offset: 9344)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1690, file: !38, line: 930, baseType: !236, size: 32, offset: 9408)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1690, file: !38, line: 933, baseType: !236, size: 32, offset: 9440)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1690, file: !38, line: 935, baseType: !2556, size: 64, offset: 9472)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2557)
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2556, file: !68, line: 104, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1690, file: !38, line: 940, baseType: !625, size: 64, offset: 9536)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1690, file: !38, line: 942, baseType: !881, size: 256, offset: 9600)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1687, file: !38, line: 986, baseType: !2564, offset: 10240)
!2564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, elements: !1773)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1390, file: !1065, line: 882, baseType: !1686, size: 64, offset: 9792)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1390, file: !1065, line: 884, baseType: !109, size: 32, offset: 9856)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1390, file: !1065, line: 885, baseType: !109, size: 32, offset: 9888)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1390, file: !1065, line: 886, baseType: !109, size: 32, offset: 9920)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1390, file: !1065, line: 888, baseType: !109, size: 32, offset: 9952)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1390, file: !1065, line: 890, baseType: !330, size: 64, offset: 9984)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1390, file: !1065, line: 893, baseType: !7, size: 32, offset: 10048)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1390, file: !1065, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1390, file: !1065, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1390, file: !1065, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1390, file: !1065, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1390, file: !1065, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1390, file: !1065, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1390, file: !1065, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1390, file: !1065, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1390, file: !1065, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1390, file: !1065, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1390, file: !1065, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1390, file: !1065, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1390, file: !1065, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1390, file: !1065, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1390, file: !1065, line: 969, baseType: !330, size: 64, offset: 10176)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1390, file: !1065, line: 971, baseType: !2588, size: 448, offset: 10240)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2589)
!2589 = !{!2590, !2591, !2596}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2588, file: !62, line: 26, baseType: !330, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2588, file: !62, line: 27, baseType: !2592, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!316, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, scope: !2588, file: !62, line: 28, baseType: !2597, size: 320, offset: 128)
!2597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2588, file: !62, line: 28, size: 320, elements: !2598)
!2598 = !{!2599, !2609, !2634}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2597, file: !62, line: 37, baseType: !2600, size: 320)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2597, file: !62, line: 30, size: 320, elements: !2601)
!2601 = !{!2602, !2604, !2605, !2606, !2607, !2608}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2600, file: !62, line: 31, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2600, file: !62, line: 32, baseType: !429, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2600, file: !62, line: 33, baseType: !429, size: 32, offset: 96)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2600, file: !62, line: 34, baseType: !429, size: 32, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2600, file: !62, line: 35, baseType: !433, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2600, file: !62, line: 36, baseType: !2603, size: 64, offset: 256)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2597, file: !62, line: 47, baseType: !2610, size: 192)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2597, file: !62, line: 39, size: 192, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2633}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2610, file: !62, line: 40, baseType: !1557, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2610, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, scope: !2610, file: !62, line: 42, baseType: !2615, size: 64, offset: 64)
!2615 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2610, file: !62, line: 42, size: 64, elements: !2616)
!2616 = !{!2617, !2625}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2615, file: !62, line: 43, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2620, line: 7, size: 128, elements: !2621)
!2620 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2621 = !{!2622, !2624}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2619, file: !2620, line: 8, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !314, line: 93, baseType: !523)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2619, file: !2620, line: 9, baseType: !523, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2615, file: !62, line: 44, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2628, line: 7, size: 64, elements: !2629)
!2628 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2629 = !{!2630, !2632}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2627, file: !2628, line: 8, baseType: !2631, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2628, line: 5, baseType: !617)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2627, file: !2628, line: 9, baseType: !617, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2610, file: !62, line: 46, baseType: !433, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2597, file: !62, line: 55, baseType: !2635, size: 256)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2597, file: !62, line: 49, size: 256, elements: !2636)
!2636 = !{!2637, !2640, !2641, !2642, !2643}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2635, file: !62, line: 50, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2635, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2635, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2635, file: !62, line: 53, baseType: !330, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2635, file: !62, line: 54, baseType: !330, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1390, file: !1065, line: 973, baseType: !2645, size: 32, offset: 10688)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !168, line: 27, baseType: !2646)
!2646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !314, line: 28, baseType: !109)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1390, file: !1065, line: 974, baseType: !2645, size: 32, offset: 10720)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1390, file: !1065, line: 978, baseType: !330, size: 64, offset: 10752)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1390, file: !1065, line: 987, baseType: !1389, size: 64, offset: 10816)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1390, file: !1065, line: 990, baseType: !1389, size: 64, offset: 10880)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1390, file: !1065, line: 995, baseType: !167, size: 128, offset: 10944)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1390, file: !1065, line: 996, baseType: !167, size: 128, offset: 11072)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1390, file: !1065, line: 997, baseType: !1389, size: 64, offset: 11200)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1390, file: !1065, line: 1005, baseType: !167, size: 128, offset: 11264)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1390, file: !1065, line: 1006, baseType: !167, size: 128, offset: 11392)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1390, file: !1065, line: 1009, baseType: !1754, size: 64, offset: 11520)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1390, file: !1065, line: 1010, baseType: !2658, size: 512, offset: 11584)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 512, elements: !851)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1390, file: !1065, line: 1011, baseType: !167, size: 128, offset: 12096)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1390, file: !1065, line: 1012, baseType: !167, size: 128, offset: 12224)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1390, file: !1065, line: 1014, baseType: !569, size: 64, offset: 12352)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1390, file: !1065, line: 1017, baseType: !750, size: 64, offset: 12416)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1390, file: !1065, line: 1020, baseType: !750, size: 64, offset: 12480)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1390, file: !1065, line: 1023, baseType: !162, size: 64, offset: 12544)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1390, file: !1065, line: 1025, baseType: !433, size: 64, offset: 12608)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1390, file: !1065, line: 1026, baseType: !433, size: 64, offset: 12672)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1390, file: !1065, line: 1031, baseType: !433, size: 64, offset: 12736)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1390, file: !1065, line: 1032, baseType: !2669, size: 192, offset: 12800)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1065, line: 324, size: 192, elements: !2670)
!2670 = !{!2671, !2672, !2673}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2669, file: !1065, line: 326, baseType: !433, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2669, file: !1065, line: 327, baseType: !433, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2669, file: !1065, line: 328, baseType: !579, size: 32, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1390, file: !1065, line: 1041, baseType: !330, size: 64, offset: 12992)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1390, file: !1065, line: 1042, baseType: !330, size: 64, offset: 13056)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1390, file: !1065, line: 1045, baseType: !433, size: 64, offset: 13120)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1390, file: !1065, line: 1048, baseType: !433, size: 64, offset: 13184)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1390, file: !1065, line: 1051, baseType: !330, size: 64, offset: 13248)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1390, file: !1065, line: 1052, baseType: !330, size: 64, offset: 13312)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1390, file: !1065, line: 1055, baseType: !2681, size: 640, offset: 13376)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2682, line: 132, size: 640, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2683 = !{!2684, !2690, !2691}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2681, file: !2682, line: 133, baseType: !2685, size: 576)
!2685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2686, size: 576, elements: !281)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2682, line: 117, size: 192, elements: !2687)
!2687 = !{!2688, !2689}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2686, file: !2682, line: 118, baseType: !433, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2686, file: !2682, line: 119, baseType: !1566, size: 128, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2681, file: !2682, line: 134, baseType: !7, size: 32, offset: 576)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2681, file: !2682, line: 135, baseType: !7, size: 32, offset: 608)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1390, file: !1065, line: 1058, baseType: !2693, size: 448, offset: 14016)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2682, line: 144, size: 448, elements: !2694)
!2694 = !{!2695, !2696, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2693, file: !2682, line: 145, baseType: !841, size: 128, align: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2693, file: !2682, line: 146, baseType: !621, size: 256, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2693, file: !2682, line: 147, baseType: !7, size: 32, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1390, file: !1065, line: 1064, baseType: !1780, size: 64, offset: 14464)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1390, file: !1065, line: 1067, baseType: !1780, size: 64, offset: 14528)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1390, file: !1065, line: 1070, baseType: !1780, size: 64, offset: 14592)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1390, file: !1065, line: 1074, baseType: !1807, size: 64, offset: 14656)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1390, file: !1065, line: 1084, baseType: !2703, size: 128, offset: 14720)
!2703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, elements: !2704)
!2704 = !{!2705}
!2705 = !DISubrange(count: 16)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1390, file: !1065, line: 1086, baseType: !2707, size: 64, offset: 14848)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1065, line: 55, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1390, file: !1065, line: 1089, baseType: !2710, size: 64, offset: 14912)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2711, line: 12, size: 64, elements: !2712)
!2711 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2712 = !{!2713}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2710, file: !2711, line: 13, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2711, line: 8, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1390, file: !1065, line: 1090, baseType: !2717, size: 128, offset: 14976)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2718, line: 13, size: 128, elements: !2719)
!2718 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2719 = !{!2720}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2717, file: !2718, line: 14, baseType: !167, size: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1390, file: !1065, line: 1097, baseType: !2722, size: 64, offset: 15104)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1065, line: 50, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1390, file: !1065, line: 1100, baseType: !2725, size: 64, offset: 15168)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1065, line: 1100, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1390, file: !1065, line: 1103, baseType: !2728, size: 64, offset: 15232)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1065, line: 53, flags: DIFlagFwdDecl)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1390, file: !1065, line: 1107, baseType: !2731, size: 64, offset: 15296)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1065, line: 56, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1390, file: !1065, line: 1110, baseType: !2734, size: 64, offset: 15360)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2736, line: 93, size: 8768, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2785, !2794, !2795, !2797, !2798, !2799, !2802, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2840, !2841, !2848, !2858, !2861, !2862, !2865, !2866, !2867, !2868, !2869, !2870}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2735, file: !2736, line: 94, baseType: !1403, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2735, file: !2736, line: 95, baseType: !236, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2735, file: !2736, line: 96, baseType: !109, size: 32, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2735, file: !2736, line: 97, baseType: !109, size: 32, offset: 96)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2735, file: !2736, line: 98, baseType: !167, size: 128, offset: 128)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2735, file: !2736, line: 100, baseType: !1376, size: 192, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2735, file: !2736, line: 103, baseType: !1389, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2735, file: !2736, line: 106, baseType: !2746, size: 192, offset: 512)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1955, line: 32, size: 192, elements: !2747)
!2747 = !{!2748, !2749}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2746, file: !1955, line: 33, baseType: !167, size: 128)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2746, file: !1955, line: 34, baseType: !2750, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2751, line: 25, baseType: !2752)
!2751 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2751, line: 23, size: 64, elements: !2753)
!2753 = !{!2754}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2752, file: !2751, line: 24, baseType: !1637, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2735, file: !2736, line: 109, baseType: !991, size: 64, offset: 704)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2735, file: !2736, line: 112, baseType: !109, size: 32, offset: 768)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2735, file: !2736, line: 114, baseType: !109, size: 32, offset: 800)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2735, file: !2736, line: 115, baseType: !1389, size: 64, offset: 832)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2735, file: !2736, line: 118, baseType: !109, size: 32, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2735, file: !2736, line: 119, baseType: !7, size: 32, offset: 928)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2735, file: !2736, line: 121, baseType: !2762, size: 64, offset: 960)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2736, line: 80, size: 448, elements: !2764)
!2764 = !{!2765, !2766, !2772}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2763, file: !2736, line: 81, baseType: !236, size: 32)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2763, file: !2736, line: 82, baseType: !2767, size: 128, offset: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2736, line: 75, size: 128, elements: !2768)
!2768 = !{!2769, !2770}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2767, file: !2736, line: 76, baseType: !1389, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2767, file: !2736, line: 77, baseType: !2771, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2763, file: !2736, line: 83, baseType: !570, size: 256, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2735, file: !2736, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2735, file: !2736, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2735, file: !2736, line: 138, baseType: !7, size: 32, offset: 1056)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2735, file: !2736, line: 139, baseType: !167, size: 128, offset: 1088)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2735, file: !2736, line: 142, baseType: !1510, size: 512, offset: 1216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2735, file: !2736, line: 143, baseType: !1518, size: 64, offset: 1728)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2735, file: !2736, line: 150, baseType: !2780, size: 256, offset: 1792)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2781, size: 256, elements: !740)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2736, line: 38, size: 128, elements: !2782)
!2782 = !{!2783, !2784}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2781, file: !2736, line: 39, baseType: !433, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2781, file: !2736, line: 40, baseType: !433, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2735, file: !2736, line: 156, baseType: !2786, size: 192, offset: 2048)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2736, line: 66, size: 192, elements: !2787)
!2787 = !{!2788}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2786, file: !2736, line: 67, baseType: !2789, size: 192)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2736, line: 47, size: 192, elements: !2790)
!2790 = !{!2791, !2792, !2793}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2789, file: !2736, line: 48, baseType: !627, size: 64)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2789, file: !2736, line: 49, baseType: !627, size: 64, offset: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2789, file: !2736, line: 50, baseType: !627, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2735, file: !2736, line: 160, baseType: !2681, size: 640, offset: 2240)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2735, file: !2736, line: 163, baseType: !2796, size: 256, offset: 2880)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1754, size: 256, elements: !851)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2735, file: !2736, line: 169, baseType: !1754, size: 64, offset: 3136)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2735, file: !2736, line: 172, baseType: !109, size: 32, offset: 3200)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2735, file: !2736, line: 174, baseType: !2800, size: 64, offset: 3264)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2736, line: 174, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2735, file: !2736, line: 185, baseType: !2803, size: 64, offset: 3328)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !402, line: 860, baseType: !2804)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 853, size: 64, elements: !2805)
!2805 = !{!2806, !2807}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2804, file: !402, line: 858, baseType: !401, size: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2804, file: !402, line: 859, baseType: !216, size: 32, offset: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2735, file: !2736, line: 186, baseType: !433, size: 64, offset: 3392)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2735, file: !2736, line: 186, baseType: !433, size: 64, offset: 3456)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2735, file: !2736, line: 186, baseType: !433, size: 64, offset: 3520)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2735, file: !2736, line: 186, baseType: !433, size: 64, offset: 3584)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2735, file: !2736, line: 187, baseType: !433, size: 64, offset: 3648)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2735, file: !2736, line: 188, baseType: !433, size: 64, offset: 3712)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2735, file: !2736, line: 189, baseType: !2669, size: 192, offset: 3776)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2735, file: !2736, line: 190, baseType: !330, size: 64, offset: 3968)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2735, file: !2736, line: 190, baseType: !330, size: 64, offset: 4032)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2735, file: !2736, line: 190, baseType: !330, size: 64, offset: 4096)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2735, file: !2736, line: 190, baseType: !330, size: 64, offset: 4160)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2735, file: !2736, line: 191, baseType: !330, size: 64, offset: 4224)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2735, file: !2736, line: 191, baseType: !330, size: 64, offset: 4288)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2735, file: !2736, line: 191, baseType: !330, size: 64, offset: 4352)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2735, file: !2736, line: 191, baseType: !330, size: 64, offset: 4416)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2735, file: !2736, line: 192, baseType: !330, size: 64, offset: 4480)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2735, file: !2736, line: 192, baseType: !330, size: 64, offset: 4544)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2735, file: !2736, line: 192, baseType: !330, size: 64, offset: 4608)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2735, file: !2736, line: 192, baseType: !330, size: 64, offset: 4672)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2735, file: !2736, line: 193, baseType: !330, size: 64, offset: 4736)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2735, file: !2736, line: 193, baseType: !330, size: 64, offset: 4800)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2735, file: !2736, line: 194, baseType: !2830, size: 448, offset: 4864)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2831, line: 12, size: 448, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838, !2839}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2830, file: !2831, line: 15, baseType: !433, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2830, file: !2831, line: 17, baseType: !433, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2830, file: !2831, line: 19, baseType: !433, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2830, file: !2831, line: 21, baseType: !433, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2830, file: !2831, line: 29, baseType: !433, size: 64, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2830, file: !2831, line: 35, baseType: !433, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2830, file: !2831, line: 44, baseType: !433, size: 64, offset: 384)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2735, file: !2736, line: 202, baseType: !435, size: 64, offset: 5312)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2735, file: !2736, line: 213, baseType: !2842, size: 2048, offset: 5376)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2843, size: 2048, elements: !2704)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2844, line: 43, size: 128, elements: !2845)
!2844 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2845 = !{!2846, !2847}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2843, file: !2844, line: 44, baseType: !329, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2843, file: !2844, line: 45, baseType: !329, size: 64, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2735, file: !2736, line: 216, baseType: !2849, size: 448, offset: 7424)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2736, line: 30, size: 448, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856, !2857}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2849, file: !2736, line: 31, baseType: !109, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2849, file: !2736, line: 32, baseType: !316, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2849, file: !2736, line: 33, baseType: !330, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2849, file: !2736, line: 34, baseType: !433, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2849, file: !2736, line: 34, baseType: !433, size: 64, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2849, file: !2736, line: 35, baseType: !330, size: 64, offset: 320)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2849, file: !2736, line: 35, baseType: !330, size: 64, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2735, file: !2736, line: 219, baseType: !2859, size: 64, offset: 7872)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2736, line: 219, flags: DIFlagFwdDecl)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2735, file: !2736, line: 222, baseType: !7, size: 32, offset: 7936)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2735, file: !2736, line: 223, baseType: !2863, size: 64, offset: 8000)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2736, line: 223, flags: DIFlagFwdDecl)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2735, file: !2736, line: 230, baseType: !701, size: 8, offset: 8064)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2735, file: !2736, line: 231, baseType: !759, size: 16, offset: 8080)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2735, file: !2736, line: 232, baseType: !759, size: 16, offset: 8096)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2735, file: !2736, line: 234, baseType: !1686, size: 64, offset: 8128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2735, file: !2736, line: 237, baseType: !621, size: 256, offset: 8192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2735, file: !2736, line: 243, baseType: !1283, size: 320, offset: 8448)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1390, file: !1065, line: 1111, baseType: !2872, size: 64, offset: 15424)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2736, line: 20, size: 16640, elements: !2874)
!2874 = !{!2875, !2876, !2877, !2878}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2873, file: !2736, line: 21, baseType: !216, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2873, file: !2736, line: 22, baseType: !1403, size: 32, offset: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2873, file: !2736, line: 23, baseType: !1376, size: 192, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2873, file: !2736, line: 24, baseType: !2879, size: 16384, offset: 256)
!2879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2880, size: 16384, elements: !285)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1955, line: 51, size: 256, elements: !2881)
!2881 = !{!2882}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2880, file: !1955, line: 52, baseType: !2883, size: 256)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1955, line: 37, size: 256, elements: !2884)
!2884 = !{!2885, !2892, !2893, !2897}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2883, file: !1955, line: 39, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2887, line: 83, baseType: !2888)
!2887 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2887, line: 82, baseType: !2890)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{null, !109}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2883, file: !1955, line: 40, baseType: !330, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2883, file: !1955, line: 46, baseType: !2894, size: 64, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2887, line: 86, baseType: !2895)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2887, line: 85, baseType: !986)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2883, file: !1955, line: 48, baseType: !2750, size: 64, offset: 192)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1390, file: !1065, line: 1112, baseType: !2750, size: 64, offset: 15488)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1390, file: !1065, line: 1113, baseType: !2750, size: 64, offset: 15552)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1390, file: !1065, line: 1115, baseType: !2750, size: 64, offset: 15616)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1390, file: !1065, line: 1116, baseType: !2746, size: 192, offset: 15680)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1390, file: !1065, line: 1117, baseType: !330, size: 64, offset: 15872)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1390, file: !1065, line: 1118, baseType: !327, size: 64, offset: 15936)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1390, file: !1065, line: 1119, baseType: !7, size: 32, offset: 16000)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1390, file: !1065, line: 1121, baseType: !840, size: 64, offset: 16064)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1390, file: !1065, line: 1125, baseType: !2907, size: 64, offset: 16128)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1065, line: 43, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1390, file: !1065, line: 1127, baseType: !366, size: 32, offset: 16192)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1390, file: !1065, line: 1128, baseType: !7, size: 32, offset: 16224)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1390, file: !1065, line: 1130, baseType: !2912, size: 128, offset: 16256)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2913, line: 37, size: 128, elements: !2914)
!2913 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2914 = !{!2915, !2916, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2912, file: !2913, line: 38, baseType: !109, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2912, file: !2913, line: 39, baseType: !236, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2912, file: !2913, line: 40, baseType: !2918, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2913, line: 24, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1390, file: !1065, line: 1131, baseType: !2921, size: 256, offset: 16384)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2922, line: 12, size: 256, elements: !2923)
!2922 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2923 = !{!2924, !2925, !2926, !2927}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2921, file: !2922, line: 13, baseType: !280, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2921, file: !2922, line: 14, baseType: !330, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2921, file: !2922, line: 15, baseType: !330, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2921, file: !2922, line: 16, baseType: !701, size: 8, offset: 192)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1390, file: !1065, line: 1134, baseType: !433, size: 64, offset: 16640)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1390, file: !1065, line: 1135, baseType: !433, size: 64, offset: 16704)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1390, file: !1065, line: 1138, baseType: !216, size: 32, offset: 16768)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1390, file: !1065, line: 1141, baseType: !579, size: 32, offset: 16800)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1390, file: !1065, line: 1143, baseType: !2933, size: 64, offset: 16832)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1065, line: 735, size: 64, elements: !2934)
!2934 = !{!2935}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2933, file: !1065, line: 736, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1390, file: !1065, line: 1147, baseType: !1569, size: 128, offset: 16896)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1390, file: !1065, line: 1149, baseType: !1389, size: 64, offset: 17024)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1390, file: !1065, line: 1151, baseType: !2940, size: 64, offset: 17088)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1065, line: 1151, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1390, file: !1065, line: 1188, baseType: !162, size: 64, offset: 17152)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1390, file: !1065, line: 1191, baseType: !2944, size: 64, offset: 17216)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1065, line: 44, flags: DIFlagFwdDecl)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1390, file: !1065, line: 1194, baseType: !2947, size: 64, offset: 17280)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1065, line: 45, flags: DIFlagFwdDecl)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1390, file: !1065, line: 1197, baseType: !2950, size: 64, offset: 17344)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1065, line: 61, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1390, file: !1065, line: 1199, baseType: !2953, size: 64, offset: 17408)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2955, line: 99, size: 128, elements: !2956)
!2955 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2956 = !{!2957, !2958, !2959}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2954, file: !2955, line: 100, baseType: !625, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2954, file: !2955, line: 101, baseType: !236, size: 32, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2954, file: !2955, line: 103, baseType: !161, size: 16, offset: 96)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1390, file: !1065, line: 1202, baseType: !2961, size: 64, offset: 17472)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1065, line: 48, flags: DIFlagFwdDecl)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1390, file: !1065, line: 1205, baseType: !330, size: 64, offset: 17536)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1390, file: !1065, line: 1206, baseType: !2965, size: 64, offset: 17600)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1955, line: 14, baseType: !2967)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1955, line: 12, size: 384, elements: !2968)
!2968 = !{!2969}
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !2967, file: !1955, line: 13, baseType: !2970, size: 384)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2967, file: !1955, line: 13, size: 384, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2970, file: !1955, line: 13, baseType: !109, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2970, file: !1955, line: 13, baseType: !109, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2970, file: !1955, line: 13, baseType: !109, size: 32, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2970, file: !1955, line: 13, baseType: !2976, size: 256, offset: 128)
!2976 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2977, line: 37, size: 256, elements: !2978)
!2977 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2978 = !{!2979, !2984, !2997, !3003, !3012, !3039, !3044}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2976, file: !2977, line: 42, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2976, file: !2977, line: 39, size: 64, elements: !2981)
!2981 = !{!2982, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2980, file: !2977, line: 40, baseType: !2646, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2980, file: !2977, line: 41, baseType: !372, size: 32, offset: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2976, file: !2977, line: 50, baseType: !2985, size: 192)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2976, file: !2977, line: 45, size: 192, elements: !2986)
!2986 = !{!2987, !2989, !2990, !2996}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2985, file: !2977, line: 46, baseType: !2988, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !314, line: 95, baseType: !109)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2985, file: !2977, line: 47, baseType: !109, size: 32, offset: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2985, file: !2977, line: 48, baseType: !2991, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2977, line: 11, baseType: !2992)
!2992 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2977, line: 8, size: 64, elements: !2993)
!2993 = !{!2994, !2995}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2992, file: !2977, line: 9, baseType: !109, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2992, file: !2977, line: 10, baseType: !162, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2985, file: !2977, line: 49, baseType: !109, size: 32, offset: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2976, file: !2977, line: 57, baseType: !2998, size: 128)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2976, file: !2977, line: 53, size: 128, elements: !2999)
!2999 = !{!3000, !3001, !3002}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2998, file: !2977, line: 54, baseType: !2646, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2998, file: !2977, line: 55, baseType: !372, size: 32, offset: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2998, file: !2977, line: 56, baseType: !2991, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2976, file: !2977, line: 66, baseType: !3004, size: 256)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2976, file: !2977, line: 60, size: 256, elements: !3005)
!3005 = !{!3006, !3007, !3008, !3009, !3011}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3004, file: !2977, line: 61, baseType: !2646, size: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3004, file: !2977, line: 62, baseType: !372, size: 32, offset: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3004, file: !2977, line: 63, baseType: !109, size: 32, offset: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3004, file: !2977, line: 64, baseType: !3010, size: 64, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !314, line: 94, baseType: !315)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3004, file: !2977, line: 65, baseType: !3010, size: 64, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2976, file: !2977, line: 105, baseType: !3013, size: 256)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2976, file: !2977, line: 69, size: 256, elements: !3014)
!3014 = !{!3015, !3016}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3013, file: !2977, line: 70, baseType: !162, size: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, scope: !3013, file: !2977, line: 79, baseType: !3017, size: 192, offset: 64)
!3017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3013, file: !2977, line: 79, size: 192, elements: !3018)
!3018 = !{!3019, !3020, !3021, !3028, !3033}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3017, file: !2977, line: 81, baseType: !109, size: 32)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3017, file: !2977, line: 86, baseType: !759, size: 16)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3017, file: !2977, line: 92, baseType: !3022, size: 192)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3017, file: !2977, line: 88, size: 192, elements: !3023)
!3023 = !{!3024, !3026, !3027}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3022, file: !2977, line: 89, baseType: !3025, size: 64)
!3025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 64, elements: !1553)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3022, file: !2977, line: 90, baseType: !162, size: 64, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3022, file: !2977, line: 91, baseType: !162, size: 64, offset: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3017, file: !2977, line: 97, baseType: !3029, size: 96)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3017, file: !2977, line: 94, size: 96, elements: !3030)
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3029, file: !2977, line: 95, baseType: !3025, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3029, file: !2977, line: 96, baseType: !430, size: 32, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3017, file: !2977, line: 103, baseType: !3034, size: 128)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3017, file: !2977, line: 99, size: 128, elements: !3035)
!3035 = !{!3036, !3037, !3038}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3034, file: !2977, line: 100, baseType: !330, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3034, file: !2977, line: 101, baseType: !430, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3034, file: !2977, line: 102, baseType: !430, size: 32, offset: 96)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2976, file: !2977, line: 111, baseType: !3040, size: 128)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2976, file: !2977, line: 108, size: 128, elements: !3041)
!3041 = !{!3042, !3043}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3040, file: !2977, line: 109, baseType: !316, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3040, file: !2977, line: 110, baseType: !109, size: 32, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2976, file: !2977, line: 118, baseType: !3045, size: 128)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2976, file: !2977, line: 114, size: 128, elements: !3046)
!3046 = !{!3047, !3048, !3049}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3045, file: !2977, line: 115, baseType: !162, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3045, file: !2977, line: 116, baseType: !109, size: 32, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3045, file: !2977, line: 117, baseType: !7, size: 32, offset: 96)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1390, file: !1065, line: 1208, baseType: !2830, size: 448, offset: 17664)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1390, file: !1065, line: 1215, baseType: !433, size: 64, offset: 18112)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1390, file: !1065, line: 1217, baseType: !433, size: 64, offset: 18176)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1390, file: !1065, line: 1219, baseType: !433, size: 64, offset: 18240)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1390, file: !1065, line: 1223, baseType: !3055, size: 64, offset: 18304)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3056, line: 99, baseType: !3057)
!3056 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3056, line: 99, size: 64, elements: !3058)
!3058 = !{!3059}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3057, file: !3056, line: 99, baseType: !1637, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1390, file: !1065, line: 1225, baseType: !401, size: 32, offset: 18368)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1390, file: !1065, line: 1226, baseType: !109, size: 32, offset: 18400)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1390, file: !1065, line: 1227, baseType: !109, size: 32, offset: 18432)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1390, file: !1065, line: 1231, baseType: !3064, size: 64, offset: 18496)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1065, line: 1231, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1390, file: !1065, line: 1233, baseType: !167, size: 128, offset: 18560)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1390, file: !1065, line: 1240, baseType: !3068, size: 64, offset: 18688)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1065, line: 62, flags: DIFlagFwdDecl)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1390, file: !1065, line: 1242, baseType: !3071, size: 64, offset: 18752)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1065, line: 1242, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1390, file: !1065, line: 1244, baseType: !167, size: 128, offset: 18816)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1390, file: !1065, line: 1245, baseType: !3075, size: 64, offset: 18944)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1065, line: 51, flags: DIFlagFwdDecl)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1390, file: !1065, line: 1246, baseType: !621, size: 256, offset: 19008)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1390, file: !1065, line: 1247, baseType: !7, size: 32, offset: 19264)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1390, file: !1065, line: 1250, baseType: !3080, size: 64, offset: 19328)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1065, line: 57, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1390, file: !1065, line: 1251, baseType: !621, size: 256, offset: 19392)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1390, file: !1065, line: 1252, baseType: !167, size: 128, offset: 19648)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1390, file: !1065, line: 1259, baseType: !2335, size: 64, offset: 19776)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1390, file: !1065, line: 1260, baseType: !759, size: 16, offset: 19840)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1390, file: !1065, line: 1261, baseType: !759, size: 16, offset: 19856)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1390, file: !1065, line: 1314, baseType: !3088, size: 64, offset: 19904)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3090, line: 62, size: 256, align: 256, elements: !3091)
!3090 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3091 = !{!3092, !3093, !3094, !3095, !3096, !3097, !3098}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3089, file: !3090, line: 75, baseType: !430, size: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3089, file: !3090, line: 90, baseType: !430, size: 32, offset: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3089, file: !3090, line: 112, baseType: !434, size: 64, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3089, file: !3090, line: 132, baseType: !430, size: 32, offset: 128)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3089, file: !3090, line: 140, baseType: !430, size: 32, offset: 160)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3089, file: !3090, line: 149, baseType: !430, size: 32, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3089, file: !3090, line: 154, baseType: !3099, offset: 224)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, elements: !1773)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1390, file: !1065, line: 1315, baseType: !429, size: 32, offset: 19968)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1390, file: !1065, line: 1316, baseType: !429, size: 32, offset: 20000)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1390, file: !1065, line: 1321, baseType: !330, size: 64, offset: 20032)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1390, file: !1065, line: 1325, baseType: !109, size: 32, offset: 20096)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1390, file: !1065, line: 1326, baseType: !109, size: 32, offset: 20128)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1390, file: !1065, line: 1327, baseType: !109, size: 32, offset: 20160)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1390, file: !1065, line: 1328, baseType: !109, size: 32, offset: 20192)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1390, file: !1065, line: 1329, baseType: !841, size: 128, align: 64, offset: 20224)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1390, file: !1065, line: 1332, baseType: !3109, size: 128, offset: 20352)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3110, line: 51, size: 128, elements: !3111)
!3110 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3111 = !{!3112, !3117, !3118}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3109, file: !3110, line: 60, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3114, line: 7, size: 64, elements: !3115)
!3114 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3113, file: !3114, line: 12, baseType: !1634, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3109, file: !3110, line: 63, baseType: !701, size: 8, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3109, file: !3110, line: 70, baseType: !701, size: 8, offset: 72)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1390, file: !1065, line: 1335, baseType: !2387, size: 64, offset: 20480)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1390, file: !1065, line: 1337, baseType: !3121, size: 128, offset: 20544)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3110, line: 39, size: 128, elements: !3122)
!3122 = !{!3123, !3124, !3125}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3121, file: !3110, line: 40, baseType: !2174, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3121, file: !3110, line: 42, baseType: !430, size: 32, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3121, file: !3110, line: 43, baseType: !430, size: 32, offset: 96)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1390, file: !1065, line: 1340, baseType: !3127, size: 64, offset: 20672)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1065, line: 69, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1390, file: !1065, line: 1351, baseType: !109, size: 32, offset: 20736)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1390, file: !1065, line: 1352, baseType: !109, size: 32, offset: 20768)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1390, file: !1065, line: 1354, baseType: !330, size: 64, offset: 20800)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1390, file: !1065, line: 1364, baseType: !433, size: 64, offset: 20864)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1390, file: !1065, line: 1365, baseType: !433, size: 64, offset: 20928)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1390, file: !1065, line: 1412, baseType: !330, size: 64, offset: 20992)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1390, file: !1065, line: 1453, baseType: !3136, size: 64, offset: 21056)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1065, line: 1453, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1390, file: !1065, line: 1457, baseType: !3139, size: 64, offset: 21120)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3141)
!3141 = !{!3142, !3143, !3162, !3165, !3166, !3199, !3209}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3140, file: !68, line: 62, baseType: !67, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, scope: !3140, file: !68, line: 64, baseType: !3144, size: 192, offset: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3140, file: !68, line: 64, size: 192, elements: !3145)
!3145 = !{!3146, !3157}
!3146 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !68, line: 65, baseType: !3147, size: 192)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !68, line: 65, size: 192, elements: !3148)
!3148 = !{!3149, !3156}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3147, file: !68, line: 66, baseType: !3150, size: 128)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3151, line: 50, size: 128, elements: !3152)
!3151 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3152 = !{!3153, !3154, !3155}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3150, file: !3151, line: 52, baseType: !330, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3150, file: !3151, line: 54, baseType: !7, size: 32, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3150, file: !3151, line: 55, baseType: !7, size: 32, offset: 96)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3147, file: !68, line: 67, baseType: !330, size: 64, offset: 128)
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3144, file: !68, line: 70, baseType: !3158, size: 192)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3144, file: !68, line: 70, size: 192, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3158, file: !68, line: 71, baseType: !841, size: 128, align: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3158, file: !68, line: 72, baseType: !330, size: 64, offset: 128)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3140, file: !68, line: 76, baseType: !3163, size: 64, offset: 256)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3140, file: !68, line: 77, baseType: !330, size: 64, offset: 320)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3140, file: !68, line: 79, baseType: !3167, size: 64, offset: 384)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3151, line: 25, size: 256, elements: !3169)
!3169 = !{!3170, !3176, !3180}
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !3151, line: 26, baseType: !3171, size: 128)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3168, file: !3151, line: 26, size: 128, elements: !3172)
!3172 = !{!3173, !3175}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3171, file: !3151, line: 27, baseType: !3174, size: 128)
!3174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, elements: !2704)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3171, file: !3151, line: 28, baseType: !3174, size: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3168, file: !3151, line: 31, baseType: !3177, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3179)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3151, line: 23, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_member, scope: !3168, file: !3151, line: 33, baseType: !3181, size: 64, offset: 192)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3168, file: !3151, line: 33, size: 64, elements: !3182)
!3182 = !{!3183, !3189, !3194}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3181, file: !3151, line: 38, baseType: !3184, size: 64)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !3151, line: 34, size: 64, elements: !3185)
!3185 = !{!3186, !3187, !3188}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3184, file: !3151, line: 35, baseType: !617, size: 32)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3184, file: !3151, line: 36, baseType: !244, size: 8, offset: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3184, file: !3151, line: 37, baseType: !244, size: 8, offset: 40)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3181, file: !3151, line: 42, baseType: !3190, size: 16)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !3151, line: 39, size: 16, elements: !3191)
!3191 = !{!3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3190, file: !3151, line: 40, baseType: !244, size: 8)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3190, file: !3151, line: 41, baseType: !244, size: 8, offset: 8)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3181, file: !3151, line: 46, baseType: !3195, size: 16)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !3151, line: 43, size: 16, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3195, file: !3151, line: 44, baseType: !244, size: 8)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3195, file: !3151, line: 45, baseType: !244, size: 8, offset: 8)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3140, file: !68, line: 81, baseType: !3200, size: 64, offset: 448)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3201, file: !68, line: 86, baseType: !3163, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3201, file: !68, line: 87, baseType: !330, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3201, file: !68, line: 88, baseType: !330, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3201, file: !68, line: 89, baseType: !330, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3201, file: !68, line: 90, baseType: !701, size: 8, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3201, file: !68, line: 92, baseType: !3200, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3140, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1390, file: !1065, line: 1463, baseType: !3211, offset: 21184)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1065, line: 739, elements: !910)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1390, file: !1065, line: 1470, baseType: !841, size: 128, align: 64, offset: 21184)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1390, file: !1065, line: 1471, baseType: !1403, size: 32, offset: 21312)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1390, file: !1065, line: 1472, baseType: !109, size: 32, offset: 21344)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1390, file: !1065, line: 1474, baseType: !1389, size: 64, offset: 21376)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1390, file: !1065, line: 1475, baseType: !863, size: 320, offset: 21440)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1390, file: !1065, line: 1478, baseType: !3218, size: 64, offset: 21760)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2027, line: 49, size: 512, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3224, !3225, !3227, !3228, !3229, !3231}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3219, file: !2027, line: 50, baseType: !3218, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3219, file: !2027, line: 51, baseType: !162, size: 64, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3219, file: !2027, line: 52, baseType: !330, size: 64, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3219, file: !2027, line: 53, baseType: !330, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3219, file: !2027, line: 54, baseType: !3226, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3219, file: !2027, line: 56, baseType: !7, size: 32, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3219, file: !2027, line: 58, baseType: !7, size: 32, offset: 352)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3219, file: !2027, line: 59, baseType: !3230, size: 64, offset: 384)
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !168, line: 159, baseType: !433)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3219, file: !2027, line: 60, baseType: !2526, size: 64, offset: 448)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1390, file: !1065, line: 1482, baseType: !1403, size: 32, offset: 21824)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1390, file: !1065, line: 1489, baseType: !162, size: 64, offset: 21888)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1390, file: !1065, line: 1504, baseType: !162, size: 64, offset: 21952)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1390, file: !1065, line: 1505, baseType: !434, size: 64, offset: 22016)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1390, file: !1065, line: 1506, baseType: !433, size: 64, offset: 22080)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1390, file: !1065, line: 1507, baseType: !434, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1390, file: !1065, line: 1508, baseType: !434, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1390, file: !1065, line: 1509, baseType: !434, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1390, file: !1065, line: 1510, baseType: !841, size: 128, align: 64, offset: 22208)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1390, file: !1065, line: 1511, baseType: !109, size: 32, offset: 22336)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1390, file: !1065, line: 1515, baseType: !3243, size: 64, offset: 22400)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1417, line: 56, size: 64, elements: !3244)
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3243, file: !1417, line: 57, baseType: !1420, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1390, file: !1065, line: 1518, baseType: !3243, size: 64, offset: 22464)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1390, file: !1065, line: 1528, baseType: !841, size: 128, align: 64, offset: 22528)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1390, file: !1065, line: 1552, baseType: !3249, size: 35328, offset: 23040)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3250, line: 430, size: 35328, elements: !3251)
!3250 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3251 = !{!3252, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3281, !3282, !3283, !3284, !3285, !3286, !3289, !3290, !3291, !3292}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3249, file: !3250, line: 432, baseType: !3253, size: 192)
!3253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3254, size: 192, elements: !281)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3255, line: 16, size: 64, elements: !3256)
!3255 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3256 = !{!3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3269}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3254, file: !3255, line: 17, baseType: !157, size: 16)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3254, file: !3255, line: 18, baseType: !157, size: 16, offset: 16)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3254, file: !3255, line: 19, baseType: !157, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3254, file: !3255, line: 19, baseType: !157, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3254, file: !3255, line: 19, baseType: !157, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3254, file: !3255, line: 19, baseType: !157, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3254, file: !3255, line: 19, baseType: !157, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3254, file: !3255, line: 20, baseType: !157, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3254, file: !3255, line: 20, baseType: !157, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3254, file: !3255, line: 20, baseType: !157, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3254, file: !3255, line: 20, baseType: !157, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3254, file: !3255, line: 20, baseType: !157, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3254, file: !3255, line: 20, baseType: !157, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3249, file: !3250, line: 436, baseType: !330, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3249, file: !3250, line: 440, baseType: !161, size: 16, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3249, file: !3250, line: 441, baseType: !161, size: 16, offset: 272)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3249, file: !3250, line: 442, baseType: !161, size: 16, offset: 288)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3249, file: !3250, line: 443, baseType: !161, size: 16, offset: 304)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3249, file: !3250, line: 447, baseType: !330, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3249, file: !3250, line: 448, baseType: !330, size: 64, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3249, file: !3250, line: 459, baseType: !3278, size: 256, offset: 448)
!3278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3279, size: 256, elements: !851)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3250, line: 428, flags: DIFlagFwdDecl)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3249, file: !3250, line: 461, baseType: !330, size: 64, offset: 704)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3249, file: !3250, line: 463, baseType: !330, size: 64, offset: 768)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3249, file: !3250, line: 465, baseType: !330, size: 64, offset: 832)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3249, file: !3250, line: 466, baseType: !330, size: 64, offset: 896)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3249, file: !3250, line: 467, baseType: !330, size: 64, offset: 960)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3249, file: !3250, line: 473, baseType: !3287, size: 64, offset: 1024)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3250, line: 10, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3249, file: !3250, line: 480, baseType: !330, size: 64, offset: 1088)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3249, file: !3250, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3249, file: !3250, line: 491, baseType: !429, size: 32, offset: 1184)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3249, file: !3250, line: 501, baseType: !3293, size: 33792, offset: 1536)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3294, line: 448, size: 33792, elements: !3295)
!3294 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3295 = !{!3296, !3297, !3298, !3460, !3461, !3467, !3468}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3293, file: !3294, line: 461, baseType: !7, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3293, file: !3294, line: 468, baseType: !330, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3293, file: !3294, line: 476, baseType: !3299, size: 64, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3294, line: 356, size: 33280, align: 512, elements: !3301)
!3301 = !{!3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3300, file: !3294, line: 358, baseType: !7, size: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3300, file: !3294, line: 361, baseType: !7, size: 32, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3300, file: !3294, line: 364, baseType: !433, size: 64, offset: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3300, file: !3294, line: 367, baseType: !433, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3300, file: !3294, line: 370, baseType: !433, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3300, file: !3294, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3300, file: !3294, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3300, file: !3294, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3300, file: !3294, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3300, file: !3294, line: 397, baseType: !3312, size: 32768, offset: 512)
!3312 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3294, line: 348, size: 32768, elements: !3313)
!3313 = !{!3314, !3329, !3366, !3443, !3456}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3312, file: !3294, line: 349, baseType: !3315, size: 896)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3294, line: 12, size: 896, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3328}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3315, file: !3294, line: 13, baseType: !429, size: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3315, file: !3294, line: 14, baseType: !429, size: 32, offset: 32)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3315, file: !3294, line: 15, baseType: !429, size: 32, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3315, file: !3294, line: 16, baseType: !429, size: 32, offset: 96)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3315, file: !3294, line: 17, baseType: !429, size: 32, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3315, file: !3294, line: 18, baseType: !429, size: 32, offset: 160)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3315, file: !3294, line: 19, baseType: !429, size: 32, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3315, file: !3294, line: 22, baseType: !3325, size: 640, offset: 224)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 640, elements: !3326)
!3326 = !{!3327}
!3327 = !DISubrange(count: 20)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3315, file: !3294, line: 25, baseType: !429, size: 32, offset: 864)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3312, file: !3294, line: 350, baseType: !3330, size: 4096, align: 128)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3294, line: 34, size: 4096, align: 128, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3335, !3336, !3351, !3352, !3353, !3355, !3357, !3361}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3330, file: !3294, line: 35, baseType: !157, size: 16)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3330, file: !3294, line: 36, baseType: !157, size: 16, offset: 16)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3330, file: !3294, line: 37, baseType: !157, size: 16, offset: 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3330, file: !3294, line: 38, baseType: !157, size: 16, offset: 48)
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3294, line: 39, baseType: !3337, size: 128, offset: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3294, line: 39, size: 128, elements: !3338)
!3338 = !{!3339, !3344}
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3337, file: !3294, line: 40, baseType: !3340, size: 128)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3294, line: 40, size: 128, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3340, file: !3294, line: 41, baseType: !433, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3340, file: !3294, line: 42, baseType: !433, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, scope: !3337, file: !3294, line: 44, baseType: !3345, size: 128)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3337, file: !3294, line: 44, size: 128, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3345, file: !3294, line: 45, baseType: !429, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3345, file: !3294, line: 46, baseType: !429, size: 32, offset: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3345, file: !3294, line: 47, baseType: !429, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3345, file: !3294, line: 48, baseType: !429, size: 32, offset: 96)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3330, file: !3294, line: 51, baseType: !429, size: 32, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3330, file: !3294, line: 52, baseType: !429, size: 32, offset: 224)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3330, file: !3294, line: 55, baseType: !3354, size: 1024, offset: 256)
!3354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 1024, elements: !442)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3330, file: !3294, line: 58, baseType: !3356, size: 2048, offset: 1280)
!3356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 2048, elements: !285)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3330, file: !3294, line: 60, baseType: !3358, size: 384, offset: 3328)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 384, elements: !3359)
!3359 = !{!3360}
!3360 = !DISubrange(count: 12)
!3361 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !3294, line: 62, baseType: !3362, size: 384, offset: 3712)
!3362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3330, file: !3294, line: 62, size: 384, elements: !3363)
!3363 = !{!3364, !3365}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3362, file: !3294, line: 63, baseType: !3358, size: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3362, file: !3294, line: 64, baseType: !3358, size: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3312, file: !3294, line: 351, baseType: !3367, size: 1088)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3294, line: 79, size: 1088, elements: !3368)
!3368 = !{!3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3442}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3367, file: !3294, line: 80, baseType: !429, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3367, file: !3294, line: 81, baseType: !429, size: 32, offset: 32)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3367, file: !3294, line: 82, baseType: !429, size: 32, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3367, file: !3294, line: 83, baseType: !429, size: 32, offset: 96)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3367, file: !3294, line: 84, baseType: !429, size: 32, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3367, file: !3294, line: 85, baseType: !429, size: 32, offset: 160)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3367, file: !3294, line: 86, baseType: !429, size: 32, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3367, file: !3294, line: 88, baseType: !3325, size: 640, offset: 224)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3367, file: !3294, line: 89, baseType: !244, size: 8, offset: 864)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3367, file: !3294, line: 90, baseType: !244, size: 8, offset: 872)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3367, file: !3294, line: 91, baseType: !244, size: 8, offset: 880)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3367, file: !3294, line: 92, baseType: !244, size: 8, offset: 888)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3367, file: !3294, line: 93, baseType: !244, size: 8, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3367, file: !3294, line: 94, baseType: !244, size: 8, offset: 904)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3367, file: !3294, line: 95, baseType: !3384, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3386, line: 11, size: 128, elements: !3387)
!3386 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3387 = !{!3388, !3389}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3385, file: !3386, line: 12, baseType: !316, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3385, file: !3386, line: 13, baseType: !3390, size: 64, offset: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3392, line: 103, size: 1344, elements: !3393)
!3392 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3393 = !{!3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3422, !3423, !3424}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3391, file: !3392, line: 109, baseType: !330, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3391, file: !3392, line: 110, baseType: !330, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3391, file: !3392, line: 111, baseType: !330, size: 64, offset: 128)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3391, file: !3392, line: 112, baseType: !330, size: 64, offset: 192)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3391, file: !3392, line: 113, baseType: !330, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3391, file: !3392, line: 114, baseType: !330, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3391, file: !3392, line: 117, baseType: !330, size: 64, offset: 384)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3391, file: !3392, line: 118, baseType: !330, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3391, file: !3392, line: 119, baseType: !330, size: 64, offset: 512)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3391, file: !3392, line: 120, baseType: !330, size: 64, offset: 576)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3391, file: !3392, line: 121, baseType: !330, size: 64, offset: 640)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3391, file: !3392, line: 122, baseType: !330, size: 64, offset: 704)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3391, file: !3392, line: 123, baseType: !330, size: 64, offset: 768)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3391, file: !3392, line: 124, baseType: !330, size: 64, offset: 832)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3391, file: !3392, line: 125, baseType: !330, size: 64, offset: 896)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3391, file: !3392, line: 139, baseType: !330, size: 64, offset: 960)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3391, file: !3392, line: 142, baseType: !330, size: 64, offset: 1024)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3391, file: !3392, line: 144, baseType: !3412, size: 64, offset: 1088)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3391, file: !3392, line: 144, size: 64, elements: !3413)
!3413 = !{!3414, !3415, !3416}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3412, file: !3392, line: 146, baseType: !157, size: 16)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3412, file: !3392, line: 148, baseType: !433, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3412, file: !3392, line: 150, baseType: !3417, size: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3392, line: 59, size: 64, elements: !3418)
!3418 = !{!3419, !3420, !3421}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3417, file: !3392, line: 61, baseType: !433, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3417, file: !3392, line: 63, baseType: !433, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3417, file: !3392, line: 65, baseType: !433, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3391, file: !3392, line: 153, baseType: !330, size: 64, offset: 1152)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3391, file: !3392, line: 154, baseType: !330, size: 64, offset: 1216)
!3424 = !DIDerivedType(tag: DW_TAG_member, scope: !3391, file: !3392, line: 156, baseType: !3425, size: 64, offset: 1280)
!3425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3391, file: !3392, line: 156, size: 64, elements: !3426)
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3425, file: !3392, line: 158, baseType: !157, size: 16)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3425, file: !3392, line: 160, baseType: !433, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3425, file: !3392, line: 162, baseType: !3430, size: 64)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3392, line: 69, size: 64, elements: !3431)
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3430, file: !3392, line: 71, baseType: !433, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3430, file: !3392, line: 73, baseType: !433, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3430, file: !3392, line: 75, baseType: !433, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3430, file: !3392, line: 77, baseType: !433, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3430, file: !3392, line: 80, baseType: !433, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3430, file: !3392, line: 83, baseType: !433, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3430, file: !3392, line: 86, baseType: !433, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3430, file: !3392, line: 88, baseType: !433, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3430, file: !3392, line: 93, baseType: !433, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3430, file: !3392, line: 100, baseType: !433, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3367, file: !3294, line: 96, baseType: !429, size: 32, offset: 1024)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3312, file: !3294, line: 352, baseType: !3444, size: 4608, align: 512)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3294, line: 333, size: 4608, align: 512, elements: !3445)
!3445 = !{!3446, !3447, !3454}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3444, file: !3294, line: 334, baseType: !3330, size: 4096, align: 128)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3444, file: !3294, line: 335, baseType: !3448, size: 512, offset: 4096)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3294, line: 312, size: 512, elements: !3449)
!3449 = !{!3450, !3451, !3452}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3448, file: !3294, line: 313, baseType: !433, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3448, file: !3294, line: 314, baseType: !433, size: 64, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3448, file: !3294, line: 315, baseType: !3453, size: 384, offset: 128)
!3453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 384, elements: !1856)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3444, file: !3294, line: 336, baseType: !3455, offset: 4608)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, elements: !1773)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3312, file: !3294, line: 353, baseType: !3457, size: 32768)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 32768, elements: !3458)
!3458 = !{!3459}
!3459 = !DISubrange(count: 4096)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3293, file: !3294, line: 484, baseType: !3299, size: 64, offset: 192)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3293, file: !3294, line: 491, baseType: !3462, size: 128, offset: 256)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3294, line: 404, size: 128, elements: !3463)
!3463 = !{!3464, !3465, !3466}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3462, file: !3294, line: 424, baseType: !433, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3462, file: !3294, line: 432, baseType: !7, size: 32, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3462, file: !3294, line: 440, baseType: !7, size: 32, offset: 96)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3293, file: !3294, line: 498, baseType: !3462, size: 128, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3293, file: !3294, line: 508, baseType: !3300, size: 33280, align: 512, offset: 512)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1366, file: !1367, line: 16, baseType: !1376, size: 192, offset: 512)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1366, file: !1367, line: 17, baseType: !236, size: 32, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !512, file: !14, line: 1240, baseType: !162, size: 64, offset: 6912)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !512, file: !14, line: 1243, baseType: !429, size: 32, offset: 6976)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !512, file: !14, line: 1245, baseType: !1123, size: 64, offset: 7040)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !512, file: !14, line: 1246, baseType: !1123, size: 64, offset: 7104)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !512, file: !14, line: 1248, baseType: !430, size: 32, offset: 7168)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !512, file: !14, line: 1249, baseType: !3477, size: 64, offset: 7232)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !512, file: !14, line: 1252, baseType: !3480, size: 256, offset: 7296)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !442)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !512, file: !14, line: 1253, baseType: !3482, size: 128, offset: 7552)
!3482 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3483, line: 21, baseType: !3484)
!3483 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3483, line: 19, size: 128, elements: !3485)
!3485 = !{!3486}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3484, file: !3483, line: 20, baseType: !3487, size: 128)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !2704)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !512, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !512, file: !14, line: 1261, baseType: !621, size: 256, offset: 7744)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !512, file: !14, line: 1267, baseType: !204, size: 64, offset: 8000)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !512, file: !14, line: 1269, baseType: !458, size: 64, offset: 8064)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !512, file: !14, line: 1271, baseType: !3493, size: 448, offset: 8128)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1132, line: 63, size: 448, elements: !3494)
!3494 = !{!3495, !3500, !3501, !3502, !3503, !3504, !3505}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3493, file: !1132, line: 64, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!330, !3499, !1130}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3493, file: !1132, line: 66, baseType: !3496, size: 64, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3493, file: !1132, line: 69, baseType: !316, size: 64, offset: 128)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3493, file: !1132, line: 70, baseType: !109, size: 32, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3493, file: !1132, line: 71, baseType: !7, size: 32, offset: 224)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3493, file: !1132, line: 74, baseType: !167, size: 128, offset: 256)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3493, file: !1132, line: 85, baseType: !3506, size: 64, offset: 384)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !512, file: !14, line: 1274, baseType: !625, size: 64, offset: 8576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !512, file: !14, line: 1280, baseType: !625, size: 64, offset: 8640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !512, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !512, file: !14, line: 1286, baseType: !2437, size: 32, offset: 8736)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !512, file: !14, line: 1289, baseType: !943, size: 64, offset: 8768)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !512, file: !14, line: 1290, baseType: !991, size: 64, offset: 8832)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !512, file: !14, line: 1297, baseType: !1950, size: 64, offset: 8896)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !512, file: !14, line: 1304, baseType: !3515, size: 64, offset: 8960)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3516, line: 49, size: 64, elements: !3517)
!3516 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3515, file: !3516, line: 50, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3516, line: 41, size: 512, align: 512, elements: !3521)
!3521 = !{!3522, !3523, !3528}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3520, file: !3516, line: 43, baseType: !216, size: 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3520, file: !3516, line: 45, baseType: !3524, size: 192, offset: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3516, line: 29, size: 192, elements: !3525)
!3525 = !{!3526, !3527}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3524, file: !3516, line: 30, baseType: !167, size: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3524, file: !3516, line: 32, baseType: !316, size: 64, offset: 128)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3520, file: !3516, line: 46, baseType: !316, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !512, file: !14, line: 1305, baseType: !3515, size: 64, offset: 9024)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !512, file: !14, line: 1306, baseType: !841, size: 128, align: 64, offset: 9088)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !512, file: !14, line: 1307, baseType: !881, size: 256, offset: 9216)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !512, file: !14, line: 1309, baseType: !621, size: 256, offset: 9472)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !512, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !512, file: !14, line: 1317, baseType: !216, size: 32, align: 512, offset: 10240)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !512, file: !14, line: 1318, baseType: !167, size: 128, offset: 10304)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !512, file: !14, line: 1320, baseType: !216, size: 32, offset: 10432)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !512, file: !14, line: 1321, baseType: !167, size: 128, offset: 10496)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !506, file: !507, line: 73, baseType: !109, size: 32, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !506, file: !507, line: 74, baseType: !3540, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1797, line: 42, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !460, file: !397, line: 141, baseType: !3544, size: 64, offset: 704)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{!109, !1193, !701}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !460, file: !397, line: 142, baseType: !3548, size: 64, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!395, !395, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !396, file: !397, line: 96, baseType: !511, size: 64, offset: 832)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !396, file: !397, line: 97, baseType: !330, size: 64, offset: 896)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !396, file: !397, line: 98, baseType: !162, size: 64, offset: 960)
!3556 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !397, line: 100, baseType: !3557, size: 128, offset: 1024)
!3557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !397, line: 100, size: 128, elements: !3558)
!3558 = !{!3559, !3560}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3557, file: !397, line: 101, baseType: !167, size: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3557, file: !397, line: 102, baseType: !3561, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !396, file: !397, line: 104, baseType: !167, size: 128, offset: 1152)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !396, file: !397, line: 105, baseType: !167, size: 128, offset: 1280)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !396, file: !397, line: 113, baseType: !3565, size: 128, offset: 1408)
!3565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !397, line: 109, size: 128, elements: !3566)
!3566 = !{!3567, !3568, !3569}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3565, file: !397, line: 110, baseType: !867, size: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3565, file: !397, line: 111, baseType: !411, size: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3565, file: !397, line: 112, baseType: !841, size: 128, align: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !389, file: !14, line: 1968, baseType: !3571, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!204, !395, !360, !3574}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3576, line: 10, size: 128, elements: !3577)
!3576 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3577 = !{!3578, !3579}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3575, file: !3576, line: 11, baseType: !664, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3575, file: !3576, line: 12, baseType: !162, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !389, file: !14, line: 1969, baseType: !3581, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = !DISubroutineType(types: !3583)
!3583 = !{!109, !3540, !360, !109}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !389, file: !14, line: 1970, baseType: !3585, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!383, !360, !109, !701}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !389, file: !14, line: 1972, baseType: !3589, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!109, !395, !280, !109}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !389, file: !14, line: 1974, baseType: !3593, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!109, !3540, !360, !395, !322, !701}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !389, file: !14, line: 1976, baseType: !3597, size: 64, offset: 384)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!109, !395, !360, !395}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !389, file: !14, line: 1977, baseType: !3601, size: 64, offset: 448)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!109, !360, !395}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !389, file: !14, line: 1978, baseType: !3605, size: 64, offset: 512)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!109, !3540, !360, !395, !204}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !389, file: !14, line: 1980, baseType: !3609, size: 64, offset: 576)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!109, !3540, !360, !395, !322}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !389, file: !14, line: 1982, baseType: !3601, size: 64, offset: 640)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !389, file: !14, line: 1983, baseType: !3614, size: 64, offset: 704)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DISubroutineType(types: !3616)
!3616 = !{!109, !3540, !360, !395, !322, !516}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !389, file: !14, line: 1985, baseType: !3618, size: 64, offset: 768)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!109, !3540, !360, !395, !360, !395, !7}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !389, file: !14, line: 1987, baseType: !3622, size: 64, offset: 832)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!109, !3540, !395, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3627)
!3627 = !{!3628, !3629, !3630, !3640, !3649, !3650, !3655, !3656, !3657}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3626, file: !14, line: 227, baseType: !7, size: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3626, file: !14, line: 228, baseType: !322, size: 16, offset: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3626, file: !14, line: 241, baseType: !3631, size: 32, offset: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3626, file: !14, line: 241, size: 32, elements: !3632)
!3632 = !{!3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3631, file: !14, line: 242, baseType: !366, size: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3631, file: !14, line: 243, baseType: !3635, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3636, line: 16, baseType: !3637)
!3636 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3636, line: 14, size: 32, elements: !3638)
!3638 = !{!3639}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3637, file: !3636, line: 15, baseType: !371, size: 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !3626, file: !14, line: 245, baseType: !3641, size: 32, offset: 96)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3626, file: !14, line: 245, size: 32, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3641, file: !14, line: 246, baseType: !375, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3641, file: !14, line: 247, baseType: !3645, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3636, line: 20, baseType: !3646)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3636, line: 18, size: 32, elements: !3647)
!3647 = !{!3648}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3646, file: !3636, line: 19, baseType: !379, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3626, file: !14, line: 249, baseType: !521, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3626, file: !14, line: 250, baseType: !3651, size: 128, offset: 192)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1124, line: 13, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3651, file: !1124, line: 14, baseType: !1123, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3651, file: !1124, line: 15, baseType: !316, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3626, file: !14, line: 251, baseType: !3651, size: 128, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3626, file: !14, line: 252, baseType: !3651, size: 128, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3626, file: !14, line: 259, baseType: !1713, size: 64, offset: 576)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !389, file: !14, line: 1988, baseType: !3659, size: 64, offset: 896)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!109, !3540, !1193, !3662, !429, !7}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3664, line: 22, size: 1280, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3663, file: !3664, line: 23, baseType: !429, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3663, file: !3664, line: 24, baseType: !322, size: 16, offset: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3663, file: !3664, line: 25, baseType: !7, size: 32, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3663, file: !3664, line: 26, baseType: !1835, size: 32, offset: 96)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3663, file: !3664, line: 27, baseType: !433, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3663, file: !3664, line: 28, baseType: !433, size: 64, offset: 192)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3663, file: !3664, line: 41, baseType: !433, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3663, file: !3664, line: 42, baseType: !516, size: 32, offset: 320)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3663, file: !3664, line: 43, baseType: !516, size: 32, offset: 352)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3663, file: !3664, line: 44, baseType: !366, size: 32, offset: 384)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3663, file: !3664, line: 45, baseType: !375, size: 32, offset: 416)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3663, file: !3664, line: 46, baseType: !521, size: 64, offset: 448)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3663, file: !3664, line: 47, baseType: !3651, size: 128, offset: 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3663, file: !3664, line: 48, baseType: !3651, size: 128, offset: 640)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3663, file: !3664, line: 49, baseType: !3651, size: 128, offset: 768)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3663, file: !3664, line: 50, baseType: !3651, size: 128, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3663, file: !3664, line: 51, baseType: !433, size: 64, offset: 1024)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3663, file: !3664, line: 52, baseType: !433, size: 64, offset: 1088)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3663, file: !3664, line: 53, baseType: !429, size: 32, offset: 1152)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3663, file: !3664, line: 54, baseType: !429, size: 32, offset: 1184)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3663, file: !3664, line: 55, baseType: !433, size: 64, offset: 1216)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !389, file: !14, line: 1990, baseType: !3688, size: 64, offset: 960)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!312, !395, !280, !327}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !389, file: !14, line: 1991, baseType: !3692, size: 64, offset: 1024)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!109, !360, !3695, !433, !433}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !389, file: !14, line: 1993, baseType: !3698, size: 64, offset: 1088)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!109, !360, !109}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !389, file: !14, line: 1994, baseType: !3702, size: 64, offset: 1152)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!109, !360, !395, !1713, !7, !322}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !389, file: !14, line: 1997, baseType: !3706, size: 64, offset: 1216)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!109, !3540, !360, !1713, !322}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !389, file: !14, line: 1999, baseType: !3710, size: 64, offset: 1280)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!383, !3540, !395, !109}
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !389, file: !14, line: 2001, baseType: !3714, size: 64, offset: 1344)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!109, !3540, !395, !383, !109}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !389, file: !14, line: 2003, baseType: !3718, size: 64, offset: 1408)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!109, !3540, !395, !3721}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !389, file: !14, line: 2005, baseType: !3724, size: 64, offset: 1472)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!109, !395, !3721}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !389, file: !14, line: 2006, baseType: !3728, size: 64, offset: 1536)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!3731, !360}
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3733)
!3733 = !{!3734, !3741}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3732, file: !14, line: 3193, baseType: !3735, size: 128)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3736, line: 296, size: 128, elements: !3737)
!3736 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3737 = !{!3738, !3739, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3735, file: !3736, line: 297, baseType: !216, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3735, file: !3736, line: 299, baseType: !1135, size: 32, offset: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3735, file: !3736, line: 300, baseType: !162, size: 64, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3732, file: !14, line: 3194, baseType: !429, size: 32, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !361, file: !14, line: 655, baseType: !511, size: 64, offset: 448)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !361, file: !14, line: 656, baseType: !356, size: 64, offset: 512)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !361, file: !14, line: 659, baseType: !162, size: 64, offset: 576)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !361, file: !14, line: 663, baseType: !330, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !14, line: 671, baseType: !3747, size: 32, offset: 704)
!3747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !14, line: 671, size: 32, elements: !3748)
!3748 = !{!3749, !3751}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3747, file: !14, line: 672, baseType: !3750, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3747, file: !14, line: 673, baseType: !7, size: 32)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !361, file: !14, line: 675, baseType: !516, size: 32, offset: 736)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !361, file: !14, line: 676, baseType: !521, size: 64, offset: 768)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !361, file: !14, line: 677, baseType: !3651, size: 128, offset: 832)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !361, file: !14, line: 678, baseType: !3651, size: 128, offset: 960)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !361, file: !14, line: 679, baseType: !3651, size: 128, offset: 1088)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !361, file: !14, line: 680, baseType: !216, size: 32, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !361, file: !14, line: 681, baseType: !161, size: 16, offset: 1248)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !361, file: !14, line: 682, baseType: !244, size: 8, offset: 1264)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !361, file: !14, line: 683, baseType: !244, size: 8, offset: 1272)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !361, file: !14, line: 684, baseType: !1271, size: 64, offset: 1280)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !361, file: !14, line: 691, baseType: !330, size: 64, offset: 1344)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !361, file: !14, line: 692, baseType: !1283, size: 320, offset: 1408)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !361, file: !14, line: 694, baseType: !330, size: 64, offset: 1728)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !361, file: !14, line: 695, baseType: !330, size: 64, offset: 1792)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !361, file: !14, line: 697, baseType: !867, size: 128, offset: 1856)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !361, file: !14, line: 698, baseType: !167, size: 128, offset: 1984)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !361, file: !14, line: 707, baseType: !167, size: 128, offset: 2112)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !361, file: !14, line: 708, baseType: !167, size: 128, offset: 2240)
!3770 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !14, line: 709, baseType: !3771, size: 128, offset: 2368)
!3771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !14, line: 709, size: 128, elements: !3772)
!3772 = !{!3773, !3774}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3771, file: !14, line: 710, baseType: !991, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3771, file: !14, line: 711, baseType: !841, size: 128, align: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !361, file: !14, line: 713, baseType: !627, size: 64, offset: 2496)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !361, file: !14, line: 714, baseType: !627, size: 64, offset: 2560)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !361, file: !14, line: 715, baseType: !236, size: 32, offset: 2624)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !361, file: !14, line: 716, baseType: !236, size: 32, offset: 2656)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !361, file: !14, line: 717, baseType: !236, size: 32, offset: 2688)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !361, file: !14, line: 719, baseType: !236, size: 32, offset: 2720)
!3781 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !14, line: 721, baseType: !3782, size: 64, offset: 2752)
!3782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !14, line: 721, size: 64, elements: !3783)
!3783 = !{!3784, !3785}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3782, file: !14, line: 722, baseType: !1981, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3782, file: !14, line: 723, baseType: !1014, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !361, file: !14, line: 725, baseType: !3787, size: 64, offset: 2816)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !361, file: !14, line: 726, baseType: !357, size: 1536, align: 64, offset: 2880)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !361, file: !14, line: 727, baseType: !167, size: 128, offset: 4416)
!3791 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !14, line: 728, baseType: !3792, size: 64, offset: 4544)
!3792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !14, line: 728, size: 64, elements: !3793)
!3793 = !{!3794, !3795, !3798, !3799}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3792, file: !14, line: 729, baseType: !2387, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3792, file: !14, line: 730, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3792, file: !14, line: 731, baseType: !280, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3792, file: !14, line: 732, baseType: !7, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !361, file: !14, line: 735, baseType: !430, size: 32, offset: 4608)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !361, file: !14, line: 738, baseType: !430, size: 32, offset: 4640)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !361, file: !14, line: 739, baseType: !3477, size: 64, offset: 4672)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !361, file: !14, line: 750, baseType: !162, size: 64, offset: 4736)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !357, file: !14, line: 474, baseType: !3735, size: 128, offset: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !357, file: !14, line: 475, baseType: !1283, size: 320, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !357, file: !14, line: 476, baseType: !1135, size: 32, offset: 512)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !357, file: !14, line: 477, baseType: !236, size: 32, offset: 544)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !357, file: !14, line: 482, baseType: !1569, size: 128, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !357, file: !14, line: 483, baseType: !330, size: 64, offset: 704)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !357, file: !14, line: 484, baseType: !330, size: 64, offset: 768)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !357, file: !14, line: 485, baseType: !3812, size: 64, offset: 832)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3814)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3815)
!3815 = !{!3816, !3820, !3890, !3894, !3898, !3904, !3908, !3912, !3917, !3921, !3925, !3929, !3930, !3934, !3938, !3942, !3947, !3951, !3958, !3959}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3814, file: !14, line: 405, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!109, !2174, !1026}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3814, file: !14, line: 406, baseType: !3821, size: 64, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!109, !1713, !3824}
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3826)
!3826 = !{!3827, !3857, !3871}
!3827 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !38, line: 295, baseType: !3828, size: 512)
!3828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3825, file: !38, line: 295, size: 512, elements: !3829)
!3829 = !{!3830, !3856}
!3830 = !DIDerivedType(tag: DW_TAG_member, scope: !3828, file: !38, line: 296, baseType: !3831, size: 448)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3828, file: !38, line: 296, size: 448, elements: !3832)
!3832 = !{!3833, !3834, !3843, !3844, !3845, !3854, !3855}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3831, file: !38, line: 298, baseType: !330, size: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !3831, file: !38, line: 299, baseType: !3835, size: 128, offset: 64)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3831, file: !38, line: 299, size: 128, elements: !3836)
!3836 = !{!3837, !3838}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3835, file: !38, line: 300, baseType: !167, size: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3835, file: !38, line: 302, baseType: !3839, size: 128)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3835, file: !38, line: 302, size: 128, elements: !3840)
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3839, file: !38, line: 303, baseType: !162, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3839, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3831, file: !38, line: 310, baseType: !356, size: 64, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3831, file: !38, line: 311, baseType: !330, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, scope: !3831, file: !38, line: 312, baseType: !3846, size: 64, offset: 320)
!3846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3831, file: !38, line: 312, size: 64, elements: !3847)
!3847 = !{!3848, !3849}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3846, file: !38, line: 313, baseType: !162, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3846, file: !38, line: 314, baseType: !3850, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3851)
!3851 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3852)
!3852 = !{!3853}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3851, file: !38, line: 256, baseType: !330, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3831, file: !38, line: 316, baseType: !236, size: 32, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3831, file: !38, line: 317, baseType: !236, size: 32, offset: 416)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3828, file: !38, line: 323, baseType: !2175, size: 512, align: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !38, line: 325, baseType: !3858, size: 512, offset: 512)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3825, file: !38, line: 325, size: 512, elements: !3859)
!3859 = !{!3860, !3870}
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !3858, file: !38, line: 326, baseType: !3861, size: 320)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3858, file: !38, line: 326, size: 320, elements: !3862)
!3862 = !{!3863, !3864, !3865, !3866, !3867, !3868, !3869}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3861, file: !38, line: 327, baseType: !330, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3861, file: !38, line: 328, baseType: !330, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3861, file: !38, line: 329, baseType: !330, size: 64, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3861, file: !38, line: 331, baseType: !236, size: 32, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3861, file: !38, line: 332, baseType: !236, size: 32, offset: 224)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3861, file: !38, line: 333, baseType: !236, size: 32, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3861, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3858, file: !38, line: 339, baseType: !2175, size: 512, align: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, scope: !3825, file: !38, line: 341, baseType: !3872, size: 512, offset: 1024)
!3872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3825, file: !38, line: 341, size: 512, elements: !3873)
!3873 = !{!3874, !3883, !3889}
!3874 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !38, line: 342, baseType: !3875, size: 384)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3872, file: !38, line: 342, size: 384, elements: !3876)
!3876 = !{!3877, !3878, !3879, !3880, !3881, !3882}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3875, file: !38, line: 343, baseType: !330, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3875, file: !38, line: 344, baseType: !330, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3875, file: !38, line: 346, baseType: !162, size: 64, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3875, file: !38, line: 347, baseType: !162, size: 64, offset: 192)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3875, file: !38, line: 348, baseType: !162, size: 64, offset: 256)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3875, file: !38, line: 349, baseType: !162, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3872, file: !38, line: 352, baseType: !3884, size: 256)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3872, file: !38, line: 352, size: 256, elements: !3885)
!3885 = !{!3886, !3887, !3888}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3884, file: !38, line: 353, baseType: !330, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3884, file: !38, line: 354, baseType: !330, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3884, file: !38, line: 356, baseType: !167, size: 128, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3872, file: !38, line: 359, baseType: !2175, size: 512, align: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3814, file: !14, line: 409, baseType: !3891, size: 64, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!109, !356, !1026}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3814, file: !14, line: 412, baseType: !3895, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{!701, !356, !3824}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3814, file: !14, line: 414, baseType: !3899, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{null, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3814, file: !14, line: 416, baseType: !3905, size: 64, offset: 320)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!109, !1713, !356, !521, !7, !3226, !2402}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3814, file: !14, line: 419, baseType: !3909, size: 64, offset: 384)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!109, !1713, !356, !521, !7, !7, !2174, !162}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3814, file: !14, line: 424, baseType: !3913, size: 64, offset: 448)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!3916, !356, !3916}
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !168, line: 131, baseType: !433)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3814, file: !14, line: 425, baseType: !3918, size: 64, offset: 512)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{null, !3824, !327, !327}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3814, file: !14, line: 426, baseType: !3922, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!701, !3824, !1135}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3814, file: !14, line: 427, baseType: !3926, size: 64, offset: 640)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{null, !3824}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3814, file: !14, line: 428, baseType: !2000, size: 64, offset: 704)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3814, file: !14, line: 433, baseType: !3931, size: 64, offset: 768)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!109, !356, !3824, !3824, !74}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3814, file: !14, line: 435, baseType: !3935, size: 64, offset: 832)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!109, !3824}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3814, file: !14, line: 436, baseType: !3939, size: 64, offset: 896)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!701, !3824, !327, !327}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3814, file: !14, line: 438, baseType: !3943, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{null, !3824, !3946, !3946}
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3814, file: !14, line: 439, baseType: !3948, size: 64, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!109, !356, !2174}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3814, file: !14, line: 442, baseType: !3952, size: 64, offset: 1088)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!109, !3955, !1713, !3957}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3814, file: !14, line: 444, baseType: !2394, size: 64, offset: 1152)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3814, file: !14, line: 445, baseType: !3960, size: 64, offset: 1216)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!109, !2003, !2025}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !357, file: !14, line: 486, baseType: !330, size: 64, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !357, file: !14, line: 487, baseType: !1283, size: 320, offset: 960)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !357, file: !14, line: 488, baseType: !2437, size: 32, offset: 1280)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !357, file: !14, line: 489, baseType: !216, size: 32, offset: 1312)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !357, file: !14, line: 490, baseType: !167, size: 128, offset: 1344)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !357, file: !14, line: 491, baseType: !162, size: 64, offset: 1472)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !347, file: !306, line: 180, baseType: !3970, size: 64, offset: 320)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!312, !1713, !209, !346, !280, !521, !327}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !347, file: !306, line: 182, baseType: !3970, size: 64, offset: 384)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !347, file: !306, line: 184, baseType: !3975, size: 64, offset: 448)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!109, !1713, !209, !346, !2065}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !335, file: !306, line: 90, baseType: !3979, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !335, file: !306, line: 91, baseType: !3981, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !296, file: !201, line: 120, baseType: !3983, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!3986, !263}
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3989)
!3989 = !{!3990, !3991, !3995, !3999, !4005, !4009}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3988, file: !82, line: 40, baseType: !81, size: 32)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3988, file: !82, line: 41, baseType: !3992, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!701}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3988, file: !82, line: 42, baseType: !3996, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!162}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3988, file: !82, line: 43, baseType: !4000, size: 64, offset: 192)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!2526, !4003}
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3988, file: !82, line: 44, baseType: !4006, size: 64, offset: 256)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!2526}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3988, file: !82, line: 45, baseType: !664, size: 64, offset: 320)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !296, file: !201, line: 121, baseType: !4011, size: 64, offset: 256)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!2526, !263}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !296, file: !201, line: 122, baseType: !4015, size: 64, offset: 320)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !263, !4018, !4019}
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !200, file: !201, line: 70, baseType: !4021, size: 64, offset: 384)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !536, line: 190, size: 1152, elements: !4023)
!4023 = !{!4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4115, !4116, !4117, !4118, !4119, !4122}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4022, file: !536, line: 191, baseType: !236, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4022, file: !536, line: 192, baseType: !236, size: 32, offset: 32)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4022, file: !536, line: 202, baseType: !4021, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4022, file: !536, line: 203, baseType: !204, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4022, file: !536, line: 205, baseType: !733, size: 192, align: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4022, file: !536, line: 207, baseType: !2526, size: 64, offset: 384)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4022, file: !536, line: 208, baseType: !7, size: 32, offset: 448)
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4022, file: !536, line: 209, baseType: !4032, size: 256, offset: 512)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4022, file: !536, line: 209, size: 256, elements: !4033)
!4033 = !{!4034, !4043, !4047}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4032, file: !536, line: 210, baseType: !4035, size: 256)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !536, line: 153, size: 256, elements: !4036)
!4036 = !{!4037, !4038, !4039, !4042}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4035, file: !536, line: 154, baseType: !330, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4035, file: !536, line: 156, baseType: !1572, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4035, file: !536, line: 162, baseType: !4040, size: 64, offset: 128)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !536, line: 162, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4035, file: !536, line: 167, baseType: !330, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4032, file: !536, line: 211, baseType: !4044, size: 64)
!4044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !536, line: 170, size: 64, elements: !4045)
!4045 = !{!4046}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4044, file: !536, line: 171, baseType: !4021, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4032, file: !536, line: 212, baseType: !4048, size: 256)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !536, line: 174, size: 256, elements: !4049)
!4049 = !{!4050, !4110, !4113, !4114}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4048, file: !536, line: 175, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !536, line: 271, size: 768, elements: !4054)
!4054 = !{!4055, !4075, !4079, !4083, !4087, !4091, !4095, !4099, !4100, !4101, !4102, !4106}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4053, file: !536, line: 276, baseType: !4056, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!109, !4059}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !536, line: 251, size: 1216, elements: !4061)
!4061 = !{!4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4060, file: !536, line: 253, baseType: !4021, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4060, file: !536, line: 254, baseType: !1713, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4060, file: !536, line: 255, baseType: !1063, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4060, file: !536, line: 256, baseType: !162, size: 64, offset: 192)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4060, file: !536, line: 259, baseType: !621, size: 256, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4060, file: !536, line: 260, baseType: !621, size: 256, offset: 512)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4060, file: !536, line: 261, baseType: !109, size: 32, offset: 768)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4060, file: !536, line: 262, baseType: !167, size: 128, offset: 832)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4060, file: !536, line: 263, baseType: !280, size: 64, offset: 960)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4060, file: !536, line: 265, baseType: !327, size: 64, offset: 1024)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4060, file: !536, line: 266, baseType: !701, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4060, file: !536, line: 267, baseType: !701, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4060, file: !536, line: 268, baseType: !2110, size: 64, offset: 1152)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4053, file: !536, line: 277, baseType: !4076, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !4059}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4053, file: !536, line: 290, baseType: !4080, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!109, !1063, !162}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4053, file: !536, line: 292, baseType: !4084, size: 64, offset: 192)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!162, !1063, !1994}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4053, file: !536, line: 293, baseType: !4088, size: 64, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!162, !1063, !162, !1994}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4053, file: !536, line: 294, baseType: !4092, size: 64, offset: 320)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DISubroutineType(types: !4094)
!4094 = !{null, !1063, !162}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4053, file: !536, line: 296, baseType: !4096, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!312, !4059, !280, !327, !521}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4053, file: !536, line: 306, baseType: !327, size: 64, offset: 448)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4053, file: !536, line: 313, baseType: !701, size: 8, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4053, file: !536, line: 314, baseType: !4096, size: 64, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4053, file: !536, line: 317, baseType: !4103, size: 64, offset: 640)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!2052, !4059, !2054}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4053, file: !536, line: 320, baseType: !4107, size: 64, offset: 704)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!109, !4059, !2065}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4048, file: !536, line: 176, baseType: !4111, size: 64, offset: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !536, line: 35, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4048, file: !536, line: 177, baseType: !521, size: 64, offset: 128)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4048, file: !536, line: 178, baseType: !4021, size: 64, offset: 192)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4022, file: !536, line: 215, baseType: !162, size: 64, offset: 768)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4022, file: !536, line: 221, baseType: !433, size: 64, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4022, file: !536, line: 223, baseType: !161, size: 16, offset: 896)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4022, file: !536, line: 224, baseType: !322, size: 16, offset: 912)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4022, file: !536, line: 225, baseType: !4120, size: 64, offset: 960)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !536, line: 36, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4022, file: !536, line: 227, baseType: !841, size: 128, align: 64, offset: 1024)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !200, file: !201, line: 71, baseType: !4124, size: 32, offset: 448)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4125, line: 19, size: 32, elements: !4126)
!4125 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4126 = !{!4127}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4124, file: !4125, line: 20, baseType: !1403, size: 32)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !200, file: !201, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !200, file: !201, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !200, file: !201, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !200, file: !201, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !200, file: !201, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !178, file: !142, line: 331, baseType: !7, size: 32, offset: 448)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !178, file: !142, line: 332, baseType: !161, size: 16, offset: 480)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !178, file: !142, line: 333, baseType: !161, size: 16, offset: 496)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !178, file: !142, line: 334, baseType: !161, size: 16, offset: 512)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !178, file: !142, line: 335, baseType: !161, size: 16, offset: 528)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !178, file: !142, line: 336, baseType: !7, size: 32, offset: 544)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !178, file: !142, line: 337, baseType: !244, size: 8, offset: 576)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !178, file: !142, line: 338, baseType: !244, size: 8, offset: 584)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !178, file: !142, line: 344, baseType: !4142, size: 64, offset: 640)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4144, line: 415, size: 64, elements: !4145)
!4144 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4145 = !{!4146, !4147, !4148}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4143, file: !4144, line: 416, baseType: !244, size: 8)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4143, file: !4144, line: 417, baseType: !244, size: 8, offset: 8)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4143, file: !4144, line: 418, baseType: !429, size: 32, offset: 32)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !178, file: !142, line: 345, baseType: !177, size: 64, offset: 704)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !178, file: !142, line: 347, baseType: !429, size: 32, offset: 768)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !178, file: !142, line: 348, baseType: !244, size: 8, offset: 800)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !178, file: !142, line: 349, baseType: !244, size: 8, offset: 808)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !178, file: !142, line: 350, baseType: !244, size: 8, offset: 816)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !178, file: !142, line: 351, baseType: !244, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !178, file: !142, line: 352, baseType: !244, size: 8, offset: 832)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !178, file: !142, line: 353, baseType: !244, size: 8, offset: 840)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !178, file: !142, line: 354, baseType: !157, size: 16, offset: 848)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !178, file: !142, line: 355, baseType: !972, size: 64, offset: 896)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !178, file: !142, line: 357, baseType: !4160, size: 64, offset: 960)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !142, line: 918, size: 2368, elements: !4162)
!4162 = !{!4163, !4164, !4165, !4180, !4184, !4188, !4196, !4200, !4201, !4205, !4206, !4210, !4230, !4231, !4232, !4692, !4697}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4161, file: !142, line: 919, baseType: !167, size: 128)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4161, file: !142, line: 920, baseType: !204, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4161, file: !142, line: 921, baseType: !4166, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4169, line: 44, size: 320, elements: !4170)
!4169 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4179}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4168, file: !4169, line: 45, baseType: !430, size: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4168, file: !4169, line: 45, baseType: !430, size: 32, offset: 32)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4168, file: !4169, line: 46, baseType: !430, size: 32, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4168, file: !4169, line: 46, baseType: !430, size: 32, offset: 96)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4168, file: !4169, line: 47, baseType: !430, size: 32, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4168, file: !4169, line: 47, baseType: !430, size: 32, offset: 160)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4168, file: !4169, line: 48, baseType: !4178, size: 64, offset: 192)
!4178 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4169, line: 15, baseType: !330)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4168, file: !4169, line: 49, baseType: !430, size: 32, offset: 256)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4161, file: !142, line: 922, baseType: !4181, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!109, !177, !4166}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4161, file: !142, line: 923, baseType: !4185, size: 64, offset: 320)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{null, !177}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4161, file: !142, line: 924, baseType: !4189, size: 64, offset: 384)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!109, !177, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4193)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4194)
!4194 = !{!4195}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4193, file: !101, line: 59, baseType: !109, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4161, file: !142, line: 925, baseType: !4197, size: 64, offset: 448)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!109, !177}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4161, file: !142, line: 926, baseType: !4185, size: 64, offset: 512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4161, file: !142, line: 927, baseType: !4202, size: 64, offset: 576)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!109, !177, !109}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4161, file: !142, line: 928, baseType: !4202, size: 64, offset: 640)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4161, file: !142, line: 929, baseType: !4207, size: 64, offset: 704)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!429, !177}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4161, file: !142, line: 930, baseType: !4211, size: 64, offset: 768)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4213)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !142, line: 837, size: 448, elements: !4214)
!4214 = !{!4215, !4221, !4225, !4226, !4227, !4228, !4229}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4213, file: !142, line: 839, baseType: !4216, size: 64)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!4219, !177, !4220}
!4219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !142, line: 814, baseType: !7)
!4220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !142, line: 196, baseType: !7)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4213, file: !142, line: 843, baseType: !4222, size: 64, offset: 64)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!4219, !177}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4213, file: !142, line: 846, baseType: !4222, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4213, file: !142, line: 849, baseType: !4185, size: 64, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4213, file: !142, line: 850, baseType: !4185, size: 64, offset: 256)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4213, file: !142, line: 853, baseType: !4185, size: 64, offset: 320)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4213, file: !142, line: 856, baseType: !4185, size: 64, offset: 384)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4161, file: !142, line: 931, baseType: !332, size: 64, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4161, file: !142, line: 932, baseType: !332, size: 64, offset: 896)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4161, file: !142, line: 933, baseType: !4233, size: 1152, offset: 960)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4234)
!4234 = !{!4235, !4236, !4654, !4655, !4656, !4657, !4658, !4670, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4233, file: !88, line: 97, baseType: !204, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4233, file: !88, line: 98, baseType: !4237, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4239)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4240, line: 80, size: 1344, elements: !4241)
!4240 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4644, !4645, !4646, !4647, !4648, !4649, !4653}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4239, file: !4240, line: 81, baseType: !204, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4239, file: !4240, line: 82, baseType: !204, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4239, file: !4240, line: 83, baseType: !332, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4239, file: !4240, line: 84, baseType: !332, size: 64, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4239, file: !4240, line: 85, baseType: !332, size: 64, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4239, file: !4240, line: 87, baseType: !4248, size: 64, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!109, !4251, !4315}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4259, !4260, !4313, !4314, !4316, !4317, !4318, !4319, !4326, !4418, !4431, !4441, !4445, !4447, !4448, !4449, !4453, !4460, !4461, !4464, !4467, !4471, !4575, !4576, !4577, !4578, !4579, !4580, !4610, !4611, !4612, !4615, !4618, !4627, !4628, !4629, !4630, !4631, !4632}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4252, file: !94, line: 706, baseType: !200, size: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4252, file: !94, line: 707, baseType: !4251, size: 64, offset: 512)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4252, file: !94, line: 709, baseType: !4257, size: 64, offset: 576)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4252, file: !94, line: 711, baseType: !204, size: 64, offset: 640)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4252, file: !94, line: 712, baseType: !4261, size: 64, offset: 704)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4263)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4264)
!4264 = !{!4265, !4266, !4267, !4273, !4278, !4282}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4263, file: !94, line: 90, baseType: !204, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4263, file: !94, line: 91, baseType: !332, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4263, file: !94, line: 92, baseType: !4268, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!109, !4271, !275}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4252)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4263, file: !94, line: 93, baseType: !4274, size: 64, offset: 192)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!280, !4271, !4277, !4018, !4019}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4263, file: !94, line: 95, baseType: !4279, size: 64, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{null, !4251}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4263, file: !94, line: 97, baseType: !4283, size: 64, offset: 320)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4285)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4286)
!4286 = !{!4287, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4285, file: !101, line: 287, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{!109, !4251}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4285, file: !101, line: 288, baseType: !4279, size: 64, offset: 64)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4285, file: !101, line: 289, baseType: !4288, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4285, file: !101, line: 290, baseType: !4288, size: 64, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4285, file: !101, line: 291, baseType: !4288, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4285, file: !101, line: 292, baseType: !4288, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4285, file: !101, line: 293, baseType: !4288, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4285, file: !101, line: 294, baseType: !4288, size: 64, offset: 448)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4285, file: !101, line: 295, baseType: !4288, size: 64, offset: 512)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4285, file: !101, line: 296, baseType: !4288, size: 64, offset: 576)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4285, file: !101, line: 297, baseType: !4288, size: 64, offset: 640)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4285, file: !101, line: 298, baseType: !4288, size: 64, offset: 704)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4285, file: !101, line: 299, baseType: !4288, size: 64, offset: 768)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4285, file: !101, line: 300, baseType: !4288, size: 64, offset: 832)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4285, file: !101, line: 301, baseType: !4288, size: 64, offset: 896)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4285, file: !101, line: 302, baseType: !4288, size: 64, offset: 960)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4285, file: !101, line: 303, baseType: !4288, size: 64, offset: 1024)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4285, file: !101, line: 304, baseType: !4288, size: 64, offset: 1088)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4285, file: !101, line: 305, baseType: !4288, size: 64, offset: 1152)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4285, file: !101, line: 306, baseType: !4288, size: 64, offset: 1216)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4285, file: !101, line: 307, baseType: !4288, size: 64, offset: 1280)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4285, file: !101, line: 308, baseType: !4288, size: 64, offset: 1344)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4285, file: !101, line: 309, baseType: !4288, size: 64, offset: 1408)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4252, file: !94, line: 714, baseType: !4237, size: 64, offset: 768)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4252, file: !94, line: 715, baseType: !4315, size: 64, offset: 832)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4233, size: 64)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4252, file: !94, line: 717, baseType: !162, size: 64, offset: 896)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4252, file: !94, line: 719, baseType: !162, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4252, file: !94, line: 721, baseType: !621, size: 256, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4252, file: !94, line: 725, baseType: !4320, size: 448, offset: 1280)
!4320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4321)
!4321 = !{!4322, !4323, !4324, !4325}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4320, file: !94, line: 518, baseType: !167, size: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4320, file: !94, line: 519, baseType: !167, size: 128, offset: 128)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4320, file: !94, line: 520, baseType: !167, size: 128, offset: 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4320, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4252, file: !94, line: 726, baseType: !4327, size: 2496, offset: 1728)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4328)
!4328 = !{!4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4411, !4415}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4327, file: !101, line: 664, baseType: !4192, size: 32)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4327, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4327, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4327, file: !101, line: 667, baseType: !701, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4327, file: !101, line: 668, baseType: !701, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4327, file: !101, line: 669, baseType: !701, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4327, file: !101, line: 670, baseType: !701, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4327, file: !101, line: 671, baseType: !701, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4327, file: !101, line: 672, baseType: !701, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4327, file: !101, line: 673, baseType: !701, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4327, file: !101, line: 674, baseType: !701, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4327, file: !101, line: 675, baseType: !429, size: 32, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4327, file: !101, line: 676, baseType: !216, size: 32, offset: 96)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4327, file: !101, line: 678, baseType: !167, size: 128, offset: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4327, file: !101, line: 679, baseType: !570, size: 256, offset: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4327, file: !101, line: 680, baseType: !4345, size: 64, offset: 512)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4347, line: 43, size: 1536, elements: !4348)
!4347 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4346, file: !4347, line: 44, baseType: !204, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4346, file: !4347, line: 45, baseType: !109, size: 32, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4346, file: !4347, line: 46, baseType: !167, size: 128, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4346, file: !4347, line: 47, baseType: !216, size: 32, offset: 256)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4346, file: !4347, line: 48, baseType: !4354, size: 64, offset: 320)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4346, file: !4347, line: 49, baseType: !863, size: 320, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4346, file: !4347, line: 50, baseType: !330, size: 64, offset: 704)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4346, file: !4347, line: 51, baseType: !1518, size: 64, offset: 768)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4346, file: !4347, line: 52, baseType: !1518, size: 64, offset: 832)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4346, file: !4347, line: 53, baseType: !1518, size: 64, offset: 896)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4346, file: !4347, line: 54, baseType: !1518, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4346, file: !4347, line: 55, baseType: !1518, size: 64, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4346, file: !4347, line: 56, baseType: !330, size: 64, offset: 1088)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4346, file: !4347, line: 57, baseType: !330, size: 64, offset: 1152)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4346, file: !4347, line: 58, baseType: !330, size: 64, offset: 1216)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4346, file: !4347, line: 59, baseType: !330, size: 64, offset: 1280)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4346, file: !4347, line: 60, baseType: !330, size: 64, offset: 1344)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4346, file: !4347, line: 61, baseType: !4251, size: 64, offset: 1408)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4346, file: !4347, line: 62, baseType: !701, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4346, file: !4347, line: 63, baseType: !701, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4327, file: !101, line: 681, baseType: !701, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4327, file: !101, line: 682, baseType: !701, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4327, file: !101, line: 683, baseType: !701, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4327, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4327, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4327, file: !101, line: 690, baseType: !1510, size: 512, offset: 640)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4327, file: !101, line: 691, baseType: !433, size: 64, offset: 1152)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4327, file: !101, line: 692, baseType: !881, size: 256, offset: 1216)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4327, file: !101, line: 693, baseType: !1376, size: 192, offset: 1472)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4327, file: !101, line: 694, baseType: !4354, size: 64, offset: 1664)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4327, file: !101, line: 695, baseType: !236, size: 32, offset: 1728)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4327, file: !101, line: 696, baseType: !236, size: 32, offset: 1760)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4327, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4327, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4327, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4327, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4327, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4327, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4327, file: !101, line: 703, baseType: !701, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4327, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4327, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4327, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4327, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4327, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4327, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4327, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4327, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4327, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4327, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4327, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4327, file: !101, line: 715, baseType: !433, size: 64, offset: 2048)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4327, file: !101, line: 716, baseType: !433, size: 64, offset: 2112)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4327, file: !101, line: 717, baseType: !433, size: 64, offset: 2176)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4327, file: !101, line: 718, baseType: !433, size: 64, offset: 2240)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4327, file: !101, line: 720, baseType: !4406, size: 64, offset: 2304)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4408)
!4408 = !{!4409, !4410}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4407, file: !101, line: 633, baseType: !216, size: 32)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4407, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4327, file: !101, line: 721, baseType: !4412, size: 64, offset: 2368)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !4251, !617}
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4327, file: !101, line: 722, baseType: !4416, size: 64, offset: 2432)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4252, file: !94, line: 727, baseType: !4419, size: 64, offset: 4224)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4421)
!4421 = !{!4422, !4423, !4424, !4428, !4429, !4430}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4420, file: !101, line: 743, baseType: !4285, size: 1472)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4420, file: !101, line: 744, baseType: !4288, size: 64, offset: 1472)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4420, file: !101, line: 745, baseType: !4425, size: 64, offset: 1536)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4251, !701}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4420, file: !101, line: 746, baseType: !4288, size: 64, offset: 1600)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4420, file: !101, line: 747, baseType: !4279, size: 64, offset: 1664)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4420, file: !101, line: 748, baseType: !4279, size: 64, offset: 1728)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4252, file: !94, line: 736, baseType: !4432, size: 128, offset: 4288)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4433)
!4433 = !{!4434, !4438}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4432, file: !94, line: 531, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4437, line: 13, flags: DIFlagFwdDecl)
!4437 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4432, file: !94, line: 532, baseType: !4439, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4252, file: !94, line: 738, baseType: !4442, size: 64, offset: 4416)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4444)
!4444 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4252, file: !94, line: 740, baseType: !4446, size: 64, offset: 4480)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4252, file: !94, line: 741, baseType: !433, size: 64, offset: 4544)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4252, file: !94, line: 746, baseType: !433, size: 64, offset: 4608)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4252, file: !94, line: 747, baseType: !4450, size: 64, offset: 4672)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4452)
!4452 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4252, file: !94, line: 749, baseType: !4454, size: 64, offset: 4736)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4456)
!4456 = !{!4457, !4458, !4459}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4455, file: !94, line: 433, baseType: !7, size: 32)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4455, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4455, file: !94, line: 435, baseType: !330, size: 64, offset: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4252, file: !94, line: 751, baseType: !167, size: 128, offset: 4800)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4252, file: !94, line: 762, baseType: !4462, size: 64, offset: 4928)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4252, file: !94, line: 770, baseType: !4465, offset: 4992)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4466, line: 5, elements: !910)
!4466 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4252, file: !94, line: 772, baseType: !4468, size: 64, offset: 4992)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4470, line: 18, flags: DIFlagFwdDecl)
!4470 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4252, file: !94, line: 773, baseType: !4472, size: 64, offset: 5056)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4474, line: 41, size: 512, elements: !4475)
!4474 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4475 = !{!4476, !4477, !4571, !4572, !4573, !4574}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4473, file: !4474, line: 42, baseType: !4472, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4473, file: !4474, line: 43, baseType: !4478, size: 64, offset: 64)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4480)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4474, line: 125, size: 1408, elements: !4481)
!4481 = !{!4482, !4486, !4490, !4496, !4500, !4501, !4506, !4510, !4514, !4518, !4522, !4523, !4527, !4531, !4535, !4546, !4547, !4548, !4549, !4559, !4563, !4567}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4480, file: !4474, line: 126, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!4472, !4472}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4480, file: !4474, line: 127, baseType: !4487, size: 64, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4472}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4480, file: !4474, line: 128, baseType: !4491, size: 64, offset: 128)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!701, !4494}
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4473)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4480, file: !4474, line: 129, baseType: !4497, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!2526, !4494, !4271}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4480, file: !4474, line: 131, baseType: !4491, size: 64, offset: 256)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4480, file: !4474, line: 133, baseType: !4502, size: 64, offset: 320)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!4505, !4494}
!4505 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4474, line: 132, flags: DIFlagFwdDecl)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4480, file: !4474, line: 134, baseType: !4507, size: 64, offset: 384)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!701, !4494, !204}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4480, file: !4474, line: 136, baseType: !4511, size: 64, offset: 448)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!109, !4494, !204, !7, !162, !327}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4480, file: !4474, line: 141, baseType: !4515, size: 64, offset: 512)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!109, !4494, !204, !958, !327}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4480, file: !4474, line: 144, baseType: !4519, size: 64, offset: 576)
!4519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4520, size: 64)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!204, !4494}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4480, file: !4474, line: 145, baseType: !4519, size: 64, offset: 640)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4480, file: !4474, line: 146, baseType: !4524, size: 64, offset: 704)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!4472, !4494}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4480, file: !4474, line: 148, baseType: !4528, size: 64, offset: 768)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!4472, !4494, !4472}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4480, file: !4474, line: 151, baseType: !4532, size: 64, offset: 832)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!4472, !4494, !204}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4480, file: !4474, line: 153, baseType: !4536, size: 64, offset: 896)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!109, !4494, !204, !204, !7, !7, !4539}
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4474, line: 94, size: 640, elements: !4541)
!4541 = !{!4542, !4543, !4544}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4540, file: !4474, line: 95, baseType: !4472, size: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4540, file: !4474, line: 96, baseType: !7, size: 32, offset: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4540, file: !4474, line: 97, baseType: !4545, size: 512, offset: 128)
!4545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 512, elements: !1553)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4480, file: !4474, line: 158, baseType: !4528, size: 64, offset: 960)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4480, file: !4474, line: 161, baseType: !4524, size: 64, offset: 1024)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4480, file: !4474, line: 163, baseType: !4483, size: 64, offset: 1088)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4480, file: !4474, line: 164, baseType: !4550, size: 64, offset: 1152)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!109, !4494, !4553}
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4474, line: 73, size: 128, elements: !4555)
!4555 = !{!4556, !4557, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4554, file: !4474, line: 74, baseType: !7, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4554, file: !4474, line: 75, baseType: !7, size: 32, offset: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4554, file: !4474, line: 76, baseType: !4494, size: 64, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4480, file: !4474, line: 166, baseType: !4560, size: 64, offset: 1216)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!162, !4472, !109}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4480, file: !4474, line: 167, baseType: !4564, size: 64, offset: 1280)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!109, !4494, !7}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4480, file: !4474, line: 168, baseType: !4568, size: 64, offset: 1344)
!4568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4569, size: 64)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!109, !4472}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4473, file: !4474, line: 44, baseType: !4251, size: 64, offset: 128)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4473, file: !4474, line: 45, baseType: !167, size: 128, offset: 192)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4473, file: !4474, line: 46, baseType: !167, size: 128, offset: 320)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4473, file: !4474, line: 47, baseType: !244, size: 8, offset: 448)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4252, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4252, file: !94, line: 778, baseType: !516, size: 32, offset: 5152)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4252, file: !94, line: 779, baseType: !429, size: 32, offset: 5184)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4252, file: !94, line: 781, baseType: !216, size: 32, offset: 5216)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4252, file: !94, line: 782, baseType: !167, size: 128, offset: 5248)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4252, file: !94, line: 784, baseType: !4581, size: 64, offset: 5376)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4583)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4584, line: 52, size: 768, elements: !4585)
!4584 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4585 = !{!4586, !4587, !4588, !4589, !4590, !4594, !4598, !4599, !4600, !4601, !4605, !4609}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4583, file: !4584, line: 53, baseType: !204, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4583, file: !4584, line: 55, baseType: !332, size: 64, offset: 64)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4583, file: !4584, line: 56, baseType: !332, size: 64, offset: 128)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4583, file: !4584, line: 58, baseType: !4268, size: 64, offset: 192)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4583, file: !4584, line: 59, baseType: !4591, size: 64, offset: 256)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!280, !4271, !4277}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4583, file: !4584, line: 61, baseType: !4595, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{null, !4581}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4583, file: !4584, line: 62, baseType: !4279, size: 64, offset: 384)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4583, file: !4584, line: 64, baseType: !4288, size: 64, offset: 448)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4583, file: !4584, line: 66, baseType: !3986, size: 64, offset: 512)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4583, file: !4584, line: 67, baseType: !4602, size: 64, offset: 576)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!2526, !4271}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4583, file: !4584, line: 69, baseType: !4606, size: 64, offset: 640)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{null, !4271, !4018, !4019}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4583, file: !4584, line: 71, baseType: !4283, size: 64, offset: 704)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4252, file: !94, line: 785, baseType: !332, size: 64, offset: 5440)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4252, file: !94, line: 787, baseType: !4279, size: 64, offset: 5504)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4252, file: !94, line: 788, baseType: !4613, size: 64, offset: 5568)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4252, file: !94, line: 789, baseType: !4616, size: 64, offset: 5632)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4252, file: !94, line: 791, baseType: !4619, size: 64, offset: 5696)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4621)
!4621 = !{!4622, !4623, !4624, !4625, !4626}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4620, file: !94, line: 598, baseType: !116, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4620, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4620, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4620, file: !94, line: 601, baseType: !701, size: 8, offset: 96)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4620, file: !94, line: 602, baseType: !701, size: 8, offset: 104)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4252, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4252, file: !94, line: 795, baseType: !701, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4252, file: !94, line: 796, baseType: !701, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4252, file: !94, line: 797, baseType: !701, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4252, file: !94, line: 798, baseType: !701, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4252, file: !94, line: 799, baseType: !701, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4239, file: !4240, line: 88, baseType: !4268, size: 64, offset: 384)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4239, file: !4240, line: 89, baseType: !4288, size: 64, offset: 448)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4239, file: !4240, line: 90, baseType: !4279, size: 64, offset: 512)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4239, file: !4240, line: 91, baseType: !4279, size: 64, offset: 576)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4239, file: !4240, line: 92, baseType: !4279, size: 64, offset: 640)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4239, file: !4240, line: 94, baseType: !4288, size: 64, offset: 704)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4239, file: !4240, line: 95, baseType: !4288, size: 64, offset: 768)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4239, file: !4240, line: 97, baseType: !4641, size: 64, offset: 832)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!109, !4251, !4192}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4239, file: !4240, line: 98, baseType: !4288, size: 64, offset: 896)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4239, file: !4240, line: 100, baseType: !4288, size: 64, offset: 960)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4239, file: !4240, line: 102, baseType: !4288, size: 64, offset: 1024)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4239, file: !4240, line: 103, baseType: !4279, size: 64, offset: 1088)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4239, file: !4240, line: 105, baseType: !4283, size: 64, offset: 1152)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4239, file: !4240, line: 107, baseType: !4650, size: 64, offset: 1216)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4652)
!4652 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4240, line: 107, flags: DIFlagFwdDecl)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4239, file: !4240, line: 109, baseType: !701, size: 8, offset: 1280)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4233, file: !88, line: 100, baseType: !550, size: 64, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4233, file: !88, line: 101, baseType: !204, size: 64, offset: 192)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4233, file: !88, line: 103, baseType: !701, size: 8, offset: 256)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4233, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4233, file: !88, line: 106, baseType: !4659, size: 64, offset: 320)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4661)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4169, line: 282, size: 1600, elements: !4662)
!4662 = !{!4663, !4664, !4665, !4669}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4661, file: !4169, line: 283, baseType: !3480, size: 256)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4661, file: !4169, line: 284, baseType: !3480, size: 256, offset: 256)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4661, file: !4169, line: 285, baseType: !4666, size: 1024, offset: 512)
!4666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 1024, elements: !4667)
!4667 = !{!4668}
!4668 = !DISubrange(count: 128)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4661, file: !4169, line: 286, baseType: !2526, size: 64, offset: 1536)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4233, file: !88, line: 107, baseType: !4671, size: 64, offset: 384)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4673)
!4673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4169, line: 217, size: 256, elements: !4674)
!4674 = !{!4675, !4676, !4677, !4678}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4673, file: !4169, line: 218, baseType: !3487, size: 128)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4673, file: !4169, line: 219, baseType: !4178, size: 64, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4673, file: !4169, line: 220, baseType: !430, size: 32, offset: 192)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4673, file: !4169, line: 221, baseType: !430, size: 32, offset: 224)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4233, file: !88, line: 109, baseType: !4288, size: 64, offset: 448)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4233, file: !88, line: 110, baseType: !4279, size: 64, offset: 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4233, file: !88, line: 111, baseType: !4288, size: 64, offset: 576)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4233, file: !88, line: 112, baseType: !4279, size: 64, offset: 640)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4233, file: !88, line: 113, baseType: !4641, size: 64, offset: 704)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4233, file: !88, line: 114, baseType: !4288, size: 64, offset: 768)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4233, file: !88, line: 115, baseType: !332, size: 64, offset: 832)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4233, file: !88, line: 116, baseType: !332, size: 64, offset: 896)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4233, file: !88, line: 118, baseType: !4283, size: 64, offset: 960)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4233, file: !88, line: 119, baseType: !4279, size: 64, offset: 1024)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4233, file: !88, line: 121, baseType: !4690, size: 64, offset: 1088)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4161, file: !142, line: 934, baseType: !4693, size: 192, offset: 2112)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !142, line: 801, size: 192, elements: !4694)
!4694 = !{!4695, !4696}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4693, file: !142, line: 802, baseType: !216, size: 32)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4693, file: !142, line: 803, baseType: !167, size: 128, offset: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4161, file: !142, line: 935, baseType: !701, size: 8, offset: 2304)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !178, file: !142, line: 358, baseType: !433, size: 64, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !178, file: !142, line: 364, baseType: !4455, size: 128, offset: 1088)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !178, file: !142, line: 366, baseType: !4701, size: 32, offset: 1216)
!4701 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !142, line: 171, baseType: !109)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !178, file: !142, line: 369, baseType: !244, size: 8, offset: 1248)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !178, file: !142, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !178, file: !142, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !178, file: !142, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !178, file: !142, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !178, file: !142, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !178, file: !142, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !178, file: !142, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !178, file: !142, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !178, file: !142, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !178, file: !142, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !178, file: !142, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !178, file: !142, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !178, file: !142, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !178, file: !142, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !178, file: !142, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !178, file: !142, line: 390, baseType: !7, size: 32, offset: 1280)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !178, file: !142, line: 391, baseType: !7, size: 32, offset: 1312)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !178, file: !142, line: 394, baseType: !4721, size: 64, offset: 1344)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !142, line: 316, flags: DIFlagFwdDecl)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !178, file: !142, line: 395, baseType: !157, size: 16, offset: 1408)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !178, file: !142, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !178, file: !142, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !178, file: !142, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !178, file: !142, line: 402, baseType: !4220, size: 32, offset: 1440)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !178, file: !142, line: 403, baseType: !4252, size: 5824, offset: 1472)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !178, file: !142, line: 405, baseType: !109, size: 32, offset: 7296)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !178, file: !142, line: 411, baseType: !7, size: 32, offset: 7328)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !178, file: !142, line: 412, baseType: !4732, size: 5632, offset: 7360)
!4732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4733, size: 5632, elements: !4746)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4734, line: 21, size: 512, elements: !4735)
!4734 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4735 = !{!4736, !4738, !4739, !4740, !4741, !4742, !4744, !4745}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4733, file: !4734, line: 22, baseType: !4737, size: 64)
!4737 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !168, line: 164, baseType: !3230)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4733, file: !4734, line: 23, baseType: !4737, size: 64, offset: 64)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4733, file: !4734, line: 24, baseType: !204, size: 64, offset: 128)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4733, file: !4734, line: 25, baseType: !330, size: 64, offset: 192)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4733, file: !4734, line: 26, baseType: !330, size: 64, offset: 256)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4733, file: !4734, line: 27, baseType: !4743, size: 64, offset: 320)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4733, size: 64)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4733, file: !4734, line: 27, baseType: !4743, size: 64, offset: 384)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4733, file: !4734, line: 27, baseType: !4743, size: 64, offset: 448)
!4746 = !{!4747}
!4747 = !DISubrange(count: 11)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !178, file: !142, line: 413, baseType: !4733, size: 512, offset: 12992)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !178, file: !142, line: 415, baseType: !701, size: 8, offset: 13504)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !178, file: !142, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !178, file: !142, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !178, file: !142, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !178, file: !142, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !178, file: !142, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !178, file: !142, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !178, file: !142, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !178, file: !142, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !178, file: !142, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !178, file: !142, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !178, file: !142, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !178, file: !142, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !178, file: !142, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !178, file: !142, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !178, file: !142, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !178, file: !142, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !178, file: !142, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !178, file: !142, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !178, file: !142, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !178, file: !142, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !178, file: !142, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !178, file: !142, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !178, file: !142, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !178, file: !142, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !178, file: !142, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !178, file: !142, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !178, file: !142, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !178, file: !142, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !178, file: !142, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !178, file: !142, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !178, file: !142, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !178, file: !142, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !178, file: !142, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !178, file: !142, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !178, file: !142, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !178, file: !142, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !178, file: !142, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !178, file: !142, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !178, file: !142, line: 468, baseType: !4789, size: 16, offset: 13552)
!4789 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !142, line: 222, baseType: !161)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !178, file: !142, line: 469, baseType: !236, size: 32, offset: 13568)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !178, file: !142, line: 471, baseType: !216, size: 32, offset: 13600)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !178, file: !142, line: 472, baseType: !4793, size: 512, offset: 13632)
!4793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 512, elements: !2704)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !178, file: !142, line: 473, baseType: !991, size: 64, offset: 14144)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !178, file: !142, line: 474, baseType: !4796, size: 704, offset: 14208)
!4796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 704, elements: !4746)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !178, file: !142, line: 475, baseType: !4796, size: 704, offset: 14912)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !178, file: !142, line: 487, baseType: !162, size: 64, offset: 15616)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !178, file: !142, line: 488, baseType: !579, size: 32, offset: 15680)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !178, file: !142, line: 490, baseType: !4801, size: 320, offset: 15744)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !142, line: 309, size: 320, elements: !4802)
!4802 = !{!4803, !4804, !4805}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4801, file: !142, line: 310, baseType: !621, size: 256)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4801, file: !142, line: 311, baseType: !7, size: 32, offset: 256)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4801, file: !142, line: 312, baseType: !244, size: 8, offset: 288)
!4806 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !142, line: 497, baseType: !4807, size: 64, offset: 16064)
!4807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !142, line: 497, size: 64, elements: !4808)
!4808 = !{!4809, !4836}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4807, file: !142, line: 498, baseType: !4810, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4144, line: 294, size: 1024, elements: !4812)
!4812 = !{!4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4835}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4811, file: !4144, line: 295, baseType: !109, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4811, file: !4144, line: 296, baseType: !109, size: 32, offset: 32)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4811, file: !4144, line: 297, baseType: !429, size: 32, offset: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4811, file: !4144, line: 298, baseType: !157, size: 16, offset: 96)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4811, file: !4144, line: 299, baseType: !157, size: 16, offset: 112)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4811, file: !4144, line: 300, baseType: !157, size: 16, offset: 128)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4811, file: !4144, line: 301, baseType: !157, size: 16, offset: 144)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4811, file: !4144, line: 302, baseType: !157, size: 16, offset: 160)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4811, file: !4144, line: 303, baseType: !157, size: 16, offset: 176)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4811, file: !4144, line: 304, baseType: !157, size: 16, offset: 192)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4811, file: !4144, line: 305, baseType: !429, size: 32, offset: 224)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4811, file: !4144, line: 306, baseType: !244, size: 8, offset: 256)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4811, file: !4144, line: 307, baseType: !244, size: 8, offset: 264)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4811, file: !4144, line: 308, baseType: !157, size: 16, offset: 272)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4811, file: !4144, line: 309, baseType: !177, size: 64, offset: 320)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4811, file: !4144, line: 310, baseType: !177, size: 64, offset: 384)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4811, file: !4144, line: 311, baseType: !429, size: 32, offset: 448)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4811, file: !4144, line: 312, baseType: !244, size: 8, offset: 480)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4811, file: !4144, line: 313, baseType: !157, size: 16, offset: 496)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4811, file: !4144, line: 314, baseType: !157, size: 16, offset: 512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4811, file: !4144, line: 315, baseType: !4834, size: 384, offset: 576)
!4834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4737, size: 384, elements: !1856)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4811, file: !4144, line: 316, baseType: !701, size: 8, offset: 960)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4807, file: !142, line: 499, baseType: !177, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !178, file: !142, line: 501, baseType: !157, size: 16, offset: 16128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !178, file: !142, line: 502, baseType: !244, size: 8, offset: 16144)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !178, file: !142, line: 505, baseType: !157, size: 16, offset: 16160)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !178, file: !142, line: 506, baseType: !429, size: 32, offset: 16192)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !178, file: !142, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !178, file: !142, line: 510, baseType: !157, size: 16, offset: 16240)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !178, file: !142, line: 511, baseType: !157, size: 16, offset: 16256)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !178, file: !142, line: 519, baseType: !157, size: 16, offset: 16272)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !178, file: !142, line: 520, baseType: !3230, size: 64, offset: 16320)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !178, file: !142, line: 521, baseType: !327, size: 64, offset: 16384)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !178, file: !142, line: 526, baseType: !204, size: 64, offset: 16448)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !178, file: !142, line: 528, baseType: !330, size: 64, offset: 16512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !178, file: !142, line: 531, baseType: !4850, size: 56, offset: 16576)
!4850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 56, elements: !742)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !164, file: !142, line: 653, baseType: !167, size: 128, offset: 512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !164, file: !142, line: 655, baseType: !4853, size: 256, offset: 640)
!4853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4743, size: 256, elements: !851)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !164, file: !142, line: 656, baseType: !167, size: 128, offset: 896)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !164, file: !142, line: 657, baseType: !4733, size: 512, offset: 1024)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !164, file: !142, line: 659, baseType: !4857, size: 64, offset: 1536)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !142, line: 773, size: 320, elements: !4859)
!4859 = !{!4860, !4864, !4868, !4872, !4876}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4858, file: !142, line: 774, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4862, size: 64)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!109, !163}
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4858, file: !142, line: 775, baseType: !4865, size: 64, offset: 64)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{null, !163}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4858, file: !142, line: 776, baseType: !4869, size: 64, offset: 128)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!162, !163, !7, !109}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4858, file: !142, line: 777, baseType: !4873, size: 64, offset: 192)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!109, !163, !7, !109, !109, !2603}
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4858, file: !142, line: 778, baseType: !4877, size: 64, offset: 256)
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4878, size: 64)
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!109, !163, !7, !109, !109, !429}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !164, file: !142, line: 660, baseType: !162, size: 64, offset: 1600)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !164, file: !142, line: 661, baseType: !185, size: 64, offset: 1664)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !164, file: !142, line: 663, baseType: !198, size: 8, offset: 1728)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !164, file: !142, line: 664, baseType: !198, size: 8, offset: 1736)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !164, file: !142, line: 665, baseType: !198, size: 8, offset: 1744)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !164, file: !142, line: 666, baseType: !198, size: 8, offset: 1752)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !164, file: !142, line: 671, baseType: !4887, size: 384, offset: 1760)
!4887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 384, elements: !4888)
!4888 = !{!4889}
!4889 = !DISubrange(count: 48)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !164, file: !142, line: 673, baseType: !161, size: 16, offset: 2144)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !164, file: !142, line: 674, baseType: !4892, size: 16, offset: 2160)
!4892 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !142, line: 255, baseType: !161)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !164, file: !142, line: 675, baseType: !4251, size: 64, offset: 2176)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !164, file: !142, line: 676, baseType: !4252, size: 5824, offset: 2240)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !164, file: !142, line: 677, baseType: !346, size: 64, offset: 8064)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !164, file: !142, line: 678, baseType: !346, size: 64, offset: 8128)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !164, file: !142, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !164, file: !142, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4899 = !{!0, !4900, !4902, !4904, !4906, !4908, !4910, !4912, !4914, !4916}
!4900 = !DIGlobalVariableExpression(var: !4901, expr: !DIExpression())
!4901 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_find_bus292", scope: !2, file: !3, line: 155, type: !162, isLocal: true, isDefinition: true)
!4902 = !DIGlobalVariableExpression(var: !4903, expr: !DIExpression())
!4903 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_find_next_bus293", scope: !2, file: !3, line: 178, type: !162, isLocal: true, isDefinition: true)
!4904 = !DIGlobalVariableExpression(var: !4905, expr: !DIExpression())
!4905 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_get_slot294", scope: !2, file: !3, line: 211, type: !162, isLocal: true, isDefinition: true)
!4906 = !DIGlobalVariableExpression(var: !4907, expr: !DIExpression())
!4907 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_get_domain_bus_and_slot295", scope: !2, file: !3, line: 240, type: !162, isLocal: true, isDefinition: true)
!4908 = !DIGlobalVariableExpression(var: !4909, expr: !DIExpression())
!4909 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_get_subsys296", scope: !2, file: !3, line: 314, type: !162, isLocal: true, isDefinition: true)
!4910 = !DIGlobalVariableExpression(var: !4911, expr: !DIExpression())
!4911 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_get_device297", scope: !2, file: !3, line: 335, type: !162, isLocal: true, isDefinition: true)
!4912 = !DIGlobalVariableExpression(var: !4913, expr: !DIExpression())
!4913 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_get_class298", scope: !2, file: !3, line: 364, type: !162, isLocal: true, isDefinition: true)
!4914 = !DIGlobalVariableExpression(var: !4915, expr: !DIExpression())
!4915 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_get_base_class299", scope: !2, file: !3, line: 395, type: !162, isLocal: true, isDefinition: true)
!4916 = !DIGlobalVariableExpression(var: !4917, expr: !DIExpression())
!4917 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_dev_present300", scope: !2, file: !3, line: 423, type: !162, isLocal: true, isDefinition: true)
!4918 = !{i32 7, !"Dwarf Version", i32 5}
!4919 = !{i32 2, !"Debug Info Version", i32 3}
!4920 = !{i32 1, !"wchar_size", i32 2}
!4921 = !{i32 8, !"cf-protection-branch", i32 1}
!4922 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4923 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4924 = !{i32 1, !"Code Model", i32 2}
!4925 = !{i32 1, !"override-stack-alignment", i32 8}
!4926 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4927 = distinct !DISubprogram(name: "pci_for_each_dma_alias", scope: !3, file: !3, line: 28, type: !4928, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4933)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!109, !177, !4930, !162}
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!109, !177, !157, !162}
!4933 = !{!4934, !4935, !4936, !4937, !4938, !4939, !4942}
!4934 = !DILocalVariable(name: "pdev", arg: 1, scope: !4927, file: !3, line: 28, type: !177)
!4935 = !DILocalVariable(name: "fn", arg: 2, scope: !4927, file: !3, line: 29, type: !4930)
!4936 = !DILocalVariable(name: "data", arg: 3, scope: !4927, file: !3, line: 30, type: !162)
!4937 = !DILocalVariable(name: "bus", scope: !4927, file: !3, line: 32, type: !163)
!4938 = !DILocalVariable(name: "ret", scope: !4927, file: !3, line: 33, type: !109)
!4939 = !DILocalVariable(name: "devfn", scope: !4940, file: !3, line: 50, type: !7)
!4940 = distinct !DILexicalBlock(scope: !4941, file: !3, line: 49, column: 38)
!4941 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 49, column: 6)
!4942 = !DILocalVariable(name: "tmp", scope: !4943, file: !3, line: 61, type: !177)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !3, line: 60, column: 66)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 60, column: 2)
!4945 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 60, column: 2)
!4946 = !DILocation(line: 28, column: 44, scope: !4927)
!4947 = !DILocation(line: 29, column: 13, scope: !4927)
!4948 = !DILocation(line: 30, column: 40, scope: !4927)
!4949 = !DILocation(line: 32, column: 2, scope: !4927)
!4950 = !DILocation(line: 32, column: 18, scope: !4927)
!4951 = !DILocation(line: 33, column: 2, scope: !4927)
!4952 = !DILocation(line: 33, column: 6, scope: !4927)
!4953 = !DILocation(line: 39, column: 26, scope: !4927)
!4954 = !DILocation(line: 39, column: 9, scope: !4927)
!4955 = !DILocation(line: 39, column: 7, scope: !4927)
!4956 = !DILocation(line: 41, column: 8, scope: !4927)
!4957 = !DILocation(line: 41, column: 11, scope: !4927)
!4958 = !DILocation(line: 41, column: 28, scope: !4927)
!4959 = !DILocation(line: 41, column: 17, scope: !4927)
!4960 = !DILocation(line: 41, column: 35, scope: !4927)
!4961 = !DILocation(line: 41, column: 6, scope: !4927)
!4962 = !DILocation(line: 42, column: 6, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4927, file: !3, line: 42, column: 6)
!4964 = !DILocation(line: 42, column: 6, scope: !4927)
!4965 = !DILocation(line: 43, column: 10, scope: !4963)
!4966 = !DILocation(line: 43, column: 3, scope: !4963)
!4967 = !DILocation(line: 49, column: 6, scope: !4941)
!4968 = !DILocation(line: 49, column: 6, scope: !4927)
!4969 = !DILocation(line: 50, column: 3, scope: !4940)
!4970 = !DILocation(line: 50, column: 16, scope: !4940)
!4971 = !DILocation(line: 52, column: 3, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4940, file: !3, line: 52, column: 3)
!4973 = !DILocation(line: 52, column: 3, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 52, column: 3)
!4975 = !DILocation(line: 53, column: 10, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 52, column: 64)
!4977 = !DILocation(line: 53, column: 13, scope: !4976)
!4978 = !DILocation(line: 53, column: 19, scope: !4976)
!4979 = !DILocation(line: 54, column: 6, scope: !4976)
!4980 = !DILocation(line: 53, column: 8, scope: !4976)
!4981 = !DILocation(line: 55, column: 8, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4976, file: !3, line: 55, column: 8)
!4983 = !DILocation(line: 55, column: 8, scope: !4976)
!4984 = !DILocation(line: 56, column: 12, scope: !4982)
!4985 = !DILocation(line: 56, column: 5, scope: !4982)
!4986 = !DILocation(line: 57, column: 3, scope: !4976)
!4987 = distinct !{!4987, !4971, !4988, !4989, !4990}
!4988 = !DILocation(line: 57, column: 3, scope: !4972)
!4989 = !{!"llvm.loop.mustprogress"}
!4990 = !{!"llvm.loop.unroll.disable"}
!4991 = !DILocation(line: 58, column: 2, scope: !4941)
!4992 = !DILocation(line: 58, column: 2, scope: !4940)
!4993 = !DILocation(line: 60, column: 13, scope: !4945)
!4994 = !DILocation(line: 60, column: 19, scope: !4945)
!4995 = !DILocation(line: 60, column: 11, scope: !4945)
!4996 = !DILocation(line: 60, column: 7, scope: !4945)
!4997 = !DILocation(line: 60, column: 41, scope: !4944)
!4998 = !DILocation(line: 60, column: 25, scope: !4944)
!4999 = !DILocation(line: 60, column: 24, scope: !4944)
!5000 = !DILocation(line: 60, column: 2, scope: !4945)
!5001 = !DILocation(line: 61, column: 3, scope: !4943)
!5002 = !DILocation(line: 61, column: 19, scope: !4943)
!5003 = !DILocation(line: 64, column: 8, scope: !5004)
!5004 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 64, column: 7)
!5005 = !DILocation(line: 64, column: 13, scope: !5004)
!5006 = !DILocation(line: 64, column: 7, scope: !4943)
!5007 = !DILocation(line: 65, column: 4, scope: !5004)
!5008 = !DILocation(line: 67, column: 9, scope: !4943)
!5009 = !DILocation(line: 67, column: 14, scope: !4943)
!5010 = !DILocation(line: 67, column: 7, scope: !4943)
!5011 = !DILocation(line: 70, column: 7, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 70, column: 7)
!5013 = !DILocation(line: 70, column: 12, scope: !5012)
!5014 = !DILocation(line: 70, column: 22, scope: !5012)
!5015 = !DILocation(line: 70, column: 7, scope: !4943)
!5016 = !DILocation(line: 71, column: 11, scope: !5012)
!5017 = !DILocation(line: 71, column: 4, scope: !5012)
!5018 = !DILocation(line: 82, column: 19, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4943, file: !3, line: 82, column: 7)
!5020 = !DILocation(line: 82, column: 7, scope: !5019)
!5021 = !DILocation(line: 82, column: 7, scope: !4943)
!5022 = !DILocation(line: 83, column: 26, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 82, column: 25)
!5024 = !DILocation(line: 83, column: 12, scope: !5023)
!5025 = !DILocation(line: 83, column: 4, scope: !5023)
!5026 = !DILocation(line: 87, column: 5, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 83, column: 32)
!5028 = !DILocation(line: 89, column: 11, scope: !5027)
!5029 = !DILocation(line: 89, column: 14, scope: !5027)
!5030 = !DILocation(line: 90, column: 7, scope: !5027)
!5031 = !DILocation(line: 91, column: 28, scope: !5027)
!5032 = !DILocation(line: 89, column: 9, scope: !5027)
!5033 = !DILocation(line: 92, column: 9, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 92, column: 9)
!5035 = !DILocation(line: 92, column: 9, scope: !5027)
!5036 = !DILocation(line: 93, column: 13, scope: !5034)
!5037 = !DILocation(line: 93, column: 6, scope: !5034)
!5038 = !DILocation(line: 94, column: 5, scope: !5027)
!5039 = !DILocation(line: 96, column: 11, scope: !5027)
!5040 = !DILocation(line: 96, column: 14, scope: !5027)
!5041 = !DILocation(line: 96, column: 30, scope: !5027)
!5042 = !DILocation(line: 96, column: 19, scope: !5027)
!5043 = !DILocation(line: 96, column: 36, scope: !5027)
!5044 = !DILocation(line: 96, column: 9, scope: !5027)
!5045 = !DILocation(line: 97, column: 9, scope: !5046)
!5046 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 97, column: 9)
!5047 = !DILocation(line: 97, column: 9, scope: !5027)
!5048 = !DILocation(line: 98, column: 13, scope: !5046)
!5049 = !DILocation(line: 98, column: 6, scope: !5046)
!5050 = !DILocation(line: 99, column: 5, scope: !5027)
!5051 = !DILocation(line: 101, column: 3, scope: !5023)
!5052 = !DILocation(line: 102, column: 8, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 102, column: 8)
!5054 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 101, column: 10)
!5055 = !DILocation(line: 102, column: 13, scope: !5053)
!5056 = !DILocation(line: 102, column: 23, scope: !5053)
!5057 = !DILocation(line: 102, column: 8, scope: !5054)
!5058 = !DILocation(line: 103, column: 11, scope: !5053)
!5059 = !DILocation(line: 103, column: 14, scope: !5053)
!5060 = !DILocation(line: 104, column: 7, scope: !5053)
!5061 = !DILocation(line: 105, column: 28, scope: !5053)
!5062 = !DILocation(line: 103, column: 9, scope: !5053)
!5063 = !DILocation(line: 103, column: 5, scope: !5053)
!5064 = !DILocation(line: 107, column: 11, scope: !5053)
!5065 = !DILocation(line: 107, column: 14, scope: !5053)
!5066 = !DILocation(line: 107, column: 30, scope: !5053)
!5067 = !DILocation(line: 107, column: 19, scope: !5053)
!5068 = !DILocation(line: 107, column: 36, scope: !5053)
!5069 = !DILocation(line: 107, column: 9, scope: !5053)
!5070 = !DILocation(line: 108, column: 8, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 108, column: 8)
!5072 = !DILocation(line: 108, column: 8, scope: !5054)
!5073 = !DILocation(line: 109, column: 12, scope: !5071)
!5074 = !DILocation(line: 109, column: 5, scope: !5071)
!5075 = !DILocation(line: 111, column: 2, scope: !4944)
!5076 = !DILocation(line: 111, column: 2, scope: !4943)
!5077 = !DILocation(line: 60, column: 53, scope: !4944)
!5078 = !DILocation(line: 60, column: 58, scope: !4944)
!5079 = !DILocation(line: 60, column: 51, scope: !4944)
!5080 = !DILocation(line: 60, column: 2, scope: !4944)
!5081 = distinct !{!5081, !5000, !5082, !4989, !4990}
!5082 = !DILocation(line: 111, column: 2, scope: !4945)
!5083 = !DILocation(line: 113, column: 9, scope: !4927)
!5084 = !DILocation(line: 113, column: 2, scope: !4927)
!5085 = !DILocation(line: 114, column: 1, scope: !4927)
!5086 = !DISubprogram(name: "pci_real_dma_dev", scope: !142, file: !142, line: 1373, type: !5087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!177, !177}
!5089 = distinct !DISubprogram(name: "pci_dev_id", scope: !142, file: !142, line: 685, type: !5090, scopeLine: 686, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5092)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!157, !177}
!5092 = !{!5093}
!5093 = !DILocalVariable(name: "dev", arg: 1, scope: !5089, file: !142, line: 685, type: !177)
!5094 = !DILocation(line: 685, column: 46, scope: !5089)
!5095 = !DILocation(line: 687, column: 9, scope: !5089)
!5096 = !DILocation(line: 687, column: 2, scope: !5089)
!5097 = distinct !DISubprogram(name: "find_next_bit", scope: !5098, file: !5098, line: 54, type: !5099, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5102)
!5098 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!330, !5101, !330, !330}
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!5102 = !{!5103, !5104, !5105, !5106}
!5103 = !DILocalVariable(name: "addr", arg: 1, scope: !5097, file: !5098, line: 54, type: !5101)
!5104 = !DILocalVariable(name: "size", arg: 2, scope: !5097, file: !5098, line: 54, type: !330)
!5105 = !DILocalVariable(name: "offset", arg: 3, scope: !5097, file: !5098, line: 55, type: !330)
!5106 = !DILocalVariable(name: "val", scope: !5107, file: !5098, line: 58, type: !330)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !5098, line: 57, column: 31)
!5108 = distinct !DILexicalBlock(scope: !5097, file: !5098, line: 57, column: 6)
!5109 = !DILocation(line: 54, column: 50, scope: !5097)
!5110 = !DILocation(line: 54, column: 70, scope: !5097)
!5111 = !DILocation(line: 55, column: 22, scope: !5097)
!5112 = !DILocation(line: 57, column: 6, scope: !5108)
!5113 = !DILocation(line: 57, column: 6, scope: !5097)
!5114 = !DILocation(line: 58, column: 3, scope: !5107)
!5115 = !DILocation(line: 58, column: 17, scope: !5107)
!5116 = !DILocation(line: 60, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5107, file: !5098, line: 60, column: 7)
!5118 = !DILocation(line: 60, column: 7, scope: !5107)
!5119 = !DILocation(line: 61, column: 11, scope: !5117)
!5120 = !DILocation(line: 61, column: 4, scope: !5117)
!5121 = !DILocation(line: 63, column: 10, scope: !5107)
!5122 = !DILocation(line: 63, column: 9, scope: !5107)
!5123 = !DILocation(line: 63, column: 17, scope: !5107)
!5124 = !DILocation(line: 63, column: 15, scope: !5107)
!5125 = !DILocation(line: 63, column: 7, scope: !5107)
!5126 = !DILocation(line: 64, column: 10, scope: !5107)
!5127 = !DILocation(line: 64, column: 16, scope: !5107)
!5128 = !DILocation(line: 64, column: 29, scope: !5107)
!5129 = !DILocation(line: 64, column: 3, scope: !5107)
!5130 = !DILocation(line: 65, column: 2, scope: !5108)
!5131 = !DILocation(line: 67, column: 24, scope: !5097)
!5132 = !DILocation(line: 67, column: 30, scope: !5097)
!5133 = !DILocation(line: 67, column: 36, scope: !5097)
!5134 = !DILocation(line: 67, column: 9, scope: !5097)
!5135 = !DILocation(line: 67, column: 2, scope: !5097)
!5136 = !DILocation(line: 68, column: 1, scope: !5097)
!5137 = distinct !DISubprogram(name: "pci_is_root_bus", scope: !142, file: !142, line: 698, type: !5138, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5140)
!5138 = !DISubroutineType(types: !5139)
!5139 = !{!701, !163}
!5140 = !{!5141}
!5141 = !DILocalVariable(name: "pbus", arg: 1, scope: !5137, file: !142, line: 698, type: !163)
!5142 = !DILocation(line: 698, column: 52, scope: !5137)
!5143 = !DILocation(line: 700, column: 11, scope: !5137)
!5144 = !DILocation(line: 700, column: 17, scope: !5137)
!5145 = !DILocation(line: 700, column: 9, scope: !5137)
!5146 = !DILocation(line: 700, column: 2, scope: !5137)
!5147 = distinct !DISubprogram(name: "pci_is_pcie", scope: !142, file: !142, line: 2424, type: !5148, scopeLine: 2425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5150)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!701, !177}
!5150 = !{!5151}
!5151 = !DILocalVariable(name: "dev", arg: 1, scope: !5147, file: !142, line: 2424, type: !177)
!5152 = !DILocation(line: 2424, column: 48, scope: !5147)
!5153 = !DILocation(line: 2426, column: 22, scope: !5147)
!5154 = !DILocation(line: 2426, column: 9, scope: !5147)
!5155 = !DILocation(line: 2426, column: 2, scope: !5147)
!5156 = distinct !DISubprogram(name: "pci_pcie_type", scope: !142, file: !142, line: 2442, type: !5157, scopeLine: 2443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!109, !5159}
!5159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5160, size: 64)
!5160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!5161 = !{!5162}
!5162 = !DILocalVariable(name: "dev", arg: 1, scope: !5156, file: !142, line: 2442, type: !5159)
!5163 = !DILocation(line: 2442, column: 55, scope: !5156)
!5164 = !DILocation(line: 2444, column: 24, scope: !5156)
!5165 = !DILocation(line: 2444, column: 10, scope: !5156)
!5166 = !DILocation(line: 2444, column: 29, scope: !5156)
!5167 = !DILocation(line: 2444, column: 51, scope: !5156)
!5168 = !DILocation(line: 2444, column: 2, scope: !5156)
!5169 = distinct !DISubprogram(name: "pci_find_bus", scope: !3, file: !3, line: 141, type: !5170, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!163, !109, !109}
!5172 = !{!5173, !5174, !5175, !5176}
!5173 = !DILocalVariable(name: "domain", arg: 1, scope: !5169, file: !3, line: 141, type: !109)
!5174 = !DILocalVariable(name: "busnr", arg: 2, scope: !5169, file: !3, line: 141, type: !109)
!5175 = !DILocalVariable(name: "bus", scope: !5169, file: !3, line: 143, type: !163)
!5176 = !DILocalVariable(name: "tmp_bus", scope: !5169, file: !3, line: 144, type: !163)
!5177 = !DILocation(line: 141, column: 34, scope: !5169)
!5178 = !DILocation(line: 141, column: 46, scope: !5169)
!5179 = !DILocation(line: 143, column: 2, scope: !5169)
!5180 = !DILocation(line: 143, column: 18, scope: !5169)
!5181 = !DILocation(line: 144, column: 2, scope: !5169)
!5182 = !DILocation(line: 144, column: 18, scope: !5169)
!5183 = !DILocation(line: 146, column: 2, scope: !5169)
!5184 = !DILocation(line: 146, column: 34, scope: !5169)
!5185 = !DILocation(line: 146, column: 16, scope: !5169)
!5186 = !DILocation(line: 146, column: 14, scope: !5169)
!5187 = !DILocation(line: 146, column: 40, scope: !5169)
!5188 = !DILocation(line: 147, column: 21, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 147, column: 7)
!5190 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 146, column: 50)
!5191 = !DILocation(line: 147, column: 7, scope: !5189)
!5192 = !DILocation(line: 147, column: 29, scope: !5189)
!5193 = !DILocation(line: 147, column: 26, scope: !5189)
!5194 = !DILocation(line: 147, column: 7, scope: !5190)
!5195 = !DILocation(line: 148, column: 4, scope: !5189)
!5196 = distinct !{!5196, !5183, !5197, !4989, !4990}
!5197 = !DILocation(line: 152, column: 2, scope: !5169)
!5198 = !DILocation(line: 149, column: 29, scope: !5190)
!5199 = !DILocation(line: 149, column: 34, scope: !5190)
!5200 = !DILocation(line: 149, column: 13, scope: !5190)
!5201 = !DILocation(line: 149, column: 11, scope: !5190)
!5202 = !DILocation(line: 150, column: 7, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 150, column: 7)
!5204 = !DILocation(line: 150, column: 7, scope: !5190)
!5205 = !DILocation(line: 151, column: 11, scope: !5203)
!5206 = !DILocation(line: 151, column: 4, scope: !5203)
!5207 = !DILocation(line: 153, column: 2, scope: !5169)
!5208 = !DILocation(line: 154, column: 1, scope: !5169)
!5209 = distinct !DISubprogram(name: "pci_find_next_bus", scope: !3, file: !3, line: 166, type: !5210, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!163, !5212}
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!5214 = !{!5215, !5216, !5217, !5218}
!5215 = !DILocalVariable(name: "from", arg: 1, scope: !5209, file: !3, line: 166, type: !5212)
!5216 = !DILocalVariable(name: "n", scope: !5209, file: !3, line: 168, type: !171)
!5217 = !DILocalVariable(name: "b", scope: !5209, file: !3, line: 169, type: !163)
!5218 = !DILocalVariable(name: "__mptr", scope: !5219, file: !3, line: 174, type: !162)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 174, column: 7)
!5220 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 173, column: 6)
!5221 = !DILocation(line: 166, column: 57, scope: !5209)
!5222 = !DILocation(line: 168, column: 2, scope: !5209)
!5223 = !DILocation(line: 168, column: 20, scope: !5209)
!5224 = !DILocation(line: 169, column: 2, scope: !5209)
!5225 = !DILocation(line: 169, column: 18, scope: !5209)
!5226 = !DILocation(line: 171, column: 2, scope: !5209)
!5227 = !DILocation(line: 172, column: 6, scope: !5209)
!5228 = !DILocation(line: 172, column: 13, scope: !5209)
!5229 = !DILocation(line: 172, column: 19, scope: !5209)
!5230 = !DILocation(line: 172, column: 24, scope: !5209)
!5231 = !DILocation(line: 172, column: 46, scope: !5209)
!5232 = !DILocation(line: 172, column: 4, scope: !5209)
!5233 = !DILocation(line: 173, column: 6, scope: !5220)
!5234 = !DILocation(line: 173, column: 8, scope: !5220)
!5235 = !DILocation(line: 173, column: 6, scope: !5209)
!5236 = !DILocation(line: 174, column: 7, scope: !5219)
!5237 = !DILocation(line: 174, column: 7, scope: !5220)
!5238 = !DILocation(line: 174, column: 5, scope: !5220)
!5239 = !DILocation(line: 174, column: 3, scope: !5220)
!5240 = !DILocation(line: 175, column: 2, scope: !5209)
!5241 = !DILocation(line: 176, column: 9, scope: !5209)
!5242 = !DILocation(line: 177, column: 1, scope: !5209)
!5243 = !DILocation(line: 176, column: 2, scope: !5209)
!5244 = distinct !DISubprogram(name: "pci_domain_nr", scope: !5245, file: !5245, line: 44, type: !4862, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5246)
!5245 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!5246 = !{!5247}
!5247 = !DILocalVariable(name: "bus", arg: 1, scope: !5244, file: !5245, line: 44, type: !163)
!5248 = !DILocation(line: 44, column: 49, scope: !5244)
!5249 = !DILocation(line: 46, column: 24, scope: !5244)
!5250 = !DILocation(line: 46, column: 9, scope: !5244)
!5251 = !DILocation(line: 46, column: 30, scope: !5244)
!5252 = !DILocation(line: 46, column: 2, scope: !5244)
!5253 = distinct !DISubprogram(name: "pci_do_find_bus", scope: !3, file: !3, line: 116, type: !5254, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5256)
!5254 = !DISubroutineType(types: !5255)
!5255 = !{!163, !163, !198}
!5256 = !{!5257, !5258, !5259, !5260, !5261, !5264}
!5257 = !DILocalVariable(name: "bus", arg: 1, scope: !5253, file: !3, line: 116, type: !163)
!5258 = !DILocalVariable(name: "busnr", arg: 2, scope: !5253, file: !3, line: 116, type: !198)
!5259 = !DILocalVariable(name: "child", scope: !5253, file: !3, line: 118, type: !163)
!5260 = !DILocalVariable(name: "tmp", scope: !5253, file: !3, line: 119, type: !163)
!5261 = !DILocalVariable(name: "__mptr", scope: !5262, file: !3, line: 124, type: !162)
!5262 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 124, column: 2)
!5263 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 124, column: 2)
!5264 = !DILocalVariable(name: "__mptr", scope: !5265, file: !3, line: 124, type: !162)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 124, column: 2)
!5266 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 124, column: 2)
!5267 = !DILocation(line: 116, column: 56, scope: !5253)
!5268 = !DILocation(line: 116, column: 75, scope: !5253)
!5269 = !DILocation(line: 118, column: 2, scope: !5253)
!5270 = !DILocation(line: 118, column: 18, scope: !5253)
!5271 = !DILocation(line: 119, column: 2, scope: !5253)
!5272 = !DILocation(line: 119, column: 18, scope: !5253)
!5273 = !DILocation(line: 121, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5253, file: !3, line: 121, column: 6)
!5275 = !DILocation(line: 121, column: 11, scope: !5274)
!5276 = !DILocation(line: 121, column: 21, scope: !5274)
!5277 = !DILocation(line: 121, column: 18, scope: !5274)
!5278 = !DILocation(line: 121, column: 6, scope: !5253)
!5279 = !DILocation(line: 122, column: 10, scope: !5274)
!5280 = !DILocation(line: 122, column: 3, scope: !5274)
!5281 = !DILocation(line: 124, column: 2, scope: !5262)
!5282 = !DILocation(line: 124, column: 2, scope: !5263)
!5283 = !DILocation(line: 124, column: 2, scope: !5266)
!5284 = !DILocation(line: 125, column: 27, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 124, column: 49)
!5286 = !DILocation(line: 125, column: 32, scope: !5285)
!5287 = !DILocation(line: 125, column: 11, scope: !5285)
!5288 = !DILocation(line: 125, column: 9, scope: !5285)
!5289 = !DILocation(line: 126, column: 7, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 126, column: 7)
!5291 = !DILocation(line: 126, column: 7, scope: !5285)
!5292 = !DILocation(line: 127, column: 11, scope: !5290)
!5293 = !DILocation(line: 127, column: 4, scope: !5290)
!5294 = !DILocation(line: 128, column: 2, scope: !5285)
!5295 = !DILocation(line: 124, column: 2, scope: !5265)
!5296 = distinct !{!5296, !5282, !5297, !4989, !4990}
!5297 = !DILocation(line: 128, column: 2, scope: !5263)
!5298 = !DILocation(line: 129, column: 2, scope: !5253)
!5299 = !DILocation(line: 130, column: 1, scope: !5253)
!5300 = !DISubprogram(name: "down_read", scope: !1284, file: !1284, line: 175, type: !5301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{null, !5303}
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!5304 = !DISubprogram(name: "up_read", scope: !1284, file: !1284, line: 198, type: !5301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5305 = distinct !DISubprogram(name: "pci_get_slot", scope: !3, file: !3, line: 194, type: !5306, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5308)
!5306 = !DISubroutineType(types: !5307)
!5307 = !{!177, !163, !7}
!5308 = !{!5309, !5310, !5311, !5312, !5315, !5318}
!5309 = !DILocalVariable(name: "bus", arg: 1, scope: !5305, file: !3, line: 194, type: !163)
!5310 = !DILocalVariable(name: "devfn", arg: 2, scope: !5305, file: !3, line: 194, type: !7)
!5311 = !DILocalVariable(name: "dev", scope: !5305, file: !3, line: 196, type: !177)
!5312 = !DILocalVariable(name: "__mptr", scope: !5313, file: !3, line: 200, type: !162)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 200, column: 2)
!5314 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 200, column: 2)
!5315 = !DILocalVariable(name: "__mptr", scope: !5316, file: !3, line: 200, type: !162)
!5316 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 200, column: 2)
!5317 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 200, column: 2)
!5318 = !DILabel(scope: !5305, name: "out", file: !3, line: 206)
!5319 = !DILocation(line: 194, column: 46, scope: !5305)
!5320 = !DILocation(line: 194, column: 64, scope: !5305)
!5321 = !DILocation(line: 196, column: 2, scope: !5305)
!5322 = !DILocation(line: 196, column: 18, scope: !5305)
!5323 = !DILocation(line: 198, column: 2, scope: !5305)
!5324 = !DILocation(line: 200, column: 2, scope: !5313)
!5325 = !DILocation(line: 200, column: 2, scope: !5314)
!5326 = !DILocation(line: 200, column: 2, scope: !5317)
!5327 = !DILocation(line: 201, column: 7, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 201, column: 7)
!5329 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 200, column: 52)
!5330 = !DILocation(line: 201, column: 12, scope: !5328)
!5331 = !DILocation(line: 201, column: 21, scope: !5328)
!5332 = !DILocation(line: 201, column: 18, scope: !5328)
!5333 = !DILocation(line: 201, column: 7, scope: !5329)
!5334 = !DILocation(line: 202, column: 4, scope: !5328)
!5335 = !DILocation(line: 203, column: 2, scope: !5329)
!5336 = !DILocation(line: 200, column: 2, scope: !5316)
!5337 = distinct !{!5337, !5325, !5338, !4989, !4990}
!5338 = !DILocation(line: 203, column: 2, scope: !5314)
!5339 = !DILocation(line: 205, column: 6, scope: !5305)
!5340 = !DILocation(line: 205, column: 2, scope: !5305)
!5341 = !DILocation(line: 206, column: 2, scope: !5305)
!5342 = !DILocation(line: 207, column: 14, scope: !5305)
!5343 = !DILocation(line: 207, column: 2, scope: !5305)
!5344 = !DILocation(line: 208, column: 2, scope: !5305)
!5345 = !DILocation(line: 209, column: 9, scope: !5305)
!5346 = !DILocation(line: 210, column: 1, scope: !5305)
!5347 = !DILocation(line: 209, column: 2, scope: !5305)
!5348 = !DISubprogram(name: "pci_dev_get", scope: !142, file: !142, line: 1147, type: !5087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5349 = distinct !DISubprogram(name: "pci_get_domain_bus_and_slot", scope: !3, file: !3, line: 228, type: !5350, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5352)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!177, !109, !7, !7}
!5352 = !{!5353, !5354, !5355, !5356}
!5353 = !DILocalVariable(name: "domain", arg: 1, scope: !5349, file: !3, line: 228, type: !109)
!5354 = !DILocalVariable(name: "bus", arg: 2, scope: !5349, file: !3, line: 228, type: !7)
!5355 = !DILocalVariable(name: "devfn", arg: 3, scope: !5349, file: !3, line: 229, type: !7)
!5356 = !DILocalVariable(name: "dev", scope: !5349, file: !3, line: 231, type: !177)
!5357 = !DILocation(line: 228, column: 49, scope: !5349)
!5358 = !DILocation(line: 228, column: 70, scope: !5349)
!5359 = !DILocation(line: 229, column: 23, scope: !5349)
!5360 = !DILocation(line: 231, column: 2, scope: !5349)
!5361 = !DILocation(line: 231, column: 18, scope: !5349)
!5362 = !DILocation(line: 233, column: 2, scope: !5349)
!5363 = !DILocation(line: 234, column: 21, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5365, file: !3, line: 234, column: 7)
!5365 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 233, column: 24)
!5366 = !DILocation(line: 234, column: 26, scope: !5364)
!5367 = !DILocation(line: 234, column: 7, scope: !5364)
!5368 = !DILocation(line: 234, column: 34, scope: !5364)
!5369 = !DILocation(line: 234, column: 31, scope: !5364)
!5370 = !DILocation(line: 234, column: 41, scope: !5364)
!5371 = !DILocation(line: 235, column: 8, scope: !5364)
!5372 = !DILocation(line: 235, column: 13, scope: !5364)
!5373 = !DILocation(line: 235, column: 18, scope: !5364)
!5374 = !DILocation(line: 235, column: 28, scope: !5364)
!5375 = !DILocation(line: 235, column: 25, scope: !5364)
!5376 = !DILocation(line: 235, column: 32, scope: !5364)
!5377 = !DILocation(line: 235, column: 35, scope: !5364)
!5378 = !DILocation(line: 235, column: 40, scope: !5364)
!5379 = !DILocation(line: 235, column: 49, scope: !5364)
!5380 = !DILocation(line: 235, column: 46, scope: !5364)
!5381 = !DILocation(line: 234, column: 7, scope: !5365)
!5382 = !DILocation(line: 236, column: 11, scope: !5364)
!5383 = !DILocation(line: 236, column: 4, scope: !5364)
!5384 = distinct !{!5384, !5362, !5385, !4989, !4990}
!5385 = !DILocation(line: 237, column: 2, scope: !5349)
!5386 = !DILocation(line: 238, column: 2, scope: !5349)
!5387 = !DILocation(line: 239, column: 1, scope: !5349)
!5388 = distinct !DISubprogram(name: "pci_get_device", scope: !3, file: !3, line: 330, type: !5389, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5391)
!5389 = !DISubroutineType(types: !5390)
!5390 = !{!177, !7, !7, !177}
!5391 = !{!5392, !5393, !5394}
!5392 = !DILocalVariable(name: "vendor", arg: 1, scope: !5388, file: !3, line: 330, type: !7)
!5393 = !DILocalVariable(name: "device", arg: 2, scope: !5388, file: !3, line: 330, type: !7)
!5394 = !DILocalVariable(name: "from", arg: 3, scope: !5388, file: !3, line: 331, type: !177)
!5395 = !DILocation(line: 330, column: 45, scope: !5388)
!5396 = !DILocation(line: 330, column: 66, scope: !5388)
!5397 = !DILocation(line: 331, column: 27, scope: !5388)
!5398 = !DILocation(line: 333, column: 24, scope: !5388)
!5399 = !DILocation(line: 333, column: 32, scope: !5388)
!5400 = !DILocation(line: 333, column: 64, scope: !5388)
!5401 = !DILocation(line: 333, column: 9, scope: !5388)
!5402 = !DILocation(line: 333, column: 2, scope: !5388)
!5403 = distinct !DISubprogram(name: "pci_get_subsys", scope: !3, file: !3, line: 301, type: !5404, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5406)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{!177, !7, !7, !7, !7, !177}
!5406 = !{!5407, !5408, !5409, !5410, !5411, !5412}
!5407 = !DILocalVariable(name: "vendor", arg: 1, scope: !5403, file: !3, line: 301, type: !7)
!5408 = !DILocalVariable(name: "device", arg: 2, scope: !5403, file: !3, line: 301, type: !7)
!5409 = !DILocalVariable(name: "ss_vendor", arg: 3, scope: !5403, file: !3, line: 302, type: !7)
!5410 = !DILocalVariable(name: "ss_device", arg: 4, scope: !5403, file: !3, line: 302, type: !7)
!5411 = !DILocalVariable(name: "from", arg: 5, scope: !5403, file: !3, line: 303, type: !177)
!5412 = !DILocalVariable(name: "id", scope: !5403, file: !3, line: 305, type: !4168)
!5413 = !DILocation(line: 301, column: 45, scope: !5403)
!5414 = !DILocation(line: 301, column: 66, scope: !5403)
!5415 = !DILocation(line: 302, column: 24, scope: !5403)
!5416 = !DILocation(line: 302, column: 48, scope: !5403)
!5417 = !DILocation(line: 303, column: 27, scope: !5403)
!5418 = !DILocation(line: 305, column: 2, scope: !5403)
!5419 = !DILocation(line: 305, column: 23, scope: !5403)
!5420 = !DILocation(line: 305, column: 28, scope: !5403)
!5421 = !DILocation(line: 306, column: 13, scope: !5403)
!5422 = !DILocation(line: 307, column: 13, scope: !5403)
!5423 = !DILocation(line: 308, column: 16, scope: !5403)
!5424 = !DILocation(line: 309, column: 16, scope: !5403)
!5425 = !DILocation(line: 312, column: 32, scope: !5403)
!5426 = !DILocation(line: 312, column: 9, scope: !5403)
!5427 = !DILocation(line: 313, column: 1, scope: !5403)
!5428 = !DILocation(line: 312, column: 2, scope: !5403)
!5429 = distinct !DISubprogram(name: "pci_get_dev_by_id", scope: !3, file: !3, line: 268, type: !5430, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5432)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{!177, !4166, !177}
!5432 = !{!5433, !5434, !5435, !5436, !5437, !5438}
!5433 = !DILocalVariable(name: "id", arg: 1, scope: !5429, file: !3, line: 268, type: !4166)
!5434 = !DILocalVariable(name: "from", arg: 2, scope: !5429, file: !3, line: 269, type: !177)
!5435 = !DILocalVariable(name: "dev", scope: !5429, file: !3, line: 271, type: !4251)
!5436 = !DILocalVariable(name: "dev_start", scope: !5429, file: !3, line: 272, type: !4251)
!5437 = !DILocalVariable(name: "pdev", scope: !5429, file: !3, line: 273, type: !177)
!5438 = !DILocalVariable(name: "__mptr", scope: !5439, file: !3, line: 280, type: !162)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 280, column: 10)
!5440 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 279, column: 6)
!5441 = !DILocation(line: 268, column: 70, scope: !5429)
!5442 = !DILocation(line: 269, column: 23, scope: !5429)
!5443 = !DILocation(line: 271, column: 2, scope: !5429)
!5444 = !DILocation(line: 271, column: 17, scope: !5429)
!5445 = !DILocation(line: 272, column: 2, scope: !5429)
!5446 = !DILocation(line: 272, column: 17, scope: !5429)
!5447 = !DILocation(line: 273, column: 2, scope: !5429)
!5448 = !DILocation(line: 273, column: 18, scope: !5429)
!5449 = !DILocation(line: 275, column: 6, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 275, column: 6)
!5451 = !DILocation(line: 275, column: 6, scope: !5429)
!5452 = !DILocation(line: 276, column: 16, scope: !5450)
!5453 = !DILocation(line: 276, column: 22, scope: !5450)
!5454 = !DILocation(line: 276, column: 13, scope: !5450)
!5455 = !DILocation(line: 276, column: 3, scope: !5450)
!5456 = !DILocation(line: 277, column: 39, scope: !5429)
!5457 = !DILocation(line: 277, column: 58, scope: !5429)
!5458 = !DILocation(line: 277, column: 8, scope: !5429)
!5459 = !DILocation(line: 277, column: 6, scope: !5429)
!5460 = !DILocation(line: 279, column: 6, scope: !5440)
!5461 = !DILocation(line: 279, column: 6, scope: !5429)
!5462 = !DILocation(line: 280, column: 10, scope: !5439)
!5463 = !DILocation(line: 280, column: 10, scope: !5440)
!5464 = !DILocation(line: 280, column: 8, scope: !5440)
!5465 = !DILocation(line: 280, column: 3, scope: !5440)
!5466 = !DILocation(line: 281, column: 14, scope: !5429)
!5467 = !DILocation(line: 281, column: 2, scope: !5429)
!5468 = !DILocation(line: 282, column: 9, scope: !5429)
!5469 = !DILocation(line: 283, column: 1, scope: !5429)
!5470 = !DILocation(line: 282, column: 2, scope: !5429)
!5471 = distinct !DISubprogram(name: "pci_get_class", scope: !3, file: !3, line: 351, type: !5472, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!177, !7, !177}
!5474 = !{!5475, !5476, !5477}
!5475 = !DILocalVariable(name: "class", arg: 1, scope: !5471, file: !3, line: 351, type: !7)
!5476 = !DILocalVariable(name: "from", arg: 2, scope: !5471, file: !3, line: 351, type: !177)
!5477 = !DILocalVariable(name: "id", scope: !5471, file: !3, line: 353, type: !4168)
!5478 = !DILocation(line: 351, column: 44, scope: !5471)
!5479 = !DILocation(line: 351, column: 67, scope: !5471)
!5480 = !DILocation(line: 353, column: 2, scope: !5471)
!5481 = !DILocation(line: 353, column: 23, scope: !5471)
!5482 = !DILocation(line: 353, column: 28, scope: !5471)
!5483 = !DILocation(line: 359, column: 12, scope: !5471)
!5484 = !DILocation(line: 362, column: 32, scope: !5471)
!5485 = !DILocation(line: 362, column: 9, scope: !5471)
!5486 = !DILocation(line: 363, column: 1, scope: !5471)
!5487 = !DILocation(line: 362, column: 2, scope: !5471)
!5488 = distinct !DISubprogram(name: "pci_get_base_class", scope: !3, file: !3, line: 382, type: !5472, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5489)
!5489 = !{!5490, !5491, !5492}
!5490 = !DILocalVariable(name: "class", arg: 1, scope: !5488, file: !3, line: 382, type: !7)
!5491 = !DILocalVariable(name: "from", arg: 2, scope: !5488, file: !3, line: 382, type: !177)
!5492 = !DILocalVariable(name: "id", scope: !5488, file: !3, line: 384, type: !4168)
!5493 = !DILocation(line: 382, column: 49, scope: !5488)
!5494 = !DILocation(line: 382, column: 72, scope: !5488)
!5495 = !DILocation(line: 384, column: 2, scope: !5488)
!5496 = !DILocation(line: 384, column: 23, scope: !5488)
!5497 = !DILocation(line: 384, column: 28, scope: !5488)
!5498 = !DILocation(line: 390, column: 12, scope: !5488)
!5499 = !DILocation(line: 390, column: 18, scope: !5488)
!5500 = !DILocation(line: 393, column: 32, scope: !5488)
!5501 = !DILocation(line: 393, column: 9, scope: !5488)
!5502 = !DILocation(line: 394, column: 1, scope: !5488)
!5503 = !DILocation(line: 393, column: 2, scope: !5488)
!5504 = distinct !DISubprogram(name: "pci_dev_present", scope: !3, file: !3, line: 408, type: !5505, scopeLine: 409, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5507)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!109, !4166}
!5507 = !{!5508, !5509}
!5508 = !DILocalVariable(name: "ids", arg: 1, scope: !5504, file: !3, line: 408, type: !4166)
!5509 = !DILocalVariable(name: "found", scope: !5504, file: !3, line: 410, type: !177)
!5510 = !DILocation(line: 408, column: 49, scope: !5504)
!5511 = !DILocation(line: 410, column: 2, scope: !5504)
!5512 = !DILocation(line: 410, column: 18, scope: !5504)
!5513 = !DILocation(line: 412, column: 2, scope: !5504)
!5514 = !DILocation(line: 412, column: 9, scope: !5504)
!5515 = !DILocation(line: 412, column: 14, scope: !5504)
!5516 = !DILocation(line: 412, column: 21, scope: !5504)
!5517 = !DILocation(line: 412, column: 24, scope: !5504)
!5518 = !DILocation(line: 412, column: 29, scope: !5504)
!5519 = !DILocation(line: 412, column: 39, scope: !5504)
!5520 = !DILocation(line: 412, column: 42, scope: !5504)
!5521 = !DILocation(line: 412, column: 47, scope: !5504)
!5522 = !DILocation(line: 413, column: 29, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 412, column: 59)
!5524 = !DILocation(line: 413, column: 11, scope: !5523)
!5525 = !DILocation(line: 413, column: 9, scope: !5523)
!5526 = !DILocation(line: 414, column: 7, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5523, file: !3, line: 414, column: 7)
!5528 = !DILocation(line: 414, column: 7, scope: !5523)
!5529 = !DILocation(line: 415, column: 16, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 414, column: 14)
!5531 = !DILocation(line: 415, column: 4, scope: !5530)
!5532 = !DILocation(line: 416, column: 4, scope: !5530)
!5533 = !DILocation(line: 418, column: 6, scope: !5523)
!5534 = distinct !{!5534, !5513, !5535, !4989, !4990}
!5535 = !DILocation(line: 419, column: 2, scope: !5504)
!5536 = !DILocation(line: 421, column: 2, scope: !5504)
!5537 = !DILocation(line: 422, column: 1, scope: !5504)
!5538 = !DISubprogram(name: "pci_dev_put", scope: !142, file: !142, line: 1148, type: !4186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5539 = distinct !DISubprogram(name: "variable__ffs", scope: !5540, file: !5540, line: 250, type: !5541, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5543)
!5540 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5541 = !DISubroutineType(types: !5542)
!5542 = !{!330, !330}
!5543 = !{!5544}
!5544 = !DILocalVariable(name: "word", arg: 1, scope: !5539, file: !5540, line: 250, type: !330)
!5545 = !DILocation(line: 250, column: 66, scope: !5539)
!5546 = !DILocation(line: 254, column: 11, scope: !5539)
!5547 = !DILocation(line: 252, column: 2, scope: !5539)
!5548 = !{i64 754149}
!5549 = !DILocation(line: 255, column: 9, scope: !5539)
!5550 = !DILocation(line: 255, column: 2, scope: !5539)
!5551 = !DISubprogram(name: "_find_next_bit", scope: !5098, file: !5098, line: 11, type: !5099, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5552 = distinct !DISubprogram(name: "pci_pcie_cap", scope: !142, file: !142, line: 2413, type: !4198, scopeLine: 2414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5553)
!5553 = !{!5554}
!5554 = !DILocalVariable(name: "dev", arg: 1, scope: !5552, file: !142, line: 2413, type: !177)
!5555 = !DILocation(line: 2413, column: 48, scope: !5552)
!5556 = !DILocation(line: 2415, column: 9, scope: !5552)
!5557 = !DILocation(line: 2415, column: 14, scope: !5552)
!5558 = !DILocation(line: 2415, column: 2, scope: !5552)
!5559 = distinct !DISubprogram(name: "pcie_caps_reg", scope: !142, file: !142, line: 2433, type: !5560, scopeLine: 2434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5562)
!5560 = !DISubroutineType(types: !5561)
!5561 = !{!157, !5159}
!5562 = !{!5563}
!5563 = !DILocalVariable(name: "dev", arg: 1, scope: !5559, file: !142, line: 2433, type: !5159)
!5564 = !DILocation(line: 2433, column: 55, scope: !5559)
!5565 = !DILocation(line: 2435, column: 9, scope: !5559)
!5566 = !DILocation(line: 2435, column: 14, scope: !5559)
!5567 = !DILocation(line: 2435, column: 2, scope: !5559)
!5568 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !5245, file: !5245, line: 36, type: !5569, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5581)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!5571, !5212}
!5571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5572, size: 64)
!5572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !5245, line: 15, size: 256, elements: !5573)
!5573 = !{!5574, !5575, !5576, !5579, !5580}
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5572, file: !5245, line: 16, baseType: !109, size: 32)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5572, file: !5245, line: 17, baseType: !109, size: 32, offset: 32)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !5572, file: !5245, line: 19, baseType: !5577, size: 64, offset: 64)
!5577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5578, size: 64)
!5578 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !4240, line: 212, flags: DIFlagFwdDecl)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !5572, file: !5245, line: 22, baseType: !162, size: 64, offset: 128)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5572, file: !5245, line: 25, baseType: !162, size: 64, offset: 192)
!5581 = !{!5582}
!5582 = !DILocalVariable(name: "bus", arg: 1, scope: !5568, file: !5245, line: 36, type: !5212)
!5583 = !DILocation(line: 36, column: 72, scope: !5568)
!5584 = !DILocation(line: 38, column: 9, scope: !5568)
!5585 = !DILocation(line: 38, column: 14, scope: !5568)
!5586 = !DILocation(line: 38, column: 2, scope: !5568)
!5587 = !DISubprogram(name: "bus_find_device", scope: !4240, file: !4240, line: 146, type: !5588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!4251, !4237, !4251, !2526, !5590}
!5590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5591, size: 64)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!109, !4251, !2526}
!5593 = distinct !DISubprogram(name: "match_pci_dev_by_id", scope: !3, file: !3, line: 242, type: !5591, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5594)
!5594 = !{!5595, !5596, !5597, !5598, !5600}
!5595 = !DILocalVariable(name: "dev", arg: 1, scope: !5593, file: !3, line: 242, type: !4251)
!5596 = !DILocalVariable(name: "data", arg: 2, scope: !5593, file: !3, line: 242, type: !2526)
!5597 = !DILocalVariable(name: "pdev", scope: !5593, file: !3, line: 244, type: !177)
!5598 = !DILocalVariable(name: "__mptr", scope: !5599, file: !3, line: 244, type: !162)
!5599 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 244, column: 25)
!5600 = !DILocalVariable(name: "id", scope: !5593, file: !3, line: 245, type: !4166)
!5601 = !DILocation(line: 242, column: 47, scope: !5593)
!5602 = !DILocation(line: 242, column: 64, scope: !5593)
!5603 = !DILocation(line: 244, column: 2, scope: !5593)
!5604 = !DILocation(line: 244, column: 18, scope: !5593)
!5605 = !DILocation(line: 244, column: 25, scope: !5599)
!5606 = !DILocation(line: 244, column: 25, scope: !5593)
!5607 = !DILocation(line: 245, column: 2, scope: !5593)
!5608 = !DILocation(line: 245, column: 30, scope: !5593)
!5609 = !DILocation(line: 245, column: 35, scope: !5593)
!5610 = !DILocation(line: 247, column: 27, scope: !5611)
!5611 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 247, column: 6)
!5612 = !DILocation(line: 247, column: 31, scope: !5611)
!5613 = !DILocation(line: 247, column: 6, scope: !5611)
!5614 = !DILocation(line: 247, column: 6, scope: !5593)
!5615 = !DILocation(line: 248, column: 3, scope: !5611)
!5616 = !DILocation(line: 249, column: 2, scope: !5593)
!5617 = !DILocation(line: 250, column: 1, scope: !5593)
!5618 = distinct !DISubprogram(name: "pci_match_one_device", scope: !4144, file: !4144, line: 208, type: !5619, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5621)
!5619 = !DISubroutineType(types: !5620)
!5620 = !{!4166, !4166, !5159}
!5621 = !{!5622, !5623}
!5622 = !DILocalVariable(name: "id", arg: 1, scope: !5618, file: !4144, line: 208, type: !4166)
!5623 = !DILocalVariable(name: "dev", arg: 2, scope: !5618, file: !4144, line: 208, type: !5159)
!5624 = !DILocation(line: 208, column: 50, scope: !5618)
!5625 = !DILocation(line: 208, column: 76, scope: !5618)
!5626 = !DILocation(line: 210, column: 7, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5618, file: !4144, line: 210, column: 6)
!5628 = !DILocation(line: 210, column: 11, scope: !5627)
!5629 = !DILocation(line: 210, column: 18, scope: !5627)
!5630 = !DILocation(line: 210, column: 32, scope: !5627)
!5631 = !DILocation(line: 210, column: 35, scope: !5627)
!5632 = !DILocation(line: 210, column: 39, scope: !5627)
!5633 = !DILocation(line: 210, column: 49, scope: !5627)
!5634 = !DILocation(line: 210, column: 54, scope: !5627)
!5635 = !DILocation(line: 210, column: 46, scope: !5627)
!5636 = !DILocation(line: 210, column: 62, scope: !5627)
!5637 = !DILocation(line: 211, column: 7, scope: !5627)
!5638 = !DILocation(line: 211, column: 11, scope: !5627)
!5639 = !DILocation(line: 211, column: 18, scope: !5627)
!5640 = !DILocation(line: 211, column: 32, scope: !5627)
!5641 = !DILocation(line: 211, column: 35, scope: !5627)
!5642 = !DILocation(line: 211, column: 39, scope: !5627)
!5643 = !DILocation(line: 211, column: 49, scope: !5627)
!5644 = !DILocation(line: 211, column: 54, scope: !5627)
!5645 = !DILocation(line: 211, column: 46, scope: !5627)
!5646 = !DILocation(line: 211, column: 62, scope: !5627)
!5647 = !DILocation(line: 212, column: 7, scope: !5627)
!5648 = !DILocation(line: 212, column: 11, scope: !5627)
!5649 = !DILocation(line: 212, column: 21, scope: !5627)
!5650 = !DILocation(line: 212, column: 35, scope: !5627)
!5651 = !DILocation(line: 212, column: 38, scope: !5627)
!5652 = !DILocation(line: 212, column: 42, scope: !5627)
!5653 = !DILocation(line: 212, column: 55, scope: !5627)
!5654 = !DILocation(line: 212, column: 60, scope: !5627)
!5655 = !DILocation(line: 212, column: 52, scope: !5627)
!5656 = !DILocation(line: 212, column: 78, scope: !5627)
!5657 = !DILocation(line: 213, column: 7, scope: !5627)
!5658 = !DILocation(line: 213, column: 11, scope: !5627)
!5659 = !DILocation(line: 213, column: 21, scope: !5627)
!5660 = !DILocation(line: 213, column: 35, scope: !5627)
!5661 = !DILocation(line: 213, column: 38, scope: !5627)
!5662 = !DILocation(line: 213, column: 42, scope: !5627)
!5663 = !DILocation(line: 213, column: 55, scope: !5627)
!5664 = !DILocation(line: 213, column: 60, scope: !5627)
!5665 = !DILocation(line: 213, column: 52, scope: !5627)
!5666 = !DILocation(line: 213, column: 78, scope: !5627)
!5667 = !DILocation(line: 214, column: 9, scope: !5627)
!5668 = !DILocation(line: 214, column: 13, scope: !5627)
!5669 = !DILocation(line: 214, column: 21, scope: !5627)
!5670 = !DILocation(line: 214, column: 26, scope: !5627)
!5671 = !DILocation(line: 214, column: 19, scope: !5627)
!5672 = !DILocation(line: 214, column: 35, scope: !5627)
!5673 = !DILocation(line: 214, column: 39, scope: !5627)
!5674 = !DILocation(line: 214, column: 33, scope: !5627)
!5675 = !DILocation(line: 210, column: 6, scope: !5618)
!5676 = !DILocation(line: 215, column: 10, scope: !5627)
!5677 = !DILocation(line: 215, column: 3, scope: !5627)
!5678 = !DILocation(line: 216, column: 2, scope: !5618)
!5679 = !DILocation(line: 217, column: 1, scope: !5618)
