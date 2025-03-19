; ModuleID = 'drivers/pci/ats.c'
source_filename = "drivers/pci/ats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_ats_supported: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_ats_supported ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_enable_ats: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_enable_ats ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_disable_ats: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_disable_ats ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_disable_pri: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_disable_pri ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_pri_supported: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_pri_supported ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_enable_pasid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_enable_pasid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_disable_pasid: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_disable_pasid ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_pasid_features: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_pasid_features ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_max_pasids: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_max_pasids ; .previous"

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
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }

@__UNIQUE_ID___addressable_pci_ats_supported292 = internal global ptr @pci_ats_supported, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [18 x i8] c"drivers/pci/ats.c\00", align 1, !dbg !149
@__UNIQUE_ID___addressable_pci_enable_ats293 = internal global ptr @pci_enable_ats, section ".discard.addressable", align 8, !dbg !155
@__UNIQUE_ID___addressable_pci_disable_ats294 = internal global ptr @pci_disable_ats, section ".discard.addressable", align 8, !dbg !157
@__UNIQUE_ID___addressable_pci_disable_pri297 = internal global ptr @pci_disable_pri, section ".discard.addressable", align 8, !dbg !159
@__UNIQUE_ID___addressable_pci_pri_supported298 = internal global ptr @pci_pri_supported, section ".discard.addressable", align 8, !dbg !161
@__UNIQUE_ID___addressable_pci_enable_pasid299 = internal global ptr @pci_enable_pasid, section ".discard.addressable", align 8, !dbg !163
@__UNIQUE_ID___addressable_pci_disable_pasid300 = internal global ptr @pci_disable_pasid, section ".discard.addressable", align 8, !dbg !165
@__UNIQUE_ID___addressable_pci_pasid_features301 = internal global ptr @pci_pasid_features, section ".discard.addressable", align 8, !dbg !167
@__UNIQUE_ID___addressable_pci_max_pasids302 = internal global ptr @pci_max_pasids, section ".discard.addressable", align 8, !dbg !169
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_pci_ats_supported292, ptr @__UNIQUE_ID___addressable_pci_enable_ats293, ptr @__UNIQUE_ID___addressable_pci_disable_ats294, ptr @__UNIQUE_ID___addressable_pci_disable_pri297, ptr @__UNIQUE_ID___addressable_pci_pri_supported298, ptr @__UNIQUE_ID___addressable_pci_enable_pasid299, ptr @__UNIQUE_ID___addressable_pci_disable_pasid300, ptr @__UNIQUE_ID___addressable_pci_pasid_features301, ptr @__UNIQUE_ID___addressable_pci_max_pasids302], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_ats_init(ptr noundef %dev) #0 align 16 !dbg !180 {
entry:
  %dev.addr = alloca ptr, align 8
  %pos = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4922, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #6, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4923, metadata !DIExpression()), !dbg !4926
  %call = call zeroext i1 @pci_ats_disabled() #7, !dbg !4927
  br i1 %call, label %if.then, label %if.end, !dbg !4929

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4930

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4931
  %call1 = call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 15) #7, !dbg !4932
  %conv = zext i16 %call1 to i32, !dbg !4932
  store i32 %conv, ptr %pos, align 4, !dbg !4933
  %1 = load i32, ptr %pos, align 4, !dbg !4934
  %tobool = icmp ne i32 %1, 0, !dbg !4934
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !4936

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4937

if.end3:                                          ; preds = %if.end
  %2 = load i32, ptr %pos, align 4, !dbg !4938
  %conv4 = trunc i32 %2 to i16, !dbg !4938
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4939
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 55, !dbg !4940
  store i16 %conv4, ptr %ats_cap, align 8, !dbg !4941
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4942
  br label %cleanup, !dbg !4942

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #6, !dbg !4942
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4942

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4943 dso_local zeroext i1 @pci_ats_disabled() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4944 dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pci_ats_supported(ptr noundef %dev) #0 align 16 !dbg !4947 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4953
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 55, !dbg !4955
  %1 = load i16, ptr %ats_cap, align 8, !dbg !4955
  %tobool = icmp ne i16 %1, 0, !dbg !4953
  br i1 %tobool, label %if.end, label %if.then, !dbg !4956

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4957
  br label %return, !dbg !4957

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4958
  %untrusted = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !4959
  %bf.load = load i40, ptr %untrusted, align 1, !dbg !4959
  %bf.lshr = lshr i40 %bf.load, 27, !dbg !4959
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4959
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4959
  %cmp = icmp eq i32 %bf.cast, 0, !dbg !4960
  store i1 %cmp, ptr %retval, align 1, !dbg !4961
  br label %return, !dbg !4961

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, ptr %retval, align 1, !dbg !4962
  ret i1 %3, !dbg !4962
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_enable_ats(ptr noundef %dev, i32 noundef %ps) #0 align 16 !dbg !4963 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %ps.addr = alloca i32, align 4
  %ctrl = alloca i16, align 2
  %pdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4965, metadata !DIExpression()), !dbg !4975
  store i32 %ps, ptr %ps.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ps.addr, metadata !4966, metadata !DIExpression()), !dbg !4976
  call void @llvm.lifetime.start.p0(i64 2, ptr %ctrl) #6, !dbg !4977
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !4967, metadata !DIExpression()), !dbg !4978
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #6, !dbg !4979
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !4968, metadata !DIExpression()), !dbg !4980
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4981
  %call = call zeroext i1 @pci_ats_supported(ptr noundef %0) #7, !dbg !4983
  br i1 %call, label %if.end, label %if.then, !dbg !4984

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4985

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !4986
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4969, metadata !DIExpression()), !dbg !4986
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !4986
  %ats_enabled = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !4986
  %bf.load = load i40, ptr %ats_enabled, align 1, !dbg !4986
  %bf.lshr = lshr i40 %bf.load, 15, !dbg !4986
  %bf.clear = and i40 %bf.lshr, 1, !dbg !4986
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !4986
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4986
  %lnot = xor i1 %tobool, true, !dbg !4986
  %lnot1 = xor i1 %lnot, true, !dbg !4986
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4986
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4986
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !4987
  %tobool2 = icmp ne i32 %2, 0, !dbg !4987
  %lnot3 = xor i1 %tobool2, true, !dbg !4987
  %lnot5 = xor i1 %lnot3, true, !dbg !4987
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4987
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4987
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4987
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4987
  br i1 %tobool7, label %if.then8, label %if.end18, !dbg !4986

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !4987

do.body:                                          ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !4988
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4972, metadata !DIExpression()), !dbg !4988
  store i32 2305, ptr %__flags, align 4, !dbg !4988
  br label %do.body9, !dbg !4988

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4989

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4989

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4988

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !4991
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 64, i32 %3, i64 12) #6, !dbg !4991, !srcloc !4993
  br label %do.cond11, !dbg !4991

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4991

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4988

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4994

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4994

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !4987
  br label %do.cond16, !dbg !4988

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4988

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !4988

if.end18:                                         ; preds = %do.end17, %if.end
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !4986
  %tobool19 = icmp ne i32 %4, 0, !dbg !4986
  %lnot20 = xor i1 %tobool19, true, !dbg !4986
  %lnot22 = xor i1 %lnot20, true, !dbg !4986
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4986
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4986
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4986
  store i64 %expval25, ptr %tmp, align 8, !dbg !4987
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !4996
  %5 = load i64, ptr %tmp, align 8, !dbg !4986
  %tobool26 = icmp ne i64 %5, 0, !dbg !4996
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !4997

if.then27:                                        ; preds = %if.end18
  store i32 -16, ptr %retval, align 4, !dbg !4998
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4998

if.end28:                                         ; preds = %if.end18
  %6 = load i32, ptr %ps.addr, align 4, !dbg !4999
  %cmp = icmp slt i32 %6, 12, !dbg !5001
  br i1 %cmp, label %if.then30, label %if.end31, !dbg !5002

if.then30:                                        ; preds = %if.end28
  store i32 -22, ptr %retval, align 4, !dbg !5003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5003

if.end31:                                         ; preds = %if.end28
  store i16 -32768, ptr %ctrl, align 2, !dbg !5004
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5005
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 43, !dbg !5007
  %bf.load32 = load i40, ptr %is_virtfn, align 1, !dbg !5007
  %bf.lshr33 = lshr i40 %bf.load32, 23, !dbg !5007
  %bf.clear34 = and i40 %bf.lshr33, 1, !dbg !5007
  %bf.cast35 = trunc i40 %bf.clear34 to i32, !dbg !5007
  %tobool36 = icmp ne i32 %bf.cast35, 0, !dbg !5005
  br i1 %tobool36, label %if.then37, label %if.else, !dbg !5008

if.then37:                                        ; preds = %if.end31
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5009
  %call38 = call ptr @pci_physfn(ptr noundef %8) #7, !dbg !5011
  store ptr %call38, ptr %pdev, align 8, !dbg !5012
  %9 = load ptr, ptr %pdev, align 8, !dbg !5013
  %ats_stu = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 56, !dbg !5015
  %10 = load i8, ptr %ats_stu, align 2, !dbg !5015
  %conv39 = zext i8 %10 to i32, !dbg !5013
  %11 = load i32, ptr %ps.addr, align 4, !dbg !5016
  %cmp40 = icmp ne i32 %conv39, %11, !dbg !5017
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !5018

if.then42:                                        ; preds = %if.then37
  store i32 -22, ptr %retval, align 4, !dbg !5019
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5019

if.end43:                                         ; preds = %if.then37
  br label %if.end50, !dbg !5020

if.else:                                          ; preds = %if.end31
  %12 = load i32, ptr %ps.addr, align 4, !dbg !5021
  %conv44 = trunc i32 %12 to i8, !dbg !5021
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5023
  %ats_stu45 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 56, !dbg !5024
  store i8 %conv44, ptr %ats_stu45, align 2, !dbg !5025
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5026
  %ats_stu46 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 56, !dbg !5026
  %15 = load i8, ptr %ats_stu46, align 2, !dbg !5026
  %conv47 = zext i8 %15 to i32, !dbg !5026
  %sub = sub i32 %conv47, 12, !dbg !5026
  %and = and i32 %sub, 31, !dbg !5026
  %16 = load i16, ptr %ctrl, align 2, !dbg !5027
  %conv48 = zext i16 %16 to i32, !dbg !5027
  %or = or i32 %conv48, %and, !dbg !5027
  %conv49 = trunc i32 %or to i16, !dbg !5027
  store i16 %conv49, ptr %ctrl, align 2, !dbg !5027
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.end43
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !5028
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5029
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 55, !dbg !5030
  %19 = load i16, ptr %ats_cap, align 8, !dbg !5030
  %conv51 = zext i16 %19 to i32, !dbg !5029
  %add = add i32 %conv51, 6, !dbg !5031
  %20 = load i16, ptr %ctrl, align 2, !dbg !5032
  %call52 = call i32 @pci_write_config_word(ptr noundef %17, i32 noundef %add, i16 noundef zeroext %20) #7, !dbg !5033
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5034
  %ats_enabled53 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 43, !dbg !5035
  %bf.load54 = load i40, ptr %ats_enabled53, align 1, !dbg !5036
  %bf.clear55 = and i40 %bf.load54, -32769, !dbg !5036
  %bf.set = or i40 %bf.clear55, 32768, !dbg !5036
  store i40 %bf.set, ptr %ats_enabled53, align 1, !dbg !5036
  store i32 0, ptr %retval, align 4, !dbg !5037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5037

cleanup:                                          ; preds = %if.end50, %if.then42, %if.then30, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #6, !dbg !5038
  call void @llvm.lifetime.end.p0(i64 2, ptr %ctrl) #6, !dbg !5038
  %22 = load i32, ptr %retval, align 4, !dbg !5038
  ret i32 %22, !dbg !5038
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_physfn(ptr noundef %dev) #5 align 16 !dbg !5039 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5043, metadata !DIExpression()), !dbg !5044
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5045
  ret ptr %0, !dbg !5046
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5047 dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_disable_ats(ptr noundef %dev) #0 align 16 !dbg !5052 {
entry:
  %dev.addr = alloca ptr, align 8
  %ctrl = alloca i16, align 2
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5054, metadata !DIExpression()), !dbg !5062
  call void @llvm.lifetime.start.p0(i64 2, ptr %ctrl) #6, !dbg !5063
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !5055, metadata !DIExpression()), !dbg !5064
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5065
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5056, metadata !DIExpression()), !dbg !5065
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5065
  %ats_enabled = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5065
  %bf.load = load i40, ptr %ats_enabled, align 1, !dbg !5065
  %bf.lshr = lshr i40 %bf.load, 15, !dbg !5065
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5065
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5065
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5065
  %lnot = xor i1 %tobool, true, !dbg !5065
  %lnot1 = xor i1 %lnot, true, !dbg !5065
  %lnot2 = xor i1 %lnot1, true, !dbg !5065
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5065
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5065
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5066
  %tobool3 = icmp ne i32 %1, 0, !dbg !5066
  %lnot4 = xor i1 %tobool3, true, !dbg !5066
  %lnot6 = xor i1 %lnot4, true, !dbg !5066
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5066
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5066
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5066
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5066
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5065

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5066

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5059, metadata !DIExpression()), !dbg !5067
  store i32 2305, ptr %__flags, align 4, !dbg !5067
  br label %do.body9, !dbg !5067

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5068

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5068

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5067

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5070
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 98, i32 %2, i64 12) #6, !dbg !5070, !srcloc !5072
  br label %do.cond11, !dbg !5070

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5070

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5067

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5073

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5073

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5066
  br label %do.cond16, !dbg !5067

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5067

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5067

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5065
  %tobool18 = icmp ne i32 %3, 0, !dbg !5065
  %lnot19 = xor i1 %tobool18, true, !dbg !5065
  %lnot21 = xor i1 %lnot19, true, !dbg !5065
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5065
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5065
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5065
  store i64 %expval24, ptr %tmp, align 8, !dbg !5066
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5075
  %4 = load i64, ptr %tmp, align 8, !dbg !5065
  %tobool25 = icmp ne i64 %4, 0, !dbg !5075
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5076

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5077

if.end27:                                         ; preds = %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5078
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5079
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 55, !dbg !5080
  %7 = load i16, ptr %ats_cap, align 8, !dbg !5080
  %conv28 = zext i16 %7 to i32, !dbg !5079
  %add = add i32 %conv28, 6, !dbg !5081
  %call = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef %add, ptr noundef %ctrl) #7, !dbg !5082
  %8 = load i16, ptr %ctrl, align 2, !dbg !5083
  %conv29 = zext i16 %8 to i32, !dbg !5083
  %and = and i32 %conv29, -32769, !dbg !5083
  %conv30 = trunc i32 %and to i16, !dbg !5083
  store i16 %conv30, ptr %ctrl, align 2, !dbg !5083
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5084
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5085
  %ats_cap31 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 55, !dbg !5086
  %11 = load i16, ptr %ats_cap31, align 8, !dbg !5086
  %conv32 = zext i16 %11 to i32, !dbg !5085
  %add33 = add i32 %conv32, 6, !dbg !5087
  %12 = load i16, ptr %ctrl, align 2, !dbg !5088
  %call34 = call i32 @pci_write_config_word(ptr noundef %9, i32 noundef %add33, i16 noundef zeroext %12) #7, !dbg !5089
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5090
  %ats_enabled35 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 43, !dbg !5091
  %bf.load36 = load i40, ptr %ats_enabled35, align 1, !dbg !5092
  %bf.clear37 = and i40 %bf.load36, -32769, !dbg !5092
  %bf.set = or i40 %bf.clear37, 0, !dbg !5092
  store i40 %bf.set, ptr %ats_enabled35, align 1, !dbg !5092
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5093
  br label %cleanup, !dbg !5093

cleanup:                                          ; preds = %if.end27, %if.then26
  call void @llvm.lifetime.end.p0(i64 2, ptr %ctrl) #6, !dbg !5093
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5093

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5094 dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_restore_ats_state(ptr noundef %dev) #0 align 16 !dbg !5098 {
entry:
  %dev.addr = alloca ptr, align 8
  %ctrl = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5100, metadata !DIExpression()), !dbg !5102
  call void @llvm.lifetime.start.p0(i64 2, ptr %ctrl) #6, !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %ctrl, metadata !5101, metadata !DIExpression()), !dbg !5104
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5105
  %ats_enabled = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5107
  %bf.load = load i40, ptr %ats_enabled, align 1, !dbg !5107
  %bf.lshr = lshr i40 %bf.load, 15, !dbg !5107
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5107
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5107
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5105
  br i1 %tobool, label %if.end, label %if.then, !dbg !5108

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5109

if.end:                                           ; preds = %entry
  store i16 -32768, ptr %ctrl, align 2, !dbg !5110
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5111
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43, !dbg !5113
  %bf.load1 = load i40, ptr %is_virtfn, align 1, !dbg !5113
  %bf.lshr2 = lshr i40 %bf.load1, 23, !dbg !5113
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !5113
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !5113
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5111
  br i1 %tobool5, label %if.end9, label %if.then6, !dbg !5114

if.then6:                                         ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5115
  %ats_stu = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 56, !dbg !5115
  %3 = load i8, ptr %ats_stu, align 2, !dbg !5115
  %conv = zext i8 %3 to i32, !dbg !5115
  %sub = sub i32 %conv, 12, !dbg !5115
  %and = and i32 %sub, 31, !dbg !5115
  %4 = load i16, ptr %ctrl, align 2, !dbg !5116
  %conv7 = zext i16 %4 to i32, !dbg !5116
  %or = or i32 %conv7, %and, !dbg !5116
  %conv8 = trunc i32 %or to i16, !dbg !5116
  store i16 %conv8, ptr %ctrl, align 2, !dbg !5116
  br label %if.end9, !dbg !5117

if.end9:                                          ; preds = %if.then6, %if.end
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5118
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5119
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 55, !dbg !5120
  %7 = load i16, ptr %ats_cap, align 8, !dbg !5120
  %conv10 = zext i16 %7 to i32, !dbg !5119
  %add = add i32 %conv10, 6, !dbg !5121
  %8 = load i16, ptr %ctrl, align 2, !dbg !5122
  %call = call i32 @pci_write_config_word(ptr noundef %5, i32 noundef %add, i16 noundef zeroext %8) #7, !dbg !5123
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5124
  br label %cleanup, !dbg !5124

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %ctrl) #6, !dbg !5124
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5124

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_ats_queue_depth(ptr noundef %dev) #0 align 16 !dbg !5125 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %cap = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5127, metadata !DIExpression()), !dbg !5129
  call void @llvm.lifetime.start.p0(i64 2, ptr %cap) #6, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !5128, metadata !DIExpression()), !dbg !5131
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5132
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 55, !dbg !5134
  %1 = load i16, ptr %ats_cap, align 8, !dbg !5134
  %tobool = icmp ne i16 %1, 0, !dbg !5132
  br i1 %tobool, label %if.end, label %if.then, !dbg !5135

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5136

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5137
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5139
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5139
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5139
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5139
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5139
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !5137
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5140

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5141

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5142
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5143
  %ats_cap4 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 55, !dbg !5144
  %5 = load i16, ptr %ats_cap4, align 8, !dbg !5144
  %conv = zext i16 %5 to i32, !dbg !5143
  %add = add i32 %conv, 4, !dbg !5145
  %call = call i32 @pci_read_config_word(ptr noundef %3, i32 noundef %add, ptr noundef %cap) #7, !dbg !5146
  %6 = load i16, ptr %cap, align 2, !dbg !5147
  %conv5 = zext i16 %6 to i32, !dbg !5147
  %and = and i32 %conv5, 31, !dbg !5147
  %tobool6 = icmp ne i32 %and, 0, !dbg !5147
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !5147

cond.true:                                        ; preds = %if.end3
  %7 = load i16, ptr %cap, align 2, !dbg !5148
  %conv7 = zext i16 %7 to i32, !dbg !5148
  %and8 = and i32 %conv7, 31, !dbg !5148
  br label %cond.end, !dbg !5147

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !5147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and8, %cond.true ], [ 32, %cond.false ], !dbg !5147
  store i32 %cond, ptr %retval, align 4, !dbg !5149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5149

cleanup:                                          ; preds = %cond.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %cap) #6, !dbg !5150
  %8 = load i32, ptr %retval, align 4, !dbg !5150
  ret i32 %8, !dbg !5150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_ats_page_aligned(ptr noundef %pdev) #0 align 16 !dbg !5151 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %cap = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5153, metadata !DIExpression()), !dbg !5155
  call void @llvm.lifetime.start.p0(i64 2, ptr %cap) #6, !dbg !5156
  call void @llvm.dbg.declare(metadata ptr %cap, metadata !5154, metadata !DIExpression()), !dbg !5157
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5158
  %ats_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 55, !dbg !5160
  %1 = load i16, ptr %ats_cap, align 8, !dbg !5160
  %tobool = icmp ne i16 %1, 0, !dbg !5158
  br i1 %tobool, label %if.end, label %if.then, !dbg !5161

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5162

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5163
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5164
  %ats_cap1 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 55, !dbg !5165
  %4 = load i16, ptr %ats_cap1, align 8, !dbg !5165
  %conv = zext i16 %4 to i32, !dbg !5164
  %add = add i32 %conv, 4, !dbg !5166
  %call = call i32 @pci_read_config_word(ptr noundef %2, i32 noundef %add, ptr noundef %cap) #7, !dbg !5167
  %5 = load i16, ptr %cap, align 2, !dbg !5168
  %conv2 = zext i16 %5 to i32, !dbg !5168
  %and = and i32 %conv2, 32, !dbg !5170
  %tobool3 = icmp ne i32 %and, 0, !dbg !5170
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5171

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5172

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5173

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %cap) #6, !dbg !5174
  %6 = load i32, ptr %retval, align 4, !dbg !5174
  ret i32 %6, !dbg !5174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_pri_init(ptr noundef %pdev) #0 align 16 !dbg !5175 {
entry:
  %pdev.addr = alloca ptr, align 8
  %status = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5177, metadata !DIExpression()), !dbg !5179
  call void @llvm.lifetime.start.p0(i64 2, ptr %status) #6, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5178, metadata !DIExpression()), !dbg !5181
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5182
  %call = call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 19) #7, !dbg !5183
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5184
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 57, !dbg !5185
  store i16 %call, ptr %pri_cap, align 4, !dbg !5186
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5187
  %pri_cap1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 57, !dbg !5189
  %3 = load i16, ptr %pri_cap1, align 4, !dbg !5189
  %tobool = icmp ne i16 %3, 0, !dbg !5187
  br i1 %tobool, label %if.end, label %if.then, !dbg !5190

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5191

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5192
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5193
  %pri_cap2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 57, !dbg !5194
  %6 = load i16, ptr %pri_cap2, align 4, !dbg !5194
  %conv = zext i16 %6 to i32, !dbg !5193
  %add = add i32 %conv, 6, !dbg !5195
  %call3 = call i32 @pci_read_config_word(ptr noundef %4, i32 noundef %add, ptr noundef %status) #7, !dbg !5196
  %7 = load i16, ptr %status, align 2, !dbg !5197
  %conv4 = zext i16 %7 to i32, !dbg !5197
  %and = and i32 %conv4, 32768, !dbg !5199
  %tobool5 = icmp ne i32 %and, 0, !dbg !5199
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5200

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %pdev.addr, align 8, !dbg !5201
  %pasid_required = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 59, !dbg !5202
  %bf.load = load i8, ptr %pasid_required, align 4, !dbg !5203
  %bf.clear = and i8 %bf.load, -2, !dbg !5203
  %bf.set = or i8 %bf.clear, 1, !dbg !5203
  store i8 %bf.set, ptr %pasid_required, align 4, !dbg !5203
  br label %if.end7, !dbg !5201

if.end7:                                          ; preds = %if.then6, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5204
  br label %cleanup, !dbg !5204

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %status) #6, !dbg !5204
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5204

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_enable_pri(ptr noundef %pdev, i32 noundef %reqs) #0 align 16 !dbg !5205 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %reqs.addr = alloca i32, align 4
  %control = alloca i16, align 2
  %status = alloca i16, align 2
  %max_requests = alloca i32, align 4
  %pri = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x295 = alloca i32, align 4
  %__UNIQUE_ID___y296 = alloca i32, align 4
  %tmp53 = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5209, metadata !DIExpression()), !dbg !5224
  store i32 %reqs, ptr %reqs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reqs.addr, metadata !5210, metadata !DIExpression()), !dbg !5225
  call void @llvm.lifetime.start.p0(i64 2, ptr %control) #6, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %control, metadata !5211, metadata !DIExpression()), !dbg !5227
  call void @llvm.lifetime.start.p0(i64 2, ptr %status) #6, !dbg !5226
  call void @llvm.dbg.declare(metadata ptr %status, metadata !5212, metadata !DIExpression()), !dbg !5228
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_requests) #6, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %max_requests, metadata !5213, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 4, ptr %pri) #6, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %pri, metadata !5214, metadata !DIExpression()), !dbg !5232
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5233
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 57, !dbg !5234
  %1 = load i16, ptr %pri_cap, align 4, !dbg !5234
  %conv = zext i16 %1 to i32, !dbg !5233
  store i32 %conv, ptr %pri, align 4, !dbg !5232
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5235
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5237
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5237
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5237
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5237
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5237
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5235
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5238

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5239
  %call = call ptr @pci_physfn(ptr noundef %3) #7, !dbg !5242
  %pri_enabled = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 43, !dbg !5243
  %bf.load1 = load i40, ptr %pri_enabled, align 1, !dbg !5243
  %bf.lshr2 = lshr i40 %bf.load1, 17, !dbg !5243
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !5243
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !5243
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5242
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !5244

if.then6:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !5245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5245

if.end:                                           ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !5246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5246

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5215, metadata !DIExpression()), !dbg !5247
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5247
  %pri_enabled8 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 43, !dbg !5247
  %bf.load9 = load i40, ptr %pri_enabled8, align 1, !dbg !5247
  %bf.lshr10 = lshr i40 %bf.load9, 17, !dbg !5247
  %bf.clear11 = and i40 %bf.lshr10, 1, !dbg !5247
  %bf.cast12 = trunc i40 %bf.clear11 to i32, !dbg !5247
  %tobool13 = icmp ne i32 %bf.cast12, 0, !dbg !5247
  %lnot = xor i1 %tobool13, true, !dbg !5247
  %lnot14 = xor i1 %lnot, true, !dbg !5247
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5247
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5247
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5248
  %tobool15 = icmp ne i32 %5, 0, !dbg !5248
  %lnot16 = xor i1 %tobool15, true, !dbg !5248
  %lnot18 = xor i1 %lnot16, true, !dbg !5248
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5248
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5248
  %expval = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !5248
  %tobool21 = icmp ne i64 %expval, 0, !dbg !5248
  br i1 %tobool21, label %if.then22, label %if.end32, !dbg !5247

if.then22:                                        ; preds = %if.end7
  br label %do.body, !dbg !5248

do.body:                                          ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5218, metadata !DIExpression()), !dbg !5249
  store i32 2305, ptr %__flags, align 4, !dbg !5249
  br label %do.body23, !dbg !5249

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !5250

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !5250

do.end:                                           ; preds = %do.cond
  br label %do.body24, !dbg !5249

do.body24:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5252
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 213, i32 %6, i64 12) #6, !dbg !5252, !srcloc !5254
  br label %do.cond25, !dbg !5252

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5252

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !5249

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !5255

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5255

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5248
  br label %do.cond30, !dbg !5249

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !5249

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !5249

if.end32:                                         ; preds = %do.end31, %if.end7
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5247
  %tobool33 = icmp ne i32 %7, 0, !dbg !5247
  %lnot34 = xor i1 %tobool33, true, !dbg !5247
  %lnot36 = xor i1 %lnot34, true, !dbg !5247
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !5247
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !5247
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !5247
  store i64 %expval39, ptr %tmp, align 8, !dbg !5248
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5257
  %8 = load i64, ptr %tmp, align 8, !dbg !5247
  %tobool40 = icmp ne i64 %8, 0, !dbg !5257
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5258

if.then41:                                        ; preds = %if.end32
  store i32 -16, ptr %retval, align 4, !dbg !5259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5259

if.end42:                                         ; preds = %if.end32
  %9 = load i32, ptr %pri, align 4, !dbg !5260
  %tobool43 = icmp ne i32 %9, 0, !dbg !5260
  br i1 %tobool43, label %if.end45, label %if.then44, !dbg !5262

if.then44:                                        ; preds = %if.end42
  store i32 -22, ptr %retval, align 4, !dbg !5263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5263

if.end45:                                         ; preds = %if.end42
  %10 = load ptr, ptr %pdev.addr, align 8, !dbg !5264
  %11 = load i32, ptr %pri, align 4, !dbg !5265
  %add = add i32 %11, 6, !dbg !5266
  %call46 = call i32 @pci_read_config_word(ptr noundef %10, i32 noundef %add, ptr noundef %status) #7, !dbg !5267
  %12 = load i16, ptr %status, align 2, !dbg !5268
  %conv47 = zext i16 %12 to i32, !dbg !5268
  %and = and i32 %conv47, 256, !dbg !5270
  %tobool48 = icmp ne i32 %and, 0, !dbg !5270
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !5271

if.then49:                                        ; preds = %if.end45
  store i32 -16, ptr %retval, align 4, !dbg !5272
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5272

if.end50:                                         ; preds = %if.end45
  %13 = load ptr, ptr %pdev.addr, align 8, !dbg !5273
  %14 = load i32, ptr %pri, align 4, !dbg !5274
  %add51 = add i32 %14, 8, !dbg !5275
  %call52 = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef %add51, ptr noundef %max_requests) #7, !dbg !5276
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x295) #6, !dbg !5277
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x295, metadata !5221, metadata !DIExpression()), !dbg !5277
  %15 = load i32, ptr %max_requests, align 4, !dbg !5277
  store i32 %15, ptr %__UNIQUE_ID___x295, align 4, !dbg !5277
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y296) #6, !dbg !5277
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y296, metadata !5223, metadata !DIExpression()), !dbg !5277
  %16 = load i32, ptr %reqs.addr, align 4, !dbg !5277
  store i32 %16, ptr %__UNIQUE_ID___y296, align 4, !dbg !5277
  %17 = load i32, ptr %__UNIQUE_ID___x295, align 4, !dbg !5277
  %18 = load i32, ptr %__UNIQUE_ID___y296, align 4, !dbg !5277
  %cmp = icmp ult i32 %17, %18, !dbg !5277
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5277

cond.true:                                        ; preds = %if.end50
  %19 = load i32, ptr %__UNIQUE_ID___x295, align 4, !dbg !5277
  br label %cond.end, !dbg !5277

cond.false:                                       ; preds = %if.end50
  %20 = load i32, ptr %__UNIQUE_ID___y296, align 4, !dbg !5277
  br label %cond.end, !dbg !5277

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ], !dbg !5277
  store i32 %cond, ptr %tmp53, align 4, !dbg !5277
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y296) #6, !dbg !5278
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x295) #6, !dbg !5278
  %21 = load i32, ptr %tmp53, align 4, !dbg !5277
  store i32 %21, ptr %reqs.addr, align 4, !dbg !5279
  %22 = load i32, ptr %reqs.addr, align 4, !dbg !5280
  %23 = load ptr, ptr %pdev.addr, align 8, !dbg !5281
  %pri_reqs_alloc = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 58, !dbg !5282
  store i32 %22, ptr %pri_reqs_alloc, align 8, !dbg !5283
  %24 = load ptr, ptr %pdev.addr, align 8, !dbg !5284
  %25 = load i32, ptr %pri, align 4, !dbg !5285
  %add55 = add i32 %25, 12, !dbg !5286
  %26 = load i32, ptr %reqs.addr, align 4, !dbg !5287
  %call56 = call i32 @pci_write_config_dword(ptr noundef %24, i32 noundef %add55, i32 noundef %26) #7, !dbg !5288
  store i16 1, ptr %control, align 2, !dbg !5289
  %27 = load ptr, ptr %pdev.addr, align 8, !dbg !5290
  %28 = load i32, ptr %pri, align 4, !dbg !5291
  %add57 = add i32 %28, 4, !dbg !5292
  %29 = load i16, ptr %control, align 2, !dbg !5293
  %call58 = call i32 @pci_write_config_word(ptr noundef %27, i32 noundef %add57, i16 noundef zeroext %29) #7, !dbg !5294
  %30 = load ptr, ptr %pdev.addr, align 8, !dbg !5295
  %pri_enabled59 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 43, !dbg !5296
  %bf.load60 = load i40, ptr %pri_enabled59, align 1, !dbg !5297
  %bf.clear61 = and i40 %bf.load60, -131073, !dbg !5297
  %bf.set = or i40 %bf.clear61, 131072, !dbg !5297
  store i40 %bf.set, ptr %pri_enabled59, align 1, !dbg !5297
  store i32 0, ptr %retval, align 4, !dbg !5298
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5298

cleanup:                                          ; preds = %cond.end, %if.then49, %if.then44, %if.then41, %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pri) #6, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_requests) #6, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 2, ptr %status) #6, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 2, ptr %control) #6, !dbg !5299
  %31 = load i32, ptr %retval, align 4, !dbg !5299
  ret i32 %31, !dbg !5299
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5300 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5303 dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_disable_pri(ptr noundef %pdev) #0 align 16 !dbg !5306 {
entry:
  %pdev.addr = alloca ptr, align 8
  %control = alloca i16, align 2
  %pri = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5308, metadata !DIExpression()), !dbg !5317
  call void @llvm.lifetime.start.p0(i64 2, ptr %control) #6, !dbg !5318
  call void @llvm.dbg.declare(metadata ptr %control, metadata !5309, metadata !DIExpression()), !dbg !5319
  call void @llvm.lifetime.start.p0(i64 4, ptr %pri) #6, !dbg !5320
  call void @llvm.dbg.declare(metadata ptr %pri, metadata !5310, metadata !DIExpression()), !dbg !5321
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5322
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 57, !dbg !5323
  %1 = load i16, ptr %pri_cap, align 4, !dbg !5323
  %conv = zext i16 %1 to i32, !dbg !5322
  store i32 %conv, ptr %pri, align 4, !dbg !5321
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5324
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5326
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5326
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5326
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5326
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5326
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5324
  br i1 %tobool, label %if.then, label %if.end, !dbg !5327

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5328

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5329
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5311, metadata !DIExpression()), !dbg !5329
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5329
  %pri_enabled = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43, !dbg !5329
  %bf.load1 = load i40, ptr %pri_enabled, align 1, !dbg !5329
  %bf.lshr2 = lshr i40 %bf.load1, 17, !dbg !5329
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !5329
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !5329
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5329
  %lnot = xor i1 %tobool5, true, !dbg !5329
  %lnot6 = xor i1 %lnot, true, !dbg !5329
  %lnot7 = xor i1 %lnot6, true, !dbg !5329
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5329
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5329
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5330
  %tobool8 = icmp ne i32 %4, 0, !dbg !5330
  %lnot9 = xor i1 %tobool8, true, !dbg !5330
  %lnot11 = xor i1 %lnot9, true, !dbg !5330
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5330
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5330
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5330
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5330
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !5329

if.then15:                                        ; preds = %if.end
  br label %do.body, !dbg !5330

do.body:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5314, metadata !DIExpression()), !dbg !5331
  store i32 2305, ptr %__flags, align 4, !dbg !5331
  br label %do.body16, !dbg !5331

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !5332

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !5332

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !5331

do.body17:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5334
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 251, i32 %5, i64 12) #6, !dbg !5334, !srcloc !5336
  br label %do.cond18, !dbg !5334

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5334

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !5331

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !5337

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5337

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5330
  br label %do.cond23, !dbg !5331

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !5331

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !5331

if.end25:                                         ; preds = %do.end24, %if.end
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5329
  %tobool26 = icmp ne i32 %6, 0, !dbg !5329
  %lnot27 = xor i1 %tobool26, true, !dbg !5329
  %lnot29 = xor i1 %lnot27, true, !dbg !5329
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5329
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !5329
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !5329
  store i64 %expval32, ptr %tmp, align 8, !dbg !5330
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5339
  %7 = load i64, ptr %tmp, align 8, !dbg !5329
  %tobool33 = icmp ne i64 %7, 0, !dbg !5339
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5340

if.then34:                                        ; preds = %if.end25
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5341

if.end35:                                         ; preds = %if.end25
  %8 = load i32, ptr %pri, align 4, !dbg !5342
  %tobool36 = icmp ne i32 %8, 0, !dbg !5342
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5344

if.then37:                                        ; preds = %if.end35
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5345

if.end38:                                         ; preds = %if.end35
  %9 = load ptr, ptr %pdev.addr, align 8, !dbg !5346
  %10 = load i32, ptr %pri, align 4, !dbg !5347
  %add = add i32 %10, 4, !dbg !5348
  %call = call i32 @pci_read_config_word(ptr noundef %9, i32 noundef %add, ptr noundef %control) #7, !dbg !5349
  %11 = load i16, ptr %control, align 2, !dbg !5350
  %conv39 = zext i16 %11 to i32, !dbg !5350
  %and = and i32 %conv39, -2, !dbg !5350
  %conv40 = trunc i32 %and to i16, !dbg !5350
  store i16 %conv40, ptr %control, align 2, !dbg !5350
  %12 = load ptr, ptr %pdev.addr, align 8, !dbg !5351
  %13 = load i32, ptr %pri, align 4, !dbg !5352
  %add41 = add i32 %13, 4, !dbg !5353
  %14 = load i16, ptr %control, align 2, !dbg !5354
  %call42 = call i32 @pci_write_config_word(ptr noundef %12, i32 noundef %add41, i16 noundef zeroext %14) #7, !dbg !5355
  %15 = load ptr, ptr %pdev.addr, align 8, !dbg !5356
  %pri_enabled43 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 43, !dbg !5357
  %bf.load44 = load i40, ptr %pri_enabled43, align 1, !dbg !5358
  %bf.clear45 = and i40 %bf.load44, -131073, !dbg !5358
  %bf.set = or i40 %bf.clear45, 0, !dbg !5358
  store i40 %bf.set, ptr %pri_enabled43, align 1, !dbg !5358
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5359
  br label %cleanup, !dbg !5359

cleanup:                                          ; preds = %if.end38, %if.then37, %if.then34, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pri) #6, !dbg !5359
  call void @llvm.lifetime.end.p0(i64 2, ptr %control) #6, !dbg !5359
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5359

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_restore_pri_state(ptr noundef %pdev) #0 align 16 !dbg !5360 {
entry:
  %pdev.addr = alloca ptr, align 8
  %control = alloca i16, align 2
  %reqs = alloca i32, align 4
  %pri = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5362, metadata !DIExpression()), !dbg !5366
  call void @llvm.lifetime.start.p0(i64 2, ptr %control) #6, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %control, metadata !5363, metadata !DIExpression()), !dbg !5368
  store i16 1, ptr %control, align 2, !dbg !5368
  call void @llvm.lifetime.start.p0(i64 4, ptr %reqs) #6, !dbg !5369
  call void @llvm.dbg.declare(metadata ptr %reqs, metadata !5364, metadata !DIExpression()), !dbg !5370
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5371
  %pri_reqs_alloc = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 58, !dbg !5372
  %1 = load i32, ptr %pri_reqs_alloc, align 8, !dbg !5372
  store i32 %1, ptr %reqs, align 4, !dbg !5370
  call void @llvm.lifetime.start.p0(i64 4, ptr %pri) #6, !dbg !5373
  call void @llvm.dbg.declare(metadata ptr %pri, metadata !5365, metadata !DIExpression()), !dbg !5374
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5375
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 57, !dbg !5376
  %3 = load i16, ptr %pri_cap, align 4, !dbg !5376
  %conv = zext i16 %3 to i32, !dbg !5375
  store i32 %conv, ptr %pri, align 4, !dbg !5374
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5377
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 43, !dbg !5379
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5379
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5379
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5379
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5379
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5377
  br i1 %tobool, label %if.then, label %if.end, !dbg !5380

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5381

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5382
  %pri_enabled = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 43, !dbg !5384
  %bf.load1 = load i40, ptr %pri_enabled, align 1, !dbg !5384
  %bf.lshr2 = lshr i40 %bf.load1, 17, !dbg !5384
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !5384
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !5384
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5382
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5385

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5386

if.end7:                                          ; preds = %if.end
  %6 = load i32, ptr %pri, align 4, !dbg !5387
  %tobool8 = icmp ne i32 %6, 0, !dbg !5387
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5389

if.then9:                                         ; preds = %if.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5390

if.end10:                                         ; preds = %if.end7
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !5391
  %8 = load i32, ptr %pri, align 4, !dbg !5392
  %add = add i32 %8, 12, !dbg !5393
  %9 = load i32, ptr %reqs, align 4, !dbg !5394
  %call = call i32 @pci_write_config_dword(ptr noundef %7, i32 noundef %add, i32 noundef %9) #7, !dbg !5395
  %10 = load ptr, ptr %pdev.addr, align 8, !dbg !5396
  %11 = load i32, ptr %pri, align 4, !dbg !5397
  %add11 = add i32 %11, 4, !dbg !5398
  %12 = load i16, ptr %control, align 2, !dbg !5399
  %call12 = call i32 @pci_write_config_word(ptr noundef %10, i32 noundef %add11, i16 noundef zeroext %12) #7, !dbg !5400
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5401
  br label %cleanup, !dbg !5401

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pri) #6, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 4, ptr %reqs) #6, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 2, ptr %control) #6, !dbg !5401
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5401

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_reset_pri(ptr noundef %pdev) #0 align 16 !dbg !5402 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %control = alloca i16, align 2
  %pri = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5404, metadata !DIExpression()), !dbg !5413
  call void @llvm.lifetime.start.p0(i64 2, ptr %control) #6, !dbg !5414
  call void @llvm.dbg.declare(metadata ptr %control, metadata !5405, metadata !DIExpression()), !dbg !5415
  call void @llvm.lifetime.start.p0(i64 4, ptr %pri) #6, !dbg !5416
  call void @llvm.dbg.declare(metadata ptr %pri, metadata !5406, metadata !DIExpression()), !dbg !5417
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5418
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 57, !dbg !5419
  %1 = load i16, ptr %pri_cap, align 4, !dbg !5419
  %conv = zext i16 %1 to i32, !dbg !5418
  store i32 %conv, ptr %pri, align 4, !dbg !5417
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5420
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5422
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5422
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5422
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5422
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5422
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5420
  br i1 %tobool, label %if.then, label %if.end, !dbg !5423

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5424
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5424

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5407, metadata !DIExpression()), !dbg !5425
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5425
  %pri_enabled = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43, !dbg !5425
  %bf.load1 = load i40, ptr %pri_enabled, align 1, !dbg !5425
  %bf.lshr2 = lshr i40 %bf.load1, 17, !dbg !5425
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !5425
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !5425
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5425
  %lnot = xor i1 %tobool5, true, !dbg !5425
  %lnot6 = xor i1 %lnot, true, !dbg !5425
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5425
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5425
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5426
  %tobool7 = icmp ne i32 %4, 0, !dbg !5426
  %lnot8 = xor i1 %tobool7, true, !dbg !5426
  %lnot10 = xor i1 %lnot8, true, !dbg !5426
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !5426
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !5426
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !5426
  %tobool13 = icmp ne i64 %expval, 0, !dbg !5426
  br i1 %tobool13, label %if.then14, label %if.end24, !dbg !5425

if.then14:                                        ; preds = %if.end
  br label %do.body, !dbg !5426

do.body:                                          ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5410, metadata !DIExpression()), !dbg !5427
  store i32 2305, ptr %__flags, align 4, !dbg !5427
  br label %do.body15, !dbg !5427

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !5428

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !5428

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !5427

do.body16:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5430
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 303, i32 %5, i64 12) #6, !dbg !5430, !srcloc !5432
  br label %do.cond17, !dbg !5430

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5430

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !5427

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !5433

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5433

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5426
  br label %do.cond22, !dbg !5427

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !5427

do.end23:                                         ; preds = %do.cond22
  br label %if.end24, !dbg !5427

if.end24:                                         ; preds = %do.end23, %if.end
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5425
  %tobool25 = icmp ne i32 %6, 0, !dbg !5425
  %lnot26 = xor i1 %tobool25, true, !dbg !5425
  %lnot28 = xor i1 %lnot26, true, !dbg !5425
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !5425
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !5425
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !5425
  store i64 %expval31, ptr %tmp, align 8, !dbg !5426
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5435
  %7 = load i64, ptr %tmp, align 8, !dbg !5425
  %tobool32 = icmp ne i64 %7, 0, !dbg !5435
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !5436

if.then33:                                        ; preds = %if.end24
  store i32 -16, ptr %retval, align 4, !dbg !5437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5437

if.end34:                                         ; preds = %if.end24
  %8 = load i32, ptr %pri, align 4, !dbg !5438
  %tobool35 = icmp ne i32 %8, 0, !dbg !5438
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !5440

if.then36:                                        ; preds = %if.end34
  store i32 -22, ptr %retval, align 4, !dbg !5441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5441

if.end37:                                         ; preds = %if.end34
  store i16 2, ptr %control, align 2, !dbg !5442
  %9 = load ptr, ptr %pdev.addr, align 8, !dbg !5443
  %10 = load i32, ptr %pri, align 4, !dbg !5444
  %add = add i32 %10, 4, !dbg !5445
  %11 = load i16, ptr %control, align 2, !dbg !5446
  %call = call i32 @pci_write_config_word(ptr noundef %9, i32 noundef %add, i16 noundef zeroext %11) #7, !dbg !5447
  store i32 0, ptr %retval, align 4, !dbg !5448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5448

cleanup:                                          ; preds = %if.end37, %if.then36, %if.then33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pri) #6, !dbg !5449
  call void @llvm.lifetime.end.p0(i64 2, ptr %control) #6, !dbg !5449
  %12 = load i32, ptr %retval, align 4, !dbg !5449
  ret i32 %12, !dbg !5449
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_prg_resp_pasid_required(ptr noundef %pdev) #0 align 16 !dbg !5450 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5452, metadata !DIExpression()), !dbg !5453
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5454
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5456
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5456
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5456
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5456
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5456
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5454
  br i1 %tobool, label %if.then, label %if.end, !dbg !5457

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5458
  %call = call ptr @pci_physfn(ptr noundef %1) #7, !dbg !5459
  store ptr %call, ptr %pdev.addr, align 8, !dbg !5460
  br label %if.end, !dbg !5461

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5462
  %pasid_required = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 59, !dbg !5463
  %bf.load1 = load i8, ptr %pasid_required, align 4, !dbg !5463
  %bf.clear2 = and i8 %bf.load1, 1, !dbg !5463
  %bf.cast3 = zext i8 %bf.clear2 to i32, !dbg !5463
  ret i32 %bf.cast3, !dbg !5464
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @pci_pri_supported(ptr noundef %pdev) #0 align 16 !dbg !5465 {
entry:
  %retval = alloca i1, align 1
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5467, metadata !DIExpression()), !dbg !5468
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5469
  %call = call ptr @pci_physfn(ptr noundef %0) #7, !dbg !5471
  %pri_cap = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 57, !dbg !5472
  %1 = load i16, ptr %pri_cap, align 4, !dbg !5472
  %tobool = icmp ne i16 %1, 0, !dbg !5471
  br i1 %tobool, label %if.then, label %if.end, !dbg !5473

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !5474
  br label %return, !dbg !5474

if.end:                                           ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5475
  br label %return, !dbg !5475

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !5476
  ret i1 %2, !dbg !5476
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_pasid_init(ptr noundef %pdev) #0 align 16 !dbg !5477 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5479, metadata !DIExpression()), !dbg !5480
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5481
  %call = call zeroext i16 @pci_find_ext_capability(ptr noundef %0, i32 noundef 27) #7, !dbg !5482
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5483
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 60, !dbg !5484
  store i16 %call, ptr %pasid_cap, align 2, !dbg !5485
  ret void, !dbg !5486
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_enable_pasid(ptr noundef %pdev, i32 noundef %features) #0 align 16 !dbg !5487 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %features.addr = alloca i32, align 4
  %control = alloca i16, align 2
  %supported = alloca i16, align 2
  %pasid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5489, metadata !DIExpression()), !dbg !5500
  store i32 %features, ptr %features.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %features.addr, metadata !5490, metadata !DIExpression()), !dbg !5501
  call void @llvm.lifetime.start.p0(i64 2, ptr %control) #6, !dbg !5502
  call void @llvm.dbg.declare(metadata ptr %control, metadata !5491, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 2, ptr %supported) #6, !dbg !5502
  call void @llvm.dbg.declare(metadata ptr %supported, metadata !5492, metadata !DIExpression()), !dbg !5504
  call void @llvm.lifetime.start.p0(i64 4, ptr %pasid) #6, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %pasid, metadata !5493, metadata !DIExpression()), !dbg !5506
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5507
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60, !dbg !5508
  %1 = load i16, ptr %pasid_cap, align 2, !dbg !5508
  %conv = zext i16 %1 to i32, !dbg !5507
  store i32 %conv, ptr %pasid, align 4, !dbg !5506
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5509
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5511
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5511
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5511
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5511
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5511
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5509
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5512

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5513
  %call = call ptr @pci_physfn(ptr noundef %3) #7, !dbg !5516
  %pasid_enabled = getelementptr inbounds %struct.pci_dev, ptr %call, i32 0, i32 43, !dbg !5517
  %bf.load1 = load i40, ptr %pasid_enabled, align 1, !dbg !5517
  %bf.lshr2 = lshr i40 %bf.load1, 16, !dbg !5517
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !5517
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !5517
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5516
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !5518

if.then6:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !5519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5519

if.end:                                           ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !5520
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5520

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5521
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5494, metadata !DIExpression()), !dbg !5521
  %4 = load ptr, ptr %pdev.addr, align 8, !dbg !5521
  %pasid_enabled8 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 43, !dbg !5521
  %bf.load9 = load i40, ptr %pasid_enabled8, align 1, !dbg !5521
  %bf.lshr10 = lshr i40 %bf.load9, 16, !dbg !5521
  %bf.clear11 = and i40 %bf.lshr10, 1, !dbg !5521
  %bf.cast12 = trunc i40 %bf.clear11 to i32, !dbg !5521
  %tobool13 = icmp ne i32 %bf.cast12, 0, !dbg !5521
  %lnot = xor i1 %tobool13, true, !dbg !5521
  %lnot14 = xor i1 %lnot, true, !dbg !5521
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5521
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5521
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5522
  %tobool15 = icmp ne i32 %5, 0, !dbg !5522
  %lnot16 = xor i1 %tobool15, true, !dbg !5522
  %lnot18 = xor i1 %lnot16, true, !dbg !5522
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5522
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5522
  %expval = call i64 @llvm.expect.i64(i64 %conv20, i64 0), !dbg !5522
  %tobool21 = icmp ne i64 %expval, 0, !dbg !5522
  br i1 %tobool21, label %if.then22, label %if.end32, !dbg !5521

if.then22:                                        ; preds = %if.end7
  br label %do.body, !dbg !5522

do.body:                                          ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5497, metadata !DIExpression()), !dbg !5523
  store i32 2305, ptr %__flags, align 4, !dbg !5523
  br label %do.body23, !dbg !5523

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !5524

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !5524

do.end:                                           ; preds = %do.cond
  br label %do.body24, !dbg !5523

do.body24:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5526
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 376, i32 %6, i64 12) #6, !dbg !5526, !srcloc !5528
  br label %do.cond25, !dbg !5526

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5526

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !5523

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !5529

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5529

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5522
  br label %do.cond30, !dbg !5523

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !5523

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !5523

if.end32:                                         ; preds = %do.end31, %if.end7
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5521
  %tobool33 = icmp ne i32 %7, 0, !dbg !5521
  %lnot34 = xor i1 %tobool33, true, !dbg !5521
  %lnot36 = xor i1 %lnot34, true, !dbg !5521
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !5521
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !5521
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !5521
  store i64 %expval39, ptr %tmp, align 8, !dbg !5522
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5531
  %8 = load i64, ptr %tmp, align 8, !dbg !5521
  %tobool40 = icmp ne i64 %8, 0, !dbg !5531
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5532

if.then41:                                        ; preds = %if.end32
  store i32 -16, ptr %retval, align 4, !dbg !5533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5533

if.end42:                                         ; preds = %if.end32
  %9 = load ptr, ptr %pdev.addr, align 8, !dbg !5534
  %eetlp_prefix_path = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 35, !dbg !5536
  %bf.load43 = load i8, ptr %eetlp_prefix_path, align 2, !dbg !5536
  %bf.lshr44 = lshr i8 %bf.load43, 2, !dbg !5536
  %bf.clear45 = and i8 %bf.lshr44, 1, !dbg !5536
  %bf.cast46 = zext i8 %bf.clear45 to i32, !dbg !5536
  %tobool47 = icmp ne i32 %bf.cast46, 0, !dbg !5534
  br i1 %tobool47, label %if.end54, label %land.lhs.true, !dbg !5537

land.lhs.true:                                    ; preds = %if.end42
  %10 = load ptr, ptr %pdev.addr, align 8, !dbg !5538
  %pasid_no_tlp = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 35, !dbg !5539
  %bf.load48 = load i8, ptr %pasid_no_tlp, align 2, !dbg !5539
  %bf.lshr49 = lshr i8 %bf.load48, 1, !dbg !5539
  %bf.clear50 = and i8 %bf.lshr49, 1, !dbg !5539
  %bf.cast51 = zext i8 %bf.clear50 to i32, !dbg !5539
  %tobool52 = icmp ne i32 %bf.cast51, 0, !dbg !5538
  br i1 %tobool52, label %if.end54, label %if.then53, !dbg !5540

if.then53:                                        ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !5541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5541

if.end54:                                         ; preds = %land.lhs.true, %if.end42
  %11 = load i32, ptr %pasid, align 4, !dbg !5542
  %tobool55 = icmp ne i32 %11, 0, !dbg !5542
  br i1 %tobool55, label %if.end57, label %if.then56, !dbg !5544

if.then56:                                        ; preds = %if.end54
  store i32 -22, ptr %retval, align 4, !dbg !5545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5545

if.end57:                                         ; preds = %if.end54
  %12 = load ptr, ptr %pdev.addr, align 8, !dbg !5546
  %call58 = call zeroext i1 @pci_acs_path_enabled(ptr noundef %12, ptr noundef null, i16 noundef zeroext 20) #7, !dbg !5548
  br i1 %call58, label %if.end60, label %if.then59, !dbg !5549

if.then59:                                        ; preds = %if.end57
  store i32 -22, ptr %retval, align 4, !dbg !5550
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5550

if.end60:                                         ; preds = %if.end57
  %13 = load ptr, ptr %pdev.addr, align 8, !dbg !5551
  %14 = load i32, ptr %pasid, align 4, !dbg !5552
  %add = add i32 %14, 4, !dbg !5553
  %call61 = call i32 @pci_read_config_word(ptr noundef %13, i32 noundef %add, ptr noundef %supported) #7, !dbg !5554
  %15 = load i16, ptr %supported, align 2, !dbg !5555
  %conv62 = zext i16 %15 to i32, !dbg !5555
  %and = and i32 %conv62, 6, !dbg !5555
  %conv63 = trunc i32 %and to i16, !dbg !5555
  store i16 %conv63, ptr %supported, align 2, !dbg !5555
  %16 = load i16, ptr %supported, align 2, !dbg !5556
  %conv64 = zext i16 %16 to i32, !dbg !5556
  %17 = load i32, ptr %features.addr, align 4, !dbg !5558
  %and65 = and i32 %conv64, %17, !dbg !5559
  %18 = load i32, ptr %features.addr, align 4, !dbg !5560
  %cmp = icmp ne i32 %and65, %18, !dbg !5561
  br i1 %cmp, label %if.then67, label %if.end68, !dbg !5562

if.then67:                                        ; preds = %if.end60
  store i32 -22, ptr %retval, align 4, !dbg !5563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5563

if.end68:                                         ; preds = %if.end60
  %19 = load i32, ptr %features.addr, align 4, !dbg !5564
  %or = or i32 1, %19, !dbg !5565
  %conv69 = trunc i32 %or to i16, !dbg !5566
  store i16 %conv69, ptr %control, align 2, !dbg !5567
  %20 = load i32, ptr %features.addr, align 4, !dbg !5568
  %conv70 = trunc i32 %20 to i16, !dbg !5568
  %21 = load ptr, ptr %pdev.addr, align 8, !dbg !5569
  %pasid_features = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 61, !dbg !5570
  store i16 %conv70, ptr %pasid_features, align 8, !dbg !5571
  %22 = load ptr, ptr %pdev.addr, align 8, !dbg !5572
  %23 = load i32, ptr %pasid, align 4, !dbg !5573
  %add71 = add i32 %23, 6, !dbg !5574
  %24 = load i16, ptr %control, align 2, !dbg !5575
  %call72 = call i32 @pci_write_config_word(ptr noundef %22, i32 noundef %add71, i16 noundef zeroext %24) #7, !dbg !5576
  %25 = load ptr, ptr %pdev.addr, align 8, !dbg !5577
  %pasid_enabled73 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 43, !dbg !5578
  %bf.load74 = load i40, ptr %pasid_enabled73, align 1, !dbg !5579
  %bf.clear75 = and i40 %bf.load74, -65537, !dbg !5579
  %bf.set = or i40 %bf.clear75, 65536, !dbg !5579
  store i40 %bf.set, ptr %pasid_enabled73, align 1, !dbg !5579
  store i32 0, ptr %retval, align 4, !dbg !5580
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5580

cleanup:                                          ; preds = %if.end68, %if.then67, %if.then59, %if.then56, %if.then53, %if.then41, %if.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %pasid) #6, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 2, ptr %supported) #6, !dbg !5581
  call void @llvm.lifetime.end.p0(i64 2, ptr %control) #6, !dbg !5581
  %26 = load i32, ptr %retval, align 4, !dbg !5581
  ret i32 %26, !dbg !5581
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5582 dso_local zeroext i1 @pci_acs_path_enabled(ptr noundef, ptr noundef, i16 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_disable_pasid(ptr noundef %pdev) #0 align 16 !dbg !5585 {
entry:
  %pdev.addr = alloca ptr, align 8
  %control = alloca i16, align 2
  %pasid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5587, metadata !DIExpression()), !dbg !5596
  call void @llvm.lifetime.start.p0(i64 2, ptr %control) #6, !dbg !5597
  call void @llvm.dbg.declare(metadata ptr %control, metadata !5588, metadata !DIExpression()), !dbg !5598
  store i16 0, ptr %control, align 2, !dbg !5598
  call void @llvm.lifetime.start.p0(i64 4, ptr %pasid) #6, !dbg !5599
  call void @llvm.dbg.declare(metadata ptr %pasid, metadata !5589, metadata !DIExpression()), !dbg !5600
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5601
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60, !dbg !5602
  %1 = load i16, ptr %pasid_cap, align 2, !dbg !5602
  %conv = zext i16 %1 to i32, !dbg !5601
  store i32 %conv, ptr %pasid, align 4, !dbg !5600
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5603
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5605
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5605
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5605
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5605
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5605
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5603
  br i1 %tobool, label %if.then, label %if.end, !dbg !5606

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5608
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5590, metadata !DIExpression()), !dbg !5608
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5608
  %pasid_enabled = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43, !dbg !5608
  %bf.load1 = load i40, ptr %pasid_enabled, align 1, !dbg !5608
  %bf.lshr2 = lshr i40 %bf.load1, 16, !dbg !5608
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !5608
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !5608
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5608
  %lnot = xor i1 %tobool5, true, !dbg !5608
  %lnot6 = xor i1 %lnot, true, !dbg !5608
  %lnot7 = xor i1 %lnot6, true, !dbg !5608
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !5608
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5608
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5609
  %tobool8 = icmp ne i32 %4, 0, !dbg !5609
  %lnot9 = xor i1 %tobool8, true, !dbg !5609
  %lnot11 = xor i1 %lnot9, true, !dbg !5609
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5609
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5609
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5609
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5609
  br i1 %tobool14, label %if.then15, label %if.end25, !dbg !5608

if.then15:                                        ; preds = %if.end
  br label %do.body, !dbg !5609

do.body:                                          ; preds = %if.then15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5593, metadata !DIExpression()), !dbg !5610
  store i32 2305, ptr %__flags, align 4, !dbg !5610
  br label %do.body16, !dbg !5610

do.body16:                                        ; preds = %do.body
  br label %do.cond, !dbg !5611

do.cond:                                          ; preds = %do.body16
  br label %do.end, !dbg !5611

do.end:                                           ; preds = %do.cond
  br label %do.body17, !dbg !5610

do.body17:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !5613
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 419, i32 %5, i64 12) #6, !dbg !5613, !srcloc !5615
  br label %do.cond18, !dbg !5613

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5613

do.end19:                                         ; preds = %do.cond18
  br label %do.body20, !dbg !5610

do.body20:                                        ; preds = %do.end19
  br label %do.cond21, !dbg !5616

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5616

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !5609
  br label %do.cond23, !dbg !5610

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !5610

do.end24:                                         ; preds = %do.cond23
  br label %if.end25, !dbg !5610

if.end25:                                         ; preds = %do.end24, %if.end
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5608
  %tobool26 = icmp ne i32 %6, 0, !dbg !5608
  %lnot27 = xor i1 %tobool26, true, !dbg !5608
  %lnot29 = xor i1 %lnot27, true, !dbg !5608
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !5608
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !5608
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !5608
  store i64 %expval32, ptr %tmp, align 8, !dbg !5609
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !5618
  %7 = load i64, ptr %tmp, align 8, !dbg !5608
  %tobool33 = icmp ne i64 %7, 0, !dbg !5618
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5619

if.then34:                                        ; preds = %if.end25
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5620

if.end35:                                         ; preds = %if.end25
  %8 = load i32, ptr %pasid, align 4, !dbg !5621
  %tobool36 = icmp ne i32 %8, 0, !dbg !5621
  br i1 %tobool36, label %if.end38, label %if.then37, !dbg !5623

if.then37:                                        ; preds = %if.end35
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5624

if.end38:                                         ; preds = %if.end35
  %9 = load ptr, ptr %pdev.addr, align 8, !dbg !5625
  %10 = load i32, ptr %pasid, align 4, !dbg !5626
  %add = add i32 %10, 6, !dbg !5627
  %11 = load i16, ptr %control, align 2, !dbg !5628
  %call = call i32 @pci_write_config_word(ptr noundef %9, i32 noundef %add, i16 noundef zeroext %11) #7, !dbg !5629
  %12 = load ptr, ptr %pdev.addr, align 8, !dbg !5630
  %pasid_enabled39 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 43, !dbg !5631
  %bf.load40 = load i40, ptr %pasid_enabled39, align 1, !dbg !5632
  %bf.clear41 = and i40 %bf.load40, -65537, !dbg !5632
  %bf.set = or i40 %bf.clear41, 0, !dbg !5632
  store i40 %bf.set, ptr %pasid_enabled39, align 1, !dbg !5632
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5633
  br label %cleanup, !dbg !5633

cleanup:                                          ; preds = %if.end38, %if.then37, %if.then34, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pasid) #6, !dbg !5633
  call void @llvm.lifetime.end.p0(i64 2, ptr %control) #6, !dbg !5633
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5633

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_restore_pasid_state(ptr noundef %pdev) #0 align 16 !dbg !5634 {
entry:
  %pdev.addr = alloca ptr, align 8
  %control = alloca i16, align 2
  %pasid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5636, metadata !DIExpression()), !dbg !5639
  call void @llvm.lifetime.start.p0(i64 2, ptr %control) #6, !dbg !5640
  call void @llvm.dbg.declare(metadata ptr %control, metadata !5637, metadata !DIExpression()), !dbg !5641
  call void @llvm.lifetime.start.p0(i64 4, ptr %pasid) #6, !dbg !5642
  call void @llvm.dbg.declare(metadata ptr %pasid, metadata !5638, metadata !DIExpression()), !dbg !5643
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5644
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 60, !dbg !5645
  %1 = load i16, ptr %pasid_cap, align 2, !dbg !5645
  %conv = zext i16 %1 to i32, !dbg !5644
  store i32 %conv, ptr %pasid, align 4, !dbg !5643
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5646
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5648
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5648
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5648
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5648
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5648
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5646
  br i1 %tobool, label %if.then, label %if.end, !dbg !5649

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5650

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !5651
  %pasid_enabled = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43, !dbg !5653
  %bf.load1 = load i40, ptr %pasid_enabled, align 1, !dbg !5653
  %bf.lshr2 = lshr i40 %bf.load1, 16, !dbg !5653
  %bf.clear3 = and i40 %bf.lshr2, 1, !dbg !5653
  %bf.cast4 = trunc i40 %bf.clear3 to i32, !dbg !5653
  %tobool5 = icmp ne i32 %bf.cast4, 0, !dbg !5651
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5654

if.then6:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5655

if.end7:                                          ; preds = %if.end
  %4 = load i32, ptr %pasid, align 4, !dbg !5656
  %tobool8 = icmp ne i32 %4, 0, !dbg !5656
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !5658

if.then9:                                         ; preds = %if.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5659

if.end10:                                         ; preds = %if.end7
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5660
  %pasid_features = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 61, !dbg !5661
  %6 = load i16, ptr %pasid_features, align 8, !dbg !5661
  %conv11 = zext i16 %6 to i32, !dbg !5660
  %or = or i32 1, %conv11, !dbg !5662
  %conv12 = trunc i32 %or to i16, !dbg !5663
  store i16 %conv12, ptr %control, align 2, !dbg !5664
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !5665
  %8 = load i32, ptr %pasid, align 4, !dbg !5666
  %add = add i32 %8, 6, !dbg !5667
  %9 = load i16, ptr %control, align 2, !dbg !5668
  %call = call i32 @pci_write_config_word(ptr noundef %7, i32 noundef %add, i16 noundef zeroext %9) #7, !dbg !5669
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5670
  br label %cleanup, !dbg !5670

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pasid) #6, !dbg !5670
  call void @llvm.lifetime.end.p0(i64 2, ptr %control) #6, !dbg !5670
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5670

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_pasid_features(ptr noundef %pdev) #0 align 16 !dbg !5671 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %supported = alloca i16, align 2
  %pasid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5673, metadata !DIExpression()), !dbg !5676
  call void @llvm.lifetime.start.p0(i64 2, ptr %supported) #6, !dbg !5677
  call void @llvm.dbg.declare(metadata ptr %supported, metadata !5674, metadata !DIExpression()), !dbg !5678
  call void @llvm.lifetime.start.p0(i64 4, ptr %pasid) #6, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %pasid, metadata !5675, metadata !DIExpression()), !dbg !5680
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5681
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5683
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5683
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5683
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5683
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5683
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5681
  br i1 %tobool, label %if.then, label %if.end, !dbg !5684

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5685
  %call = call ptr @pci_physfn(ptr noundef %1) #7, !dbg !5686
  store ptr %call, ptr %pdev.addr, align 8, !dbg !5687
  br label %if.end, !dbg !5688

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5689
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 60, !dbg !5690
  %3 = load i16, ptr %pasid_cap, align 2, !dbg !5690
  %conv = zext i16 %3 to i32, !dbg !5689
  store i32 %conv, ptr %pasid, align 4, !dbg !5691
  %4 = load i32, ptr %pasid, align 4, !dbg !5692
  %tobool1 = icmp ne i32 %4, 0, !dbg !5692
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5694

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5695
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5695

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5696
  %6 = load i32, ptr %pasid, align 4, !dbg !5697
  %add = add i32 %6, 4, !dbg !5698
  %call4 = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef %add, ptr noundef %supported) #7, !dbg !5699
  %7 = load i16, ptr %supported, align 2, !dbg !5700
  %conv5 = zext i16 %7 to i32, !dbg !5700
  %and = and i32 %conv5, 6, !dbg !5700
  %conv6 = trunc i32 %and to i16, !dbg !5700
  store i16 %conv6, ptr %supported, align 2, !dbg !5700
  %8 = load i16, ptr %supported, align 2, !dbg !5701
  %conv7 = zext i16 %8 to i32, !dbg !5701
  store i32 %conv7, ptr %retval, align 4, !dbg !5702
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5702

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %pasid) #6, !dbg !5703
  call void @llvm.lifetime.end.p0(i64 2, ptr %supported) #6, !dbg !5703
  %9 = load i32, ptr %retval, align 4, !dbg !5703
  ret i32 %9, !dbg !5703
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_max_pasids(ptr noundef %pdev) #0 align 16 !dbg !5704 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %supported = alloca i16, align 2
  %pasid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5706, metadata !DIExpression()), !dbg !5709
  call void @llvm.lifetime.start.p0(i64 2, ptr %supported) #6, !dbg !5710
  call void @llvm.dbg.declare(metadata ptr %supported, metadata !5707, metadata !DIExpression()), !dbg !5711
  call void @llvm.lifetime.start.p0(i64 4, ptr %pasid) #6, !dbg !5712
  call void @llvm.dbg.declare(metadata ptr %pasid, metadata !5708, metadata !DIExpression()), !dbg !5713
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !5714
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 43, !dbg !5716
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5716
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5716
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5716
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5716
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5714
  br i1 %tobool, label %if.then, label %if.end, !dbg !5717

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5718
  %call = call ptr @pci_physfn(ptr noundef %1) #7, !dbg !5719
  store ptr %call, ptr %pdev.addr, align 8, !dbg !5720
  br label %if.end, !dbg !5721

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !5722
  %pasid_cap = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 60, !dbg !5723
  %3 = load i16, ptr %pasid_cap, align 2, !dbg !5723
  %conv = zext i16 %3 to i32, !dbg !5722
  store i32 %conv, ptr %pasid, align 4, !dbg !5724
  %4 = load i32, ptr %pasid, align 4, !dbg !5725
  %tobool1 = icmp ne i32 %4, 0, !dbg !5725
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5727

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5728

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !5729
  %6 = load i32, ptr %pasid, align 4, !dbg !5730
  %add = add i32 %6, 4, !dbg !5731
  %call4 = call i32 @pci_read_config_word(ptr noundef %5, i32 noundef %add, ptr noundef %supported) #7, !dbg !5732
  %7 = load i16, ptr %supported, align 2, !dbg !5733
  %conv5 = zext i16 %7 to i32, !dbg !5733
  %and = and i32 %conv5, 7936, !dbg !5734
  %shr = ashr i32 %and, 8, !dbg !5735
  %conv6 = trunc i32 %shr to i16, !dbg !5736
  store i16 %conv6, ptr %supported, align 2, !dbg !5737
  %8 = load i16, ptr %supported, align 2, !dbg !5738
  %conv7 = zext i16 %8 to i32, !dbg !5738
  %shl = shl i32 1, %conv7, !dbg !5739
  store i32 %shl, ptr %retval, align 4, !dbg !5740
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5740

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %pasid) #6, !dbg !5741
  call void @llvm.lifetime.end.p0(i64 2, ptr %supported) #6, !dbg !5741
  %9 = load i32, ptr %retval, align 4, !dbg !5741
  ret i32 %9, !dbg !5741
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_ats_supported292", scope: !2, file: !3, line: 47, type: !147, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.ats.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/ats\22 -D KBUILD_BASENAME=\22ats\22 -D KBUILD_MODNAME=\22ats\22 -D __KBUILD_MODNAME=kmod_ats -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/ats.ll drivers/pci/ats.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !148, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/ats.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8330d7cf91137105d949e1b784828212")
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !142, line: 10, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!143 = !{!144, !145}
!144 = !DIEnumerator(name: "false", value: 0)
!145 = !DIEnumerator(name: "true", value: 1)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !{!0, !149, !155, !157, !159, !161, !163, !165, !167, !169}
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 64, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 144, elements: !153)
!152 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!153 = !{!154}
!154 = !DISubrange(count: 18)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_enable_ats293", scope: !2, file: !3, line: 88, type: !147, isLocal: true, isDefinition: true)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_disable_ats294", scope: !2, file: !3, line: 107, type: !147, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_disable_pri297", scope: !2, file: !3, line: 263, type: !147, isLocal: true, isDefinition: true)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_pri_supported298", scope: !2, file: !3, line: 343, type: !147, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_enable_pasid299", scope: !2, file: !3, line: 404, type: !147, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_disable_pasid300", scope: !2, file: !3, line: 429, type: !147, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_pasid_features301", scope: !2, file: !3, line: 481, type: !147, isLocal: true, isDefinition: true)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_max_pasids302", scope: !2, file: !3, line: 510, type: !147, isLocal: true, isDefinition: true)
!171 = !{i32 7, !"Dwarf Version", i32 5}
!172 = !{i32 2, !"Debug Info Version", i32 3}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 8, !"cf-protection-branch", i32 1}
!175 = !{i32 4, !"function_return_thunk_extern", i32 1}
!176 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!177 = !{i32 1, !"Code Model", i32 2}
!178 = !{i32 1, !"override-stack-alignment", i32 8}
!179 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!180 = distinct !DISubprogram(name: "pci_ats_init", scope: !3, file: !3, line: 19, type: !181, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4921)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !185, line: 322, size: 16640, elements: !186)
!185 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!186 = !{!187, !194, !4669, !4670, !4671, !4672, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4781, !4782, !4783, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4860, !4861, !4862, !4864, !4865, !4867, !4868, !4869, !4870, !4876, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !184, file: !185, line: 323, baseType: !188, size: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !189, line: 190, size: 128, elements: !190)
!189 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!190 = !{!191, !193}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !188, file: !189, line: 191, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !188, file: !189, line: 191, baseType: !192, size: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !184, file: !185, line: 324, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !185, line: 647, size: 8256, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !230, !231, !232, !259, !260, !264, !266, !267, !268, !269, !273, !275, !277, !4664, !4665, !4666, !4667, !4668}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !196, file: !185, line: 648, baseType: !188, size: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !196, file: !185, line: 649, baseType: !195, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !196, file: !185, line: 650, baseType: !188, size: 128, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !196, file: !185, line: 651, baseType: !188, size: 128, offset: 320)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !196, file: !185, line: 652, baseType: !183, size: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !196, file: !185, line: 653, baseType: !188, size: 128, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !196, file: !185, line: 655, baseType: !205, size: 256, offset: 640)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 256, elements: !228)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !208, line: 21, size: 512, elements: !209)
!208 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!209 = !{!210, !218, !219, !222, !224, !225, !226, !227}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !207, file: !208, line: 22, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !189, line: 164, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !189, line: 159, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !214, line: 23, baseType: !215)
!214 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !216, line: 31, baseType: !217)
!216 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!217 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !207, file: !208, line: 23, baseType: !211, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !208, line: 24, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !208, line: 25, baseType: !223, size: 64, offset: 192)
!223 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !207, file: !208, line: 26, baseType: !223, size: 64, offset: 256)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !207, file: !208, line: 27, baseType: !206, size: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !207, file: !208, line: 27, baseType: !206, size: 64, offset: 384)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !207, file: !208, line: 27, baseType: !206, size: 64, offset: 448)
!228 = !{!229}
!229 = !DISubrange(count: 4)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !196, file: !185, line: 656, baseType: !188, size: 128, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !196, file: !185, line: 657, baseType: !207, size: 512, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !196, file: !185, line: 659, baseType: !233, size: 64, offset: 1536)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !185, line: 773, size: 320, elements: !235)
!235 = !{!236, !240, !244, !248, !255}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !234, file: !185, line: 774, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!109, !195}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !234, file: !185, line: 775, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !195}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !234, file: !185, line: 776, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!147, !195, !7, !109}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !234, file: !185, line: 777, baseType: !249, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!109, !195, !7, !109, !109, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !214, line: 21, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !216, line: 27, baseType: !7)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !234, file: !185, line: 778, baseType: !256, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!109, !195, !7, !109, !109, !253}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !196, file: !185, line: 660, baseType: !147, size: 64, offset: 1600)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !196, file: !185, line: 661, baseType: !261, size: 64, offset: 1664)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !263, line: 131, flags: DIFlagFwdDecl)
!263 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!264 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !196, file: !185, line: 663, baseType: !265, size: 8, offset: 1728)
!265 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !196, file: !185, line: 664, baseType: !265, size: 8, offset: 1736)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !196, file: !185, line: 665, baseType: !265, size: 8, offset: 1744)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !196, file: !185, line: 666, baseType: !265, size: 8, offset: 1752)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !185, line: 671, baseType: !270, size: 384, offset: 1760)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 384, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 48)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !196, file: !185, line: 673, baseType: !274, size: 16, offset: 2144)
!274 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !196, file: !185, line: 674, baseType: !276, size: 16, offset: 2160)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !185, line: 255, baseType: !274)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !196, file: !185, line: 675, baseType: !278, size: 64, offset: 2176)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !280)
!280 = !{!281, !4203, !4204, !4207, !4208, !4261, !4346, !4347, !4348, !4349, !4350, !4357, !4449, !4462, !4472, !4476, !4478, !4479, !4480, !4484, !4491, !4492, !4495, !4498, !4502, !4606, !4607, !4608, !4609, !4610, !4611, !4641, !4642, !4643, !4646, !4649, !4658, !4659, !4660, !4661, !4662, !4663}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !279, file: !94, line: 706, baseType: !282, size: 512)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !283, line: 64, size: 512, elements: !284)
!283 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!284 = !{!285, !286, !287, !289, !374, !4090, !4193, !4198, !4199, !4200, !4201, !4202}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !283, line: 65, baseType: !220, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !282, file: !283, line: 66, baseType: !188, size: 128, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !282, file: !283, line: 67, baseType: !288, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !282, file: !283, line: 68, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !283, line: 168, size: 768, elements: !292)
!292 = !{!293, !294, !333, !334}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !291, file: !283, line: 169, baseType: !188, size: 128)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !291, file: !283, line: 170, baseType: !295, size: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !296, line: 29, baseType: !297)
!296 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !296, line: 17, size: 32, elements: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !296, line: 18, baseType: !300, size: 32)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !296, line: 18, size: 32, elements: !301)
!301 = !{!302}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !300, file: !296, line: 19, baseType: !303, size: 32)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !304, line: 14, size: 32, elements: !305)
!304 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !303, file: !304, line: 15, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !308, line: 44, baseType: !309)
!308 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !308, line: 14, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !309, file: !308, line: 15, baseType: !312, size: 32)
!312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !309, file: !308, line: 15, size: 32, elements: !313)
!313 = !{!314, !319, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !312, file: !308, line: 16, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !189, line: 174, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 172, size: 32, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !316, file: !189, line: 173, baseType: !109, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !308, line: 24, baseType: !320, size: 16)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !308, line: 24, size: 16, elements: !321)
!321 = !{!322, !325}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !320, file: !308, line: 25, baseType: !323, size: 8)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !214, line: 17, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !216, line: 21, baseType: !265)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !320, file: !308, line: 26, baseType: !323, size: 8, offset: 8)
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !312, file: !308, line: 28, baseType: !327, size: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !312, file: !308, line: 28, size: 32, elements: !328)
!328 = !{!329, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !327, file: !308, line: 29, baseType: !330, size: 16)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !214, line: 19, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !216, line: 24, baseType: !274)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !327, file: !308, line: 30, baseType: !330, size: 16, offset: 16)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !291, file: !283, line: 171, baseType: !282, size: 512, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !291, file: !283, line: 172, baseType: !335, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !283, line: 133, size: 192, elements: !338)
!338 = !{!339, !346, !351}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !337, file: !283, line: 134, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!109, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !283, line: 135, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!220, !344}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !337, file: !283, line: 136, baseType: !352, size: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!109, !344, !356}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !283, line: 125, size: 20736, elements: !358)
!358 = !{!359, !364, !368, !369, !373}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !357, file: !283, line: 126, baseType: !360, size: 192)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 192, elements: !362)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!362 = !{!363}
!363 = !DISubrange(count: 3)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !357, file: !283, line: 127, baseType: !365, size: 4096, offset: 192)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 4096, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !357, file: !283, line: 128, baseType: !109, size: 32, offset: 4288)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !357, file: !283, line: 129, baseType: !370, size: 16384, offset: 4320)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 16384, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 2048)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !357, file: !283, line: 130, baseType: !109, size: 32, offset: 20704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !282, file: !283, line: 69, baseType: !375, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !283, line: 116, size: 384, elements: !378)
!378 = !{!379, !383, !411, !4053, !4080, !4084}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !377, file: !283, line: 117, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !288}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !377, file: !283, line: 118, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !387, line: 254, size: 128, elements: !388)
!387 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!388 = !{!389, !404}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !386, file: !387, line: 255, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !288, !398, !361}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !189, line: 66, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !395, line: 73, baseType: !396)
!395 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !395, line: 15, baseType: !397)
!397 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !387, line: 30, size: 128, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !387, line: 31, baseType: !220, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !399, file: !387, line: 32, baseType: !403, size: 16, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !189, line: 24, baseType: !274)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !386, file: !387, line: 256, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DISubroutineType(types: !407)
!407 = !{!393, !288, !398, !220, !408}
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !189, line: 61, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !395, line: 72, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !395, line: 16, baseType: !223)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !377, file: !283, line: 119, baseType: !412, size: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !387, line: 84, size: 320, elements: !416)
!416 = !{!417, !418, !422, !4049, !4051}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !415, file: !387, line: 85, baseType: !220, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !415, file: !387, line: 86, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!403, !288, !398, !109}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !415, file: !387, line: 88, baseType: !423, size: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!403, !288, !426, !109}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !387, line: 175, size: 512, elements: !428)
!428 = !{!429, !430, !431, !432, !4040, !4044, !4045}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !427, file: !387, line: 176, baseType: !399, size: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !427, file: !387, line: 177, baseType: !408, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !427, file: !387, line: 178, baseType: !147, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !427, file: !387, line: 179, baseType: !433, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !438)
!438 = !{!439, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !4034, !4035, !4036, !4037, !4038, !4039}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !437, file: !14, line: 473, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !442)
!442 = !{!443, !444, !445, !453, !454, !461, !462, !465, !466, !3813, !3814, !3815, !3816, !3817, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3857, !3860, !3861, !3862, !3871, !3872, !3873, !3874}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !441, file: !14, line: 642, baseType: !403, size: 16)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !441, file: !14, line: 643, baseType: !274, size: 16, offset: 16)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !441, file: !14, line: 644, baseType: !446, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !447, line: 23, baseType: !448)
!447 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 21, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !448, file: !447, line: 22, baseType: !451, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !189, line: 37, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !395, line: 49, baseType: !7)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !441, file: !14, line: 645, baseType: !188, size: 128, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !441, file: !14, line: 646, baseType: !455, size: 32, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !447, line: 28, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 26, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !456, file: !447, line: 27, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !189, line: 38, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !395, line: 50, baseType: !7)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !441, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !441, file: !14, line: 650, baseType: !463, size: 64, offset: 256)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !441, file: !14, line: 651, baseType: !463, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !441, file: !14, line: 654, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !470)
!470 = !{!471, !3641, !3651, !3655, !3659, !3663, !3667, !3671, !3675, !3679, !3683, !3684, !3688, !3692, !3729, !3758, !3762, !3768, !3772, !3776, !3780, !3784, !3788, !3794, !3798}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !469, file: !14, line: 1967, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !440, !475, !7}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !477, line: 82, size: 1536, elements: !478)
!477 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!478 = !{!479, !480, !490, !498, !499, !514, !515, !519, !532, !3624, !3625, !3626, !3627, !3633, !3634, !3635}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !476, file: !477, line: 84, baseType: !7, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !476, file: !477, line: 85, baseType: !481, size: 32, offset: 32)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !482, line: 275, baseType: !483)
!482 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !482, line: 275, size: 32, elements: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !483, file: !482, line: 275, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !482, line: 69, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !482, line: 64, size: 32, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !487, file: !482, line: 65, baseType: !7, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !476, file: !477, line: 86, baseType: !491, size: 128, offset: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !492, line: 38, size: 128, elements: !493)
!492 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!493 = !{!494, !496}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !491, file: !492, line: 39, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !491, file: !492, line: 39, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !476, file: !477, line: 87, baseType: !475, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !476, file: !477, line: 88, baseType: !500, size: 128, offset: 256)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !477, line: 49, size: 128, elements: !501)
!501 = !{!502, !511}
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !477, line: 50, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !500, file: !477, line: 50, size: 64, elements: !504)
!504 = !{!505, !510}
!505 = !DIDerivedType(tag: DW_TAG_member, scope: !503, file: !477, line: 51, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !503, file: !477, line: 51, size: 64, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !506, file: !477, line: 52, baseType: !253, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !506, file: !477, line: 52, baseType: !253, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !503, file: !477, line: 54, baseType: !213, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !500, file: !477, line: 56, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !476, file: !477, line: 89, baseType: !440, size: 64, offset: 384)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !476, file: !477, line: 91, baseType: !516, size: 256, offset: 448)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 256, elements: !517)
!517 = !{!518}
!518 = !DISubrange(count: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !476, file: !477, line: 94, baseType: !520, size: 64, offset: 704)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !521, line: 25, size: 64, elements: !522)
!521 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !521, line: 26, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !520, file: !521, line: 26, size: 64, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !524, file: !521, line: 28, baseType: !215, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !521, line: 30, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !521, line: 30, size: 64, elements: !529)
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !528, file: !521, line: 31, baseType: !295, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !528, file: !521, line: 32, baseType: !109, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !476, file: !477, line: 95, baseType: !533, size: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !477, line: 128, size: 1024, align: 512, elements: !536)
!536 = !{!537, !541, !542, !549, !555, !559, !563, !567, !568, !572, !576, !3614, !3618}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !535, file: !477, line: 129, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!109, !475, !7}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !535, file: !477, line: 130, baseType: !538, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !535, file: !477, line: 131, baseType: !543, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!109, !546, !548}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !535, file: !477, line: 132, baseType: !550, size: 64, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!109, !546, !7, !220, !553}
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !535, file: !477, line: 134, baseType: !556, size: 64, offset: 256)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!109, !546}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !535, file: !477, line: 135, baseType: !560, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!109, !475}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !535, file: !477, line: 136, baseType: !564, size: 64, offset: 384)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{null, !475}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !535, file: !477, line: 137, baseType: !564, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !535, file: !477, line: 138, baseType: !569, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !475, !440}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !535, file: !477, line: 139, baseType: !573, size: 64, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!361, !475, !361, !109}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !535, file: !477, line: 140, baseType: !577, size: 64, offset: 640)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!580, !3613}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !582, line: 70, size: 256, elements: !583)
!582 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!583 = !{!584, !585, !3609, !3610}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !581, file: !582, line: 71, baseType: !475, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !581, file: !582, line: 72, baseType: !586, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !588)
!588 = !{!589, !590, !593, !594, !595, !599, !1077, !1217, !1257, !1347, !1351, !1352, !1353, !1354, !1355, !1364, !1365, !1366, !1367, !1372, !1376, !1377, !1380, !1383, !1386, !1389, !1390, !1391, !1432, !3542, !3543, !3544, !3545, !3546, !3547, !3550, !3552, !3559, !3560, !3561, !3562, !3563, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !587, file: !14, line: 1191, baseType: !188, size: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !587, file: !14, line: 1192, baseType: !591, size: 32, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !189, line: 21, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !189, line: 18, baseType: !253)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !587, file: !14, line: 1193, baseType: !265, size: 8, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !587, file: !14, line: 1194, baseType: !223, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !587, file: !14, line: 1195, baseType: !596, size: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !189, line: 52, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !395, line: 88, baseType: !598)
!598 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !587, file: !14, line: 1196, baseType: !600, size: 64, offset: 320)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !602)
!602 = !{!603, !604, !605, !612, !616, !620, !624, !1062, !1063, !1067, !1069, !1070, !1071, !1073, !1074, !1075, !1076}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !601, file: !14, line: 2367, baseType: !220, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !601, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !601, file: !14, line: 2376, baseType: !606, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!109, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !611, line: 32, flags: DIFlagFwdDecl)
!611 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!612 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !601, file: !14, line: 2377, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !601, file: !14, line: 2378, baseType: !617, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!475, !600, !109, !220, !147}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !601, file: !14, line: 2380, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !586}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !601, file: !14, line: 2381, baseType: !625, size: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !627)
!627 = !{!628, !629, !630, !634, !656, !682, !683, !684, !685, !689, !694, !695, !715, !771, !772, !773, !774, !775, !778, !779, !780, !788, !792, !819, !840, !841, !842, !843, !852, !875, !876, !879, !882, !883, !884, !885, !886, !887, !888, !893, !894, !1020, !1028, !1029, !1030, !1032, !1036, !1037, !1041, !1042, !1043, !1044, !1046, !1047, !1048, !1055, !1056, !1057, !1061}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !626, file: !6, line: 403, baseType: !5, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !626, file: !6, line: 406, baseType: !188, size: 128, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !626, file: !6, line: 409, baseType: !631, size: 448, offset: 192)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 448, elements: !632)
!632 = !{!633}
!633 = !DISubrange(count: 56)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !626, file: !6, line: 417, baseType: !635, size: 768, offset: 640)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !636)
!636 = !{!637, !638, !639, !640, !643}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !635, file: !6, line: 46, baseType: !282, size: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !635, file: !6, line: 47, baseType: !625, size: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !635, file: !6, line: 48, baseType: !288, size: 64, offset: 576)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !635, file: !6, line: 49, baseType: !641, size: 64, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !635, file: !6, line: 50, baseType: !644, size: 64, offset: 704)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !646, line: 26, size: 256, elements: !647)
!646 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !645, file: !646, line: 27, baseType: !7, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !645, file: !646, line: 28, baseType: !650, size: 192, offset: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !651, line: 43, size: 192, elements: !652)
!651 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!652 = !{!653, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !650, file: !651, line: 44, baseType: !654, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !304, line: 23, baseType: !303)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !650, file: !651, line: 45, baseType: !188, size: 128, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !626, file: !6, line: 418, baseType: !657, size: 64, offset: 1408)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !659)
!659 = !{!660, !661, !666, !670, !674, !678}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !658, file: !6, line: 54, baseType: !399, size: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !658, file: !6, line: 55, baseType: !662, size: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!393, !657, !665, !361}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !658, file: !6, line: 57, baseType: !667, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!393, !657, !665, !220, !408}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !658, file: !6, line: 59, baseType: !671, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !625, !220}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !658, file: !6, line: 60, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!109, !625}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !658, file: !6, line: 61, baseType: !679, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !625}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !626, file: !6, line: 419, baseType: !220, size: 64, offset: 1472)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !626, file: !6, line: 420, baseType: !220, size: 64, offset: 1536)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !626, file: !6, line: 421, baseType: !288, size: 64, offset: 1600)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !626, file: !6, line: 424, baseType: !686, size: 64, offset: 1664)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !626, file: !6, line: 425, baseType: !690, size: 64, offset: 1728)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !214, line: 20, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !216, line: 26, baseType: !109)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !626, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !626, file: !6, line: 435, baseType: !696, size: 256, offset: 1856)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !697, line: 66, size: 256, elements: !698)
!697 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!698 = !{!699, !708, !709, !714}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !696, file: !697, line: 67, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !701, line: 13, baseType: !702)
!701 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !189, line: 181, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 179, size: 64, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !703, file: !189, line: 180, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !214, line: 22, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !216, line: 30, baseType: !598)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !696, file: !697, line: 68, baseType: !654, size: 32, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !696, file: !697, line: 70, baseType: !710, size: 32, offset: 96)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !711, line: 15, size: 32, elements: !712)
!711 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!712 = !{!713}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !710, file: !711, line: 20, baseType: !315, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !696, file: !697, line: 72, baseType: !188, size: 128, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !626, file: !6, line: 437, baseType: !716, size: 64, offset: 2112)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !718, line: 69, size: 320, elements: !719)
!718 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!719 = !{!720, !721, !722, !742, !744, !748, !749}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !718, line: 70, baseType: !220, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !717, file: !718, line: 71, baseType: !625, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !717, file: !718, line: 72, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !718, line: 47, size: 256, elements: !726)
!726 = !{!727, !728, !734, !738}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !718, line: 49, baseType: !7, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !725, file: !718, line: 51, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!109, !220, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !725, file: !718, line: 53, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!109, !361, !732}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !725, file: !718, line: 55, baseType: !739, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !147}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !717, file: !718, line: 73, baseType: !743, size: 16, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !717, file: !718, line: 74, baseType: !745, size: 8, offset: 208)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !214, line: 16, baseType: !746)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !216, line: 20, baseType: !747)
!747 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !718, line: 75, baseType: !323, size: 8, offset: 216)
!749 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 76, baseType: !750, size: 64, offset: 256)
!750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 76, size: 64, elements: !751)
!751 = !{!752, !753, !760}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !750, file: !718, line: 77, baseType: !147, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !750, file: !718, line: 78, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !718, line: 86, size: 128, elements: !757)
!757 = !{!758, !759}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !756, file: !718, line: 87, baseType: !7, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !756, file: !718, line: 88, baseType: !361, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !750, file: !718, line: 79, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !718, line: 92, size: 256, elements: !764)
!764 = !{!765, !766, !767, !769, !770}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !763, file: !718, line: 94, baseType: !7, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !763, file: !718, line: 95, baseType: !7, size: 32, offset: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !763, file: !718, line: 96, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !763, file: !718, line: 97, baseType: !723, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !763, file: !718, line: 98, baseType: !147, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !626, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !626, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !626, file: !6, line: 442, baseType: !686, size: 64, offset: 2240)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !626, file: !6, line: 443, baseType: !690, size: 64, offset: 2304)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !626, file: !6, line: 444, baseType: !776, size: 8, offset: 2368)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !189, line: 35, baseType: !777)
!777 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !626, file: !6, line: 451, baseType: !776, size: 8, offset: 2376)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !626, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !626, file: !6, line: 455, baseType: !781, size: 64, offset: 2432)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !783, line: 23, size: 96, elements: !784)
!783 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!784 = !{!785, !786, !787}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !782, file: !783, line: 24, baseType: !109, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !782, file: !783, line: 24, baseType: !109, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !782, file: !783, line: 24, baseType: !109, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !626, file: !6, line: 458, baseType: !789, size: 64, offset: 2496)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!109}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !626, file: !6, line: 460, baseType: !793, size: 4032, align: 512, offset: 2560)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 4032, elements: !817)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !795)
!795 = !{!796, !797, !798}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !794, file: !6, line: 363, baseType: !147, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !794, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !794, file: !6, line: 367, baseType: !799, size: 448, offset: 128)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !799, file: !6, line: 320, baseType: !625, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !799, file: !6, line: 321, baseType: !803, size: 384, offset: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !804, line: 40, size: 384, elements: !805)
!804 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !803, file: !804, line: 41, baseType: !807, size: 384, align: 64)
!807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 384, align: 64, elements: !815)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !809, line: 5, size: 192, align: 64, elements: !810)
!809 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!810 = !{!811, !812, !814}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !808, file: !809, line: 6, baseType: !223, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !808, file: !809, line: 7, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !808, file: !809, line: 8, baseType: !813, size: 64, offset: 128)
!815 = !{!816}
!816 = !DISubrange(count: 2)
!817 = !{!818}
!818 = !DISubrange(count: 7)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !626, file: !6, line: 463, baseType: !820, size: 192, offset: 6592)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !821, line: 8, size: 192, elements: !822)
!821 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!822 = !{!823, !824, !826}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !820, file: !821, line: 10, baseType: !7, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !820, file: !821, line: 11, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !820, file: !821, line: 12, baseType: !827, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !829, line: 59, size: 48, elements: !830)
!829 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!830 = !{!831, !835, !836, !837, !838, !839}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !828, file: !829, line: 60, baseType: !832, size: 16)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !214, line: 18, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !216, line: 23, baseType: !834)
!834 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !828, file: !829, line: 61, baseType: !832, size: 16, offset: 16)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !828, file: !829, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !828, file: !829, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !828, file: !829, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !828, file: !829, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !626, file: !6, line: 465, baseType: !223, size: 64, offset: 6784)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !626, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !626, file: !6, line: 470, baseType: !188, size: 128, offset: 6912)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !626, file: !6, line: 471, baseType: !844, size: 64, offset: 7040)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !846, line: 33, size: 96, elements: !847)
!846 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!847 = !{!848, !849, !850, !851}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !845, file: !846, line: 37, baseType: !109, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !845, file: !846, line: 43, baseType: !109, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !845, file: !846, line: 45, baseType: !274, size: 16, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !845, file: !846, line: 47, baseType: !274, size: 16, offset: 80)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !626, file: !6, line: 476, baseType: !853, size: 64, offset: 7104)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !855)
!855 = !{!856, !872, !873, !874}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !854, file: !6, line: 379, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !859, line: 204, baseType: !860)
!859 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !859, line: 197, size: 192, elements: !861)
!861 = !{!862, !864, !865, !866, !868, !870}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !860, file: !859, line: 198, baseType: !863, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !859, line: 21, baseType: !254)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !860, file: !859, line: 199, baseType: !265, size: 8, offset: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !860, file: !859, line: 200, baseType: !265, size: 8, offset: 40)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !860, file: !859, line: 201, baseType: !867, size: 16, offset: 48)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !859, line: 17, baseType: !331)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !860, file: !859, line: 202, baseType: !869, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !859, line: 16, baseType: !215)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !860, file: !859, line: 203, baseType: !871, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !859, line: 22, baseType: !215)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !854, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !854, file: !6, line: 381, baseType: !361, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !854, file: !6, line: 382, baseType: !361, size: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !626, file: !6, line: 477, baseType: !854, size: 256, offset: 7168)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !626, file: !6, line: 480, baseType: !877, size: 64, offset: 7424)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !626, file: !6, line: 483, baseType: !880, size: 64, offset: 7488)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !626, file: !6, line: 488, baseType: !361, size: 64, offset: 7552)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !626, file: !6, line: 492, baseType: !147, size: 64, offset: 7616)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !626, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !626, file: !6, line: 495, baseType: !147, size: 64, offset: 7744)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !626, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !626, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !626, file: !6, line: 500, baseType: !889, size: 64, offset: 7872)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !891, line: 45, baseType: !892)
!891 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !626, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !626, file: !6, line: 504, baseType: !895, size: 64, offset: 8000)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !898, line: 96, size: 192, elements: !899)
!898 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!899 = !{!900, !901, !980, !984}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !897, file: !898, line: 97, baseType: !7, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !897, file: !898, line: 98, baseType: !902, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !898, line: 24, size: 3072, elements: !904)
!904 = !{!905, !907, !908, !909, !910, !932, !933, !934, !935, !953, !965, !966, !977, !978, !979}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !903, file: !898, line: 26, baseType: !906, size: 128)
!906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 128, elements: !815)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !903, file: !898, line: 27, baseType: !906, size: 128, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !903, file: !898, line: 28, baseType: !109, size: 32, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !903, file: !898, line: 31, baseType: !295, size: 32, align: 512, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !903, file: !898, line: 32, baseType: !911, size: 960, offset: 576)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !912, line: 206, size: 960, elements: !913)
!912 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!913 = !{!914, !923, !926, !928, !929, !931}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !911, file: !912, line: 207, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !189, line: 232, size: 128, align: 64, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !916, file: !189, line: 233, baseType: !915, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !916, file: !189, line: 234, baseType: !920, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !915}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !911, file: !912, line: 208, baseType: !924, size: 256, offset: 64)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 256, elements: !228)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !911, file: !912, line: 209, baseType: !927, size: 256, offset: 320)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 256, elements: !228)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !911, file: !912, line: 213, baseType: !397, size: 64, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !911, file: !912, line: 215, baseType: !930, size: 256, offset: 640)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 256, elements: !228)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !911, file: !912, line: 216, baseType: !323, size: 8, offset: 896)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !903, file: !898, line: 33, baseType: !223, size: 64, offset: 1536)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !903, file: !898, line: 34, baseType: !223, size: 64, offset: 1600)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !903, file: !898, line: 35, baseType: !776, size: 8, offset: 1664)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !903, file: !898, line: 36, baseType: !936, size: 320, offset: 1728)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !937, line: 11, size: 320, elements: !938)
!937 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!938 = !{!939, !946, !947, !952}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !936, file: !937, line: 16, baseType: !940, size: 128)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !189, line: 198, size: 128, elements: !941)
!941 = !{!942, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !940, file: !189, line: 199, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !940, file: !189, line: 199, baseType: !945, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !936, file: !937, line: 17, baseType: !223, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !936, file: !937, line: 18, baseType: !948, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !951}
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !936, file: !937, line: 19, baseType: !253, size: 32, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !903, file: !898, line: 37, baseType: !954, size: 256, offset: 2048)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !955, line: 98, size: 256, elements: !956)
!955 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!956 = !{!957, !958, !959}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !954, file: !955, line: 99, baseType: !700, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !954, file: !955, line: 100, baseType: !188, size: 128, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !954, file: !955, line: 101, baseType: !960, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !955, line: 21, baseType: !961)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !964}
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !903, file: !898, line: 38, baseType: !916, size: 128, align: 64, offset: 2304)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !903, file: !898, line: 39, baseType: !967, size: 64, offset: 2432)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !898, line: 49, size: 768, elements: !969)
!969 = !{!970, !971, !972, !973, !974, !975, !976}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !968, file: !898, line: 50, baseType: !295, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !968, file: !898, line: 51, baseType: !927, size: 256, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !968, file: !898, line: 53, baseType: !927, size: 256, offset: 320)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !968, file: !898, line: 54, baseType: !223, size: 64, offset: 576)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !968, file: !898, line: 55, baseType: !967, size: 64, offset: 640)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !968, file: !898, line: 56, baseType: !109, size: 32, offset: 704)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !968, file: !898, line: 57, baseType: !109, size: 32, offset: 736)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !903, file: !898, line: 40, baseType: !223, size: 64, offset: 2496)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !903, file: !898, line: 42, baseType: !109, size: 32, offset: 2560)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !903, file: !898, line: 43, baseType: !896, size: 64, offset: 2624)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !897, file: !898, line: 99, baseType: !981, offset: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !982, line: 211, elements: !983)
!982 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!983 = !{}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !897, file: !898, line: 100, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !898, line: 63, size: 3008, elements: !987)
!987 = !{!988, !989, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1019}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !986, file: !898, line: 64, baseType: !967, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !986, file: !898, line: 65, baseType: !990, size: 192, offset: 64)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !967, size: 192, elements: !362)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !986, file: !898, line: 67, baseType: !109, size: 32, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !986, file: !898, line: 68, baseType: !696, size: 256, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !986, file: !898, line: 69, baseType: !295, size: 32, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !986, file: !898, line: 70, baseType: !696, size: 256, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !986, file: !898, line: 71, baseType: !223, size: 64, offset: 896)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !986, file: !898, line: 72, baseType: !223, size: 64, offset: 960)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !986, file: !898, line: 73, baseType: !223, size: 64, offset: 1024)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !986, file: !898, line: 74, baseType: !223, size: 64, offset: 1088)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !986, file: !898, line: 75, baseType: !223, size: 64, offset: 1152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !986, file: !898, line: 76, baseType: !223, size: 64, offset: 1216)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !986, file: !898, line: 77, baseType: !223, size: 64, offset: 1280)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !986, file: !898, line: 78, baseType: !223, size: 64, offset: 1344)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !986, file: !898, line: 79, baseType: !776, size: 8, offset: 1408)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !986, file: !898, line: 80, baseType: !223, size: 64, offset: 1472)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !986, file: !898, line: 81, baseType: !696, size: 256, offset: 1536)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !986, file: !898, line: 82, baseType: !645, size: 256, offset: 1792)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !986, file: !898, line: 84, baseType: !315, size: 32, offset: 2048)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !986, file: !898, line: 87, baseType: !223, size: 64, offset: 2112)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !986, file: !898, line: 88, baseType: !223, size: 64, offset: 2176)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !986, file: !898, line: 89, baseType: !1011, size: 704, offset: 2240)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !955, line: 111, size: 704, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1018}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1011, file: !955, line: 112, baseType: !954, size: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1011, file: !955, line: 113, baseType: !936, size: 320, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1011, file: !955, line: 116, baseType: !1016, size: 64, offset: 576)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !955, line: 18, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1011, file: !955, line: 117, baseType: !109, size: 32, offset: 640)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !986, file: !898, line: 90, baseType: !896, size: 64, offset: 2944)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !626, file: !6, line: 515, baseType: !1021, size: 64, offset: 8064)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1023, line: 117, size: 128, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1024 = !{!1025, !1026, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1022, file: !1023, line: 118, baseType: !692, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1022, file: !1023, line: 119, baseType: !692, size: 32, offset: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1022, file: !1023, line: 120, baseType: !397, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !626, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !626, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !626, file: !6, line: 520, baseType: !1031, size: 64, offset: 8192)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !626, file: !6, line: 523, baseType: !1033, size: 64, offset: 8256)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !626, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !626, file: !6, line: 525, baseType: !1038, size: 64, offset: 8384)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !626, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !626, file: !6, line: 533, baseType: !147, size: 64, offset: 8512)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !626, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !626, file: !6, line: 535, baseType: !1045, size: 64, offset: 8640)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !626, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !626, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !626, file: !6, line: 540, baseType: !1049, size: 64, offset: 8768)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1051, line: 32, size: 64, elements: !1052)
!1051 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1050, file: !1051, line: 33, baseType: !692, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1050, file: !1051, line: 34, baseType: !692, size: 32, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !626, file: !6, line: 563, baseType: !188, size: 128, offset: 8832)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !626, file: !6, line: 565, baseType: !188, size: 128, offset: 8960)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !626, file: !6, line: 568, baseType: !1058, size: 64, offset: 9088)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !626, file: !6, line: 570, baseType: !315, size: 32, offset: 9152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !601, file: !14, line: 2382, baseType: !600, size: 64, offset: 448)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !601, file: !14, line: 2383, baseType: !1064, size: 64, offset: 512)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !189, line: 194, size: 64, elements: !1065)
!1065 = !{!1066}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1064, file: !189, line: 195, baseType: !943, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !601, file: !14, line: 2385, baseType: !1068, offset: 576)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !982, line: 206, elements: !983)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !601, file: !14, line: 2386, baseType: !1068, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !601, file: !14, line: 2387, baseType: !1068, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !601, file: !14, line: 2388, baseType: !1072, offset: 576)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1068, elements: !362)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !601, file: !14, line: 2390, baseType: !1068, offset: 576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !601, file: !14, line: 2391, baseType: !1068, offset: 576)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !601, file: !14, line: 2392, baseType: !1068, offset: 576)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !601, file: !14, line: 2393, baseType: !1068, offset: 576)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !587, file: !14, line: 1197, baseType: !1078, size: 64, offset: 384)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1081)
!1081 = !{!1082, !1086, !1090, !1091, !1095, !1101, !1105, !1106, !1107, !1111, !1115, !1119, !1120, !1121, !1127, !1131, !1132, !1139, !1140, !1141, !1142, !1146, !1150, !1199, !1215, !1216}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1080, file: !14, line: 2058, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!440, !586}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1080, file: !14, line: 2059, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !440}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1080, file: !14, line: 2060, baseType: !1087, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1080, file: !14, line: 2062, baseType: !1092, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !440, !109}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1080, file: !14, line: 2063, baseType: !1096, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DISubroutineType(types: !1098)
!1098 = !{!109, !440, !1099}
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1080, file: !14, line: 2064, baseType: !1102, size: 64, offset: 320)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!109, !440}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1080, file: !14, line: 2065, baseType: !1087, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1080, file: !14, line: 2066, baseType: !621, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1080, file: !14, line: 2067, baseType: !1108, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!109, !586, !109}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1080, file: !14, line: 2068, baseType: !1112, size: 64, offset: 576)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{!109, !586, !13}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1080, file: !14, line: 2069, baseType: !1116, size: 64, offset: 640)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!109, !586}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1080, file: !14, line: 2070, baseType: !1112, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1080, file: !14, line: 2071, baseType: !1116, size: 64, offset: 768)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1080, file: !14, line: 2072, baseType: !1122, size: 64, offset: 832)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!109, !475, !1125}
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1080, file: !14, line: 2073, baseType: !1128, size: 64, offset: 896)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!109, !586, !825, !361}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1080, file: !14, line: 2074, baseType: !621, size: 64, offset: 960)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1080, file: !14, line: 2076, baseType: !1133, size: 64, offset: 1024)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!109, !1136, !475}
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1138, line: 66, flags: DIFlagFwdDecl)
!1138 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1080, file: !14, line: 2077, baseType: !1133, size: 64, offset: 1088)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1080, file: !14, line: 2078, baseType: !1133, size: 64, offset: 1152)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1080, file: !14, line: 2079, baseType: !1133, size: 64, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1080, file: !14, line: 2081, baseType: !1143, size: 64, offset: 1280)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!393, !586, !109, !361, !408, !596}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1080, file: !14, line: 2082, baseType: !1147, size: 64, offset: 1344)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!393, !586, !109, !220, !408, !596}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1080, file: !14, line: 2083, baseType: !1151, size: 64, offset: 1408)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!1154, !440}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1182, !1183, !1184}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1156, file: !19, line: 297, baseType: !940, size: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1156, file: !19, line: 298, baseType: !188, size: 128, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1156, file: !19, line: 299, baseType: !188, size: 128, offset: 256)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1156, file: !19, line: 300, baseType: !188, size: 128, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1156, file: !19, line: 301, baseType: !696, size: 256, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1156, file: !19, line: 302, baseType: !295, size: 32, offset: 768)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1156, file: !19, line: 303, baseType: !315, size: 32, offset: 800)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1156, file: !19, line: 304, baseType: !586, size: 64, offset: 832)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1156, file: !19, line: 305, baseType: !1167, size: 64, offset: 896)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1168)
!1168 = !{!1169, !1181}
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !19, line: 69, baseType: !1170, size: 32)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1167, file: !19, line: 69, size: 32, elements: !1171)
!1171 = !{!1172, !1173, !1174}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1170, file: !19, line: 70, baseType: !446, size: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1170, file: !19, line: 71, baseType: !455, size: 32)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1170, file: !19, line: 72, baseType: !1175, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1176, line: 24, baseType: !1177)
!1176 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1176, line: 22, size: 32, elements: !1178)
!1178 = !{!1179}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1177, file: !1176, line: 23, baseType: !1180, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1176, line: 20, baseType: !452)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1167, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1156, file: !19, line: 306, baseType: !596, size: 64, offset: 960)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1156, file: !19, line: 307, baseType: !223, size: 64, offset: 1024)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1156, file: !19, line: 308, baseType: !1185, size: 576, offset: 1088)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1186)
!1186 = !{!1187, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1198}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1185, file: !19, line: 206, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !598)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1185, file: !19, line: 207, baseType: !1188, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1185, file: !19, line: 208, baseType: !1188, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1185, file: !19, line: 209, baseType: !1188, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1185, file: !19, line: 210, baseType: !1188, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1185, file: !19, line: 211, baseType: !1188, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1185, file: !19, line: 212, baseType: !1188, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1185, file: !19, line: 213, baseType: !1196, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1197, line: 8, baseType: !707)
!1197 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1185, file: !19, line: 214, baseType: !1196, size: 64, offset: 512)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1080, file: !14, line: 2085, baseType: !1200, size: 64, offset: 1472)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!397, !586, !1203}
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1205, line: 15, size: 256, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1206 = !{!1207, !1209, !1210, !1211, !1212}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1204, file: !1205, line: 16, baseType: !1208, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !189, line: 154, baseType: !7)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1204, file: !1205, line: 19, baseType: !109, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1204, file: !1205, line: 26, baseType: !223, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1204, file: !1205, line: 33, baseType: !223, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1204, file: !1205, line: 36, baseType: !1213, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1080, file: !14, line: 2087, baseType: !1200, size: 64, offset: 1536)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1080, file: !14, line: 2089, baseType: !621, size: 64, offset: 1600)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !587, file: !14, line: 1198, baseType: !1218, size: 64, offset: 448)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1220)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1221)
!1221 = !{!1222, !1226, !1230, !1234, !1235, !1236, !1237, !1238, !1243, !1248, !1252}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1220, file: !19, line: 325, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DISubroutineType(types: !1225)
!1225 = !{!109, !1155}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1220, file: !19, line: 326, baseType: !1227, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1155, !586, !109}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1220, file: !19, line: 327, baseType: !1231, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !1155}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1220, file: !19, line: 328, baseType: !1223, size: 64, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1220, file: !19, line: 329, baseType: !1223, size: 64, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1220, file: !19, line: 330, baseType: !1223, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1220, file: !19, line: 331, baseType: !1108, size: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1220, file: !19, line: 334, baseType: !1239, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!1242, !440}
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1220, file: !19, line: 335, baseType: !1244, size: 64, offset: 512)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!109, !440, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1220, file: !19, line: 337, baseType: !1249, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!109, !440, !1242}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1220, file: !19, line: 339, baseType: !1253, size: 64, offset: 640)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!109, !586, !1256}
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !587, file: !14, line: 1199, baseType: !1258, size: 64, offset: 512)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1260)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1261)
!1261 = !{!1262, !1273, !1274, !1278, !1279, !1280, !1295, !1318, !1322, !1323, !1346}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1260, file: !19, line: 431, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!109, !586, !109, !109, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1269, line: 8, size: 128, elements: !1270)
!1269 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1268, file: !1269, line: 9, baseType: !580, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1268, file: !1269, line: 10, baseType: !475, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1260, file: !19, line: 432, baseType: !1108, size: 64, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1260, file: !19, line: 433, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!109, !586, !7}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1260, file: !19, line: 434, baseType: !1275, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1260, file: !19, line: 435, baseType: !1108, size: 64, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1260, file: !19, line: 436, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!109, !586, !109, !1284}
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1285, file: !19, line: 418, baseType: !109, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1285, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1285, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1285, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1285, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1285, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1285, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1285, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1260, file: !19, line: 437, baseType: !1296, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!109, !586, !1167, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1301)
!1301 = !{!1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1300, file: !19, line: 346, baseType: !109, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1300, file: !19, line: 347, baseType: !213, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1300, file: !19, line: 348, baseType: !213, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1300, file: !19, line: 349, baseType: !213, size: 64, offset: 192)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1300, file: !19, line: 350, baseType: !213, size: 64, offset: 256)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1300, file: !19, line: 351, baseType: !213, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1300, file: !19, line: 352, baseType: !213, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1300, file: !19, line: 353, baseType: !706, size: 64, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1300, file: !19, line: 355, baseType: !706, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1300, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1300, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1300, file: !19, line: 358, baseType: !213, size: 64, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1300, file: !19, line: 359, baseType: !213, size: 64, offset: 704)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1300, file: !19, line: 360, baseType: !213, size: 64, offset: 768)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1300, file: !19, line: 361, baseType: !706, size: 64, offset: 832)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1300, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1260, file: !19, line: 438, baseType: !1319, size: 64, offset: 448)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!109, !586, !1256, !1299}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1260, file: !19, line: 440, baseType: !1296, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1260, file: !19, line: 441, baseType: !1324, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!109, !586, !1327}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1329)
!1329 = !{!1330, !1331}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1328, file: !19, line: 412, baseType: !7, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1328, file: !19, line: 413, baseType: !1332, size: 1344, offset: 64)
!1332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1333, size: 1344, elements: !362)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1345}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1333, file: !19, line: 398, baseType: !7, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1333, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1333, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1333, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1333, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1333, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1333, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1333, file: !19, line: 406, baseType: !217, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1333, file: !19, line: 407, baseType: !1344, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !189, line: 132, baseType: !213)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1333, file: !19, line: 408, baseType: !1344, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1260, file: !19, line: 442, baseType: !1275, size: 64, offset: 640)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !587, file: !14, line: 1200, baseType: !1348, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1350)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !587, file: !14, line: 1201, baseType: !223, size: 64, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !587, file: !14, line: 1202, baseType: !223, size: 64, offset: 704)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !587, file: !14, line: 1203, baseType: !223, size: 64, offset: 768)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !587, file: !14, line: 1204, baseType: !475, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !587, file: !14, line: 1205, baseType: !1356, size: 320, offset: 896)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1357, line: 48, size: 320, elements: !1358)
!1357 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1358 = !{!1359, !1360, !1361, !1362, !1363}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1356, file: !1357, line: 49, baseType: !700, size: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1356, file: !1357, line: 55, baseType: !700, size: 64, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1356, file: !1357, line: 57, baseType: !710, size: 32, offset: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1356, file: !1357, line: 59, baseType: !654, size: 32, offset: 160)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1356, file: !1357, line: 60, baseType: !188, size: 128, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !587, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !587, file: !14, line: 1207, baseType: !315, size: 32, offset: 1248)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !587, file: !14, line: 1209, baseType: !147, size: 64, offset: 1280)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !587, file: !14, line: 1211, baseType: !1368, size: 64, offset: 1344)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!1371 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !587, file: !14, line: 1223, baseType: !1373, size: 64, offset: 1408)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !492, line: 34, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1373, file: !492, line: 35, baseType: !495, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !587, file: !14, line: 1224, baseType: !188, size: 128, offset: 1472)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !587, file: !14, line: 1225, baseType: !1378, size: 64, offset: 1600)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !587, file: !14, line: 1226, baseType: !1381, size: 64, offset: 1664)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !587, file: !14, line: 1227, baseType: !1384, size: 64, offset: 1728)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !587, file: !14, line: 1228, baseType: !1387, size: 64, offset: 1792)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !587, file: !14, line: 1229, baseType: !940, size: 128, offset: 1856)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !587, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !587, file: !14, line: 1231, baseType: !1392, size: 2496, offset: 2048)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1393)
!1393 = !{!1394, !1395, !1396, !1398, !1430}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1392, file: !19, line: 522, baseType: !7, size: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1392, file: !19, line: 523, baseType: !1356, size: 320, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1392, file: !19, line: 524, baseType: !1397, size: 192, offset: 384)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 192, elements: !362)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1392, file: !19, line: 525, baseType: !1399, size: 1728, offset: 576)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 1728, elements: !362)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1401)
!1401 = !{!1402, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1400, file: !19, line: 223, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1405)
!1405 = !{!1406, !1407, !1420, !1421}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1404, file: !19, line: 446, baseType: !109, size: 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1404, file: !19, line: 447, baseType: !1408, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1410)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1411)
!1411 = !{!1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1410, file: !19, line: 313, baseType: !1108, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1410, file: !19, line: 314, baseType: !1108, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1410, file: !19, line: 315, baseType: !1108, size: 64, offset: 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1410, file: !19, line: 316, baseType: !1108, size: 64, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1410, file: !19, line: 317, baseType: !1223, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1410, file: !19, line: 318, baseType: !1223, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1410, file: !19, line: 319, baseType: !1223, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1410, file: !19, line: 320, baseType: !1253, size: 64, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1404, file: !19, line: 448, baseType: !625, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1404, file: !19, line: 449, baseType: !1403, size: 64, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1400, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1400, file: !19, line: 226, baseType: !188, size: 128, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1400, file: !19, line: 227, baseType: !223, size: 64, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1400, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1400, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1400, file: !19, line: 230, baseType: !1188, size: 64, offset: 384)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1400, file: !19, line: 231, baseType: !1188, size: 64, offset: 448)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1400, file: !19, line: 232, baseType: !147, size: 64, offset: 512)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1392, file: !19, line: 526, baseType: !1431, size: 192, offset: 2304)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1408, size: 192, elements: !362)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !587, file: !14, line: 1233, baseType: !1433, size: 2368, offset: 4544)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1434)
!1434 = !{!1435, !1436, !1437}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1433, file: !14, line: 1185, baseType: !274, size: 16)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1433, file: !14, line: 1186, baseType: !274, size: 16, offset: 16)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1433, file: !14, line: 1187, baseType: !1438, size: 2304, offset: 64)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 2304, elements: !362)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1440, line: 12, size: 768, elements: !1441)
!1440 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1441 = !{!1442, !1456, !1457, !3540, !3541}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1439, file: !1440, line: 13, baseType: !1443, size: 384)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1444, line: 17, size: 384, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1445 = !{!1446, !1447, !1448, !1455}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1443, file: !1444, line: 18, baseType: !109, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1443, file: !1444, line: 19, baseType: !109, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1443, file: !1444, line: 20, baseType: !1449, size: 192, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1450, line: 41, baseType: !1451)
!1450 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1450, line: 37, size: 192, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1451, file: !1450, line: 38, baseType: !295, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1451, file: !1450, line: 39, baseType: !188, size: 128, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1443, file: !1444, line: 22, baseType: !916, size: 128, align: 64, offset: 256)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1439, file: !1440, line: 14, baseType: !768, size: 64, offset: 384)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1439, file: !1440, line: 15, baseType: !1458, size: 64, offset: 448)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1459, line: 16, size: 64, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1458, file: !1459, line: 17, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1138, line: 746, size: 58368, elements: !1464)
!1464 = !{!1465, !1473, !1474, !1475, !1481, !1482, !1483, !1484, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1555, !1566, !1661, !1665, !1668, !1699, !1700, !1701, !1702, !1713, !1715, !1716, !1717, !1718, !1719, !1720, !1731, !1732, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1749, !1750, !1757, !1758, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2716, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2764, !2770, !2771, !2772, !2773, !2774, !2778, !2781, !2788, !2793, !2796, !2799, !2802, !2805, !2943, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2981, !2982, !2983, !2992, !3000, !3001, !3002, !3003, !3004, !3009, !3010, !3011, !3014, !3015, !3018, !3021, !3024, !3032, !3035, !3036, !3122, !3123, !3124, !3125, !3126, !3132, !3133, !3134, !3135, !3138, !3139, !3142, !3145, !3146, !3149, !3150, !3151, !3154, !3155, !3156, !3157, !3158, !3159, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3191, !3192, !3198, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3210, !3282, !3284, !3285, !3286, !3287, !3288, !3289, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3317, !3318, !3319}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1463, file: !1138, line: 752, baseType: !1466, size: 192)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1467, line: 56, size: 192, elements: !1468)
!1467 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1468 = !{!1469, !1470, !1471, !1472}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1466, file: !1467, line: 57, baseType: !223, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1466, file: !1467, line: 58, baseType: !223, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1466, file: !1467, line: 59, baseType: !253, size: 32, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1466, file: !1467, line: 61, baseType: !253, size: 32, offset: 160)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1463, file: !1138, line: 754, baseType: !7, size: 32, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1463, file: !1138, line: 767, baseType: !147, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1463, file: !1138, line: 768, baseType: !1476, size: 32, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1477, line: 113, baseType: !1478)
!1477 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1477, line: 111, size: 32, elements: !1479)
!1479 = !{!1480}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1478, file: !1477, line: 112, baseType: !315, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !1138, line: 770, baseType: !7, size: 32, offset: 352)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1463, file: !1138, line: 771, baseType: !7, size: 32, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1463, file: !1138, line: 774, baseType: !109, size: 32, offset: 416)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1463, file: !1138, line: 775, baseType: !1485, size: 128, offset: 448)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1486, line: 58, size: 128, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1487 = !{!1488, !1494, !1499, !1500}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1485, file: !1486, line: 59, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1490, line: 60, size: 64, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1491 = !{!1492}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1489, file: !1490, line: 61, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1485, file: !1486, line: 60, baseType: !1495, size: 32, offset: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1485, file: !1486, line: 60, size: 32, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1495, file: !1486, line: 61, baseType: !7, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1495, file: !1486, line: 62, baseType: !315, size: 32)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1485, file: !1486, line: 65, baseType: !330, size: 16, offset: 96)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1485, file: !1486, line: 65, baseType: !330, size: 16, offset: 112)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1463, file: !1138, line: 776, baseType: !7, size: 32, offset: 576)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1463, file: !1138, line: 777, baseType: !223, size: 64, offset: 640)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1463, file: !1138, line: 778, baseType: !1462, size: 64, offset: 704)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1463, file: !1138, line: 787, baseType: !109, size: 32, offset: 768)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1463, file: !1138, line: 788, baseType: !109, size: 32, offset: 800)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1463, file: !1138, line: 790, baseType: !109, size: 32, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1463, file: !1138, line: 792, baseType: !109, size: 32, offset: 864)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1463, file: !1138, line: 793, baseType: !109, size: 32, offset: 896)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1463, file: !1138, line: 794, baseType: !109, size: 32, offset: 928)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1463, file: !1138, line: 795, baseType: !7, size: 32, offset: 960)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1463, file: !1138, line: 797, baseType: !1512, size: 2048, offset: 1024)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1138, line: 551, size: 2048, elements: !1513)
!1513 = !{!1514, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1534, !1537, !1538, !1539}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1512, file: !1138, line: 553, baseType: !1515, size: 128)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1138, line: 411, size: 128, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1515, file: !1138, line: 412, baseType: !223, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1515, file: !1138, line: 413, baseType: !253, size: 32, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1512, file: !1138, line: 554, baseType: !808, size: 192, align: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1512, file: !1138, line: 555, baseType: !213, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1512, file: !1138, line: 556, baseType: !213, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1512, file: !1138, line: 558, baseType: !188, size: 128, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1512, file: !1138, line: 559, baseType: !7, size: 32, offset: 576)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1512, file: !1138, line: 561, baseType: !213, size: 64, offset: 640)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1512, file: !1138, line: 562, baseType: !213, size: 64, offset: 704)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1512, file: !1138, line: 563, baseType: !213, size: 64, offset: 768)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1512, file: !1138, line: 564, baseType: !213, size: 64, offset: 832)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1512, file: !1138, line: 565, baseType: !706, size: 64, offset: 896)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1512, file: !1138, line: 566, baseType: !213, size: 64, offset: 960)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1512, file: !1138, line: 568, baseType: !213, size: 64, offset: 1024)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1512, file: !1138, line: 571, baseType: !109, size: 32, offset: 1088)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1512, file: !1138, line: 572, baseType: !1533, size: 64, offset: 1152)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1512, file: !1138, line: 574, baseType: !1535, size: 64, offset: 1216)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1138, line: 49, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1512, file: !1138, line: 576, baseType: !1535, size: 64, offset: 1280)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1512, file: !1138, line: 578, baseType: !223, size: 64, offset: 1344)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1512, file: !1138, line: 588, baseType: !1540, size: 512, align: 512, offset: 1536)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1138, line: 497, size: 512, align: 512, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1540, file: !1138, line: 498, baseType: !213, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1540, file: !1138, line: 499, baseType: !213, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1540, file: !1138, line: 500, baseType: !213, size: 64, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1540, file: !1138, line: 501, baseType: !253, size: 32, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1540, file: !1138, line: 502, baseType: !253, size: 32, offset: 224)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1540, file: !1138, line: 503, baseType: !223, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1540, file: !1138, line: 504, baseType: !223, size: 64, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1540, file: !1138, line: 505, baseType: !223, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1540, file: !1138, line: 506, baseType: !1551, size: 64, align: 64, offset: 448)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1138, line: 445, size: 64, align: 64, elements: !1552)
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1551, file: !1138, line: 446, baseType: !7, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1551, file: !1138, line: 447, baseType: !7, size: 32, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1463, file: !1138, line: 798, baseType: !1556, size: 384, offset: 3072)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1138, line: 592, size: 384, elements: !1557)
!1557 = !{!1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1556, file: !1138, line: 593, baseType: !188, size: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1556, file: !1138, line: 594, baseType: !223, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1556, file: !1138, line: 595, baseType: !223, size: 64, offset: 192)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1556, file: !1138, line: 596, baseType: !7, size: 32, offset: 256)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1556, file: !1138, line: 597, baseType: !274, size: 16, offset: 288)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1556, file: !1138, line: 598, baseType: !274, size: 16, offset: 304)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1556, file: !1138, line: 600, baseType: !1565, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1463, file: !1138, line: 799, baseType: !1567, size: 1792, offset: 3456)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1138, line: 610, size: 1792, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1658, !1659}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1567, file: !1138, line: 611, baseType: !808, size: 192, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1567, file: !1138, line: 618, baseType: !213, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1567, file: !1138, line: 619, baseType: !213, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1567, file: !1138, line: 620, baseType: !213, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1567, file: !1138, line: 621, baseType: !213, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1567, file: !1138, line: 622, baseType: !213, size: 64, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1567, file: !1138, line: 629, baseType: !706, size: 64, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1567, file: !1138, line: 630, baseType: !213, size: 64, offset: 576)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1567, file: !1138, line: 631, baseType: !7, size: 32, offset: 640)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1567, file: !1138, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1567, file: !1138, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1567, file: !1138, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1567, file: !1138, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1567, file: !1138, line: 662, baseType: !1583, size: 512, offset: 704)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1584)
!1584 = !{!1585, !1593, !1594, !1599, !1654, !1655, !1656, !1657}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1583, file: !25, line: 119, baseType: !1586, size: 256)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1587, line: 9, size: 256, elements: !1588)
!1587 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1586, file: !1587, line: 10, baseType: !808, size: 192, align: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1586, file: !1587, line: 11, baseType: !1591, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1592, line: 29, baseType: !706)
!1592 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1583, file: !25, line: 120, baseType: !1591, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1583, file: !25, line: 121, baseType: !1595, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!24, !1598}
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1583, file: !25, line: 122, baseType: !1600, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1602)
!1602 = !{!1603, !1628, !1629, !1632, !1637, !1638, !1649, !1653}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1601, file: !25, line: 160, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1605, file: !25, line: 216, baseType: !654, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1605, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1605, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1605, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1605, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1605, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1605, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1605, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1605, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1605, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1605, file: !25, line: 227, baseType: !274, size: 16, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1605, file: !25, line: 228, baseType: !274, size: 16, offset: 208)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1605, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1605, file: !25, line: 235, baseType: !1591, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1605, file: !25, line: 236, baseType: !1598, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1605, file: !25, line: 237, baseType: !1591, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1605, file: !25, line: 238, baseType: !1598, size: 64, offset: 448)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1605, file: !25, line: 239, baseType: !1625, size: 4096, align: 512, offset: 512)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1601, size: 4096, align: 512, elements: !1626)
!1626 = !{!1627}
!1627 = !DISubrange(count: 8)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1601, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1601, file: !25, line: 162, baseType: !1630, size: 32, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !189, line: 32, baseType: !1631)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !395, line: 96, baseType: !109)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1601, file: !25, line: 163, baseType: !1633, size: 32, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !482, line: 274, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !482, line: 274, size: 32, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1634, file: !482, line: 274, baseType: !486, size: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1601, file: !25, line: 164, baseType: !1598, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1601, file: !25, line: 165, baseType: !1639, size: 128, offset: 256)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1587, line: 14, size: 128, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1639, file: !1587, line: 15, baseType: !1642, size: 128)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !809, line: 26, size: 128, elements: !1643)
!1643 = !{!1644, !1648}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1642, file: !809, line: 27, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !809, line: 12, size: 64, elements: !1646)
!1646 = !{!1647}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1645, file: !809, line: 13, baseType: !813, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1642, file: !809, line: 28, baseType: !813, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1601, file: !25, line: 166, baseType: !1650, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1591}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1601, file: !25, line: 167, baseType: !1591, size: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1583, file: !25, line: 123, baseType: !323, size: 8, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1583, file: !25, line: 124, baseType: !323, size: 8, offset: 456)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1583, file: !25, line: 125, baseType: !323, size: 8, offset: 464)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1583, file: !25, line: 126, baseType: !323, size: 8, offset: 472)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1567, file: !1138, line: 671, baseType: !1583, size: 512, offset: 1216)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1567, file: !1138, line: 679, baseType: !1660, size: 64, offset: 1728)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1463, file: !1138, line: 800, baseType: !1662, size: 64, offset: 5248)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1138, line: 800, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1463, file: !1138, line: 809, baseType: !1666, size: 64, offset: 5312)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1138, line: 70, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1463, file: !1138, line: 825, baseType: !1669, size: 2048, align: 512, offset: 5632)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1138, line: 509, size: 2048, align: 512, elements: !1670)
!1670 = !{!1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1669, file: !1138, line: 511, baseType: !213, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1669, file: !1138, line: 512, baseType: !213, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1669, file: !1138, line: 513, baseType: !213, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1669, file: !1138, line: 514, baseType: !213, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1669, file: !1138, line: 515, baseType: !213, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1669, file: !1138, line: 516, baseType: !213, size: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1669, file: !1138, line: 518, baseType: !213, size: 64, offset: 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1669, file: !1138, line: 519, baseType: !213, size: 64, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1669, file: !1138, line: 520, baseType: !706, size: 64, offset: 512)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1669, file: !1138, line: 522, baseType: !213, size: 64, offset: 576)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1669, file: !1138, line: 523, baseType: !213, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1669, file: !1138, line: 524, baseType: !706, size: 64, offset: 704)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1669, file: !1138, line: 526, baseType: !706, size: 64, offset: 768)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1669, file: !1138, line: 527, baseType: !213, size: 64, offset: 832)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1669, file: !1138, line: 529, baseType: !213, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1669, file: !1138, line: 530, baseType: !213, size: 64, offset: 960)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1669, file: !1138, line: 531, baseType: !213, size: 64, offset: 1024)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1669, file: !1138, line: 532, baseType: !213, size: 64, offset: 1088)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1669, file: !1138, line: 533, baseType: !213, size: 64, offset: 1152)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1669, file: !1138, line: 535, baseType: !213, size: 64, offset: 1216)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1669, file: !1138, line: 536, baseType: !213, size: 64, offset: 1280)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1669, file: !1138, line: 537, baseType: !213, size: 64, offset: 1344)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1669, file: !1138, line: 538, baseType: !213, size: 64, offset: 1408)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1669, file: !1138, line: 539, baseType: !213, size: 64, offset: 1472)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1669, file: !1138, line: 540, baseType: !213, size: 64, offset: 1536)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1669, file: !1138, line: 541, baseType: !213, size: 64, offset: 1600)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1669, file: !1138, line: 542, baseType: !213, size: 64, offset: 1664)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1669, file: !1138, line: 543, baseType: !213, size: 64, offset: 1728)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1463, file: !1138, line: 833, baseType: !7, size: 32, offset: 7680)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1463, file: !1138, line: 836, baseType: !7, size: 32, offset: 7712)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1463, file: !1138, line: 837, baseType: !109, size: 32, offset: 7744)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1463, file: !1138, line: 838, baseType: !1703, size: 64, offset: 7808)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1706, line: 19, baseType: !1707)
!1706 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1706, line: 19, size: 64, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1707, file: !1706, line: 19, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 64, elements: !1711)
!1711 = !{!1712}
!1712 = !DISubrange(count: 1)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1463, file: !1138, line: 839, baseType: !1714, size: 64, offset: 7872)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1463, file: !1138, line: 840, baseType: !1705, size: 64, offset: 7936)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1463, file: !1138, line: 841, baseType: !147, size: 64, offset: 8000)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1463, file: !1138, line: 843, baseType: !274, size: 16, offset: 8064)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1463, file: !1138, line: 845, baseType: !274, size: 16, offset: 8080)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1463, file: !1138, line: 848, baseType: !109, size: 32, offset: 8096)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1463, file: !1138, line: 849, baseType: !1721, size: 32, offset: 8128)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1138, line: 718, size: 32, elements: !1722)
!1722 = !{!1723, !1730}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1721, file: !1138, line: 724, baseType: !1724, size: 32)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !1138, line: 719, size: 32, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1724, file: !1138, line: 720, baseType: !323, size: 8)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1724, file: !1138, line: 721, baseType: !323, size: 8, offset: 8)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1724, file: !1138, line: 722, baseType: !323, size: 8, offset: 16)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1724, file: !1138, line: 723, baseType: !323, size: 8, offset: 24)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1721, file: !1138, line: 725, baseType: !253, size: 32)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1463, file: !1138, line: 850, baseType: !188, size: 128, offset: 8192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1463, file: !1138, line: 851, baseType: !1733, size: 64, offset: 8320)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1138, line: 60, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1463, file: !1138, line: 855, baseType: !223, size: 64, offset: 8384)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1463, file: !1138, line: 856, baseType: !323, size: 8, offset: 8448)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1463, file: !1138, line: 857, baseType: !323, size: 8, offset: 8456)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1463, file: !1138, line: 858, baseType: !109, size: 32, offset: 8480)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1463, file: !1138, line: 859, baseType: !188, size: 128, offset: 8512)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1463, file: !1138, line: 860, baseType: !109, size: 32, offset: 8640)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1463, file: !1138, line: 861, baseType: !188, size: 128, offset: 8704)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1463, file: !1138, line: 873, baseType: !1743, size: 256, offset: 8832)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1138, line: 376, size: 256, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1743, file: !1138, line: 381, baseType: !223, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1743, file: !1138, line: 384, baseType: !217, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1743, file: !1138, line: 389, baseType: !217, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1743, file: !1138, line: 392, baseType: !217, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1463, file: !1138, line: 875, baseType: !188, size: 128, offset: 9088)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1463, file: !1138, line: 877, baseType: !1751, size: 320, offset: 9216)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1752, line: 86, size: 320, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1751, file: !1752, line: 87, baseType: !109, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1751, file: !1752, line: 88, baseType: !188, size: 128, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1751, file: !1752, line: 89, baseType: !188, size: 128, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1463, file: !1138, line: 878, baseType: !808, size: 192, align: 64, offset: 9536)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1463, file: !1138, line: 881, baseType: !1759, size: 64, offset: 9728)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1761)
!1761 = !{!1762, !2636}
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !38, line: 734, baseType: !1763, size: 10240)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1760, file: !38, line: 734, size: 10240, elements: !1764)
!1764 = !{!1765, !1769, !1782, !2513, !2514, !2515, !2516, !2517, !2518, !2525, !2526, !2527, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2566, !2568, !2571, !2616, !2617, !2618, !2621, !2622, !2623, !2626, !2627, !2628, !2634, !2635}
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !38, line: 739, baseType: !1766, size: 512, align: 512)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1763, file: !38, line: 739, size: 512, align: 512, elements: !1767)
!1767 = !{!1768}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1766, file: !38, line: 747, baseType: !315, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1763, file: !38, line: 750, baseType: !1770, size: 128, offset: 512)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1771, line: 218, size: 128, elements: !1772)
!1771 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1772 = !{!1773, !1780, !1781}
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1770, file: !1771, line: 219, baseType: !1774, size: 32)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1770, file: !1771, line: 219, size: 32, elements: !1775)
!1775 = !{!1776, !1777}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1774, file: !1771, line: 220, baseType: !295, size: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1774, file: !1771, line: 221, baseType: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1771, line: 197, baseType: !1779)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1771, line: 197, elements: !983)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1770, file: !1771, line: 223, baseType: !7, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1770, file: !1771, line: 224, baseType: !147, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1763, file: !38, line: 752, baseType: !1783, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!223, !1786, !223, !223, !223, !223}
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1788)
!1788 = !{!1789, !1795, !1796, !1798, !1799, !1800, !1801, !1802, !1852, !2042, !2051, !2052, !2053, !2503, !2504, !2505, !2506, !2508, !2509, !2512}
!1789 = !DIDerivedType(tag: DW_TAG_member, scope: !1787, file: !14, line: 995, baseType: !1790, size: 128)
!1790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1787, file: !14, line: 995, size: 128, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1790, file: !14, line: 996, baseType: !1489, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1790, file: !14, line: 997, baseType: !916, size: 128, align: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1790, file: !14, line: 998, baseType: !7, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1787, file: !14, line: 1005, baseType: !295, size: 32, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1787, file: !14, line: 1006, baseType: !1797, size: 32, offset: 160)
!1797 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !189, line: 156, baseType: !7)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1787, file: !14, line: 1007, baseType: !700, size: 64, offset: 192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1787, file: !14, line: 1008, baseType: !696, size: 256, offset: 256)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1787, file: !14, line: 1009, baseType: !596, size: 64, offset: 512)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1787, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1787, file: !14, line: 1011, baseType: !1803, size: 256, offset: 640)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1804)
!1804 = !{!1805, !1826, !1848, !1849, !1850, !1851}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1803, file: !14, line: 949, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1807, line: 34, baseType: !1808)
!1807 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1807, line: 25, size: 64, elements: !1809)
!1809 = !{!1810}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1808, file: !1807, line: 26, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1812, line: 27, baseType: !1813)
!1812 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1812, line: 13, size: 64, elements: !1814)
!1814 = !{!1815, !1825}
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !1812, line: 14, baseType: !1816, size: 32)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !1812, line: 14, size: 32, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1816, file: !1812, line: 15, baseType: !315, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !1812, line: 16, baseType: !1820, size: 32)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1816, file: !1812, line: 16, size: 32, elements: !1821)
!1821 = !{!1822, !1823}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1820, file: !1812, line: 18, baseType: !323, size: 8)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1820, file: !1812, line: 19, baseType: !1824, size: 24, offset: 8)
!1824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 24, elements: !362)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1813, file: !1812, line: 26, baseType: !307, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1803, file: !14, line: 950, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1835, !1836, !1837, !1838}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1828, file: !30, line: 61, baseType: !1476, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1828, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1828, file: !30, line: 63, baseType: !295, size: 32, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1828, file: !30, line: 65, baseType: !1834, size: 256, offset: 128)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1064, size: 256, elements: !228)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1828, file: !30, line: 66, baseType: !1064, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1828, file: !30, line: 68, baseType: !1449, size: 192, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1828, file: !30, line: 69, baseType: !916, size: 128, align: 64, offset: 640)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1828, file: !30, line: 70, baseType: !1839, offset: 768)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1840, elements: !1846)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1841)
!1841 = !{!1842, !1843}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1840, file: !30, line: 55, baseType: !109, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1840, file: !30, line: 56, baseType: !1844, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1846 = !{!1847}
!1847 = !DISubrange(count: -1)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1803, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1803, file: !14, line: 952, baseType: !446, size: 32, offset: 160)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1803, file: !14, line: 952, baseType: !446, size: 32, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1803, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1787, file: !14, line: 1012, baseType: !1853, size: 64, offset: 896)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1855)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1856, line: 110, size: 1472, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1874, !1875, !1876, !1877, !1878, !1879, !1987, !1988, !1989, !1990, !1991, !2022, !2025, !2029, !2037}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1855, file: !1856, line: 111, baseType: !700, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1855, file: !1856, line: 112, baseType: !446, size: 32, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1855, file: !1856, line: 113, baseType: !455, size: 32, offset: 96)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1855, file: !1856, line: 114, baseType: !446, size: 32, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1855, file: !1856, line: 115, baseType: !455, size: 32, offset: 160)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1855, file: !1856, line: 116, baseType: !446, size: 32, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1855, file: !1856, line: 117, baseType: !455, size: 32, offset: 224)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1855, file: !1856, line: 118, baseType: !446, size: 32, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1855, file: !1856, line: 119, baseType: !455, size: 32, offset: 288)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1855, file: !1856, line: 120, baseType: !7, size: 32, offset: 320)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1855, file: !1856, line: 121, baseType: !1869, size: 64, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1870, line: 24, baseType: !1871)
!1870 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1870, line: 24, size: 64, elements: !1872)
!1872 = !{!1873}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1871, file: !1870, line: 24, baseType: !213, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1855, file: !1856, line: 122, baseType: !1869, size: 64, offset: 448)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1855, file: !1856, line: 123, baseType: !1869, size: 64, offset: 512)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1855, file: !1856, line: 124, baseType: !1869, size: 64, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1855, file: !1856, line: 125, baseType: !1869, size: 64, offset: 640)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1855, file: !1856, line: 127, baseType: !265, size: 8, offset: 704)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1855, file: !1856, line: 129, baseType: !1880, size: 64, offset: 768)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1882, line: 195, size: 1728, elements: !1883)
!1882 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1883 = !{!1884, !1885, !1888, !1893, !1894, !1897, !1898, !1903, !1904, !1905, !1906, !1909, !1910, !1911, !1912, !1913, !1951, !1972}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1881, file: !1882, line: 196, baseType: !1476, size: 32)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1881, file: !1882, line: 197, baseType: !1886, size: 32, offset: 32)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1882, line: 28, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !189, line: 104, baseType: !692)
!1888 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1882, line: 198, baseType: !1889, size: 192, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1882, line: 198, size: 192, elements: !1890)
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1889, file: !1882, line: 199, baseType: !188, size: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1889, file: !1882, line: 200, baseType: !808, size: 192, align: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1881, file: !1882, line: 205, baseType: !1356, size: 320, offset: 256)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1881, file: !1882, line: 206, baseType: !1895, size: 64, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1882, line: 206, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1881, file: !1882, line: 207, baseType: !147, size: 64, offset: 640)
!1898 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1882, line: 208, baseType: !1899, size: 64, offset: 704)
!1899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1882, line: 208, size: 64, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1899, file: !1882, line: 209, baseType: !1196, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1899, file: !1882, line: 210, baseType: !1196, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1881, file: !1882, line: 212, baseType: !1196, size: 64, offset: 768)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1881, file: !1882, line: 213, baseType: !446, size: 32, offset: 832)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1881, file: !1882, line: 214, baseType: !455, size: 32, offset: 864)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1881, file: !1882, line: 215, baseType: !1907, size: 32, offset: 896)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1882, line: 31, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !189, line: 110, baseType: !253)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1881, file: !1882, line: 216, baseType: !274, size: 16, offset: 928)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1881, file: !1882, line: 217, baseType: !274, size: 16, offset: 944)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1881, file: !1882, line: 221, baseType: !834, size: 16, offset: 960)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1881, file: !1882, line: 228, baseType: !223, size: 64, offset: 1024)
!1913 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1882, line: 245, baseType: !1914, size: 320, offset: 1088)
!1914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1882, line: 245, size: 320, elements: !1915)
!1915 = !{!1916, !1943}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1914, file: !1882, line: 246, baseType: !1917, size: 320)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1882, line: 114, size: 320, elements: !1918)
!1918 = !{!1919, !1920, !1932, !1935, !1942}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1917, file: !1882, line: 116, baseType: !223, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1882, line: 117, baseType: !1921, size: 64, offset: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1917, file: !1882, line: 117, size: 64, elements: !1922)
!1922 = !{!1923, !1931}
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1921, file: !1882, line: 118, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1921, file: !1882, line: 118, size: 64, elements: !1925)
!1925 = !{!1926, !1927}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1924, file: !1882, line: 120, baseType: !330, size: 16)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1924, file: !1882, line: 121, baseType: !1928, size: 48, offset: 16)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 48, elements: !1929)
!1929 = !{!1930}
!1930 = !DISubrange(count: 6)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1921, file: !1882, line: 127, baseType: !223, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1917, file: !1882, line: 129, baseType: !1933, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1882, line: 102, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1917, file: !1882, line: 130, baseType: !1936, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1882, line: 108, size: 192, elements: !1938)
!1938 = !{!1939, !1940, !1941}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1937, file: !1882, line: 109, baseType: !916, size: 128, align: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1937, file: !1882, line: 110, baseType: !1476, size: 32, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1937, file: !1882, line: 111, baseType: !776, size: 8, offset: 160)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1917, file: !1882, line: 131, baseType: !220, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !1882, line: 247, baseType: !1944, size: 320)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1914, file: !1882, line: 247, size: 320, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1949, !1950}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1944, file: !1882, line: 248, baseType: !223, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1944, file: !1882, line: 249, baseType: !223, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1944, file: !1882, line: 250, baseType: !1933, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1944, file: !1882, line: 251, baseType: !1936, size: 64, offset: 192)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1944, file: !1882, line: 252, baseType: !361, size: 64, offset: 256)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1882, line: 260, baseType: !1952, size: 256, offset: 1408)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1882, line: 260, size: 256, elements: !1953)
!1953 = !{!1954, !1960}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1952, file: !1882, line: 261, baseType: !1955, size: 256)
!1955 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1882, line: 134, size: 256, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1955, file: !1882, line: 135, baseType: !147, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1955, file: !1882, line: 136, baseType: !1959, size: 256)
!1959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !228)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1882, line: 262, baseType: !1961, size: 256)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1952, file: !1882, line: 262, size: 256, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1961, file: !1882, line: 264, baseType: !188, size: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1961, file: !1882, line: 265, baseType: !1965, size: 128, offset: 128)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1966, line: 22, size: 128, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1967 = !{!1968, !1971}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1965, file: !1966, line: 23, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1966, line: 23, flags: DIFlagFwdDecl)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1965, file: !1966, line: 24, baseType: !223, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1881, file: !1882, line: 280, baseType: !1973, size: 64, offset: 1664)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1882, line: 176, size: 192, elements: !1975)
!1975 = !{!1976, !1985, !1986}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1974, file: !1882, line: 177, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1882, line: 171, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!109, !1880, !1981, !1983, !1880}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1934)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1955)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1974, file: !1882, line: 178, baseType: !1880, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1974, file: !1882, line: 179, baseType: !1933, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1855, file: !1856, line: 130, baseType: !1880, size: 64, offset: 832)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1855, file: !1856, line: 131, baseType: !1880, size: 64, offset: 896)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1855, file: !1856, line: 132, baseType: !1880, size: 64, offset: 960)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1855, file: !1856, line: 135, baseType: !147, size: 64, offset: 1024)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1855, file: !1856, line: 137, baseType: !1992, size: 64, offset: 1088)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1994, line: 14, size: 1088, elements: !1995)
!1994 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1995 = !{!1996, !1997, !2006, !2007, !2008, !2009, !2010, !2011}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1993, file: !1994, line: 15, baseType: !1476, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1993, file: !1994, line: 17, baseType: !1998, size: 320, offset: 64)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1999, line: 22, size: 320, elements: !2000)
!1999 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2000 = !{!2001, !2002, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1998, file: !1999, line: 23, baseType: !654, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1998, file: !1999, line: 24, baseType: !706, size: 64, offset: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1998, file: !1999, line: 26, baseType: !188, size: 128, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1998, file: !1999, line: 28, baseType: !2005, size: 64, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1993, file: !1994, line: 19, baseType: !223, size: 64, offset: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1993, file: !1994, line: 20, baseType: !700, size: 64, offset: 448)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1993, file: !1994, line: 23, baseType: !940, size: 128, offset: 512)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1993, file: !1994, line: 24, baseType: !446, size: 32, offset: 640)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1993, file: !1994, line: 29, baseType: !700, size: 64, offset: 704)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1993, file: !1994, line: 36, baseType: !2012, size: 320, offset: 768)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2013, line: 15, size: 320, elements: !2014)
!2013 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020, !2021}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2012, file: !2013, line: 16, baseType: !654, size: 32)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2012, file: !2013, line: 18, baseType: !109, size: 32, offset: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2012, file: !2013, line: 19, baseType: !109, size: 32, offset: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2012, file: !2013, line: 20, baseType: !109, size: 32, offset: 96)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2012, file: !2013, line: 21, baseType: !109, size: 32, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2012, file: !2013, line: 22, baseType: !223, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2012, file: !2013, line: 23, baseType: !223, size: 64, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1855, file: !1856, line: 138, baseType: !2023, size: 64, offset: 1152)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1855, file: !1856, line: 139, baseType: !2026, size: 64, offset: 1216)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2028, line: 16, flags: DIFlagFwdDecl)
!2028 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1855, file: !1856, line: 140, baseType: !2030, size: 64, offset: 1280)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1856, line: 25, size: 64, elements: !2032)
!2032 = !{!2033, !2034, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2031, file: !1856, line: 26, baseType: !315, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2031, file: !1856, line: 27, baseType: !109, size: 32, offset: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2031, file: !1856, line: 28, baseType: !2036, offset: 64)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, elements: !1846)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !1856, line: 142, baseType: !2038, size: 128, offset: 1344)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !1856, line: 142, size: 128, elements: !2039)
!2039 = !{!2040, !2041}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2038, file: !1856, line: 143, baseType: !109, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2038, file: !1856, line: 144, baseType: !916, size: 128, align: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1787, file: !14, line: 1013, baseType: !2043, size: 256, offset: 960)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2048, !2049, !2050}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2043, file: !14, line: 971, baseType: !223, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2043, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2043, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2043, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2043, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2043, file: !14, line: 976, baseType: !596, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1787, file: !14, line: 1014, baseType: !1268, size: 128, offset: 1216)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1787, file: !14, line: 1015, baseType: !440, size: 64, offset: 1344)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1787, file: !14, line: 1016, baseType: !2054, size: 64, offset: 1408)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2057)
!2057 = !{!2058, !2059, !2063, !2068, !2072, !2101, !2102, !2108, !2121, !2129, !2133, !2134, !2425, !2426, !2430, !2435, !2436, !2440, !2444, !2450, !2451, !2455, !2456, !2462, !2466, !2470, !2476, !2480, !2484, !2488, !2492, !2493, !2499}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2056, file: !14, line: 1915, baseType: !625, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2056, file: !14, line: 1916, baseType: !2060, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!596, !1786, !596, !109}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2056, file: !14, line: 1917, baseType: !2064, size: 64, offset: 128)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DISubroutineType(types: !2066)
!2066 = !{!393, !1786, !361, !408, !2067}
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2056, file: !14, line: 1918, baseType: !2069, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!393, !1786, !220, !408, !2067}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2056, file: !14, line: 1919, baseType: !2073, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!393, !2076, !2098}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2078)
!2078 = !{!2079, !2080, !2081, !2085, !2086, !2087, !2088}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2077, file: !14, line: 374, baseType: !1786, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2077, file: !14, line: 375, baseType: !596, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2077, file: !14, line: 376, baseType: !2082, size: 64, offset: 128)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{null, !2076, !397}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2077, file: !14, line: 377, baseType: !147, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2077, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2077, file: !14, line: 379, baseType: !330, size: 16, offset: 288)
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !2077, file: !14, line: 380, baseType: !2089, size: 64, offset: 320)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2077, file: !14, line: 380, size: 64, elements: !2090)
!2090 = !{!2091, !2094}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2089, file: !14, line: 386, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2089, file: !14, line: 395, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!393, !147}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2100, line: 17, flags: DIFlagFwdDecl)
!2100 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2056, file: !14, line: 1920, baseType: !2073, size: 64, offset: 320)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2056, file: !14, line: 1921, baseType: !2103, size: 64, offset: 384)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!109, !2076, !2106, !7}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2056, file: !14, line: 1923, baseType: !2109, size: 64, offset: 448)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!109, !1786, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2114)
!2114 = !{!2115, !2120}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2113, file: !14, line: 1859, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2117)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!776, !2112, !220, !109, !596, !213, !7}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2113, file: !14, line: 1860, baseType: !596, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2056, file: !14, line: 1924, baseType: !2122, size: 64, offset: 512)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!2125, !1786, !2127}
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2126, line: 59, baseType: !7)
!2126 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !611, line: 31, flags: DIFlagFwdDecl)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2056, file: !14, line: 1925, baseType: !2130, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!397, !1786, !7, !223}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2056, file: !14, line: 1926, baseType: !2130, size: 64, offset: 640)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2056, file: !14, line: 1927, baseType: !2135, size: 64, offset: 704)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!109, !1786, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2140)
!2140 = !{!2141, !2150, !2151, !2159, !2166, !2167, !2172, !2173, !2178, !2179, !2182, !2418, !2419, !2420, !2421, !2422, !2423}
!2141 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !38, line: 628, baseType: !2142, size: 128)
!2142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2139, file: !38, line: 628, size: 128, elements: !2143)
!2143 = !{!2144, !2149}
!2144 = !DIDerivedType(tag: DW_TAG_member, scope: !2142, file: !38, line: 629, baseType: !2145, size: 128)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2142, file: !38, line: 629, size: 128, elements: !2146)
!2146 = !{!2147, !2148}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2145, file: !38, line: 631, baseType: !223, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2145, file: !38, line: 632, baseType: !223, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2142, file: !38, line: 635, baseType: !916, size: 128, align: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2139, file: !38, line: 639, baseType: !1759, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2139, file: !38, line: 640, baseType: !2152, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2153, line: 297, baseType: !2154)
!2153 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2153, line: 297, size: 64, elements: !2155)
!2155 = !{!2156}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2154, file: !2153, line: 297, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2158, line: 19, baseType: !223)
!2158 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2139, file: !38, line: 646, baseType: !2160, size: 64, offset: 256)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2139, file: !38, line: 646, size: 64, elements: !2161)
!2161 = !{!2162, !2165}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2160, file: !38, line: 647, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !223)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2160, file: !38, line: 648, baseType: !2164, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2139, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2139, file: !38, line: 667, baseType: !2168, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2170)
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2169, file: !38, line: 580, baseType: !1356, size: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2139, file: !38, line: 670, baseType: !776, size: 8, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2139, file: !38, line: 681, baseType: !2174, size: 256, offset: 512)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2139, file: !38, line: 678, size: 256, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2174, file: !38, line: 679, baseType: !808, size: 192, align: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2174, file: !38, line: 680, baseType: !223, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2139, file: !38, line: 689, baseType: !188, size: 128, offset: 768)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2139, file: !38, line: 691, baseType: !2180, size: 64, offset: 896)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2139, file: !38, line: 694, baseType: !2183, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2185)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2186, line: 563, size: 1024, elements: !2187)
!2186 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2187 = !{!2188, !2192, !2193, !2197, !2201, !2205, !2382, !2386, !2390, !2394, !2395, !2396, !2400, !2404, !2410, !2414}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2185, file: !2186, line: 564, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{null, !2138}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2185, file: !2186, line: 569, baseType: !2189, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2185, file: !2186, line: 571, baseType: !2194, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!109, !2138, !223}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2185, file: !2186, line: 572, baseType: !2198, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!109, !2138}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2185, file: !2186, line: 578, baseType: !2202, size: 64, offset: 256)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!109, !2138, !223, !223, !223}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2185, file: !2186, line: 580, baseType: !2206, size: 64, offset: 320)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!2209, !2210}
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2186, line: 512, size: 896, elements: !2212)
!2212 = !{!2213, !2221, !2222, !2229, !2236, !2246, !2375, !2376, !2378, !2380}
!2213 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !2186, line: 513, baseType: !2214, size: 320)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2211, file: !2186, line: 513, size: 320, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219, !2220}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2214, file: !2186, line: 514, baseType: !2138, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2214, file: !2186, line: 515, baseType: !1208, size: 32, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2214, file: !2186, line: 516, baseType: !223, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2214, file: !2186, line: 517, baseType: !223, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2214, file: !2186, line: 518, baseType: !223, size: 64, offset: 256)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2211, file: !2186, line: 520, baseType: !37, size: 32, offset: 320)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2211, file: !2186, line: 522, baseType: !2223, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2158, line: 22, baseType: !2225)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2158, line: 22, size: 64, elements: !2226)
!2226 = !{!2227}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2225, file: !2158, line: 22, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2158, line: 15, baseType: !223)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2211, file: !2186, line: 524, baseType: !2230, size: 64, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2153, line: 372, baseType: !2232)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2153, line: 372, size: 64, elements: !2233)
!2233 = !{!2234}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2232, file: !2153, line: 372, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2158, line: 16, baseType: !223)
!2236 = !DIDerivedType(tag: DW_TAG_member, scope: !2211, file: !2186, line: 527, baseType: !2237, size: 64, offset: 512)
!2237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2211, file: !2186, line: 527, size: 64, elements: !2238)
!2238 = !{!2239, !2245}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2237, file: !2186, line: 528, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2158, line: 21, baseType: !2241)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2158, line: 21, size: 64, elements: !2242)
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2241, file: !2158, line: 21, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2158, line: 14, baseType: !223)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2237, file: !2186, line: 529, baseType: !2224, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2211, file: !2186, line: 534, baseType: !2247, size: 64, offset: 576)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2249)
!2249 = !{!2250, !2251, !2369, !2374}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2248, file: !38, line: 75, baseType: !223, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2248, file: !38, line: 83, baseType: !2252, size: 320, offset: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2248, file: !38, line: 83, size: 320, elements: !2253)
!2253 = !{!2254, !2275, !2289, !2293, !2368}
!2254 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !38, line: 84, baseType: !2255, size: 320)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !38, line: 84, size: 320, elements: !2256)
!2256 = !{!2257, !2268, !2269, !2274}
!2257 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !38, line: 90, baseType: !2258, size: 128)
!2258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !38, line: 90, size: 128, elements: !2259)
!2259 = !{!2260, !2261, !2266, !2267}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2258, file: !38, line: 91, baseType: !188, size: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, scope: !2258, file: !38, line: 94, baseType: !2262, size: 128)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2258, file: !38, line: 94, size: 128, elements: !2263)
!2263 = !{!2264, !2265}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2262, file: !38, line: 96, baseType: !147, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2262, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2258, file: !38, line: 102, baseType: !188, size: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2258, file: !38, line: 103, baseType: !188, size: 128)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2255, file: !38, line: 106, baseType: !436, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, scope: !2255, file: !38, line: 107, baseType: !2270, size: 64, offset: 192)
!2270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2255, file: !38, line: 107, size: 64, elements: !2271)
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2270, file: !38, line: 108, baseType: !223, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2270, file: !38, line: 109, baseType: !223, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2255, file: !38, line: 117, baseType: !223, size: 64, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !38, line: 119, baseType: !2276, size: 320)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !38, line: 119, size: 320, elements: !2277)
!2277 = !{!2278, !2279, !2282, !2283, !2284}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2276, file: !38, line: 124, baseType: !223, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2276, file: !38, line: 125, baseType: !2280, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2276, file: !38, line: 126, baseType: !223, size: 64, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2276, file: !38, line: 127, baseType: !223, size: 64, offset: 192)
!2284 = !DIDerivedType(tag: DW_TAG_member, scope: !2276, file: !38, line: 128, baseType: !2285, size: 64, offset: 256)
!2285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2276, file: !38, line: 128, size: 64, elements: !2286)
!2286 = !{!2287, !2288}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2285, file: !38, line: 133, baseType: !223, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2285, file: !38, line: 138, baseType: !700, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !38, line: 141, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !38, line: 141, size: 64, elements: !2291)
!2291 = !{!2292}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2290, file: !38, line: 142, baseType: !223, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, scope: !2252, file: !38, line: 144, baseType: !2294, size: 128)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2252, file: !38, line: 144, size: 128, elements: !2295)
!2295 = !{!2296, !2367}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2294, file: !38, line: 146, baseType: !2297, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2299)
!2299 = !{!2300, !2310, !2331, !2332, !2333, !2334, !2335, !2349, !2350, !2351}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2298, file: !54, line: 127, baseType: !2301, size: 384)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2302)
!2302 = !{!2303, !2304, !2306, !2307, !2308, !2309}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2301, file: !54, line: 22, baseType: !223, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2301, file: !54, line: 23, baseType: !2305, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2301, file: !54, line: 24, baseType: !2305, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2301, file: !54, line: 25, baseType: !223, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2301, file: !54, line: 26, baseType: !223, size: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2301, file: !54, line: 27, baseType: !223, size: 64, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2298, file: !54, line: 128, baseType: !2311, size: 128, offset: 384)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2312, line: 105, size: 128, elements: !2313)
!2312 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2313 = !{!2314, !2315}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2311, file: !2312, line: 110, baseType: !223, size: 64)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2311, file: !2312, line: 118, baseType: !2316, size: 64, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2312, line: 95, size: 448, elements: !2318)
!2318 = !{!2319, !2320, !2326, !2327, !2328, !2329, !2330}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2317, file: !2312, line: 96, baseType: !700, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2317, file: !2312, line: 97, baseType: !2321, size: 64, offset: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2312, line: 60, baseType: !2323)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2317, file: !2312, line: 98, baseType: !2321, size: 64, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2317, file: !2312, line: 99, baseType: !776, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2317, file: !2312, line: 100, baseType: !776, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2317, file: !2312, line: 101, baseType: !916, size: 128, align: 64, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2317, file: !2312, line: 102, baseType: !2325, size: 64, offset: 384)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2298, file: !54, line: 129, baseType: !645, size: 256, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2298, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2298, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2298, file: !54, line: 132, baseType: !223, size: 64, offset: 832)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2298, file: !54, line: 133, baseType: !2336, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2338)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2339)
!2339 = !{!2340, !2344, !2345}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2338, file: !54, line: 83, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !2247}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2338, file: !54, line: 89, baseType: !2206, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2338, file: !54, line: 100, baseType: !2346, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!109, !2297, !223, !223, !109}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2298, file: !54, line: 134, baseType: !147, size: 64, offset: 960)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2298, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !2298, file: !54, line: 136, baseType: !2352, size: 128, offset: 1088)
!2352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2298, file: !54, line: 136, size: 128, elements: !2353)
!2353 = !{!2354, !2360}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2352, file: !54, line: 137, baseType: !2355, size: 128)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2356, line: 6, size: 128, elements: !2357)
!2356 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2357 = !{!2358, !2359}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2355, file: !2356, line: 7, baseType: !213, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2355, file: !2356, line: 8, baseType: !213, size: 64, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, scope: !2352, file: !54, line: 138, baseType: !2361)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2352, file: !54, line: 138, elements: !2362)
!2362 = !{!2363, !2365}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2361, file: !54, line: 138, baseType: !2364)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2361, file: !54, line: 138, elements: !983)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2361, file: !54, line: 138, baseType: !2366)
!2366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2355, elements: !1846)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2294, file: !38, line: 147, baseType: !147, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2252, file: !38, line: 161, baseType: !916, size: 128, align: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, scope: !2248, file: !38, line: 164, baseType: !2370, size: 32, offset: 384)
!2370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2248, file: !38, line: 164, size: 32, elements: !2371)
!2371 = !{!2372, !2373}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2370, file: !38, line: 169, baseType: !315, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2370, file: !38, line: 177, baseType: !7, size: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2248, file: !38, line: 181, baseType: !315, size: 32, offset: 416)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2211, file: !2186, line: 535, baseType: !2247, size: 64, offset: 640)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2211, file: !2186, line: 541, baseType: !2377, size: 64, offset: 704)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2211, file: !2186, line: 545, baseType: !2379, size: 64, offset: 768)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2211, file: !2186, line: 549, baseType: !2381, size: 64, offset: 832)
!2381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2153, line: 520, baseType: !2247)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2185, file: !2186, line: 581, baseType: !2383, size: 64, offset: 384)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!2209, !2210, !7}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2185, file: !2186, line: 582, baseType: !2387, size: 64, offset: 448)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2209, !2210, !223, !223}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2185, file: !2186, line: 584, baseType: !2391, size: 64, offset: 512)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!223, !2138}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2185, file: !2186, line: 588, baseType: !2206, size: 64, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2185, file: !2186, line: 591, baseType: !2206, size: 64, offset: 640)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2185, file: !2186, line: 597, baseType: !2397, size: 64, offset: 704)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!109, !2138, !223, !147, !109, !109}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2185, file: !2186, line: 603, baseType: !2401, size: 64, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!220, !2138}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2185, file: !2186, line: 613, baseType: !2405, size: 64, offset: 832)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!109, !2138, !2408}
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2185, file: !2186, line: 625, baseType: !2411, size: 64, offset: 896)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!2408, !2138, !223}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2185, file: !2186, line: 633, baseType: !2415, size: 64, offset: 960)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{!2247, !2138, !223}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2139, file: !38, line: 697, baseType: !223, size: 64, offset: 1024)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2139, file: !38, line: 699, baseType: !1786, size: 64, offset: 1088)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2139, file: !38, line: 700, baseType: !147, size: 64, offset: 1152)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2139, file: !38, line: 711, baseType: !700, size: 64, offset: 1216)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2139, file: !38, line: 717, baseType: !2408, size: 64, offset: 1280)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2139, file: !38, line: 722, baseType: !2424, offset: 1344)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !983)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2056, file: !14, line: 1928, baseType: !223, size: 64, offset: 768)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2056, file: !14, line: 1929, baseType: !2427, size: 64, offset: 832)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!109, !440, !1786}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2056, file: !14, line: 1930, baseType: !2431, size: 64, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!109, !1786, !2434}
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !147)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2056, file: !14, line: 1931, baseType: !2427, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2056, file: !14, line: 1932, baseType: !2437, size: 64, offset: 1024)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!109, !1786, !596, !596, !109}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2056, file: !14, line: 1933, baseType: !2441, size: 64, offset: 1088)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!109, !109, !1786, !109}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2056, file: !14, line: 1934, baseType: !2445, size: 64, offset: 1152)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!109, !1786, !109, !2448}
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2056, file: !14, line: 1935, baseType: !1783, size: 64, offset: 1216)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2056, file: !14, line: 1936, baseType: !2452, size: 64, offset: 1280)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!109, !109}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2056, file: !14, line: 1937, baseType: !2445, size: 64, offset: 1344)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2056, file: !14, line: 1938, baseType: !2457, size: 64, offset: 1408)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!393, !2460, !1786, !2067, !408, !7}
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1138, line: 59, flags: DIFlagFwdDecl)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2056, file: !14, line: 1939, baseType: !2463, size: 64, offset: 1472)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!393, !1786, !2067, !2460, !408, !7}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2056, file: !14, line: 1940, baseType: !2467, size: 64, offset: 1536)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{null, !1786}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2056, file: !14, line: 1941, baseType: !2471, size: 64, offset: 1600)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!109, !1786, !109, !2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2056, file: !14, line: 1942, baseType: !2477, size: 64, offset: 1664)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!397, !1786, !109, !596, !596}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2056, file: !14, line: 1944, baseType: !2481, size: 64, offset: 1728)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{null, !1136, !1786}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2056, file: !14, line: 1948, baseType: !2485, size: 64, offset: 1792)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!393, !1786, !596, !1786, !596, !408, !7}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2056, file: !14, line: 1950, baseType: !2489, size: 64, offset: 1856)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!596, !1786, !596, !1786, !596, !596, !7}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2056, file: !14, line: 1953, baseType: !2437, size: 64, offset: 1920)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2056, file: !14, line: 1954, baseType: !2494, size: 64, offset: 1984)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!109, !2497, !7}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2056, file: !14, line: 1955, baseType: !2500, size: 64, offset: 2048)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!109, !2497, !2106, !7}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1787, file: !14, line: 1018, baseType: !213, size: 64, offset: 1472)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1787, file: !14, line: 1020, baseType: !147, size: 64, offset: 1536)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1787, file: !14, line: 1023, baseType: !147, size: 64, offset: 1600)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1787, file: !14, line: 1027, baseType: !2507, size: 64, offset: 1664)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1787, file: !14, line: 1029, baseType: !436, size: 64, offset: 1728)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1787, file: !14, line: 1030, baseType: !2510, size: 32, offset: 1792)
!2510 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2511, line: 8, baseType: !253)
!2511 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1787, file: !14, line: 1031, baseType: !2510, size: 32, offset: 1824)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1763, file: !38, line: 756, baseType: !223, size: 64, offset: 704)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1763, file: !38, line: 757, baseType: !223, size: 64, offset: 768)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1763, file: !38, line: 760, baseType: !223, size: 64, offset: 832)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1763, file: !38, line: 761, baseType: !223, size: 64, offset: 896)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1763, file: !38, line: 763, baseType: !223, size: 64, offset: 960)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1763, file: !38, line: 764, baseType: !2519, size: 64, offset: 1024)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2153, line: 299, baseType: !2521)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2153, line: 299, size: 64, elements: !2522)
!2522 = !{!2523}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2521, file: !2153, line: 299, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2158, line: 18, baseType: !223)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1763, file: !38, line: 773, baseType: !315, size: 32, offset: 1088)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1763, file: !38, line: 785, baseType: !315, size: 32, offset: 1120)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1763, file: !38, line: 795, baseType: !2528, size: 64, offset: 1152)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2530)
!2530 = !{!2531, !2532}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2529, file: !38, line: 727, baseType: !213, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2529, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1763, file: !38, line: 801, baseType: !223, size: 64, offset: 1216)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1763, file: !38, line: 804, baseType: !700, size: 64, offset: 1280)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1763, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1763, file: !38, line: 808, baseType: !295, size: 32, offset: 1376)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1763, file: !38, line: 823, baseType: !1356, size: 320, offset: 1408)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1763, file: !38, line: 825, baseType: !188, size: 128, offset: 1728)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1763, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1763, file: !38, line: 849, baseType: !223, size: 64, offset: 1920)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1763, file: !38, line: 850, baseType: !223, size: 64, offset: 1984)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1763, file: !38, line: 852, baseType: !223, size: 64, offset: 2048)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1763, file: !38, line: 853, baseType: !223, size: 64, offset: 2112)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1763, file: !38, line: 854, baseType: !702, size: 64, offset: 2176)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1763, file: !38, line: 855, baseType: !223, size: 64, offset: 2240)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1763, file: !38, line: 856, baseType: !223, size: 64, offset: 2304)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1763, file: !38, line: 857, baseType: !223, size: 64, offset: 2368)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1763, file: !38, line: 858, baseType: !223, size: 64, offset: 2432)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1763, file: !38, line: 865, baseType: !486, size: 32, offset: 2496)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1763, file: !38, line: 867, baseType: !295, size: 32, offset: 2528)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1763, file: !38, line: 869, baseType: !223, size: 64, offset: 2560)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1763, file: !38, line: 869, baseType: !223, size: 64, offset: 2624)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1763, file: !38, line: 869, baseType: !223, size: 64, offset: 2688)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1763, file: !38, line: 869, baseType: !223, size: 64, offset: 2752)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1763, file: !38, line: 870, baseType: !223, size: 64, offset: 2816)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1763, file: !38, line: 870, baseType: !223, size: 64, offset: 2880)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1763, file: !38, line: 870, baseType: !223, size: 64, offset: 2944)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1763, file: !38, line: 871, baseType: !223, size: 64, offset: 3008)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1763, file: !38, line: 871, baseType: !223, size: 64, offset: 3072)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1763, file: !38, line: 871, baseType: !223, size: 64, offset: 3136)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1763, file: !38, line: 871, baseType: !223, size: 64, offset: 3200)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1763, file: !38, line: 873, baseType: !2563, size: 3328, offset: 3264)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 3328, elements: !2564)
!2564 = !{!2565}
!2565 = !DISubrange(count: 52)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1763, file: !38, line: 875, baseType: !2567, size: 1280, offset: 6592)
!2567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1998, size: 1280, elements: !228)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1763, file: !38, line: 877, baseType: !2569, size: 64, offset: 7872)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1763, file: !38, line: 880, baseType: !2572, size: 1088, offset: 7936)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2573, line: 72, baseType: !2574)
!2573 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2573, line: 23, size: 1088, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2580, !2583, !2584, !2585, !2586, !2613, !2614, !2615}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2574, file: !2573, line: 28, baseType: !213, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2574, file: !2573, line: 38, baseType: !702, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2574, file: !2573, line: 40, baseType: !223, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2574, file: !2573, line: 43, baseType: !1356, size: 320, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2574, file: !2573, line: 44, baseType: !2581, size: 64, offset: 512)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2573, line: 44, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2574, file: !2573, line: 48, baseType: !223, size: 64, offset: 576)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2574, file: !2573, line: 59, baseType: !696, size: 256, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2574, file: !2573, line: 60, baseType: !147, size: 64, offset: 896)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2574, file: !2573, line: 61, baseType: !2587, size: 64, offset: 960)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2589)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2590, line: 13, size: 1216, elements: !2591)
!2590 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2589, file: !2590, line: 14, baseType: !147, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2589, file: !2590, line: 15, baseType: !223, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2589, file: !2590, line: 17, baseType: !223, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2589, file: !2590, line: 17, baseType: !223, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2589, file: !2590, line: 18, baseType: !223, size: 64, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2589, file: !2590, line: 18, baseType: !223, size: 64, offset: 320)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2589, file: !2590, line: 19, baseType: !2599, size: 64, offset: 384)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2589, file: !2590, line: 21, baseType: !397, size: 64, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2589, file: !2590, line: 23, baseType: !397, size: 64, offset: 512)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2589, file: !2590, line: 24, baseType: !397, size: 64, offset: 576)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2589, file: !2590, line: 25, baseType: !397, size: 64, offset: 640)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2589, file: !2590, line: 26, baseType: !397, size: 64, offset: 704)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2589, file: !2590, line: 27, baseType: !397, size: 64, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2589, file: !2590, line: 28, baseType: !397, size: 64, offset: 832)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2589, file: !2590, line: 29, baseType: !397, size: 64, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2589, file: !2590, line: 30, baseType: !397, size: 64, offset: 960)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2589, file: !2590, line: 31, baseType: !397, size: 64, offset: 1024)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2589, file: !2590, line: 32, baseType: !397, size: 64, offset: 1088)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2589, file: !2590, line: 33, baseType: !397, size: 64, offset: 1152)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2574, file: !2573, line: 63, baseType: !315, size: 32, offset: 1024)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2574, file: !2573, line: 69, baseType: !330, size: 16, offset: 1056)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2574, file: !2573, line: 70, baseType: !832, size: 16, offset: 1072)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1763, file: !38, line: 882, baseType: !223, size: 64, offset: 9024)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1763, file: !38, line: 885, baseType: !295, size: 32, offset: 9088)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1763, file: !38, line: 886, baseType: !2619, size: 64, offset: 9152)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1763, file: !38, line: 901, baseType: !2023, size: 64, offset: 9216)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1763, file: !38, line: 904, baseType: !1786, size: 64, offset: 9280)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1763, file: !38, line: 906, baseType: !2624, size: 64, offset: 9344)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1763, file: !38, line: 930, baseType: !315, size: 32, offset: 9408)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1763, file: !38, line: 933, baseType: !315, size: 32, offset: 9440)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1763, file: !38, line: 935, baseType: !2629, size: 64, offset: 9472)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2630)
!2630 = !{!2631}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2629, file: !68, line: 104, baseType: !2632, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1763, file: !38, line: 940, baseType: !700, size: 64, offset: 9536)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1763, file: !38, line: 942, baseType: !954, size: 256, offset: 9600)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1760, file: !38, line: 986, baseType: !2637, offset: 10240)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, elements: !1846)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1463, file: !1138, line: 882, baseType: !1759, size: 64, offset: 9792)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1463, file: !1138, line: 884, baseType: !109, size: 32, offset: 9856)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1463, file: !1138, line: 885, baseType: !109, size: 32, offset: 9888)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1463, file: !1138, line: 886, baseType: !109, size: 32, offset: 9920)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1463, file: !1138, line: 888, baseType: !109, size: 32, offset: 9952)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1463, file: !1138, line: 890, baseType: !223, size: 64, offset: 9984)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1463, file: !1138, line: 893, baseType: !7, size: 32, offset: 10048)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1463, file: !1138, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1463, file: !1138, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1463, file: !1138, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1463, file: !1138, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1463, file: !1138, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1463, file: !1138, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1463, file: !1138, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1463, file: !1138, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1463, file: !1138, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1463, file: !1138, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1463, file: !1138, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1463, file: !1138, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1463, file: !1138, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1463, file: !1138, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1463, file: !1138, line: 969, baseType: !223, size: 64, offset: 10176)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1463, file: !1138, line: 971, baseType: !2661, size: 448, offset: 10240)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2662)
!2662 = !{!2663, !2664, !2669}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2661, file: !62, line: 26, baseType: !223, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2661, file: !62, line: 27, baseType: !2665, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!397, !2668}
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, scope: !2661, file: !62, line: 28, baseType: !2670, size: 320, offset: 128)
!2670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2661, file: !62, line: 28, size: 320, elements: !2671)
!2671 = !{!2672, !2681, !2706}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2670, file: !62, line: 37, baseType: !2673, size: 320)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2670, file: !62, line: 30, size: 320, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2673, file: !62, line: 31, baseType: !252, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2673, file: !62, line: 32, baseType: !253, size: 32, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2673, file: !62, line: 33, baseType: !253, size: 32, offset: 96)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2673, file: !62, line: 34, baseType: !253, size: 32, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2673, file: !62, line: 35, baseType: !213, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2673, file: !62, line: 36, baseType: !252, size: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2670, file: !62, line: 47, baseType: !2682, size: 192)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2670, file: !62, line: 39, size: 192, elements: !2683)
!2683 = !{!2684, !2685, !2686, !2705}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2682, file: !62, line: 40, baseType: !1630, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2682, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, scope: !2682, file: !62, line: 42, baseType: !2687, size: 64, offset: 64)
!2687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2682, file: !62, line: 42, size: 64, elements: !2688)
!2688 = !{!2689, !2697}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2687, file: !62, line: 43, baseType: !2690, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2692, line: 7, size: 128, elements: !2693)
!2692 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2693 = !{!2694, !2696}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2691, file: !2692, line: 8, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !395, line: 93, baseType: !598)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2691, file: !2692, line: 9, baseType: !598, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2687, file: !62, line: 44, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2700, line: 7, size: 64, elements: !2701)
!2700 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2701 = !{!2702, !2704}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2699, file: !2700, line: 8, baseType: !2703, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2700, line: 5, baseType: !692)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2699, file: !2700, line: 9, baseType: !692, size: 32, offset: 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2682, file: !62, line: 46, baseType: !213, size: 64, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2670, file: !62, line: 55, baseType: !2707, size: 256)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2670, file: !62, line: 49, size: 256, elements: !2708)
!2708 = !{!2709, !2712, !2713, !2714, !2715}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2707, file: !62, line: 50, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2707, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2707, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2707, file: !62, line: 53, baseType: !223, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2707, file: !62, line: 54, baseType: !223, size: 64, offset: 192)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1463, file: !1138, line: 973, baseType: !2717, size: 32, offset: 10688)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !189, line: 27, baseType: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !395, line: 28, baseType: !109)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1463, file: !1138, line: 974, baseType: !2717, size: 32, offset: 10720)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1463, file: !1138, line: 978, baseType: !223, size: 64, offset: 10752)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1463, file: !1138, line: 987, baseType: !1462, size: 64, offset: 10816)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1463, file: !1138, line: 990, baseType: !1462, size: 64, offset: 10880)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1463, file: !1138, line: 995, baseType: !188, size: 128, offset: 10944)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1463, file: !1138, line: 996, baseType: !188, size: 128, offset: 11072)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1463, file: !1138, line: 997, baseType: !1462, size: 64, offset: 11200)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1463, file: !1138, line: 1005, baseType: !188, size: 128, offset: 11264)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1463, file: !1138, line: 1006, baseType: !188, size: 128, offset: 11392)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1463, file: !1138, line: 1009, baseType: !1827, size: 64, offset: 11520)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1463, file: !1138, line: 1010, baseType: !2730, size: 512, offset: 11584)
!2730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !940, size: 512, elements: !228)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1463, file: !1138, line: 1011, baseType: !188, size: 128, offset: 12096)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1463, file: !1138, line: 1012, baseType: !188, size: 128, offset: 12224)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1463, file: !1138, line: 1014, baseType: !644, size: 64, offset: 12352)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1463, file: !1138, line: 1017, baseType: !825, size: 64, offset: 12416)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1463, file: !1138, line: 1020, baseType: !825, size: 64, offset: 12480)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1463, file: !1138, line: 1023, baseType: !147, size: 64, offset: 12544)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1463, file: !1138, line: 1025, baseType: !213, size: 64, offset: 12608)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1463, file: !1138, line: 1026, baseType: !213, size: 64, offset: 12672)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1463, file: !1138, line: 1031, baseType: !213, size: 64, offset: 12736)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1463, file: !1138, line: 1032, baseType: !2741, size: 192, offset: 12800)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1138, line: 324, size: 192, elements: !2742)
!2742 = !{!2743, !2744, !2745}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2741, file: !1138, line: 326, baseType: !213, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2741, file: !1138, line: 327, baseType: !213, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2741, file: !1138, line: 328, baseType: !654, size: 32, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1463, file: !1138, line: 1041, baseType: !223, size: 64, offset: 12992)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1463, file: !1138, line: 1042, baseType: !223, size: 64, offset: 13056)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1463, file: !1138, line: 1045, baseType: !213, size: 64, offset: 13120)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1463, file: !1138, line: 1048, baseType: !213, size: 64, offset: 13184)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1463, file: !1138, line: 1051, baseType: !223, size: 64, offset: 13248)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1463, file: !1138, line: 1052, baseType: !223, size: 64, offset: 13312)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1463, file: !1138, line: 1055, baseType: !2753, size: 640, offset: 13376)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2754, line: 132, size: 640, elements: !2755)
!2754 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2755 = !{!2756, !2762, !2763}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2753, file: !2754, line: 133, baseType: !2757, size: 576)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2758, size: 576, elements: !362)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2754, line: 117, size: 192, elements: !2759)
!2759 = !{!2760, !2761}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2758, file: !2754, line: 118, baseType: !213, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2758, file: !2754, line: 119, baseType: !1639, size: 128, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2753, file: !2754, line: 134, baseType: !7, size: 32, offset: 576)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2753, file: !2754, line: 135, baseType: !7, size: 32, offset: 608)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1463, file: !1138, line: 1058, baseType: !2765, size: 448, offset: 14016)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2754, line: 144, size: 448, elements: !2766)
!2766 = !{!2767, !2768, !2769}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2765, file: !2754, line: 145, baseType: !916, size: 128, align: 64)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2765, file: !2754, line: 146, baseType: !696, size: 256, offset: 128)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2765, file: !2754, line: 147, baseType: !7, size: 32, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1463, file: !1138, line: 1064, baseType: !1853, size: 64, offset: 14464)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1463, file: !1138, line: 1067, baseType: !1853, size: 64, offset: 14528)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1463, file: !1138, line: 1070, baseType: !1853, size: 64, offset: 14592)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1463, file: !1138, line: 1074, baseType: !1880, size: 64, offset: 14656)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1463, file: !1138, line: 1084, baseType: !2775, size: 128, offset: 14720)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !2776)
!2776 = !{!2777}
!2777 = !DISubrange(count: 16)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1463, file: !1138, line: 1086, baseType: !2779, size: 64, offset: 14848)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1138, line: 55, flags: DIFlagFwdDecl)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1463, file: !1138, line: 1089, baseType: !2782, size: 64, offset: 14912)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2783, line: 12, size: 64, elements: !2784)
!2783 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2784 = !{!2785}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2782, file: !2783, line: 13, baseType: !2786, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2783, line: 8, flags: DIFlagFwdDecl)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1463, file: !1138, line: 1090, baseType: !2789, size: 128, offset: 14976)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2790, line: 13, size: 128, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2791 = !{!2792}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2789, file: !2790, line: 14, baseType: !188, size: 128)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1463, file: !1138, line: 1097, baseType: !2794, size: 64, offset: 15104)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1138, line: 50, flags: DIFlagFwdDecl)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1463, file: !1138, line: 1100, baseType: !2797, size: 64, offset: 15168)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1138, line: 1100, flags: DIFlagFwdDecl)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1463, file: !1138, line: 1103, baseType: !2800, size: 64, offset: 15232)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1138, line: 53, flags: DIFlagFwdDecl)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1463, file: !1138, line: 1107, baseType: !2803, size: 64, offset: 15296)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1138, line: 56, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1463, file: !1138, line: 1110, baseType: !2806, size: 64, offset: 15360)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2808, line: 93, size: 8768, elements: !2809)
!2808 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2809 = !{!2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2857, !2866, !2867, !2869, !2870, !2871, !2874, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2912, !2913, !2920, !2930, !2933, !2934, !2937, !2938, !2939, !2940, !2941, !2942}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2807, file: !2808, line: 94, baseType: !1476, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2807, file: !2808, line: 95, baseType: !315, size: 32, offset: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2807, file: !2808, line: 96, baseType: !109, size: 32, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2807, file: !2808, line: 97, baseType: !109, size: 32, offset: 96)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2807, file: !2808, line: 98, baseType: !188, size: 128, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2807, file: !2808, line: 100, baseType: !1449, size: 192, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2807, file: !2808, line: 103, baseType: !1462, size: 64, offset: 448)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2807, file: !2808, line: 106, baseType: !2818, size: 192, offset: 512)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2028, line: 32, size: 192, elements: !2819)
!2819 = !{!2820, !2821}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2818, file: !2028, line: 33, baseType: !188, size: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2818, file: !2028, line: 34, baseType: !2822, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2823, line: 25, baseType: !2824)
!2823 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2823, line: 23, size: 64, elements: !2825)
!2825 = !{!2826}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2824, file: !2823, line: 24, baseType: !1710, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2807, file: !2808, line: 109, baseType: !1064, size: 64, offset: 704)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2807, file: !2808, line: 112, baseType: !109, size: 32, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2807, file: !2808, line: 114, baseType: !109, size: 32, offset: 800)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2807, file: !2808, line: 115, baseType: !1462, size: 64, offset: 832)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2807, file: !2808, line: 118, baseType: !109, size: 32, offset: 896)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2807, file: !2808, line: 119, baseType: !7, size: 32, offset: 928)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2807, file: !2808, line: 121, baseType: !2834, size: 64, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2808, line: 80, size: 448, elements: !2836)
!2836 = !{!2837, !2838, !2844}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2835, file: !2808, line: 81, baseType: !315, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2835, file: !2808, line: 82, baseType: !2839, size: 128, offset: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2808, line: 75, size: 128, elements: !2840)
!2840 = !{!2841, !2842}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2839, file: !2808, line: 76, baseType: !1462, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2839, file: !2808, line: 77, baseType: !2843, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2835, file: !2808, line: 83, baseType: !645, size: 256, offset: 192)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2807, file: !2808, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2807, file: !2808, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2807, file: !2808, line: 138, baseType: !7, size: 32, offset: 1056)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2807, file: !2808, line: 139, baseType: !188, size: 128, offset: 1088)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2807, file: !2808, line: 142, baseType: !1583, size: 512, offset: 1216)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2807, file: !2808, line: 143, baseType: !1591, size: 64, offset: 1728)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2807, file: !2808, line: 150, baseType: !2852, size: 256, offset: 1792)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2853, size: 256, elements: !815)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2808, line: 38, size: 128, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2853, file: !2808, line: 39, baseType: !213, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2853, file: !2808, line: 40, baseType: !213, size: 64, offset: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2807, file: !2808, line: 156, baseType: !2858, size: 192, offset: 2048)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2808, line: 66, size: 192, elements: !2859)
!2859 = !{!2860}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2858, file: !2808, line: 67, baseType: !2861, size: 192)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2808, line: 47, size: 192, elements: !2862)
!2862 = !{!2863, !2864, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2861, file: !2808, line: 48, baseType: !702, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2861, file: !2808, line: 49, baseType: !702, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2861, file: !2808, line: 50, baseType: !702, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2807, file: !2808, line: 160, baseType: !2753, size: 640, offset: 2240)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2807, file: !2808, line: 163, baseType: !2868, size: 256, offset: 2880)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1827, size: 256, elements: !228)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2807, file: !2808, line: 169, baseType: !1827, size: 64, offset: 3136)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2807, file: !2808, line: 172, baseType: !109, size: 32, offset: 3200)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2807, file: !2808, line: 174, baseType: !2872, size: 64, offset: 3264)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2808, line: 174, flags: DIFlagFwdDecl)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2807, file: !2808, line: 185, baseType: !2875, size: 64, offset: 3328)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !482, line: 860, baseType: !2876)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !482, line: 853, size: 64, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2876, file: !482, line: 858, baseType: !481, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2876, file: !482, line: 859, baseType: !295, size: 32, offset: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2807, file: !2808, line: 186, baseType: !213, size: 64, offset: 3392)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2807, file: !2808, line: 186, baseType: !213, size: 64, offset: 3456)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2807, file: !2808, line: 186, baseType: !213, size: 64, offset: 3520)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2807, file: !2808, line: 186, baseType: !213, size: 64, offset: 3584)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2807, file: !2808, line: 187, baseType: !213, size: 64, offset: 3648)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2807, file: !2808, line: 188, baseType: !213, size: 64, offset: 3712)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2807, file: !2808, line: 189, baseType: !2741, size: 192, offset: 3776)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2807, file: !2808, line: 190, baseType: !223, size: 64, offset: 3968)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2807, file: !2808, line: 190, baseType: !223, size: 64, offset: 4032)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2807, file: !2808, line: 190, baseType: !223, size: 64, offset: 4096)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2807, file: !2808, line: 190, baseType: !223, size: 64, offset: 4160)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2807, file: !2808, line: 191, baseType: !223, size: 64, offset: 4224)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2807, file: !2808, line: 191, baseType: !223, size: 64, offset: 4288)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2807, file: !2808, line: 191, baseType: !223, size: 64, offset: 4352)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2807, file: !2808, line: 191, baseType: !223, size: 64, offset: 4416)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2807, file: !2808, line: 192, baseType: !223, size: 64, offset: 4480)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2807, file: !2808, line: 192, baseType: !223, size: 64, offset: 4544)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2807, file: !2808, line: 192, baseType: !223, size: 64, offset: 4608)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2807, file: !2808, line: 192, baseType: !223, size: 64, offset: 4672)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2807, file: !2808, line: 193, baseType: !223, size: 64, offset: 4736)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2807, file: !2808, line: 193, baseType: !223, size: 64, offset: 4800)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2807, file: !2808, line: 194, baseType: !2902, size: 448, offset: 4864)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2903, line: 12, size: 448, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2904 = !{!2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2902, file: !2903, line: 15, baseType: !213, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2902, file: !2903, line: 17, baseType: !213, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2902, file: !2903, line: 19, baseType: !213, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2902, file: !2903, line: 21, baseType: !213, size: 64, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2902, file: !2903, line: 29, baseType: !213, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2902, file: !2903, line: 35, baseType: !213, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2902, file: !2903, line: 44, baseType: !213, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2807, file: !2808, line: 202, baseType: !217, size: 64, offset: 5312)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2807, file: !2808, line: 213, baseType: !2914, size: 2048, offset: 5376)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2915, size: 2048, elements: !2776)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2916, line: 43, size: 128, elements: !2917)
!2916 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2915, file: !2916, line: 44, baseType: !410, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2915, file: !2916, line: 45, baseType: !410, size: 64, offset: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2807, file: !2808, line: 216, baseType: !2921, size: 448, offset: 7424)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2808, line: 30, size: 448, elements: !2922)
!2922 = !{!2923, !2924, !2925, !2926, !2927, !2928, !2929}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2921, file: !2808, line: 31, baseType: !109, size: 32)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2921, file: !2808, line: 32, baseType: !397, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2921, file: !2808, line: 33, baseType: !223, size: 64, offset: 128)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2921, file: !2808, line: 34, baseType: !213, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2921, file: !2808, line: 34, baseType: !213, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2921, file: !2808, line: 35, baseType: !223, size: 64, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2921, file: !2808, line: 35, baseType: !223, size: 64, offset: 384)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2807, file: !2808, line: 219, baseType: !2931, size: 64, offset: 7872)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2808, line: 219, flags: DIFlagFwdDecl)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2807, file: !2808, line: 222, baseType: !7, size: 32, offset: 7936)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2807, file: !2808, line: 223, baseType: !2935, size: 64, offset: 8000)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2808, line: 223, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2807, file: !2808, line: 230, baseType: !776, size: 8, offset: 8064)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2807, file: !2808, line: 231, baseType: !834, size: 16, offset: 8080)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2807, file: !2808, line: 232, baseType: !834, size: 16, offset: 8096)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2807, file: !2808, line: 234, baseType: !1759, size: 64, offset: 8128)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2807, file: !2808, line: 237, baseType: !696, size: 256, offset: 8192)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2807, file: !2808, line: 243, baseType: !1356, size: 320, offset: 8448)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1463, file: !1138, line: 1111, baseType: !2944, size: 64, offset: 15424)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2808, line: 20, size: 16640, elements: !2946)
!2946 = !{!2947, !2948, !2949, !2950}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2945, file: !2808, line: 21, baseType: !295, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2945, file: !2808, line: 22, baseType: !1476, size: 32, offset: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2945, file: !2808, line: 23, baseType: !1449, size: 192, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2945, file: !2808, line: 24, baseType: !2951, size: 16384, offset: 256)
!2951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2952, size: 16384, elements: !366)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2028, line: 51, size: 256, elements: !2953)
!2953 = !{!2954}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2952, file: !2028, line: 52, baseType: !2955, size: 256)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2028, line: 37, size: 256, elements: !2956)
!2956 = !{!2957, !2964, !2965, !2969}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2955, file: !2028, line: 39, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2959, line: 83, baseType: !2960)
!2959 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2959, line: 82, baseType: !2962)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !109}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2955, file: !2028, line: 40, baseType: !223, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2955, file: !2028, line: 46, baseType: !2966, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2959, line: 86, baseType: !2967)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2959, line: 85, baseType: !1059)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2955, file: !2028, line: 48, baseType: !2822, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1463, file: !1138, line: 1112, baseType: !2822, size: 64, offset: 15488)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1463, file: !1138, line: 1113, baseType: !2822, size: 64, offset: 15552)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1463, file: !1138, line: 1115, baseType: !2822, size: 64, offset: 15616)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1463, file: !1138, line: 1116, baseType: !2818, size: 192, offset: 15680)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1463, file: !1138, line: 1117, baseType: !223, size: 64, offset: 15872)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1463, file: !1138, line: 1118, baseType: !408, size: 64, offset: 15936)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1463, file: !1138, line: 1119, baseType: !7, size: 32, offset: 16000)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1463, file: !1138, line: 1121, baseType: !915, size: 64, offset: 16064)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1463, file: !1138, line: 1125, baseType: !2979, size: 64, offset: 16128)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1138, line: 43, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1463, file: !1138, line: 1127, baseType: !446, size: 32, offset: 16192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1463, file: !1138, line: 1128, baseType: !7, size: 32, offset: 16224)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1463, file: !1138, line: 1130, baseType: !2984, size: 128, offset: 16256)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2985, line: 37, size: 128, elements: !2986)
!2985 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2986 = !{!2987, !2988, !2989}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2984, file: !2985, line: 38, baseType: !109, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2984, file: !2985, line: 39, baseType: !315, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2984, file: !2985, line: 40, baseType: !2990, size: 64, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2985, line: 24, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1463, file: !1138, line: 1131, baseType: !2993, size: 256, offset: 16384)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2994, line: 12, size: 256, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2995 = !{!2996, !2997, !2998, !2999}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2993, file: !2994, line: 13, baseType: !361, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2993, file: !2994, line: 14, baseType: !223, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2993, file: !2994, line: 15, baseType: !223, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2993, file: !2994, line: 16, baseType: !776, size: 8, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1463, file: !1138, line: 1134, baseType: !213, size: 64, offset: 16640)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1463, file: !1138, line: 1135, baseType: !213, size: 64, offset: 16704)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1463, file: !1138, line: 1138, baseType: !295, size: 32, offset: 16768)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1463, file: !1138, line: 1141, baseType: !654, size: 32, offset: 16800)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1463, file: !1138, line: 1143, baseType: !3005, size: 64, offset: 16832)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1138, line: 735, size: 64, elements: !3006)
!3006 = !{!3007}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3005, file: !1138, line: 736, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1463, file: !1138, line: 1147, baseType: !1642, size: 128, offset: 16896)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1463, file: !1138, line: 1149, baseType: !1462, size: 64, offset: 17024)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1463, file: !1138, line: 1151, baseType: !3012, size: 64, offset: 17088)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1138, line: 1151, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1463, file: !1138, line: 1188, baseType: !147, size: 64, offset: 17152)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1463, file: !1138, line: 1191, baseType: !3016, size: 64, offset: 17216)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1138, line: 44, flags: DIFlagFwdDecl)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1463, file: !1138, line: 1194, baseType: !3019, size: 64, offset: 17280)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1138, line: 45, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1463, file: !1138, line: 1197, baseType: !3022, size: 64, offset: 17344)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1138, line: 61, flags: DIFlagFwdDecl)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1463, file: !1138, line: 1199, baseType: !3025, size: 64, offset: 17408)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3027, line: 99, size: 128, elements: !3028)
!3027 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3028 = !{!3029, !3030, !3031}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3026, file: !3027, line: 100, baseType: !700, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3026, file: !3027, line: 101, baseType: !315, size: 32, offset: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3026, file: !3027, line: 103, baseType: !274, size: 16, offset: 96)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1463, file: !1138, line: 1202, baseType: !3033, size: 64, offset: 17472)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1138, line: 48, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1463, file: !1138, line: 1205, baseType: !223, size: 64, offset: 17536)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1463, file: !1138, line: 1206, baseType: !3037, size: 64, offset: 17600)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2028, line: 14, baseType: !3039)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2028, line: 12, size: 384, elements: !3040)
!3040 = !{!3041}
!3041 = !DIDerivedType(tag: DW_TAG_member, scope: !3039, file: !2028, line: 13, baseType: !3042, size: 384)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3039, file: !2028, line: 13, size: 384, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3042, file: !2028, line: 13, baseType: !109, size: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3042, file: !2028, line: 13, baseType: !109, size: 32, offset: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3042, file: !2028, line: 13, baseType: !109, size: 32, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3042, file: !2028, line: 13, baseType: !3048, size: 256, offset: 128)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3049, line: 37, size: 256, elements: !3050)
!3049 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3050 = !{!3051, !3056, !3069, !3075, !3084, !3111, !3116}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3048, file: !3049, line: 42, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3049, line: 39, size: 64, elements: !3053)
!3053 = !{!3054, !3055}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3052, file: !3049, line: 40, baseType: !2718, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3052, file: !3049, line: 41, baseType: !452, size: 32, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3048, file: !3049, line: 50, baseType: !3057, size: 192)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3049, line: 45, size: 192, elements: !3058)
!3058 = !{!3059, !3061, !3062, !3068}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3057, file: !3049, line: 46, baseType: !3060, size: 32)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !395, line: 95, baseType: !109)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3057, file: !3049, line: 47, baseType: !109, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3057, file: !3049, line: 48, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3049, line: 11, baseType: !3064)
!3064 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3049, line: 8, size: 64, elements: !3065)
!3065 = !{!3066, !3067}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3064, file: !3049, line: 9, baseType: !109, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3064, file: !3049, line: 10, baseType: !147, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3057, file: !3049, line: 49, baseType: !109, size: 32, offset: 128)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3048, file: !3049, line: 57, baseType: !3070, size: 128)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3049, line: 53, size: 128, elements: !3071)
!3071 = !{!3072, !3073, !3074}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3070, file: !3049, line: 54, baseType: !2718, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3070, file: !3049, line: 55, baseType: !452, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3070, file: !3049, line: 56, baseType: !3063, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3048, file: !3049, line: 66, baseType: !3076, size: 256)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3049, line: 60, size: 256, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3083}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3076, file: !3049, line: 61, baseType: !2718, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3076, file: !3049, line: 62, baseType: !452, size: 32, offset: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3076, file: !3049, line: 63, baseType: !109, size: 32, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3076, file: !3049, line: 64, baseType: !3082, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !395, line: 94, baseType: !396)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3076, file: !3049, line: 65, baseType: !3082, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3048, file: !3049, line: 105, baseType: !3085, size: 256)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3049, line: 69, size: 256, elements: !3086)
!3086 = !{!3087, !3088}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3085, file: !3049, line: 70, baseType: !147, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, scope: !3085, file: !3049, line: 79, baseType: !3089, size: 192, offset: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3085, file: !3049, line: 79, size: 192, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3100, !3105}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3089, file: !3049, line: 81, baseType: !109, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3089, file: !3049, line: 86, baseType: !834, size: 16)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3089, file: !3049, line: 92, baseType: !3094, size: 192)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3049, line: 88, size: 192, elements: !3095)
!3095 = !{!3096, !3098, !3099}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3094, file: !3049, line: 89, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !1626)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3094, file: !3049, line: 90, baseType: !147, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3094, file: !3049, line: 91, baseType: !147, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3089, file: !3049, line: 97, baseType: !3101, size: 96)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3049, line: 94, size: 96, elements: !3102)
!3102 = !{!3103, !3104}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3101, file: !3049, line: 95, baseType: !3097, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3101, file: !3049, line: 96, baseType: !254, size: 32, offset: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3089, file: !3049, line: 103, baseType: !3106, size: 128)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !3049, line: 99, size: 128, elements: !3107)
!3107 = !{!3108, !3109, !3110}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3106, file: !3049, line: 100, baseType: !223, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3106, file: !3049, line: 101, baseType: !254, size: 32, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3106, file: !3049, line: 102, baseType: !254, size: 32, offset: 96)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3048, file: !3049, line: 111, baseType: !3112, size: 128)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3049, line: 108, size: 128, elements: !3113)
!3113 = !{!3114, !3115}
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3112, file: !3049, line: 109, baseType: !397, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3112, file: !3049, line: 110, baseType: !109, size: 32, offset: 64)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3048, file: !3049, line: 118, baseType: !3117, size: 128)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !3049, line: 114, size: 128, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3117, file: !3049, line: 115, baseType: !147, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3117, file: !3049, line: 116, baseType: !109, size: 32, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3117, file: !3049, line: 117, baseType: !7, size: 32, offset: 96)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1463, file: !1138, line: 1208, baseType: !2902, size: 448, offset: 17664)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1463, file: !1138, line: 1215, baseType: !213, size: 64, offset: 18112)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1463, file: !1138, line: 1217, baseType: !213, size: 64, offset: 18176)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1463, file: !1138, line: 1219, baseType: !213, size: 64, offset: 18240)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1463, file: !1138, line: 1223, baseType: !3127, size: 64, offset: 18304)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3128, line: 99, baseType: !3129)
!3128 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3128, line: 99, size: 64, elements: !3130)
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3129, file: !3128, line: 99, baseType: !1710, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1463, file: !1138, line: 1225, baseType: !481, size: 32, offset: 18368)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1463, file: !1138, line: 1226, baseType: !109, size: 32, offset: 18400)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1463, file: !1138, line: 1227, baseType: !109, size: 32, offset: 18432)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1463, file: !1138, line: 1231, baseType: !3136, size: 64, offset: 18496)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1138, line: 1231, flags: DIFlagFwdDecl)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1463, file: !1138, line: 1233, baseType: !188, size: 128, offset: 18560)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1463, file: !1138, line: 1240, baseType: !3140, size: 64, offset: 18688)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1138, line: 62, flags: DIFlagFwdDecl)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1463, file: !1138, line: 1242, baseType: !3143, size: 64, offset: 18752)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1138, line: 1242, flags: DIFlagFwdDecl)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1463, file: !1138, line: 1244, baseType: !188, size: 128, offset: 18816)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1463, file: !1138, line: 1245, baseType: !3147, size: 64, offset: 18944)
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1138, line: 51, flags: DIFlagFwdDecl)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1463, file: !1138, line: 1246, baseType: !696, size: 256, offset: 19008)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1463, file: !1138, line: 1247, baseType: !7, size: 32, offset: 19264)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1463, file: !1138, line: 1250, baseType: !3152, size: 64, offset: 19328)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1138, line: 57, flags: DIFlagFwdDecl)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1463, file: !1138, line: 1251, baseType: !696, size: 256, offset: 19392)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1463, file: !1138, line: 1252, baseType: !188, size: 128, offset: 19648)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1463, file: !1138, line: 1259, baseType: !2408, size: 64, offset: 19776)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1463, file: !1138, line: 1260, baseType: !834, size: 16, offset: 19840)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1463, file: !1138, line: 1261, baseType: !834, size: 16, offset: 19856)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1463, file: !1138, line: 1314, baseType: !3160, size: 64, offset: 19904)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3162, line: 62, size: 256, align: 256, elements: !3163)
!3162 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3163 = !{!3164, !3165, !3166, !3167, !3168, !3169, !3170}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3161, file: !3162, line: 75, baseType: !254, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3161, file: !3162, line: 90, baseType: !254, size: 32, offset: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3161, file: !3162, line: 112, baseType: !215, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3161, file: !3162, line: 132, baseType: !254, size: 32, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3161, file: !3162, line: 140, baseType: !254, size: 32, offset: 160)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3161, file: !3162, line: 149, baseType: !254, size: 32, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3161, file: !3162, line: 154, baseType: !3171, offset: 224)
!3171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, elements: !1846)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1463, file: !1138, line: 1315, baseType: !253, size: 32, offset: 19968)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1463, file: !1138, line: 1316, baseType: !253, size: 32, offset: 20000)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1463, file: !1138, line: 1321, baseType: !223, size: 64, offset: 20032)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1463, file: !1138, line: 1325, baseType: !109, size: 32, offset: 20096)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1463, file: !1138, line: 1326, baseType: !109, size: 32, offset: 20128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1463, file: !1138, line: 1327, baseType: !109, size: 32, offset: 20160)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1463, file: !1138, line: 1328, baseType: !109, size: 32, offset: 20192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1463, file: !1138, line: 1329, baseType: !916, size: 128, align: 64, offset: 20224)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1463, file: !1138, line: 1332, baseType: !3181, size: 128, offset: 20352)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3182, line: 51, size: 128, elements: !3183)
!3182 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3183 = !{!3184, !3189, !3190}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3181, file: !3182, line: 60, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3186, line: 7, size: 64, elements: !3187)
!3186 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3187 = !{!3188}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3185, file: !3186, line: 12, baseType: !1707, size: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3181, file: !3182, line: 63, baseType: !776, size: 8, offset: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3181, file: !3182, line: 70, baseType: !776, size: 8, offset: 72)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1463, file: !1138, line: 1335, baseType: !2460, size: 64, offset: 20480)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1463, file: !1138, line: 1337, baseType: !3193, size: 128, offset: 20544)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3182, line: 39, size: 128, elements: !3194)
!3194 = !{!3195, !3196, !3197}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3193, file: !3182, line: 40, baseType: !2247, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3193, file: !3182, line: 42, baseType: !254, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3193, file: !3182, line: 43, baseType: !254, size: 32, offset: 96)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1463, file: !1138, line: 1340, baseType: !3199, size: 64, offset: 20672)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1138, line: 69, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1463, file: !1138, line: 1351, baseType: !109, size: 32, offset: 20736)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1463, file: !1138, line: 1352, baseType: !109, size: 32, offset: 20768)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1463, file: !1138, line: 1354, baseType: !223, size: 64, offset: 20800)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1463, file: !1138, line: 1364, baseType: !213, size: 64, offset: 20864)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1463, file: !1138, line: 1365, baseType: !213, size: 64, offset: 20928)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1463, file: !1138, line: 1412, baseType: !223, size: 64, offset: 20992)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1463, file: !1138, line: 1453, baseType: !3208, size: 64, offset: 21056)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1138, line: 1453, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1463, file: !1138, line: 1457, baseType: !3211, size: 64, offset: 21120)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3213)
!3213 = !{!3214, !3215, !3234, !3237, !3238, !3271, !3281}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3212, file: !68, line: 62, baseType: !67, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, scope: !3212, file: !68, line: 64, baseType: !3216, size: 192, offset: 64)
!3216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3212, file: !68, line: 64, size: 192, elements: !3217)
!3217 = !{!3218, !3229}
!3218 = !DIDerivedType(tag: DW_TAG_member, scope: !3216, file: !68, line: 65, baseType: !3219, size: 192)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !68, line: 65, size: 192, elements: !3220)
!3220 = !{!3221, !3228}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3219, file: !68, line: 66, baseType: !3222, size: 128)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3223, line: 50, size: 128, elements: !3224)
!3223 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3224 = !{!3225, !3226, !3227}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3222, file: !3223, line: 52, baseType: !223, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3222, file: !3223, line: 54, baseType: !7, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3222, file: !3223, line: 55, baseType: !7, size: 32, offset: 96)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3219, file: !68, line: 67, baseType: !223, size: 64, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, scope: !3216, file: !68, line: 70, baseType: !3230, size: 192)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !68, line: 70, size: 192, elements: !3231)
!3231 = !{!3232, !3233}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3230, file: !68, line: 71, baseType: !916, size: 128, align: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3230, file: !68, line: 72, baseType: !223, size: 64, offset: 128)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3212, file: !68, line: 76, baseType: !3235, size: 64, offset: 256)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3212, file: !68, line: 77, baseType: !223, size: 64, offset: 320)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3212, file: !68, line: 79, baseType: !3239, size: 64, offset: 384)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3223, line: 25, size: 256, elements: !3241)
!3241 = !{!3242, !3248, !3252}
!3242 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !3223, line: 26, baseType: !3243, size: 128)
!3243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3240, file: !3223, line: 26, size: 128, elements: !3244)
!3244 = !{!3245, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3243, file: !3223, line: 27, baseType: !3246, size: 128)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !2776)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3243, file: !3223, line: 28, baseType: !3246, size: 128)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3240, file: !3223, line: 31, baseType: !3249, size: 64, offset: 128)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3251)
!3251 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3223, line: 23, flags: DIFlagFwdDecl)
!3252 = !DIDerivedType(tag: DW_TAG_member, scope: !3240, file: !3223, line: 33, baseType: !3253, size: 64, offset: 192)
!3253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3240, file: !3223, line: 33, size: 64, elements: !3254)
!3254 = !{!3255, !3261, !3266}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3253, file: !3223, line: 38, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3253, file: !3223, line: 34, size: 64, elements: !3257)
!3257 = !{!3258, !3259, !3260}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3256, file: !3223, line: 35, baseType: !692, size: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3256, file: !3223, line: 36, baseType: !323, size: 8, offset: 32)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3256, file: !3223, line: 37, baseType: !323, size: 8, offset: 40)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3253, file: !3223, line: 42, baseType: !3262, size: 16)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3253, file: !3223, line: 39, size: 16, elements: !3263)
!3263 = !{!3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3262, file: !3223, line: 40, baseType: !323, size: 8)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3262, file: !3223, line: 41, baseType: !323, size: 8, offset: 8)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3253, file: !3223, line: 46, baseType: !3267, size: 16)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3253, file: !3223, line: 43, size: 16, elements: !3268)
!3268 = !{!3269, !3270}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3267, file: !3223, line: 44, baseType: !323, size: 8)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3267, file: !3223, line: 45, baseType: !323, size: 8, offset: 8)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3212, file: !68, line: 81, baseType: !3272, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3278, !3279, !3280}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3273, file: !68, line: 86, baseType: !3235, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3273, file: !68, line: 87, baseType: !223, size: 64, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3273, file: !68, line: 88, baseType: !223, size: 64, offset: 128)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3273, file: !68, line: 89, baseType: !223, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3273, file: !68, line: 90, baseType: !776, size: 8, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3273, file: !68, line: 92, baseType: !3272, size: 64, offset: 320)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3212, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1463, file: !1138, line: 1463, baseType: !3283, offset: 21184)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1138, line: 739, elements: !983)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1463, file: !1138, line: 1470, baseType: !916, size: 128, align: 64, offset: 21184)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1463, file: !1138, line: 1471, baseType: !1476, size: 32, offset: 21312)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1463, file: !1138, line: 1472, baseType: !109, size: 32, offset: 21344)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1463, file: !1138, line: 1474, baseType: !1462, size: 64, offset: 21376)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1463, file: !1138, line: 1475, baseType: !936, size: 320, offset: 21440)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1463, file: !1138, line: 1478, baseType: !3290, size: 64, offset: 21760)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2100, line: 49, size: 512, elements: !3292)
!3292 = !{!3293, !3294, !3295, !3296, !3297, !3299, !3300, !3301, !3302}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3291, file: !2100, line: 50, baseType: !3290, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3291, file: !2100, line: 51, baseType: !147, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3291, file: !2100, line: 52, baseType: !223, size: 64, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3291, file: !2100, line: 53, baseType: !223, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3291, file: !2100, line: 54, baseType: !3298, size: 64, offset: 256)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3291, file: !2100, line: 56, baseType: !7, size: 32, offset: 320)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3291, file: !2100, line: 58, baseType: !7, size: 32, offset: 352)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3291, file: !2100, line: 59, baseType: !212, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3291, file: !2100, line: 60, baseType: !2599, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1463, file: !1138, line: 1482, baseType: !1476, size: 32, offset: 21824)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1463, file: !1138, line: 1489, baseType: !147, size: 64, offset: 21888)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1463, file: !1138, line: 1504, baseType: !147, size: 64, offset: 21952)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1463, file: !1138, line: 1505, baseType: !215, size: 64, offset: 22016)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1463, file: !1138, line: 1506, baseType: !213, size: 64, offset: 22080)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1463, file: !1138, line: 1507, baseType: !215, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1463, file: !1138, line: 1508, baseType: !215, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1463, file: !1138, line: 1509, baseType: !215, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1463, file: !1138, line: 1510, baseType: !916, size: 128, align: 64, offset: 22208)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1463, file: !1138, line: 1511, baseType: !109, size: 32, offset: 22336)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1463, file: !1138, line: 1515, baseType: !3314, size: 64, offset: 22400)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1490, line: 56, size: 64, elements: !3315)
!3315 = !{!3316}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3314, file: !1490, line: 57, baseType: !1493, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1463, file: !1138, line: 1518, baseType: !3314, size: 64, offset: 22464)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1463, file: !1138, line: 1528, baseType: !916, size: 128, align: 64, offset: 22528)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1463, file: !1138, line: 1552, baseType: !3320, size: 35328, offset: 23040)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3321, line: 430, size: 35328, elements: !3322)
!3321 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3322 = !{!3323, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3352, !3353, !3354, !3355, !3356, !3357, !3360, !3361, !3362, !3363}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3320, file: !3321, line: 432, baseType: !3324, size: 192)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3325, size: 192, elements: !362)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3326, line: 16, size: 64, elements: !3327)
!3326 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3325, file: !3326, line: 17, baseType: !330, size: 16)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3325, file: !3326, line: 18, baseType: !330, size: 16, offset: 16)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3325, file: !3326, line: 19, baseType: !330, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3325, file: !3326, line: 19, baseType: !330, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3325, file: !3326, line: 19, baseType: !330, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3325, file: !3326, line: 19, baseType: !330, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3325, file: !3326, line: 19, baseType: !330, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3325, file: !3326, line: 20, baseType: !330, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3325, file: !3326, line: 20, baseType: !330, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3325, file: !3326, line: 20, baseType: !330, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3325, file: !3326, line: 20, baseType: !330, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3325, file: !3326, line: 20, baseType: !330, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3325, file: !3326, line: 20, baseType: !330, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3320, file: !3321, line: 436, baseType: !223, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3320, file: !3321, line: 440, baseType: !274, size: 16, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3320, file: !3321, line: 441, baseType: !274, size: 16, offset: 272)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3320, file: !3321, line: 442, baseType: !274, size: 16, offset: 288)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3320, file: !3321, line: 443, baseType: !274, size: 16, offset: 304)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3320, file: !3321, line: 447, baseType: !223, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3320, file: !3321, line: 448, baseType: !223, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3320, file: !3321, line: 459, baseType: !3349, size: 256, offset: 448)
!3349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3350, size: 256, elements: !228)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3321, line: 428, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3320, file: !3321, line: 461, baseType: !223, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3320, file: !3321, line: 463, baseType: !223, size: 64, offset: 768)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3320, file: !3321, line: 465, baseType: !223, size: 64, offset: 832)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3320, file: !3321, line: 466, baseType: !223, size: 64, offset: 896)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3320, file: !3321, line: 467, baseType: !223, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3320, file: !3321, line: 473, baseType: !3358, size: 64, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3321, line: 10, flags: DIFlagFwdDecl)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3320, file: !3321, line: 480, baseType: !223, size: 64, offset: 1088)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3320, file: !3321, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3320, file: !3321, line: 491, baseType: !253, size: 32, offset: 1184)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3320, file: !3321, line: 501, baseType: !3364, size: 33792, offset: 1536)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3365, line: 448, size: 33792, elements: !3366)
!3365 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3366 = !{!3367, !3368, !3369, !3531, !3532, !3538, !3539}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3364, file: !3365, line: 461, baseType: !7, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3364, file: !3365, line: 468, baseType: !223, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3364, file: !3365, line: 476, baseType: !3370, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3365, line: 356, size: 33280, align: 512, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3371, file: !3365, line: 358, baseType: !7, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3371, file: !3365, line: 361, baseType: !7, size: 32, offset: 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3371, file: !3365, line: 364, baseType: !213, size: 64, offset: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3371, file: !3365, line: 367, baseType: !213, size: 64, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3371, file: !3365, line: 370, baseType: !213, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3371, file: !3365, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3371, file: !3365, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3371, file: !3365, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3371, file: !3365, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3371, file: !3365, line: 397, baseType: !3383, size: 32768, offset: 512)
!3383 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3365, line: 348, size: 32768, elements: !3384)
!3384 = !{!3385, !3400, !3437, !3514, !3527}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3383, file: !3365, line: 349, baseType: !3386, size: 896)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3365, line: 12, size: 896, elements: !3387)
!3387 = !{!3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3399}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3386, file: !3365, line: 13, baseType: !253, size: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3386, file: !3365, line: 14, baseType: !253, size: 32, offset: 32)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3386, file: !3365, line: 15, baseType: !253, size: 32, offset: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3386, file: !3365, line: 16, baseType: !253, size: 32, offset: 96)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3386, file: !3365, line: 17, baseType: !253, size: 32, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3386, file: !3365, line: 18, baseType: !253, size: 32, offset: 160)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3386, file: !3365, line: 19, baseType: !253, size: 32, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3386, file: !3365, line: 22, baseType: !3396, size: 640, offset: 224)
!3396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 640, elements: !3397)
!3397 = !{!3398}
!3398 = !DISubrange(count: 20)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3386, file: !3365, line: 25, baseType: !253, size: 32, offset: 864)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3383, file: !3365, line: 350, baseType: !3401, size: 4096, align: 128)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3365, line: 34, size: 4096, align: 128, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3422, !3423, !3424, !3426, !3428, !3432}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3401, file: !3365, line: 35, baseType: !330, size: 16)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3401, file: !3365, line: 36, baseType: !330, size: 16, offset: 16)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3401, file: !3365, line: 37, baseType: !330, size: 16, offset: 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3401, file: !3365, line: 38, baseType: !330, size: 16, offset: 48)
!3407 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !3365, line: 39, baseType: !3408, size: 128, offset: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3401, file: !3365, line: 39, size: 128, elements: !3409)
!3409 = !{!3410, !3415}
!3410 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !3365, line: 40, baseType: !3411, size: 128)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3408, file: !3365, line: 40, size: 128, elements: !3412)
!3412 = !{!3413, !3414}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3411, file: !3365, line: 41, baseType: !213, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3411, file: !3365, line: 42, baseType: !213, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !3365, line: 44, baseType: !3416, size: 128)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3408, file: !3365, line: 44, size: 128, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3416, file: !3365, line: 45, baseType: !253, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3416, file: !3365, line: 46, baseType: !253, size: 32, offset: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3416, file: !3365, line: 47, baseType: !253, size: 32, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3416, file: !3365, line: 48, baseType: !253, size: 32, offset: 96)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3401, file: !3365, line: 51, baseType: !253, size: 32, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3401, file: !3365, line: 52, baseType: !253, size: 32, offset: 224)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3401, file: !3365, line: 55, baseType: !3425, size: 1024, offset: 256)
!3425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 1024, elements: !517)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3401, file: !3365, line: 58, baseType: !3427, size: 2048, offset: 1280)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 2048, elements: !366)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3401, file: !3365, line: 60, baseType: !3429, size: 384, offset: 3328)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 384, elements: !3430)
!3430 = !{!3431}
!3431 = !DISubrange(count: 12)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !3401, file: !3365, line: 62, baseType: !3433, size: 384, offset: 3712)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3401, file: !3365, line: 62, size: 384, elements: !3434)
!3434 = !{!3435, !3436}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3433, file: !3365, line: 63, baseType: !3429, size: 384)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3433, file: !3365, line: 64, baseType: !3429, size: 384)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3383, file: !3365, line: 351, baseType: !3438, size: 1088)
!3438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3365, line: 79, size: 1088, elements: !3439)
!3439 = !{!3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3513}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3438, file: !3365, line: 80, baseType: !253, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3438, file: !3365, line: 81, baseType: !253, size: 32, offset: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3438, file: !3365, line: 82, baseType: !253, size: 32, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3438, file: !3365, line: 83, baseType: !253, size: 32, offset: 96)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3438, file: !3365, line: 84, baseType: !253, size: 32, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3438, file: !3365, line: 85, baseType: !253, size: 32, offset: 160)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3438, file: !3365, line: 86, baseType: !253, size: 32, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3438, file: !3365, line: 88, baseType: !3396, size: 640, offset: 224)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3438, file: !3365, line: 89, baseType: !323, size: 8, offset: 864)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3438, file: !3365, line: 90, baseType: !323, size: 8, offset: 872)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3438, file: !3365, line: 91, baseType: !323, size: 8, offset: 880)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3438, file: !3365, line: 92, baseType: !323, size: 8, offset: 888)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3438, file: !3365, line: 93, baseType: !323, size: 8, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3438, file: !3365, line: 94, baseType: !323, size: 8, offset: 904)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3438, file: !3365, line: 95, baseType: !3455, size: 64, offset: 960)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3457, line: 11, size: 128, elements: !3458)
!3457 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3458 = !{!3459, !3460}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3456, file: !3457, line: 12, baseType: !397, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3456, file: !3457, line: 13, baseType: !3461, size: 64, offset: 64)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3463, line: 103, size: 1344, elements: !3464)
!3463 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3493, !3494, !3495}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3462, file: !3463, line: 109, baseType: !223, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3462, file: !3463, line: 110, baseType: !223, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3462, file: !3463, line: 111, baseType: !223, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3462, file: !3463, line: 112, baseType: !223, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3462, file: !3463, line: 113, baseType: !223, size: 64, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3462, file: !3463, line: 114, baseType: !223, size: 64, offset: 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3462, file: !3463, line: 117, baseType: !223, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3462, file: !3463, line: 118, baseType: !223, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3462, file: !3463, line: 119, baseType: !223, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3462, file: !3463, line: 120, baseType: !223, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3462, file: !3463, line: 121, baseType: !223, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3462, file: !3463, line: 122, baseType: !223, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3462, file: !3463, line: 123, baseType: !223, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3462, file: !3463, line: 124, baseType: !223, size: 64, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3462, file: !3463, line: 125, baseType: !223, size: 64, offset: 896)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3462, file: !3463, line: 139, baseType: !223, size: 64, offset: 960)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3462, file: !3463, line: 142, baseType: !223, size: 64, offset: 1024)
!3482 = !DIDerivedType(tag: DW_TAG_member, scope: !3462, file: !3463, line: 144, baseType: !3483, size: 64, offset: 1088)
!3483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3462, file: !3463, line: 144, size: 64, elements: !3484)
!3484 = !{!3485, !3486, !3487}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3483, file: !3463, line: 146, baseType: !330, size: 16)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3483, file: !3463, line: 148, baseType: !213, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3483, file: !3463, line: 150, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3463, line: 59, size: 64, elements: !3489)
!3489 = !{!3490, !3491, !3492}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3488, file: !3463, line: 61, baseType: !213, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3488, file: !3463, line: 63, baseType: !213, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3488, file: !3463, line: 65, baseType: !213, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3462, file: !3463, line: 153, baseType: !223, size: 64, offset: 1152)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3462, file: !3463, line: 154, baseType: !223, size: 64, offset: 1216)
!3495 = !DIDerivedType(tag: DW_TAG_member, scope: !3462, file: !3463, line: 156, baseType: !3496, size: 64, offset: 1280)
!3496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3462, file: !3463, line: 156, size: 64, elements: !3497)
!3497 = !{!3498, !3499, !3500}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3496, file: !3463, line: 158, baseType: !330, size: 16)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3496, file: !3463, line: 160, baseType: !213, size: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3496, file: !3463, line: 162, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3463, line: 69, size: 64, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3501, file: !3463, line: 71, baseType: !213, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3501, file: !3463, line: 73, baseType: !213, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3501, file: !3463, line: 75, baseType: !213, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3501, file: !3463, line: 77, baseType: !213, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3501, file: !3463, line: 80, baseType: !213, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3501, file: !3463, line: 83, baseType: !213, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3501, file: !3463, line: 86, baseType: !213, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3501, file: !3463, line: 88, baseType: !213, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3501, file: !3463, line: 93, baseType: !213, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3501, file: !3463, line: 100, baseType: !213, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3438, file: !3365, line: 96, baseType: !253, size: 32, offset: 1024)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3383, file: !3365, line: 352, baseType: !3515, size: 4608, align: 512)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3365, line: 333, size: 4608, align: 512, elements: !3516)
!3516 = !{!3517, !3518, !3525}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3515, file: !3365, line: 334, baseType: !3401, size: 4096, align: 128)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3515, file: !3365, line: 335, baseType: !3519, size: 512, offset: 4096)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3365, line: 312, size: 512, elements: !3520)
!3520 = !{!3521, !3522, !3523}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3519, file: !3365, line: 313, baseType: !213, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3519, file: !3365, line: 314, baseType: !213, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3519, file: !3365, line: 315, baseType: !3524, size: 384, offset: 128)
!3524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 384, elements: !1929)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3515, file: !3365, line: 336, baseType: !3526, offset: 4608)
!3526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, elements: !1846)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3383, file: !3365, line: 353, baseType: !3528, size: 32768)
!3528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 32768, elements: !3529)
!3529 = !{!3530}
!3530 = !DISubrange(count: 4096)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3364, file: !3365, line: 484, baseType: !3370, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3364, file: !3365, line: 491, baseType: !3533, size: 128, offset: 256)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3365, line: 404, size: 128, elements: !3534)
!3534 = !{!3535, !3536, !3537}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3533, file: !3365, line: 424, baseType: !213, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3533, file: !3365, line: 432, baseType: !7, size: 32, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3533, file: !3365, line: 440, baseType: !7, size: 32, offset: 96)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3364, file: !3365, line: 498, baseType: !3533, size: 128, offset: 384)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3364, file: !3365, line: 508, baseType: !3371, size: 33280, align: 512, offset: 512)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1439, file: !1440, line: 16, baseType: !1449, size: 192, offset: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1439, file: !1440, line: 17, baseType: !315, size: 32, offset: 704)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !587, file: !14, line: 1240, baseType: !147, size: 64, offset: 6912)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !587, file: !14, line: 1243, baseType: !253, size: 32, offset: 6976)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !587, file: !14, line: 1245, baseType: !1196, size: 64, offset: 7040)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !587, file: !14, line: 1246, baseType: !1196, size: 64, offset: 7104)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !587, file: !14, line: 1248, baseType: !254, size: 32, offset: 7168)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !587, file: !14, line: 1249, baseType: !3548, size: 64, offset: 7232)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !587, file: !14, line: 1252, baseType: !3551, size: 256, offset: 7296)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !517)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !587, file: !14, line: 1253, baseType: !3553, size: 128, offset: 7552)
!3553 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3554, line: 21, baseType: !3555)
!3554 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3554, line: 19, size: 128, elements: !3556)
!3556 = !{!3557}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3555, file: !3554, line: 20, baseType: !3558, size: 128)
!3558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 128, elements: !2776)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !587, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !587, file: !14, line: 1261, baseType: !696, size: 256, offset: 7744)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !587, file: !14, line: 1267, baseType: !220, size: 64, offset: 8000)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !587, file: !14, line: 1269, baseType: !533, size: 64, offset: 8064)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !587, file: !14, line: 1271, baseType: !3564, size: 448, offset: 8128)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1205, line: 63, size: 448, elements: !3565)
!3565 = !{!3566, !3571, !3572, !3573, !3574, !3575, !3576}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3564, file: !1205, line: 64, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!223, !3570, !1203}
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3564, file: !1205, line: 66, baseType: !3567, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3564, file: !1205, line: 69, baseType: !397, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3564, file: !1205, line: 70, baseType: !109, size: 32, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3564, file: !1205, line: 71, baseType: !7, size: 32, offset: 224)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3564, file: !1205, line: 74, baseType: !188, size: 128, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3564, file: !1205, line: 85, baseType: !3577, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !587, file: !14, line: 1274, baseType: !700, size: 64, offset: 8576)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !587, file: !14, line: 1280, baseType: !700, size: 64, offset: 8640)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !587, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !587, file: !14, line: 1286, baseType: !2510, size: 32, offset: 8736)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !587, file: !14, line: 1289, baseType: !1016, size: 64, offset: 8768)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !587, file: !14, line: 1290, baseType: !1064, size: 64, offset: 8832)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !587, file: !14, line: 1297, baseType: !2023, size: 64, offset: 8896)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !587, file: !14, line: 1304, baseType: !3586, size: 64, offset: 8960)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3587, line: 49, size: 64, elements: !3588)
!3587 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3588 = !{!3589}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3586, file: !3587, line: 50, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3587, line: 41, size: 512, align: 512, elements: !3592)
!3592 = !{!3593, !3594, !3599}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3591, file: !3587, line: 43, baseType: !295, size: 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3591, file: !3587, line: 45, baseType: !3595, size: 192, offset: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3587, line: 29, size: 192, elements: !3596)
!3596 = !{!3597, !3598}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3595, file: !3587, line: 30, baseType: !188, size: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3595, file: !3587, line: 32, baseType: !397, size: 64, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3591, file: !3587, line: 46, baseType: !397, size: 64, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !587, file: !14, line: 1305, baseType: !3586, size: 64, offset: 9024)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !587, file: !14, line: 1306, baseType: !916, size: 128, align: 64, offset: 9088)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !587, file: !14, line: 1307, baseType: !954, size: 256, offset: 9216)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !587, file: !14, line: 1309, baseType: !696, size: 256, offset: 9472)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !587, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !587, file: !14, line: 1317, baseType: !295, size: 32, align: 512, offset: 10240)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !587, file: !14, line: 1318, baseType: !188, size: 128, offset: 10304)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !587, file: !14, line: 1320, baseType: !295, size: 32, offset: 10432)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !587, file: !14, line: 1321, baseType: !188, size: 128, offset: 10496)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !581, file: !582, line: 73, baseType: !109, size: 32, offset: 128)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !581, file: !582, line: 74, baseType: !3611, size: 64, offset: 192)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1870, line: 42, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !535, file: !477, line: 141, baseType: !3615, size: 64, offset: 704)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!109, !1266, !776}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !535, file: !477, line: 142, baseType: !3619, size: 64, offset: 768)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!475, !475, !3622}
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !476, file: !477, line: 96, baseType: !586, size: 64, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !476, file: !477, line: 97, baseType: !223, size: 64, offset: 896)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !476, file: !477, line: 98, baseType: !147, size: 64, offset: 960)
!3627 = !DIDerivedType(tag: DW_TAG_member, scope: !476, file: !477, line: 100, baseType: !3628, size: 128, offset: 1024)
!3628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !477, line: 100, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3628, file: !477, line: 101, baseType: !188, size: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3628, file: !477, line: 102, baseType: !3632, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !476, file: !477, line: 104, baseType: !188, size: 128, offset: 1152)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !476, file: !477, line: 105, baseType: !188, size: 128, offset: 1280)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !476, file: !477, line: 113, baseType: !3636, size: 128, offset: 1408)
!3636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !476, file: !477, line: 109, size: 128, elements: !3637)
!3637 = !{!3638, !3639, !3640}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3636, file: !477, line: 110, baseType: !940, size: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3636, file: !477, line: 111, baseType: !491, size: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3636, file: !477, line: 112, baseType: !916, size: 128, align: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !469, file: !14, line: 1968, baseType: !3642, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!220, !475, !440, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3647, line: 10, size: 128, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3648 = !{!3649, !3650}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3646, file: !3647, line: 11, baseType: !739, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3646, file: !3647, line: 12, baseType: !147, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !469, file: !14, line: 1969, baseType: !3652, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!109, !3611, !440, !109}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !469, file: !14, line: 1970, baseType: !3656, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!463, !440, !109, !776}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !469, file: !14, line: 1972, baseType: !3660, size: 64, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{!109, !475, !361, !109}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !469, file: !14, line: 1974, baseType: !3664, size: 64, offset: 320)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!109, !3611, !440, !475, !403, !776}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !469, file: !14, line: 1976, baseType: !3668, size: 64, offset: 384)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{!109, !475, !440, !475}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !469, file: !14, line: 1977, baseType: !3672, size: 64, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!109, !440, !475}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !469, file: !14, line: 1978, baseType: !3676, size: 64, offset: 512)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!109, !3611, !440, !475, !220}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !469, file: !14, line: 1980, baseType: !3680, size: 64, offset: 576)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!109, !3611, !440, !475, !403}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !469, file: !14, line: 1982, baseType: !3672, size: 64, offset: 640)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !469, file: !14, line: 1983, baseType: !3685, size: 64, offset: 704)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!109, !3611, !440, !475, !403, !591}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !469, file: !14, line: 1985, baseType: !3689, size: 64, offset: 768)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!109, !3611, !440, !475, !440, !475, !7}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !469, file: !14, line: 1987, baseType: !3693, size: 64, offset: 832)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!109, !3611, !475, !3696}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3698)
!3698 = !{!3699, !3700, !3701, !3711, !3720, !3721, !3726, !3727, !3728}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3697, file: !14, line: 227, baseType: !7, size: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3697, file: !14, line: 228, baseType: !403, size: 16, offset: 32)
!3701 = !DIDerivedType(tag: DW_TAG_member, scope: !3697, file: !14, line: 241, baseType: !3702, size: 32, offset: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3697, file: !14, line: 241, size: 32, elements: !3703)
!3703 = !{!3704, !3705}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3702, file: !14, line: 242, baseType: !446, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3702, file: !14, line: 243, baseType: !3706, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3707, line: 16, baseType: !3708)
!3707 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3707, line: 14, size: 32, elements: !3709)
!3709 = !{!3710}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3708, file: !3707, line: 15, baseType: !451, size: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, scope: !3697, file: !14, line: 245, baseType: !3712, size: 32, offset: 96)
!3712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3697, file: !14, line: 245, size: 32, elements: !3713)
!3713 = !{!3714, !3715}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3712, file: !14, line: 246, baseType: !455, size: 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3712, file: !14, line: 247, baseType: !3716, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3707, line: 20, baseType: !3717)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3707, line: 18, size: 32, elements: !3718)
!3718 = !{!3719}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3717, file: !3707, line: 19, baseType: !459, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3697, file: !14, line: 249, baseType: !596, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3697, file: !14, line: 250, baseType: !3722, size: 128, offset: 192)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1197, line: 13, size: 128, elements: !3723)
!3723 = !{!3724, !3725}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3722, file: !1197, line: 14, baseType: !1196, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3722, file: !1197, line: 15, baseType: !397, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3697, file: !14, line: 251, baseType: !3722, size: 128, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3697, file: !14, line: 252, baseType: !3722, size: 128, offset: 448)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3697, file: !14, line: 259, baseType: !1786, size: 64, offset: 576)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !469, file: !14, line: 1988, baseType: !3730, size: 64, offset: 896)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!109, !3611, !1266, !3733, !253, !7}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3735, line: 22, size: 1280, elements: !3736)
!3735 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3736 = !{!3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3734, file: !3735, line: 23, baseType: !253, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3734, file: !3735, line: 24, baseType: !403, size: 16, offset: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3734, file: !3735, line: 25, baseType: !7, size: 32, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3734, file: !3735, line: 26, baseType: !1908, size: 32, offset: 96)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3734, file: !3735, line: 27, baseType: !213, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3734, file: !3735, line: 28, baseType: !213, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3734, file: !3735, line: 41, baseType: !213, size: 64, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3734, file: !3735, line: 42, baseType: !591, size: 32, offset: 320)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3734, file: !3735, line: 43, baseType: !591, size: 32, offset: 352)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3734, file: !3735, line: 44, baseType: !446, size: 32, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3734, file: !3735, line: 45, baseType: !455, size: 32, offset: 416)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3734, file: !3735, line: 46, baseType: !596, size: 64, offset: 448)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3734, file: !3735, line: 47, baseType: !3722, size: 128, offset: 512)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3734, file: !3735, line: 48, baseType: !3722, size: 128, offset: 640)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3734, file: !3735, line: 49, baseType: !3722, size: 128, offset: 768)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3734, file: !3735, line: 50, baseType: !3722, size: 128, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3734, file: !3735, line: 51, baseType: !213, size: 64, offset: 1024)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3734, file: !3735, line: 52, baseType: !213, size: 64, offset: 1088)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3734, file: !3735, line: 53, baseType: !253, size: 32, offset: 1152)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3734, file: !3735, line: 54, baseType: !253, size: 32, offset: 1184)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3734, file: !3735, line: 55, baseType: !213, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !469, file: !14, line: 1990, baseType: !3759, size: 64, offset: 960)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!393, !475, !361, !408}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !469, file: !14, line: 1991, baseType: !3763, size: 64, offset: 1024)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DISubroutineType(types: !3765)
!3765 = !{!109, !440, !3766, !213, !213}
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !469, file: !14, line: 1993, baseType: !3769, size: 64, offset: 1088)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!109, !440, !109}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !469, file: !14, line: 1994, baseType: !3773, size: 64, offset: 1152)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!109, !440, !475, !1786, !7, !403}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !469, file: !14, line: 1997, baseType: !3777, size: 64, offset: 1216)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!109, !3611, !440, !1786, !403}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !469, file: !14, line: 1999, baseType: !3781, size: 64, offset: 1280)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!463, !3611, !475, !109}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !469, file: !14, line: 2001, baseType: !3785, size: 64, offset: 1344)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!109, !3611, !475, !463, !109}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !469, file: !14, line: 2003, baseType: !3789, size: 64, offset: 1408)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!109, !3611, !475, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !469, file: !14, line: 2005, baseType: !3795, size: 64, offset: 1472)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!109, !475, !3792}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !469, file: !14, line: 2006, baseType: !3799, size: 64, offset: 1536)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!3802, !440}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3804)
!3804 = !{!3805, !3812}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3803, file: !14, line: 3193, baseType: !3806, size: 128)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3807, line: 296, size: 128, elements: !3808)
!3807 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3806, file: !3807, line: 297, baseType: !295, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3806, file: !3807, line: 299, baseType: !1208, size: 32, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3806, file: !3807, line: 300, baseType: !147, size: 64, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3803, file: !14, line: 3194, baseType: !253, size: 32, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !441, file: !14, line: 655, baseType: !586, size: 64, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !441, file: !14, line: 656, baseType: !436, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !441, file: !14, line: 659, baseType: !147, size: 64, offset: 576)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !441, file: !14, line: 663, baseType: !223, size: 64, offset: 640)
!3817 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !14, line: 671, baseType: !3818, size: 32, offset: 704)
!3818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !14, line: 671, size: 32, elements: !3819)
!3819 = !{!3820, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3818, file: !14, line: 672, baseType: !3821, size: 32)
!3821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3818, file: !14, line: 673, baseType: !7, size: 32)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !441, file: !14, line: 675, baseType: !591, size: 32, offset: 736)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !441, file: !14, line: 676, baseType: !596, size: 64, offset: 768)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !441, file: !14, line: 677, baseType: !3722, size: 128, offset: 832)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !441, file: !14, line: 678, baseType: !3722, size: 128, offset: 960)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !441, file: !14, line: 679, baseType: !3722, size: 128, offset: 1088)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !441, file: !14, line: 680, baseType: !295, size: 32, offset: 1216)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !441, file: !14, line: 681, baseType: !274, size: 16, offset: 1248)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !441, file: !14, line: 682, baseType: !323, size: 8, offset: 1264)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !441, file: !14, line: 683, baseType: !323, size: 8, offset: 1272)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !441, file: !14, line: 684, baseType: !1344, size: 64, offset: 1280)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !441, file: !14, line: 691, baseType: !223, size: 64, offset: 1344)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !441, file: !14, line: 692, baseType: !1356, size: 320, offset: 1408)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !441, file: !14, line: 694, baseType: !223, size: 64, offset: 1728)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !441, file: !14, line: 695, baseType: !223, size: 64, offset: 1792)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !441, file: !14, line: 697, baseType: !940, size: 128, offset: 1856)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !441, file: !14, line: 698, baseType: !188, size: 128, offset: 1984)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !441, file: !14, line: 707, baseType: !188, size: 128, offset: 2112)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !441, file: !14, line: 708, baseType: !188, size: 128, offset: 2240)
!3841 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !14, line: 709, baseType: !3842, size: 128, offset: 2368)
!3842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !14, line: 709, size: 128, elements: !3843)
!3843 = !{!3844, !3845}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3842, file: !14, line: 710, baseType: !1064, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3842, file: !14, line: 711, baseType: !916, size: 128, align: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !441, file: !14, line: 713, baseType: !702, size: 64, offset: 2496)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !441, file: !14, line: 714, baseType: !702, size: 64, offset: 2560)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !441, file: !14, line: 715, baseType: !315, size: 32, offset: 2624)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !441, file: !14, line: 716, baseType: !315, size: 32, offset: 2656)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !441, file: !14, line: 717, baseType: !315, size: 32, offset: 2688)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !441, file: !14, line: 719, baseType: !315, size: 32, offset: 2720)
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !14, line: 721, baseType: !3853, size: 64, offset: 2752)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !14, line: 721, size: 64, elements: !3854)
!3854 = !{!3855, !3856}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3853, file: !14, line: 722, baseType: !2054, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3853, file: !14, line: 723, baseType: !1087, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !441, file: !14, line: 725, baseType: !3858, size: 64, offset: 2816)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !441, file: !14, line: 726, baseType: !437, size: 1536, align: 64, offset: 2880)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !441, file: !14, line: 727, baseType: !188, size: 128, offset: 4416)
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !441, file: !14, line: 728, baseType: !3863, size: 64, offset: 4544)
!3863 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !441, file: !14, line: 728, size: 64, elements: !3864)
!3864 = !{!3865, !3866, !3869, !3870}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3863, file: !14, line: 729, baseType: !2460, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3863, file: !14, line: 730, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3863, file: !14, line: 731, baseType: !361, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3863, file: !14, line: 732, baseType: !7, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !441, file: !14, line: 735, baseType: !254, size: 32, offset: 4608)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !441, file: !14, line: 738, baseType: !254, size: 32, offset: 4640)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !441, file: !14, line: 739, baseType: !3548, size: 64, offset: 4672)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !441, file: !14, line: 750, baseType: !147, size: 64, offset: 4736)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !437, file: !14, line: 474, baseType: !3806, size: 128, offset: 64)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !437, file: !14, line: 475, baseType: !1356, size: 320, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !437, file: !14, line: 476, baseType: !1208, size: 32, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !437, file: !14, line: 477, baseType: !315, size: 32, offset: 544)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !437, file: !14, line: 482, baseType: !1642, size: 128, offset: 576)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !437, file: !14, line: 483, baseType: !223, size: 64, offset: 704)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !437, file: !14, line: 484, baseType: !223, size: 64, offset: 768)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !437, file: !14, line: 485, baseType: !3883, size: 64, offset: 832)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3885)
!3885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3886)
!3886 = !{!3887, !3891, !3961, !3965, !3969, !3975, !3979, !3983, !3988, !3992, !3996, !4000, !4001, !4005, !4009, !4013, !4018, !4022, !4029, !4030}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3885, file: !14, line: 405, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!109, !2247, !1099}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3885, file: !14, line: 406, baseType: !3892, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!109, !1786, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3897)
!3897 = !{!3898, !3928, !3942}
!3898 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !38, line: 295, baseType: !3899, size: 512)
!3899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3896, file: !38, line: 295, size: 512, elements: !3900)
!3900 = !{!3901, !3927}
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !3899, file: !38, line: 296, baseType: !3902, size: 448)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3899, file: !38, line: 296, size: 448, elements: !3903)
!3903 = !{!3904, !3905, !3914, !3915, !3916, !3925, !3926}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3902, file: !38, line: 298, baseType: !223, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, scope: !3902, file: !38, line: 299, baseType: !3906, size: 128, offset: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3902, file: !38, line: 299, size: 128, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3906, file: !38, line: 300, baseType: !188, size: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, scope: !3906, file: !38, line: 302, baseType: !3910, size: 128)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3906, file: !38, line: 302, size: 128, elements: !3911)
!3911 = !{!3912, !3913}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3910, file: !38, line: 303, baseType: !147, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3910, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3902, file: !38, line: 310, baseType: !436, size: 64, offset: 192)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3902, file: !38, line: 311, baseType: !223, size: 64, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_member, scope: !3902, file: !38, line: 312, baseType: !3917, size: 64, offset: 320)
!3917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3902, file: !38, line: 312, size: 64, elements: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3917, file: !38, line: 313, baseType: !147, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3917, file: !38, line: 314, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3922)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3923)
!3923 = !{!3924}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3922, file: !38, line: 256, baseType: !223, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3902, file: !38, line: 316, baseType: !315, size: 32, offset: 384)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3902, file: !38, line: 317, baseType: !315, size: 32, offset: 416)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3899, file: !38, line: 323, baseType: !2248, size: 512, align: 128)
!3928 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !38, line: 325, baseType: !3929, size: 512, offset: 512)
!3929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3896, file: !38, line: 325, size: 512, elements: !3930)
!3930 = !{!3931, !3941}
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !38, line: 326, baseType: !3932, size: 320)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3929, file: !38, line: 326, size: 320, elements: !3933)
!3933 = !{!3934, !3935, !3936, !3937, !3938, !3939, !3940}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3932, file: !38, line: 327, baseType: !223, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3932, file: !38, line: 328, baseType: !223, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3932, file: !38, line: 329, baseType: !223, size: 64, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3932, file: !38, line: 331, baseType: !315, size: 32, offset: 192)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3932, file: !38, line: 332, baseType: !315, size: 32, offset: 224)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3932, file: !38, line: 333, baseType: !315, size: 32, offset: 256)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3932, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3929, file: !38, line: 339, baseType: !2248, size: 512, align: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3896, file: !38, line: 341, baseType: !3943, size: 512, offset: 1024)
!3943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3896, file: !38, line: 341, size: 512, elements: !3944)
!3944 = !{!3945, !3954, !3960}
!3945 = !DIDerivedType(tag: DW_TAG_member, scope: !3943, file: !38, line: 342, baseType: !3946, size: 384)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3943, file: !38, line: 342, size: 384, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3951, !3952, !3953}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3946, file: !38, line: 343, baseType: !223, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3946, file: !38, line: 344, baseType: !223, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3946, file: !38, line: 346, baseType: !147, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3946, file: !38, line: 347, baseType: !147, size: 64, offset: 192)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3946, file: !38, line: 348, baseType: !147, size: 64, offset: 256)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3946, file: !38, line: 349, baseType: !147, size: 64, offset: 320)
!3954 = !DIDerivedType(tag: DW_TAG_member, scope: !3943, file: !38, line: 352, baseType: !3955, size: 256)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3943, file: !38, line: 352, size: 256, elements: !3956)
!3956 = !{!3957, !3958, !3959}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3955, file: !38, line: 353, baseType: !223, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3955, file: !38, line: 354, baseType: !223, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3955, file: !38, line: 356, baseType: !188, size: 128, offset: 128)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3943, file: !38, line: 359, baseType: !2248, size: 512, align: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3885, file: !14, line: 409, baseType: !3962, size: 64, offset: 128)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!109, !436, !1099}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3885, file: !14, line: 412, baseType: !3966, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!776, !436, !3895}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3885, file: !14, line: 414, baseType: !3970, size: 64, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !3973}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3885, file: !14, line: 416, baseType: !3976, size: 64, offset: 320)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!109, !1786, !436, !596, !7, !3298, !2475}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3885, file: !14, line: 419, baseType: !3980, size: 64, offset: 384)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!109, !1786, !436, !596, !7, !7, !2247, !147}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3885, file: !14, line: 424, baseType: !3984, size: 64, offset: 448)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!3987, !436, !3987}
!3987 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !189, line: 131, baseType: !213)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3885, file: !14, line: 425, baseType: !3989, size: 64, offset: 512)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{null, !3895, !408, !408}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3885, file: !14, line: 426, baseType: !3993, size: 64, offset: 576)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!776, !3895, !1208}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3885, file: !14, line: 427, baseType: !3997, size: 64, offset: 640)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !3895}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3885, file: !14, line: 428, baseType: !2073, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3885, file: !14, line: 433, baseType: !4002, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!109, !436, !3895, !3895, !74}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3885, file: !14, line: 435, baseType: !4006, size: 64, offset: 832)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DISubroutineType(types: !4008)
!4008 = !{!109, !3895}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3885, file: !14, line: 436, baseType: !4010, size: 64, offset: 896)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!776, !3895, !408, !408}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3885, file: !14, line: 438, baseType: !4014, size: 64, offset: 960)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3895, !4017, !4017}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3885, file: !14, line: 439, baseType: !4019, size: 64, offset: 1024)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!109, !436, !2247}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3885, file: !14, line: 442, baseType: !4023, size: 64, offset: 1088)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!109, !4026, !1786, !4028}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3885, file: !14, line: 444, baseType: !2467, size: 64, offset: 1152)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3885, file: !14, line: 445, baseType: !4031, size: 64, offset: 1216)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!109, !2076, !2098}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !437, file: !14, line: 486, baseType: !223, size: 64, offset: 896)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !437, file: !14, line: 487, baseType: !1356, size: 320, offset: 960)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !437, file: !14, line: 488, baseType: !2510, size: 32, offset: 1280)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !437, file: !14, line: 489, baseType: !295, size: 32, offset: 1312)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !437, file: !14, line: 490, baseType: !188, size: 128, offset: 1344)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !437, file: !14, line: 491, baseType: !147, size: 64, offset: 1472)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !427, file: !387, line: 180, baseType: !4041, size: 64, offset: 320)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!393, !1786, !288, !426, !361, !596, !408}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !427, file: !387, line: 182, baseType: !4041, size: 64, offset: 384)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !427, file: !387, line: 184, baseType: !4046, size: 64, offset: 448)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!109, !1786, !288, !426, !2138}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !415, file: !387, line: 90, baseType: !4050, size: 64, offset: 192)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !415, file: !387, line: 91, baseType: !4052, size: 64, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !377, file: !283, line: 120, baseType: !4054, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4055, size: 64)
!4055 = !DISubroutineType(types: !4056)
!4056 = !{!4057, !344}
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4060)
!4060 = !{!4061, !4062, !4066, !4069, !4075, !4079}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4059, file: !82, line: 40, baseType: !81, size: 32)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4059, file: !82, line: 41, baseType: !4063, size: 64, offset: 64)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!776}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4059, file: !82, line: 42, baseType: !4067, size: 64, offset: 128)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !146)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4059, file: !82, line: 43, baseType: !4070, size: 64, offset: 192)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!2599, !4073}
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4059, file: !82, line: 44, baseType: !4076, size: 64, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!2599}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4059, file: !82, line: 45, baseType: !739, size: 64, offset: 320)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !377, file: !283, line: 121, baseType: !4081, size: 64, offset: 256)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{!2599, !344}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !377, file: !283, line: 122, baseType: !4085, size: 64, offset: 320)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{null, !344, !4088, !4089}
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !282, file: !283, line: 70, baseType: !4091, size: 64, offset: 384)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !611, line: 190, size: 1152, elements: !4093)
!4093 = !{!4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4185, !4186, !4187, !4188, !4189, !4192}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4092, file: !611, line: 191, baseType: !315, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4092, file: !611, line: 192, baseType: !315, size: 32, offset: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4092, file: !611, line: 202, baseType: !4091, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4092, file: !611, line: 203, baseType: !220, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4092, file: !611, line: 205, baseType: !808, size: 192, align: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4092, file: !611, line: 207, baseType: !2599, size: 64, offset: 384)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4092, file: !611, line: 208, baseType: !7, size: 32, offset: 448)
!4101 = !DIDerivedType(tag: DW_TAG_member, scope: !4092, file: !611, line: 209, baseType: !4102, size: 256, offset: 512)
!4102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4092, file: !611, line: 209, size: 256, elements: !4103)
!4103 = !{!4104, !4113, !4117}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4102, file: !611, line: 210, baseType: !4105, size: 256)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !611, line: 153, size: 256, elements: !4106)
!4106 = !{!4107, !4108, !4109, !4112}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4105, file: !611, line: 154, baseType: !223, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4105, file: !611, line: 156, baseType: !1645, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4105, file: !611, line: 162, baseType: !4110, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !611, line: 162, flags: DIFlagFwdDecl)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4105, file: !611, line: 167, baseType: !223, size: 64, offset: 192)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4102, file: !611, line: 211, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !611, line: 170, size: 64, elements: !4115)
!4115 = !{!4116}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4114, file: !611, line: 171, baseType: !4091, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4102, file: !611, line: 212, baseType: !4118, size: 256)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !611, line: 174, size: 256, elements: !4119)
!4119 = !{!4120, !4180, !4183, !4184}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4118, file: !611, line: 175, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4123)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !611, line: 271, size: 768, elements: !4124)
!4124 = !{!4125, !4145, !4149, !4153, !4157, !4161, !4165, !4169, !4170, !4171, !4172, !4176}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4123, file: !611, line: 276, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!109, !4129}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !611, line: 251, size: 1216, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4130, file: !611, line: 253, baseType: !4091, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4130, file: !611, line: 254, baseType: !1786, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4130, file: !611, line: 255, baseType: !1136, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4130, file: !611, line: 256, baseType: !147, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4130, file: !611, line: 259, baseType: !696, size: 256, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4130, file: !611, line: 260, baseType: !696, size: 256, offset: 512)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4130, file: !611, line: 261, baseType: !109, size: 32, offset: 768)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4130, file: !611, line: 262, baseType: !188, size: 128, offset: 832)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4130, file: !611, line: 263, baseType: !361, size: 64, offset: 960)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4130, file: !611, line: 265, baseType: !408, size: 64, offset: 1024)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4130, file: !611, line: 266, baseType: !776, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4130, file: !611, line: 267, baseType: !776, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4130, file: !611, line: 268, baseType: !2183, size: 64, offset: 1152)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4123, file: !611, line: 277, baseType: !4146, size: 64, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{null, !4129}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4123, file: !611, line: 290, baseType: !4150, size: 64, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!109, !1136, !147}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4123, file: !611, line: 292, baseType: !4154, size: 64, offset: 192)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!147, !1136, !2067}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4123, file: !611, line: 293, baseType: !4158, size: 64, offset: 256)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!147, !1136, !147, !2067}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4123, file: !611, line: 294, baseType: !4162, size: 64, offset: 320)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !1136, !147}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4123, file: !611, line: 296, baseType: !4166, size: 64, offset: 384)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!393, !4129, !361, !408, !596}
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4123, file: !611, line: 306, baseType: !408, size: 64, offset: 448)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4123, file: !611, line: 313, baseType: !776, size: 8, offset: 512)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4123, file: !611, line: 314, baseType: !4166, size: 64, offset: 576)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4123, file: !611, line: 317, baseType: !4173, size: 64, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!2125, !4129, !2127}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4123, file: !611, line: 320, baseType: !4177, size: 64, offset: 704)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!109, !4129, !2138}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4118, file: !611, line: 176, baseType: !4181, size: 64, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !611, line: 35, flags: DIFlagFwdDecl)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4118, file: !611, line: 177, baseType: !596, size: 64, offset: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4118, file: !611, line: 178, baseType: !4091, size: 64, offset: 192)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4092, file: !611, line: 215, baseType: !147, size: 64, offset: 768)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4092, file: !611, line: 221, baseType: !213, size: 64, offset: 832)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4092, file: !611, line: 223, baseType: !274, size: 16, offset: 896)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4092, file: !611, line: 224, baseType: !403, size: 16, offset: 912)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4092, file: !611, line: 225, baseType: !4190, size: 64, offset: 960)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !611, line: 36, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4092, file: !611, line: 227, baseType: !916, size: 128, align: 64, offset: 1024)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !282, file: !283, line: 71, baseType: !4194, size: 32, offset: 448)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4195, line: 19, size: 32, elements: !4196)
!4195 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4196 = !{!4197}
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4194, file: !4195, line: 20, baseType: !1476, size: 32)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !282, file: !283, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !282, file: !283, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !282, file: !283, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !282, file: !283, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !282, file: !283, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !279, file: !94, line: 707, baseType: !278, size: 64, offset: 512)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !279, file: !94, line: 709, baseType: !4205, size: 64, offset: 576)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !279, file: !94, line: 711, baseType: !220, size: 64, offset: 640)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !279, file: !94, line: 712, baseType: !4209, size: 64, offset: 704)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4211)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4212)
!4212 = !{!4213, !4214, !4215, !4221, !4226, !4230}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4211, file: !94, line: 90, baseType: !220, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4211, file: !94, line: 91, baseType: !412, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4211, file: !94, line: 92, baseType: !4216, size: 64, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!109, !4219, !356}
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4211, file: !94, line: 93, baseType: !4222, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!361, !4219, !4225, !4088, !4089}
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4211, file: !94, line: 95, baseType: !4227, size: 64, offset: 256)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{null, !278}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4211, file: !94, line: 97, baseType: !4231, size: 64, offset: 320)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4233)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4234)
!4234 = !{!4235, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4233, file: !101, line: 287, baseType: !4236, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!109, !278}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4233, file: !101, line: 288, baseType: !4227, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4233, file: !101, line: 289, baseType: !4236, size: 64, offset: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4233, file: !101, line: 290, baseType: !4236, size: 64, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4233, file: !101, line: 291, baseType: !4236, size: 64, offset: 256)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4233, file: !101, line: 292, baseType: !4236, size: 64, offset: 320)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4233, file: !101, line: 293, baseType: !4236, size: 64, offset: 384)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4233, file: !101, line: 294, baseType: !4236, size: 64, offset: 448)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4233, file: !101, line: 295, baseType: !4236, size: 64, offset: 512)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4233, file: !101, line: 296, baseType: !4236, size: 64, offset: 576)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4233, file: !101, line: 297, baseType: !4236, size: 64, offset: 640)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4233, file: !101, line: 298, baseType: !4236, size: 64, offset: 704)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4233, file: !101, line: 299, baseType: !4236, size: 64, offset: 768)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4233, file: !101, line: 300, baseType: !4236, size: 64, offset: 832)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4233, file: !101, line: 301, baseType: !4236, size: 64, offset: 896)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4233, file: !101, line: 302, baseType: !4236, size: 64, offset: 960)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4233, file: !101, line: 303, baseType: !4236, size: 64, offset: 1024)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4233, file: !101, line: 304, baseType: !4236, size: 64, offset: 1088)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4233, file: !101, line: 305, baseType: !4236, size: 64, offset: 1152)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4233, file: !101, line: 306, baseType: !4236, size: 64, offset: 1216)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4233, file: !101, line: 307, baseType: !4236, size: 64, offset: 1280)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4233, file: !101, line: 308, baseType: !4236, size: 64, offset: 1344)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4233, file: !101, line: 309, baseType: !4236, size: 64, offset: 1408)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !279, file: !94, line: 714, baseType: !4262, size: 64, offset: 768)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4265, line: 80, size: 1344, elements: !4266)
!4265 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4266 = !{!4267, !4268, !4269, !4270, !4271, !4272, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4345}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4264, file: !4265, line: 81, baseType: !220, size: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4264, file: !4265, line: 82, baseType: !220, size: 64, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4264, file: !4265, line: 83, baseType: !412, size: 64, offset: 128)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4264, file: !4265, line: 84, baseType: !412, size: 64, offset: 192)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4264, file: !4265, line: 85, baseType: !412, size: 64, offset: 256)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4264, file: !4265, line: 87, baseType: !4273, size: 64, offset: 320)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!109, !278, !4276}
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4278)
!4278 = !{!4279, !4280, !4281, !4282, !4283, !4284, !4285, !4298, !4308, !4309, !4310, !4311, !4312, !4320, !4321, !4322, !4323, !4324, !4325}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4277, file: !88, line: 97, baseType: !220, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4277, file: !88, line: 98, baseType: !4262, size: 64, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4277, file: !88, line: 100, baseType: !625, size: 64, offset: 128)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4277, file: !88, line: 101, baseType: !220, size: 64, offset: 192)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4277, file: !88, line: 103, baseType: !776, size: 8, offset: 256)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4277, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4277, file: !88, line: 106, baseType: !4286, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4288)
!4288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4289, line: 282, size: 1600, elements: !4290)
!4289 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4290 = !{!4291, !4292, !4293, !4297}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4288, file: !4289, line: 283, baseType: !3551, size: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4288, file: !4289, line: 284, baseType: !3551, size: 256, offset: 256)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4288, file: !4289, line: 285, baseType: !4294, size: 1024, offset: 512)
!4294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !4295)
!4295 = !{!4296}
!4296 = !DISubrange(count: 128)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4288, file: !4289, line: 286, baseType: !2599, size: 64, offset: 1536)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4277, file: !88, line: 107, baseType: !4299, size: 64, offset: 384)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4301)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4289, line: 217, size: 256, elements: !4302)
!4302 = !{!4303, !4304, !4306, !4307}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4301, file: !4289, line: 218, baseType: !3558, size: 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4301, file: !4289, line: 219, baseType: !4305, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4289, line: 15, baseType: !223)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4301, file: !4289, line: 220, baseType: !254, size: 32, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4301, file: !4289, line: 221, baseType: !254, size: 32, offset: 224)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4277, file: !88, line: 109, baseType: !4236, size: 64, offset: 448)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4277, file: !88, line: 110, baseType: !4227, size: 64, offset: 512)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4277, file: !88, line: 111, baseType: !4236, size: 64, offset: 576)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4277, file: !88, line: 112, baseType: !4227, size: 64, offset: 640)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4277, file: !88, line: 113, baseType: !4313, size: 64, offset: 704)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!109, !278, !4316}
!4316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4317)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4318)
!4318 = !{!4319}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4317, file: !101, line: 59, baseType: !109, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4277, file: !88, line: 114, baseType: !4236, size: 64, offset: 768)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4277, file: !88, line: 115, baseType: !412, size: 64, offset: 832)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4277, file: !88, line: 116, baseType: !412, size: 64, offset: 896)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4277, file: !88, line: 118, baseType: !4231, size: 64, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4277, file: !88, line: 119, baseType: !4227, size: 64, offset: 1024)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4277, file: !88, line: 121, baseType: !4326, size: 64, offset: 1088)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4264, file: !4265, line: 88, baseType: !4216, size: 64, offset: 384)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4264, file: !4265, line: 89, baseType: !4236, size: 64, offset: 448)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4264, file: !4265, line: 90, baseType: !4227, size: 64, offset: 512)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4264, file: !4265, line: 91, baseType: !4227, size: 64, offset: 576)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4264, file: !4265, line: 92, baseType: !4227, size: 64, offset: 640)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4264, file: !4265, line: 94, baseType: !4236, size: 64, offset: 704)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4264, file: !4265, line: 95, baseType: !4236, size: 64, offset: 768)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4264, file: !4265, line: 97, baseType: !4313, size: 64, offset: 832)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4264, file: !4265, line: 98, baseType: !4236, size: 64, offset: 896)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4264, file: !4265, line: 100, baseType: !4236, size: 64, offset: 960)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4264, file: !4265, line: 102, baseType: !4236, size: 64, offset: 1024)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4264, file: !4265, line: 103, baseType: !4227, size: 64, offset: 1088)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4264, file: !4265, line: 105, baseType: !4231, size: 64, offset: 1152)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4264, file: !4265, line: 107, baseType: !4342, size: 64, offset: 1216)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4344)
!4344 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4265, line: 107, flags: DIFlagFwdDecl)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4264, file: !4265, line: 109, baseType: !776, size: 8, offset: 1280)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !279, file: !94, line: 715, baseType: !4276, size: 64, offset: 832)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !279, file: !94, line: 717, baseType: !147, size: 64, offset: 896)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !279, file: !94, line: 719, baseType: !147, size: 64, offset: 960)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !279, file: !94, line: 721, baseType: !696, size: 256, offset: 1024)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !279, file: !94, line: 725, baseType: !4351, size: 448, offset: 1280)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4351, file: !94, line: 518, baseType: !188, size: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4351, file: !94, line: 519, baseType: !188, size: 128, offset: 128)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4351, file: !94, line: 520, baseType: !188, size: 128, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4351, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !279, file: !94, line: 726, baseType: !4358, size: 2496, offset: 1728)
!4358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4359)
!4359 = !{!4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4442, !4446}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4358, file: !101, line: 664, baseType: !4316, size: 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4358, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4358, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4358, file: !101, line: 667, baseType: !776, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4358, file: !101, line: 668, baseType: !776, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4358, file: !101, line: 669, baseType: !776, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4358, file: !101, line: 670, baseType: !776, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4358, file: !101, line: 671, baseType: !776, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4358, file: !101, line: 672, baseType: !776, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4358, file: !101, line: 673, baseType: !776, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4358, file: !101, line: 674, baseType: !776, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4358, file: !101, line: 675, baseType: !253, size: 32, offset: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4358, file: !101, line: 676, baseType: !295, size: 32, offset: 96)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4358, file: !101, line: 678, baseType: !188, size: 128, offset: 128)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4358, file: !101, line: 679, baseType: !645, size: 256, offset: 256)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4358, file: !101, line: 680, baseType: !4376, size: 64, offset: 512)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4377, size: 64)
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4378, line: 43, size: 1536, elements: !4379)
!4378 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4379 = !{!4380, !4381, !4382, !4383, !4384, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4377, file: !4378, line: 44, baseType: !220, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4377, file: !4378, line: 45, baseType: !109, size: 32, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4377, file: !4378, line: 46, baseType: !188, size: 128, offset: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4377, file: !4378, line: 47, baseType: !295, size: 32, offset: 256)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4377, file: !4378, line: 48, baseType: !4385, size: 64, offset: 320)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4377, file: !4378, line: 49, baseType: !936, size: 320, offset: 384)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4377, file: !4378, line: 50, baseType: !223, size: 64, offset: 704)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4377, file: !4378, line: 51, baseType: !1591, size: 64, offset: 768)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4377, file: !4378, line: 52, baseType: !1591, size: 64, offset: 832)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4377, file: !4378, line: 53, baseType: !1591, size: 64, offset: 896)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4377, file: !4378, line: 54, baseType: !1591, size: 64, offset: 960)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4377, file: !4378, line: 55, baseType: !1591, size: 64, offset: 1024)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4377, file: !4378, line: 56, baseType: !223, size: 64, offset: 1088)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4377, file: !4378, line: 57, baseType: !223, size: 64, offset: 1152)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4377, file: !4378, line: 58, baseType: !223, size: 64, offset: 1216)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4377, file: !4378, line: 59, baseType: !223, size: 64, offset: 1280)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4377, file: !4378, line: 60, baseType: !223, size: 64, offset: 1344)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4377, file: !4378, line: 61, baseType: !278, size: 64, offset: 1408)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4377, file: !4378, line: 62, baseType: !776, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4377, file: !4378, line: 63, baseType: !776, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4358, file: !101, line: 681, baseType: !776, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4358, file: !101, line: 682, baseType: !776, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4358, file: !101, line: 683, baseType: !776, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4358, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4358, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4358, file: !101, line: 690, baseType: !1583, size: 512, offset: 640)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4358, file: !101, line: 691, baseType: !213, size: 64, offset: 1152)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4358, file: !101, line: 692, baseType: !954, size: 256, offset: 1216)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4358, file: !101, line: 693, baseType: !1449, size: 192, offset: 1472)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4358, file: !101, line: 694, baseType: !4385, size: 64, offset: 1664)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4358, file: !101, line: 695, baseType: !315, size: 32, offset: 1728)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4358, file: !101, line: 696, baseType: !315, size: 32, offset: 1760)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4358, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4358, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4358, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4358, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4358, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4358, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4358, file: !101, line: 703, baseType: !776, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4358, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4358, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4358, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4358, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4358, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4358, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4358, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4358, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4358, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4358, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4358, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4358, file: !101, line: 715, baseType: !213, size: 64, offset: 2048)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4358, file: !101, line: 716, baseType: !213, size: 64, offset: 2112)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4358, file: !101, line: 717, baseType: !213, size: 64, offset: 2176)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4358, file: !101, line: 718, baseType: !213, size: 64, offset: 2240)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4358, file: !101, line: 720, baseType: !4437, size: 64, offset: 2304)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4439)
!4439 = !{!4440, !4441}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4438, file: !101, line: 633, baseType: !295, size: 32)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4438, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4358, file: !101, line: 721, baseType: !4443, size: 64, offset: 2368)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{null, !278, !692}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4358, file: !101, line: 722, baseType: !4447, size: 64, offset: 2432)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !279, file: !94, line: 727, baseType: !4450, size: 64, offset: 4224)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4452)
!4452 = !{!4453, !4454, !4455, !4459, !4460, !4461}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4451, file: !101, line: 743, baseType: !4233, size: 1472)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4451, file: !101, line: 744, baseType: !4236, size: 64, offset: 1472)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4451, file: !101, line: 745, baseType: !4456, size: 64, offset: 1536)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{null, !278, !776}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4451, file: !101, line: 746, baseType: !4236, size: 64, offset: 1600)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4451, file: !101, line: 747, baseType: !4227, size: 64, offset: 1664)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4451, file: !101, line: 748, baseType: !4227, size: 64, offset: 1728)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !279, file: !94, line: 736, baseType: !4463, size: 128, offset: 4288)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4464)
!4464 = !{!4465, !4469}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4463, file: !94, line: 531, baseType: !4466, size: 64)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4468, line: 13, flags: DIFlagFwdDecl)
!4468 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4463, file: !94, line: 532, baseType: !4470, size: 64, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !279, file: !94, line: 738, baseType: !4473, size: 64, offset: 4416)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4475)
!4475 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !279, file: !94, line: 740, baseType: !4477, size: 64, offset: 4480)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !279, file: !94, line: 741, baseType: !213, size: 64, offset: 4544)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !279, file: !94, line: 746, baseType: !213, size: 64, offset: 4608)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !279, file: !94, line: 747, baseType: !4481, size: 64, offset: 4672)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4483 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !279, file: !94, line: 749, baseType: !4485, size: 64, offset: 4736)
!4485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4486, size: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4487)
!4487 = !{!4488, !4489, !4490}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4486, file: !94, line: 433, baseType: !7, size: 32)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4486, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4486, file: !94, line: 435, baseType: !223, size: 64, offset: 64)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !279, file: !94, line: 751, baseType: !188, size: 128, offset: 4800)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !279, file: !94, line: 762, baseType: !4493, size: 64, offset: 4928)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !279, file: !94, line: 770, baseType: !4496, offset: 4992)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4497, line: 5, elements: !983)
!4497 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !279, file: !94, line: 772, baseType: !4499, size: 64, offset: 4992)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4501, line: 18, flags: DIFlagFwdDecl)
!4501 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !279, file: !94, line: 773, baseType: !4503, size: 64, offset: 5056)
!4503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4504, size: 64)
!4504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4505, line: 41, size: 512, elements: !4506)
!4505 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4506 = !{!4507, !4508, !4602, !4603, !4604, !4605}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4504, file: !4505, line: 42, baseType: !4503, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4504, file: !4505, line: 43, baseType: !4509, size: 64, offset: 64)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4511)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4505, line: 125, size: 1408, elements: !4512)
!4512 = !{!4513, !4517, !4521, !4527, !4531, !4532, !4537, !4541, !4545, !4549, !4553, !4554, !4558, !4562, !4566, !4577, !4578, !4579, !4580, !4590, !4594, !4598}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4511, file: !4505, line: 126, baseType: !4514, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!4503, !4503}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4511, file: !4505, line: 127, baseType: !4518, size: 64, offset: 64)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{null, !4503}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4511, file: !4505, line: 128, baseType: !4522, size: 64, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!776, !4525}
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4504)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4511, file: !4505, line: 129, baseType: !4528, size: 64, offset: 192)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!2599, !4525, !4219}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4511, file: !4505, line: 131, baseType: !4522, size: 64, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4511, file: !4505, line: 133, baseType: !4533, size: 64, offset: 320)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!4536, !4525}
!4536 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4505, line: 132, flags: DIFlagFwdDecl)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4511, file: !4505, line: 134, baseType: !4538, size: 64, offset: 384)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!776, !4525, !220}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4511, file: !4505, line: 136, baseType: !4542, size: 64, offset: 448)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!109, !4525, !220, !7, !147, !408}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4511, file: !4505, line: 141, baseType: !4546, size: 64, offset: 512)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!109, !4525, !220, !1031, !408}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4511, file: !4505, line: 144, baseType: !4550, size: 64, offset: 576)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!220, !4525}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4511, file: !4505, line: 145, baseType: !4550, size: 64, offset: 640)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4511, file: !4505, line: 146, baseType: !4555, size: 64, offset: 704)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!4503, !4525}
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4511, file: !4505, line: 148, baseType: !4559, size: 64, offset: 768)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!4503, !4525, !4503}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4511, file: !4505, line: 151, baseType: !4563, size: 64, offset: 832)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!4503, !4525, !220}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4511, file: !4505, line: 153, baseType: !4567, size: 64, offset: 896)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!109, !4525, !220, !220, !7, !7, !4570}
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4505, line: 94, size: 640, elements: !4572)
!4572 = !{!4573, !4574, !4575}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4571, file: !4505, line: 95, baseType: !4503, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4571, file: !4505, line: 96, baseType: !7, size: 32, offset: 64)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4571, file: !4505, line: 97, baseType: !4576, size: 512, offset: 128)
!4576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 512, elements: !1626)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4511, file: !4505, line: 158, baseType: !4559, size: 64, offset: 960)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4511, file: !4505, line: 161, baseType: !4555, size: 64, offset: 1024)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4511, file: !4505, line: 163, baseType: !4514, size: 64, offset: 1088)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4511, file: !4505, line: 164, baseType: !4581, size: 64, offset: 1152)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!109, !4525, !4584}
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4505, line: 73, size: 128, elements: !4586)
!4586 = !{!4587, !4588, !4589}
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4585, file: !4505, line: 74, baseType: !7, size: 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4585, file: !4505, line: 75, baseType: !7, size: 32, offset: 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4585, file: !4505, line: 76, baseType: !4525, size: 64, offset: 64)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4511, file: !4505, line: 166, baseType: !4591, size: 64, offset: 1216)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{!147, !4503, !109}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4511, file: !4505, line: 167, baseType: !4595, size: 64, offset: 1280)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DISubroutineType(types: !4597)
!4597 = !{!109, !4525, !7}
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4511, file: !4505, line: 168, baseType: !4599, size: 64, offset: 1344)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!109, !4503}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4504, file: !4505, line: 44, baseType: !278, size: 64, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4504, file: !4505, line: 45, baseType: !188, size: 128, offset: 192)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4504, file: !4505, line: 46, baseType: !188, size: 128, offset: 320)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4504, file: !4505, line: 47, baseType: !323, size: 8, offset: 448)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !279, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !279, file: !94, line: 778, baseType: !591, size: 32, offset: 5152)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !279, file: !94, line: 779, baseType: !253, size: 32, offset: 5184)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !279, file: !94, line: 781, baseType: !295, size: 32, offset: 5216)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !279, file: !94, line: 782, baseType: !188, size: 128, offset: 5248)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !279, file: !94, line: 784, baseType: !4612, size: 64, offset: 5376)
!4612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4613, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4614)
!4614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4615, line: 52, size: 768, elements: !4616)
!4615 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4616 = !{!4617, !4618, !4619, !4620, !4621, !4625, !4629, !4630, !4631, !4632, !4636, !4640}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4614, file: !4615, line: 53, baseType: !220, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4614, file: !4615, line: 55, baseType: !412, size: 64, offset: 64)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4614, file: !4615, line: 56, baseType: !412, size: 64, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4614, file: !4615, line: 58, baseType: !4216, size: 64, offset: 192)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4614, file: !4615, line: 59, baseType: !4622, size: 64, offset: 256)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!361, !4219, !4225}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4614, file: !4615, line: 61, baseType: !4626, size: 64, offset: 320)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !4612}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4614, file: !4615, line: 62, baseType: !4227, size: 64, offset: 384)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4614, file: !4615, line: 64, baseType: !4236, size: 64, offset: 448)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4614, file: !4615, line: 66, baseType: !4057, size: 64, offset: 512)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4614, file: !4615, line: 67, baseType: !4633, size: 64, offset: 576)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!2599, !4219}
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4614, file: !4615, line: 69, baseType: !4637, size: 64, offset: 640)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{null, !4219, !4088, !4089}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4614, file: !4615, line: 71, baseType: !4231, size: 64, offset: 704)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !279, file: !94, line: 785, baseType: !412, size: 64, offset: 5440)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !279, file: !94, line: 787, baseType: !4227, size: 64, offset: 5504)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !279, file: !94, line: 788, baseType: !4644, size: 64, offset: 5568)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !279, file: !94, line: 789, baseType: !4647, size: 64, offset: 5632)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !279, file: !94, line: 791, baseType: !4650, size: 64, offset: 5696)
!4650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4651, size: 64)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4652)
!4652 = !{!4653, !4654, !4655, !4656, !4657}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4651, file: !94, line: 598, baseType: !116, size: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4651, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4651, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4651, file: !94, line: 601, baseType: !776, size: 8, offset: 96)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4651, file: !94, line: 602, baseType: !776, size: 8, offset: 104)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !279, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !279, file: !94, line: 795, baseType: !776, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !279, file: !94, line: 796, baseType: !776, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !279, file: !94, line: 797, baseType: !776, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !279, file: !94, line: 798, baseType: !776, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !279, file: !94, line: 799, baseType: !776, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !196, file: !185, line: 676, baseType: !279, size: 5824, offset: 2240)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !196, file: !185, line: 677, baseType: !426, size: 64, offset: 8064)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !196, file: !185, line: 678, baseType: !426, size: 64, offset: 8128)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !196, file: !185, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !196, file: !185, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !184, file: !185, line: 325, baseType: !195, size: 64, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !184, file: !185, line: 327, baseType: !147, size: 64, offset: 256)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !184, file: !185, line: 328, baseType: !261, size: 64, offset: 320)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !184, file: !185, line: 329, baseType: !4673, size: 64, offset: 384)
!4673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4674, size: 64)
!4674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !185, line: 76, size: 832, elements: !4675)
!4675 = !{!4676, !4677, !4678, !4681, !4682}
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4674, file: !185, line: 77, baseType: !195, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4674, file: !185, line: 78, baseType: !188, size: 128, offset: 64)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4674, file: !185, line: 79, baseType: !4679, size: 64, offset: 192)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !185, line: 79, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4674, file: !185, line: 80, baseType: !265, size: 8, offset: 256)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4674, file: !185, line: 81, baseType: !282, size: 512, offset: 320)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !184, file: !185, line: 331, baseType: !7, size: 32, offset: 448)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !184, file: !185, line: 332, baseType: !274, size: 16, offset: 480)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !184, file: !185, line: 333, baseType: !274, size: 16, offset: 496)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !184, file: !185, line: 334, baseType: !274, size: 16, offset: 512)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !184, file: !185, line: 335, baseType: !274, size: 16, offset: 528)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !184, file: !185, line: 336, baseType: !7, size: 32, offset: 544)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !184, file: !185, line: 337, baseType: !323, size: 8, offset: 576)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !184, file: !185, line: 338, baseType: !323, size: 8, offset: 584)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !184, file: !185, line: 344, baseType: !4692, size: 64, offset: 640)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4694, line: 415, size: 64, elements: !4695)
!4694 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4695 = !{!4696, !4697, !4698}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4693, file: !4694, line: 416, baseType: !323, size: 8)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4693, file: !4694, line: 417, baseType: !323, size: 8, offset: 8)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4693, file: !4694, line: 418, baseType: !253, size: 32, offset: 32)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !184, file: !185, line: 345, baseType: !183, size: 64, offset: 704)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !184, file: !185, line: 347, baseType: !253, size: 32, offset: 768)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !184, file: !185, line: 348, baseType: !323, size: 8, offset: 800)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !184, file: !185, line: 349, baseType: !323, size: 8, offset: 808)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !184, file: !185, line: 350, baseType: !323, size: 8, offset: 816)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !184, file: !185, line: 351, baseType: !323, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !184, file: !185, line: 352, baseType: !323, size: 8, offset: 832)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !184, file: !185, line: 353, baseType: !323, size: 8, offset: 840)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !184, file: !185, line: 354, baseType: !330, size: 16, offset: 848)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !184, file: !185, line: 355, baseType: !1045, size: 64, offset: 896)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !184, file: !185, line: 357, baseType: !4710, size: 64, offset: 960)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !185, line: 918, size: 2368, elements: !4712)
!4712 = !{!4713, !4714, !4715, !4728, !4732, !4734, !4738, !4742, !4743, !4747, !4748, !4752, !4772, !4773, !4774, !4775, !4780}
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4711, file: !185, line: 919, baseType: !188, size: 128)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4711, file: !185, line: 920, baseType: !220, size: 64, offset: 128)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4711, file: !185, line: 921, baseType: !4716, size: 64, offset: 192)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4718)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4289, line: 44, size: 320, elements: !4719)
!4719 = !{!4720, !4721, !4722, !4723, !4724, !4725, !4726, !4727}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4718, file: !4289, line: 45, baseType: !254, size: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4718, file: !4289, line: 45, baseType: !254, size: 32, offset: 32)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4718, file: !4289, line: 46, baseType: !254, size: 32, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4718, file: !4289, line: 46, baseType: !254, size: 32, offset: 96)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4718, file: !4289, line: 47, baseType: !254, size: 32, offset: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4718, file: !4289, line: 47, baseType: !254, size: 32, offset: 160)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4718, file: !4289, line: 48, baseType: !4305, size: 64, offset: 192)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4718, file: !4289, line: 49, baseType: !254, size: 32, offset: 256)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4711, file: !185, line: 922, baseType: !4729, size: 64, offset: 256)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!109, !183, !4716}
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4711, file: !185, line: 923, baseType: !4733, size: 64, offset: 320)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4711, file: !185, line: 924, baseType: !4735, size: 64, offset: 384)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!109, !183, !4316}
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4711, file: !185, line: 925, baseType: !4739, size: 64, offset: 448)
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!109, !183}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4711, file: !185, line: 926, baseType: !4733, size: 64, offset: 512)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4711, file: !185, line: 927, baseType: !4744, size: 64, offset: 576)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!109, !183, !109}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4711, file: !185, line: 928, baseType: !4744, size: 64, offset: 640)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4711, file: !185, line: 929, baseType: !4749, size: 64, offset: 704)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!253, !183}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4711, file: !185, line: 930, baseType: !4753, size: 64, offset: 768)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4755)
!4755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !185, line: 837, size: 448, elements: !4756)
!4756 = !{!4757, !4763, !4767, !4768, !4769, !4770, !4771}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4755, file: !185, line: 839, baseType: !4758, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!4761, !183, !4762}
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !185, line: 814, baseType: !7)
!4762 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !185, line: 196, baseType: !7)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4755, file: !185, line: 843, baseType: !4764, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4765, size: 64)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{!4761, !183}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4755, file: !185, line: 846, baseType: !4764, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4755, file: !185, line: 849, baseType: !4733, size: 64, offset: 192)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4755, file: !185, line: 850, baseType: !4733, size: 64, offset: 256)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4755, file: !185, line: 853, baseType: !4733, size: 64, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4755, file: !185, line: 856, baseType: !4733, size: 64, offset: 384)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4711, file: !185, line: 931, baseType: !412, size: 64, offset: 832)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4711, file: !185, line: 932, baseType: !412, size: 64, offset: 896)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4711, file: !185, line: 933, baseType: !4277, size: 1152, offset: 960)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4711, file: !185, line: 934, baseType: !4776, size: 192, offset: 2112)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !185, line: 801, size: 192, elements: !4777)
!4777 = !{!4778, !4779}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4776, file: !185, line: 802, baseType: !295, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4776, file: !185, line: 803, baseType: !188, size: 128, offset: 64)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4711, file: !185, line: 935, baseType: !776, size: 8, offset: 2304)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !184, file: !185, line: 358, baseType: !213, size: 64, offset: 1024)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !184, file: !185, line: 364, baseType: !4486, size: 128, offset: 1088)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !184, file: !185, line: 366, baseType: !4784, size: 32, offset: 1216)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !185, line: 171, baseType: !109)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !184, file: !185, line: 369, baseType: !323, size: 8, offset: 1248)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !184, file: !185, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !184, file: !185, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !184, file: !185, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !184, file: !185, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !184, file: !185, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !184, file: !185, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !184, file: !185, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !184, file: !185, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !184, file: !185, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !184, file: !185, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !184, file: !185, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !184, file: !185, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !184, file: !185, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !184, file: !185, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !184, file: !185, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !184, file: !185, line: 390, baseType: !7, size: 32, offset: 1280)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !184, file: !185, line: 391, baseType: !7, size: 32, offset: 1312)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !184, file: !185, line: 394, baseType: !4804, size: 64, offset: 1344)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !185, line: 316, flags: DIFlagFwdDecl)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !184, file: !185, line: 395, baseType: !330, size: 16, offset: 1408)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !184, file: !185, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !184, file: !185, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !184, file: !185, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !184, file: !185, line: 402, baseType: !4762, size: 32, offset: 1440)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !184, file: !185, line: 403, baseType: !279, size: 5824, offset: 1472)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !184, file: !185, line: 405, baseType: !109, size: 32, offset: 7296)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !184, file: !185, line: 411, baseType: !7, size: 32, offset: 7328)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !184, file: !185, line: 412, baseType: !4815, size: 5632, offset: 7360)
!4815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 5632, elements: !4816)
!4816 = !{!4817}
!4817 = !DISubrange(count: 11)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !184, file: !185, line: 413, baseType: !207, size: 512, offset: 12992)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !184, file: !185, line: 415, baseType: !776, size: 8, offset: 13504)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !184, file: !185, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !184, file: !185, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !184, file: !185, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !184, file: !185, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !184, file: !185, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !184, file: !185, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !184, file: !185, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !184, file: !185, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !184, file: !185, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !184, file: !185, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !184, file: !185, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !184, file: !185, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !184, file: !185, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !184, file: !185, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !184, file: !185, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !184, file: !185, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !184, file: !185, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !184, file: !185, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !184, file: !185, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !184, file: !185, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !184, file: !185, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !184, file: !185, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !184, file: !185, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !184, file: !185, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !184, file: !185, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !184, file: !185, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !184, file: !185, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !184, file: !185, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !184, file: !185, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !184, file: !185, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !184, file: !185, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !184, file: !185, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !184, file: !185, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !184, file: !185, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !184, file: !185, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !184, file: !185, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !184, file: !185, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !184, file: !185, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !184, file: !185, line: 468, baseType: !4859, size: 16, offset: 13552)
!4859 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !185, line: 222, baseType: !274)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !184, file: !185, line: 469, baseType: !315, size: 32, offset: 13568)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !184, file: !185, line: 471, baseType: !295, size: 32, offset: 13600)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !184, file: !185, line: 472, baseType: !4863, size: 512, offset: 13632)
!4863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 512, elements: !2776)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !184, file: !185, line: 473, baseType: !1064, size: 64, offset: 14144)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !184, file: !185, line: 474, baseType: !4866, size: 704, offset: 14208)
!4866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 704, elements: !4816)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !184, file: !185, line: 475, baseType: !4866, size: 704, offset: 14912)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !184, file: !185, line: 487, baseType: !147, size: 64, offset: 15616)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !184, file: !185, line: 488, baseType: !654, size: 32, offset: 15680)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !184, file: !185, line: 490, baseType: !4871, size: 320, offset: 15744)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !185, line: 309, size: 320, elements: !4872)
!4872 = !{!4873, !4874, !4875}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4871, file: !185, line: 310, baseType: !696, size: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4871, file: !185, line: 311, baseType: !7, size: 32, offset: 256)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4871, file: !185, line: 312, baseType: !323, size: 8, offset: 288)
!4876 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !185, line: 497, baseType: !4877, size: 64, offset: 16064)
!4877 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !185, line: 497, size: 64, elements: !4878)
!4878 = !{!4879, !4906}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4877, file: !185, line: 498, baseType: !4880, size: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4694, line: 294, size: 1024, elements: !4882)
!4882 = !{!4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4905}
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4881, file: !4694, line: 295, baseType: !109, size: 32)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4881, file: !4694, line: 296, baseType: !109, size: 32, offset: 32)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4881, file: !4694, line: 297, baseType: !253, size: 32, offset: 64)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4881, file: !4694, line: 298, baseType: !330, size: 16, offset: 96)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4881, file: !4694, line: 299, baseType: !330, size: 16, offset: 112)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4881, file: !4694, line: 300, baseType: !330, size: 16, offset: 128)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4881, file: !4694, line: 301, baseType: !330, size: 16, offset: 144)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4881, file: !4694, line: 302, baseType: !330, size: 16, offset: 160)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4881, file: !4694, line: 303, baseType: !330, size: 16, offset: 176)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4881, file: !4694, line: 304, baseType: !330, size: 16, offset: 192)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4881, file: !4694, line: 305, baseType: !253, size: 32, offset: 224)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4881, file: !4694, line: 306, baseType: !323, size: 8, offset: 256)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4881, file: !4694, line: 307, baseType: !323, size: 8, offset: 264)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4881, file: !4694, line: 308, baseType: !330, size: 16, offset: 272)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4881, file: !4694, line: 309, baseType: !183, size: 64, offset: 320)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4881, file: !4694, line: 310, baseType: !183, size: 64, offset: 384)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4881, file: !4694, line: 311, baseType: !253, size: 32, offset: 448)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4881, file: !4694, line: 312, baseType: !323, size: 8, offset: 480)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4881, file: !4694, line: 313, baseType: !330, size: 16, offset: 496)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4881, file: !4694, line: 314, baseType: !330, size: 16, offset: 512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4881, file: !4694, line: 315, baseType: !4904, size: 384, offset: 576)
!4904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 384, elements: !1929)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4881, file: !4694, line: 316, baseType: !776, size: 8, offset: 960)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4877, file: !185, line: 499, baseType: !183, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !184, file: !185, line: 501, baseType: !330, size: 16, offset: 16128)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !184, file: !185, line: 502, baseType: !323, size: 8, offset: 16144)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !184, file: !185, line: 505, baseType: !330, size: 16, offset: 16160)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !184, file: !185, line: 506, baseType: !253, size: 32, offset: 16192)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !184, file: !185, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !184, file: !185, line: 510, baseType: !330, size: 16, offset: 16240)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !184, file: !185, line: 511, baseType: !330, size: 16, offset: 16256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !184, file: !185, line: 519, baseType: !330, size: 16, offset: 16272)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !184, file: !185, line: 520, baseType: !212, size: 64, offset: 16320)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !184, file: !185, line: 521, baseType: !408, size: 64, offset: 16384)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !184, file: !185, line: 526, baseType: !220, size: 64, offset: 16448)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !184, file: !185, line: 528, baseType: !223, size: 64, offset: 16512)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !184, file: !185, line: 531, baseType: !4920, size: 56, offset: 16576)
!4920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 56, elements: !817)
!4921 = !{!4922, !4923}
!4922 = !DILocalVariable(name: "dev", arg: 1, scope: !180, file: !3, line: 19, type: !183)
!4923 = !DILocalVariable(name: "pos", scope: !180, file: !3, line: 21, type: !109)
!4924 = !DILocation(line: 19, column: 35, scope: !180)
!4925 = !DILocation(line: 21, column: 2, scope: !180)
!4926 = !DILocation(line: 21, column: 6, scope: !180)
!4927 = !DILocation(line: 23, column: 6, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !180, file: !3, line: 23, column: 6)
!4929 = !DILocation(line: 23, column: 6, scope: !180)
!4930 = !DILocation(line: 24, column: 3, scope: !4928)
!4931 = !DILocation(line: 26, column: 32, scope: !180)
!4932 = !DILocation(line: 26, column: 8, scope: !180)
!4933 = !DILocation(line: 26, column: 6, scope: !180)
!4934 = !DILocation(line: 27, column: 7, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !180, file: !3, line: 27, column: 6)
!4936 = !DILocation(line: 27, column: 6, scope: !180)
!4937 = !DILocation(line: 28, column: 3, scope: !4935)
!4938 = !DILocation(line: 30, column: 17, scope: !180)
!4939 = !DILocation(line: 30, column: 2, scope: !180)
!4940 = !DILocation(line: 30, column: 7, scope: !180)
!4941 = !DILocation(line: 30, column: 15, scope: !180)
!4942 = !DILocation(line: 31, column: 1, scope: !180)
!4943 = !DISubprogram(name: "pci_ats_disabled", scope: !185, file: !185, line: 1810, type: !4064, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4944 = !DISubprogram(name: "pci_find_ext_capability", scope: !185, file: !185, line: 1168, type: !4945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!330, !183, !109}
!4947 = distinct !DISubprogram(name: "pci_ats_supported", scope: !3, file: !3, line: 40, type: !4948, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4950)
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!776, !183}
!4950 = !{!4951}
!4951 = !DILocalVariable(name: "dev", arg: 1, scope: !4947, file: !3, line: 40, type: !183)
!4952 = !DILocation(line: 40, column: 40, scope: !4947)
!4953 = !DILocation(line: 42, column: 7, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4947, file: !3, line: 42, column: 6)
!4955 = !DILocation(line: 42, column: 12, scope: !4954)
!4956 = !DILocation(line: 42, column: 6, scope: !4947)
!4957 = !DILocation(line: 43, column: 3, scope: !4954)
!4958 = !DILocation(line: 45, column: 10, scope: !4947)
!4959 = !DILocation(line: 45, column: 15, scope: !4947)
!4960 = !DILocation(line: 45, column: 25, scope: !4947)
!4961 = !DILocation(line: 45, column: 2, scope: !4947)
!4962 = !DILocation(line: 46, column: 1, scope: !4947)
!4963 = distinct !DISubprogram(name: "pci_enable_ats", scope: !3, file: !3, line: 56, type: !4745, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4964)
!4964 = !{!4965, !4966, !4967, !4968, !4969, !4972}
!4965 = !DILocalVariable(name: "dev", arg: 1, scope: !4963, file: !3, line: 56, type: !183)
!4966 = !DILocalVariable(name: "ps", arg: 2, scope: !4963, file: !3, line: 56, type: !109)
!4967 = !DILocalVariable(name: "ctrl", scope: !4963, file: !3, line: 58, type: !330)
!4968 = !DILocalVariable(name: "pdev", scope: !4963, file: !3, line: 59, type: !183)
!4969 = !DILocalVariable(name: "__ret_warn_on", scope: !4970, file: !3, line: 64, type: !109)
!4970 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 64, column: 6)
!4971 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 64, column: 6)
!4972 = !DILocalVariable(name: "__flags", scope: !4973, file: !3, line: 64, type: !109)
!4973 = distinct !DILexicalBlock(scope: !4974, file: !3, line: 64, column: 6)
!4974 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 64, column: 6)
!4975 = !DILocation(line: 56, column: 36, scope: !4963)
!4976 = !DILocation(line: 56, column: 45, scope: !4963)
!4977 = !DILocation(line: 58, column: 2, scope: !4963)
!4978 = !DILocation(line: 58, column: 6, scope: !4963)
!4979 = !DILocation(line: 59, column: 2, scope: !4963)
!4980 = !DILocation(line: 59, column: 18, scope: !4963)
!4981 = !DILocation(line: 61, column: 25, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 61, column: 6)
!4983 = !DILocation(line: 61, column: 7, scope: !4982)
!4984 = !DILocation(line: 61, column: 6, scope: !4963)
!4985 = !DILocation(line: 62, column: 3, scope: !4982)
!4986 = !DILocation(line: 64, column: 6, scope: !4970)
!4987 = !DILocation(line: 64, column: 6, scope: !4974)
!4988 = !DILocation(line: 64, column: 6, scope: !4973)
!4989 = !DILocation(line: 64, column: 6, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 64, column: 6)
!4991 = !DILocation(line: 64, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 64, column: 6)
!4993 = !{i64 2155047778, i64 2155047807, i64 2155047853, i64 2155047911, i64 2155047965, i64 2155048019, i64 2155048074, i64 2155048105, i64 2155048413, i64 2155048419, i64 2155048466, i64 2155048489, i64 2155048515}
!4994 = !DILocation(line: 64, column: 6, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 64, column: 6)
!4996 = !DILocation(line: 64, column: 6, scope: !4971)
!4997 = !DILocation(line: 64, column: 6, scope: !4963)
!4998 = !DILocation(line: 65, column: 3, scope: !4971)
!4999 = !DILocation(line: 67, column: 6, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 67, column: 6)
!5001 = !DILocation(line: 67, column: 9, scope: !5000)
!5002 = !DILocation(line: 67, column: 6, scope: !4963)
!5003 = !DILocation(line: 68, column: 3, scope: !5000)
!5004 = !DILocation(line: 74, column: 7, scope: !4963)
!5005 = !DILocation(line: 75, column: 6, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !4963, file: !3, line: 75, column: 6)
!5007 = !DILocation(line: 75, column: 11, scope: !5006)
!5008 = !DILocation(line: 75, column: 6, scope: !4963)
!5009 = !DILocation(line: 76, column: 21, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 75, column: 22)
!5011 = !DILocation(line: 76, column: 10, scope: !5010)
!5012 = !DILocation(line: 76, column: 8, scope: !5010)
!5013 = !DILocation(line: 77, column: 7, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 77, column: 7)
!5015 = !DILocation(line: 77, column: 13, scope: !5014)
!5016 = !DILocation(line: 77, column: 24, scope: !5014)
!5017 = !DILocation(line: 77, column: 21, scope: !5014)
!5018 = !DILocation(line: 77, column: 7, scope: !5010)
!5019 = !DILocation(line: 78, column: 4, scope: !5014)
!5020 = !DILocation(line: 79, column: 2, scope: !5010)
!5021 = !DILocation(line: 80, column: 18, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 79, column: 9)
!5023 = !DILocation(line: 80, column: 3, scope: !5022)
!5024 = !DILocation(line: 80, column: 8, scope: !5022)
!5025 = !DILocation(line: 80, column: 16, scope: !5022)
!5026 = !DILocation(line: 81, column: 11, scope: !5022)
!5027 = !DILocation(line: 81, column: 8, scope: !5022)
!5028 = !DILocation(line: 83, column: 24, scope: !4963)
!5029 = !DILocation(line: 83, column: 29, scope: !4963)
!5030 = !DILocation(line: 83, column: 34, scope: !4963)
!5031 = !DILocation(line: 83, column: 42, scope: !4963)
!5032 = !DILocation(line: 83, column: 58, scope: !4963)
!5033 = !DILocation(line: 83, column: 2, scope: !4963)
!5034 = !DILocation(line: 85, column: 2, scope: !4963)
!5035 = !DILocation(line: 85, column: 7, scope: !4963)
!5036 = !DILocation(line: 85, column: 19, scope: !4963)
!5037 = !DILocation(line: 86, column: 2, scope: !4963)
!5038 = !DILocation(line: 87, column: 1, scope: !4963)
!5039 = distinct !DISubprogram(name: "pci_physfn", scope: !185, file: !185, line: 534, type: !5040, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5042)
!5040 = !DISubroutineType(types: !5041)
!5041 = !{!183, !183}
!5042 = !{!5043}
!5043 = !DILocalVariable(name: "dev", arg: 1, scope: !5039, file: !185, line: 534, type: !183)
!5044 = !DILocation(line: 534, column: 58, scope: !5039)
!5045 = !DILocation(line: 540, column: 9, scope: !5039)
!5046 = !DILocation(line: 540, column: 2, scope: !5039)
!5047 = !DISubprogram(name: "pci_write_config_word", scope: !185, file: !185, line: 1217, type: !5048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!109, !5050, !109, !330}
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!5052 = distinct !DISubprogram(name: "pci_disable_ats", scope: !3, file: !3, line: 94, type: !181, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5053)
!5053 = !{!5054, !5055, !5056, !5059}
!5054 = !DILocalVariable(name: "dev", arg: 1, scope: !5052, file: !3, line: 94, type: !183)
!5055 = !DILocalVariable(name: "ctrl", scope: !5052, file: !3, line: 96, type: !330)
!5056 = !DILocalVariable(name: "__ret_warn_on", scope: !5057, file: !3, line: 98, type: !109)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !3, line: 98, column: 6)
!5058 = distinct !DILexicalBlock(scope: !5052, file: !3, line: 98, column: 6)
!5059 = !DILocalVariable(name: "__flags", scope: !5060, file: !3, line: 98, type: !109)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !3, line: 98, column: 6)
!5061 = distinct !DILexicalBlock(scope: !5057, file: !3, line: 98, column: 6)
!5062 = !DILocation(line: 94, column: 38, scope: !5052)
!5063 = !DILocation(line: 96, column: 2, scope: !5052)
!5064 = !DILocation(line: 96, column: 6, scope: !5052)
!5065 = !DILocation(line: 98, column: 6, scope: !5057)
!5066 = !DILocation(line: 98, column: 6, scope: !5061)
!5067 = !DILocation(line: 98, column: 6, scope: !5060)
!5068 = !DILocation(line: 98, column: 6, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 98, column: 6)
!5070 = !DILocation(line: 98, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 98, column: 6)
!5072 = !{i64 2155051046, i64 2155051075, i64 2155051121, i64 2155051179, i64 2155051233, i64 2155051287, i64 2155051342, i64 2155051373, i64 2155051681, i64 2155051687, i64 2155051734, i64 2155051757, i64 2155051783}
!5073 = !DILocation(line: 98, column: 6, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5060, file: !3, line: 98, column: 6)
!5075 = !DILocation(line: 98, column: 6, scope: !5058)
!5076 = !DILocation(line: 98, column: 6, scope: !5052)
!5077 = !DILocation(line: 99, column: 3, scope: !5058)
!5078 = !DILocation(line: 101, column: 23, scope: !5052)
!5079 = !DILocation(line: 101, column: 28, scope: !5052)
!5080 = !DILocation(line: 101, column: 33, scope: !5052)
!5081 = !DILocation(line: 101, column: 41, scope: !5052)
!5082 = !DILocation(line: 101, column: 2, scope: !5052)
!5083 = !DILocation(line: 102, column: 7, scope: !5052)
!5084 = !DILocation(line: 103, column: 24, scope: !5052)
!5085 = !DILocation(line: 103, column: 29, scope: !5052)
!5086 = !DILocation(line: 103, column: 34, scope: !5052)
!5087 = !DILocation(line: 103, column: 42, scope: !5052)
!5088 = !DILocation(line: 103, column: 58, scope: !5052)
!5089 = !DILocation(line: 103, column: 2, scope: !5052)
!5090 = !DILocation(line: 105, column: 2, scope: !5052)
!5091 = !DILocation(line: 105, column: 7, scope: !5052)
!5092 = !DILocation(line: 105, column: 19, scope: !5052)
!5093 = !DILocation(line: 106, column: 1, scope: !5052)
!5094 = !DISubprogram(name: "pci_read_config_word", scope: !185, file: !185, line: 1214, type: !5095, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!109, !5050, !109, !5097}
!5097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!5098 = distinct !DISubprogram(name: "pci_restore_ats_state", scope: !3, file: !3, line: 109, type: !181, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5099)
!5099 = !{!5100, !5101}
!5100 = !DILocalVariable(name: "dev", arg: 1, scope: !5098, file: !3, line: 109, type: !183)
!5101 = !DILocalVariable(name: "ctrl", scope: !5098, file: !3, line: 111, type: !330)
!5102 = !DILocation(line: 109, column: 44, scope: !5098)
!5103 = !DILocation(line: 111, column: 2, scope: !5098)
!5104 = !DILocation(line: 111, column: 6, scope: !5098)
!5105 = !DILocation(line: 113, column: 7, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 113, column: 6)
!5107 = !DILocation(line: 113, column: 12, scope: !5106)
!5108 = !DILocation(line: 113, column: 6, scope: !5098)
!5109 = !DILocation(line: 114, column: 3, scope: !5106)
!5110 = !DILocation(line: 116, column: 7, scope: !5098)
!5111 = !DILocation(line: 117, column: 7, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 117, column: 6)
!5113 = !DILocation(line: 117, column: 12, scope: !5112)
!5114 = !DILocation(line: 117, column: 6, scope: !5098)
!5115 = !DILocation(line: 118, column: 11, scope: !5112)
!5116 = !DILocation(line: 118, column: 8, scope: !5112)
!5117 = !DILocation(line: 118, column: 3, scope: !5112)
!5118 = !DILocation(line: 119, column: 24, scope: !5098)
!5119 = !DILocation(line: 119, column: 29, scope: !5098)
!5120 = !DILocation(line: 119, column: 34, scope: !5098)
!5121 = !DILocation(line: 119, column: 42, scope: !5098)
!5122 = !DILocation(line: 119, column: 58, scope: !5098)
!5123 = !DILocation(line: 119, column: 2, scope: !5098)
!5124 = !DILocation(line: 120, column: 1, scope: !5098)
!5125 = distinct !DISubprogram(name: "pci_ats_queue_depth", scope: !3, file: !3, line: 134, type: !4740, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5126)
!5126 = !{!5127, !5128}
!5127 = !DILocalVariable(name: "dev", arg: 1, scope: !5125, file: !3, line: 134, type: !183)
!5128 = !DILocalVariable(name: "cap", scope: !5125, file: !3, line: 136, type: !330)
!5129 = !DILocation(line: 134, column: 41, scope: !5125)
!5130 = !DILocation(line: 136, column: 2, scope: !5125)
!5131 = !DILocation(line: 136, column: 6, scope: !5125)
!5132 = !DILocation(line: 138, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 138, column: 6)
!5134 = !DILocation(line: 138, column: 12, scope: !5133)
!5135 = !DILocation(line: 138, column: 6, scope: !5125)
!5136 = !DILocation(line: 139, column: 3, scope: !5133)
!5137 = !DILocation(line: 141, column: 6, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5125, file: !3, line: 141, column: 6)
!5139 = !DILocation(line: 141, column: 11, scope: !5138)
!5140 = !DILocation(line: 141, column: 6, scope: !5125)
!5141 = !DILocation(line: 142, column: 3, scope: !5138)
!5142 = !DILocation(line: 144, column: 23, scope: !5125)
!5143 = !DILocation(line: 144, column: 28, scope: !5125)
!5144 = !DILocation(line: 144, column: 33, scope: !5125)
!5145 = !DILocation(line: 144, column: 41, scope: !5125)
!5146 = !DILocation(line: 144, column: 2, scope: !5125)
!5147 = !DILocation(line: 145, column: 9, scope: !5125)
!5148 = !DILocation(line: 145, column: 33, scope: !5125)
!5149 = !DILocation(line: 145, column: 2, scope: !5125)
!5150 = !DILocation(line: 146, column: 1, scope: !5125)
!5151 = distinct !DISubprogram(name: "pci_ats_page_aligned", scope: !3, file: !3, line: 159, type: !4740, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5152)
!5152 = !{!5153, !5154}
!5153 = !DILocalVariable(name: "pdev", arg: 1, scope: !5151, file: !3, line: 159, type: !183)
!5154 = !DILocalVariable(name: "cap", scope: !5151, file: !3, line: 161, type: !330)
!5155 = !DILocation(line: 159, column: 42, scope: !5151)
!5156 = !DILocation(line: 161, column: 2, scope: !5151)
!5157 = !DILocation(line: 161, column: 6, scope: !5151)
!5158 = !DILocation(line: 163, column: 7, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 163, column: 6)
!5160 = !DILocation(line: 163, column: 13, scope: !5159)
!5161 = !DILocation(line: 163, column: 6, scope: !5151)
!5162 = !DILocation(line: 164, column: 3, scope: !5159)
!5163 = !DILocation(line: 166, column: 23, scope: !5151)
!5164 = !DILocation(line: 166, column: 29, scope: !5151)
!5165 = !DILocation(line: 166, column: 35, scope: !5151)
!5166 = !DILocation(line: 166, column: 43, scope: !5151)
!5167 = !DILocation(line: 166, column: 2, scope: !5151)
!5168 = !DILocation(line: 168, column: 6, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 168, column: 6)
!5170 = !DILocation(line: 168, column: 10, scope: !5169)
!5171 = !DILocation(line: 168, column: 6, scope: !5151)
!5172 = !DILocation(line: 169, column: 3, scope: !5169)
!5173 = !DILocation(line: 171, column: 2, scope: !5151)
!5174 = !DILocation(line: 172, column: 1, scope: !5151)
!5175 = distinct !DISubprogram(name: "pci_pri_init", scope: !3, file: !3, line: 175, type: !181, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5176)
!5176 = !{!5177, !5178}
!5177 = !DILocalVariable(name: "pdev", arg: 1, scope: !5175, file: !3, line: 175, type: !183)
!5178 = !DILocalVariable(name: "status", scope: !5175, file: !3, line: 177, type: !330)
!5179 = !DILocation(line: 175, column: 35, scope: !5175)
!5180 = !DILocation(line: 177, column: 2, scope: !5175)
!5181 = !DILocation(line: 177, column: 6, scope: !5175)
!5182 = !DILocation(line: 179, column: 42, scope: !5175)
!5183 = !DILocation(line: 179, column: 18, scope: !5175)
!5184 = !DILocation(line: 179, column: 2, scope: !5175)
!5185 = !DILocation(line: 179, column: 8, scope: !5175)
!5186 = !DILocation(line: 179, column: 16, scope: !5175)
!5187 = !DILocation(line: 181, column: 7, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 181, column: 6)
!5189 = !DILocation(line: 181, column: 13, scope: !5188)
!5190 = !DILocation(line: 181, column: 6, scope: !5175)
!5191 = !DILocation(line: 182, column: 3, scope: !5188)
!5192 = !DILocation(line: 184, column: 23, scope: !5175)
!5193 = !DILocation(line: 184, column: 29, scope: !5175)
!5194 = !DILocation(line: 184, column: 35, scope: !5175)
!5195 = !DILocation(line: 184, column: 43, scope: !5175)
!5196 = !DILocation(line: 184, column: 2, scope: !5175)
!5197 = !DILocation(line: 185, column: 6, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5175, file: !3, line: 185, column: 6)
!5199 = !DILocation(line: 185, column: 13, scope: !5198)
!5200 = !DILocation(line: 185, column: 6, scope: !5175)
!5201 = !DILocation(line: 186, column: 3, scope: !5198)
!5202 = !DILocation(line: 186, column: 9, scope: !5198)
!5203 = !DILocation(line: 186, column: 24, scope: !5198)
!5204 = !DILocation(line: 187, column: 1, scope: !5175)
!5205 = distinct !DISubprogram(name: "pci_enable_pri", scope: !3, file: !3, line: 196, type: !5206, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5208)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!109, !183, !253}
!5208 = !{!5209, !5210, !5211, !5212, !5213, !5214, !5215, !5218, !5221, !5223}
!5209 = !DILocalVariable(name: "pdev", arg: 1, scope: !5205, file: !3, line: 196, type: !183)
!5210 = !DILocalVariable(name: "reqs", arg: 2, scope: !5205, file: !3, line: 196, type: !253)
!5211 = !DILocalVariable(name: "control", scope: !5205, file: !3, line: 198, type: !330)
!5212 = !DILocalVariable(name: "status", scope: !5205, file: !3, line: 198, type: !330)
!5213 = !DILocalVariable(name: "max_requests", scope: !5205, file: !3, line: 199, type: !253)
!5214 = !DILocalVariable(name: "pri", scope: !5205, file: !3, line: 200, type: !109)
!5215 = !DILocalVariable(name: "__ret_warn_on", scope: !5216, file: !3, line: 213, type: !109)
!5216 = distinct !DILexicalBlock(scope: !5217, file: !3, line: 213, column: 6)
!5217 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 213, column: 6)
!5218 = !DILocalVariable(name: "__flags", scope: !5219, file: !3, line: 213, type: !109)
!5219 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 213, column: 6)
!5220 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 213, column: 6)
!5221 = !DILocalVariable(name: "__UNIQUE_ID___x295", scope: !5222, file: !3, line: 224, type: !253)
!5222 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 224, column: 9)
!5223 = !DILocalVariable(name: "__UNIQUE_ID___y296", scope: !5222, file: !3, line: 224, type: !253)
!5224 = !DILocation(line: 196, column: 36, scope: !5205)
!5225 = !DILocation(line: 196, column: 46, scope: !5205)
!5226 = !DILocation(line: 198, column: 2, scope: !5205)
!5227 = !DILocation(line: 198, column: 6, scope: !5205)
!5228 = !DILocation(line: 198, column: 15, scope: !5205)
!5229 = !DILocation(line: 199, column: 2, scope: !5205)
!5230 = !DILocation(line: 199, column: 6, scope: !5205)
!5231 = !DILocation(line: 200, column: 2, scope: !5205)
!5232 = !DILocation(line: 200, column: 6, scope: !5205)
!5233 = !DILocation(line: 200, column: 12, scope: !5205)
!5234 = !DILocation(line: 200, column: 18, scope: !5205)
!5235 = !DILocation(line: 207, column: 6, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 207, column: 6)
!5237 = !DILocation(line: 207, column: 12, scope: !5236)
!5238 = !DILocation(line: 207, column: 6, scope: !5205)
!5239 = !DILocation(line: 208, column: 18, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 208, column: 7)
!5241 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 207, column: 23)
!5242 = !DILocation(line: 208, column: 7, scope: !5240)
!5243 = !DILocation(line: 208, column: 25, scope: !5240)
!5244 = !DILocation(line: 208, column: 7, scope: !5241)
!5245 = !DILocation(line: 209, column: 4, scope: !5240)
!5246 = !DILocation(line: 210, column: 3, scope: !5241)
!5247 = !DILocation(line: 213, column: 6, scope: !5216)
!5248 = !DILocation(line: 213, column: 6, scope: !5220)
!5249 = !DILocation(line: 213, column: 6, scope: !5219)
!5250 = !DILocation(line: 213, column: 6, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 213, column: 6)
!5252 = !DILocation(line: 213, column: 6, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 213, column: 6)
!5254 = !{i64 2155054423, i64 2155054452, i64 2155054498, i64 2155054556, i64 2155054610, i64 2155054664, i64 2155054719, i64 2155054750, i64 2155055058, i64 2155055064, i64 2155055111, i64 2155055134, i64 2155055160}
!5255 = !DILocation(line: 213, column: 6, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 213, column: 6)
!5257 = !DILocation(line: 213, column: 6, scope: !5217)
!5258 = !DILocation(line: 213, column: 6, scope: !5205)
!5259 = !DILocation(line: 214, column: 3, scope: !5217)
!5260 = !DILocation(line: 216, column: 7, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 216, column: 6)
!5262 = !DILocation(line: 216, column: 6, scope: !5205)
!5263 = !DILocation(line: 217, column: 3, scope: !5261)
!5264 = !DILocation(line: 219, column: 23, scope: !5205)
!5265 = !DILocation(line: 219, column: 29, scope: !5205)
!5266 = !DILocation(line: 219, column: 33, scope: !5205)
!5267 = !DILocation(line: 219, column: 2, scope: !5205)
!5268 = !DILocation(line: 220, column: 8, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 220, column: 6)
!5270 = !DILocation(line: 220, column: 15, scope: !5269)
!5271 = !DILocation(line: 220, column: 6, scope: !5205)
!5272 = !DILocation(line: 221, column: 3, scope: !5269)
!5273 = !DILocation(line: 223, column: 24, scope: !5205)
!5274 = !DILocation(line: 223, column: 30, scope: !5205)
!5275 = !DILocation(line: 223, column: 34, scope: !5205)
!5276 = !DILocation(line: 223, column: 2, scope: !5205)
!5277 = !DILocation(line: 224, column: 9, scope: !5222)
!5278 = !DILocation(line: 224, column: 9, scope: !5205)
!5279 = !DILocation(line: 224, column: 7, scope: !5205)
!5280 = !DILocation(line: 225, column: 25, scope: !5205)
!5281 = !DILocation(line: 225, column: 2, scope: !5205)
!5282 = !DILocation(line: 225, column: 8, scope: !5205)
!5283 = !DILocation(line: 225, column: 23, scope: !5205)
!5284 = !DILocation(line: 226, column: 25, scope: !5205)
!5285 = !DILocation(line: 226, column: 31, scope: !5205)
!5286 = !DILocation(line: 226, column: 35, scope: !5205)
!5287 = !DILocation(line: 226, column: 56, scope: !5205)
!5288 = !DILocation(line: 226, column: 2, scope: !5205)
!5289 = !DILocation(line: 228, column: 10, scope: !5205)
!5290 = !DILocation(line: 229, column: 24, scope: !5205)
!5291 = !DILocation(line: 229, column: 30, scope: !5205)
!5292 = !DILocation(line: 229, column: 34, scope: !5205)
!5293 = !DILocation(line: 229, column: 50, scope: !5205)
!5294 = !DILocation(line: 229, column: 2, scope: !5205)
!5295 = !DILocation(line: 231, column: 2, scope: !5205)
!5296 = !DILocation(line: 231, column: 8, scope: !5205)
!5297 = !DILocation(line: 231, column: 20, scope: !5205)
!5298 = !DILocation(line: 233, column: 2, scope: !5205)
!5299 = !DILocation(line: 234, column: 1, scope: !5205)
!5300 = !DISubprogram(name: "pci_read_config_dword", scope: !185, file: !185, line: 1215, type: !5301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{!109, !5050, !109, !252}
!5303 = !DISubprogram(name: "pci_write_config_dword", scope: !185, file: !185, line: 1218, type: !5304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5304 = !DISubroutineType(types: !5305)
!5305 = !{!109, !5050, !109, !253}
!5306 = distinct !DISubprogram(name: "pci_disable_pri", scope: !3, file: !3, line: 242, type: !181, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5307)
!5307 = !{!5308, !5309, !5310, !5311, !5314}
!5308 = !DILocalVariable(name: "pdev", arg: 1, scope: !5306, file: !3, line: 242, type: !183)
!5309 = !DILocalVariable(name: "control", scope: !5306, file: !3, line: 244, type: !330)
!5310 = !DILocalVariable(name: "pri", scope: !5306, file: !3, line: 245, type: !109)
!5311 = !DILocalVariable(name: "__ret_warn_on", scope: !5312, file: !3, line: 251, type: !109)
!5312 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 251, column: 6)
!5313 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 251, column: 6)
!5314 = !DILocalVariable(name: "__flags", scope: !5315, file: !3, line: 251, type: !109)
!5315 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 251, column: 6)
!5316 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 251, column: 6)
!5317 = !DILocation(line: 242, column: 38, scope: !5306)
!5318 = !DILocation(line: 244, column: 2, scope: !5306)
!5319 = !DILocation(line: 244, column: 6, scope: !5306)
!5320 = !DILocation(line: 245, column: 2, scope: !5306)
!5321 = !DILocation(line: 245, column: 6, scope: !5306)
!5322 = !DILocation(line: 245, column: 12, scope: !5306)
!5323 = !DILocation(line: 245, column: 18, scope: !5306)
!5324 = !DILocation(line: 248, column: 6, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 248, column: 6)
!5326 = !DILocation(line: 248, column: 12, scope: !5325)
!5327 = !DILocation(line: 248, column: 6, scope: !5306)
!5328 = !DILocation(line: 249, column: 3, scope: !5325)
!5329 = !DILocation(line: 251, column: 6, scope: !5312)
!5330 = !DILocation(line: 251, column: 6, scope: !5316)
!5331 = !DILocation(line: 251, column: 6, scope: !5315)
!5332 = !DILocation(line: 251, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 251, column: 6)
!5334 = !DILocation(line: 251, column: 6, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 251, column: 6)
!5336 = !{i64 2155063925, i64 2155063954, i64 2155064000, i64 2155064058, i64 2155064112, i64 2155064166, i64 2155064221, i64 2155064252, i64 2155064560, i64 2155064566, i64 2155064613, i64 2155064636, i64 2155064662}
!5337 = !DILocation(line: 251, column: 6, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5315, file: !3, line: 251, column: 6)
!5339 = !DILocation(line: 251, column: 6, scope: !5313)
!5340 = !DILocation(line: 251, column: 6, scope: !5306)
!5341 = !DILocation(line: 252, column: 3, scope: !5313)
!5342 = !DILocation(line: 254, column: 7, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 254, column: 6)
!5344 = !DILocation(line: 254, column: 6, scope: !5306)
!5345 = !DILocation(line: 255, column: 3, scope: !5343)
!5346 = !DILocation(line: 257, column: 23, scope: !5306)
!5347 = !DILocation(line: 257, column: 29, scope: !5306)
!5348 = !DILocation(line: 257, column: 33, scope: !5306)
!5349 = !DILocation(line: 257, column: 2, scope: !5306)
!5350 = !DILocation(line: 258, column: 10, scope: !5306)
!5351 = !DILocation(line: 259, column: 24, scope: !5306)
!5352 = !DILocation(line: 259, column: 30, scope: !5306)
!5353 = !DILocation(line: 259, column: 34, scope: !5306)
!5354 = !DILocation(line: 259, column: 50, scope: !5306)
!5355 = !DILocation(line: 259, column: 2, scope: !5306)
!5356 = !DILocation(line: 261, column: 2, scope: !5306)
!5357 = !DILocation(line: 261, column: 8, scope: !5306)
!5358 = !DILocation(line: 261, column: 20, scope: !5306)
!5359 = !DILocation(line: 262, column: 1, scope: !5306)
!5360 = distinct !DISubprogram(name: "pci_restore_pri_state", scope: !3, file: !3, line: 269, type: !181, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5361 = !{!5362, !5363, !5364, !5365}
!5362 = !DILocalVariable(name: "pdev", arg: 1, scope: !5360, file: !3, line: 269, type: !183)
!5363 = !DILocalVariable(name: "control", scope: !5360, file: !3, line: 271, type: !330)
!5364 = !DILocalVariable(name: "reqs", scope: !5360, file: !3, line: 272, type: !253)
!5365 = !DILocalVariable(name: "pri", scope: !5360, file: !3, line: 273, type: !109)
!5366 = !DILocation(line: 269, column: 44, scope: !5360)
!5367 = !DILocation(line: 271, column: 2, scope: !5360)
!5368 = !DILocation(line: 271, column: 6, scope: !5360)
!5369 = !DILocation(line: 272, column: 2, scope: !5360)
!5370 = !DILocation(line: 272, column: 6, scope: !5360)
!5371 = !DILocation(line: 272, column: 13, scope: !5360)
!5372 = !DILocation(line: 272, column: 19, scope: !5360)
!5373 = !DILocation(line: 273, column: 2, scope: !5360)
!5374 = !DILocation(line: 273, column: 6, scope: !5360)
!5375 = !DILocation(line: 273, column: 12, scope: !5360)
!5376 = !DILocation(line: 273, column: 18, scope: !5360)
!5377 = !DILocation(line: 275, column: 6, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 275, column: 6)
!5379 = !DILocation(line: 275, column: 12, scope: !5378)
!5380 = !DILocation(line: 275, column: 6, scope: !5360)
!5381 = !DILocation(line: 276, column: 3, scope: !5378)
!5382 = !DILocation(line: 278, column: 7, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 278, column: 6)
!5384 = !DILocation(line: 278, column: 13, scope: !5383)
!5385 = !DILocation(line: 278, column: 6, scope: !5360)
!5386 = !DILocation(line: 279, column: 3, scope: !5383)
!5387 = !DILocation(line: 281, column: 7, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 281, column: 6)
!5389 = !DILocation(line: 281, column: 6, scope: !5360)
!5390 = !DILocation(line: 282, column: 3, scope: !5388)
!5391 = !DILocation(line: 284, column: 25, scope: !5360)
!5392 = !DILocation(line: 284, column: 31, scope: !5360)
!5393 = !DILocation(line: 284, column: 35, scope: !5360)
!5394 = !DILocation(line: 284, column: 56, scope: !5360)
!5395 = !DILocation(line: 284, column: 2, scope: !5360)
!5396 = !DILocation(line: 285, column: 24, scope: !5360)
!5397 = !DILocation(line: 285, column: 30, scope: !5360)
!5398 = !DILocation(line: 285, column: 34, scope: !5360)
!5399 = !DILocation(line: 285, column: 50, scope: !5360)
!5400 = !DILocation(line: 285, column: 2, scope: !5360)
!5401 = !DILocation(line: 286, column: 1, scope: !5360)
!5402 = distinct !DISubprogram(name: "pci_reset_pri", scope: !3, file: !3, line: 295, type: !4740, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5403)
!5403 = !{!5404, !5405, !5406, !5407, !5410}
!5404 = !DILocalVariable(name: "pdev", arg: 1, scope: !5402, file: !3, line: 295, type: !183)
!5405 = !DILocalVariable(name: "control", scope: !5402, file: !3, line: 297, type: !330)
!5406 = !DILocalVariable(name: "pri", scope: !5402, file: !3, line: 298, type: !109)
!5407 = !DILocalVariable(name: "__ret_warn_on", scope: !5408, file: !3, line: 303, type: !109)
!5408 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 303, column: 6)
!5409 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 303, column: 6)
!5410 = !DILocalVariable(name: "__flags", scope: !5411, file: !3, line: 303, type: !109)
!5411 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 303, column: 6)
!5412 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 303, column: 6)
!5413 = !DILocation(line: 295, column: 35, scope: !5402)
!5414 = !DILocation(line: 297, column: 2, scope: !5402)
!5415 = !DILocation(line: 297, column: 6, scope: !5402)
!5416 = !DILocation(line: 298, column: 2, scope: !5402)
!5417 = !DILocation(line: 298, column: 6, scope: !5402)
!5418 = !DILocation(line: 298, column: 12, scope: !5402)
!5419 = !DILocation(line: 298, column: 18, scope: !5402)
!5420 = !DILocation(line: 300, column: 6, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 300, column: 6)
!5422 = !DILocation(line: 300, column: 12, scope: !5421)
!5423 = !DILocation(line: 300, column: 6, scope: !5402)
!5424 = !DILocation(line: 301, column: 3, scope: !5421)
!5425 = !DILocation(line: 303, column: 6, scope: !5408)
!5426 = !DILocation(line: 303, column: 6, scope: !5412)
!5427 = !DILocation(line: 303, column: 6, scope: !5411)
!5428 = !DILocation(line: 303, column: 6, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 303, column: 6)
!5430 = !DILocation(line: 303, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 303, column: 6)
!5432 = !{i64 2155067197, i64 2155067226, i64 2155067272, i64 2155067330, i64 2155067384, i64 2155067438, i64 2155067493, i64 2155067524, i64 2155067832, i64 2155067838, i64 2155067885, i64 2155067908, i64 2155067934}
!5433 = !DILocation(line: 303, column: 6, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 303, column: 6)
!5435 = !DILocation(line: 303, column: 6, scope: !5409)
!5436 = !DILocation(line: 303, column: 6, scope: !5402)
!5437 = !DILocation(line: 304, column: 3, scope: !5409)
!5438 = !DILocation(line: 306, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 306, column: 6)
!5440 = !DILocation(line: 306, column: 6, scope: !5402)
!5441 = !DILocation(line: 307, column: 3, scope: !5439)
!5442 = !DILocation(line: 309, column: 10, scope: !5402)
!5443 = !DILocation(line: 310, column: 24, scope: !5402)
!5444 = !DILocation(line: 310, column: 30, scope: !5402)
!5445 = !DILocation(line: 310, column: 34, scope: !5402)
!5446 = !DILocation(line: 310, column: 50, scope: !5402)
!5447 = !DILocation(line: 310, column: 2, scope: !5402)
!5448 = !DILocation(line: 312, column: 2, scope: !5402)
!5449 = !DILocation(line: 313, column: 1, scope: !5402)
!5450 = distinct !DISubprogram(name: "pci_prg_resp_pasid_required", scope: !3, file: !3, line: 322, type: !4740, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5451)
!5451 = !{!5452}
!5452 = !DILocalVariable(name: "pdev", arg: 1, scope: !5450, file: !3, line: 322, type: !183)
!5453 = !DILocation(line: 322, column: 49, scope: !5450)
!5454 = !DILocation(line: 324, column: 6, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 324, column: 6)
!5456 = !DILocation(line: 324, column: 12, scope: !5455)
!5457 = !DILocation(line: 324, column: 6, scope: !5450)
!5458 = !DILocation(line: 325, column: 21, scope: !5455)
!5459 = !DILocation(line: 325, column: 10, scope: !5455)
!5460 = !DILocation(line: 325, column: 8, scope: !5455)
!5461 = !DILocation(line: 325, column: 3, scope: !5455)
!5462 = !DILocation(line: 327, column: 9, scope: !5450)
!5463 = !DILocation(line: 327, column: 15, scope: !5450)
!5464 = !DILocation(line: 327, column: 2, scope: !5450)
!5465 = distinct !DISubprogram(name: "pci_pri_supported", scope: !3, file: !3, line: 336, type: !4948, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5466)
!5466 = !{!5467}
!5467 = !DILocalVariable(name: "pdev", arg: 1, scope: !5465, file: !3, line: 336, type: !183)
!5468 = !DILocation(line: 336, column: 40, scope: !5465)
!5469 = !DILocation(line: 339, column: 17, scope: !5470)
!5470 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 339, column: 6)
!5471 = !DILocation(line: 339, column: 6, scope: !5470)
!5472 = !DILocation(line: 339, column: 24, scope: !5470)
!5473 = !DILocation(line: 339, column: 6, scope: !5465)
!5474 = !DILocation(line: 340, column: 3, scope: !5470)
!5475 = !DILocation(line: 341, column: 2, scope: !5465)
!5476 = !DILocation(line: 342, column: 1, scope: !5465)
!5477 = distinct !DISubprogram(name: "pci_pasid_init", scope: !3, file: !3, line: 347, type: !181, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5478)
!5478 = !{!5479}
!5479 = !DILocalVariable(name: "pdev", arg: 1, scope: !5477, file: !3, line: 347, type: !183)
!5480 = !DILocation(line: 347, column: 37, scope: !5477)
!5481 = !DILocation(line: 349, column: 44, scope: !5477)
!5482 = !DILocation(line: 349, column: 20, scope: !5477)
!5483 = !DILocation(line: 349, column: 2, scope: !5477)
!5484 = !DILocation(line: 349, column: 8, scope: !5477)
!5485 = !DILocation(line: 349, column: 18, scope: !5477)
!5486 = !DILocation(line: 350, column: 1, scope: !5477)
!5487 = distinct !DISubprogram(name: "pci_enable_pasid", scope: !3, file: !3, line: 361, type: !4745, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5488)
!5488 = !{!5489, !5490, !5491, !5492, !5493, !5494, !5497}
!5489 = !DILocalVariable(name: "pdev", arg: 1, scope: !5487, file: !3, line: 361, type: !183)
!5490 = !DILocalVariable(name: "features", arg: 2, scope: !5487, file: !3, line: 361, type: !109)
!5491 = !DILocalVariable(name: "control", scope: !5487, file: !3, line: 363, type: !330)
!5492 = !DILocalVariable(name: "supported", scope: !5487, file: !3, line: 363, type: !330)
!5493 = !DILocalVariable(name: "pasid", scope: !5487, file: !3, line: 364, type: !109)
!5494 = !DILocalVariable(name: "__ret_warn_on", scope: !5495, file: !3, line: 376, type: !109)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 376, column: 6)
!5496 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 376, column: 6)
!5497 = !DILocalVariable(name: "__flags", scope: !5498, file: !3, line: 376, type: !109)
!5498 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 376, column: 6)
!5499 = distinct !DILexicalBlock(scope: !5495, file: !3, line: 376, column: 6)
!5500 = !DILocation(line: 361, column: 38, scope: !5487)
!5501 = !DILocation(line: 361, column: 48, scope: !5487)
!5502 = !DILocation(line: 363, column: 2, scope: !5487)
!5503 = !DILocation(line: 363, column: 6, scope: !5487)
!5504 = !DILocation(line: 363, column: 15, scope: !5487)
!5505 = !DILocation(line: 364, column: 2, scope: !5487)
!5506 = !DILocation(line: 364, column: 6, scope: !5487)
!5507 = !DILocation(line: 364, column: 14, scope: !5487)
!5508 = !DILocation(line: 364, column: 20, scope: !5487)
!5509 = !DILocation(line: 370, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 370, column: 6)
!5511 = !DILocation(line: 370, column: 12, scope: !5510)
!5512 = !DILocation(line: 370, column: 6, scope: !5487)
!5513 = !DILocation(line: 371, column: 18, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 371, column: 7)
!5515 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 370, column: 23)
!5516 = !DILocation(line: 371, column: 7, scope: !5514)
!5517 = !DILocation(line: 371, column: 25, scope: !5514)
!5518 = !DILocation(line: 371, column: 7, scope: !5515)
!5519 = !DILocation(line: 372, column: 4, scope: !5514)
!5520 = !DILocation(line: 373, column: 3, scope: !5515)
!5521 = !DILocation(line: 376, column: 6, scope: !5495)
!5522 = !DILocation(line: 376, column: 6, scope: !5499)
!5523 = !DILocation(line: 376, column: 6, scope: !5498)
!5524 = !DILocation(line: 376, column: 6, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 376, column: 6)
!5526 = !DILocation(line: 376, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 376, column: 6)
!5528 = !{i64 2155070517, i64 2155070546, i64 2155070592, i64 2155070650, i64 2155070704, i64 2155070758, i64 2155070813, i64 2155070844, i64 2155071152, i64 2155071158, i64 2155071205, i64 2155071228, i64 2155071254}
!5529 = !DILocation(line: 376, column: 6, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 376, column: 6)
!5531 = !DILocation(line: 376, column: 6, scope: !5496)
!5532 = !DILocation(line: 376, column: 6, scope: !5487)
!5533 = !DILocation(line: 377, column: 3, scope: !5496)
!5534 = !DILocation(line: 379, column: 7, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 379, column: 6)
!5536 = !DILocation(line: 379, column: 13, scope: !5535)
!5537 = !DILocation(line: 379, column: 31, scope: !5535)
!5538 = !DILocation(line: 379, column: 35, scope: !5535)
!5539 = !DILocation(line: 379, column: 41, scope: !5535)
!5540 = !DILocation(line: 379, column: 6, scope: !5487)
!5541 = !DILocation(line: 380, column: 3, scope: !5535)
!5542 = !DILocation(line: 382, column: 7, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 382, column: 6)
!5544 = !DILocation(line: 382, column: 6, scope: !5487)
!5545 = !DILocation(line: 383, column: 3, scope: !5543)
!5546 = !DILocation(line: 385, column: 28, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 385, column: 6)
!5548 = !DILocation(line: 385, column: 7, scope: !5547)
!5549 = !DILocation(line: 385, column: 6, scope: !5487)
!5550 = !DILocation(line: 386, column: 3, scope: !5547)
!5551 = !DILocation(line: 388, column: 23, scope: !5487)
!5552 = !DILocation(line: 388, column: 29, scope: !5487)
!5553 = !DILocation(line: 388, column: 35, scope: !5487)
!5554 = !DILocation(line: 388, column: 2, scope: !5487)
!5555 = !DILocation(line: 389, column: 12, scope: !5487)
!5556 = !DILocation(line: 392, column: 7, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 392, column: 6)
!5558 = !DILocation(line: 392, column: 19, scope: !5557)
!5559 = !DILocation(line: 392, column: 17, scope: !5557)
!5560 = !DILocation(line: 392, column: 32, scope: !5557)
!5561 = !DILocation(line: 392, column: 29, scope: !5557)
!5562 = !DILocation(line: 392, column: 6, scope: !5487)
!5563 = !DILocation(line: 393, column: 3, scope: !5557)
!5564 = !DILocation(line: 395, column: 36, scope: !5487)
!5565 = !DILocation(line: 395, column: 34, scope: !5487)
!5566 = !DILocation(line: 395, column: 12, scope: !5487)
!5567 = !DILocation(line: 395, column: 10, scope: !5487)
!5568 = !DILocation(line: 396, column: 25, scope: !5487)
!5569 = !DILocation(line: 396, column: 2, scope: !5487)
!5570 = !DILocation(line: 396, column: 8, scope: !5487)
!5571 = !DILocation(line: 396, column: 23, scope: !5487)
!5572 = !DILocation(line: 398, column: 24, scope: !5487)
!5573 = !DILocation(line: 398, column: 30, scope: !5487)
!5574 = !DILocation(line: 398, column: 36, scope: !5487)
!5575 = !DILocation(line: 398, column: 54, scope: !5487)
!5576 = !DILocation(line: 398, column: 2, scope: !5487)
!5577 = !DILocation(line: 400, column: 2, scope: !5487)
!5578 = !DILocation(line: 400, column: 8, scope: !5487)
!5579 = !DILocation(line: 400, column: 22, scope: !5487)
!5580 = !DILocation(line: 402, column: 2, scope: !5487)
!5581 = !DILocation(line: 403, column: 1, scope: !5487)
!5582 = !DISubprogram(name: "pci_acs_path_enabled", scope: !185, file: !185, line: 2478, type: !5583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5583 = !DISubroutineType(types: !5584)
!5584 = !{!776, !183, !183, !330}
!5585 = distinct !DISubprogram(name: "pci_disable_pasid", scope: !3, file: !3, line: 410, type: !181, scopeLine: 411, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5586)
!5586 = !{!5587, !5588, !5589, !5590, !5593}
!5587 = !DILocalVariable(name: "pdev", arg: 1, scope: !5585, file: !3, line: 410, type: !183)
!5588 = !DILocalVariable(name: "control", scope: !5585, file: !3, line: 412, type: !330)
!5589 = !DILocalVariable(name: "pasid", scope: !5585, file: !3, line: 413, type: !109)
!5590 = !DILocalVariable(name: "__ret_warn_on", scope: !5591, file: !3, line: 419, type: !109)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 419, column: 6)
!5592 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 419, column: 6)
!5593 = !DILocalVariable(name: "__flags", scope: !5594, file: !3, line: 419, type: !109)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 419, column: 6)
!5595 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 419, column: 6)
!5596 = !DILocation(line: 410, column: 40, scope: !5585)
!5597 = !DILocation(line: 412, column: 2, scope: !5585)
!5598 = !DILocation(line: 412, column: 6, scope: !5585)
!5599 = !DILocation(line: 413, column: 2, scope: !5585)
!5600 = !DILocation(line: 413, column: 6, scope: !5585)
!5601 = !DILocation(line: 413, column: 14, scope: !5585)
!5602 = !DILocation(line: 413, column: 20, scope: !5585)
!5603 = !DILocation(line: 416, column: 6, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 416, column: 6)
!5605 = !DILocation(line: 416, column: 12, scope: !5604)
!5606 = !DILocation(line: 416, column: 6, scope: !5585)
!5607 = !DILocation(line: 417, column: 3, scope: !5604)
!5608 = !DILocation(line: 419, column: 6, scope: !5591)
!5609 = !DILocation(line: 419, column: 6, scope: !5595)
!5610 = !DILocation(line: 419, column: 6, scope: !5594)
!5611 = !DILocation(line: 419, column: 6, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 419, column: 6)
!5613 = !DILocation(line: 419, column: 6, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 419, column: 6)
!5615 = !{i64 2155073851, i64 2155073880, i64 2155073926, i64 2155073984, i64 2155074038, i64 2155074092, i64 2155074147, i64 2155074178, i64 2155074486, i64 2155074492, i64 2155074539, i64 2155074562, i64 2155074588}
!5616 = !DILocation(line: 419, column: 6, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 419, column: 6)
!5618 = !DILocation(line: 419, column: 6, scope: !5592)
!5619 = !DILocation(line: 419, column: 6, scope: !5585)
!5620 = !DILocation(line: 420, column: 3, scope: !5592)
!5621 = !DILocation(line: 422, column: 7, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5585, file: !3, line: 422, column: 6)
!5623 = !DILocation(line: 422, column: 6, scope: !5585)
!5624 = !DILocation(line: 423, column: 3, scope: !5622)
!5625 = !DILocation(line: 425, column: 24, scope: !5585)
!5626 = !DILocation(line: 425, column: 30, scope: !5585)
!5627 = !DILocation(line: 425, column: 36, scope: !5585)
!5628 = !DILocation(line: 425, column: 54, scope: !5585)
!5629 = !DILocation(line: 425, column: 2, scope: !5585)
!5630 = !DILocation(line: 427, column: 2, scope: !5585)
!5631 = !DILocation(line: 427, column: 8, scope: !5585)
!5632 = !DILocation(line: 427, column: 22, scope: !5585)
!5633 = !DILocation(line: 428, column: 1, scope: !5585)
!5634 = distinct !DISubprogram(name: "pci_restore_pasid_state", scope: !3, file: !3, line: 435, type: !181, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5635)
!5635 = !{!5636, !5637, !5638}
!5636 = !DILocalVariable(name: "pdev", arg: 1, scope: !5634, file: !3, line: 435, type: !183)
!5637 = !DILocalVariable(name: "control", scope: !5634, file: !3, line: 437, type: !330)
!5638 = !DILocalVariable(name: "pasid", scope: !5634, file: !3, line: 438, type: !109)
!5639 = !DILocation(line: 435, column: 46, scope: !5634)
!5640 = !DILocation(line: 437, column: 2, scope: !5634)
!5641 = !DILocation(line: 437, column: 6, scope: !5634)
!5642 = !DILocation(line: 438, column: 2, scope: !5634)
!5643 = !DILocation(line: 438, column: 6, scope: !5634)
!5644 = !DILocation(line: 438, column: 14, scope: !5634)
!5645 = !DILocation(line: 438, column: 20, scope: !5634)
!5646 = !DILocation(line: 440, column: 6, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 440, column: 6)
!5648 = !DILocation(line: 440, column: 12, scope: !5647)
!5649 = !DILocation(line: 440, column: 6, scope: !5634)
!5650 = !DILocation(line: 441, column: 3, scope: !5647)
!5651 = !DILocation(line: 443, column: 7, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 443, column: 6)
!5653 = !DILocation(line: 443, column: 13, scope: !5652)
!5654 = !DILocation(line: 443, column: 6, scope: !5634)
!5655 = !DILocation(line: 444, column: 3, scope: !5652)
!5656 = !DILocation(line: 446, column: 7, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 446, column: 6)
!5658 = !DILocation(line: 446, column: 6, scope: !5634)
!5659 = !DILocation(line: 447, column: 3, scope: !5657)
!5660 = !DILocation(line: 449, column: 36, scope: !5634)
!5661 = !DILocation(line: 449, column: 42, scope: !5634)
!5662 = !DILocation(line: 449, column: 34, scope: !5634)
!5663 = !DILocation(line: 449, column: 12, scope: !5634)
!5664 = !DILocation(line: 449, column: 10, scope: !5634)
!5665 = !DILocation(line: 450, column: 24, scope: !5634)
!5666 = !DILocation(line: 450, column: 30, scope: !5634)
!5667 = !DILocation(line: 450, column: 36, scope: !5634)
!5668 = !DILocation(line: 450, column: 54, scope: !5634)
!5669 = !DILocation(line: 450, column: 2, scope: !5634)
!5670 = !DILocation(line: 451, column: 1, scope: !5634)
!5671 = distinct !DISubprogram(name: "pci_pasid_features", scope: !3, file: !3, line: 463, type: !4740, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5672)
!5672 = !{!5673, !5674, !5675}
!5673 = !DILocalVariable(name: "pdev", arg: 1, scope: !5671, file: !3, line: 463, type: !183)
!5674 = !DILocalVariable(name: "supported", scope: !5671, file: !3, line: 465, type: !330)
!5675 = !DILocalVariable(name: "pasid", scope: !5671, file: !3, line: 466, type: !109)
!5676 = !DILocation(line: 463, column: 40, scope: !5671)
!5677 = !DILocation(line: 465, column: 2, scope: !5671)
!5678 = !DILocation(line: 465, column: 6, scope: !5671)
!5679 = !DILocation(line: 466, column: 2, scope: !5671)
!5680 = !DILocation(line: 466, column: 6, scope: !5671)
!5681 = !DILocation(line: 468, column: 6, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 468, column: 6)
!5683 = !DILocation(line: 468, column: 12, scope: !5682)
!5684 = !DILocation(line: 468, column: 6, scope: !5671)
!5685 = !DILocation(line: 469, column: 21, scope: !5682)
!5686 = !DILocation(line: 469, column: 10, scope: !5682)
!5687 = !DILocation(line: 469, column: 8, scope: !5682)
!5688 = !DILocation(line: 469, column: 3, scope: !5682)
!5689 = !DILocation(line: 471, column: 10, scope: !5671)
!5690 = !DILocation(line: 471, column: 16, scope: !5671)
!5691 = !DILocation(line: 471, column: 8, scope: !5671)
!5692 = !DILocation(line: 472, column: 7, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 472, column: 6)
!5694 = !DILocation(line: 472, column: 6, scope: !5671)
!5695 = !DILocation(line: 473, column: 3, scope: !5693)
!5696 = !DILocation(line: 475, column: 23, scope: !5671)
!5697 = !DILocation(line: 475, column: 29, scope: !5671)
!5698 = !DILocation(line: 475, column: 35, scope: !5671)
!5699 = !DILocation(line: 475, column: 2, scope: !5671)
!5700 = !DILocation(line: 477, column: 12, scope: !5671)
!5701 = !DILocation(line: 479, column: 9, scope: !5671)
!5702 = !DILocation(line: 479, column: 2, scope: !5671)
!5703 = !DILocation(line: 480, column: 1, scope: !5671)
!5704 = distinct !DISubprogram(name: "pci_max_pasids", scope: !3, file: !3, line: 492, type: !4740, scopeLine: 493, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5705)
!5705 = !{!5706, !5707, !5708}
!5706 = !DILocalVariable(name: "pdev", arg: 1, scope: !5704, file: !3, line: 492, type: !183)
!5707 = !DILocalVariable(name: "supported", scope: !5704, file: !3, line: 494, type: !330)
!5708 = !DILocalVariable(name: "pasid", scope: !5704, file: !3, line: 495, type: !109)
!5709 = !DILocation(line: 492, column: 36, scope: !5704)
!5710 = !DILocation(line: 494, column: 2, scope: !5704)
!5711 = !DILocation(line: 494, column: 6, scope: !5704)
!5712 = !DILocation(line: 495, column: 2, scope: !5704)
!5713 = !DILocation(line: 495, column: 6, scope: !5704)
!5714 = !DILocation(line: 497, column: 6, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 497, column: 6)
!5716 = !DILocation(line: 497, column: 12, scope: !5715)
!5717 = !DILocation(line: 497, column: 6, scope: !5704)
!5718 = !DILocation(line: 498, column: 21, scope: !5715)
!5719 = !DILocation(line: 498, column: 10, scope: !5715)
!5720 = !DILocation(line: 498, column: 8, scope: !5715)
!5721 = !DILocation(line: 498, column: 3, scope: !5715)
!5722 = !DILocation(line: 500, column: 10, scope: !5704)
!5723 = !DILocation(line: 500, column: 16, scope: !5704)
!5724 = !DILocation(line: 500, column: 8, scope: !5704)
!5725 = !DILocation(line: 501, column: 7, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5704, file: !3, line: 501, column: 6)
!5727 = !DILocation(line: 501, column: 6, scope: !5704)
!5728 = !DILocation(line: 502, column: 3, scope: !5726)
!5729 = !DILocation(line: 504, column: 23, scope: !5704)
!5730 = !DILocation(line: 504, column: 29, scope: !5704)
!5731 = !DILocation(line: 504, column: 35, scope: !5704)
!5732 = !DILocation(line: 504, column: 2, scope: !5704)
!5733 = !DILocation(line: 506, column: 15, scope: !5704)
!5734 = !DILocation(line: 506, column: 25, scope: !5704)
!5735 = !DILocation(line: 506, column: 46, scope: !5704)
!5736 = !DILocation(line: 506, column: 14, scope: !5704)
!5737 = !DILocation(line: 506, column: 12, scope: !5704)
!5738 = !DILocation(line: 508, column: 15, scope: !5704)
!5739 = !DILocation(line: 508, column: 12, scope: !5704)
!5740 = !DILocation(line: 508, column: 2, scope: !5704)
!5741 = !DILocation(line: 509, column: 1, scope: !5704)
