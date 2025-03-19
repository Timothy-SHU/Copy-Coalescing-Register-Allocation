; ModuleID = 'drivers/pci/setup-res.c'
source_filename = "drivers/pci/setup-res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_claim_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_claim_resource ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_assign_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_assign_resource ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_release_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_release_resource ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_resize_resource: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_resize_resource ; .previous"

%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.pci_bus_region = type { i64, i64 }
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
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_host_bridge = type { %struct.device, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, ptr, [48 x i8], [0 x i64] }

@.str = private unnamed_addr constant [45 x i8] c"can't claim BAR %d %pR: no address assigned\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [53 x i8] c"can't claim BAR %d %pR: no compatible bridge window\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [54 x i8] c"can't claim BAR %d %pR: address conflict with %s %pR\0A\00", align 1, !dbg !12
@__UNIQUE_ID___addressable_pci_claim_resource292 = internal global ptr @pci_claim_resource, section ".discard.addressable", align 8, !dbg !17
@.str.3 = private unnamed_addr constant [44 x i8] c"BAR %d: can't assign %pR (bogus alignment)\0A\00", align 1, !dbg !175
@.str.4 = private unnamed_addr constant [26 x i8] c"BAR %d: no space for %pR\0A\00", align 1, !dbg !180
@.str.5 = private unnamed_addr constant [30 x i8] c"BAR %d: failed to assign %pR\0A\00", align 1, !dbg !185
@.str.6 = private unnamed_addr constant [22 x i8] c"BAR %d: assigned %pR\0A\00", align 1, !dbg !190
@__UNIQUE_ID___addressable_pci_assign_resource293 = internal global ptr @pci_assign_resource, section ".discard.addressable", align 8, !dbg !195
@.str.7 = private unnamed_addr constant [51 x i8] c"BAR %d: can't reassign an unassigned resource %pR\0A\00", align 1, !dbg !197
@.str.8 = private unnamed_addr constant [41 x i8] c"BAR %d: %pR (failed to expand by %#llx)\0A\00", align 1, !dbg !202
@.str.9 = private unnamed_addr constant [44 x i8] c"BAR %d: reassigned %pR (expanded by %#llx)\0A\00", align 1, !dbg !207
@.str.10 = private unnamed_addr constant [23 x i8] c"BAR %d: releasing %pR\0A\00", align 1, !dbg !209
@__UNIQUE_ID___addressable_pci_release_resource294 = internal global ptr @pci_release_resource, section ".discard.addressable", align 8, !dbg !214
@__UNIQUE_ID___addressable_pci_resize_resource295 = internal global ptr @pci_resize_resource, section ".discard.addressable", align 8, !dbg !216
@.str.11 = private unnamed_addr constant [46 x i8] c"can't enable device: BAR %d %pR not assigned\0A\00", align 1, !dbg !218
@.str.12 = private unnamed_addr constant [45 x i8] c"can't enable device: BAR %d %pR not claimed\0A\00", align 1, !dbg !223
@.str.13 = private unnamed_addr constant [32 x i8] c"enabling device (%04x -> %04x)\0A\00", align 1, !dbg !225
@.str.14 = private unnamed_addr constant [43 x i8] c"BAR %d: error updating (%#010x != %#010x)\0A\00", align 1, !dbg !230
@.str.15 = private unnamed_addr constant [48 x i8] c"BAR %d: error updating (high %#010x != %#010x)\0A\00", align 1, !dbg !235
@pci_mem_start = external dso_local global i64, align 8
@ioport_resource = external dso_local global %struct.resource, align 8
@iomem_resource = external dso_local global %struct.resource, align 8
@.str.16 = private unnamed_addr constant [40 x i8] c"BAR %d: trying firmware assignment %pR\0A\00", align 1, !dbg !240
@.str.17 = private unnamed_addr constant [35 x i8] c"BAR %d: %pR conflicts with %s %pR\0A\00", align 1, !dbg !245
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_pci_claim_resource292, ptr @__UNIQUE_ID___addressable_pci_assign_resource293, ptr @__UNIQUE_ID___addressable_pci_release_resource294, ptr @__UNIQUE_ID___addressable_pci_resize_resource295], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_update_resource(ptr noundef %dev, i32 noundef %resno) #0 align 16 !dbg !259 {
entry:
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4992, metadata !DIExpression()), !dbg !4994
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !4993, metadata !DIExpression()), !dbg !4995
  %0 = load i32, ptr %resno.addr, align 4, !dbg !4996
  %cmp = icmp sle i32 %0, 6, !dbg !4998
  br i1 %cmp, label %if.then, label %if.end, !dbg !4999

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5000
  %2 = load i32, ptr %resno.addr, align 4, !dbg !5001
  call void @pci_std_update_resource(ptr noundef %1, i32 noundef %2) #6, !dbg !5002
  br label %if.end, !dbg !5002

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5003
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_std_update_resource(ptr noundef %dev, i32 noundef %resno) #0 align 16 !dbg !5004 {
entry:
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  %region = alloca %struct.pci_bus_region, align 8
  %disable = alloca i8, align 1
  %cmd = alloca i16, align 2
  %new = alloca i32, align 4
  %check = alloca i32, align 4
  %mask = alloca i32, align 4
  %reg = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5006, metadata !DIExpression()), !dbg !5021
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !5007, metadata !DIExpression()), !dbg !5022
  call void @llvm.lifetime.start.p0(i64 16, ptr %region) #7, !dbg !5023
  call void @llvm.dbg.declare(metadata ptr %region, metadata !5008, metadata !DIExpression()), !dbg !5024
  call void @llvm.lifetime.start.p0(i64 1, ptr %disable) #7, !dbg !5025
  call void @llvm.dbg.declare(metadata ptr %disable, metadata !5014, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 2, ptr %cmd) #7, !dbg !5027
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !5015, metadata !DIExpression()), !dbg !5028
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #7, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %new, metadata !5016, metadata !DIExpression()), !dbg !5030
  call void @llvm.lifetime.start.p0(i64 4, ptr %check) #7, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %check, metadata !5017, metadata !DIExpression()), !dbg !5031
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #7, !dbg !5029
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5018, metadata !DIExpression()), !dbg !5032
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #7, !dbg !5033
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !5019, metadata !DIExpression()), !dbg !5034
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !5035
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5020, metadata !DIExpression()), !dbg !5036
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5037
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !5038
  %arraydecay = getelementptr inbounds [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !5037
  %1 = load i32, ptr %resno.addr, align 4, !dbg !5039
  %idx.ext = sext i32 %1 to i64, !dbg !5040
  %add.ptr = getelementptr %struct.resource, ptr %arraydecay, i64 %idx.ext, !dbg !5040
  store ptr %add.ptr, ptr %res, align 8, !dbg !5036
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5041
  %is_virtfn = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 43, !dbg !5043
  %bf.load = load i40, ptr %is_virtfn, align 1, !dbg !5043
  %bf.lshr = lshr i40 %bf.load, 23, !dbg !5043
  %bf.clear = and i40 %bf.lshr, 1, !dbg !5043
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5043
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5041
  br i1 %tobool, label %if.then, label %if.end, !dbg !5044

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5045

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %res, align 8, !dbg !5046
  %flags = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 3, !dbg !5048
  %4 = load i64, ptr %flags, align 8, !dbg !5048
  %tobool1 = icmp ne i64 %4, 0, !dbg !5046
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5049

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5050

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %res, align 8, !dbg !5051
  %flags4 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3, !dbg !5053
  %6 = load i64, ptr %flags4, align 8, !dbg !5053
  %and = and i64 %6, 536870912, !dbg !5054
  %tobool5 = icmp ne i64 %and, 0, !dbg !5054
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5055

if.then6:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5056

if.end7:                                          ; preds = %if.end3
  %7 = load ptr, ptr %res, align 8, !dbg !5057
  %flags8 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3, !dbg !5059
  %8 = load i64, ptr %flags8, align 8, !dbg !5059
  %and9 = and i64 %8, 16, !dbg !5060
  %tobool10 = icmp ne i64 %and9, 0, !dbg !5060
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5061

if.then11:                                        ; preds = %if.end7
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5062

if.end12:                                         ; preds = %if.end7
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5063
  %bus = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 1, !dbg !5064
  %10 = load ptr, ptr %bus, align 8, !dbg !5064
  %11 = load ptr, ptr %res, align 8, !dbg !5065
  call void @pcibios_resource_to_bus(ptr noundef %10, ptr noundef %region, ptr noundef %11) #6, !dbg !5066
  %start = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 0, !dbg !5067
  %12 = load i64, ptr %start, align 8, !dbg !5067
  %conv = trunc i64 %12 to i32, !dbg !5068
  store i32 %conv, ptr %new, align 4, !dbg !5069
  %13 = load ptr, ptr %res, align 8, !dbg !5070
  %flags13 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3, !dbg !5072
  %14 = load i64, ptr %flags13, align 8, !dbg !5072
  %and14 = and i64 %14, 256, !dbg !5073
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5073
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !5074

if.then16:                                        ; preds = %if.end12
  store i32 -4, ptr %mask, align 4, !dbg !5075
  %15 = load ptr, ptr %res, align 8, !dbg !5077
  %flags17 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3, !dbg !5078
  %16 = load i64, ptr %flags17, align 8, !dbg !5078
  %and18 = and i64 %16, 3, !dbg !5079
  %17 = load i32, ptr %new, align 4, !dbg !5080
  %conv19 = zext i32 %17 to i64, !dbg !5080
  %or = or i64 %conv19, %and18, !dbg !5080
  %conv20 = trunc i64 %or to i32, !dbg !5080
  store i32 %conv20, ptr %new, align 4, !dbg !5080
  br label %if.end30, !dbg !5081

if.else:                                          ; preds = %if.end12
  %18 = load i32, ptr %resno.addr, align 4, !dbg !5082
  %cmp = icmp eq i32 %18, 6, !dbg !5084
  br i1 %cmp, label %if.then22, label %if.else23, !dbg !5085

if.then22:                                        ; preds = %if.else
  store i32 -2048, ptr %mask, align 4, !dbg !5086
  br label %if.end29, !dbg !5088

if.else23:                                        ; preds = %if.else
  store i32 -16, ptr %mask, align 4, !dbg !5089
  %19 = load ptr, ptr %res, align 8, !dbg !5091
  %flags24 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 3, !dbg !5092
  %20 = load i64, ptr %flags24, align 8, !dbg !5092
  %and25 = and i64 %20, 15, !dbg !5093
  %21 = load i32, ptr %new, align 4, !dbg !5094
  %conv26 = zext i32 %21 to i64, !dbg !5094
  %or27 = or i64 %conv26, %and25, !dbg !5094
  %conv28 = trunc i64 %or27 to i32, !dbg !5094
  store i32 %conv28, ptr %new, align 4, !dbg !5094
  br label %if.end29

if.end29:                                         ; preds = %if.else23, %if.then22
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then16
  %22 = load i32, ptr %resno.addr, align 4, !dbg !5095
  %cmp31 = icmp slt i32 %22, 6, !dbg !5097
  br i1 %cmp31, label %if.then33, label %if.else34, !dbg !5098

if.then33:                                        ; preds = %if.end30
  %23 = load i32, ptr %resno.addr, align 4, !dbg !5099
  %mul = mul i32 4, %23, !dbg !5101
  %add = add i32 16, %mul, !dbg !5102
  store i32 %add, ptr %reg, align 4, !dbg !5103
  br label %if.end57, !dbg !5104

if.else34:                                        ; preds = %if.end30
  %24 = load i32, ptr %resno.addr, align 4, !dbg !5105
  %cmp35 = icmp eq i32 %24, 6, !dbg !5107
  br i1 %cmp35, label %if.then37, label %if.else55, !dbg !5108

if.then37:                                        ; preds = %if.else34
  %25 = load ptr, ptr %res, align 8, !dbg !5109
  %flags38 = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 3, !dbg !5112
  %26 = load i64, ptr %flags38, align 8, !dbg !5112
  %and39 = and i64 %26, 1, !dbg !5113
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5113
  br i1 %tobool40, label %if.end47, label %land.lhs.true, !dbg !5114

land.lhs.true:                                    ; preds = %if.then37
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5115
  %rom_bar_overlap = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 43, !dbg !5116
  %bf.load41 = load i40, ptr %rom_bar_overlap, align 1, !dbg !5116
  %bf.lshr42 = lshr i40 %bf.load41, 37, !dbg !5116
  %bf.clear43 = and i40 %bf.lshr42, 1, !dbg !5116
  %bf.cast44 = trunc i40 %bf.clear43 to i32, !dbg !5116
  %tobool45 = icmp ne i32 %bf.cast44, 0, !dbg !5115
  br i1 %tobool45, label %if.end47, label %if.then46, !dbg !5117

if.then46:                                        ; preds = %land.lhs.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5118

if.end47:                                         ; preds = %land.lhs.true, %if.then37
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !5119
  %rom_base_reg = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 21, !dbg !5120
  %29 = load i8, ptr %rom_base_reg, align 8, !dbg !5120
  %conv48 = zext i8 %29 to i32, !dbg !5119
  store i32 %conv48, ptr %reg, align 4, !dbg !5121
  %30 = load ptr, ptr %res, align 8, !dbg !5122
  %flags49 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 3, !dbg !5124
  %31 = load i64, ptr %flags49, align 8, !dbg !5124
  %and50 = and i64 %31, 1, !dbg !5125
  %tobool51 = icmp ne i64 %and50, 0, !dbg !5125
  br i1 %tobool51, label %if.then52, label %if.end54, !dbg !5126

if.then52:                                        ; preds = %if.end47
  %32 = load i32, ptr %new, align 4, !dbg !5127
  %or53 = or i32 %32, 1, !dbg !5127
  store i32 %or53, ptr %new, align 4, !dbg !5127
  br label %if.end54, !dbg !5128

if.end54:                                         ; preds = %if.then52, %if.end47
  br label %if.end56, !dbg !5129

if.else55:                                        ; preds = %if.else34
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5130

if.end56:                                         ; preds = %if.end54
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then33
  %33 = load ptr, ptr %res, align 8, !dbg !5131
  %flags58 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 3, !dbg !5132
  %34 = load i64, ptr %flags58, align 8, !dbg !5132
  %and59 = and i64 %34, 1048576, !dbg !5133
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5133
  br i1 %tobool60, label %land.rhs, label %land.end, !dbg !5134

land.rhs:                                         ; preds = %if.end57
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !5135
  %mmio_always_on = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 30, !dbg !5136
  %bf.load61 = load i24, ptr %mmio_always_on, align 1, !dbg !5136
  %bf.lshr62 = lshr i24 %bf.load61, 13, !dbg !5136
  %bf.clear63 = and i24 %bf.lshr62, 1, !dbg !5136
  %bf.cast64 = zext i24 %bf.clear63 to i32, !dbg !5136
  %tobool65 = icmp ne i32 %bf.cast64, 0, !dbg !5137
  %lnot = xor i1 %tobool65, true, !dbg !5137
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end57
  %36 = phi i1 [ false, %if.end57 ], [ %lnot, %land.rhs ], !dbg !5138
  %frombool = zext i1 %36 to i8, !dbg !5139
  store i8 %frombool, ptr %disable, align 1, !dbg !5139
  %37 = load i8, ptr %disable, align 1, !dbg !5140, !range !5142, !noundef !1051
  %tobool66 = trunc i8 %37 to i1, !dbg !5140
  br i1 %tobool66, label %if.then67, label %if.end72, !dbg !5143

if.then67:                                        ; preds = %land.end
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !5144
  %call = call i32 @pci_read_config_word(ptr noundef %38, i32 noundef 4, ptr noundef %cmd) #6, !dbg !5146
  %39 = load ptr, ptr %dev.addr, align 8, !dbg !5147
  %40 = load i16, ptr %cmd, align 2, !dbg !5148
  %conv68 = zext i16 %40 to i32, !dbg !5148
  %and69 = and i32 %conv68, -3, !dbg !5149
  %conv70 = trunc i32 %and69 to i16, !dbg !5148
  %call71 = call i32 @pci_write_config_word(ptr noundef %39, i32 noundef 4, i16 noundef zeroext %conv70) #6, !dbg !5150
  br label %if.end72, !dbg !5151

if.end72:                                         ; preds = %if.then67, %land.end
  %41 = load ptr, ptr %dev.addr, align 8, !dbg !5152
  %42 = load i32, ptr %reg, align 4, !dbg !5153
  %43 = load i32, ptr %new, align 4, !dbg !5154
  %call73 = call i32 @pci_write_config_dword(ptr noundef %41, i32 noundef %42, i32 noundef %43) #6, !dbg !5155
  %44 = load ptr, ptr %dev.addr, align 8, !dbg !5156
  %45 = load i32, ptr %reg, align 4, !dbg !5157
  %call74 = call i32 @pci_read_config_dword(ptr noundef %44, i32 noundef %45, ptr noundef %check) #6, !dbg !5158
  %46 = load i32, ptr %new, align 4, !dbg !5159
  %47 = load i32, ptr %check, align 4, !dbg !5161
  %xor = xor i32 %46, %47, !dbg !5162
  %48 = load i32, ptr %mask, align 4, !dbg !5163
  %and75 = and i32 %xor, %48, !dbg !5164
  %tobool76 = icmp ne i32 %and75, 0, !dbg !5164
  br i1 %tobool76, label %if.then77, label %if.end79, !dbg !5165

if.then77:                                        ; preds = %if.end72
  br label %do.body, !dbg !5166

do.body:                                          ; preds = %if.then77
  br label %do.cond, !dbg !5169

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5169

do.end:                                           ; preds = %do.cond
  %49 = load ptr, ptr %dev.addr, align 8, !dbg !5166
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 37, !dbg !5166
  %50 = load i32, ptr %resno.addr, align 4, !dbg !5166
  %51 = load i32, ptr %new, align 4, !dbg !5166
  %52 = load i32, ptr %check, align 4, !dbg !5166
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev78, ptr noundef @.str.14, i32 noundef %50, i32 noundef %51, i32 noundef %52) #8, !dbg !5166
  br label %if.end79, !dbg !5171

if.end79:                                         ; preds = %do.end, %if.end72
  %53 = load ptr, ptr %res, align 8, !dbg !5172
  %flags80 = getelementptr inbounds %struct.resource, ptr %53, i32 0, i32 3, !dbg !5174
  %54 = load i64, ptr %flags80, align 8, !dbg !5174
  %and81 = and i64 %54, 1048576, !dbg !5175
  %tobool82 = icmp ne i64 %and81, 0, !dbg !5175
  br i1 %tobool82, label %if.then83, label %if.end99, !dbg !5176

if.then83:                                        ; preds = %if.end79
  %start84 = getelementptr inbounds %struct.pci_bus_region, ptr %region, i32 0, i32 0, !dbg !5177
  %55 = load i64, ptr %start84, align 8, !dbg !5177
  %shr = lshr i64 %55, 16, !dbg !5179
  %shr85 = lshr i64 %shr, 16, !dbg !5180
  %conv86 = trunc i64 %shr85 to i32, !dbg !5181
  store i32 %conv86, ptr %new, align 4, !dbg !5182
  %56 = load ptr, ptr %dev.addr, align 8, !dbg !5183
  %57 = load i32, ptr %reg, align 4, !dbg !5184
  %add87 = add i32 %57, 4, !dbg !5185
  %58 = load i32, ptr %new, align 4, !dbg !5186
  %call88 = call i32 @pci_write_config_dword(ptr noundef %56, i32 noundef %add87, i32 noundef %58) #6, !dbg !5187
  %59 = load ptr, ptr %dev.addr, align 8, !dbg !5188
  %60 = load i32, ptr %reg, align 4, !dbg !5189
  %add89 = add i32 %60, 4, !dbg !5190
  %call90 = call i32 @pci_read_config_dword(ptr noundef %59, i32 noundef %add89, ptr noundef %check) #6, !dbg !5191
  %61 = load i32, ptr %check, align 4, !dbg !5192
  %62 = load i32, ptr %new, align 4, !dbg !5194
  %cmp91 = icmp ne i32 %61, %62, !dbg !5195
  br i1 %cmp91, label %if.then93, label %if.end98, !dbg !5196

if.then93:                                        ; preds = %if.then83
  br label %do.body94, !dbg !5197

do.body94:                                        ; preds = %if.then93
  br label %do.cond95, !dbg !5200

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !5200

do.end96:                                         ; preds = %do.cond95
  %63 = load ptr, ptr %dev.addr, align 8, !dbg !5197
  %dev97 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 37, !dbg !5197
  %64 = load i32, ptr %resno.addr, align 4, !dbg !5197
  %65 = load i32, ptr %new, align 4, !dbg !5197
  %66 = load i32, ptr %check, align 4, !dbg !5197
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97, ptr noundef @.str.15, i32 noundef %64, i32 noundef %65, i32 noundef %66) #8, !dbg !5197
  br label %if.end98, !dbg !5202

if.end98:                                         ; preds = %do.end96, %if.then83
  br label %if.end99, !dbg !5203

if.end99:                                         ; preds = %if.end98, %if.end79
  %67 = load i8, ptr %disable, align 1, !dbg !5204, !range !5142, !noundef !1051
  %tobool100 = trunc i8 %67 to i1, !dbg !5204
  br i1 %tobool100, label %if.then101, label %if.end103, !dbg !5206

if.then101:                                       ; preds = %if.end99
  %68 = load ptr, ptr %dev.addr, align 8, !dbg !5207
  %69 = load i16, ptr %cmd, align 2, !dbg !5208
  %call102 = call i32 @pci_write_config_word(ptr noundef %68, i32 noundef 4, i16 noundef zeroext %69) #6, !dbg !5209
  br label %if.end103, !dbg !5209

if.end103:                                        ; preds = %if.then101, %if.end99
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5210
  br label %cleanup, !dbg !5210

cleanup:                                          ; preds = %if.end103, %if.else55, %if.then46, %if.then11, %if.then6, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #7, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #7, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 4, ptr %check) #7, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #7, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 2, ptr %cmd) #7, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 1, ptr %disable) #7, !dbg !5210
  call void @llvm.lifetime.end.p0(i64 16, ptr %region) #7, !dbg !5210
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5210

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_claim_resource(ptr noundef %dev, i32 noundef %resource) #0 align 16 !dbg !5211 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %resource.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %root = alloca ptr, align 8
  %conflict = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5213, metadata !DIExpression()), !dbg !5218
  store i32 %resource, ptr %resource.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !5214, metadata !DIExpression()), !dbg !5219
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !5220
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5215, metadata !DIExpression()), !dbg !5221
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5222
  %resource1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !5223
  %1 = load i32, ptr %resource.addr, align 4, !dbg !5224
  %idxprom = sext i32 %1 to i64, !dbg !5222
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource1, i64 0, i64 %idxprom, !dbg !5222
  store ptr %arrayidx, ptr %res, align 8, !dbg !5221
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #7, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5216, metadata !DIExpression()), !dbg !5226
  call void @llvm.lifetime.start.p0(i64 8, ptr %conflict) #7, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %conflict, metadata !5217, metadata !DIExpression()), !dbg !5227
  %2 = load ptr, ptr %res, align 8, !dbg !5228
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3, !dbg !5230
  %3 = load i64, ptr %flags, align 8, !dbg !5230
  %and = and i64 %3, 536870912, !dbg !5231
  %tobool = icmp ne i64 %and, 0, !dbg !5231
  br i1 %tobool, label %if.then, label %if.end, !dbg !5232

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5233

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5236

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5236

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5233
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 37, !dbg !5233
  %5 = load i32, ptr %resource.addr, align 4, !dbg !5233
  %6 = load ptr, ptr %res, align 8, !dbg !5233
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef @.str, i32 noundef %5, ptr noundef %6) #8, !dbg !5233
  store i32 -22, ptr %retval, align 4, !dbg !5238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5238

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %res, align 8, !dbg !5239
  %flags3 = getelementptr inbounds %struct.resource, ptr %7, i32 0, i32 3, !dbg !5241
  %8 = load i64, ptr %flags3, align 8, !dbg !5241
  %and4 = and i64 %8, 2, !dbg !5242
  %tobool5 = icmp ne i64 %and4, 0, !dbg !5242
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5243

if.then6:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5244

if.end7:                                          ; preds = %if.end
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5245
  %10 = load ptr, ptr %res, align 8, !dbg !5246
  %call = call ptr @pci_find_parent_resource(ptr noundef %9, ptr noundef %10) #6, !dbg !5247
  store ptr %call, ptr %root, align 8, !dbg !5248
  %11 = load ptr, ptr %root, align 8, !dbg !5249
  %tobool8 = icmp ne ptr %11, null, !dbg !5249
  br i1 %tobool8, label %if.end15, label %if.then9, !dbg !5251

if.then9:                                         ; preds = %if.end7
  br label %do.body10, !dbg !5252

do.body10:                                        ; preds = %if.then9
  br label %do.cond11, !dbg !5255

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5255

do.end12:                                         ; preds = %do.cond11
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !5252
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37, !dbg !5252
  %13 = load i32, ptr %resource.addr, align 4, !dbg !5252
  %14 = load ptr, ptr %res, align 8, !dbg !5252
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef @.str.1, i32 noundef %13, ptr noundef %14) #8, !dbg !5252
  %15 = load ptr, ptr %res, align 8, !dbg !5257
  %flags14 = getelementptr inbounds %struct.resource, ptr %15, i32 0, i32 3, !dbg !5258
  %16 = load i64, ptr %flags14, align 8, !dbg !5259
  %or = or i64 %16, 536870912, !dbg !5259
  store i64 %or, ptr %flags14, align 8, !dbg !5259
  store i32 -22, ptr %retval, align 4, !dbg !5260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5260

if.end15:                                         ; preds = %if.end7
  %17 = load ptr, ptr %root, align 8, !dbg !5261
  %18 = load ptr, ptr %res, align 8, !dbg !5262
  %call16 = call ptr @request_resource_conflict(ptr noundef %17, ptr noundef %18) #6, !dbg !5263
  store ptr %call16, ptr %conflict, align 8, !dbg !5264
  %19 = load ptr, ptr %conflict, align 8, !dbg !5265
  %tobool17 = icmp ne ptr %19, null, !dbg !5265
  br i1 %tobool17, label %if.then18, label %if.end25, !dbg !5267

if.then18:                                        ; preds = %if.end15
  br label %do.body19, !dbg !5268

do.body19:                                        ; preds = %if.then18
  br label %do.cond20, !dbg !5271

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5271

do.end21:                                         ; preds = %do.cond20
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !5268
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 37, !dbg !5268
  %21 = load i32, ptr %resource.addr, align 4, !dbg !5268
  %22 = load ptr, ptr %res, align 8, !dbg !5268
  %23 = load ptr, ptr %conflict, align 8, !dbg !5268
  %name = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 2, !dbg !5268
  %24 = load ptr, ptr %name, align 8, !dbg !5268
  %25 = load ptr, ptr %conflict, align 8, !dbg !5268
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22, ptr noundef @.str.2, i32 noundef %21, ptr noundef %22, ptr noundef %24, ptr noundef %25) #8, !dbg !5268
  %26 = load ptr, ptr %res, align 8, !dbg !5273
  %flags23 = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 3, !dbg !5274
  %27 = load i64, ptr %flags23, align 8, !dbg !5275
  %or24 = or i64 %27, 536870912, !dbg !5275
  store i64 %or24, ptr %flags23, align 8, !dbg !5275
  store i32 -16, ptr %retval, align 4, !dbg !5276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5276

if.end25:                                         ; preds = %if.end15
  store i32 0, ptr %retval, align 4, !dbg !5277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5277

cleanup:                                          ; preds = %if.end25, %do.end21, %do.end12, %if.then6, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %conflict) #7, !dbg !5278
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #7, !dbg !5278
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !5278
  %28 = load i32, ptr %retval, align 4, !dbg !5278
  ret i32 %28, !dbg !5278
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5279 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5283 dso_local ptr @pci_find_parent_resource(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5288 dso_local ptr @request_resource_conflict(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_disable_bridge_window(ptr noundef %dev) #0 align 16 !dbg !5291 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5295
  %call = call i32 @pci_write_config_dword(ptr noundef %0, i32 noundef 32, i32 noundef 65520) #6, !dbg !5296
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5297
  %call1 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef 44, i32 noundef 0) #6, !dbg !5298
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5299
  %call2 = call i32 @pci_write_config_dword(ptr noundef %2, i32 noundef 36, i32 noundef 65520) #6, !dbg !5300
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5301
  %call3 = call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 40, i32 noundef -1) #6, !dbg !5302
  ret void, !dbg !5303
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5304 dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @pcibios_retrieve_fw_addr(ptr noundef %dev, i32 noundef %idx) #0 align 16 !dbg !5307 {
entry:
  %dev.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5311, metadata !DIExpression()), !dbg !5313
  store i32 %idx, ptr %idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %idx.addr, metadata !5312, metadata !DIExpression()), !dbg !5314
  ret i64 0, !dbg !5315
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden i64 @pcibios_align_resource(ptr noundef %data, ptr noundef %res, i64 noundef %size, i64 noundef %align) #0 align 16 !dbg !5316 {
entry:
  %data.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5322, metadata !DIExpression()), !dbg !5326
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5323, metadata !DIExpression()), !dbg !5327
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5324, metadata !DIExpression()), !dbg !5328
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5325, metadata !DIExpression()), !dbg !5329
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5330
  %start = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 0, !dbg !5331
  %1 = load i64, ptr %start, align 8, !dbg !5331
  ret i64 %1, !dbg !5332
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_assign_resource(ptr noundef %dev, i32 noundef %resno) #0 align 16 !dbg !5333 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %align = alloca i64, align 8
  %size = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5335, metadata !DIExpression()), !dbg !5341
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !5336, metadata !DIExpression()), !dbg !5342
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !5343
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5337, metadata !DIExpression()), !dbg !5344
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5345
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !5346
  %arraydecay = getelementptr inbounds [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !5345
  %1 = load i32, ptr %resno.addr, align 4, !dbg !5347
  %idx.ext = sext i32 %1 to i64, !dbg !5348
  %add.ptr = getelementptr %struct.resource, ptr %arraydecay, i64 %idx.ext, !dbg !5348
  store ptr %add.ptr, ptr %res, align 8, !dbg !5344
  call void @llvm.lifetime.start.p0(i64 8, ptr %align) #7, !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %align, metadata !5338, metadata !DIExpression()), !dbg !5350
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #7, !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5339, metadata !DIExpression()), !dbg !5351
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5352
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5340, metadata !DIExpression()), !dbg !5353
  %2 = load ptr, ptr %res, align 8, !dbg !5354
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3, !dbg !5356
  %3 = load i64, ptr %flags, align 8, !dbg !5356
  %and = and i64 %3, 16, !dbg !5357
  %tobool = icmp ne i64 %and, 0, !dbg !5357
  br i1 %tobool, label %if.then, label %if.end, !dbg !5358

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5359

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %res, align 8, !dbg !5360
  %flags1 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3, !dbg !5361
  %5 = load i64, ptr %flags1, align 8, !dbg !5362
  %or = or i64 %5, 536870912, !dbg !5362
  store i64 %or, ptr %flags1, align 8, !dbg !5362
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5363
  %7 = load ptr, ptr %res, align 8, !dbg !5364
  %call = call i64 @pci_resource_alignment(ptr noundef %6, ptr noundef %7) #6, !dbg !5365
  store i64 %call, ptr %align, align 8, !dbg !5366
  %8 = load i64, ptr %align, align 8, !dbg !5367
  %tobool2 = icmp ne i64 %8, 0, !dbg !5367
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !5369

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !5370

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !5373

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5373

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5370
  %dev4 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 37, !dbg !5370
  %10 = load i32, ptr %resno.addr, align 4, !dbg !5370
  %11 = load ptr, ptr %res, align 8, !dbg !5370
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef @.str.3, i32 noundef %10, ptr noundef %11) #8, !dbg !5370
  store i32 -22, ptr %retval, align 4, !dbg !5375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5375

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %res, align 8, !dbg !5376
  %call6 = call i64 @resource_size(ptr noundef %12) #6, !dbg !5377
  store i64 %call6, ptr %size, align 8, !dbg !5378
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5379
  %14 = load i32, ptr %resno.addr, align 4, !dbg !5380
  %15 = load i64, ptr %size, align 8, !dbg !5381
  %16 = load i64, ptr %align, align 8, !dbg !5382
  %call7 = call i32 @_pci_assign_resource(ptr noundef %13, i32 noundef %14, i64 noundef %15, i64 noundef %16) #6, !dbg !5383
  store i32 %call7, ptr %ret, align 4, !dbg !5384
  %17 = load i32, ptr %ret, align 4, !dbg !5385
  %cmp = icmp slt i32 %17, 0, !dbg !5387
  br i1 %cmp, label %if.then8, label %if.end14, !dbg !5388

if.then8:                                         ; preds = %if.end5
  br label %do.body9, !dbg !5389

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !5392

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5392

do.end11:                                         ; preds = %do.cond10
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5389
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 37, !dbg !5389
  %19 = load i32, ptr %resno.addr, align 4, !dbg !5389
  %20 = load ptr, ptr %res, align 8, !dbg !5389
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef @.str.4, i32 noundef %19, ptr noundef %20) #8, !dbg !5389
  %21 = load ptr, ptr %res, align 8, !dbg !5394
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5395
  %23 = load i32, ptr %resno.addr, align 4, !dbg !5396
  %24 = load i64, ptr %size, align 8, !dbg !5397
  %call13 = call i32 @pci_revert_fw_address(ptr noundef %21, ptr noundef %22, i32 noundef %23, i64 noundef %24) #6, !dbg !5398
  store i32 %call13, ptr %ret, align 4, !dbg !5399
  br label %if.end14, !dbg !5400

if.end14:                                         ; preds = %do.end11, %if.end5
  %25 = load i32, ptr %ret, align 4, !dbg !5401
  %cmp15 = icmp slt i32 %25, 0, !dbg !5403
  br i1 %cmp15, label %if.then16, label %if.end21, !dbg !5404

if.then16:                                        ; preds = %if.end14
  br label %do.body17, !dbg !5405

do.body17:                                        ; preds = %if.then16
  br label %do.cond18, !dbg !5408

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5408

do.end19:                                         ; preds = %do.cond18
  %26 = load ptr, ptr %dev.addr, align 8, !dbg !5405
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 37, !dbg !5405
  %27 = load i32, ptr %resno.addr, align 4, !dbg !5405
  %28 = load ptr, ptr %res, align 8, !dbg !5405
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef @.str.5, i32 noundef %27, ptr noundef %28) #8, !dbg !5405
  %29 = load i32, ptr %ret, align 4, !dbg !5410
  store i32 %29, ptr %retval, align 4, !dbg !5411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5411

if.end21:                                         ; preds = %if.end14
  %30 = load ptr, ptr %res, align 8, !dbg !5412
  %flags22 = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 3, !dbg !5413
  %31 = load i64, ptr %flags22, align 8, !dbg !5414
  %and23 = and i64 %31, -536870913, !dbg !5414
  store i64 %and23, ptr %flags22, align 8, !dbg !5414
  %32 = load ptr, ptr %res, align 8, !dbg !5415
  %flags24 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 3, !dbg !5416
  %33 = load i64, ptr %flags24, align 8, !dbg !5417
  %and25 = and i64 %33, -524289, !dbg !5417
  store i64 %and25, ptr %flags24, align 8, !dbg !5417
  br label %do.body26, !dbg !5418

do.body26:                                        ; preds = %if.end21
  br label %do.cond27, !dbg !5420

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !5420

do.end28:                                         ; preds = %do.cond27
  %34 = load ptr, ptr %dev.addr, align 8, !dbg !5418
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 37, !dbg !5418
  %35 = load i32, ptr %resno.addr, align 4, !dbg !5418
  %36 = load ptr, ptr %res, align 8, !dbg !5418
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29, ptr noundef @.str.6, i32 noundef %35, ptr noundef %36) #8, !dbg !5418
  %37 = load i32, ptr %resno.addr, align 4, !dbg !5422
  %cmp30 = icmp slt i32 %37, 7, !dbg !5424
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5425

if.then31:                                        ; preds = %do.end28
  %38 = load ptr, ptr %dev.addr, align 8, !dbg !5426
  %39 = load i32, ptr %resno.addr, align 4, !dbg !5427
  call void @pci_update_resource(ptr noundef %38, i32 noundef %39) #6, !dbg !5428
  br label %if.end32, !dbg !5428

if.end32:                                         ; preds = %if.then31, %do.end28
  store i32 0, ptr %retval, align 4, !dbg !5429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5429

cleanup:                                          ; preds = %if.end32, %do.end19, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !5430
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #7, !dbg !5430
  call void @llvm.lifetime.end.p0(i64 8, ptr %align) #7, !dbg !5430
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !5430
  %40 = load i32, ptr %retval, align 4, !dbg !5430
  ret i32 %40, !dbg !5430
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_resource_alignment(ptr noundef %dev, ptr noundef %res) #5 align 16 !dbg !5431 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5435, metadata !DIExpression()), !dbg !5437
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5436, metadata !DIExpression()), !dbg !5438
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5439
  %class = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 11, !dbg !5441
  %1 = load i32, ptr %class, align 4, !dbg !5441
  %shr = lshr i32 %1, 8, !dbg !5442
  %cmp = icmp eq i32 %shr, 1543, !dbg !5443
  br i1 %cmp, label %if.then, label %if.end, !dbg !5444

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5445
  %call = call i64 @pci_cardbus_resource_alignment(ptr noundef %2) #6, !dbg !5446
  store i64 %call, ptr %retval, align 8, !dbg !5447
  br label %return, !dbg !5447

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5448
  %call1 = call i64 @resource_alignment(ptr noundef %3) #6, !dbg !5449
  store i64 %call1, ptr %retval, align 8, !dbg !5450
  br label %return, !dbg !5450

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !5451
  ret i64 %4, !dbg !5451
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #5 align 16 !dbg !5452 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5456, metadata !DIExpression()), !dbg !5457
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5458
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !5459
  %1 = load i64, ptr %end, align 8, !dbg !5459
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5460
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !5461
  %3 = load i64, ptr %start, align 8, !dbg !5461
  %sub = sub i64 %1, %3, !dbg !5462
  %add = add i64 %sub, 1, !dbg !5463
  ret i64 %add, !dbg !5464
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @_pci_assign_resource(ptr noundef %dev, i32 noundef %resno, i64 noundef %size, i64 noundef %min_align) #0 align 16 !dbg !5465 {
entry:
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %min_align.addr = alloca i64, align 8
  %bus = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5469, metadata !DIExpression()), !dbg !5475
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !5470, metadata !DIExpression()), !dbg !5476
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5471, metadata !DIExpression()), !dbg !5477
  store i64 %min_align, ptr %min_align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min_align.addr, metadata !5472, metadata !DIExpression()), !dbg !5478
  call void @llvm.lifetime.start.p0(i64 8, ptr %bus) #7, !dbg !5479
  call void @llvm.dbg.declare(metadata ptr %bus, metadata !5473, metadata !DIExpression()), !dbg !5480
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5481
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5474, metadata !DIExpression()), !dbg !5482
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5483
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !5484
  %1 = load ptr, ptr %bus1, align 8, !dbg !5484
  store ptr %1, ptr %bus, align 8, !dbg !5485
  br label %while.cond, !dbg !5486

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %bus, align 8, !dbg !5487
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5488
  %4 = load i32, ptr %resno.addr, align 4, !dbg !5489
  %5 = load i64, ptr %size.addr, align 8, !dbg !5490
  %6 = load i64, ptr %min_align.addr, align 8, !dbg !5491
  %call = call i32 @__pci_assign_resource(ptr noundef %2, ptr noundef %3, i32 noundef %4, i64 noundef %5, i64 noundef %6) #6, !dbg !5492
  store i32 %call, ptr %ret, align 4, !dbg !5493
  %tobool = icmp ne i32 %call, 0, !dbg !5486
  br i1 %tobool, label %while.body, label %while.end, !dbg !5486

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %bus, align 8, !dbg !5494
  %parent = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 1, !dbg !5497
  %8 = load ptr, ptr %parent, align 8, !dbg !5497
  %tobool2 = icmp ne ptr %8, null, !dbg !5494
  br i1 %tobool2, label %lor.lhs.false, label %if.then, !dbg !5498

lor.lhs.false:                                    ; preds = %while.body
  %9 = load ptr, ptr %bus, align 8, !dbg !5499
  %self = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 4, !dbg !5500
  %10 = load ptr, ptr %self, align 8, !dbg !5500
  %transparent = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 43, !dbg !5501
  %bf.load = load i40, ptr %transparent, align 1, !dbg !5501
  %bf.clear = and i40 %bf.load, 1, !dbg !5501
  %bf.cast = trunc i40 %bf.clear to i32, !dbg !5501
  %tobool3 = icmp ne i32 %bf.cast, 0, !dbg !5499
  br i1 %tobool3, label %if.end, label %if.then, !dbg !5502

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end, !dbg !5503

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %bus, align 8, !dbg !5504
  %parent4 = getelementptr inbounds %struct.pci_bus, ptr %11, i32 0, i32 1, !dbg !5505
  %12 = load ptr, ptr %parent4, align 8, !dbg !5505
  store ptr %12, ptr %bus, align 8, !dbg !5506
  br label %while.cond, !dbg !5486, !llvm.loop !5507

while.end:                                        ; preds = %if.then, %while.cond
  %13 = load i32, ptr %ret, align 4, !dbg !5511
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !5512
  call void @llvm.lifetime.end.p0(i64 8, ptr %bus) #7, !dbg !5512
  ret i32 %13, !dbg !5513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_revert_fw_address(ptr noundef %res, ptr noundef %dev, i32 noundef %resno, i64 noundef %size) #0 align 16 !dbg !5514 {
entry:
  %retval = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %root = alloca ptr, align 8
  %conflict = alloca ptr, align 8
  %fw_addr = alloca i64, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5518, metadata !DIExpression()), !dbg !5527
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5519, metadata !DIExpression()), !dbg !5528
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !5520, metadata !DIExpression()), !dbg !5529
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5521, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #7, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5522, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 8, ptr %conflict) #7, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %conflict, metadata !5523, metadata !DIExpression()), !dbg !5533
  call void @llvm.lifetime.start.p0(i64 8, ptr %fw_addr) #7, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %fw_addr, metadata !5524, metadata !DIExpression()), !dbg !5535
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #7, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %start, metadata !5525, metadata !DIExpression()), !dbg !5536
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #7, !dbg !5534
  call void @llvm.dbg.declare(metadata ptr %end, metadata !5526, metadata !DIExpression()), !dbg !5537
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5538
  %1 = load i32, ptr %resno.addr, align 4, !dbg !5539
  %call = call i64 @pcibios_retrieve_fw_addr(ptr noundef %0, i32 noundef %1) #6, !dbg !5540
  store i64 %call, ptr %fw_addr, align 8, !dbg !5541
  %2 = load i64, ptr %fw_addr, align 8, !dbg !5542
  %tobool = icmp ne i64 %2, 0, !dbg !5542
  br i1 %tobool, label %if.end, label %if.then, !dbg !5544

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5545

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %res.addr, align 8, !dbg !5546
  %start1 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 0, !dbg !5547
  %4 = load i64, ptr %start1, align 8, !dbg !5547
  store i64 %4, ptr %start, align 8, !dbg !5548
  %5 = load ptr, ptr %res.addr, align 8, !dbg !5549
  %end2 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1, !dbg !5550
  %6 = load i64, ptr %end2, align 8, !dbg !5550
  store i64 %6, ptr %end, align 8, !dbg !5551
  %7 = load i64, ptr %fw_addr, align 8, !dbg !5552
  %8 = load ptr, ptr %res.addr, align 8, !dbg !5553
  %start3 = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !5554
  store i64 %7, ptr %start3, align 8, !dbg !5555
  %9 = load ptr, ptr %res.addr, align 8, !dbg !5556
  %start4 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 0, !dbg !5557
  %10 = load i64, ptr %start4, align 8, !dbg !5557
  %11 = load i64, ptr %size.addr, align 8, !dbg !5558
  %add = add i64 %10, %11, !dbg !5559
  %sub = sub i64 %add, 1, !dbg !5560
  %12 = load ptr, ptr %res.addr, align 8, !dbg !5561
  %end5 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 1, !dbg !5562
  store i64 %sub, ptr %end5, align 8, !dbg !5563
  %13 = load ptr, ptr %res.addr, align 8, !dbg !5564
  %flags = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3, !dbg !5565
  %14 = load i64, ptr %flags, align 8, !dbg !5566
  %and = and i64 %14, -536870913, !dbg !5566
  store i64 %and, ptr %flags, align 8, !dbg !5566
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5567
  %16 = load ptr, ptr %res.addr, align 8, !dbg !5568
  %call6 = call ptr @pci_find_parent_resource(ptr noundef %15, ptr noundef %16) #6, !dbg !5569
  store ptr %call6, ptr %root, align 8, !dbg !5570
  %17 = load ptr, ptr %root, align 8, !dbg !5571
  %tobool7 = icmp ne ptr %17, null, !dbg !5571
  br i1 %tobool7, label %if.end18, label %if.then8, !dbg !5573

if.then8:                                         ; preds = %if.end
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5574
  %call9 = call ptr @pci_upstream_bridge(ptr noundef %18) #6, !dbg !5577
  %tobool10 = icmp ne ptr %call9, null, !dbg !5577
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5578

if.then11:                                        ; preds = %if.then8
  store i32 -6, ptr %retval, align 4, !dbg !5579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5579

if.end12:                                         ; preds = %if.then8
  %19 = load ptr, ptr %res.addr, align 8, !dbg !5580
  %flags13 = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 3, !dbg !5582
  %20 = load i64, ptr %flags13, align 8, !dbg !5582
  %and14 = and i64 %20, 256, !dbg !5583
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5583
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !5584

if.then16:                                        ; preds = %if.end12
  store ptr @ioport_resource, ptr %root, align 8, !dbg !5585
  br label %if.end17, !dbg !5586

if.else:                                          ; preds = %if.end12
  store ptr @iomem_resource, ptr %root, align 8, !dbg !5587
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  br label %if.end18, !dbg !5588

if.end18:                                         ; preds = %if.end17, %if.end
  br label %do.body, !dbg !5589

do.body:                                          ; preds = %if.end18
  br label %do.cond, !dbg !5591

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5591

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %dev.addr, align 8, !dbg !5589
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 37, !dbg !5589
  %22 = load i32, ptr %resno.addr, align 4, !dbg !5589
  %23 = load ptr, ptr %res.addr, align 8, !dbg !5589
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef @.str.16, i32 noundef %22, ptr noundef %23) #8, !dbg !5589
  %24 = load ptr, ptr %root, align 8, !dbg !5593
  %25 = load ptr, ptr %res.addr, align 8, !dbg !5594
  %call20 = call ptr @request_resource_conflict(ptr noundef %24, ptr noundef %25) #6, !dbg !5595
  store ptr %call20, ptr %conflict, align 8, !dbg !5596
  %26 = load ptr, ptr %conflict, align 8, !dbg !5597
  %tobool21 = icmp ne ptr %26, null, !dbg !5597
  br i1 %tobool21, label %if.then22, label %if.end30, !dbg !5599

if.then22:                                        ; preds = %do.end
  br label %do.body23, !dbg !5600

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !5603

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5603

do.end25:                                         ; preds = %do.cond24
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5600
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 37, !dbg !5600
  %28 = load i32, ptr %resno.addr, align 4, !dbg !5600
  %29 = load ptr, ptr %res.addr, align 8, !dbg !5600
  %30 = load ptr, ptr %conflict, align 8, !dbg !5600
  %name = getelementptr inbounds %struct.resource, ptr %30, i32 0, i32 2, !dbg !5600
  %31 = load ptr, ptr %name, align 8, !dbg !5600
  %32 = load ptr, ptr %conflict, align 8, !dbg !5600
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef @.str.17, i32 noundef %28, ptr noundef %29, ptr noundef %31, ptr noundef %32) #8, !dbg !5600
  %33 = load i64, ptr %start, align 8, !dbg !5605
  %34 = load ptr, ptr %res.addr, align 8, !dbg !5606
  %start27 = getelementptr inbounds %struct.resource, ptr %34, i32 0, i32 0, !dbg !5607
  store i64 %33, ptr %start27, align 8, !dbg !5608
  %35 = load i64, ptr %end, align 8, !dbg !5609
  %36 = load ptr, ptr %res.addr, align 8, !dbg !5610
  %end28 = getelementptr inbounds %struct.resource, ptr %36, i32 0, i32 1, !dbg !5611
  store i64 %35, ptr %end28, align 8, !dbg !5612
  %37 = load ptr, ptr %res.addr, align 8, !dbg !5613
  %flags29 = getelementptr inbounds %struct.resource, ptr %37, i32 0, i32 3, !dbg !5614
  %38 = load i64, ptr %flags29, align 8, !dbg !5615
  %or = or i64 %38, 536870912, !dbg !5615
  store i64 %or, ptr %flags29, align 8, !dbg !5615
  store i32 -16, ptr %retval, align 4, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5616

if.end30:                                         ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !5617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5617

cleanup:                                          ; preds = %if.end30, %do.end25, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #7, !dbg !5618
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #7, !dbg !5618
  call void @llvm.lifetime.end.p0(i64 8, ptr %fw_addr) #7, !dbg !5618
  call void @llvm.lifetime.end.p0(i64 8, ptr %conflict) #7, !dbg !5618
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #7, !dbg !5618
  %39 = load i32, ptr %retval, align 4, !dbg !5618
  ret i32 %39, !dbg !5618
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_reassign_resource(ptr noundef %dev, i32 noundef %resno, i64 noundef %addsize, i64 noundef %min_align) #0 align 16 !dbg !5619 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  %addsize.addr = alloca i64, align 8
  %min_align.addr = alloca i64, align 8
  %res = alloca ptr, align 8
  %flags = alloca i64, align 8
  %new_size = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5621, metadata !DIExpression()), !dbg !5629
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !5622, metadata !DIExpression()), !dbg !5630
  store i64 %addsize, ptr %addsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addsize.addr, metadata !5623, metadata !DIExpression()), !dbg !5631
  store i64 %min_align, ptr %min_align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %min_align.addr, metadata !5624, metadata !DIExpression()), !dbg !5632
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !5633
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5625, metadata !DIExpression()), !dbg !5634
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5635
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !5636
  %arraydecay = getelementptr inbounds [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !5635
  %1 = load i32, ptr %resno.addr, align 4, !dbg !5637
  %idx.ext = sext i32 %1 to i64, !dbg !5638
  %add.ptr = getelementptr %struct.resource, ptr %arraydecay, i64 %idx.ext, !dbg !5638
  store ptr %add.ptr, ptr %res, align 8, !dbg !5634
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #7, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5626, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_size) #7, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %new_size, metadata !5627, metadata !DIExpression()), !dbg !5642
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5643
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5628, metadata !DIExpression()), !dbg !5644
  %2 = load ptr, ptr %res, align 8, !dbg !5645
  %flags1 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3, !dbg !5647
  %3 = load i64, ptr %flags1, align 8, !dbg !5647
  %and = and i64 %3, 16, !dbg !5648
  %tobool = icmp ne i64 %and, 0, !dbg !5648
  br i1 %tobool, label %if.then, label %if.end, !dbg !5649

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5650

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %res, align 8, !dbg !5651
  %flags2 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 3, !dbg !5652
  %5 = load i64, ptr %flags2, align 8, !dbg !5652
  store i64 %5, ptr %flags, align 8, !dbg !5653
  %6 = load ptr, ptr %res, align 8, !dbg !5654
  %flags3 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3, !dbg !5655
  %7 = load i64, ptr %flags3, align 8, !dbg !5656
  %or = or i64 %7, 536870912, !dbg !5656
  store i64 %or, ptr %flags3, align 8, !dbg !5656
  %8 = load ptr, ptr %res, align 8, !dbg !5657
  %parent = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 5, !dbg !5659
  %9 = load ptr, ptr %parent, align 8, !dbg !5659
  %tobool4 = icmp ne ptr %9, null, !dbg !5657
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !5660

if.then5:                                         ; preds = %if.end
  br label %do.body, !dbg !5661

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !5664

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5664

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5661
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %10, i32 0, i32 37, !dbg !5661
  %11 = load i32, ptr %resno.addr, align 4, !dbg !5661
  %12 = load ptr, ptr %res, align 8, !dbg !5661
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev6, ptr noundef @.str.7, i32 noundef %11, ptr noundef %12) #8, !dbg !5661
  store i32 -22, ptr %retval, align 4, !dbg !5666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5666

if.end7:                                          ; preds = %if.end
  %13 = load ptr, ptr %res, align 8, !dbg !5667
  %call = call i64 @resource_size(ptr noundef %13) #6, !dbg !5668
  %14 = load i64, ptr %addsize.addr, align 8, !dbg !5669
  %add = add i64 %call, %14, !dbg !5670
  store i64 %add, ptr %new_size, align 8, !dbg !5671
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5672
  %16 = load i32, ptr %resno.addr, align 4, !dbg !5673
  %17 = load i64, ptr %new_size, align 8, !dbg !5674
  %18 = load i64, ptr %min_align.addr, align 8, !dbg !5675
  %call8 = call i32 @_pci_assign_resource(ptr noundef %15, i32 noundef %16, i64 noundef %17, i64 noundef %18) #6, !dbg !5676
  store i32 %call8, ptr %ret, align 4, !dbg !5677
  %19 = load i32, ptr %ret, align 4, !dbg !5678
  %tobool9 = icmp ne i32 %19, 0, !dbg !5678
  br i1 %tobool9, label %if.then10, label %if.end16, !dbg !5680

if.then10:                                        ; preds = %if.end7
  %20 = load i64, ptr %flags, align 8, !dbg !5681
  %21 = load ptr, ptr %res, align 8, !dbg !5683
  %flags11 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 3, !dbg !5684
  store i64 %20, ptr %flags11, align 8, !dbg !5685
  br label %do.body12, !dbg !5686

do.body12:                                        ; preds = %if.then10
  br label %do.cond13, !dbg !5688

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5688

do.end14:                                         ; preds = %do.cond13
  %22 = load ptr, ptr %dev.addr, align 8, !dbg !5686
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 37, !dbg !5686
  %23 = load i32, ptr %resno.addr, align 4, !dbg !5686
  %24 = load ptr, ptr %res, align 8, !dbg !5686
  %25 = load i64, ptr %addsize.addr, align 8, !dbg !5686
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15, ptr noundef @.str.8, i32 noundef %23, ptr noundef %24, i64 noundef %25) #8, !dbg !5686
  %26 = load i32, ptr %ret, align 4, !dbg !5690
  store i32 %26, ptr %retval, align 4, !dbg !5691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5691

if.end16:                                         ; preds = %if.end7
  %27 = load ptr, ptr %res, align 8, !dbg !5692
  %flags17 = getelementptr inbounds %struct.resource, ptr %27, i32 0, i32 3, !dbg !5693
  %28 = load i64, ptr %flags17, align 8, !dbg !5694
  %and18 = and i64 %28, -536870913, !dbg !5694
  store i64 %and18, ptr %flags17, align 8, !dbg !5694
  %29 = load ptr, ptr %res, align 8, !dbg !5695
  %flags19 = getelementptr inbounds %struct.resource, ptr %29, i32 0, i32 3, !dbg !5696
  %30 = load i64, ptr %flags19, align 8, !dbg !5697
  %and20 = and i64 %30, -524289, !dbg !5697
  store i64 %and20, ptr %flags19, align 8, !dbg !5697
  br label %do.body21, !dbg !5698

do.body21:                                        ; preds = %if.end16
  br label %do.cond22, !dbg !5700

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5700

do.end23:                                         ; preds = %do.cond22
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !5698
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 37, !dbg !5698
  %32 = load i32, ptr %resno.addr, align 4, !dbg !5698
  %33 = load ptr, ptr %res, align 8, !dbg !5698
  %34 = load i64, ptr %addsize.addr, align 8, !dbg !5698
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef @.str.9, i32 noundef %32, ptr noundef %33, i64 noundef %34) #8, !dbg !5698
  %35 = load i32, ptr %resno.addr, align 4, !dbg !5702
  %cmp = icmp slt i32 %35, 7, !dbg !5704
  br i1 %cmp, label %if.then25, label %if.end26, !dbg !5705

if.then25:                                        ; preds = %do.end23
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !5706
  %37 = load i32, ptr %resno.addr, align 4, !dbg !5707
  call void @pci_update_resource(ptr noundef %36, i32 noundef %37) #6, !dbg !5708
  br label %if.end26, !dbg !5708

if.end26:                                         ; preds = %if.then25, %do.end23
  store i32 0, ptr %retval, align 4, !dbg !5709
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5709

cleanup:                                          ; preds = %if.end26, %do.end14, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_size) #7, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #7, !dbg !5710
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !5710
  %38 = load i32, ptr %retval, align 4, !dbg !5710
  ret i32 %38, !dbg !5710
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_release_resource(ptr noundef %dev, i32 noundef %resno) #0 align 16 !dbg !5711 {
entry:
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5713, metadata !DIExpression()), !dbg !5716
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !5714, metadata !DIExpression()), !dbg !5717
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5715, metadata !DIExpression()), !dbg !5719
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5720
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !5721
  %arraydecay = getelementptr inbounds [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !5720
  %1 = load i32, ptr %resno.addr, align 4, !dbg !5722
  %idx.ext = sext i32 %1 to i64, !dbg !5723
  %add.ptr = getelementptr %struct.resource, ptr %arraydecay, i64 %idx.ext, !dbg !5723
  store ptr %add.ptr, ptr %res, align 8, !dbg !5719
  br label %do.body, !dbg !5724

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5726

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5726

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5724
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 37, !dbg !5724
  %3 = load i32, ptr %resno.addr, align 4, !dbg !5724
  %4 = load ptr, ptr %res, align 8, !dbg !5724
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef @.str.10, i32 noundef %3, ptr noundef %4) #8, !dbg !5724
  %5 = load ptr, ptr %res, align 8, !dbg !5728
  %parent = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 5, !dbg !5730
  %6 = load ptr, ptr %parent, align 8, !dbg !5730
  %tobool = icmp ne ptr %6, null, !dbg !5728
  br i1 %tobool, label %if.end, label %if.then, !dbg !5731

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5732

if.end:                                           ; preds = %do.end
  %7 = load ptr, ptr %res, align 8, !dbg !5733
  %call = call i32 @release_resource(ptr noundef %7) #6, !dbg !5734
  %8 = load ptr, ptr %res, align 8, !dbg !5735
  %call2 = call i64 @resource_size(ptr noundef %8) #6, !dbg !5736
  %sub = sub i64 %call2, 1, !dbg !5737
  %9 = load ptr, ptr %res, align 8, !dbg !5738
  %end = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 1, !dbg !5739
  store i64 %sub, ptr %end, align 8, !dbg !5740
  %10 = load ptr, ptr %res, align 8, !dbg !5741
  %start = getelementptr inbounds %struct.resource, ptr %10, i32 0, i32 0, !dbg !5742
  store i64 0, ptr %start, align 8, !dbg !5743
  %11 = load ptr, ptr %res, align 8, !dbg !5744
  %flags = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 3, !dbg !5745
  %12 = load i64, ptr %flags, align 8, !dbg !5746
  %or = or i64 %12, 536870912, !dbg !5746
  store i64 %or, ptr %flags, align 8, !dbg !5746
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5747
  br label %cleanup, !dbg !5747

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !5747
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5747

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5748 dso_local i32 @release_resource(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_resize_resource(ptr noundef %dev, i32 noundef %resno, i32 noundef %size) #0 align 16 !dbg !5751 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %res = alloca ptr, align 8
  %host = alloca ptr, align 8
  %old = alloca i32, align 4
  %ret = alloca i32, align 4
  %sizes = alloca i32, align 4
  %cmd = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5755, metadata !DIExpression()), !dbg !5809
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !5756, metadata !DIExpression()), !dbg !5810
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5757, metadata !DIExpression()), !dbg !5811
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !5812
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5758, metadata !DIExpression()), !dbg !5813
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5814
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !5815
  %arraydecay = getelementptr inbounds [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !5814
  %1 = load i32, ptr %resno.addr, align 4, !dbg !5816
  %idx.ext = sext i32 %1 to i64, !dbg !5817
  %add.ptr = getelementptr %struct.resource, ptr %arraydecay, i64 %idx.ext, !dbg !5817
  store ptr %add.ptr, ptr %res, align 8, !dbg !5813
  call void @llvm.lifetime.start.p0(i64 8, ptr %host) #7, !dbg !5818
  call void @llvm.dbg.declare(metadata ptr %host, metadata !5759, metadata !DIExpression()), !dbg !5819
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #7, !dbg !5820
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5804, metadata !DIExpression()), !dbg !5821
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !5820
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5805, metadata !DIExpression()), !dbg !5822
  call void @llvm.lifetime.start.p0(i64 4, ptr %sizes) #7, !dbg !5823
  call void @llvm.dbg.declare(metadata ptr %sizes, metadata !5806, metadata !DIExpression()), !dbg !5824
  call void @llvm.lifetime.start.p0(i64 2, ptr %cmd) #7, !dbg !5825
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !5807, metadata !DIExpression()), !dbg !5826
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5827
  %bus = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 1, !dbg !5828
  %3 = load ptr, ptr %bus, align 8, !dbg !5828
  %call = call ptr @pci_find_host_bridge(ptr noundef %3) #6, !dbg !5829
  store ptr %call, ptr %host, align 8, !dbg !5830
  %4 = load ptr, ptr %host, align 8, !dbg !5831
  %preserve_config = getelementptr inbounds %struct.pci_host_bridge, ptr %4, i32 0, i32 13, !dbg !5833
  %bf.load = load i16, ptr %preserve_config, align 64, !dbg !5833
  %bf.lshr = lshr i16 %bf.load, 10, !dbg !5833
  %bf.clear = and i16 %bf.lshr, 1, !dbg !5833
  %bf.cast = zext i16 %bf.clear to i32, !dbg !5833
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5831
  br i1 %tobool, label %if.then, label %if.end, !dbg !5834

if.then:                                          ; preds = %entry
  store i32 -524, ptr %retval, align 4, !dbg !5835
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5835

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %res, align 8, !dbg !5836
  %flags = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3, !dbg !5838
  %6 = load i64, ptr %flags, align 8, !dbg !5838
  %and = and i64 %6, 536870912, !dbg !5839
  %tobool1 = icmp ne i64 %and, 0, !dbg !5839
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5840

if.then2:                                         ; preds = %if.end
  store i32 -16, ptr %retval, align 4, !dbg !5841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5841

if.end3:                                          ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5842
  %call4 = call i32 @pci_read_config_word(ptr noundef %7, i32 noundef 4, ptr noundef %cmd) #6, !dbg !5843
  %8 = load i16, ptr %cmd, align 2, !dbg !5844
  %conv = zext i16 %8 to i32, !dbg !5844
  %and5 = and i32 %conv, 2, !dbg !5846
  %tobool6 = icmp ne i32 %and5, 0, !dbg !5846
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5847

if.then7:                                         ; preds = %if.end3
  store i32 -16, ptr %retval, align 4, !dbg !5848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5848

if.end8:                                          ; preds = %if.end3
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5849
  %10 = load i32, ptr %resno.addr, align 4, !dbg !5850
  %call9 = call i32 @pci_rebar_get_possible_sizes(ptr noundef %9, i32 noundef %10) #6, !dbg !5851
  store i32 %call9, ptr %sizes, align 4, !dbg !5852
  %11 = load i32, ptr %sizes, align 4, !dbg !5853
  %tobool10 = icmp ne i32 %11, 0, !dbg !5853
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5855

if.then11:                                        ; preds = %if.end8
  store i32 -524, ptr %retval, align 4, !dbg !5856
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5856

if.end12:                                         ; preds = %if.end8
  %12 = load i32, ptr %sizes, align 4, !dbg !5857
  %conv13 = zext i32 %12 to i64, !dbg !5857
  %13 = load i32, ptr %size.addr, align 4, !dbg !5859
  %sh_prom = zext i32 %13 to i64, !dbg !5859
  %shl = shl i64 1, %sh_prom, !dbg !5859
  %and14 = and i64 %conv13, %shl, !dbg !5860
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5860
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !5861

if.then16:                                        ; preds = %if.end12
  store i32 -22, ptr %retval, align 4, !dbg !5862
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5862

if.end17:                                         ; preds = %if.end12
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !5863
  %15 = load i32, ptr %resno.addr, align 4, !dbg !5864
  %call18 = call i32 @pci_rebar_get_current_size(ptr noundef %14, i32 noundef %15) #6, !dbg !5865
  store i32 %call18, ptr %old, align 4, !dbg !5866
  %16 = load i32, ptr %old, align 4, !dbg !5867
  %cmp = icmp slt i32 %16, 0, !dbg !5869
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !5870

if.then20:                                        ; preds = %if.end17
  %17 = load i32, ptr %old, align 4, !dbg !5871
  store i32 %17, ptr %retval, align 4, !dbg !5872
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5872

if.end21:                                         ; preds = %if.end17
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !5873
  %19 = load i32, ptr %resno.addr, align 4, !dbg !5874
  %20 = load i32, ptr %size.addr, align 4, !dbg !5875
  %call22 = call i32 @pci_rebar_set_size(ptr noundef %18, i32 noundef %19, i32 noundef %20) #6, !dbg !5876
  store i32 %call22, ptr %ret, align 4, !dbg !5877
  %21 = load i32, ptr %ret, align 4, !dbg !5878
  %tobool23 = icmp ne i32 %21, 0, !dbg !5878
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5880

if.then24:                                        ; preds = %if.end21
  %22 = load i32, ptr %ret, align 4, !dbg !5881
  store i32 %22, ptr %retval, align 4, !dbg !5882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5882

if.end25:                                         ; preds = %if.end21
  %23 = load ptr, ptr %res, align 8, !dbg !5883
  %start = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 0, !dbg !5884
  %24 = load i64, ptr %start, align 8, !dbg !5884
  %25 = load i32, ptr %size.addr, align 4, !dbg !5885
  %call26 = call i64 @pci_rebar_size_to_bytes(i32 noundef %25) #6, !dbg !5886
  %add = add i64 %24, %call26, !dbg !5887
  %sub = sub i64 %add, 1, !dbg !5888
  %26 = load ptr, ptr %res, align 8, !dbg !5889
  %end = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 1, !dbg !5890
  store i64 %sub, ptr %end, align 8, !dbg !5891
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !5892
  %bus27 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 1, !dbg !5894
  %28 = load ptr, ptr %bus27, align 8, !dbg !5894
  %self = getelementptr inbounds %struct.pci_bus, ptr %28, i32 0, i32 4, !dbg !5895
  %29 = load ptr, ptr %self, align 8, !dbg !5895
  %tobool28 = icmp ne ptr %29, null, !dbg !5892
  br i1 %tobool28, label %if.then29, label %if.end37, !dbg !5896

if.then29:                                        ; preds = %if.end25
  %30 = load ptr, ptr %dev.addr, align 8, !dbg !5897
  %bus30 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 1, !dbg !5899
  %31 = load ptr, ptr %bus30, align 8, !dbg !5899
  %self31 = getelementptr inbounds %struct.pci_bus, ptr %31, i32 0, i32 4, !dbg !5900
  %32 = load ptr, ptr %self31, align 8, !dbg !5900
  %33 = load ptr, ptr %res, align 8, !dbg !5901
  %flags32 = getelementptr inbounds %struct.resource, ptr %33, i32 0, i32 3, !dbg !5902
  %34 = load i64, ptr %flags32, align 8, !dbg !5902
  %call33 = call i32 @pci_reassign_bridge_resources(ptr noundef %32, i64 noundef %34) #6, !dbg !5903
  store i32 %call33, ptr %ret, align 4, !dbg !5904
  %35 = load i32, ptr %ret, align 4, !dbg !5905
  %tobool34 = icmp ne i32 %35, 0, !dbg !5905
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5907

if.then35:                                        ; preds = %if.then29
  br label %error_resize, !dbg !5908

if.end36:                                         ; preds = %if.then29
  br label %if.end37, !dbg !5909

if.end37:                                         ; preds = %if.end36, %if.end25
  store i32 0, ptr %retval, align 4, !dbg !5910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5910

error_resize:                                     ; preds = %if.then35
  call void @llvm.dbg.label(metadata !5808), !dbg !5911
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !5912
  %37 = load i32, ptr %resno.addr, align 4, !dbg !5913
  %38 = load i32, ptr %old, align 4, !dbg !5914
  %call38 = call i32 @pci_rebar_set_size(ptr noundef %36, i32 noundef %37, i32 noundef %38) #6, !dbg !5915
  %39 = load ptr, ptr %res, align 8, !dbg !5916
  %start39 = getelementptr inbounds %struct.resource, ptr %39, i32 0, i32 0, !dbg !5917
  %40 = load i64, ptr %start39, align 8, !dbg !5917
  %41 = load i32, ptr %old, align 4, !dbg !5918
  %call40 = call i64 @pci_rebar_size_to_bytes(i32 noundef %41) #6, !dbg !5919
  %add41 = add i64 %40, %call40, !dbg !5920
  %sub42 = sub i64 %add41, 1, !dbg !5921
  %42 = load ptr, ptr %res, align 8, !dbg !5922
  %end43 = getelementptr inbounds %struct.resource, ptr %42, i32 0, i32 1, !dbg !5923
  store i64 %sub42, ptr %end43, align 8, !dbg !5924
  %43 = load i32, ptr %ret, align 4, !dbg !5925
  store i32 %43, ptr %retval, align 4, !dbg !5926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5926

cleanup:                                          ; preds = %error_resize, %if.end37, %if.then24, %if.then20, %if.then16, %if.then11, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %cmd) #7, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 4, ptr %sizes) #7, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #7, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 8, ptr %host) #7, !dbg !5927
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !5927
  %44 = load i32, ptr %retval, align 4, !dbg !5927
  ret i32 %44, !dbg !5927
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5928 dso_local ptr @pci_find_host_bridge(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5931 dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5935 dso_local i32 @pci_rebar_get_possible_sizes(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5938 dso_local i32 @pci_rebar_get_current_size(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5939 dso_local i32 @pci_rebar_set_size(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_rebar_size_to_bytes(i32 noundef %size) #5 align 16 !dbg !5940 {
entry:
  %size.addr = alloca i32, align 4
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5944, metadata !DIExpression()), !dbg !5945
  %0 = load i32, ptr %size.addr, align 4, !dbg !5946
  %add = add i32 %0, 20, !dbg !5947
  %sh_prom = zext i32 %add to i64, !dbg !5948
  %shl = shl i64 1, %sh_prom, !dbg !5948
  ret i64 %shl, !dbg !5949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5950 dso_local i32 @pci_reassign_bridge_resources(ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_enable_resources(ptr noundef %dev, i32 noundef %mask) #0 align 16 !dbg !5953 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %cmd = alloca i16, align 2
  %old_cmd = alloca i16, align 2
  %i = alloca i32, align 4
  %r = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5955, metadata !DIExpression()), !dbg !5961
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5956, metadata !DIExpression()), !dbg !5962
  call void @llvm.lifetime.start.p0(i64 2, ptr %cmd) #7, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %cmd, metadata !5957, metadata !DIExpression()), !dbg !5964
  call void @llvm.lifetime.start.p0(i64 2, ptr %old_cmd) #7, !dbg !5963
  call void @llvm.dbg.declare(metadata ptr %old_cmd, metadata !5958, metadata !DIExpression()), !dbg !5965
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !5966
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5959, metadata !DIExpression()), !dbg !5967
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #7, !dbg !5968
  call void @llvm.dbg.declare(metadata ptr %r, metadata !5960, metadata !DIExpression()), !dbg !5969
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5970
  %call = call i32 @pci_read_config_word(ptr noundef %0, i32 noundef 4, ptr noundef %cmd) #6, !dbg !5971
  %1 = load i16, ptr %cmd, align 2, !dbg !5972
  store i16 %1, ptr %old_cmd, align 2, !dbg !5973
  store i32 0, ptr %i, align 4, !dbg !5974
  br label %for.cond, !dbg !5974

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !5976
  %cmp = icmp slt i32 %2, 11, !dbg !5976
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5976

land.rhs:                                         ; preds = %for.cond
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5976
  %resource = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 40, !dbg !5976
  %4 = load i32, ptr %i, align 4, !dbg !5976
  %idxprom = sext i32 %4 to i64, !dbg !5976
  %arrayidx = getelementptr [11 x %struct.resource], ptr %resource, i64 0, i64 %idxprom, !dbg !5976
  store ptr %arrayidx, ptr %r, align 8, !dbg !5976
  %tobool = icmp ne ptr %arrayidx, null, !dbg !5976
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ], !dbg !5978
  br i1 %5, label %for.body, label %for.end, !dbg !5974

for.body:                                         ; preds = %land.end
  %6 = load i32, ptr %mask.addr, align 4, !dbg !5979
  %7 = load i32, ptr %i, align 4, !dbg !5982
  %shl = shl i32 1, %7, !dbg !5983
  %and = and i32 %6, %shl, !dbg !5984
  %tobool1 = icmp ne i32 %and, 0, !dbg !5984
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5985

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5986

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %r, align 8, !dbg !5987
  %flags = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 3, !dbg !5989
  %9 = load i64, ptr %flags, align 8, !dbg !5989
  %and2 = and i64 %9, 768, !dbg !5990
  %tobool3 = icmp ne i64 %and2, 0, !dbg !5990
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5991

if.then4:                                         ; preds = %if.end
  br label %for.inc, !dbg !5992

if.end5:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !5993
  %cmp6 = icmp eq i32 %10, 6, !dbg !5995
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !5996

land.lhs.true:                                    ; preds = %if.end5
  %11 = load ptr, ptr %r, align 8, !dbg !5997
  %flags7 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 3, !dbg !5998
  %12 = load i64, ptr %flags7, align 8, !dbg !5998
  %and8 = and i64 %12, 1, !dbg !5999
  %tobool9 = icmp ne i64 %and8, 0, !dbg !5999
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !6000

if.then10:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !6001

if.end11:                                         ; preds = %land.lhs.true, %if.end5
  %13 = load ptr, ptr %r, align 8, !dbg !6002
  %flags12 = getelementptr inbounds %struct.resource, ptr %13, i32 0, i32 3, !dbg !6004
  %14 = load i64, ptr %flags12, align 8, !dbg !6004
  %and13 = and i64 %14, 536870912, !dbg !6005
  %tobool14 = icmp ne i64 %and13, 0, !dbg !6005
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !6006

if.then15:                                        ; preds = %if.end11
  br label %do.body, !dbg !6007

do.body:                                          ; preds = %if.then15
  br label %do.cond, !dbg !6010

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6010

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !6007
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37, !dbg !6007
  %16 = load i32, ptr %i, align 4, !dbg !6007
  %17 = load ptr, ptr %r, align 8, !dbg !6007
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef @.str.11, i32 noundef %16, ptr noundef %17) #8, !dbg !6007
  store i32 -22, ptr %retval, align 4, !dbg !6012
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6012

if.end17:                                         ; preds = %if.end11
  %18 = load ptr, ptr %r, align 8, !dbg !6013
  %parent = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 5, !dbg !6015
  %19 = load ptr, ptr %parent, align 8, !dbg !6015
  %tobool18 = icmp ne ptr %19, null, !dbg !6013
  br i1 %tobool18, label %if.end24, label %if.then19, !dbg !6016

if.then19:                                        ; preds = %if.end17
  br label %do.body20, !dbg !6017

do.body20:                                        ; preds = %if.then19
  br label %do.cond21, !dbg !6020

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !6020

do.end22:                                         ; preds = %do.cond21
  %20 = load ptr, ptr %dev.addr, align 8, !dbg !6017
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 37, !dbg !6017
  %21 = load i32, ptr %i, align 4, !dbg !6017
  %22 = load ptr, ptr %r, align 8, !dbg !6017
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef @.str.12, i32 noundef %21, ptr noundef %22) #8, !dbg !6017
  store i32 -22, ptr %retval, align 4, !dbg !6022
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6022

if.end24:                                         ; preds = %if.end17
  %23 = load ptr, ptr %r, align 8, !dbg !6023
  %flags25 = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 3, !dbg !6025
  %24 = load i64, ptr %flags25, align 8, !dbg !6025
  %and26 = and i64 %24, 256, !dbg !6026
  %tobool27 = icmp ne i64 %and26, 0, !dbg !6026
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !6027

if.then28:                                        ; preds = %if.end24
  %25 = load i16, ptr %cmd, align 2, !dbg !6028
  %conv = zext i16 %25 to i32, !dbg !6028
  %or = or i32 %conv, 1, !dbg !6028
  %conv29 = trunc i32 %or to i16, !dbg !6028
  store i16 %conv29, ptr %cmd, align 2, !dbg !6028
  br label %if.end30, !dbg !6029

if.end30:                                         ; preds = %if.then28, %if.end24
  %26 = load ptr, ptr %r, align 8, !dbg !6030
  %flags31 = getelementptr inbounds %struct.resource, ptr %26, i32 0, i32 3, !dbg !6032
  %27 = load i64, ptr %flags31, align 8, !dbg !6032
  %and32 = and i64 %27, 512, !dbg !6033
  %tobool33 = icmp ne i64 %and32, 0, !dbg !6033
  br i1 %tobool33, label %if.then34, label %if.end38, !dbg !6034

if.then34:                                        ; preds = %if.end30
  %28 = load i16, ptr %cmd, align 2, !dbg !6035
  %conv35 = zext i16 %28 to i32, !dbg !6035
  %or36 = or i32 %conv35, 2, !dbg !6035
  %conv37 = trunc i32 %or36 to i16, !dbg !6035
  store i16 %conv37, ptr %cmd, align 2, !dbg !6035
  br label %if.end38, !dbg !6036

if.end38:                                         ; preds = %if.then34, %if.end30
  br label %for.inc, !dbg !6037

for.inc:                                          ; preds = %if.end38, %if.then10, %if.then4, %if.then
  %29 = load i32, ptr %i, align 4, !dbg !5976
  %inc = add i32 %29, 1, !dbg !5976
  store i32 %inc, ptr %i, align 4, !dbg !5976
  br label %for.cond, !dbg !5976, !llvm.loop !6038

for.end:                                          ; preds = %land.end
  %30 = load i16, ptr %cmd, align 2, !dbg !6040
  %conv39 = zext i16 %30 to i32, !dbg !6040
  %31 = load i16, ptr %old_cmd, align 2, !dbg !6042
  %conv40 = zext i16 %31 to i32, !dbg !6042
  %cmp41 = icmp ne i32 %conv39, %conv40, !dbg !6043
  br i1 %cmp41, label %if.then43, label %if.end51, !dbg !6044

if.then43:                                        ; preds = %for.end
  br label %do.body44, !dbg !6045

do.body44:                                        ; preds = %if.then43
  br label %do.cond45, !dbg !6048

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !6048

do.end46:                                         ; preds = %do.cond45
  %32 = load ptr, ptr %dev.addr, align 8, !dbg !6045
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 37, !dbg !6045
  %33 = load i16, ptr %old_cmd, align 2, !dbg !6045
  %conv48 = zext i16 %33 to i32, !dbg !6045
  %34 = load i16, ptr %cmd, align 2, !dbg !6045
  %conv49 = zext i16 %34 to i32, !dbg !6045
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev47, ptr noundef @.str.13, i32 noundef %conv48, i32 noundef %conv49) #8, !dbg !6045
  %35 = load ptr, ptr %dev.addr, align 8, !dbg !6050
  %36 = load i16, ptr %cmd, align 2, !dbg !6051
  %call50 = call i32 @pci_write_config_word(ptr noundef %35, i32 noundef 4, i16 noundef zeroext %36) #6, !dbg !6052
  br label %if.end51, !dbg !6053

if.end51:                                         ; preds = %do.end46, %for.end
  store i32 0, ptr %retval, align 4, !dbg !6054
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6054

cleanup:                                          ; preds = %if.end51, %do.end22, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #7, !dbg !6055
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !6055
  call void @llvm.lifetime.end.p0(i64 2, ptr %old_cmd) #7, !dbg !6055
  call void @llvm.lifetime.end.p0(i64 2, ptr %cmd) #7, !dbg !6055
  %37 = load i32, ptr %retval, align 4, !dbg !6055
  ret i32 %37, !dbg !6055
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6056 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6057 dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6060 dso_local void @pcibios_resource_to_bus(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6064 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6067 dso_local i64 @pci_cardbus_resource_alignment(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6070 dso_local i64 @resource_alignment(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__pci_assign_resource(ptr noundef %bus, ptr noundef %dev, i32 noundef %resno, i64 noundef %size, i64 noundef %align) #0 align 16 !dbg !6073 {
entry:
  %retval = alloca i32, align 4
  %bus.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %resno.addr = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %res = alloca ptr, align 8
  %min = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6077, metadata !DIExpression()), !dbg !6085
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6078, metadata !DIExpression()), !dbg !6086
  store i32 %resno, ptr %resno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %resno.addr, metadata !6079, metadata !DIExpression()), !dbg !6087
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6080, metadata !DIExpression()), !dbg !6088
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !6081, metadata !DIExpression()), !dbg !6089
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !6090
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6082, metadata !DIExpression()), !dbg !6091
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6092
  %resource = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 40, !dbg !6093
  %arraydecay = getelementptr inbounds [11 x %struct.resource], ptr %resource, i64 0, i64 0, !dbg !6092
  %1 = load i32, ptr %resno.addr, align 4, !dbg !6094
  %idx.ext = sext i32 %1 to i64, !dbg !6095
  %add.ptr = getelementptr %struct.resource, ptr %arraydecay, i64 %idx.ext, !dbg !6095
  store ptr %add.ptr, ptr %res, align 8, !dbg !6091
  call void @llvm.lifetime.start.p0(i64 8, ptr %min) #7, !dbg !6096
  call void @llvm.dbg.declare(metadata ptr %min, metadata !6083, metadata !DIExpression()), !dbg !6097
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6098
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6084, metadata !DIExpression()), !dbg !6099
  %2 = load ptr, ptr %res, align 8, !dbg !6100
  %flags = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 3, !dbg !6101
  %3 = load i64, ptr %flags, align 8, !dbg !6101
  %and = and i64 %3, 256, !dbg !6102
  %tobool = icmp ne i64 %and, 0, !dbg !6102
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6103

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !6103

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr @pci_mem_start, align 8, !dbg !6104
  br label %cond.end, !dbg !6103

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 4096, %cond.true ], [ %4, %cond.false ], !dbg !6103
  store i64 %cond, ptr %min, align 8, !dbg !6105
  %5 = load ptr, ptr %bus.addr, align 8, !dbg !6106
  %6 = load ptr, ptr %res, align 8, !dbg !6107
  %7 = load i64, ptr %size.addr, align 8, !dbg !6108
  %8 = load i64, ptr %align.addr, align 8, !dbg !6109
  %9 = load i64, ptr %min, align 8, !dbg !6110
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6111
  %call = call i32 @pci_bus_alloc_resource(ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, i64 noundef 1056768, ptr noundef @pcibios_align_resource, ptr noundef %10) #6, !dbg !6112
  store i32 %call, ptr %ret, align 4, !dbg !6113
  %11 = load i32, ptr %ret, align 4, !dbg !6114
  %cmp = icmp eq i32 %11, 0, !dbg !6116
  br i1 %cmp, label %if.then, label %if.end, !dbg !6117

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !6118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6118

if.end:                                           ; preds = %cond.end
  %12 = load ptr, ptr %res, align 8, !dbg !6119
  %flags1 = getelementptr inbounds %struct.resource, ptr %12, i32 0, i32 3, !dbg !6121
  %13 = load i64, ptr %flags1, align 8, !dbg !6121
  %and2 = and i64 %13, 1056768, !dbg !6122
  %cmp3 = icmp eq i64 %and2, 1056768, !dbg !6123
  br i1 %cmp3, label %if.then4, label %if.end9, !dbg !6124

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %bus.addr, align 8, !dbg !6125
  %15 = load ptr, ptr %res, align 8, !dbg !6127
  %16 = load i64, ptr %size.addr, align 8, !dbg !6128
  %17 = load i64, ptr %align.addr, align 8, !dbg !6129
  %18 = load i64, ptr %min, align 8, !dbg !6130
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !6131
  %call5 = call i32 @pci_bus_alloc_resource(ptr noundef %14, ptr noundef %15, i64 noundef %16, i64 noundef %17, i64 noundef %18, i64 noundef 8192, ptr noundef @pcibios_align_resource, ptr noundef %19) #6, !dbg !6132
  store i32 %call5, ptr %ret, align 4, !dbg !6133
  %20 = load i32, ptr %ret, align 4, !dbg !6134
  %cmp6 = icmp eq i32 %20, 0, !dbg !6136
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !6137

if.then7:                                         ; preds = %if.then4
  store i32 0, ptr %retval, align 4, !dbg !6138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6138

if.end8:                                          ; preds = %if.then4
  br label %if.end9, !dbg !6139

if.end9:                                          ; preds = %if.end8, %if.end
  %21 = load ptr, ptr %res, align 8, !dbg !6140
  %flags10 = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 3, !dbg !6142
  %22 = load i64, ptr %flags10, align 8, !dbg !6142
  %and11 = and i64 %22, 1056768, !dbg !6143
  %tobool12 = icmp ne i64 %and11, 0, !dbg !6143
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6144

if.then13:                                        ; preds = %if.end9
  %23 = load ptr, ptr %bus.addr, align 8, !dbg !6145
  %24 = load ptr, ptr %res, align 8, !dbg !6146
  %25 = load i64, ptr %size.addr, align 8, !dbg !6147
  %26 = load i64, ptr %align.addr, align 8, !dbg !6148
  %27 = load i64, ptr %min, align 8, !dbg !6149
  %28 = load ptr, ptr %dev.addr, align 8, !dbg !6150
  %call14 = call i32 @pci_bus_alloc_resource(ptr noundef %23, ptr noundef %24, i64 noundef %25, i64 noundef %26, i64 noundef %27, i64 noundef 0, ptr noundef @pcibios_align_resource, ptr noundef %28) #6, !dbg !6151
  store i32 %call14, ptr %ret, align 4, !dbg !6152
  br label %if.end15, !dbg !6153

if.end15:                                         ; preds = %if.then13, %if.end9
  %29 = load i32, ptr %ret, align 4, !dbg !6154
  store i32 %29, ptr %retval, align 4, !dbg !6155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6155

cleanup:                                          ; preds = %if.end15, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6156
  call void @llvm.lifetime.end.p0(i64 8, ptr %min) #7, !dbg !6156
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !6156
  %30 = load i32, ptr %retval, align 4, !dbg !6156
  ret i32 %30, !dbg !6156
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6157 dso_local i32 @pci_bus_alloc_resource(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_upstream_bridge(ptr noundef %dev) #5 align 16 !dbg !6161 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6165, metadata !DIExpression()), !dbg !6166
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6167
  %call = call ptr @pci_physfn(ptr noundef %0) #6, !dbg !6168
  store ptr %call, ptr %dev.addr, align 8, !dbg !6169
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6170
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1, !dbg !6172
  %2 = load ptr, ptr %bus, align 8, !dbg !6172
  %call1 = call zeroext i1 @pci_is_root_bus(ptr noundef %2) #6, !dbg !6173
  br i1 %call1, label %if.then, label %if.end, !dbg !6174

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6175
  br label %return, !dbg !6175

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6176
  %bus2 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !6177
  %4 = load ptr, ptr %bus2, align 8, !dbg !6177
  %self = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 4, !dbg !6178
  %5 = load ptr, ptr %self, align 8, !dbg !6178
  store ptr %5, ptr %retval, align 8, !dbg !6179
  br label %return, !dbg !6179

return:                                           ; preds = %if.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !6180
  ret ptr %6, !dbg !6180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_physfn(ptr noundef %dev) #5 align 16 !dbg !6181 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6183, metadata !DIExpression()), !dbg !6184
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6185
  ret ptr %0, !dbg !6186
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pci_is_root_bus(ptr noundef %pbus) #5 align 16 !dbg !6187 {
entry:
  %pbus.addr = alloca ptr, align 8
  store ptr %pbus, ptr %pbus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pbus.addr, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load ptr, ptr %pbus.addr, align 8, !dbg !6193
  %parent = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 1, !dbg !6194
  %1 = load ptr, ptr %parent, align 8, !dbg !6194
  %tobool = icmp ne ptr %1, null, !dbg !6195
  %lnot = xor i1 %tobool, true, !dbg !6195
  ret i1 %lnot, !dbg !6196
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!250, !251, !252, !253, !254, !255, !256, !257}
!llvm.ident = !{!258}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/pci/setup-res.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09b113708221342a790f56c73687fe1b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 45)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 156, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 424, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 53)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 164, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 54)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_claim_resource292", scope: !19, file: !2, line: 172, type: !168, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.setup-res.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/setup-res\22 -D KBUILD_BASENAME=\22setup_res\22 -D KBUILD_MODNAME=\22setup_res\22 -D __KBUILD_MODNAME=kmod_setup_res -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/setup-res.ll drivers/pci/setup-res.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !167, globals: !174, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !29, !34, !40, !45, !53, !69, !77, !83, !90, !97, !103, !109, !116, !124, !132, !141, !146, !151, !157}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !22, line: 312, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!26 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!27 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!28 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !30, line: 2052, baseType: !23, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!31 = !{!32, !33}
!32 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!33 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !35, line: 54, baseType: !23, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!36 = !{!37, !38, !39}
!37 = !DIEnumerator(name: "USRQUOTA", value: 0)
!38 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!39 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !41, line: 65, baseType: !23, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!42 = !{!43, !44}
!43 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!44 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !46, line: 9, baseType: !23, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!47 = !{!48, !49, !50, !51, !52}
!48 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!49 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!50 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!51 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!52 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !54, line: 1325, baseType: !23, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!55 = !{!56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!56 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!57 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!58 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!59 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!60 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!61 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!62 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!63 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!64 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!65 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!66 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!67 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!68 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !70, line: 68, baseType: !23, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!71 = !{!72, !73, !74, !75, !76}
!72 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!73 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!74 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!75 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !78, line: 16, baseType: !23, size: 32, elements: !79)
!78 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "TT_NONE", value: 0)
!81 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!82 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !84, line: 51, baseType: !23, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!87 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!88 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!89 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !91, line: 15, baseType: !23, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!92 = !{!93, !94, !95, !96}
!93 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!94 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!95 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!96 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !98, line: 26, baseType: !23, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!99 = !{!100, !101, !102}
!100 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!101 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!102 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !104, line: 45, baseType: !23, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!105 = !{!106, !107, !108}
!106 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!107 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!108 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!109 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !110, line: 487, baseType: !23, size: 32, elements: !111)
!110 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!111 = !{!112, !113, !114, !115}
!112 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!113 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!114 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!115 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !117, line: 620, baseType: !23, size: 32, elements: !118)
!117 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!120 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!121 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!122 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!123 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !117, line: 597, baseType: !125, size: 32, elements: !126)
!125 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!128 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!129 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!130 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!131 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !110, line: 547, baseType: !23, size: 32, elements: !133)
!133 = !{!134, !135, !136, !137, !138, !139, !140}
!134 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!135 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!136 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!137 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!138 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!139 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!140 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !110, line: 564, baseType: !23, size: 32, elements: !142)
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !110, line: 577, baseType: !23, size: 32, elements: !147)
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !110, line: 503, baseType: !23, size: 32, elements: !152)
!152 = !{!153, !154, !155, !156}
!153 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!155 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!156 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !158, line: 96, baseType: !23, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!159 = !{!160, !161, !162, !163, !164, !165, !166}
!160 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0)
!161 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5)
!162 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6)
!163 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 7)
!164 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 10)
!165 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 11)
!166 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 11)
!167 = !{!168, !169, !170}
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !171, line: 21, baseType: !172)
!171 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !173, line: 27, baseType: !23)
!173 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!174 = !{!0, !7, !12, !17, !175, !180, !185, !190, !195, !197, !202, !207, !209, !214, !216, !218, !223, !225, !230, !235, !240, !245}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 44)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 26)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 356, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 30)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 22)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_assign_resource293", scope: !19, file: !2, line: 368, type: !168, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 384, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 51)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 394, type: !204, isLocal: true, isDefinition: true)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 41)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 401, type: !177, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 413, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 23)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_release_resource294", scope: !19, file: !2, line: 423, type: !168, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_resize_resource295", scope: !19, file: !2, line: 476, type: !168, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 498, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 46)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !3, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 32)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 107, type: !232, isLocal: true, isDefinition: true)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 43)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !2, line: 116, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 48)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !2, line: 234, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 40)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !247, isLocal: true, isDefinition: true)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 35)
!250 = !{i32 7, !"Dwarf Version", i32 5}
!251 = !{i32 2, !"Debug Info Version", i32 3}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 8, !"cf-protection-branch", i32 1}
!254 = !{i32 4, !"function_return_thunk_extern", i32 1}
!255 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!256 = !{i32 1, !"Code Model", i32 2}
!257 = !{i32 1, !"override-stack-alignment", i32 8}
!258 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!259 = distinct !DISubprogram(name: "pci_update_resource", scope: !2, file: !2, line: 125, type: !260, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !4991)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !262, !125}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !158, line: 322, size: 16640, elements: !264)
!264 = !{!265, !272, !4737, !4738, !4739, !4740, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4851, !4852, !4853, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928, !4930, !4931, !4932, !4934, !4935, !4937, !4938, !4939, !4940, !4946, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !263, file: !158, line: 323, baseType: !266, size: 128)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !267, line: 190, size: 128, elements: !268)
!267 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!268 = !{!269, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !267, line: 191, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !266, file: !267, line: 191, baseType: !270, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !263, file: !158, line: 324, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !158, line: 647, size: 8256, elements: !275)
!275 = !{!276, !277, !278, !279, !280, !281, !282, !305, !306, !307, !332, !333, !337, !339, !340, !341, !342, !343, !345, !347, !4732, !4733, !4734, !4735, !4736}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !274, file: !158, line: 648, baseType: !266, size: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !274, file: !158, line: 649, baseType: !273, size: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !274, file: !158, line: 650, baseType: !266, size: 128, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !274, file: !158, line: 651, baseType: !266, size: 128, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !274, file: !158, line: 652, baseType: !262, size: 64, offset: 448)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !274, file: !158, line: 653, baseType: !266, size: 128, offset: 512)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !274, file: !158, line: 655, baseType: !283, size: 256, offset: 640)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 256, elements: !303)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !286, line: 21, size: 512, elements: !287)
!286 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!287 = !{!288, !293, !294, !297, !299, !300, !301, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !285, file: !286, line: 22, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !267, line: 164, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !267, line: 159, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !171, line: 23, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !173, line: 31, baseType: !169)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !285, file: !286, line: 23, baseType: !289, size: 64, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !286, line: 24, baseType: !295, size: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !285, file: !286, line: 25, baseType: !298, size: 64, offset: 192)
!298 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !285, file: !286, line: 26, baseType: !298, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !285, file: !286, line: 27, baseType: !284, size: 64, offset: 320)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !285, file: !286, line: 27, baseType: !284, size: 64, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !285, file: !286, line: 27, baseType: !284, size: 64, offset: 448)
!303 = !{!304}
!304 = !DISubrange(count: 4)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !274, file: !158, line: 656, baseType: !266, size: 128, offset: 896)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !274, file: !158, line: 657, baseType: !285, size: 512, offset: 1024)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !274, file: !158, line: 659, baseType: !308, size: 64, offset: 1536)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !158, line: 773, size: 320, elements: !310)
!310 = !{!311, !315, !319, !323, !328}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !309, file: !158, line: 774, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!125, !273}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !309, file: !158, line: 775, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !273}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !309, file: !158, line: 776, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!168, !273, !23, !125}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !309, file: !158, line: 777, baseType: !324, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!125, !273, !23, !125, !125, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !309, file: !158, line: 778, baseType: !329, size: 64, offset: 256)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!125, !273, !23, !125, !125, !170}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !274, file: !158, line: 660, baseType: !168, size: 64, offset: 1600)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !274, file: !158, line: 661, baseType: !334, size: 64, offset: 1664)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !336, line: 131, flags: DIFlagFwdDecl)
!336 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !274, file: !158, line: 663, baseType: !338, size: 8, offset: 1728)
!338 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !274, file: !158, line: 664, baseType: !338, size: 8, offset: 1736)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !274, file: !158, line: 665, baseType: !338, size: 8, offset: 1744)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !274, file: !158, line: 666, baseType: !338, size: 8, offset: 1752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !158, line: 671, baseType: !237, size: 384, offset: 1760)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !274, file: !158, line: 673, baseType: !344, size: 16, offset: 2144)
!344 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !274, file: !158, line: 674, baseType: !346, size: 16, offset: 2160)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !158, line: 255, baseType: !344)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !274, file: !158, line: 675, baseType: !348, size: 64, offset: 2176)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !110, line: 705, size: 5824, elements: !350)
!350 = !{!351, !4271, !4272, !4275, !4276, !4329, !4414, !4415, !4416, !4417, !4418, !4425, !4517, !4530, !4540, !4544, !4546, !4547, !4548, !4552, !4559, !4560, !4563, !4566, !4570, !4674, !4675, !4676, !4677, !4678, !4679, !4709, !4710, !4711, !4714, !4717, !4726, !4727, !4728, !4729, !4730, !4731}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !349, file: !110, line: 706, baseType: !352, size: 512)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !353, line: 64, size: 512, elements: !354)
!353 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!354 = !{!355, !356, !357, !359, !444, !4158, !4261, !4266, !4267, !4268, !4269, !4270}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !353, line: 65, baseType: !295, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !352, file: !353, line: 66, baseType: !266, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !352, file: !353, line: 67, baseType: !358, size: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !352, file: !353, line: 68, baseType: !360, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !353, line: 168, size: 768, elements: !362)
!362 = !{!363, !364, !403, !404}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !361, file: !353, line: 169, baseType: !266, size: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !361, file: !353, line: 170, baseType: !365, size: 32, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !366, line: 29, baseType: !367)
!366 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !366, line: 17, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !366, line: 18, baseType: !370, size: 32)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !366, line: 18, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !370, file: !366, line: 19, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !374, line: 14, size: 32, elements: !375)
!374 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !373, file: !374, line: 15, baseType: !377, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !378, line: 44, baseType: !379)
!378 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !378, line: 14, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !378, line: 15, baseType: !382, size: 32)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !378, line: 15, size: 32, elements: !383)
!383 = !{!384, !389, !396}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !382, file: !378, line: 16, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !267, line: 174, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 172, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !386, file: !267, line: 173, baseType: !125, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !378, line: 24, baseType: !390, size: 16)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !378, line: 24, size: 16, elements: !391)
!391 = !{!392, !395}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !390, file: !378, line: 25, baseType: !393, size: 8)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !171, line: 17, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !173, line: 21, baseType: !338)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !390, file: !378, line: 26, baseType: !393, size: 8, offset: 8)
!396 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !378, line: 28, baseType: !397, size: 32)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !382, file: !378, line: 28, size: 32, elements: !398)
!398 = !{!399, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !397, file: !378, line: 29, baseType: !400, size: 16)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !171, line: 19, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !173, line: 24, baseType: !344)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !397, file: !378, line: 30, baseType: !400, size: 16, offset: 16)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !361, file: !353, line: 171, baseType: !352, size: 512, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !361, file: !353, line: 172, baseType: !405, size: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !353, line: 133, size: 192, elements: !408)
!408 = !{!409, !416, !421}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !407, file: !353, line: 134, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!125, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !407, file: !353, line: 135, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!295, !414}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !407, file: !353, line: 136, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!125, !414, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !353, line: 125, size: 20736, elements: !428)
!428 = !{!429, !434, !438, !439, !443}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !427, file: !353, line: 126, baseType: !430, size: 192)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, elements: !432)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!432 = !{!433}
!433 = !DISubrange(count: 3)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !427, file: !353, line: 127, baseType: !435, size: 4096, offset: 192)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 4096, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !427, file: !353, line: 128, baseType: !125, size: 32, offset: 4288)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !427, file: !353, line: 129, baseType: !440, size: 16384, offset: 4320)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 2048)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !427, file: !353, line: 130, baseType: !125, size: 32, offset: 20704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !352, file: !353, line: 69, baseType: !445, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !353, line: 116, size: 384, elements: !448)
!448 = !{!449, !453, !481, !4120, !4148, !4152}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !447, file: !353, line: 117, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !358}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !447, file: !353, line: 118, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !457, line: 254, size: 128, elements: !458)
!457 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!458 = !{!459, !474}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !456, file: !457, line: 255, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!463, !358, !468, !431}
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !267, line: 66, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !465, line: 73, baseType: !466)
!465 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !465, line: 15, baseType: !467)
!467 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !457, line: 30, size: 128, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !469, file: !457, line: 31, baseType: !295, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !469, file: !457, line: 32, baseType: !473, size: 16, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !267, line: 24, baseType: !344)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !456, file: !457, line: 256, baseType: !475, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!463, !358, !468, !295, !478}
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !267, line: 61, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !465, line: 72, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !465, line: 16, baseType: !298)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !447, file: !353, line: 119, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !457, line: 84, size: 320, elements: !486)
!486 = !{!487, !488, !492, !4116, !4118}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !457, line: 85, baseType: !295, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !485, file: !457, line: 86, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!473, !358, !468, !125}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !485, file: !457, line: 88, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!473, !358, !496, !125}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !457, line: 175, size: 512, elements: !498)
!498 = !{!499, !500, !501, !502, !4107, !4111, !4112}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !497, file: !457, line: 176, baseType: !469, size: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !497, file: !457, line: 177, baseType: !478, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !497, file: !457, line: 178, baseType: !168, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !497, file: !457, line: 179, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !30, line: 472, size: 1536, align: 64, elements: !508)
!508 = !{!509, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !4101, !4102, !4103, !4104, !4105, !4106}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !507, file: !30, line: 473, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !30, line: 641, size: 4800, elements: !512)
!512 = !{!513, !514, !515, !523, !524, !531, !532, !535, !536, !3880, !3881, !3882, !3883, !3884, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3924, !3927, !3928, !3929, !3938, !3939, !3940, !3941}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !511, file: !30, line: 642, baseType: !473, size: 16)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !511, file: !30, line: 643, baseType: !344, size: 16, offset: 16)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !511, file: !30, line: 644, baseType: !516, size: 32, offset: 32)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !517, line: 23, baseType: !518)
!517 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 21, size: 32, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !518, file: !517, line: 22, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !267, line: 37, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !465, line: 49, baseType: !23)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !511, file: !30, line: 645, baseType: !266, size: 128, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !511, file: !30, line: 646, baseType: !525, size: 32, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !517, line: 28, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 26, size: 32, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !526, file: !517, line: 27, baseType: !529, size: 32)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !267, line: 38, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !465, line: 50, baseType: !23)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !511, file: !30, line: 647, baseType: !23, size: 32, offset: 224)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !511, file: !30, line: 650, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !30, line: 607, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !511, file: !30, line: 651, baseType: !533, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !511, file: !30, line: 654, baseType: !537, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !30, line: 1966, size: 2048, align: 512, elements: !540)
!540 = !{!541, !3708, !3718, !3722, !3726, !3730, !3734, !3738, !3742, !3746, !3750, !3751, !3755, !3759, !3796, !3825, !3829, !3835, !3839, !3843, !3847, !3851, !3855, !3861, !3865}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !539, file: !30, line: 1967, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!545, !510, !545, !23}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !547, line: 82, size: 1536, elements: !548)
!547 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!548 = !{!549, !550, !560, !568, !569, !584, !585, !587, !600, !3691, !3692, !3693, !3694, !3700, !3701, !3702}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !546, file: !547, line: 84, baseType: !23, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !546, file: !547, line: 85, baseType: !551, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !552, line: 275, baseType: !553)
!552 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !552, line: 275, size: 32, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !553, file: !552, line: 275, baseType: !556, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !552, line: 69, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !552, line: 64, size: 32, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !557, file: !552, line: 65, baseType: !23, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !546, file: !547, line: 86, baseType: !561, size: 128, offset: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !562, line: 38, size: 128, elements: !563)
!562 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!563 = !{!564, !566}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !561, file: !562, line: 39, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !561, file: !562, line: 39, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !546, file: !547, line: 87, baseType: !545, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !546, file: !547, line: 88, baseType: !570, size: 128, offset: 256)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !547, line: 49, size: 128, elements: !571)
!571 = !{!572, !581}
!572 = !DIDerivedType(tag: DW_TAG_member, scope: !570, file: !547, line: 50, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !570, file: !547, line: 50, size: 64, elements: !574)
!574 = !{!575, !580}
!575 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !547, line: 51, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !573, file: !547, line: 51, size: 64, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !576, file: !547, line: 52, baseType: !170, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !576, file: !547, line: 52, baseType: !170, size: 32, offset: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !573, file: !547, line: 54, baseType: !291, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !547, line: 56, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !546, file: !547, line: 89, baseType: !510, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !546, file: !547, line: 91, baseType: !586, size: 256, offset: 448)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !228)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !546, file: !547, line: 94, baseType: !588, size: 64, offset: 704)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !589, line: 25, size: 64, elements: !590)
!589 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, scope: !588, file: !589, line: 26, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !588, file: !589, line: 26, size: 64, elements: !593)
!593 = !{!594, !595}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !592, file: !589, line: 28, baseType: !292, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !592, file: !589, line: 30, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !592, file: !589, line: 30, size: 64, elements: !597)
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !596, file: !589, line: 31, baseType: !365, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !596, file: !589, line: 32, baseType: !125, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !546, file: !547, line: 95, baseType: !601, size: 64, offset: 768)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !547, line: 128, size: 1024, align: 512, elements: !604)
!604 = !{!605, !609, !610, !617, !623, !627, !631, !635, !636, !640, !644, !3681, !3685}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !603, file: !547, line: 129, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!125, !545, !23}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !603, file: !547, line: 130, baseType: !606, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !603, file: !547, line: 131, baseType: !611, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!125, !614, !616}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !603, file: !547, line: 132, baseType: !618, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!125, !614, !23, !295, !621}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !603, file: !547, line: 134, baseType: !624, size: 64, offset: 256)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!125, !614}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !603, file: !547, line: 135, baseType: !628, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!125, !545}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !603, file: !547, line: 136, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !545}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !603, file: !547, line: 137, baseType: !632, size: 64, offset: 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !603, file: !547, line: 138, baseType: !637, size: 64, offset: 512)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !545, !510}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !603, file: !547, line: 139, baseType: !641, size: 64, offset: 576)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!431, !545, !431, !125}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !603, file: !547, line: 140, baseType: !645, size: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!648, !3680}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !650, line: 70, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!651 = !{!652, !653, !3676, !3677}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !649, file: !650, line: 71, baseType: !545, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !649, file: !650, line: 72, baseType: !654, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !30, line: 1190, size: 10752, elements: !656)
!656 = !{!657, !658, !661, !662, !663, !667, !1145, !1285, !1325, !1415, !1419, !1420, !1421, !1422, !1423, !1432, !1433, !1434, !1435, !1440, !1444, !1445, !1448, !1451, !1454, !1457, !1458, !1459, !1500, !3610, !3611, !3612, !3613, !3614, !3615, !3618, !3619, !3626, !3627, !3628, !3629, !3630, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !655, file: !30, line: 1191, baseType: !266, size: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !655, file: !30, line: 1192, baseType: !659, size: 32, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !267, line: 21, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !267, line: 18, baseType: !170)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !655, file: !30, line: 1193, baseType: !338, size: 8, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !655, file: !30, line: 1194, baseType: !298, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !655, file: !30, line: 1195, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !267, line: 52, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !465, line: 88, baseType: !666)
!666 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !655, file: !30, line: 1196, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !30, line: 2366, size: 576, elements: !670)
!670 = !{!671, !672, !673, !680, !684, !688, !692, !1130, !1131, !1135, !1137, !1138, !1139, !1141, !1142, !1143, !1144}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !669, file: !30, line: 2367, baseType: !295, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !669, file: !30, line: 2368, baseType: !125, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !669, file: !30, line: 2376, baseType: !674, size: 64, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!125, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !679, line: 32, flags: DIFlagFwdDecl)
!679 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!680 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !669, file: !30, line: 2377, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !30, line: 75, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !669, file: !30, line: 2378, baseType: !685, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{!545, !668, !125, !295, !168}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !669, file: !30, line: 2380, baseType: !689, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !654}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !669, file: !30, line: 2381, baseType: !693, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !22, line: 402, size: 9216, align: 512, elements: !695)
!695 = !{!696, !697, !698, !702, !724, !750, !751, !752, !753, !757, !762, !763, !783, !839, !840, !841, !842, !843, !846, !847, !848, !856, !860, !887, !908, !909, !910, !911, !920, !943, !944, !947, !950, !951, !952, !953, !954, !955, !956, !961, !962, !1088, !1096, !1097, !1098, !1100, !1104, !1105, !1109, !1110, !1111, !1112, !1114, !1115, !1116, !1123, !1124, !1125, !1129}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !694, file: !22, line: 403, baseType: !21, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !694, file: !22, line: 406, baseType: !266, size: 128, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !694, file: !22, line: 409, baseType: !699, size: 448, offset: 192)
!699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !700)
!700 = !{!701}
!701 = !DISubrange(count: 56)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !694, file: !22, line: 417, baseType: !703, size: 768, offset: 640)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !22, line: 45, size: 768, elements: !704)
!704 = !{!705, !706, !707, !708, !711}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !703, file: !22, line: 46, baseType: !352, size: 512)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !703, file: !22, line: 47, baseType: !693, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !703, file: !22, line: 48, baseType: !358, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !703, file: !22, line: 49, baseType: !709, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !22, line: 49, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !703, file: !22, line: 50, baseType: !712, size: 64, offset: 704)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !714, line: 26, size: 256, elements: !715)
!714 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !713, file: !714, line: 27, baseType: !23, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !713, file: !714, line: 28, baseType: !718, size: 192, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !719, line: 43, size: 192, elements: !720)
!719 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!720 = !{!721, !723}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !718, file: !719, line: 44, baseType: !722, size: 32)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !374, line: 23, baseType: !373)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !718, file: !719, line: 45, baseType: !266, size: 128, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !694, file: !22, line: 418, baseType: !725, size: 64, offset: 1408)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !22, line: 53, size: 448, elements: !727)
!727 = !{!728, !729, !734, !738, !742, !746}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !726, file: !22, line: 54, baseType: !469, size: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !726, file: !22, line: 55, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!463, !725, !733, !431}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !726, file: !22, line: 57, baseType: !735, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!463, !725, !733, !295, !478}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !726, file: !22, line: 59, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !693, !295}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !726, file: !22, line: 60, baseType: !743, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!125, !693}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !726, file: !22, line: 61, baseType: !747, size: 64, offset: 384)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !693}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !694, file: !22, line: 419, baseType: !295, size: 64, offset: 1472)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !694, file: !22, line: 420, baseType: !295, size: 64, offset: 1536)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !694, file: !22, line: 421, baseType: !358, size: 64, offset: 1600)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !694, file: !22, line: 424, baseType: !754, size: 64, offset: 1664)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !22, line: 424, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !694, file: !22, line: 425, baseType: !758, size: 64, offset: 1728)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !171, line: 20, baseType: !761)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !173, line: 26, baseType: !125)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !694, file: !22, line: 426, baseType: !23, size: 32, offset: 1792)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !694, file: !22, line: 435, baseType: !764, size: 256, offset: 1856)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !765, line: 66, size: 256, elements: !766)
!765 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!766 = !{!767, !776, !777, !782}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !764, file: !765, line: 67, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !769, line: 13, baseType: !770)
!769 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !267, line: 181, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 179, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !771, file: !267, line: 180, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !171, line: 22, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !173, line: 30, baseType: !666)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !764, file: !765, line: 68, baseType: !722, size: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !764, file: !765, line: 70, baseType: !778, size: 32, offset: 96)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !779, line: 15, size: 32, elements: !780)
!779 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!780 = !{!781}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !778, file: !779, line: 20, baseType: !385, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !764, file: !765, line: 72, baseType: !266, size: 128, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !694, file: !22, line: 437, baseType: !784, size: 64, offset: 2112)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !786, line: 69, size: 320, elements: !787)
!786 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!787 = !{!788, !789, !790, !810, !812, !816, !817}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !786, line: 70, baseType: !295, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !785, file: !786, line: 71, baseType: !693, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !785, file: !786, line: 72, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !786, line: 47, size: 256, elements: !794)
!794 = !{!795, !796, !802, !806}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !786, line: 49, baseType: !23, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !793, file: !786, line: 51, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!125, !295, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !793, file: !786, line: 53, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!125, !431, !800}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !793, file: !786, line: 55, baseType: !807, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !168}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !785, file: !786, line: 73, baseType: !811, size: 16, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !785, file: !786, line: 74, baseType: !813, size: 8, offset: 208)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !171, line: 16, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !173, line: 20, baseType: !815)
!815 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !786, line: 75, baseType: !393, size: 8, offset: 216)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !786, line: 76, baseType: !818, size: 64, offset: 256)
!818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !785, file: !786, line: 76, size: 64, elements: !819)
!819 = !{!820, !821, !828}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !818, file: !786, line: 77, baseType: !168, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !818, file: !786, line: 78, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !786, line: 86, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !824, file: !786, line: 87, baseType: !23, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !824, file: !786, line: 88, baseType: !431, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !818, file: !786, line: 79, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !786, line: 92, size: 256, elements: !832)
!832 = !{!833, !834, !835, !837, !838}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !831, file: !786, line: 94, baseType: !23, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !831, file: !786, line: 95, baseType: !23, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !831, file: !786, line: 96, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !831, file: !786, line: 97, baseType: !791, size: 64, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !831, file: !786, line: 98, baseType: !168, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !694, file: !22, line: 438, baseType: !23, size: 32, offset: 2176)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !694, file: !22, line: 441, baseType: !23, size: 32, offset: 2208)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !694, file: !22, line: 442, baseType: !754, size: 64, offset: 2240)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !694, file: !22, line: 443, baseType: !758, size: 64, offset: 2304)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !694, file: !22, line: 444, baseType: !844, size: 8, offset: 2368)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !267, line: 35, baseType: !845)
!845 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !694, file: !22, line: 451, baseType: !844, size: 8, offset: 2376)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !694, file: !22, line: 454, baseType: !23, size: 32, offset: 2400)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !694, file: !22, line: 455, baseType: !849, size: 64, offset: 2432)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !851, line: 23, size: 96, elements: !852)
!851 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!852 = !{!853, !854, !855}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !850, file: !851, line: 24, baseType: !125, size: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !850, file: !851, line: 24, baseType: !125, size: 32, offset: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !850, file: !851, line: 24, baseType: !125, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !694, file: !22, line: 458, baseType: !857, size: 64, offset: 2496)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!125}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !694, file: !22, line: 460, baseType: !861, size: 4032, align: 512, offset: 2560)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !862, size: 4032, elements: !885)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !22, line: 362, size: 576, elements: !863)
!863 = !{!864, !865, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !862, file: !22, line: 363, baseType: !168, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !862, file: !22, line: 364, baseType: !23, size: 32, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !862, file: !22, line: 367, baseType: !867, size: 448, offset: 128)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !22, line: 319, size: 448, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !867, file: !22, line: 320, baseType: !693, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !867, file: !22, line: 321, baseType: !871, size: 384, offset: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !872, line: 40, size: 384, elements: !873)
!872 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!873 = !{!874}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !871, file: !872, line: 41, baseType: !875, size: 384, align: 64)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 384, align: 64, elements: !883)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !877, line: 5, size: 192, align: 64, elements: !878)
!877 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!878 = !{!879, !880, !882}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !876, file: !877, line: 6, baseType: !298, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !876, file: !877, line: 7, baseType: !881, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !876, file: !877, line: 8, baseType: !881, size: 64, offset: 128)
!883 = !{!884}
!884 = !DISubrange(count: 2)
!885 = !{!886}
!886 = !DISubrange(count: 7)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !694, file: !22, line: 463, baseType: !888, size: 192, offset: 6592)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !889, line: 8, size: 192, elements: !890)
!889 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!890 = !{!891, !892, !894}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !888, file: !889, line: 10, baseType: !23, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !888, file: !889, line: 11, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !888, file: !889, line: 12, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !897, line: 59, size: 48, elements: !898)
!897 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!898 = !{!899, !903, !904, !905, !906, !907}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !896, file: !897, line: 60, baseType: !900, size: 16)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !171, line: 18, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !173, line: 23, baseType: !902)
!902 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !896, file: !897, line: 61, baseType: !900, size: 16, offset: 16)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !896, file: !897, line: 63, baseType: !23, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !896, file: !897, line: 64, baseType: !23, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !896, file: !897, line: 65, baseType: !23, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !896, file: !897, line: 66, baseType: !23, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !694, file: !22, line: 465, baseType: !298, size: 64, offset: 6784)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !694, file: !22, line: 469, baseType: !23, size: 32, offset: 6848)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !694, file: !22, line: 470, baseType: !266, size: 128, offset: 6912)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !694, file: !22, line: 471, baseType: !912, size: 64, offset: 7040)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !914, line: 33, size: 96, elements: !915)
!914 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!915 = !{!916, !917, !918, !919}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !913, file: !914, line: 37, baseType: !125, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !913, file: !914, line: 43, baseType: !125, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !913, file: !914, line: 45, baseType: !344, size: 16, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !913, file: !914, line: 47, baseType: !344, size: 16, offset: 80)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !694, file: !22, line: 476, baseType: !921, size: 64, offset: 7104)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !22, line: 378, size: 256, elements: !923)
!923 = !{!924, !940, !941, !942}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !922, file: !22, line: 379, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !927, line: 204, baseType: !928)
!927 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !927, line: 197, size: 192, elements: !929)
!929 = !{!930, !932, !933, !934, !936, !938}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !928, file: !927, line: 198, baseType: !931, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !927, line: 21, baseType: !172)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !928, file: !927, line: 199, baseType: !338, size: 8, offset: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !928, file: !927, line: 200, baseType: !338, size: 8, offset: 40)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !928, file: !927, line: 201, baseType: !935, size: 16, offset: 48)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !927, line: 17, baseType: !401)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !928, file: !927, line: 202, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !927, line: 16, baseType: !292)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !928, file: !927, line: 203, baseType: !939, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !927, line: 22, baseType: !292)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !922, file: !22, line: 380, baseType: !23, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !922, file: !22, line: 381, baseType: !431, size: 64, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !922, file: !22, line: 382, baseType: !431, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !694, file: !22, line: 477, baseType: !922, size: 256, offset: 7168)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !694, file: !22, line: 480, baseType: !945, size: 64, offset: 7424)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !22, line: 480, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !694, file: !22, line: 483, baseType: !948, size: 64, offset: 7488)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !22, line: 483, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !694, file: !22, line: 488, baseType: !431, size: 64, offset: 7552)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !694, file: !22, line: 492, baseType: !168, size: 64, offset: 7616)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !694, file: !22, line: 493, baseType: !23, size: 32, offset: 7680)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !694, file: !22, line: 495, baseType: !168, size: 64, offset: 7744)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !694, file: !22, line: 496, baseType: !23, size: 32, offset: 7808)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !694, file: !22, line: 499, baseType: !23, size: 32, offset: 7840)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !694, file: !22, line: 500, baseType: !957, size: 64, offset: 7872)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !959, line: 45, baseType: !960)
!959 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !694, file: !22, line: 503, baseType: !23, size: 32, offset: 7936)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !694, file: !22, line: 504, baseType: !963, size: 64, offset: 8000)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !966, line: 96, size: 192, elements: !967)
!966 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!967 = !{!968, !969, !1048, !1052}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !965, file: !966, line: 97, baseType: !23, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !965, file: !966, line: 98, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !966, line: 24, size: 3072, elements: !972)
!972 = !{!973, !975, !976, !977, !978, !1000, !1001, !1002, !1003, !1021, !1033, !1034, !1045, !1046, !1047}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !971, file: !966, line: 26, baseType: !974, size: 128)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 128, elements: !883)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !971, file: !966, line: 27, baseType: !974, size: 128, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !971, file: !966, line: 28, baseType: !125, size: 32, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !971, file: !966, line: 31, baseType: !365, size: 32, align: 512, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !971, file: !966, line: 32, baseType: !979, size: 960, offset: 576)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !980, line: 206, size: 960, elements: !981)
!980 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!981 = !{!982, !991, !994, !996, !997, !999}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !979, file: !980, line: 207, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !267, line: 232, size: 128, align: 64, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !984, file: !267, line: 233, baseType: !983, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !984, file: !267, line: 234, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !983}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !979, file: !980, line: 208, baseType: !992, size: 256, offset: 64)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 256, elements: !303)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !979, file: !980, line: 209, baseType: !995, size: 256, offset: 320)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !303)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !979, file: !980, line: 213, baseType: !467, size: 64, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !979, file: !980, line: 215, baseType: !998, size: 256, offset: 640)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 256, elements: !303)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !980, line: 216, baseType: !393, size: 8, offset: 896)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !971, file: !966, line: 33, baseType: !298, size: 64, offset: 1536)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !971, file: !966, line: 34, baseType: !298, size: 64, offset: 1600)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !971, file: !966, line: 35, baseType: !844, size: 8, offset: 1664)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !971, file: !966, line: 36, baseType: !1004, size: 320, offset: 1728)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1005, line: 11, size: 320, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1006 = !{!1007, !1014, !1015, !1020}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1004, file: !1005, line: 16, baseType: !1008, size: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !267, line: 198, size: 128, elements: !1009)
!1009 = !{!1010, !1012}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1008, file: !267, line: 199, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1008, file: !267, line: 199, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1004, file: !1005, line: 17, baseType: !298, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1004, file: !1005, line: 18, baseType: !1016, size: 64, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{null, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1004, file: !1005, line: 19, baseType: !170, size: 32, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !971, file: !966, line: 37, baseType: !1022, size: 256, offset: 2048)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1023, line: 98, size: 256, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1024 = !{!1025, !1026, !1027}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1022, file: !1023, line: 99, baseType: !768, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1022, file: !1023, line: 100, baseType: !266, size: 128, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1022, file: !1023, line: 101, baseType: !1028, size: 64, offset: 192)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1023, line: 21, baseType: !1029)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !971, file: !966, line: 38, baseType: !984, size: 128, align: 64, offset: 2304)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !971, file: !966, line: 39, baseType: !1035, size: 64, offset: 2432)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !966, line: 49, size: 768, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1036, file: !966, line: 50, baseType: !365, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1036, file: !966, line: 51, baseType: !995, size: 256, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1036, file: !966, line: 53, baseType: !995, size: 256, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1036, file: !966, line: 54, baseType: !298, size: 64, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1036, file: !966, line: 55, baseType: !1035, size: 64, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1036, file: !966, line: 56, baseType: !125, size: 32, offset: 704)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1036, file: !966, line: 57, baseType: !125, size: 32, offset: 736)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !971, file: !966, line: 40, baseType: !298, size: 64, offset: 2496)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !971, file: !966, line: 42, baseType: !125, size: 32, offset: 2560)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !971, file: !966, line: 43, baseType: !964, size: 64, offset: 2624)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !965, file: !966, line: 99, baseType: !1049, offset: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1050, line: 211, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1051 = !{}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !965, file: !966, line: 100, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !966, line: 63, size: 3008, elements: !1055)
!1055 = !{!1056, !1057, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1087}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1054, file: !966, line: 64, baseType: !1035, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1054, file: !966, line: 65, baseType: !1058, size: 192, offset: 64)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 192, elements: !432)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1054, file: !966, line: 67, baseType: !125, size: 32, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1054, file: !966, line: 68, baseType: !764, size: 256, offset: 320)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1054, file: !966, line: 69, baseType: !365, size: 32, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1054, file: !966, line: 70, baseType: !764, size: 256, offset: 640)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1054, file: !966, line: 71, baseType: !298, size: 64, offset: 896)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1054, file: !966, line: 72, baseType: !298, size: 64, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1054, file: !966, line: 73, baseType: !298, size: 64, offset: 1024)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1054, file: !966, line: 74, baseType: !298, size: 64, offset: 1088)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1054, file: !966, line: 75, baseType: !298, size: 64, offset: 1152)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1054, file: !966, line: 76, baseType: !298, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1054, file: !966, line: 77, baseType: !298, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1054, file: !966, line: 78, baseType: !298, size: 64, offset: 1344)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1054, file: !966, line: 79, baseType: !844, size: 8, offset: 1408)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1054, file: !966, line: 80, baseType: !298, size: 64, offset: 1472)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1054, file: !966, line: 81, baseType: !764, size: 256, offset: 1536)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1054, file: !966, line: 82, baseType: !713, size: 256, offset: 1792)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1054, file: !966, line: 84, baseType: !385, size: 32, offset: 2048)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1054, file: !966, line: 87, baseType: !298, size: 64, offset: 2112)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1054, file: !966, line: 88, baseType: !298, size: 64, offset: 2176)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1054, file: !966, line: 89, baseType: !1079, size: 704, offset: 2240)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1023, line: 111, size: 704, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1086}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1079, file: !1023, line: 112, baseType: !1022, size: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1079, file: !1023, line: 113, baseType: !1004, size: 320, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1079, file: !1023, line: 116, baseType: !1084, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1023, line: 18, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1079, file: !1023, line: 117, baseType: !125, size: 32, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1054, file: !966, line: 90, baseType: !964, size: 64, offset: 2944)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !694, file: !22, line: 515, baseType: !1089, size: 64, offset: 8064)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1091, line: 117, size: 128, elements: !1092)
!1091 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1090, file: !1091, line: 118, baseType: !760, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1090, file: !1091, line: 119, baseType: !760, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1090, file: !1091, line: 120, baseType: !467, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !694, file: !22, line: 516, baseType: !23, size: 32, offset: 8128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !694, file: !22, line: 519, baseType: !23, size: 32, offset: 8160)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !694, file: !22, line: 520, baseType: !1099, size: 64, offset: 8192)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !694, file: !22, line: 523, baseType: !1101, size: 64, offset: 8256)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !22, line: 523, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !694, file: !22, line: 524, baseType: !23, size: 32, offset: 8320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !694, file: !22, line: 525, baseType: !1106, size: 64, offset: 8384)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !22, line: 525, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !694, file: !22, line: 526, baseType: !23, size: 32, offset: 8448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !694, file: !22, line: 533, baseType: !168, size: 64, offset: 8512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !694, file: !22, line: 534, baseType: !23, size: 32, offset: 8576)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !694, file: !22, line: 535, baseType: !1113, size: 64, offset: 8640)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !694, file: !22, line: 536, baseType: !23, size: 32, offset: 8704)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !694, file: !22, line: 539, baseType: !125, size: 32, offset: 8736)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !694, file: !22, line: 540, baseType: !1117, size: 64, offset: 8768)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1119, line: 32, size: 64, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1118, file: !1119, line: 33, baseType: !760, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1118, file: !1119, line: 34, baseType: !760, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !694, file: !22, line: 563, baseType: !266, size: 128, offset: 8832)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !694, file: !22, line: 565, baseType: !266, size: 128, offset: 8960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !694, file: !22, line: 568, baseType: !1126, size: 64, offset: 9088)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{null}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !694, file: !22, line: 570, baseType: !385, size: 32, offset: 9152)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !669, file: !30, line: 2382, baseType: !668, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !669, file: !30, line: 2383, baseType: !1132, size: 64, offset: 512)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !267, line: 194, size: 64, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1132, file: !267, line: 195, baseType: !1011, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !669, file: !30, line: 2385, baseType: !1136, offset: 576)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1050, line: 206, elements: !1051)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !669, file: !30, line: 2386, baseType: !1136, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !669, file: !30, line: 2387, baseType: !1136, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !669, file: !30, line: 2388, baseType: !1140, offset: 576)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, elements: !432)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !669, file: !30, line: 2390, baseType: !1136, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !669, file: !30, line: 2391, baseType: !1136, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !669, file: !30, line: 2392, baseType: !1136, offset: 576)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !669, file: !30, line: 2393, baseType: !1136, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !655, file: !30, line: 1197, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !30, line: 2057, size: 1664, elements: !1149)
!1149 = !{!1150, !1154, !1158, !1159, !1163, !1169, !1173, !1174, !1175, !1179, !1183, !1187, !1188, !1189, !1195, !1199, !1200, !1207, !1208, !1209, !1210, !1214, !1218, !1267, !1283, !1284}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1148, file: !30, line: 2058, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!510, !654}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1148, file: !30, line: 2059, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{null, !510}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1148, file: !30, line: 2060, baseType: !1155, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1148, file: !30, line: 2062, baseType: !1160, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{null, !510, !125}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1148, file: !30, line: 2063, baseType: !1164, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!125, !510, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !30, line: 309, flags: DIFlagFwdDecl)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1148, file: !30, line: 2064, baseType: !1170, size: 64, offset: 320)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!125, !510}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1148, file: !30, line: 2065, baseType: !1155, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1148, file: !30, line: 2066, baseType: !689, size: 64, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1148, file: !30, line: 2067, baseType: !1176, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!125, !654, !125}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1148, file: !30, line: 2068, baseType: !1180, size: 64, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!125, !654, !29}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1148, file: !30, line: 2069, baseType: !1184, size: 64, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{!125, !654}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1148, file: !30, line: 2070, baseType: !1180, size: 64, offset: 704)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1148, file: !30, line: 2071, baseType: !1184, size: 64, offset: 768)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1148, file: !30, line: 2072, baseType: !1190, size: 64, offset: 832)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!125, !545, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !30, line: 62, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1148, file: !30, line: 2073, baseType: !1196, size: 64, offset: 896)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!125, !654, !893, !431}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1148, file: !30, line: 2074, baseType: !689, size: 64, offset: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1148, file: !30, line: 2076, baseType: !1201, size: 64, offset: 1024)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!125, !1204, !545}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1206, line: 66, flags: DIFlagFwdDecl)
!1206 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1148, file: !30, line: 2077, baseType: !1201, size: 64, offset: 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1148, file: !30, line: 2078, baseType: !1201, size: 64, offset: 1152)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1148, file: !30, line: 2079, baseType: !1201, size: 64, offset: 1216)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1148, file: !30, line: 2081, baseType: !1211, size: 64, offset: 1280)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!463, !654, !125, !431, !478, !664}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1148, file: !30, line: 2082, baseType: !1215, size: 64, offset: 1344)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!463, !654, !125, !295, !478, !664}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1148, file: !30, line: 2083, baseType: !1219, size: 64, offset: 1408)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!1222, !510}
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !35, line: 296, size: 1664, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1250, !1251, !1252}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1224, file: !35, line: 297, baseType: !1008, size: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1224, file: !35, line: 298, baseType: !266, size: 128, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1224, file: !35, line: 299, baseType: !266, size: 128, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1224, file: !35, line: 300, baseType: !266, size: 128, offset: 384)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1224, file: !35, line: 301, baseType: !764, size: 256, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1224, file: !35, line: 302, baseType: !365, size: 32, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1224, file: !35, line: 303, baseType: !385, size: 32, offset: 800)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1224, file: !35, line: 304, baseType: !654, size: 64, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1224, file: !35, line: 305, baseType: !1235, size: 64, offset: 896)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !35, line: 68, size: 64, elements: !1236)
!1236 = !{!1237, !1249}
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !35, line: 69, baseType: !1238, size: 32)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !35, line: 69, size: 32, elements: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1238, file: !35, line: 70, baseType: !516, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1238, file: !35, line: 71, baseType: !525, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1238, file: !35, line: 72, baseType: !1243, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1244, line: 24, baseType: !1245)
!1244 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1244, line: 22, size: 32, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1245, file: !1244, line: 23, baseType: !1248, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1244, line: 20, baseType: !522)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1235, file: !35, line: 74, baseType: !34, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1224, file: !35, line: 306, baseType: !664, size: 64, offset: 960)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1224, file: !35, line: 307, baseType: !298, size: 64, offset: 1024)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1224, file: !35, line: 308, baseType: !1253, size: 576, offset: 1088)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !35, line: 205, size: 576, elements: !1254)
!1254 = !{!1255, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1266}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1253, file: !35, line: 206, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !35, line: 66, baseType: !666)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1253, file: !35, line: 207, baseType: !1256, size: 64, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1253, file: !35, line: 208, baseType: !1256, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1253, file: !35, line: 209, baseType: !1256, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1253, file: !35, line: 210, baseType: !1256, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1253, file: !35, line: 211, baseType: !1256, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1253, file: !35, line: 212, baseType: !1256, size: 64, offset: 384)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1253, file: !35, line: 213, baseType: !1264, size: 64, offset: 448)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1265, line: 8, baseType: !775)
!1265 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1253, file: !35, line: 214, baseType: !1264, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1148, file: !30, line: 2085, baseType: !1268, size: 64, offset: 1472)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!467, !654, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1273, line: 15, size: 256, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1274 = !{!1275, !1277, !1278, !1279, !1280}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1272, file: !1273, line: 16, baseType: !1276, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !267, line: 154, baseType: !23)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1272, file: !1273, line: 19, baseType: !125, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1272, file: !1273, line: 26, baseType: !298, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1272, file: !1273, line: 33, baseType: !298, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1272, file: !1273, line: 36, baseType: !1281, size: 64, offset: 192)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !54, line: 33, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1148, file: !30, line: 2087, baseType: !1268, size: 64, offset: 1536)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1148, file: !30, line: 2089, baseType: !689, size: 64, offset: 1600)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !655, file: !30, line: 1198, baseType: !1286, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !35, line: 324, size: 704, elements: !1289)
!1289 = !{!1290, !1294, !1298, !1302, !1303, !1304, !1305, !1306, !1311, !1316, !1320}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1288, file: !35, line: 325, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!125, !1223}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1288, file: !35, line: 326, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1223, !654, !125}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1288, file: !35, line: 327, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !1223}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1288, file: !35, line: 328, baseType: !1291, size: 64, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1288, file: !35, line: 329, baseType: !1291, size: 64, offset: 256)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1288, file: !35, line: 330, baseType: !1291, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1288, file: !35, line: 331, baseType: !1176, size: 64, offset: 384)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1288, file: !35, line: 334, baseType: !1307, size: 64, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!1310, !510}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1288, file: !35, line: 335, baseType: !1312, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!125, !510, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1288, file: !35, line: 337, baseType: !1317, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!125, !510, !1310}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1288, file: !35, line: 339, baseType: !1321, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!125, !654, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !655, file: !30, line: 1199, baseType: !1326, size: 64, offset: 512)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !35, line: 430, size: 704, elements: !1329)
!1329 = !{!1330, !1341, !1342, !1346, !1347, !1348, !1363, !1386, !1390, !1391, !1414}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1328, file: !35, line: 431, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!125, !654, !125, !125, !1334}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1337, line: 8, size: 128, elements: !1338)
!1337 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1338 = !{!1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1336, file: !1337, line: 9, baseType: !648, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1336, file: !1337, line: 10, baseType: !545, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1328, file: !35, line: 432, baseType: !1176, size: 64, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1328, file: !35, line: 433, baseType: !1343, size: 64, offset: 128)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!125, !654, !23}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1328, file: !35, line: 434, baseType: !1343, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1328, file: !35, line: 435, baseType: !1176, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1328, file: !35, line: 436, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!125, !654, !125, !1352}
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !35, line: 417, size: 256, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1353, file: !35, line: 418, baseType: !125, size: 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1353, file: !35, line: 419, baseType: !23, size: 32, offset: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1353, file: !35, line: 420, baseType: !23, size: 32, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1353, file: !35, line: 422, baseType: !23, size: 32, offset: 96)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1353, file: !35, line: 423, baseType: !23, size: 32, offset: 128)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1353, file: !35, line: 424, baseType: !23, size: 32, offset: 160)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1353, file: !35, line: 425, baseType: !23, size: 32, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1353, file: !35, line: 426, baseType: !23, size: 32, offset: 224)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1328, file: !35, line: 437, baseType: !1364, size: 64, offset: 384)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!125, !654, !1235, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !35, line: 345, size: 960, elements: !1369)
!1369 = !{!1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1368, file: !35, line: 346, baseType: !125, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1368, file: !35, line: 347, baseType: !291, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1368, file: !35, line: 348, baseType: !291, size: 64, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1368, file: !35, line: 349, baseType: !291, size: 64, offset: 192)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1368, file: !35, line: 350, baseType: !291, size: 64, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1368, file: !35, line: 351, baseType: !291, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1368, file: !35, line: 352, baseType: !291, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1368, file: !35, line: 353, baseType: !774, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1368, file: !35, line: 355, baseType: !774, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1368, file: !35, line: 356, baseType: !125, size: 32, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1368, file: !35, line: 357, baseType: !125, size: 32, offset: 608)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1368, file: !35, line: 358, baseType: !291, size: 64, offset: 640)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1368, file: !35, line: 359, baseType: !291, size: 64, offset: 704)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1368, file: !35, line: 360, baseType: !291, size: 64, offset: 768)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1368, file: !35, line: 361, baseType: !774, size: 64, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1368, file: !35, line: 362, baseType: !125, size: 32, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1328, file: !35, line: 438, baseType: !1387, size: 64, offset: 448)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!125, !654, !1324, !1367}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1328, file: !35, line: 440, baseType: !1364, size: 64, offset: 512)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1328, file: !35, line: 441, baseType: !1392, size: 64, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!125, !654, !1395}
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !35, line: 411, size: 1408, elements: !1397)
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1396, file: !35, line: 412, baseType: !23, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1396, file: !35, line: 413, baseType: !1400, size: 1344, offset: 64)
!1400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 1344, elements: !432)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !35, line: 397, size: 448, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1413}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1401, file: !35, line: 398, baseType: !23, size: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1401, file: !35, line: 399, baseType: !23, size: 32, offset: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1401, file: !35, line: 401, baseType: !23, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1401, file: !35, line: 402, baseType: !23, size: 32, offset: 96)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1401, file: !35, line: 403, baseType: !23, size: 32, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1401, file: !35, line: 404, baseType: !23, size: 32, offset: 160)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1401, file: !35, line: 405, baseType: !23, size: 32, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1401, file: !35, line: 406, baseType: !169, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1401, file: !35, line: 407, baseType: !1412, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !267, line: 132, baseType: !291)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1401, file: !35, line: 408, baseType: !1412, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1328, file: !35, line: 442, baseType: !1343, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !655, file: !30, line: 1200, baseType: !1416, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !30, line: 54, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !655, file: !30, line: 1201, baseType: !298, size: 64, offset: 640)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !655, file: !30, line: 1202, baseType: !298, size: 64, offset: 704)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !655, file: !30, line: 1203, baseType: !298, size: 64, offset: 768)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !655, file: !30, line: 1204, baseType: !545, size: 64, offset: 832)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !655, file: !30, line: 1205, baseType: !1424, size: 320, offset: 896)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1425, line: 48, size: 320, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1426 = !{!1427, !1428, !1429, !1430, !1431}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1424, file: !1425, line: 49, baseType: !768, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1424, file: !1425, line: 55, baseType: !768, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1424, file: !1425, line: 57, baseType: !778, size: 32, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1424, file: !1425, line: 59, baseType: !722, size: 32, offset: 160)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1424, file: !1425, line: 60, baseType: !266, size: 128, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !655, file: !30, line: 1206, baseType: !125, size: 32, offset: 1216)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !655, file: !30, line: 1207, baseType: !385, size: 32, offset: 1248)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !655, file: !30, line: 1209, baseType: !168, size: 64, offset: 1280)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !655, file: !30, line: 1211, baseType: !1436, size: 64, offset: 1344)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1439)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !30, line: 1211, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !655, file: !30, line: 1223, baseType: !1441, size: 64, offset: 1408)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !562, line: 34, size: 64, elements: !1442)
!1442 = !{!1443}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1441, file: !562, line: 35, baseType: !565, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !655, file: !30, line: 1224, baseType: !266, size: 128, offset: 1472)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !655, file: !30, line: 1225, baseType: !1446, size: 64, offset: 1600)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !30, line: 1225, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !655, file: !30, line: 1226, baseType: !1449, size: 64, offset: 1664)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !30, line: 1226, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !655, file: !30, line: 1227, baseType: !1452, size: 64, offset: 1728)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !30, line: 50, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !655, file: !30, line: 1228, baseType: !1455, size: 64, offset: 1792)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !30, line: 1228, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !655, file: !30, line: 1229, baseType: !1008, size: 128, offset: 1856)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !655, file: !30, line: 1230, baseType: !23, size: 32, offset: 1984)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !655, file: !30, line: 1231, baseType: !1460, size: 2496, offset: 2048)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !35, line: 521, size: 2496, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1466, !1498}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !35, line: 522, baseType: !23, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1460, file: !35, line: 523, baseType: !1424, size: 320, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1460, file: !35, line: 524, baseType: !1465, size: 192, offset: 384)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !510, size: 192, elements: !432)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1460, file: !35, line: 525, baseType: !1467, size: 1728, offset: 576)
!1467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1468, size: 1728, elements: !432)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !35, line: 222, size: 576, elements: !1469)
!1469 = !{!1470, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1468, file: !35, line: 223, baseType: !1471, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !35, line: 445, size: 256, elements: !1473)
!1473 = !{!1474, !1475, !1488, !1489}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1472, file: !35, line: 446, baseType: !125, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1472, file: !35, line: 447, baseType: !1476, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !35, line: 312, size: 512, elements: !1479)
!1479 = !{!1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1478, file: !35, line: 313, baseType: !1176, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1478, file: !35, line: 314, baseType: !1176, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1478, file: !35, line: 315, baseType: !1176, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1478, file: !35, line: 316, baseType: !1176, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1478, file: !35, line: 317, baseType: !1291, size: 64, offset: 256)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1478, file: !35, line: 318, baseType: !1291, size: 64, offset: 320)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1478, file: !35, line: 319, baseType: !1291, size: 64, offset: 384)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1478, file: !35, line: 320, baseType: !1321, size: 64, offset: 448)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1472, file: !35, line: 448, baseType: !693, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1472, file: !35, line: 449, baseType: !1471, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1468, file: !35, line: 224, baseType: !125, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1468, file: !35, line: 226, baseType: !266, size: 128, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1468, file: !35, line: 227, baseType: !298, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1468, file: !35, line: 228, baseType: !23, size: 32, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1468, file: !35, line: 229, baseType: !23, size: 32, offset: 352)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1468, file: !35, line: 230, baseType: !1256, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1468, file: !35, line: 231, baseType: !1256, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1468, file: !35, line: 232, baseType: !168, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1460, file: !35, line: 526, baseType: !1499, size: 192, offset: 2304)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1476, size: 192, elements: !432)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !655, file: !30, line: 1233, baseType: !1501, size: 2368, offset: 4544)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !30, line: 1184, size: 2368, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1501, file: !30, line: 1185, baseType: !344, size: 16)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1501, file: !30, line: 1186, baseType: !344, size: 16, offset: 16)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1501, file: !30, line: 1187, baseType: !1506, size: 2304, offset: 64)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1507, size: 2304, elements: !432)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1508, line: 12, size: 768, elements: !1509)
!1508 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1509 = !{!1510, !1524, !1525, !3608, !3609}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1507, file: !1508, line: 13, baseType: !1511, size: 384)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1512, line: 17, size: 384, elements: !1513)
!1512 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1513 = !{!1514, !1515, !1516, !1523}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1511, file: !1512, line: 18, baseType: !125, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1511, file: !1512, line: 19, baseType: !125, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1511, file: !1512, line: 20, baseType: !1517, size: 192, offset: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1518, line: 41, baseType: !1519)
!1518 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1518, line: 37, size: 192, elements: !1520)
!1520 = !{!1521, !1522}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1519, file: !1518, line: 38, baseType: !365, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1519, file: !1518, line: 39, baseType: !266, size: 128, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1511, file: !1512, line: 22, baseType: !984, size: 128, align: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1507, file: !1508, line: 14, baseType: !836, size: 64, offset: 384)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1507, file: !1508, line: 15, baseType: !1526, size: 64, offset: 448)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1527, line: 16, size: 64, elements: !1528)
!1527 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1526, file: !1527, line: 17, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1206, line: 746, size: 58368, elements: !1532)
!1532 = !{!1533, !1541, !1542, !1543, !1549, !1550, !1551, !1552, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1623, !1634, !1729, !1733, !1736, !1767, !1768, !1769, !1770, !1781, !1783, !1784, !1785, !1786, !1787, !1788, !1799, !1800, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1817, !1818, !1825, !1826, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2784, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2832, !2838, !2839, !2840, !2841, !2842, !2846, !2849, !2856, !2861, !2864, !2867, !2870, !2873, !3011, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3049, !3050, !3051, !3060, !3068, !3069, !3070, !3071, !3072, !3077, !3078, !3079, !3082, !3083, !3086, !3089, !3092, !3100, !3103, !3104, !3190, !3191, !3192, !3193, !3194, !3200, !3201, !3202, !3203, !3206, !3207, !3210, !3213, !3214, !3217, !3218, !3219, !3222, !3223, !3224, !3225, !3226, !3227, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3259, !3260, !3266, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3278, !3350, !3352, !3353, !3354, !3355, !3356, !3357, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3385, !3386, !3387}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1531, file: !1206, line: 752, baseType: !1534, size: 192)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1535, line: 56, size: 192, elements: !1536)
!1535 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1536 = !{!1537, !1538, !1539, !1540}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1534, file: !1535, line: 57, baseType: !298, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1534, file: !1535, line: 58, baseType: !298, size: 64, offset: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1534, file: !1535, line: 59, baseType: !170, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1534, file: !1535, line: 61, baseType: !170, size: 32, offset: 160)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1531, file: !1206, line: 754, baseType: !23, size: 32, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1531, file: !1206, line: 767, baseType: !168, size: 64, offset: 256)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1531, file: !1206, line: 768, baseType: !1544, size: 32, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1545, line: 113, baseType: !1546)
!1545 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1545, line: 111, size: 32, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1546, file: !1545, line: 112, baseType: !385, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1531, file: !1206, line: 770, baseType: !23, size: 32, offset: 352)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1531, file: !1206, line: 771, baseType: !23, size: 32, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1531, file: !1206, line: 774, baseType: !125, size: 32, offset: 416)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1531, file: !1206, line: 775, baseType: !1553, size: 128, offset: 448)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1554, line: 58, size: 128, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1555 = !{!1556, !1562, !1567, !1568}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1553, file: !1554, line: 59, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1558, line: 60, size: 64, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1559 = !{!1560}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1557, file: !1558, line: 61, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1553, file: !1554, line: 60, baseType: !1563, size: 32, offset: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1553, file: !1554, line: 60, size: 32, elements: !1564)
!1564 = !{!1565, !1566}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1563, file: !1554, line: 61, baseType: !23, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1563, file: !1554, line: 62, baseType: !385, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1553, file: !1554, line: 65, baseType: !400, size: 16, offset: 96)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1553, file: !1554, line: 65, baseType: !400, size: 16, offset: 112)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1531, file: !1206, line: 776, baseType: !23, size: 32, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1531, file: !1206, line: 777, baseType: !298, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1531, file: !1206, line: 778, baseType: !1530, size: 64, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1531, file: !1206, line: 787, baseType: !125, size: 32, offset: 768)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1531, file: !1206, line: 788, baseType: !125, size: 32, offset: 800)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1531, file: !1206, line: 790, baseType: !125, size: 32, offset: 832)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1531, file: !1206, line: 792, baseType: !125, size: 32, offset: 864)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1531, file: !1206, line: 793, baseType: !125, size: 32, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1531, file: !1206, line: 794, baseType: !125, size: 32, offset: 928)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1531, file: !1206, line: 795, baseType: !23, size: 32, offset: 960)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1531, file: !1206, line: 797, baseType: !1580, size: 2048, offset: 1024)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1206, line: 551, size: 2048, elements: !1581)
!1581 = !{!1582, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1602, !1605, !1606, !1607}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1580, file: !1206, line: 553, baseType: !1583, size: 128)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1206, line: 411, size: 128, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1583, file: !1206, line: 412, baseType: !298, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1583, file: !1206, line: 413, baseType: !170, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1580, file: !1206, line: 554, baseType: !876, size: 192, align: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1580, file: !1206, line: 555, baseType: !291, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1580, file: !1206, line: 556, baseType: !291, size: 64, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1580, file: !1206, line: 558, baseType: !266, size: 128, offset: 448)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1580, file: !1206, line: 559, baseType: !23, size: 32, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1580, file: !1206, line: 561, baseType: !291, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1580, file: !1206, line: 562, baseType: !291, size: 64, offset: 704)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1580, file: !1206, line: 563, baseType: !291, size: 64, offset: 768)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1580, file: !1206, line: 564, baseType: !291, size: 64, offset: 832)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1580, file: !1206, line: 565, baseType: !774, size: 64, offset: 896)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1580, file: !1206, line: 566, baseType: !291, size: 64, offset: 960)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1580, file: !1206, line: 568, baseType: !291, size: 64, offset: 1024)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1580, file: !1206, line: 571, baseType: !125, size: 32, offset: 1088)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1580, file: !1206, line: 572, baseType: !1601, size: 64, offset: 1152)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1580, file: !1206, line: 574, baseType: !1603, size: 64, offset: 1216)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1206, line: 49, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1580, file: !1206, line: 576, baseType: !1603, size: 64, offset: 1280)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1580, file: !1206, line: 578, baseType: !298, size: 64, offset: 1344)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1580, file: !1206, line: 588, baseType: !1608, size: 512, align: 512, offset: 1536)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1206, line: 497, size: 512, align: 512, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1608, file: !1206, line: 498, baseType: !291, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1608, file: !1206, line: 499, baseType: !291, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1608, file: !1206, line: 500, baseType: !291, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1608, file: !1206, line: 501, baseType: !170, size: 32, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1608, file: !1206, line: 502, baseType: !170, size: 32, offset: 224)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1608, file: !1206, line: 503, baseType: !298, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1608, file: !1206, line: 504, baseType: !298, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1608, file: !1206, line: 505, baseType: !298, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1608, file: !1206, line: 506, baseType: !1619, size: 64, align: 64, offset: 448)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1206, line: 445, size: 64, align: 64, elements: !1620)
!1620 = !{!1621, !1622}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1619, file: !1206, line: 446, baseType: !23, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1619, file: !1206, line: 447, baseType: !23, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1531, file: !1206, line: 798, baseType: !1624, size: 384, offset: 3072)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1206, line: 592, size: 384, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1631, !1632}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1624, file: !1206, line: 593, baseType: !266, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1624, file: !1206, line: 594, baseType: !298, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1624, file: !1206, line: 595, baseType: !298, size: 64, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1624, file: !1206, line: 596, baseType: !23, size: 32, offset: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1624, file: !1206, line: 597, baseType: !344, size: 16, offset: 288)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1624, file: !1206, line: 598, baseType: !344, size: 16, offset: 304)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1624, file: !1206, line: 600, baseType: !1633, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1531, file: !1206, line: 799, baseType: !1635, size: 1792, offset: 3456)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1206, line: 610, size: 1792, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1726, !1727}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1635, file: !1206, line: 611, baseType: !876, size: 192, align: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1635, file: !1206, line: 618, baseType: !291, size: 64, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1635, file: !1206, line: 619, baseType: !291, size: 64, offset: 256)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1635, file: !1206, line: 620, baseType: !291, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1635, file: !1206, line: 621, baseType: !291, size: 64, offset: 384)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1635, file: !1206, line: 622, baseType: !291, size: 64, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1635, file: !1206, line: 629, baseType: !774, size: 64, offset: 512)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1635, file: !1206, line: 630, baseType: !291, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1635, file: !1206, line: 631, baseType: !23, size: 32, offset: 640)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1635, file: !1206, line: 653, baseType: !23, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1635, file: !1206, line: 654, baseType: !23, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1635, file: !1206, line: 655, baseType: !23, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1635, file: !1206, line: 656, baseType: !23, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1635, file: !1206, line: 662, baseType: !1651, size: 512, offset: 704)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !41, line: 118, size: 512, elements: !1652)
!1652 = !{!1653, !1661, !1662, !1667, !1722, !1723, !1724, !1725}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1651, file: !41, line: 119, baseType: !1654, size: 256)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1655, line: 9, size: 256, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1656 = !{!1657, !1658}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1654, file: !1655, line: 10, baseType: !876, size: 192, align: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1654, file: !1655, line: 11, baseType: !1659, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1660, line: 29, baseType: !774)
!1660 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1651, file: !41, line: 120, baseType: !1659, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1651, file: !41, line: 121, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!40, !1666}
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1651, file: !41, line: 122, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !41, line: 159, size: 512, align: 512, elements: !1670)
!1670 = !{!1671, !1696, !1697, !1700, !1705, !1706, !1717, !1721}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1669, file: !41, line: 160, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !41, line: 215, size: 4608, align: 512, elements: !1674)
!1674 = !{!1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !41, line: 216, baseType: !722, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1673, file: !41, line: 217, baseType: !23, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1673, file: !41, line: 218, baseType: !23, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1673, file: !41, line: 219, baseType: !23, size: 32, offset: 96)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1673, file: !41, line: 220, baseType: !23, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1673, file: !41, line: 221, baseType: !23, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1673, file: !41, line: 222, baseType: !23, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1673, file: !41, line: 223, baseType: !23, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1673, file: !41, line: 224, baseType: !23, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1673, file: !41, line: 226, baseType: !23, size: 32, offset: 160)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1673, file: !41, line: 227, baseType: !344, size: 16, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1673, file: !41, line: 228, baseType: !344, size: 16, offset: 208)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1673, file: !41, line: 229, baseType: !23, size: 32, offset: 224)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1673, file: !41, line: 235, baseType: !1659, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1673, file: !41, line: 236, baseType: !1666, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1673, file: !41, line: 237, baseType: !1659, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1673, file: !41, line: 238, baseType: !1666, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1673, file: !41, line: 239, baseType: !1693, size: 4096, align: 512, offset: 512)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1669, size: 4096, align: 512, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 8)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1669, file: !41, line: 161, baseType: !23, size: 32, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1669, file: !41, line: 162, baseType: !1698, size: 32, offset: 96)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !267, line: 32, baseType: !1699)
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !465, line: 96, baseType: !125)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1669, file: !41, line: 163, baseType: !1701, size: 32, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !552, line: 274, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !552, line: 274, size: 32, elements: !1703)
!1703 = !{!1704}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1702, file: !552, line: 274, baseType: !556, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1669, file: !41, line: 164, baseType: !1666, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1669, file: !41, line: 165, baseType: !1707, size: 128, offset: 256)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1655, line: 14, size: 128, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1707, file: !1655, line: 15, baseType: !1710, size: 128)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !877, line: 26, size: 128, elements: !1711)
!1711 = !{!1712, !1716}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1710, file: !877, line: 27, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !877, line: 12, size: 64, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1713, file: !877, line: 13, baseType: !881, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1710, file: !877, line: 28, baseType: !881, size: 64, offset: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1669, file: !41, line: 166, baseType: !1718, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1659}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1669, file: !41, line: 167, baseType: !1659, size: 64, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1651, file: !41, line: 123, baseType: !393, size: 8, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1651, file: !41, line: 124, baseType: !393, size: 8, offset: 456)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1651, file: !41, line: 125, baseType: !393, size: 8, offset: 464)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1651, file: !41, line: 126, baseType: !393, size: 8, offset: 472)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1635, file: !1206, line: 671, baseType: !1651, size: 512, offset: 1216)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1635, file: !1206, line: 679, baseType: !1728, size: 64, offset: 1728)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1531, file: !1206, line: 800, baseType: !1730, size: 64, offset: 5248)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1732)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1206, line: 800, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1531, file: !1206, line: 809, baseType: !1734, size: 64, offset: 5312)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1206, line: 70, flags: DIFlagFwdDecl)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1531, file: !1206, line: 825, baseType: !1737, size: 2048, align: 512, offset: 5632)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1206, line: 509, size: 2048, align: 512, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1737, file: !1206, line: 511, baseType: !291, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1737, file: !1206, line: 512, baseType: !291, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1737, file: !1206, line: 513, baseType: !291, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1737, file: !1206, line: 514, baseType: !291, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1737, file: !1206, line: 515, baseType: !291, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1737, file: !1206, line: 516, baseType: !291, size: 64, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1737, file: !1206, line: 518, baseType: !291, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1737, file: !1206, line: 519, baseType: !291, size: 64, offset: 448)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1737, file: !1206, line: 520, baseType: !774, size: 64, offset: 512)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1737, file: !1206, line: 522, baseType: !291, size: 64, offset: 576)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1737, file: !1206, line: 523, baseType: !291, size: 64, offset: 640)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1737, file: !1206, line: 524, baseType: !774, size: 64, offset: 704)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1737, file: !1206, line: 526, baseType: !774, size: 64, offset: 768)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1737, file: !1206, line: 527, baseType: !291, size: 64, offset: 832)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1737, file: !1206, line: 529, baseType: !291, size: 64, offset: 896)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1737, file: !1206, line: 530, baseType: !291, size: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1737, file: !1206, line: 531, baseType: !291, size: 64, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1737, file: !1206, line: 532, baseType: !291, size: 64, offset: 1088)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1737, file: !1206, line: 533, baseType: !291, size: 64, offset: 1152)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1737, file: !1206, line: 535, baseType: !291, size: 64, offset: 1216)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1737, file: !1206, line: 536, baseType: !291, size: 64, offset: 1280)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1737, file: !1206, line: 537, baseType: !291, size: 64, offset: 1344)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1737, file: !1206, line: 538, baseType: !291, size: 64, offset: 1408)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1737, file: !1206, line: 539, baseType: !291, size: 64, offset: 1472)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1737, file: !1206, line: 540, baseType: !291, size: 64, offset: 1536)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1737, file: !1206, line: 541, baseType: !291, size: 64, offset: 1600)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1737, file: !1206, line: 542, baseType: !291, size: 64, offset: 1664)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1737, file: !1206, line: 543, baseType: !291, size: 64, offset: 1728)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1531, file: !1206, line: 833, baseType: !23, size: 32, offset: 7680)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1531, file: !1206, line: 836, baseType: !23, size: 32, offset: 7712)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1531, file: !1206, line: 837, baseType: !125, size: 32, offset: 7744)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1531, file: !1206, line: 838, baseType: !1771, size: 64, offset: 7808)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1774, line: 19, baseType: !1775)
!1774 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1774, line: 19, size: 64, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1775, file: !1774, line: 19, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 64, elements: !1779)
!1779 = !{!1780}
!1780 = !DISubrange(count: 1)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1531, file: !1206, line: 839, baseType: !1782, size: 64, offset: 7872)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1531, file: !1206, line: 840, baseType: !1773, size: 64, offset: 7936)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1531, file: !1206, line: 841, baseType: !168, size: 64, offset: 8000)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1531, file: !1206, line: 843, baseType: !344, size: 16, offset: 8064)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1531, file: !1206, line: 845, baseType: !344, size: 16, offset: 8080)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1531, file: !1206, line: 848, baseType: !125, size: 32, offset: 8096)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1531, file: !1206, line: 849, baseType: !1789, size: 32, offset: 8128)
!1789 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1206, line: 718, size: 32, elements: !1790)
!1790 = !{!1791, !1798}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1789, file: !1206, line: 724, baseType: !1792, size: 32)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1789, file: !1206, line: 719, size: 32, elements: !1793)
!1793 = !{!1794, !1795, !1796, !1797}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1792, file: !1206, line: 720, baseType: !393, size: 8)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1792, file: !1206, line: 721, baseType: !393, size: 8, offset: 8)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1792, file: !1206, line: 722, baseType: !393, size: 8, offset: 16)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1792, file: !1206, line: 723, baseType: !393, size: 8, offset: 24)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1789, file: !1206, line: 725, baseType: !170, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1531, file: !1206, line: 850, baseType: !266, size: 128, offset: 8192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1531, file: !1206, line: 851, baseType: !1801, size: 64, offset: 8320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1206, line: 60, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1531, file: !1206, line: 855, baseType: !298, size: 64, offset: 8384)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1531, file: !1206, line: 856, baseType: !393, size: 8, offset: 8448)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1531, file: !1206, line: 857, baseType: !393, size: 8, offset: 8456)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1531, file: !1206, line: 858, baseType: !125, size: 32, offset: 8480)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1531, file: !1206, line: 859, baseType: !266, size: 128, offset: 8512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1531, file: !1206, line: 860, baseType: !125, size: 32, offset: 8640)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1531, file: !1206, line: 861, baseType: !266, size: 128, offset: 8704)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1531, file: !1206, line: 873, baseType: !1811, size: 256, offset: 8832)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1206, line: 376, size: 256, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1811, file: !1206, line: 381, baseType: !298, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1811, file: !1206, line: 384, baseType: !169, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1811, file: !1206, line: 389, baseType: !169, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1811, file: !1206, line: 392, baseType: !169, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1531, file: !1206, line: 875, baseType: !266, size: 128, offset: 9088)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1531, file: !1206, line: 877, baseType: !1819, size: 320, offset: 9216)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1820, line: 86, size: 320, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1821 = !{!1822, !1823, !1824}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1819, file: !1820, line: 87, baseType: !125, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1819, file: !1820, line: 88, baseType: !266, size: 128, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1819, file: !1820, line: 89, baseType: !266, size: 128, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1531, file: !1206, line: 878, baseType: !876, size: 192, align: 64, offset: 9536)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1531, file: !1206, line: 881, baseType: !1827, size: 64, offset: 9728)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !54, line: 733, size: 10240, elements: !1829)
!1829 = !{!1830, !2704}
!1830 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !54, line: 734, baseType: !1831, size: 10240)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1828, file: !54, line: 734, size: 10240, elements: !1832)
!1832 = !{!1833, !1837, !1850, !2581, !2582, !2583, !2584, !2585, !2586, !2593, !2594, !2595, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2634, !2636, !2639, !2684, !2685, !2686, !2689, !2690, !2691, !2694, !2695, !2696, !2702, !2703}
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !54, line: 739, baseType: !1834, size: 512, align: 512)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !54, line: 739, size: 512, align: 512, elements: !1835)
!1835 = !{!1836}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1834, file: !54, line: 747, baseType: !385, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1831, file: !54, line: 750, baseType: !1838, size: 128, offset: 512)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1839, line: 218, size: 128, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1840 = !{!1841, !1848, !1849}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !1839, line: 219, baseType: !1842, size: 32)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1838, file: !1839, line: 219, size: 32, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1842, file: !1839, line: 220, baseType: !365, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1842, file: !1839, line: 221, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1839, line: 197, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1839, line: 197, elements: !1051)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1838, file: !1839, line: 223, baseType: !23, size: 32, offset: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1838, file: !1839, line: 224, baseType: !168, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1831, file: !54, line: 752, baseType: !1851, size: 64, offset: 640)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!298, !1854, !298, !298, !298, !298}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !30, line: 994, size: 1856, align: 64, elements: !1856)
!1856 = !{!1857, !1863, !1864, !1866, !1867, !1868, !1869, !1870, !1920, !2110, !2119, !2120, !2121, !2571, !2572, !2573, !2574, !2576, !2577, !2580}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !30, line: 995, baseType: !1858, size: 128)
!1858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1855, file: !30, line: 995, size: 128, elements: !1859)
!1859 = !{!1860, !1861, !1862}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1858, file: !30, line: 996, baseType: !1557, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1858, file: !30, line: 997, baseType: !984, size: 128, align: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1858, file: !30, line: 998, baseType: !23, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1855, file: !30, line: 1005, baseType: !365, size: 32, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1855, file: !30, line: 1006, baseType: !1865, size: 32, offset: 160)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !267, line: 156, baseType: !23)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1855, file: !30, line: 1007, baseType: !768, size: 64, offset: 192)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1855, file: !30, line: 1008, baseType: !764, size: 256, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1855, file: !30, line: 1009, baseType: !664, size: 64, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1855, file: !30, line: 1010, baseType: !23, size: 32, offset: 576)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1855, file: !30, line: 1011, baseType: !1871, size: 256, offset: 640)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !30, line: 948, size: 256, elements: !1872)
!1872 = !{!1873, !1894, !1916, !1917, !1918, !1919}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1871, file: !30, line: 949, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1875, line: 34, baseType: !1876)
!1875 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1875, line: 25, size: 64, elements: !1877)
!1877 = !{!1878}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1876, file: !1875, line: 26, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1880, line: 27, baseType: !1881)
!1880 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1880, line: 13, size: 64, elements: !1882)
!1882 = !{!1883, !1893}
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1881, file: !1880, line: 14, baseType: !1884, size: 32)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1881, file: !1880, line: 14, size: 32, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1884, file: !1880, line: 15, baseType: !385, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1884, file: !1880, line: 16, baseType: !1888, size: 32)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !1880, line: 16, size: 32, elements: !1889)
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1888, file: !1880, line: 18, baseType: !393, size: 8)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1888, file: !1880, line: 19, baseType: !1892, size: 24, offset: 8)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 24, elements: !432)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1881, file: !1880, line: 26, baseType: !377, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1871, file: !30, line: 950, baseType: !1895, size: 64, offset: 64)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !46, line: 59, size: 768, elements: !1897)
!1897 = !{!1898, !1899, !1900, !1901, !1903, !1904, !1905, !1906}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1896, file: !46, line: 61, baseType: !1544, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1896, file: !46, line: 62, baseType: !23, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1896, file: !46, line: 63, baseType: !365, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1896, file: !46, line: 65, baseType: !1902, size: 256, offset: 128)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 256, elements: !303)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1896, file: !46, line: 66, baseType: !1132, size: 64, offset: 384)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1896, file: !46, line: 68, baseType: !1517, size: 192, offset: 448)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1896, file: !46, line: 69, baseType: !984, size: 128, align: 64, offset: 640)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1896, file: !46, line: 70, baseType: !1907, offset: 768)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1908, elements: !1914)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !46, line: 54, size: 128, elements: !1909)
!1909 = !{!1910, !1911}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1908, file: !46, line: 55, baseType: !125, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1908, file: !46, line: 56, baseType: !1912, size: 64, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !46, line: 56, flags: DIFlagFwdDecl)
!1914 = !{!1915}
!1915 = !DISubrange(count: -1)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1871, file: !30, line: 951, baseType: !45, size: 32, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1871, file: !30, line: 952, baseType: !516, size: 32, offset: 160)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1871, file: !30, line: 952, baseType: !516, size: 32, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1871, file: !30, line: 953, baseType: !125, size: 32, offset: 224)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1855, file: !30, line: 1012, baseType: !1921, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1924, line: 110, size: 1472, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1925 = !{!1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1942, !1943, !1944, !1945, !1946, !1947, !2055, !2056, !2057, !2058, !2059, !2090, !2093, !2097, !2105}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1923, file: !1924, line: 111, baseType: !768, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1923, file: !1924, line: 112, baseType: !516, size: 32, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1923, file: !1924, line: 113, baseType: !525, size: 32, offset: 96)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1923, file: !1924, line: 114, baseType: !516, size: 32, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1923, file: !1924, line: 115, baseType: !525, size: 32, offset: 160)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1923, file: !1924, line: 116, baseType: !516, size: 32, offset: 192)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1923, file: !1924, line: 117, baseType: !525, size: 32, offset: 224)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1923, file: !1924, line: 118, baseType: !516, size: 32, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1923, file: !1924, line: 119, baseType: !525, size: 32, offset: 288)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1923, file: !1924, line: 120, baseType: !23, size: 32, offset: 320)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1923, file: !1924, line: 121, baseType: !1937, size: 64, offset: 384)
!1937 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1938, line: 24, baseType: !1939)
!1938 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1938, line: 24, size: 64, elements: !1940)
!1940 = !{!1941}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1939, file: !1938, line: 24, baseType: !291, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1923, file: !1924, line: 122, baseType: !1937, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1923, file: !1924, line: 123, baseType: !1937, size: 64, offset: 512)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1923, file: !1924, line: 124, baseType: !1937, size: 64, offset: 576)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1923, file: !1924, line: 125, baseType: !1937, size: 64, offset: 640)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1923, file: !1924, line: 127, baseType: !338, size: 8, offset: 704)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1923, file: !1924, line: 129, baseType: !1948, size: 64, offset: 768)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1950, line: 195, size: 1728, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1951 = !{!1952, !1953, !1956, !1961, !1962, !1965, !1966, !1971, !1972, !1973, !1974, !1977, !1978, !1979, !1980, !1981, !2019, !2040}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1949, file: !1950, line: 196, baseType: !1544, size: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1949, file: !1950, line: 197, baseType: !1954, size: 32, offset: 32)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1950, line: 28, baseType: !1955)
!1955 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !267, line: 104, baseType: !760)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1950, line: 198, baseType: !1957, size: 192, offset: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1950, line: 198, size: 192, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1957, file: !1950, line: 199, baseType: !266, size: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1957, file: !1950, line: 200, baseType: !876, size: 192, align: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1949, file: !1950, line: 205, baseType: !1424, size: 320, offset: 256)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1949, file: !1950, line: 206, baseType: !1963, size: 64, offset: 576)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1950, line: 206, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1949, file: !1950, line: 207, baseType: !168, size: 64, offset: 640)
!1966 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1950, line: 208, baseType: !1967, size: 64, offset: 704)
!1967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1950, line: 208, size: 64, elements: !1968)
!1968 = !{!1969, !1970}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1967, file: !1950, line: 209, baseType: !1264, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1967, file: !1950, line: 210, baseType: !1264, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1949, file: !1950, line: 212, baseType: !1264, size: 64, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1949, file: !1950, line: 213, baseType: !516, size: 32, offset: 832)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1949, file: !1950, line: 214, baseType: !525, size: 32, offset: 864)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1949, file: !1950, line: 215, baseType: !1975, size: 32, offset: 896)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1950, line: 31, baseType: !1976)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !267, line: 110, baseType: !170)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1949, file: !1950, line: 216, baseType: !344, size: 16, offset: 928)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1949, file: !1950, line: 217, baseType: !344, size: 16, offset: 944)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1949, file: !1950, line: 221, baseType: !902, size: 16, offset: 960)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1949, file: !1950, line: 228, baseType: !298, size: 64, offset: 1024)
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1950, line: 245, baseType: !1982, size: 320, offset: 1088)
!1982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1950, line: 245, size: 320, elements: !1983)
!1983 = !{!1984, !2011}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1982, file: !1950, line: 246, baseType: !1985, size: 320)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1950, line: 114, size: 320, elements: !1986)
!1986 = !{!1987, !1988, !2000, !2003, !2010}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1985, file: !1950, line: 116, baseType: !298, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, scope: !1985, file: !1950, line: 117, baseType: !1989, size: 64, offset: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1985, file: !1950, line: 117, size: 64, elements: !1990)
!1990 = !{!1991, !1999}
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1989, file: !1950, line: 118, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1989, file: !1950, line: 118, size: 64, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1992, file: !1950, line: 120, baseType: !400, size: 16)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1992, file: !1950, line: 121, baseType: !1996, size: 48, offset: 16)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1997)
!1997 = !{!1998}
!1998 = !DISubrange(count: 6)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1989, file: !1950, line: 127, baseType: !298, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1985, file: !1950, line: 129, baseType: !2001, size: 64, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1950, line: 102, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1985, file: !1950, line: 130, baseType: !2004, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1950, line: 108, size: 192, elements: !2006)
!2006 = !{!2007, !2008, !2009}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2005, file: !1950, line: 109, baseType: !984, size: 128, align: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2005, file: !1950, line: 110, baseType: !1544, size: 32, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2005, file: !1950, line: 111, baseType: !844, size: 8, offset: 160)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1985, file: !1950, line: 131, baseType: !295, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !1950, line: 247, baseType: !2012, size: 320)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1982, file: !1950, line: 247, size: 320, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2017, !2018}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2012, file: !1950, line: 248, baseType: !298, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2012, file: !1950, line: 249, baseType: !298, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2012, file: !1950, line: 250, baseType: !2001, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2012, file: !1950, line: 251, baseType: !2004, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2012, file: !1950, line: 252, baseType: !431, size: 64, offset: 256)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !1949, file: !1950, line: 260, baseType: !2020, size: 256, offset: 1408)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1949, file: !1950, line: 260, size: 256, elements: !2021)
!2021 = !{!2022, !2028}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2020, file: !1950, line: 261, baseType: !2023, size: 256)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1950, line: 134, size: 256, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2023, file: !1950, line: 135, baseType: !168, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2023, file: !1950, line: 136, baseType: !2027, size: 256)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 256, elements: !303)
!2028 = !DIDerivedType(tag: DW_TAG_member, scope: !2020, file: !1950, line: 262, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2020, file: !1950, line: 262, size: 256, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2029, file: !1950, line: 264, baseType: !266, size: 128)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2029, file: !1950, line: 265, baseType: !2033, size: 128, offset: 128)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2034, line: 22, size: 128, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2035 = !{!2036, !2039}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2033, file: !2034, line: 23, baseType: !2037, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2034, line: 23, flags: DIFlagFwdDecl)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2033, file: !2034, line: 24, baseType: !298, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1949, file: !1950, line: 280, baseType: !2041, size: 64, offset: 1664)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1950, line: 176, size: 192, elements: !2043)
!2043 = !{!2044, !2053, !2054}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2042, file: !1950, line: 177, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1950, line: 171, baseType: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!125, !1948, !2049, !2051, !1948}
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2002)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2042, file: !1950, line: 178, baseType: !1948, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2042, file: !1950, line: 179, baseType: !2001, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1923, file: !1924, line: 130, baseType: !1948, size: 64, offset: 832)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1923, file: !1924, line: 131, baseType: !1948, size: 64, offset: 896)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1923, file: !1924, line: 132, baseType: !1948, size: 64, offset: 960)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1923, file: !1924, line: 135, baseType: !168, size: 64, offset: 1024)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1923, file: !1924, line: 137, baseType: !2060, size: 64, offset: 1088)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2062, line: 14, size: 1088, elements: !2063)
!2062 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2063 = !{!2064, !2065, !2074, !2075, !2076, !2077, !2078, !2079}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2061, file: !2062, line: 15, baseType: !1544, size: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2061, file: !2062, line: 17, baseType: !2066, size: 320, offset: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2067, line: 22, size: 320, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2068 = !{!2069, !2070, !2071, !2072}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2066, file: !2067, line: 23, baseType: !722, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2066, file: !2067, line: 24, baseType: !774, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2066, file: !2067, line: 26, baseType: !266, size: 128, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2066, file: !2067, line: 28, baseType: !2073, size: 64, offset: 256)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2061, file: !2062, line: 19, baseType: !298, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2061, file: !2062, line: 20, baseType: !768, size: 64, offset: 448)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2061, file: !2062, line: 23, baseType: !1008, size: 128, offset: 512)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2061, file: !2062, line: 24, baseType: !516, size: 32, offset: 640)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2061, file: !2062, line: 29, baseType: !768, size: 64, offset: 704)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2061, file: !2062, line: 36, baseType: !2080, size: 320, offset: 768)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2081, line: 15, size: 320, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !2081, line: 16, baseType: !722, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2080, file: !2081, line: 18, baseType: !125, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2080, file: !2081, line: 19, baseType: !125, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2080, file: !2081, line: 20, baseType: !125, size: 32, offset: 96)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2080, file: !2081, line: 21, baseType: !125, size: 32, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2080, file: !2081, line: 22, baseType: !298, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2081, line: 23, baseType: !298, size: 64, offset: 256)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1923, file: !1924, line: 138, baseType: !2091, size: 64, offset: 1152)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !54, line: 901, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1923, file: !1924, line: 139, baseType: !2094, size: 64, offset: 1216)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2096, line: 16, flags: DIFlagFwdDecl)
!2096 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1923, file: !1924, line: 140, baseType: !2098, size: 64, offset: 1280)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1924, line: 25, size: 64, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2099, file: !1924, line: 26, baseType: !385, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2099, file: !1924, line: 27, baseType: !125, size: 32, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2099, file: !1924, line: 28, baseType: !2104, offset: 64)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !525, elements: !1914)
!2105 = !DIDerivedType(tag: DW_TAG_member, scope: !1923, file: !1924, line: 142, baseType: !2106, size: 128, offset: 1344)
!2106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1923, file: !1924, line: 142, size: 128, elements: !2107)
!2107 = !{!2108, !2109}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2106, file: !1924, line: 143, baseType: !125, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2106, file: !1924, line: 144, baseType: !984, size: 128, align: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1855, file: !30, line: 1013, baseType: !2111, size: 256, offset: 960)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !30, line: 970, size: 256, elements: !2112)
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2111, file: !30, line: 971, baseType: !298, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2111, file: !30, line: 972, baseType: !23, size: 32, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2111, file: !30, line: 973, baseType: !23, size: 32, offset: 96)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2111, file: !30, line: 974, baseType: !23, size: 32, offset: 128)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2111, file: !30, line: 975, baseType: !23, size: 32, offset: 160)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2111, file: !30, line: 976, baseType: !664, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1855, file: !30, line: 1014, baseType: !1336, size: 128, offset: 1216)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1855, file: !30, line: 1015, baseType: !510, size: 64, offset: 1344)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1855, file: !30, line: 1016, baseType: !2122, size: 64, offset: 1408)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !30, line: 1914, size: 2112, elements: !2125)
!2125 = !{!2126, !2127, !2131, !2136, !2140, !2169, !2170, !2176, !2189, !2197, !2201, !2202, !2493, !2494, !2498, !2503, !2504, !2508, !2512, !2518, !2519, !2523, !2524, !2530, !2534, !2538, !2544, !2548, !2552, !2556, !2560, !2561, !2567}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2124, file: !30, line: 1915, baseType: !693, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2124, file: !30, line: 1916, baseType: !2128, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!664, !1854, !664, !125}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2124, file: !30, line: 1917, baseType: !2132, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!463, !1854, !431, !478, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2124, file: !30, line: 1918, baseType: !2137, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!463, !1854, !295, !478, !2135}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2124, file: !30, line: 1919, baseType: !2141, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!463, !2144, !2166}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !30, line: 373, size: 384, elements: !2146)
!2146 = !{!2147, !2148, !2149, !2153, !2154, !2155, !2156}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2145, file: !30, line: 374, baseType: !1854, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2145, file: !30, line: 375, baseType: !664, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2145, file: !30, line: 376, baseType: !2150, size: 64, offset: 128)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{null, !2144, !467}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2145, file: !30, line: 377, baseType: !168, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2145, file: !30, line: 378, baseType: !125, size: 32, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2145, file: !30, line: 379, baseType: !400, size: 16, offset: 288)
!2156 = !DIDerivedType(tag: DW_TAG_member, scope: !2145, file: !30, line: 380, baseType: !2157, size: 64, offset: 320)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2145, file: !30, line: 380, size: 64, elements: !2158)
!2158 = !{!2159, !2162}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2157, file: !30, line: 386, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !30, line: 386, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2157, file: !30, line: 395, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!463, !168}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2168, line: 17, flags: DIFlagFwdDecl)
!2168 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2124, file: !30, line: 1920, baseType: !2141, size: 64, offset: 320)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2124, file: !30, line: 1921, baseType: !2171, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!125, !2144, !2174, !23}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !30, line: 53, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2124, file: !30, line: 1923, baseType: !2177, size: 64, offset: 448)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!125, !1854, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !30, line: 1858, size: 128, elements: !2182)
!2182 = !{!2183, !2188}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2181, file: !30, line: 1859, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !30, line: 1855, baseType: !2185)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!844, !2180, !295, !125, !664, !291, !23}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2181, file: !30, line: 1860, baseType: !664, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2124, file: !30, line: 1924, baseType: !2190, size: 64, offset: 512)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2193, !1854, !2195}
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2194, line: 59, baseType: !23)
!2194 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !679, line: 31, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2124, file: !30, line: 1925, baseType: !2198, size: 64, offset: 576)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!467, !1854, !23, !298}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2124, file: !30, line: 1926, baseType: !2198, size: 64, offset: 640)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2124, file: !30, line: 1927, baseType: !2203, size: 64, offset: 704)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!125, !1854, !2206}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !54, line: 625, size: 1344, elements: !2208)
!2208 = !{!2209, !2218, !2219, !2227, !2234, !2235, !2240, !2241, !2246, !2247, !2250, !2486, !2487, !2488, !2489, !2490, !2491}
!2209 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !54, line: 628, baseType: !2210, size: 128)
!2210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2207, file: !54, line: 628, size: 128, elements: !2211)
!2211 = !{!2212, !2217}
!2212 = !DIDerivedType(tag: DW_TAG_member, scope: !2210, file: !54, line: 629, baseType: !2213, size: 128)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2210, file: !54, line: 629, size: 128, elements: !2214)
!2214 = !{!2215, !2216}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2213, file: !54, line: 631, baseType: !298, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2213, file: !54, line: 632, baseType: !298, size: 64, offset: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2210, file: !54, line: 635, baseType: !984, size: 128, align: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2207, file: !54, line: 639, baseType: !1827, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2207, file: !54, line: 640, baseType: !2220, size: 64, offset: 192)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2221, line: 297, baseType: !2222)
!2221 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2221, line: 297, size: 64, elements: !2223)
!2223 = !{!2224}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2222, file: !2221, line: 297, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2226, line: 19, baseType: !298)
!2226 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2227 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !54, line: 646, baseType: !2228, size: 64, offset: 256)
!2228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2207, file: !54, line: 646, size: 64, elements: !2229)
!2229 = !{!2230, !2233}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2228, file: !54, line: 647, baseType: !2231, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2232)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !54, line: 542, baseType: !298)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2228, file: !54, line: 648, baseType: !2232, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2207, file: !54, line: 666, baseType: !125, size: 32, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2207, file: !54, line: 667, baseType: !2236, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !54, line: 579, size: 320, elements: !2238)
!2238 = !{!2239}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2237, file: !54, line: 580, baseType: !1424, size: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2207, file: !54, line: 670, baseType: !844, size: 8, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2207, file: !54, line: 681, baseType: !2242, size: 256, offset: 512)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2207, file: !54, line: 678, size: 256, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2242, file: !54, line: 679, baseType: !876, size: 192, align: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2242, file: !54, line: 680, baseType: !298, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2207, file: !54, line: 689, baseType: !266, size: 128, offset: 768)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2207, file: !54, line: 691, baseType: !2248, size: 64, offset: 896)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !54, line: 691, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2207, file: !54, line: 694, baseType: !2251, size: 64, offset: 960)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2253)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2254, line: 563, size: 1024, elements: !2255)
!2254 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2255 = !{!2256, !2260, !2261, !2265, !2269, !2273, !2450, !2454, !2458, !2462, !2463, !2464, !2468, !2472, !2478, !2482}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2253, file: !2254, line: 564, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{null, !2206}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2253, file: !2254, line: 569, baseType: !2257, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2253, file: !2254, line: 571, baseType: !2262, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!125, !2206, !298}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2253, file: !2254, line: 572, baseType: !2266, size: 64, offset: 192)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!125, !2206}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2253, file: !2254, line: 578, baseType: !2270, size: 64, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!125, !2206, !298, !298, !298}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2253, file: !2254, line: 580, baseType: !2274, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !54, line: 1184, baseType: !23)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2254, line: 512, size: 896, elements: !2280)
!2280 = !{!2281, !2289, !2290, !2297, !2304, !2314, !2443, !2444, !2446, !2448}
!2281 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !2254, line: 513, baseType: !2282, size: 320)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2279, file: !2254, line: 513, size: 320, elements: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2282, file: !2254, line: 514, baseType: !2206, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2282, file: !2254, line: 515, baseType: !1276, size: 32, offset: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2282, file: !2254, line: 516, baseType: !298, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2282, file: !2254, line: 517, baseType: !298, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2282, file: !2254, line: 518, baseType: !298, size: 64, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !2254, line: 520, baseType: !53, size: 32, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2279, file: !2254, line: 522, baseType: !2291, size: 64, offset: 384)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2226, line: 22, baseType: !2293)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2226, line: 22, size: 64, elements: !2294)
!2294 = !{!2295}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2293, file: !2226, line: 22, baseType: !2296, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2226, line: 15, baseType: !298)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2279, file: !2254, line: 524, baseType: !2298, size: 64, offset: 448)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2221, line: 372, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2221, line: 372, size: 64, elements: !2301)
!2301 = !{!2302}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2300, file: !2221, line: 372, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2226, line: 16, baseType: !298)
!2304 = !DIDerivedType(tag: DW_TAG_member, scope: !2279, file: !2254, line: 527, baseType: !2305, size: 64, offset: 512)
!2305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2279, file: !2254, line: 527, size: 64, elements: !2306)
!2306 = !{!2307, !2313}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2305, file: !2254, line: 528, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2226, line: 21, baseType: !2309)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2226, line: 21, size: 64, elements: !2310)
!2310 = !{!2311}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2309, file: !2226, line: 21, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2226, line: 14, baseType: !298)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2305, file: !2254, line: 529, baseType: !2292, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2279, file: !2254, line: 534, baseType: !2315, size: 64, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !54, line: 74, size: 512, align: 128, elements: !2317)
!2317 = !{!2318, !2319, !2437, !2442}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !54, line: 75, baseType: !298, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, scope: !2316, file: !54, line: 83, baseType: !2320, size: 320, offset: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2316, file: !54, line: 83, size: 320, elements: !2321)
!2321 = !{!2322, !2343, !2357, !2361, !2436}
!2322 = !DIDerivedType(tag: DW_TAG_member, scope: !2320, file: !54, line: 84, baseType: !2323, size: 320)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2320, file: !54, line: 84, size: 320, elements: !2324)
!2324 = !{!2325, !2336, !2337, !2342}
!2325 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !54, line: 90, baseType: !2326, size: 128)
!2326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2323, file: !54, line: 90, size: 128, elements: !2327)
!2327 = !{!2328, !2329, !2334, !2335}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2326, file: !54, line: 91, baseType: !266, size: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, scope: !2326, file: !54, line: 94, baseType: !2330, size: 128)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2326, file: !54, line: 94, size: 128, elements: !2331)
!2331 = !{!2332, !2333}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2330, file: !54, line: 96, baseType: !168, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2330, file: !54, line: 98, baseType: !23, size: 32, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2326, file: !54, line: 102, baseType: !266, size: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2326, file: !54, line: 103, baseType: !266, size: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2323, file: !54, line: 106, baseType: !506, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, scope: !2323, file: !54, line: 107, baseType: !2338, size: 64, offset: 192)
!2338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2323, file: !54, line: 107, size: 64, elements: !2339)
!2339 = !{!2340, !2341}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2338, file: !54, line: 108, baseType: !298, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2338, file: !54, line: 109, baseType: !298, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2323, file: !54, line: 117, baseType: !298, size: 64, offset: 256)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2320, file: !54, line: 119, baseType: !2344, size: 320)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2320, file: !54, line: 119, size: 320, elements: !2345)
!2345 = !{!2346, !2347, !2350, !2351, !2352}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2344, file: !54, line: 124, baseType: !298, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2344, file: !54, line: 125, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !54, line: 125, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2344, file: !54, line: 126, baseType: !298, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2344, file: !54, line: 127, baseType: !298, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, scope: !2344, file: !54, line: 128, baseType: !2353, size: 64, offset: 256)
!2353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2344, file: !54, line: 128, size: 64, elements: !2354)
!2354 = !{!2355, !2356}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2353, file: !54, line: 133, baseType: !298, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2353, file: !54, line: 138, baseType: !768, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, scope: !2320, file: !54, line: 141, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2320, file: !54, line: 141, size: 64, elements: !2359)
!2359 = !{!2360}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2358, file: !54, line: 142, baseType: !298, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2320, file: !54, line: 144, baseType: !2362, size: 128)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2320, file: !54, line: 144, size: 128, elements: !2363)
!2363 = !{!2364, !2435}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2362, file: !54, line: 146, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !70, line: 126, size: 1216, elements: !2367)
!2367 = !{!2368, !2378, !2399, !2400, !2401, !2402, !2403, !2417, !2418, !2419}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2366, file: !70, line: 127, baseType: !2369, size: 384)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !70, line: 21, size: 384, elements: !2370)
!2370 = !{!2371, !2372, !2374, !2375, !2376, !2377}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2369, file: !70, line: 22, baseType: !298, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2369, file: !70, line: 23, baseType: !2373, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2369, file: !70, line: 24, baseType: !2373, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2369, file: !70, line: 25, baseType: !298, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2369, file: !70, line: 26, baseType: !298, size: 64, offset: 256)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2369, file: !70, line: 27, baseType: !298, size: 64, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2366, file: !70, line: 128, baseType: !2379, size: 128, offset: 384)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2380, line: 105, size: 128, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2381 = !{!2382, !2383}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2379, file: !2380, line: 110, baseType: !298, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2379, file: !2380, line: 118, baseType: !2384, size: 64, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2380, line: 95, size: 448, elements: !2386)
!2386 = !{!2387, !2388, !2394, !2395, !2396, !2397, !2398}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2385, file: !2380, line: 96, baseType: !768, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2385, file: !2380, line: 97, baseType: !2389, size: 64, offset: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2380, line: 60, baseType: !2391)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{null, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2385, file: !2380, line: 98, baseType: !2389, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2385, file: !2380, line: 99, baseType: !844, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2385, file: !2380, line: 100, baseType: !844, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2385, file: !2380, line: 101, baseType: !984, size: 128, align: 64, offset: 256)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2385, file: !2380, line: 102, baseType: !2393, size: 64, offset: 384)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2366, file: !70, line: 129, baseType: !713, size: 256, offset: 512)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2366, file: !70, line: 130, baseType: !69, size: 32, offset: 768)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2366, file: !70, line: 131, baseType: !23, size: 32, offset: 800)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2366, file: !70, line: 132, baseType: !298, size: 64, offset: 832)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2366, file: !70, line: 133, baseType: !2404, size: 64, offset: 896)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2406)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !70, line: 77, size: 192, elements: !2407)
!2407 = !{!2408, !2412, !2413}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2406, file: !70, line: 83, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !2315}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2406, file: !70, line: 89, baseType: !2274, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2406, file: !70, line: 100, baseType: !2414, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!125, !2365, !298, !298, !125}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2366, file: !70, line: 134, baseType: !168, size: 64, offset: 960)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2366, file: !70, line: 135, baseType: !125, size: 32, offset: 1024)
!2419 = !DIDerivedType(tag: DW_TAG_member, scope: !2366, file: !70, line: 136, baseType: !2420, size: 128, offset: 1088)
!2420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2366, file: !70, line: 136, size: 128, elements: !2421)
!2421 = !{!2422, !2428}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2420, file: !70, line: 137, baseType: !2423, size: 128)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2424, line: 6, size: 128, elements: !2425)
!2424 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2423, file: !2424, line: 7, baseType: !291, size: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2423, file: !2424, line: 8, baseType: !291, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, scope: !2420, file: !70, line: 138, baseType: !2429)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2420, file: !70, line: 138, elements: !2430)
!2430 = !{!2431, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2429, file: !70, line: 138, baseType: !2432)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2429, file: !70, line: 138, elements: !1051)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2429, file: !70, line: 138, baseType: !2434)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2423, elements: !1914)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2362, file: !54, line: 147, baseType: !168, size: 64, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2320, file: !54, line: 161, baseType: !984, size: 128, align: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, scope: !2316, file: !54, line: 164, baseType: !2438, size: 32, offset: 384)
!2438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2316, file: !54, line: 164, size: 32, elements: !2439)
!2439 = !{!2440, !2441}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2438, file: !54, line: 169, baseType: !385, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2438, file: !54, line: 177, baseType: !23, size: 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2316, file: !54, line: 181, baseType: !385, size: 32, offset: 416)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2279, file: !2254, line: 535, baseType: !2315, size: 64, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2279, file: !2254, line: 541, baseType: !2445, size: 64, offset: 704)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2279, file: !2254, line: 545, baseType: !2447, size: 64, offset: 768)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2279, file: !2254, line: 549, baseType: !2449, size: 64, offset: 832)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2221, line: 520, baseType: !2315)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2253, file: !2254, line: 581, baseType: !2451, size: 64, offset: 384)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!2277, !2278, !23}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2253, file: !2254, line: 582, baseType: !2455, size: 64, offset: 448)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!2277, !2278, !298, !298}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2253, file: !2254, line: 584, baseType: !2459, size: 64, offset: 512)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!298, !2206}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2253, file: !2254, line: 588, baseType: !2274, size: 64, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2253, file: !2254, line: 591, baseType: !2274, size: 64, offset: 640)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2253, file: !2254, line: 597, baseType: !2465, size: 64, offset: 704)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!125, !2206, !298, !168, !125, !125}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2253, file: !2254, line: 603, baseType: !2469, size: 64, offset: 768)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{!295, !2206}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2253, file: !2254, line: 613, baseType: !2473, size: 64, offset: 832)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!125, !2206, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !54, line: 717, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2253, file: !2254, line: 625, baseType: !2479, size: 64, offset: 896)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!2476, !2206, !298}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2253, file: !2254, line: 633, baseType: !2483, size: 64, offset: 960)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{!2315, !2206, !298}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2207, file: !54, line: 697, baseType: !298, size: 64, offset: 1024)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2207, file: !54, line: 699, baseType: !1854, size: 64, offset: 1088)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2207, file: !54, line: 700, baseType: !168, size: 64, offset: 1152)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2207, file: !54, line: 711, baseType: !768, size: 64, offset: 1216)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2207, file: !54, line: 717, baseType: !2476, size: 64, offset: 1280)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2207, file: !54, line: 722, baseType: !2492, offset: 1344)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !54, line: 570, elements: !1051)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2124, file: !30, line: 1928, baseType: !298, size: 64, offset: 768)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2124, file: !30, line: 1929, baseType: !2495, size: 64, offset: 832)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!125, !510, !1854}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2124, file: !30, line: 1930, baseType: !2499, size: 64, offset: 896)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!125, !1854, !2502}
!2502 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !30, line: 1061, baseType: !168)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2124, file: !30, line: 1931, baseType: !2495, size: 64, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2124, file: !30, line: 1932, baseType: !2505, size: 64, offset: 1024)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!125, !1854, !664, !664, !125}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2124, file: !30, line: 1933, baseType: !2509, size: 64, offset: 1088)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!125, !125, !1854, !125}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2124, file: !30, line: 1934, baseType: !2513, size: 64, offset: 1152)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!125, !1854, !125, !2516}
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !30, line: 1063, flags: DIFlagFwdDecl)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2124, file: !30, line: 1935, baseType: !1851, size: 64, offset: 1216)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2124, file: !30, line: 1936, baseType: !2520, size: 64, offset: 1280)
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2521, size: 64)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!125, !125}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2124, file: !30, line: 1937, baseType: !2513, size: 64, offset: 1344)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2124, file: !30, line: 1938, baseType: !2525, size: 64, offset: 1408)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!463, !2528, !1854, !2135, !478, !23}
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1206, line: 59, flags: DIFlagFwdDecl)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2124, file: !30, line: 1939, baseType: !2531, size: 64, offset: 1472)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!463, !1854, !2135, !2528, !478, !23}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2124, file: !30, line: 1940, baseType: !2535, size: 64, offset: 1536)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{null, !1854}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2124, file: !30, line: 1941, baseType: !2539, size: 64, offset: 1600)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!125, !1854, !125, !2542, !2543}
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2124, file: !30, line: 1942, baseType: !2545, size: 64, offset: 1664)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!467, !1854, !125, !664, !664}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2124, file: !30, line: 1944, baseType: !2549, size: 64, offset: 1728)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{null, !1204, !1854}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2124, file: !30, line: 1948, baseType: !2553, size: 64, offset: 1792)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!463, !1854, !664, !1854, !664, !478, !23}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2124, file: !30, line: 1950, baseType: !2557, size: 64, offset: 1856)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!664, !1854, !664, !1854, !664, !664, !23}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2124, file: !30, line: 1953, baseType: !2505, size: 64, offset: 1920)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2124, file: !30, line: 1954, baseType: !2562, size: 64, offset: 1984)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!125, !2565, !23}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !30, line: 1911, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2124, file: !30, line: 1955, baseType: !2568, size: 64, offset: 2048)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!125, !2565, !2174, !23}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1855, file: !30, line: 1018, baseType: !291, size: 64, offset: 1472)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1855, file: !30, line: 1020, baseType: !168, size: 64, offset: 1536)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1855, file: !30, line: 1023, baseType: !168, size: 64, offset: 1600)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1855, file: !30, line: 1027, baseType: !2575, size: 64, offset: 1664)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1855, file: !30, line: 1029, baseType: !506, size: 64, offset: 1728)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1855, file: !30, line: 1030, baseType: !2578, size: 32, offset: 1792)
!2578 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2579, line: 8, baseType: !170)
!2579 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1855, file: !30, line: 1031, baseType: !2578, size: 32, offset: 1824)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1831, file: !54, line: 756, baseType: !298, size: 64, offset: 704)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1831, file: !54, line: 757, baseType: !298, size: 64, offset: 768)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1831, file: !54, line: 760, baseType: !298, size: 64, offset: 832)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1831, file: !54, line: 761, baseType: !298, size: 64, offset: 896)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1831, file: !54, line: 763, baseType: !298, size: 64, offset: 960)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1831, file: !54, line: 764, baseType: !2587, size: 64, offset: 1024)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2221, line: 299, baseType: !2589)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2221, line: 299, size: 64, elements: !2590)
!2590 = !{!2591}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2589, file: !2221, line: 299, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2226, line: 18, baseType: !298)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1831, file: !54, line: 773, baseType: !385, size: 32, offset: 1088)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1831, file: !54, line: 785, baseType: !385, size: 32, offset: 1120)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1831, file: !54, line: 795, baseType: !2596, size: 64, offset: 1152)
!2596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !54, line: 726, size: 128, elements: !2598)
!2598 = !{!2599, !2600}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2597, file: !54, line: 727, baseType: !291, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2597, file: !54, line: 728, baseType: !125, size: 32, offset: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1831, file: !54, line: 801, baseType: !298, size: 64, offset: 1216)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1831, file: !54, line: 804, baseType: !768, size: 64, offset: 1280)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1831, file: !54, line: 806, baseType: !125, size: 32, offset: 1344)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1831, file: !54, line: 808, baseType: !365, size: 32, offset: 1376)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1831, file: !54, line: 823, baseType: !1424, size: 320, offset: 1408)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1831, file: !54, line: 825, baseType: !266, size: 128, offset: 1728)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1831, file: !54, line: 845, baseType: !125, size: 32, offset: 1856)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1831, file: !54, line: 849, baseType: !298, size: 64, offset: 1920)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1831, file: !54, line: 850, baseType: !298, size: 64, offset: 1984)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1831, file: !54, line: 852, baseType: !298, size: 64, offset: 2048)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1831, file: !54, line: 853, baseType: !298, size: 64, offset: 2112)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1831, file: !54, line: 854, baseType: !770, size: 64, offset: 2176)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1831, file: !54, line: 855, baseType: !298, size: 64, offset: 2240)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1831, file: !54, line: 856, baseType: !298, size: 64, offset: 2304)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1831, file: !54, line: 857, baseType: !298, size: 64, offset: 2368)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1831, file: !54, line: 858, baseType: !298, size: 64, offset: 2432)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1831, file: !54, line: 865, baseType: !556, size: 32, offset: 2496)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1831, file: !54, line: 867, baseType: !365, size: 32, offset: 2528)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1831, file: !54, line: 869, baseType: !298, size: 64, offset: 2560)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1831, file: !54, line: 869, baseType: !298, size: 64, offset: 2624)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1831, file: !54, line: 869, baseType: !298, size: 64, offset: 2688)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1831, file: !54, line: 869, baseType: !298, size: 64, offset: 2752)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1831, file: !54, line: 870, baseType: !298, size: 64, offset: 2816)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1831, file: !54, line: 870, baseType: !298, size: 64, offset: 2880)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1831, file: !54, line: 870, baseType: !298, size: 64, offset: 2944)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1831, file: !54, line: 871, baseType: !298, size: 64, offset: 3008)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1831, file: !54, line: 871, baseType: !298, size: 64, offset: 3072)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1831, file: !54, line: 871, baseType: !298, size: 64, offset: 3136)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1831, file: !54, line: 871, baseType: !298, size: 64, offset: 3200)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1831, file: !54, line: 873, baseType: !2631, size: 3328, offset: 3264)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 3328, elements: !2632)
!2632 = !{!2633}
!2633 = !DISubrange(count: 52)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1831, file: !54, line: 875, baseType: !2635, size: 1280, offset: 6592)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2066, size: 1280, elements: !303)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1831, file: !54, line: 877, baseType: !2637, size: 64, offset: 7872)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !54, line: 877, flags: DIFlagFwdDecl)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1831, file: !54, line: 880, baseType: !2640, size: 1088, offset: 7936)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2641, line: 72, baseType: !2642)
!2641 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2641, line: 23, size: 1088, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2647, !2648, !2651, !2652, !2653, !2654, !2681, !2682, !2683}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2642, file: !2641, line: 28, baseType: !291, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2642, file: !2641, line: 38, baseType: !770, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2642, file: !2641, line: 40, baseType: !298, size: 64, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2642, file: !2641, line: 43, baseType: !1424, size: 320, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2642, file: !2641, line: 44, baseType: !2649, size: 64, offset: 512)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2641, line: 44, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2642, file: !2641, line: 48, baseType: !298, size: 64, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2642, file: !2641, line: 59, baseType: !764, size: 256, offset: 640)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2642, file: !2641, line: 60, baseType: !168, size: 64, offset: 896)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2642, file: !2641, line: 61, baseType: !2655, size: 64, offset: 960)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2657)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2658, line: 13, size: 1216, elements: !2659)
!2658 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2659 = !{!2660, !2661, !2662, !2663, !2664, !2665, !2666, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2657, file: !2658, line: 14, baseType: !168, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2657, file: !2658, line: 15, baseType: !298, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2657, file: !2658, line: 17, baseType: !298, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2657, file: !2658, line: 17, baseType: !298, size: 64, offset: 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2657, file: !2658, line: 18, baseType: !298, size: 64, offset: 256)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2657, file: !2658, line: 18, baseType: !298, size: 64, offset: 320)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2657, file: !2658, line: 19, baseType: !2667, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2657, file: !2658, line: 21, baseType: !467, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2657, file: !2658, line: 23, baseType: !467, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2657, file: !2658, line: 24, baseType: !467, size: 64, offset: 576)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2657, file: !2658, line: 25, baseType: !467, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2657, file: !2658, line: 26, baseType: !467, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2657, file: !2658, line: 27, baseType: !467, size: 64, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2657, file: !2658, line: 28, baseType: !467, size: 64, offset: 832)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2657, file: !2658, line: 29, baseType: !467, size: 64, offset: 896)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2657, file: !2658, line: 30, baseType: !467, size: 64, offset: 960)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2657, file: !2658, line: 31, baseType: !467, size: 64, offset: 1024)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2657, file: !2658, line: 32, baseType: !467, size: 64, offset: 1088)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2657, file: !2658, line: 33, baseType: !467, size: 64, offset: 1152)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2642, file: !2641, line: 63, baseType: !385, size: 32, offset: 1024)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2642, file: !2641, line: 69, baseType: !400, size: 16, offset: 1056)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2642, file: !2641, line: 70, baseType: !900, size: 16, offset: 1072)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1831, file: !54, line: 882, baseType: !298, size: 64, offset: 9024)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1831, file: !54, line: 885, baseType: !365, size: 32, offset: 9088)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1831, file: !54, line: 886, baseType: !2687, size: 64, offset: 9152)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !54, line: 732, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1831, file: !54, line: 901, baseType: !2091, size: 64, offset: 9216)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1831, file: !54, line: 904, baseType: !1854, size: 64, offset: 9280)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1831, file: !54, line: 906, baseType: !2692, size: 64, offset: 9344)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !54, line: 906, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1831, file: !54, line: 930, baseType: !385, size: 32, offset: 9408)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1831, file: !54, line: 933, baseType: !385, size: 32, offset: 9440)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1831, file: !54, line: 935, baseType: !2697, size: 64, offset: 9472)
!2697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !84, line: 103, size: 64, elements: !2698)
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2697, file: !84, line: 104, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !84, line: 101, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1831, file: !54, line: 940, baseType: !768, size: 64, offset: 9536)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1831, file: !54, line: 942, baseType: !1022, size: 256, offset: 9600)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1828, file: !54, line: 986, baseType: !2705, offset: 10240)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, elements: !1914)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1531, file: !1206, line: 882, baseType: !1827, size: 64, offset: 9792)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1531, file: !1206, line: 884, baseType: !125, size: 32, offset: 9856)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1531, file: !1206, line: 885, baseType: !125, size: 32, offset: 9888)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1531, file: !1206, line: 886, baseType: !125, size: 32, offset: 9920)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1531, file: !1206, line: 888, baseType: !125, size: 32, offset: 9952)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1531, file: !1206, line: 890, baseType: !298, size: 64, offset: 9984)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1531, file: !1206, line: 893, baseType: !23, size: 32, offset: 10048)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1531, file: !1206, line: 896, baseType: !23, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1531, file: !1206, line: 897, baseType: !23, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1531, file: !1206, line: 898, baseType: !23, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1531, file: !1206, line: 899, baseType: !23, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1531, file: !1206, line: 919, baseType: !23, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1531, file: !1206, line: 922, baseType: !23, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1531, file: !1206, line: 923, baseType: !23, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1531, file: !1206, line: 925, baseType: !23, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1531, file: !1206, line: 939, baseType: !23, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1531, file: !1206, line: 941, baseType: !23, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1531, file: !1206, line: 944, baseType: !23, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1531, file: !1206, line: 956, baseType: !23, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1531, file: !1206, line: 962, baseType: !23, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1531, file: !1206, line: 966, baseType: !23, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1531, file: !1206, line: 969, baseType: !298, size: 64, offset: 10176)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1531, file: !1206, line: 971, baseType: !2729, size: 448, offset: 10240)
!2729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !78, line: 25, size: 448, elements: !2730)
!2730 = !{!2731, !2732, !2737}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2729, file: !78, line: 26, baseType: !298, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2729, file: !78, line: 27, baseType: !2733, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!467, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, scope: !2729, file: !78, line: 28, baseType: !2738, size: 320, offset: 128)
!2738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2729, file: !78, line: 28, size: 320, elements: !2739)
!2739 = !{!2740, !2749, !2774}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2738, file: !78, line: 37, baseType: !2741, size: 320)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2738, file: !78, line: 30, size: 320, elements: !2742)
!2742 = !{!2743, !2744, !2745, !2746, !2747, !2748}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2741, file: !78, line: 31, baseType: !327, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2741, file: !78, line: 32, baseType: !170, size: 32, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2741, file: !78, line: 33, baseType: !170, size: 32, offset: 96)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2741, file: !78, line: 34, baseType: !170, size: 32, offset: 128)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2741, file: !78, line: 35, baseType: !291, size: 64, offset: 192)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2741, file: !78, line: 36, baseType: !327, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2738, file: !78, line: 47, baseType: !2750, size: 192)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2738, file: !78, line: 39, size: 192, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2773}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2750, file: !78, line: 40, baseType: !1698, size: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2750, file: !78, line: 41, baseType: !77, size: 32, offset: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, scope: !2750, file: !78, line: 42, baseType: !2755, size: 64, offset: 64)
!2755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2750, file: !78, line: 42, size: 64, elements: !2756)
!2756 = !{!2757, !2765}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2755, file: !78, line: 43, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2760, line: 7, size: 128, elements: !2761)
!2760 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2761 = !{!2762, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2759, file: !2760, line: 8, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !465, line: 93, baseType: !666)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2759, file: !2760, line: 9, baseType: !666, size: 64, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2755, file: !78, line: 44, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2768, line: 7, size: 64, elements: !2769)
!2768 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2769 = !{!2770, !2772}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2767, file: !2768, line: 8, baseType: !2771, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2768, line: 5, baseType: !760)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2767, file: !2768, line: 9, baseType: !760, size: 32, offset: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2750, file: !78, line: 46, baseType: !291, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2738, file: !78, line: 55, baseType: !2775, size: 256)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2738, file: !78, line: 49, size: 256, elements: !2776)
!2776 = !{!2777, !2780, !2781, !2782, !2783}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2775, file: !78, line: 50, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !78, line: 14, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2775, file: !78, line: 51, baseType: !125, size: 32, offset: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2775, file: !78, line: 52, baseType: !125, size: 32, offset: 96)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2775, file: !78, line: 53, baseType: !298, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2775, file: !78, line: 54, baseType: !298, size: 64, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1531, file: !1206, line: 973, baseType: !2785, size: 32, offset: 10688)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !267, line: 27, baseType: !2786)
!2786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !465, line: 28, baseType: !125)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1531, file: !1206, line: 974, baseType: !2785, size: 32, offset: 10720)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1531, file: !1206, line: 978, baseType: !298, size: 64, offset: 10752)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1531, file: !1206, line: 987, baseType: !1530, size: 64, offset: 10816)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1531, file: !1206, line: 990, baseType: !1530, size: 64, offset: 10880)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1531, file: !1206, line: 995, baseType: !266, size: 128, offset: 10944)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1531, file: !1206, line: 996, baseType: !266, size: 128, offset: 11072)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1531, file: !1206, line: 997, baseType: !1530, size: 64, offset: 11200)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1531, file: !1206, line: 1005, baseType: !266, size: 128, offset: 11264)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1531, file: !1206, line: 1006, baseType: !266, size: 128, offset: 11392)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1531, file: !1206, line: 1009, baseType: !1895, size: 64, offset: 11520)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1531, file: !1206, line: 1010, baseType: !2798, size: 512, offset: 11584)
!2798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1008, size: 512, elements: !303)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1531, file: !1206, line: 1011, baseType: !266, size: 128, offset: 12096)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1531, file: !1206, line: 1012, baseType: !266, size: 128, offset: 12224)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1531, file: !1206, line: 1014, baseType: !712, size: 64, offset: 12352)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1531, file: !1206, line: 1017, baseType: !893, size: 64, offset: 12416)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1531, file: !1206, line: 1020, baseType: !893, size: 64, offset: 12480)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1531, file: !1206, line: 1023, baseType: !168, size: 64, offset: 12544)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1531, file: !1206, line: 1025, baseType: !291, size: 64, offset: 12608)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1531, file: !1206, line: 1026, baseType: !291, size: 64, offset: 12672)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1531, file: !1206, line: 1031, baseType: !291, size: 64, offset: 12736)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1531, file: !1206, line: 1032, baseType: !2809, size: 192, offset: 12800)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1206, line: 324, size: 192, elements: !2810)
!2810 = !{!2811, !2812, !2813}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2809, file: !1206, line: 326, baseType: !291, size: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2809, file: !1206, line: 327, baseType: !291, size: 64, offset: 64)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2809, file: !1206, line: 328, baseType: !722, size: 32, offset: 128)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1531, file: !1206, line: 1041, baseType: !298, size: 64, offset: 12992)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1531, file: !1206, line: 1042, baseType: !298, size: 64, offset: 13056)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1531, file: !1206, line: 1045, baseType: !291, size: 64, offset: 13120)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1531, file: !1206, line: 1048, baseType: !291, size: 64, offset: 13184)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1531, file: !1206, line: 1051, baseType: !298, size: 64, offset: 13248)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1531, file: !1206, line: 1052, baseType: !298, size: 64, offset: 13312)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1531, file: !1206, line: 1055, baseType: !2821, size: 640, offset: 13376)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2822, line: 132, size: 640, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2823 = !{!2824, !2830, !2831}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2821, file: !2822, line: 133, baseType: !2825, size: 576)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2826, size: 576, elements: !432)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2822, line: 117, size: 192, elements: !2827)
!2827 = !{!2828, !2829}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2826, file: !2822, line: 118, baseType: !291, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2826, file: !2822, line: 119, baseType: !1707, size: 128, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2821, file: !2822, line: 134, baseType: !23, size: 32, offset: 576)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2821, file: !2822, line: 135, baseType: !23, size: 32, offset: 608)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1531, file: !1206, line: 1058, baseType: !2833, size: 448, offset: 14016)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2822, line: 144, size: 448, elements: !2834)
!2834 = !{!2835, !2836, !2837}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2833, file: !2822, line: 145, baseType: !984, size: 128, align: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2833, file: !2822, line: 146, baseType: !764, size: 256, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2833, file: !2822, line: 147, baseType: !23, size: 32, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1531, file: !1206, line: 1064, baseType: !1921, size: 64, offset: 14464)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1531, file: !1206, line: 1067, baseType: !1921, size: 64, offset: 14528)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1531, file: !1206, line: 1070, baseType: !1921, size: 64, offset: 14592)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1531, file: !1206, line: 1074, baseType: !1948, size: 64, offset: 14656)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1531, file: !1206, line: 1084, baseType: !2843, size: 128, offset: 14720)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2844)
!2844 = !{!2845}
!2845 = !DISubrange(count: 16)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1531, file: !1206, line: 1086, baseType: !2847, size: 64, offset: 14848)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1206, line: 55, flags: DIFlagFwdDecl)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1531, file: !1206, line: 1089, baseType: !2850, size: 64, offset: 14912)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2851, line: 12, size: 64, elements: !2852)
!2851 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2850, file: !2851, line: 13, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2851, line: 8, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1531, file: !1206, line: 1090, baseType: !2857, size: 128, offset: 14976)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2858, line: 13, size: 128, elements: !2859)
!2858 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2859 = !{!2860}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2857, file: !2858, line: 14, baseType: !266, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1531, file: !1206, line: 1097, baseType: !2862, size: 64, offset: 15104)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1206, line: 50, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1531, file: !1206, line: 1100, baseType: !2865, size: 64, offset: 15168)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1206, line: 1100, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1531, file: !1206, line: 1103, baseType: !2868, size: 64, offset: 15232)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1206, line: 53, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1531, file: !1206, line: 1107, baseType: !2871, size: 64, offset: 15296)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1206, line: 56, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1531, file: !1206, line: 1110, baseType: !2874, size: 64, offset: 15360)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2876, line: 93, size: 8768, elements: !2877)
!2876 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2877 = !{!2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2925, !2934, !2935, !2937, !2938, !2939, !2942, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2980, !2981, !2988, !2998, !3001, !3002, !3005, !3006, !3007, !3008, !3009, !3010}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2875, file: !2876, line: 94, baseType: !1544, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2875, file: !2876, line: 95, baseType: !385, size: 32, offset: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2875, file: !2876, line: 96, baseType: !125, size: 32, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2875, file: !2876, line: 97, baseType: !125, size: 32, offset: 96)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2875, file: !2876, line: 98, baseType: !266, size: 128, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2875, file: !2876, line: 100, baseType: !1517, size: 192, offset: 256)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2875, file: !2876, line: 103, baseType: !1530, size: 64, offset: 448)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2875, file: !2876, line: 106, baseType: !2886, size: 192, offset: 512)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2096, line: 32, size: 192, elements: !2887)
!2887 = !{!2888, !2889}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2886, file: !2096, line: 33, baseType: !266, size: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2886, file: !2096, line: 34, baseType: !2890, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2891, line: 25, baseType: !2892)
!2891 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2891, line: 23, size: 64, elements: !2893)
!2893 = !{!2894}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2892, file: !2891, line: 24, baseType: !1778, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2875, file: !2876, line: 109, baseType: !1132, size: 64, offset: 704)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2875, file: !2876, line: 112, baseType: !125, size: 32, offset: 768)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2875, file: !2876, line: 114, baseType: !125, size: 32, offset: 800)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2875, file: !2876, line: 115, baseType: !1530, size: 64, offset: 832)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2875, file: !2876, line: 118, baseType: !125, size: 32, offset: 896)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2875, file: !2876, line: 119, baseType: !23, size: 32, offset: 928)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2875, file: !2876, line: 121, baseType: !2902, size: 64, offset: 960)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2876, line: 80, size: 448, elements: !2904)
!2904 = !{!2905, !2906, !2912}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2903, file: !2876, line: 81, baseType: !385, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2903, file: !2876, line: 82, baseType: !2907, size: 128, offset: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2876, line: 75, size: 128, elements: !2908)
!2908 = !{!2909, !2910}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2907, file: !2876, line: 76, baseType: !1530, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2907, file: !2876, line: 77, baseType: !2911, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2903, file: !2876, line: 83, baseType: !713, size: 256, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2875, file: !2876, line: 132, baseType: !23, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2875, file: !2876, line: 133, baseType: !23, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2875, file: !2876, line: 138, baseType: !23, size: 32, offset: 1056)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2875, file: !2876, line: 139, baseType: !266, size: 128, offset: 1088)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2875, file: !2876, line: 142, baseType: !1651, size: 512, offset: 1216)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2875, file: !2876, line: 143, baseType: !1659, size: 64, offset: 1728)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2875, file: !2876, line: 150, baseType: !2920, size: 256, offset: 1792)
!2920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2921, size: 256, elements: !883)
!2921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2876, line: 38, size: 128, elements: !2922)
!2922 = !{!2923, !2924}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2921, file: !2876, line: 39, baseType: !291, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2921, file: !2876, line: 40, baseType: !291, size: 64, offset: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2875, file: !2876, line: 156, baseType: !2926, size: 192, offset: 2048)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2876, line: 66, size: 192, elements: !2927)
!2927 = !{!2928}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2926, file: !2876, line: 67, baseType: !2929, size: 192)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2876, line: 47, size: 192, elements: !2930)
!2930 = !{!2931, !2932, !2933}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2929, file: !2876, line: 48, baseType: !770, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2929, file: !2876, line: 49, baseType: !770, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2929, file: !2876, line: 50, baseType: !770, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2875, file: !2876, line: 160, baseType: !2821, size: 640, offset: 2240)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2875, file: !2876, line: 163, baseType: !2936, size: 256, offset: 2880)
!2936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1895, size: 256, elements: !303)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2875, file: !2876, line: 169, baseType: !1895, size: 64, offset: 3136)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2875, file: !2876, line: 172, baseType: !125, size: 32, offset: 3200)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2875, file: !2876, line: 174, baseType: !2940, size: 64, offset: 3264)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2876, line: 174, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2875, file: !2876, line: 185, baseType: !2943, size: 64, offset: 3328)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !552, line: 860, baseType: !2944)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !552, line: 853, size: 64, elements: !2945)
!2945 = !{!2946, !2947}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2944, file: !552, line: 858, baseType: !551, size: 32)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2944, file: !552, line: 859, baseType: !365, size: 32, offset: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2875, file: !2876, line: 186, baseType: !291, size: 64, offset: 3392)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2875, file: !2876, line: 186, baseType: !291, size: 64, offset: 3456)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2875, file: !2876, line: 186, baseType: !291, size: 64, offset: 3520)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2875, file: !2876, line: 186, baseType: !291, size: 64, offset: 3584)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2875, file: !2876, line: 187, baseType: !291, size: 64, offset: 3648)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2875, file: !2876, line: 188, baseType: !291, size: 64, offset: 3712)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2875, file: !2876, line: 189, baseType: !2809, size: 192, offset: 3776)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2875, file: !2876, line: 190, baseType: !298, size: 64, offset: 3968)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2875, file: !2876, line: 190, baseType: !298, size: 64, offset: 4032)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2875, file: !2876, line: 190, baseType: !298, size: 64, offset: 4096)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2875, file: !2876, line: 190, baseType: !298, size: 64, offset: 4160)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2875, file: !2876, line: 191, baseType: !298, size: 64, offset: 4224)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2875, file: !2876, line: 191, baseType: !298, size: 64, offset: 4288)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2875, file: !2876, line: 191, baseType: !298, size: 64, offset: 4352)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2875, file: !2876, line: 191, baseType: !298, size: 64, offset: 4416)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2875, file: !2876, line: 192, baseType: !298, size: 64, offset: 4480)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2875, file: !2876, line: 192, baseType: !298, size: 64, offset: 4544)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2875, file: !2876, line: 192, baseType: !298, size: 64, offset: 4608)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2875, file: !2876, line: 192, baseType: !298, size: 64, offset: 4672)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2875, file: !2876, line: 193, baseType: !298, size: 64, offset: 4736)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2875, file: !2876, line: 193, baseType: !298, size: 64, offset: 4800)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2875, file: !2876, line: 194, baseType: !2970, size: 448, offset: 4864)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2971, line: 12, size: 448, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2970, file: !2971, line: 15, baseType: !291, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2970, file: !2971, line: 17, baseType: !291, size: 64, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2970, file: !2971, line: 19, baseType: !291, size: 64, offset: 128)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2970, file: !2971, line: 21, baseType: !291, size: 64, offset: 192)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2970, file: !2971, line: 29, baseType: !291, size: 64, offset: 256)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2970, file: !2971, line: 35, baseType: !291, size: 64, offset: 320)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2970, file: !2971, line: 44, baseType: !291, size: 64, offset: 384)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2875, file: !2876, line: 202, baseType: !169, size: 64, offset: 5312)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2875, file: !2876, line: 213, baseType: !2982, size: 2048, offset: 5376)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2983, size: 2048, elements: !2844)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2984, line: 43, size: 128, elements: !2985)
!2984 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2985 = !{!2986, !2987}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2983, file: !2984, line: 44, baseType: !480, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2983, file: !2984, line: 45, baseType: !480, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2875, file: !2876, line: 216, baseType: !2989, size: 448, offset: 7424)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2876, line: 30, size: 448, elements: !2990)
!2990 = !{!2991, !2992, !2993, !2994, !2995, !2996, !2997}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2989, file: !2876, line: 31, baseType: !125, size: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2989, file: !2876, line: 32, baseType: !467, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2989, file: !2876, line: 33, baseType: !298, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2989, file: !2876, line: 34, baseType: !291, size: 64, offset: 192)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2989, file: !2876, line: 34, baseType: !291, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2989, file: !2876, line: 35, baseType: !298, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2989, file: !2876, line: 35, baseType: !298, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2875, file: !2876, line: 219, baseType: !2999, size: 64, offset: 7872)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2876, line: 219, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2875, file: !2876, line: 222, baseType: !23, size: 32, offset: 7936)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2875, file: !2876, line: 223, baseType: !3003, size: 64, offset: 8000)
!3003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3004, size: 64)
!3004 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2876, line: 223, flags: DIFlagFwdDecl)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2875, file: !2876, line: 230, baseType: !844, size: 8, offset: 8064)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2875, file: !2876, line: 231, baseType: !902, size: 16, offset: 8080)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2875, file: !2876, line: 232, baseType: !902, size: 16, offset: 8096)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2875, file: !2876, line: 234, baseType: !1827, size: 64, offset: 8128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2875, file: !2876, line: 237, baseType: !764, size: 256, offset: 8192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2875, file: !2876, line: 243, baseType: !1424, size: 320, offset: 8448)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1531, file: !1206, line: 1111, baseType: !3012, size: 64, offset: 15424)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2876, line: 20, size: 16640, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3018}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3013, file: !2876, line: 21, baseType: !365, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3013, file: !2876, line: 22, baseType: !1544, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3013, file: !2876, line: 23, baseType: !1517, size: 192, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3013, file: !2876, line: 24, baseType: !3019, size: 16384, offset: 256)
!3019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3020, size: 16384, elements: !436)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2096, line: 51, size: 256, elements: !3021)
!3021 = !{!3022}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3020, file: !2096, line: 52, baseType: !3023, size: 256)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2096, line: 37, size: 256, elements: !3024)
!3024 = !{!3025, !3032, !3033, !3037}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3023, file: !2096, line: 39, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3027, line: 83, baseType: !3028)
!3027 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3027, line: 82, baseType: !3030)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !125}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3023, file: !2096, line: 40, baseType: !298, size: 64, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3023, file: !2096, line: 46, baseType: !3034, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3027, line: 86, baseType: !3035)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3027, line: 85, baseType: !1127)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3023, file: !2096, line: 48, baseType: !2890, size: 64, offset: 192)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1531, file: !1206, line: 1112, baseType: !2890, size: 64, offset: 15488)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1531, file: !1206, line: 1113, baseType: !2890, size: 64, offset: 15552)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1531, file: !1206, line: 1115, baseType: !2890, size: 64, offset: 15616)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1531, file: !1206, line: 1116, baseType: !2886, size: 192, offset: 15680)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1531, file: !1206, line: 1117, baseType: !298, size: 64, offset: 15872)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1531, file: !1206, line: 1118, baseType: !478, size: 64, offset: 15936)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1531, file: !1206, line: 1119, baseType: !23, size: 32, offset: 16000)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1531, file: !1206, line: 1121, baseType: !983, size: 64, offset: 16064)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1531, file: !1206, line: 1125, baseType: !3047, size: 64, offset: 16128)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1206, line: 43, flags: DIFlagFwdDecl)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1531, file: !1206, line: 1127, baseType: !516, size: 32, offset: 16192)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1531, file: !1206, line: 1128, baseType: !23, size: 32, offset: 16224)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1531, file: !1206, line: 1130, baseType: !3052, size: 128, offset: 16256)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3053, line: 37, size: 128, elements: !3054)
!3053 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3052, file: !3053, line: 38, baseType: !125, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3052, file: !3053, line: 39, baseType: !385, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3052, file: !3053, line: 40, baseType: !3058, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3053, line: 24, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1531, file: !1206, line: 1131, baseType: !3061, size: 256, offset: 16384)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3062, line: 12, size: 256, elements: !3063)
!3062 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3063 = !{!3064, !3065, !3066, !3067}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3061, file: !3062, line: 13, baseType: !431, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3061, file: !3062, line: 14, baseType: !298, size: 64, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3061, file: !3062, line: 15, baseType: !298, size: 64, offset: 128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3061, file: !3062, line: 16, baseType: !844, size: 8, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1531, file: !1206, line: 1134, baseType: !291, size: 64, offset: 16640)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1531, file: !1206, line: 1135, baseType: !291, size: 64, offset: 16704)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1531, file: !1206, line: 1138, baseType: !365, size: 32, offset: 16768)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1531, file: !1206, line: 1141, baseType: !722, size: 32, offset: 16800)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1531, file: !1206, line: 1143, baseType: !3073, size: 64, offset: 16832)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1206, line: 735, size: 64, elements: !3074)
!3074 = !{!3075}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3073, file: !1206, line: 736, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1531, file: !1206, line: 1147, baseType: !1710, size: 128, offset: 16896)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1531, file: !1206, line: 1149, baseType: !1530, size: 64, offset: 17024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1531, file: !1206, line: 1151, baseType: !3080, size: 64, offset: 17088)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1206, line: 1151, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1531, file: !1206, line: 1188, baseType: !168, size: 64, offset: 17152)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1531, file: !1206, line: 1191, baseType: !3084, size: 64, offset: 17216)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1206, line: 44, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1531, file: !1206, line: 1194, baseType: !3087, size: 64, offset: 17280)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1206, line: 45, flags: DIFlagFwdDecl)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1531, file: !1206, line: 1197, baseType: !3090, size: 64, offset: 17344)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1206, line: 61, flags: DIFlagFwdDecl)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1531, file: !1206, line: 1199, baseType: !3093, size: 64, offset: 17408)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3095, line: 99, size: 128, elements: !3096)
!3095 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3096 = !{!3097, !3098, !3099}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3094, file: !3095, line: 100, baseType: !768, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3094, file: !3095, line: 101, baseType: !385, size: 32, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3094, file: !3095, line: 103, baseType: !344, size: 16, offset: 96)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1531, file: !1206, line: 1202, baseType: !3101, size: 64, offset: 17472)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1206, line: 48, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1531, file: !1206, line: 1205, baseType: !298, size: 64, offset: 17536)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1531, file: !1206, line: 1206, baseType: !3105, size: 64, offset: 17600)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2096, line: 14, baseType: !3107)
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2096, line: 12, size: 384, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, scope: !3107, file: !2096, line: 13, baseType: !3110, size: 384)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3107, file: !2096, line: 13, size: 384, elements: !3111)
!3111 = !{!3112, !3113, !3114, !3115}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3110, file: !2096, line: 13, baseType: !125, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3110, file: !2096, line: 13, baseType: !125, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3110, file: !2096, line: 13, baseType: !125, size: 32, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3110, file: !2096, line: 13, baseType: !3116, size: 256, offset: 128)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3117, line: 37, size: 256, elements: !3118)
!3117 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3118 = !{!3119, !3124, !3137, !3143, !3152, !3179, !3184}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3116, file: !3117, line: 42, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 39, size: 64, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3120, file: !3117, line: 40, baseType: !2786, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3120, file: !3117, line: 41, baseType: !522, size: 32, offset: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3116, file: !3117, line: 50, baseType: !3125, size: 192)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 45, size: 192, elements: !3126)
!3126 = !{!3127, !3129, !3130, !3136}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3125, file: !3117, line: 46, baseType: !3128, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !465, line: 95, baseType: !125)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3125, file: !3117, line: 47, baseType: !125, size: 32, offset: 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3125, file: !3117, line: 48, baseType: !3131, size: 64, offset: 64)
!3131 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3117, line: 11, baseType: !3132)
!3132 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3117, line: 8, size: 64, elements: !3133)
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3132, file: !3117, line: 9, baseType: !125, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3132, file: !3117, line: 10, baseType: !168, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3125, file: !3117, line: 49, baseType: !125, size: 32, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3116, file: !3117, line: 57, baseType: !3138, size: 128)
!3138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 53, size: 128, elements: !3139)
!3139 = !{!3140, !3141, !3142}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3138, file: !3117, line: 54, baseType: !2786, size: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3138, file: !3117, line: 55, baseType: !522, size: 32, offset: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3138, file: !3117, line: 56, baseType: !3131, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3116, file: !3117, line: 66, baseType: !3144, size: 256)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 60, size: 256, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149, !3151}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3144, file: !3117, line: 61, baseType: !2786, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3144, file: !3117, line: 62, baseType: !522, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3144, file: !3117, line: 63, baseType: !125, size: 32, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3144, file: !3117, line: 64, baseType: !3150, size: 64, offset: 128)
!3150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !465, line: 94, baseType: !466)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3144, file: !3117, line: 65, baseType: !3150, size: 64, offset: 192)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3116, file: !3117, line: 105, baseType: !3153, size: 256)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 69, size: 256, elements: !3154)
!3154 = !{!3155, !3156}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3153, file: !3117, line: 70, baseType: !168, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !3153, file: !3117, line: 79, baseType: !3157, size: 192, offset: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3153, file: !3117, line: 79, size: 192, elements: !3158)
!3158 = !{!3159, !3160, !3161, !3168, !3173}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3157, file: !3117, line: 81, baseType: !125, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3157, file: !3117, line: 86, baseType: !902, size: 16)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3157, file: !3117, line: 92, baseType: !3162, size: 192)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3117, line: 88, size: 192, elements: !3163)
!3163 = !{!3164, !3166, !3167}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3162, file: !3117, line: 89, baseType: !3165, size: 64)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1694)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3162, file: !3117, line: 90, baseType: !168, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3162, file: !3117, line: 91, baseType: !168, size: 64, offset: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3157, file: !3117, line: 97, baseType: !3169, size: 96)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3117, line: 94, size: 96, elements: !3170)
!3170 = !{!3171, !3172}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3169, file: !3117, line: 95, baseType: !3165, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3169, file: !3117, line: 96, baseType: !172, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3157, file: !3117, line: 103, baseType: !3174, size: 128)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3117, line: 99, size: 128, elements: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3174, file: !3117, line: 100, baseType: !298, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3174, file: !3117, line: 101, baseType: !172, size: 32, offset: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3174, file: !3117, line: 102, baseType: !172, size: 32, offset: 96)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3116, file: !3117, line: 111, baseType: !3180, size: 128)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 108, size: 128, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3180, file: !3117, line: 109, baseType: !467, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3180, file: !3117, line: 110, baseType: !125, size: 32, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3116, file: !3117, line: 118, baseType: !3185, size: 128)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3116, file: !3117, line: 114, size: 128, elements: !3186)
!3186 = !{!3187, !3188, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3185, file: !3117, line: 115, baseType: !168, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3185, file: !3117, line: 116, baseType: !125, size: 32, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3185, file: !3117, line: 117, baseType: !23, size: 32, offset: 96)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1531, file: !1206, line: 1208, baseType: !2970, size: 448, offset: 17664)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1531, file: !1206, line: 1215, baseType: !291, size: 64, offset: 18112)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1531, file: !1206, line: 1217, baseType: !291, size: 64, offset: 18176)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1531, file: !1206, line: 1219, baseType: !291, size: 64, offset: 18240)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1531, file: !1206, line: 1223, baseType: !3195, size: 64, offset: 18304)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3196, line: 99, baseType: !3197)
!3196 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3196, line: 99, size: 64, elements: !3198)
!3198 = !{!3199}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3197, file: !3196, line: 99, baseType: !1778, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1531, file: !1206, line: 1225, baseType: !551, size: 32, offset: 18368)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1531, file: !1206, line: 1226, baseType: !125, size: 32, offset: 18400)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1531, file: !1206, line: 1227, baseType: !125, size: 32, offset: 18432)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1531, file: !1206, line: 1231, baseType: !3204, size: 64, offset: 18496)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1206, line: 1231, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1531, file: !1206, line: 1233, baseType: !266, size: 128, offset: 18560)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1531, file: !1206, line: 1240, baseType: !3208, size: 64, offset: 18688)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1206, line: 62, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1531, file: !1206, line: 1242, baseType: !3211, size: 64, offset: 18752)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1206, line: 1242, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1531, file: !1206, line: 1244, baseType: !266, size: 128, offset: 18816)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1531, file: !1206, line: 1245, baseType: !3215, size: 64, offset: 18944)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1206, line: 51, flags: DIFlagFwdDecl)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1531, file: !1206, line: 1246, baseType: !764, size: 256, offset: 19008)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1531, file: !1206, line: 1247, baseType: !23, size: 32, offset: 19264)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1531, file: !1206, line: 1250, baseType: !3220, size: 64, offset: 19328)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3221, size: 64)
!3221 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1206, line: 57, flags: DIFlagFwdDecl)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1531, file: !1206, line: 1251, baseType: !764, size: 256, offset: 19392)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1531, file: !1206, line: 1252, baseType: !266, size: 128, offset: 19648)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1531, file: !1206, line: 1259, baseType: !2476, size: 64, offset: 19776)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1531, file: !1206, line: 1260, baseType: !902, size: 16, offset: 19840)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1531, file: !1206, line: 1261, baseType: !902, size: 16, offset: 19856)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1531, file: !1206, line: 1314, baseType: !3228, size: 64, offset: 19904)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3230, line: 62, size: 256, align: 256, elements: !3231)
!3230 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3231 = !{!3232, !3233, !3234, !3235, !3236, !3237, !3238}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3229, file: !3230, line: 75, baseType: !172, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3229, file: !3230, line: 90, baseType: !172, size: 32, offset: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3229, file: !3230, line: 112, baseType: !292, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3229, file: !3230, line: 132, baseType: !172, size: 32, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3229, file: !3230, line: 140, baseType: !172, size: 32, offset: 160)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3229, file: !3230, line: 149, baseType: !172, size: 32, offset: 192)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3229, file: !3230, line: 154, baseType: !3239, offset: 224)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1914)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1531, file: !1206, line: 1315, baseType: !170, size: 32, offset: 19968)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1531, file: !1206, line: 1316, baseType: !170, size: 32, offset: 20000)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1531, file: !1206, line: 1321, baseType: !298, size: 64, offset: 20032)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1531, file: !1206, line: 1325, baseType: !125, size: 32, offset: 20096)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1531, file: !1206, line: 1326, baseType: !125, size: 32, offset: 20128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1531, file: !1206, line: 1327, baseType: !125, size: 32, offset: 20160)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1531, file: !1206, line: 1328, baseType: !125, size: 32, offset: 20192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1531, file: !1206, line: 1329, baseType: !984, size: 128, align: 64, offset: 20224)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1531, file: !1206, line: 1332, baseType: !3249, size: 128, offset: 20352)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3250, line: 51, size: 128, elements: !3251)
!3250 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3251 = !{!3252, !3257, !3258}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3249, file: !3250, line: 60, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3254, line: 7, size: 64, elements: !3255)
!3254 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3255 = !{!3256}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3253, file: !3254, line: 12, baseType: !1775, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3249, file: !3250, line: 63, baseType: !844, size: 8, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3249, file: !3250, line: 70, baseType: !844, size: 8, offset: 72)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1531, file: !1206, line: 1335, baseType: !2528, size: 64, offset: 20480)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1531, file: !1206, line: 1337, baseType: !3261, size: 128, offset: 20544)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3250, line: 39, size: 128, elements: !3262)
!3262 = !{!3263, !3264, !3265}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3261, file: !3250, line: 40, baseType: !2315, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3261, file: !3250, line: 42, baseType: !172, size: 32, offset: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3261, file: !3250, line: 43, baseType: !172, size: 32, offset: 96)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1531, file: !1206, line: 1340, baseType: !3267, size: 64, offset: 20672)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1206, line: 69, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1531, file: !1206, line: 1351, baseType: !125, size: 32, offset: 20736)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1531, file: !1206, line: 1352, baseType: !125, size: 32, offset: 20768)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1531, file: !1206, line: 1354, baseType: !298, size: 64, offset: 20800)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1531, file: !1206, line: 1364, baseType: !291, size: 64, offset: 20864)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1531, file: !1206, line: 1365, baseType: !291, size: 64, offset: 20928)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1531, file: !1206, line: 1412, baseType: !298, size: 64, offset: 20992)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1531, file: !1206, line: 1453, baseType: !3276, size: 64, offset: 21056)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1206, line: 1453, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1531, file: !1206, line: 1457, baseType: !3279, size: 64, offset: 21120)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !84, line: 61, size: 576, elements: !3281)
!3281 = !{!3282, !3283, !3302, !3305, !3306, !3339, !3349}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3280, file: !84, line: 62, baseType: !83, size: 32)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !84, line: 64, baseType: !3284, size: 192, offset: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !84, line: 64, size: 192, elements: !3285)
!3285 = !{!3286, !3297}
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !84, line: 65, baseType: !3287, size: 192)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3284, file: !84, line: 65, size: 192, elements: !3288)
!3288 = !{!3289, !3296}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3287, file: !84, line: 66, baseType: !3290, size: 128)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3291, line: 50, size: 128, elements: !3292)
!3291 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3290, file: !3291, line: 52, baseType: !298, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3290, file: !3291, line: 54, baseType: !23, size: 32, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3290, file: !3291, line: 55, baseType: !23, size: 32, offset: 96)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3287, file: !84, line: 67, baseType: !298, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, scope: !3284, file: !84, line: 70, baseType: !3298, size: 192)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3284, file: !84, line: 70, size: 192, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3298, file: !84, line: 71, baseType: !984, size: 128, align: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3298, file: !84, line: 72, baseType: !298, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3280, file: !84, line: 76, baseType: !3303, size: 64, offset: 256)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !84, line: 76, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3280, file: !84, line: 77, baseType: !298, size: 64, offset: 320)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3280, file: !84, line: 79, baseType: !3307, size: 64, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3291, line: 25, size: 256, elements: !3309)
!3309 = !{!3310, !3316, !3320}
!3310 = !DIDerivedType(tag: DW_TAG_member, scope: !3308, file: !3291, line: 26, baseType: !3311, size: 128)
!3311 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3308, file: !3291, line: 26, size: 128, elements: !3312)
!3312 = !{!3313, !3315}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3311, file: !3291, line: 27, baseType: !3314, size: 128)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 128, elements: !2844)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3311, file: !3291, line: 28, baseType: !3314, size: 128)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3308, file: !3291, line: 31, baseType: !3317, size: 64, offset: 128)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!3319 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3291, line: 23, flags: DIFlagFwdDecl)
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !3308, file: !3291, line: 33, baseType: !3321, size: 64, offset: 192)
!3321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3308, file: !3291, line: 33, size: 64, elements: !3322)
!3322 = !{!3323, !3329, !3334}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3321, file: !3291, line: 38, baseType: !3324, size: 64)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3321, file: !3291, line: 34, size: 64, elements: !3325)
!3325 = !{!3326, !3327, !3328}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3324, file: !3291, line: 35, baseType: !760, size: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3324, file: !3291, line: 36, baseType: !393, size: 8, offset: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3324, file: !3291, line: 37, baseType: !393, size: 8, offset: 40)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3321, file: !3291, line: 42, baseType: !3330, size: 16)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3321, file: !3291, line: 39, size: 16, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3330, file: !3291, line: 40, baseType: !393, size: 8)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3330, file: !3291, line: 41, baseType: !393, size: 8, offset: 8)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3321, file: !3291, line: 46, baseType: !3335, size: 16)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3321, file: !3291, line: 43, size: 16, elements: !3336)
!3336 = !{!3337, !3338}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3335, file: !3291, line: 44, baseType: !393, size: 8)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3335, file: !3291, line: 45, baseType: !393, size: 8, offset: 8)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3280, file: !84, line: 81, baseType: !3340, size: 64, offset: 448)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !84, line: 85, size: 384, elements: !3342)
!3342 = !{!3343, !3344, !3345, !3346, !3347, !3348}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3341, file: !84, line: 86, baseType: !3303, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3341, file: !84, line: 87, baseType: !298, size: 64, offset: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3341, file: !84, line: 88, baseType: !298, size: 64, offset: 128)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3341, file: !84, line: 89, baseType: !298, size: 64, offset: 192)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3341, file: !84, line: 90, baseType: !844, size: 8, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3341, file: !84, line: 92, baseType: !3340, size: 64, offset: 320)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3280, file: !84, line: 82, baseType: !23, size: 32, offset: 512)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1531, file: !1206, line: 1463, baseType: !3351, offset: 21184)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1206, line: 739, elements: !1051)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1531, file: !1206, line: 1470, baseType: !984, size: 128, align: 64, offset: 21184)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1531, file: !1206, line: 1471, baseType: !1544, size: 32, offset: 21312)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1531, file: !1206, line: 1472, baseType: !125, size: 32, offset: 21344)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1531, file: !1206, line: 1474, baseType: !1530, size: 64, offset: 21376)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1531, file: !1206, line: 1475, baseType: !1004, size: 320, offset: 21440)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1531, file: !1206, line: 1478, baseType: !3358, size: 64, offset: 21760)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2168, line: 49, size: 512, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3367, !3368, !3369, !3370}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3359, file: !2168, line: 50, baseType: !3358, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3359, file: !2168, line: 51, baseType: !168, size: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3359, file: !2168, line: 52, baseType: !298, size: 64, offset: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3359, file: !2168, line: 53, baseType: !298, size: 64, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3359, file: !2168, line: 54, baseType: !3366, size: 64, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3359, file: !2168, line: 56, baseType: !23, size: 32, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3359, file: !2168, line: 58, baseType: !23, size: 32, offset: 352)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3359, file: !2168, line: 59, baseType: !290, size: 64, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3359, file: !2168, line: 60, baseType: !2667, size: 64, offset: 448)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1531, file: !1206, line: 1482, baseType: !1544, size: 32, offset: 21824)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1531, file: !1206, line: 1489, baseType: !168, size: 64, offset: 21888)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1531, file: !1206, line: 1504, baseType: !168, size: 64, offset: 21952)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1531, file: !1206, line: 1505, baseType: !292, size: 64, offset: 22016)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1531, file: !1206, line: 1506, baseType: !291, size: 64, offset: 22080)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1531, file: !1206, line: 1507, baseType: !292, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1531, file: !1206, line: 1508, baseType: !292, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1531, file: !1206, line: 1509, baseType: !292, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1531, file: !1206, line: 1510, baseType: !984, size: 128, align: 64, offset: 22208)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1531, file: !1206, line: 1511, baseType: !125, size: 32, offset: 22336)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1531, file: !1206, line: 1515, baseType: !3382, size: 64, offset: 22400)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1558, line: 56, size: 64, elements: !3383)
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3382, file: !1558, line: 57, baseType: !1561, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1531, file: !1206, line: 1518, baseType: !3382, size: 64, offset: 22464)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1531, file: !1206, line: 1528, baseType: !984, size: 128, align: 64, offset: 22528)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1531, file: !1206, line: 1552, baseType: !3388, size: 35328, offset: 23040)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3389, line: 430, size: 35328, elements: !3390)
!3389 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3390 = !{!3391, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3420, !3421, !3422, !3423, !3424, !3425, !3428, !3429, !3430, !3431}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3388, file: !3389, line: 432, baseType: !3392, size: 192)
!3392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3393, size: 192, elements: !432)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3394, line: 16, size: 64, elements: !3395)
!3394 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3393, file: !3394, line: 17, baseType: !400, size: 16)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3393, file: !3394, line: 18, baseType: !400, size: 16, offset: 16)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3393, file: !3394, line: 19, baseType: !400, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3393, file: !3394, line: 19, baseType: !400, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3393, file: !3394, line: 19, baseType: !400, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3393, file: !3394, line: 19, baseType: !400, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3393, file: !3394, line: 19, baseType: !400, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3393, file: !3394, line: 20, baseType: !400, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3393, file: !3394, line: 20, baseType: !400, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3393, file: !3394, line: 20, baseType: !400, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3393, file: !3394, line: 20, baseType: !400, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3393, file: !3394, line: 20, baseType: !400, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3393, file: !3394, line: 20, baseType: !400, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3388, file: !3389, line: 436, baseType: !298, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3388, file: !3389, line: 440, baseType: !344, size: 16, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3388, file: !3389, line: 441, baseType: !344, size: 16, offset: 272)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3388, file: !3389, line: 442, baseType: !344, size: 16, offset: 288)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3388, file: !3389, line: 443, baseType: !344, size: 16, offset: 304)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3388, file: !3389, line: 447, baseType: !298, size: 64, offset: 320)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3388, file: !3389, line: 448, baseType: !298, size: 64, offset: 384)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3388, file: !3389, line: 459, baseType: !3417, size: 256, offset: 448)
!3417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3418, size: 256, elements: !303)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3389, line: 428, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3388, file: !3389, line: 461, baseType: !298, size: 64, offset: 704)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3388, file: !3389, line: 463, baseType: !298, size: 64, offset: 768)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3388, file: !3389, line: 465, baseType: !298, size: 64, offset: 832)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3388, file: !3389, line: 466, baseType: !298, size: 64, offset: 896)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3388, file: !3389, line: 467, baseType: !298, size: 64, offset: 960)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3388, file: !3389, line: 473, baseType: !3426, size: 64, offset: 1024)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3389, line: 10, flags: DIFlagFwdDecl)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3388, file: !3389, line: 480, baseType: !298, size: 64, offset: 1088)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3388, file: !3389, line: 482, baseType: !23, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3388, file: !3389, line: 491, baseType: !170, size: 32, offset: 1184)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3388, file: !3389, line: 501, baseType: !3432, size: 33792, offset: 1536)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3433, line: 448, size: 33792, elements: !3434)
!3433 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3434 = !{!3435, !3436, !3437, !3599, !3600, !3606, !3607}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3432, file: !3433, line: 461, baseType: !23, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3432, file: !3433, line: 468, baseType: !298, size: 64, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3432, file: !3433, line: 476, baseType: !3438, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3433, line: 356, size: 33280, align: 512, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3439, file: !3433, line: 358, baseType: !23, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3439, file: !3433, line: 361, baseType: !23, size: 32, offset: 32)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3439, file: !3433, line: 364, baseType: !291, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3439, file: !3433, line: 367, baseType: !291, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3439, file: !3433, line: 370, baseType: !291, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3439, file: !3433, line: 373, baseType: !23, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3439, file: !3433, line: 376, baseType: !23, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3439, file: !3433, line: 391, baseType: !23, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3439, file: !3433, line: 394, baseType: !23, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3439, file: !3433, line: 397, baseType: !3451, size: 32768, offset: 512)
!3451 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3433, line: 348, size: 32768, elements: !3452)
!3452 = !{!3453, !3468, !3505, !3582, !3595}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3451, file: !3433, line: 349, baseType: !3454, size: 896)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3433, line: 12, size: 896, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3467}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3454, file: !3433, line: 13, baseType: !170, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3454, file: !3433, line: 14, baseType: !170, size: 32, offset: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3454, file: !3433, line: 15, baseType: !170, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3454, file: !3433, line: 16, baseType: !170, size: 32, offset: 96)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3454, file: !3433, line: 17, baseType: !170, size: 32, offset: 128)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3454, file: !3433, line: 18, baseType: !170, size: 32, offset: 160)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3454, file: !3433, line: 19, baseType: !170, size: 32, offset: 192)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3454, file: !3433, line: 22, baseType: !3464, size: 640, offset: 224)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 640, elements: !3465)
!3465 = !{!3466}
!3466 = !DISubrange(count: 20)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3454, file: !3433, line: 25, baseType: !170, size: 32, offset: 864)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3451, file: !3433, line: 350, baseType: !3469, size: 4096, align: 128)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3433, line: 34, size: 4096, align: 128, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3490, !3491, !3492, !3494, !3496, !3500}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3469, file: !3433, line: 35, baseType: !400, size: 16)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3469, file: !3433, line: 36, baseType: !400, size: 16, offset: 16)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3469, file: !3433, line: 37, baseType: !400, size: 16, offset: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3469, file: !3433, line: 38, baseType: !400, size: 16, offset: 48)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !3433, line: 39, baseType: !3476, size: 128, offset: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !3433, line: 39, size: 128, elements: !3477)
!3477 = !{!3478, !3483}
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !3433, line: 40, baseType: !3479, size: 128)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !3433, line: 40, size: 128, elements: !3480)
!3480 = !{!3481, !3482}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3479, file: !3433, line: 41, baseType: !291, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3479, file: !3433, line: 42, baseType: !291, size: 64, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !3433, line: 44, baseType: !3484, size: 128)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !3433, line: 44, size: 128, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3489}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3484, file: !3433, line: 45, baseType: !170, size: 32)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3484, file: !3433, line: 46, baseType: !170, size: 32, offset: 32)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3484, file: !3433, line: 47, baseType: !170, size: 32, offset: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3484, file: !3433, line: 48, baseType: !170, size: 32, offset: 96)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3469, file: !3433, line: 51, baseType: !170, size: 32, offset: 192)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3469, file: !3433, line: 52, baseType: !170, size: 32, offset: 224)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3469, file: !3433, line: 55, baseType: !3493, size: 1024, offset: 256)
!3493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 1024, elements: !228)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3469, file: !3433, line: 58, baseType: !3495, size: 2048, offset: 1280)
!3495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 2048, elements: !436)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3469, file: !3433, line: 60, baseType: !3497, size: 384, offset: 3328)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 384, elements: !3498)
!3498 = !{!3499}
!3499 = !DISubrange(count: 12)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !3433, line: 62, baseType: !3501, size: 384, offset: 3712)
!3501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !3433, line: 62, size: 384, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3501, file: !3433, line: 63, baseType: !3497, size: 384)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3501, file: !3433, line: 64, baseType: !3497, size: 384)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3451, file: !3433, line: 351, baseType: !3506, size: 1088)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3433, line: 79, size: 1088, elements: !3507)
!3507 = !{!3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3581}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3506, file: !3433, line: 80, baseType: !170, size: 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3506, file: !3433, line: 81, baseType: !170, size: 32, offset: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3506, file: !3433, line: 82, baseType: !170, size: 32, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3506, file: !3433, line: 83, baseType: !170, size: 32, offset: 96)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3506, file: !3433, line: 84, baseType: !170, size: 32, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3506, file: !3433, line: 85, baseType: !170, size: 32, offset: 160)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3506, file: !3433, line: 86, baseType: !170, size: 32, offset: 192)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3506, file: !3433, line: 88, baseType: !3464, size: 640, offset: 224)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3506, file: !3433, line: 89, baseType: !393, size: 8, offset: 864)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3506, file: !3433, line: 90, baseType: !393, size: 8, offset: 872)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3506, file: !3433, line: 91, baseType: !393, size: 8, offset: 880)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3506, file: !3433, line: 92, baseType: !393, size: 8, offset: 888)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3506, file: !3433, line: 93, baseType: !393, size: 8, offset: 896)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3506, file: !3433, line: 94, baseType: !393, size: 8, offset: 904)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3506, file: !3433, line: 95, baseType: !3523, size: 64, offset: 960)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3525, line: 11, size: 128, elements: !3526)
!3525 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3526 = !{!3527, !3528}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3524, file: !3525, line: 12, baseType: !467, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3524, file: !3525, line: 13, baseType: !3529, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3531, line: 103, size: 1344, elements: !3532)
!3531 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3561, !3562, !3563}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3530, file: !3531, line: 109, baseType: !298, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3530, file: !3531, line: 110, baseType: !298, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3530, file: !3531, line: 111, baseType: !298, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3530, file: !3531, line: 112, baseType: !298, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3530, file: !3531, line: 113, baseType: !298, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3530, file: !3531, line: 114, baseType: !298, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3530, file: !3531, line: 117, baseType: !298, size: 64, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3530, file: !3531, line: 118, baseType: !298, size: 64, offset: 448)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3530, file: !3531, line: 119, baseType: !298, size: 64, offset: 512)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3530, file: !3531, line: 120, baseType: !298, size: 64, offset: 576)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3530, file: !3531, line: 121, baseType: !298, size: 64, offset: 640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3530, file: !3531, line: 122, baseType: !298, size: 64, offset: 704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3530, file: !3531, line: 123, baseType: !298, size: 64, offset: 768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3530, file: !3531, line: 124, baseType: !298, size: 64, offset: 832)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3530, file: !3531, line: 125, baseType: !298, size: 64, offset: 896)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3530, file: !3531, line: 139, baseType: !298, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3530, file: !3531, line: 142, baseType: !298, size: 64, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, scope: !3530, file: !3531, line: 144, baseType: !3551, size: 64, offset: 1088)
!3551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3530, file: !3531, line: 144, size: 64, elements: !3552)
!3552 = !{!3553, !3554, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3551, file: !3531, line: 146, baseType: !400, size: 16)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3551, file: !3531, line: 148, baseType: !291, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3551, file: !3531, line: 150, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3531, line: 59, size: 64, elements: !3557)
!3557 = !{!3558, !3559, !3560}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3556, file: !3531, line: 61, baseType: !291, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3556, file: !3531, line: 63, baseType: !291, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3556, file: !3531, line: 65, baseType: !291, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3530, file: !3531, line: 153, baseType: !298, size: 64, offset: 1152)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3530, file: !3531, line: 154, baseType: !298, size: 64, offset: 1216)
!3563 = !DIDerivedType(tag: DW_TAG_member, scope: !3530, file: !3531, line: 156, baseType: !3564, size: 64, offset: 1280)
!3564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3530, file: !3531, line: 156, size: 64, elements: !3565)
!3565 = !{!3566, !3567, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3564, file: !3531, line: 158, baseType: !400, size: 16)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3564, file: !3531, line: 160, baseType: !291, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3564, file: !3531, line: 162, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3531, line: 69, size: 64, elements: !3570)
!3570 = !{!3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3569, file: !3531, line: 71, baseType: !291, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3569, file: !3531, line: 73, baseType: !291, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3569, file: !3531, line: 75, baseType: !291, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3569, file: !3531, line: 77, baseType: !291, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3569, file: !3531, line: 80, baseType: !291, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3569, file: !3531, line: 83, baseType: !291, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3569, file: !3531, line: 86, baseType: !291, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3569, file: !3531, line: 88, baseType: !291, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3569, file: !3531, line: 93, baseType: !291, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3569, file: !3531, line: 100, baseType: !291, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3506, file: !3433, line: 96, baseType: !170, size: 32, offset: 1024)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3451, file: !3433, line: 352, baseType: !3583, size: 4608, align: 512)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3433, line: 333, size: 4608, align: 512, elements: !3584)
!3584 = !{!3585, !3586, !3593}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3583, file: !3433, line: 334, baseType: !3469, size: 4096, align: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3583, file: !3433, line: 335, baseType: !3587, size: 512, offset: 4096)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3433, line: 312, size: 512, elements: !3588)
!3588 = !{!3589, !3590, !3591}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3587, file: !3433, line: 313, baseType: !291, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3587, file: !3433, line: 314, baseType: !291, size: 64, offset: 64)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3587, file: !3433, line: 315, baseType: !3592, size: 384, offset: 128)
!3592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 384, elements: !1997)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3583, file: !3433, line: 336, baseType: !3594, offset: 4608)
!3594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, elements: !1914)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3451, file: !3433, line: 353, baseType: !3596, size: 32768)
!3596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 32768, elements: !3597)
!3597 = !{!3598}
!3598 = !DISubrange(count: 4096)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3432, file: !3433, line: 484, baseType: !3438, size: 64, offset: 192)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3432, file: !3433, line: 491, baseType: !3601, size: 128, offset: 256)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3433, line: 404, size: 128, elements: !3602)
!3602 = !{!3603, !3604, !3605}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3601, file: !3433, line: 424, baseType: !291, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3601, file: !3433, line: 432, baseType: !23, size: 32, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3601, file: !3433, line: 440, baseType: !23, size: 32, offset: 96)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3432, file: !3433, line: 498, baseType: !3601, size: 128, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3432, file: !3433, line: 508, baseType: !3439, size: 33280, align: 512, offset: 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1507, file: !1508, line: 16, baseType: !1517, size: 192, offset: 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1507, file: !1508, line: 17, baseType: !385, size: 32, offset: 704)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !655, file: !30, line: 1240, baseType: !168, size: 64, offset: 6912)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !655, file: !30, line: 1243, baseType: !170, size: 32, offset: 6976)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !655, file: !30, line: 1245, baseType: !1264, size: 64, offset: 7040)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !655, file: !30, line: 1246, baseType: !1264, size: 64, offset: 7104)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !655, file: !30, line: 1248, baseType: !172, size: 32, offset: 7168)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !655, file: !30, line: 1249, baseType: !3616, size: 64, offset: 7232)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !30, line: 634, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !655, file: !30, line: 1252, baseType: !227, size: 256, offset: 7296)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !655, file: !30, line: 1253, baseType: !3620, size: 128, offset: 7552)
!3620 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3621, line: 21, baseType: !3622)
!3621 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3621, line: 19, size: 128, elements: !3623)
!3623 = !{!3624}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3622, file: !3621, line: 20, baseType: !3625, size: 128)
!3625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 128, elements: !2844)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !655, file: !30, line: 1255, baseType: !23, size: 32, offset: 7680)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !655, file: !30, line: 1261, baseType: !764, size: 256, offset: 7744)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !655, file: !30, line: 1267, baseType: !295, size: 64, offset: 8000)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !655, file: !30, line: 1269, baseType: !601, size: 64, offset: 8064)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !655, file: !30, line: 1271, baseType: !3631, size: 448, offset: 8128)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1273, line: 63, size: 448, elements: !3632)
!3632 = !{!3633, !3638, !3639, !3640, !3641, !3642, !3643}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3631, file: !1273, line: 64, baseType: !3634, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!298, !3637, !1271}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3631, file: !1273, line: 66, baseType: !3634, size: 64, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3631, file: !1273, line: 69, baseType: !467, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3631, file: !1273, line: 70, baseType: !125, size: 32, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3631, file: !1273, line: 71, baseType: !23, size: 32, offset: 224)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3631, file: !1273, line: 74, baseType: !266, size: 128, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3631, file: !1273, line: 85, baseType: !3644, size: 64, offset: 384)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !655, file: !30, line: 1274, baseType: !768, size: 64, offset: 8576)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !655, file: !30, line: 1280, baseType: !768, size: 64, offset: 8640)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !655, file: !30, line: 1283, baseType: !125, size: 32, offset: 8704)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !655, file: !30, line: 1286, baseType: !2578, size: 32, offset: 8736)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !655, file: !30, line: 1289, baseType: !1084, size: 64, offset: 8768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !655, file: !30, line: 1290, baseType: !1132, size: 64, offset: 8832)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !655, file: !30, line: 1297, baseType: !2091, size: 64, offset: 8896)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !655, file: !30, line: 1304, baseType: !3653, size: 64, offset: 8960)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3654, line: 49, size: 64, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3655 = !{!3656}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3653, file: !3654, line: 50, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3654, line: 41, size: 512, align: 512, elements: !3659)
!3659 = !{!3660, !3661, !3666}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3658, file: !3654, line: 43, baseType: !365, size: 32)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3658, file: !3654, line: 45, baseType: !3662, size: 192, offset: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3654, line: 29, size: 192, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3662, file: !3654, line: 30, baseType: !266, size: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3662, file: !3654, line: 32, baseType: !467, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3658, file: !3654, line: 46, baseType: !467, size: 64, offset: 256)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !655, file: !30, line: 1305, baseType: !3653, size: 64, offset: 9024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !655, file: !30, line: 1306, baseType: !984, size: 128, align: 64, offset: 9088)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !655, file: !30, line: 1307, baseType: !1022, size: 256, offset: 9216)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !655, file: !30, line: 1309, baseType: !764, size: 256, offset: 9472)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !655, file: !30, line: 1314, baseType: !125, size: 32, offset: 9728)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !655, file: !30, line: 1317, baseType: !365, size: 32, align: 512, offset: 10240)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !655, file: !30, line: 1318, baseType: !266, size: 128, offset: 10304)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !655, file: !30, line: 1320, baseType: !365, size: 32, offset: 10432)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !655, file: !30, line: 1321, baseType: !266, size: 128, offset: 10496)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !649, file: !650, line: 73, baseType: !125, size: 32, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !649, file: !650, line: 74, baseType: !3678, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1938, line: 42, flags: DIFlagFwdDecl)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !603, file: !547, line: 141, baseType: !3682, size: 64, offset: 704)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!125, !1334, !844}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !603, file: !547, line: 142, baseType: !3686, size: 64, offset: 768)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!545, !545, !3689}
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !546, file: !547, line: 96, baseType: !654, size: 64, offset: 832)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !546, file: !547, line: 97, baseType: !298, size: 64, offset: 896)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !546, file: !547, line: 98, baseType: !168, size: 64, offset: 960)
!3694 = !DIDerivedType(tag: DW_TAG_member, scope: !546, file: !547, line: 100, baseType: !3695, size: 128, offset: 1024)
!3695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !546, file: !547, line: 100, size: 128, elements: !3696)
!3696 = !{!3697, !3698}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3695, file: !547, line: 101, baseType: !266, size: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3695, file: !547, line: 102, baseType: !3699, size: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !546, file: !547, line: 104, baseType: !266, size: 128, offset: 1152)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !546, file: !547, line: 105, baseType: !266, size: 128, offset: 1280)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !546, file: !547, line: 113, baseType: !3703, size: 128, offset: 1408)
!3703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !546, file: !547, line: 109, size: 128, elements: !3704)
!3704 = !{!3705, !3706, !3707}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3703, file: !547, line: 110, baseType: !1008, size: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3703, file: !547, line: 111, baseType: !561, size: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3703, file: !547, line: 112, baseType: !984, size: 128, align: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !539, file: !30, line: 1968, baseType: !3709, size: 64, offset: 64)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!295, !545, !510, !3712}
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3714, line: 10, size: 128, elements: !3715)
!3714 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3715 = !{!3716, !3717}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3713, file: !3714, line: 11, baseType: !807, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3713, file: !3714, line: 12, baseType: !168, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !539, file: !30, line: 1969, baseType: !3719, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!125, !3678, !510, !125}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !539, file: !30, line: 1970, baseType: !3723, size: 64, offset: 192)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!533, !510, !125, !844}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !539, file: !30, line: 1972, baseType: !3727, size: 64, offset: 256)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!125, !545, !431, !125}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !539, file: !30, line: 1974, baseType: !3731, size: 64, offset: 320)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!125, !3678, !510, !545, !473, !844}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !539, file: !30, line: 1976, baseType: !3735, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!125, !545, !510, !545}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !539, file: !30, line: 1977, baseType: !3739, size: 64, offset: 448)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!125, !510, !545}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !539, file: !30, line: 1978, baseType: !3743, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!125, !3678, !510, !545, !295}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !539, file: !30, line: 1980, baseType: !3747, size: 64, offset: 576)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!125, !3678, !510, !545, !473}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !539, file: !30, line: 1982, baseType: !3739, size: 64, offset: 640)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !539, file: !30, line: 1983, baseType: !3752, size: 64, offset: 704)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!125, !3678, !510, !545, !473, !659}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !539, file: !30, line: 1985, baseType: !3756, size: 64, offset: 768)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!125, !3678, !510, !545, !510, !545, !23}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !539, file: !30, line: 1987, baseType: !3760, size: 64, offset: 832)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!125, !3678, !545, !3763}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !30, line: 226, size: 640, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3778, !3787, !3788, !3793, !3794, !3795}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3764, file: !30, line: 227, baseType: !23, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3764, file: !30, line: 228, baseType: !473, size: 16, offset: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !3764, file: !30, line: 241, baseType: !3769, size: 32, offset: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3764, file: !30, line: 241, size: 32, elements: !3770)
!3770 = !{!3771, !3772}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3769, file: !30, line: 242, baseType: !516, size: 32)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3769, file: !30, line: 243, baseType: !3773, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3774, line: 16, baseType: !3775)
!3774 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3774, line: 14, size: 32, elements: !3776)
!3776 = !{!3777}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3775, file: !3774, line: 15, baseType: !521, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, scope: !3764, file: !30, line: 245, baseType: !3779, size: 32, offset: 96)
!3779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3764, file: !30, line: 245, size: 32, elements: !3780)
!3780 = !{!3781, !3782}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3779, file: !30, line: 246, baseType: !525, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3779, file: !30, line: 247, baseType: !3783, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3774, line: 20, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3774, line: 18, size: 32, elements: !3785)
!3785 = !{!3786}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3784, file: !3774, line: 19, baseType: !529, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3764, file: !30, line: 249, baseType: !664, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3764, file: !30, line: 250, baseType: !3789, size: 128, offset: 192)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1265, line: 13, size: 128, elements: !3790)
!3790 = !{!3791, !3792}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3789, file: !1265, line: 14, baseType: !1264, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3789, file: !1265, line: 15, baseType: !467, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3764, file: !30, line: 251, baseType: !3789, size: 128, offset: 320)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3764, file: !30, line: 252, baseType: !3789, size: 128, offset: 448)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3764, file: !30, line: 259, baseType: !1854, size: 64, offset: 576)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !539, file: !30, line: 1988, baseType: !3797, size: 64, offset: 896)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!125, !3678, !1334, !3800, !170, !23}
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3802, line: 22, size: 1280, elements: !3803)
!3802 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3803 = !{!3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3801, file: !3802, line: 23, baseType: !170, size: 32)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3801, file: !3802, line: 24, baseType: !473, size: 16, offset: 32)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3801, file: !3802, line: 25, baseType: !23, size: 32, offset: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3801, file: !3802, line: 26, baseType: !1976, size: 32, offset: 96)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3801, file: !3802, line: 27, baseType: !291, size: 64, offset: 128)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3801, file: !3802, line: 28, baseType: !291, size: 64, offset: 192)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3801, file: !3802, line: 41, baseType: !291, size: 64, offset: 256)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3801, file: !3802, line: 42, baseType: !659, size: 32, offset: 320)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3801, file: !3802, line: 43, baseType: !659, size: 32, offset: 352)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3801, file: !3802, line: 44, baseType: !516, size: 32, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3801, file: !3802, line: 45, baseType: !525, size: 32, offset: 416)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3801, file: !3802, line: 46, baseType: !664, size: 64, offset: 448)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3801, file: !3802, line: 47, baseType: !3789, size: 128, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3801, file: !3802, line: 48, baseType: !3789, size: 128, offset: 640)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3801, file: !3802, line: 49, baseType: !3789, size: 128, offset: 768)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3801, file: !3802, line: 50, baseType: !3789, size: 128, offset: 896)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3801, file: !3802, line: 51, baseType: !291, size: 64, offset: 1024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3801, file: !3802, line: 52, baseType: !291, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3801, file: !3802, line: 53, baseType: !170, size: 32, offset: 1152)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3801, file: !3802, line: 54, baseType: !170, size: 32, offset: 1184)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3801, file: !3802, line: 55, baseType: !291, size: 64, offset: 1216)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !539, file: !30, line: 1990, baseType: !3826, size: 64, offset: 960)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!463, !545, !431, !478}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !539, file: !30, line: 1991, baseType: !3830, size: 64, offset: 1024)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!125, !510, !3833, !291, !291}
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !30, line: 55, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !539, file: !30, line: 1993, baseType: !3836, size: 64, offset: 1088)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!125, !510, !125}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !539, file: !30, line: 1994, baseType: !3840, size: 64, offset: 1152)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!125, !510, !545, !1854, !23, !473}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !539, file: !30, line: 1997, baseType: !3844, size: 64, offset: 1216)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!125, !3678, !510, !1854, !473}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !539, file: !30, line: 1999, baseType: !3848, size: 64, offset: 1280)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!533, !3678, !545, !125}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !539, file: !30, line: 2001, baseType: !3852, size: 64, offset: 1344)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!125, !3678, !545, !533, !125}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !539, file: !30, line: 2003, baseType: !3856, size: 64, offset: 1408)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!125, !3678, !545, !3859}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !30, line: 76, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !539, file: !30, line: 2005, baseType: !3862, size: 64, offset: 1472)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!125, !545, !3859}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !539, file: !30, line: 2006, baseType: !3866, size: 64, offset: 1536)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!3869, !510}
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !30, line: 3192, size: 192, elements: !3871)
!3871 = !{!3872, !3879}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3870, file: !30, line: 3193, baseType: !3873, size: 128)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3874, line: 296, size: 128, elements: !3875)
!3874 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3875 = !{!3876, !3877, !3878}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3873, file: !3874, line: 297, baseType: !365, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3873, file: !3874, line: 299, baseType: !1276, size: 32, offset: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3873, file: !3874, line: 300, baseType: !168, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3870, file: !30, line: 3194, baseType: !170, size: 32, offset: 128)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !511, file: !30, line: 655, baseType: !654, size: 64, offset: 448)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !511, file: !30, line: 656, baseType: !506, size: 64, offset: 512)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !511, file: !30, line: 659, baseType: !168, size: 64, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !511, file: !30, line: 663, baseType: !298, size: 64, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !30, line: 671, baseType: !3885, size: 32, offset: 704)
!3885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !30, line: 671, size: 32, elements: !3886)
!3886 = !{!3887, !3889}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3885, file: !30, line: 672, baseType: !3888, size: 32)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3885, file: !30, line: 673, baseType: !23, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !511, file: !30, line: 675, baseType: !659, size: 32, offset: 736)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !511, file: !30, line: 676, baseType: !664, size: 64, offset: 768)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !511, file: !30, line: 677, baseType: !3789, size: 128, offset: 832)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !511, file: !30, line: 678, baseType: !3789, size: 128, offset: 960)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !511, file: !30, line: 679, baseType: !3789, size: 128, offset: 1088)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !511, file: !30, line: 680, baseType: !365, size: 32, offset: 1216)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !511, file: !30, line: 681, baseType: !344, size: 16, offset: 1248)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !511, file: !30, line: 682, baseType: !393, size: 8, offset: 1264)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !511, file: !30, line: 683, baseType: !393, size: 8, offset: 1272)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !511, file: !30, line: 684, baseType: !1412, size: 64, offset: 1280)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !511, file: !30, line: 691, baseType: !298, size: 64, offset: 1344)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !511, file: !30, line: 692, baseType: !1424, size: 320, offset: 1408)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !511, file: !30, line: 694, baseType: !298, size: 64, offset: 1728)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !511, file: !30, line: 695, baseType: !298, size: 64, offset: 1792)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !511, file: !30, line: 697, baseType: !1008, size: 128, offset: 1856)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !511, file: !30, line: 698, baseType: !266, size: 128, offset: 1984)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !511, file: !30, line: 707, baseType: !266, size: 128, offset: 2112)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !511, file: !30, line: 708, baseType: !266, size: 128, offset: 2240)
!3908 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !30, line: 709, baseType: !3909, size: 128, offset: 2368)
!3909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !30, line: 709, size: 128, elements: !3910)
!3910 = !{!3911, !3912}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3909, file: !30, line: 710, baseType: !1132, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3909, file: !30, line: 711, baseType: !984, size: 128, align: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !511, file: !30, line: 713, baseType: !770, size: 64, offset: 2496)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !511, file: !30, line: 714, baseType: !770, size: 64, offset: 2560)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !511, file: !30, line: 715, baseType: !385, size: 32, offset: 2624)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !511, file: !30, line: 716, baseType: !385, size: 32, offset: 2656)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !511, file: !30, line: 717, baseType: !385, size: 32, offset: 2688)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !511, file: !30, line: 719, baseType: !385, size: 32, offset: 2720)
!3919 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !30, line: 721, baseType: !3920, size: 64, offset: 2752)
!3920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !30, line: 721, size: 64, elements: !3921)
!3921 = !{!3922, !3923}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3920, file: !30, line: 722, baseType: !2122, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3920, file: !30, line: 723, baseType: !1155, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !511, file: !30, line: 725, baseType: !3925, size: 64, offset: 2816)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !30, line: 725, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !511, file: !30, line: 726, baseType: !507, size: 1536, align: 64, offset: 2880)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !511, file: !30, line: 727, baseType: !266, size: 128, offset: 4416)
!3929 = !DIDerivedType(tag: DW_TAG_member, scope: !511, file: !30, line: 728, baseType: !3930, size: 64, offset: 4544)
!3930 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !511, file: !30, line: 728, size: 64, elements: !3931)
!3931 = !{!3932, !3933, !3936, !3937}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3930, file: !30, line: 729, baseType: !2528, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3930, file: !30, line: 730, baseType: !3934, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !30, line: 730, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3930, file: !30, line: 731, baseType: !431, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3930, file: !30, line: 732, baseType: !23, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !511, file: !30, line: 735, baseType: !172, size: 32, offset: 4608)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !511, file: !30, line: 738, baseType: !172, size: 32, offset: 4640)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !511, file: !30, line: 739, baseType: !3616, size: 64, offset: 4672)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !511, file: !30, line: 750, baseType: !168, size: 64, offset: 4736)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !507, file: !30, line: 474, baseType: !3873, size: 128, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !507, file: !30, line: 475, baseType: !1424, size: 320, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !507, file: !30, line: 476, baseType: !1276, size: 32, offset: 512)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !507, file: !30, line: 477, baseType: !385, size: 32, offset: 544)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !507, file: !30, line: 482, baseType: !1710, size: 128, offset: 576)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !507, file: !30, line: 483, baseType: !298, size: 64, offset: 704)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !507, file: !30, line: 484, baseType: !298, size: 64, offset: 768)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !507, file: !30, line: 485, baseType: !3950, size: 64, offset: 832)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !30, line: 404, size: 1280, elements: !3953)
!3953 = !{!3954, !3958, !4028, !4032, !4036, !4042, !4046, !4050, !4055, !4059, !4063, !4067, !4068, !4072, !4076, !4080, !4085, !4089, !4096, !4097}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3952, file: !30, line: 405, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!125, !2315, !1167}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3952, file: !30, line: 406, baseType: !3959, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!125, !1854, !3962}
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !54, line: 293, size: 1536, elements: !3964)
!3964 = !{!3965, !3995, !4009}
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !54, line: 295, baseType: !3966, size: 512)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3963, file: !54, line: 295, size: 512, elements: !3967)
!3967 = !{!3968, !3994}
!3968 = !DIDerivedType(tag: DW_TAG_member, scope: !3966, file: !54, line: 296, baseType: !3969, size: 448)
!3969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3966, file: !54, line: 296, size: 448, elements: !3970)
!3970 = !{!3971, !3972, !3981, !3982, !3983, !3992, !3993}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3969, file: !54, line: 298, baseType: !298, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !54, line: 299, baseType: !3973, size: 128, offset: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3969, file: !54, line: 299, size: 128, elements: !3974)
!3974 = !{!3975, !3976}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3973, file: !54, line: 300, baseType: !266, size: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, scope: !3973, file: !54, line: 302, baseType: !3977, size: 128)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3973, file: !54, line: 302, size: 128, elements: !3978)
!3978 = !{!3979, !3980}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3977, file: !54, line: 303, baseType: !168, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3977, file: !54, line: 305, baseType: !23, size: 32, offset: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3969, file: !54, line: 310, baseType: !506, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3969, file: !54, line: 311, baseType: !298, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !54, line: 312, baseType: !3984, size: 64, offset: 320)
!3984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3969, file: !54, line: 312, size: 64, elements: !3985)
!3985 = !{!3986, !3987}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3984, file: !54, line: 313, baseType: !168, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3984, file: !54, line: 314, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !54, line: 257, baseType: !3989)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !54, line: 255, size: 64, elements: !3990)
!3990 = !{!3991}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3989, file: !54, line: 256, baseType: !298, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3969, file: !54, line: 316, baseType: !385, size: 32, offset: 384)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3969, file: !54, line: 317, baseType: !385, size: 32, offset: 416)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3966, file: !54, line: 323, baseType: !2316, size: 512, align: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !54, line: 325, baseType: !3996, size: 512, offset: 512)
!3996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3963, file: !54, line: 325, size: 512, elements: !3997)
!3997 = !{!3998, !4008}
!3998 = !DIDerivedType(tag: DW_TAG_member, scope: !3996, file: !54, line: 326, baseType: !3999, size: 320)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3996, file: !54, line: 326, size: 320, elements: !4000)
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3999, file: !54, line: 327, baseType: !298, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3999, file: !54, line: 328, baseType: !298, size: 64, offset: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3999, file: !54, line: 329, baseType: !298, size: 64, offset: 128)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3999, file: !54, line: 331, baseType: !385, size: 32, offset: 192)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3999, file: !54, line: 332, baseType: !385, size: 32, offset: 224)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3999, file: !54, line: 333, baseType: !385, size: 32, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3999, file: !54, line: 335, baseType: !23, size: 32, offset: 288)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3996, file: !54, line: 339, baseType: !2316, size: 512, align: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, scope: !3963, file: !54, line: 341, baseType: !4010, size: 512, offset: 1024)
!4010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3963, file: !54, line: 341, size: 512, elements: !4011)
!4011 = !{!4012, !4021, !4027}
!4012 = !DIDerivedType(tag: DW_TAG_member, scope: !4010, file: !54, line: 342, baseType: !4013, size: 384)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4010, file: !54, line: 342, size: 384, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4013, file: !54, line: 343, baseType: !298, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4013, file: !54, line: 344, baseType: !298, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4013, file: !54, line: 346, baseType: !168, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4013, file: !54, line: 347, baseType: !168, size: 64, offset: 192)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4013, file: !54, line: 348, baseType: !168, size: 64, offset: 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4013, file: !54, line: 349, baseType: !168, size: 64, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, scope: !4010, file: !54, line: 352, baseType: !4022, size: 256)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4010, file: !54, line: 352, size: 256, elements: !4023)
!4023 = !{!4024, !4025, !4026}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4022, file: !54, line: 353, baseType: !298, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4022, file: !54, line: 354, baseType: !298, size: 64, offset: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4022, file: !54, line: 356, baseType: !266, size: 128, offset: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4010, file: !54, line: 359, baseType: !2316, size: 512, align: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3952, file: !30, line: 409, baseType: !4029, size: 64, offset: 128)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!125, !506, !1167}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3952, file: !30, line: 412, baseType: !4033, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!844, !506, !3962}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3952, file: !30, line: 414, baseType: !4037, size: 64, offset: 256)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !4040}
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !30, line: 310, flags: DIFlagFwdDecl)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3952, file: !30, line: 416, baseType: !4043, size: 64, offset: 320)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!125, !1854, !506, !664, !23, !3366, !2543}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3952, file: !30, line: 419, baseType: !4047, size: 64, offset: 384)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!125, !1854, !506, !664, !23, !23, !2315, !168}
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3952, file: !30, line: 424, baseType: !4051, size: 64, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{!4054, !506, !4054}
!4054 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !267, line: 131, baseType: !291)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3952, file: !30, line: 425, baseType: !4056, size: 64, offset: 512)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{null, !3962, !478, !478}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3952, file: !30, line: 426, baseType: !4060, size: 64, offset: 576)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!844, !3962, !1276}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3952, file: !30, line: 427, baseType: !4064, size: 64, offset: 640)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{null, !3962}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3952, file: !30, line: 428, baseType: !2141, size: 64, offset: 704)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3952, file: !30, line: 433, baseType: !4069, size: 64, offset: 768)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!125, !506, !3962, !3962, !90}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3952, file: !30, line: 435, baseType: !4073, size: 64, offset: 832)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!125, !3962}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3952, file: !30, line: 436, baseType: !4077, size: 64, offset: 896)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!844, !3962, !478, !478}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3952, file: !30, line: 438, baseType: !4081, size: 64, offset: 960)
!4081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4082, size: 64)
!4082 = !DISubroutineType(types: !4083)
!4083 = !{null, !3962, !4084, !4084}
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3952, file: !30, line: 439, baseType: !4086, size: 64, offset: 1024)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!125, !506, !2315}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3952, file: !30, line: 442, baseType: !4090, size: 64, offset: 1088)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!125, !4093, !1854, !4095}
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !30, line: 66, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3952, file: !30, line: 444, baseType: !2535, size: 64, offset: 1152)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3952, file: !30, line: 445, baseType: !4098, size: 64, offset: 1216)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!125, !2144, !2166}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !30, line: 486, baseType: !298, size: 64, offset: 896)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !507, file: !30, line: 487, baseType: !1424, size: 320, offset: 960)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !507, file: !30, line: 488, baseType: !2578, size: 32, offset: 1280)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !507, file: !30, line: 489, baseType: !365, size: 32, offset: 1312)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !507, file: !30, line: 490, baseType: !266, size: 128, offset: 1344)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !507, file: !30, line: 491, baseType: !168, size: 64, offset: 1472)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !497, file: !457, line: 180, baseType: !4108, size: 64, offset: 320)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!463, !1854, !358, !496, !431, !664, !478}
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !497, file: !457, line: 182, baseType: !4108, size: 64, offset: 384)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !497, file: !457, line: 184, baseType: !4113, size: 64, offset: 448)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!125, !1854, !358, !496, !2206}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !485, file: !457, line: 90, baseType: !4117, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !485, file: !457, line: 91, baseType: !4119, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !447, file: !353, line: 120, baseType: !4121, size: 64, offset: 192)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = !DISubroutineType(types: !4123)
!4123 = !{!4124, !414}
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4126)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !98, line: 39, size: 384, elements: !4127)
!4127 = !{!4128, !4129, !4133, !4137, !4143, !4147}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4126, file: !98, line: 40, baseType: !97, size: 32)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4126, file: !98, line: 41, baseType: !4130, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!844}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4126, file: !98, line: 42, baseType: !4134, size: 64, offset: 128)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!168}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4126, file: !98, line: 43, baseType: !4138, size: 64, offset: 192)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{!2667, !4141}
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !98, line: 19, flags: DIFlagFwdDecl)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4126, file: !98, line: 44, baseType: !4144, size: 64, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{!2667}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4126, file: !98, line: 45, baseType: !807, size: 64, offset: 320)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !447, file: !353, line: 121, baseType: !4149, size: 64, offset: 256)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!2667, !414}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !447, file: !353, line: 122, baseType: !4153, size: 64, offset: 320)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !414, !4156, !4157}
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !352, file: !353, line: 70, baseType: !4159, size: 64, offset: 384)
!4159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4160, size: 64)
!4160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !679, line: 190, size: 1152, elements: !4161)
!4161 = !{!4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4253, !4254, !4255, !4256, !4257, !4260}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4160, file: !679, line: 191, baseType: !385, size: 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4160, file: !679, line: 192, baseType: !385, size: 32, offset: 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4160, file: !679, line: 202, baseType: !4159, size: 64, offset: 64)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4160, file: !679, line: 203, baseType: !295, size: 64, offset: 128)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4160, file: !679, line: 205, baseType: !876, size: 192, align: 64, offset: 192)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4160, file: !679, line: 207, baseType: !2667, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4160, file: !679, line: 208, baseType: !23, size: 32, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_member, scope: !4160, file: !679, line: 209, baseType: !4170, size: 256, offset: 512)
!4170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4160, file: !679, line: 209, size: 256, elements: !4171)
!4171 = !{!4172, !4181, !4185}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4170, file: !679, line: 210, baseType: !4173, size: 256)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !679, line: 153, size: 256, elements: !4174)
!4174 = !{!4175, !4176, !4177, !4180}
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4173, file: !679, line: 154, baseType: !298, size: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4173, file: !679, line: 156, baseType: !1713, size: 64, offset: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4173, file: !679, line: 162, baseType: !4178, size: 64, offset: 128)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !679, line: 162, flags: DIFlagFwdDecl)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4173, file: !679, line: 167, baseType: !298, size: 64, offset: 192)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4170, file: !679, line: 211, baseType: !4182, size: 64)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !679, line: 170, size: 64, elements: !4183)
!4183 = !{!4184}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4182, file: !679, line: 171, baseType: !4159, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4170, file: !679, line: 212, baseType: !4186, size: 256)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !679, line: 174, size: 256, elements: !4187)
!4187 = !{!4188, !4248, !4251, !4252}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4186, file: !679, line: 175, baseType: !4189, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4191)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !679, line: 271, size: 768, elements: !4192)
!4192 = !{!4193, !4213, !4217, !4221, !4225, !4229, !4233, !4237, !4238, !4239, !4240, !4244}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4191, file: !679, line: 276, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!125, !4197}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !679, line: 251, size: 1216, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4198, file: !679, line: 253, baseType: !4159, size: 64)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4198, file: !679, line: 254, baseType: !1854, size: 64, offset: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4198, file: !679, line: 255, baseType: !1204, size: 64, offset: 128)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4198, file: !679, line: 256, baseType: !168, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4198, file: !679, line: 259, baseType: !764, size: 256, offset: 256)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4198, file: !679, line: 260, baseType: !764, size: 256, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4198, file: !679, line: 261, baseType: !125, size: 32, offset: 768)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4198, file: !679, line: 262, baseType: !266, size: 128, offset: 832)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4198, file: !679, line: 263, baseType: !431, size: 64, offset: 960)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4198, file: !679, line: 265, baseType: !478, size: 64, offset: 1024)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4198, file: !679, line: 266, baseType: !844, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4198, file: !679, line: 267, baseType: !844, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4198, file: !679, line: 268, baseType: !2251, size: 64, offset: 1152)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4191, file: !679, line: 277, baseType: !4214, size: 64, offset: 64)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{null, !4197}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4191, file: !679, line: 290, baseType: !4218, size: 64, offset: 128)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!125, !1204, !168}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4191, file: !679, line: 292, baseType: !4222, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!168, !1204, !2135}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4191, file: !679, line: 293, baseType: !4226, size: 64, offset: 256)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!168, !1204, !168, !2135}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4191, file: !679, line: 294, baseType: !4230, size: 64, offset: 320)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{null, !1204, !168}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4191, file: !679, line: 296, baseType: !4234, size: 64, offset: 384)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!463, !4197, !431, !478, !664}
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4191, file: !679, line: 306, baseType: !478, size: 64, offset: 448)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4191, file: !679, line: 313, baseType: !844, size: 8, offset: 512)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4191, file: !679, line: 314, baseType: !4234, size: 64, offset: 576)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4191, file: !679, line: 317, baseType: !4241, size: 64, offset: 640)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!2193, !4197, !2195}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4191, file: !679, line: 320, baseType: !4245, size: 64, offset: 704)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{!125, !4197, !2206}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4186, file: !679, line: 176, baseType: !4249, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !679, line: 35, flags: DIFlagFwdDecl)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4186, file: !679, line: 177, baseType: !664, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4186, file: !679, line: 178, baseType: !4159, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4160, file: !679, line: 215, baseType: !168, size: 64, offset: 768)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4160, file: !679, line: 221, baseType: !291, size: 64, offset: 832)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4160, file: !679, line: 223, baseType: !344, size: 16, offset: 896)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4160, file: !679, line: 224, baseType: !473, size: 16, offset: 912)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4160, file: !679, line: 225, baseType: !4258, size: 64, offset: 960)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !679, line: 36, flags: DIFlagFwdDecl)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4160, file: !679, line: 227, baseType: !984, size: 128, align: 64, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !352, file: !353, line: 71, baseType: !4262, size: 32, offset: 448)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4263, line: 19, size: 32, elements: !4264)
!4263 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4264 = !{!4265}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4262, file: !4263, line: 20, baseType: !1544, size: 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !352, file: !353, line: 73, baseType: !23, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !352, file: !353, line: 74, baseType: !23, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !352, file: !353, line: 75, baseType: !23, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !352, file: !353, line: 76, baseType: !23, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !352, file: !353, line: 77, baseType: !23, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !349, file: !110, line: 707, baseType: !348, size: 64, offset: 512)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !349, file: !110, line: 709, baseType: !4273, size: 64, offset: 576)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !110, line: 37, flags: DIFlagFwdDecl)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !349, file: !110, line: 711, baseType: !295, size: 64, offset: 640)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !110, line: 712, baseType: !4277, size: 64, offset: 704)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4279)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !110, line: 89, size: 384, elements: !4280)
!4280 = !{!4281, !4282, !4283, !4289, !4294, !4298}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4279, file: !110, line: 90, baseType: !295, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4279, file: !110, line: 91, baseType: !482, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4279, file: !110, line: 92, baseType: !4284, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!125, !4287, !426}
!4287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4288, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4279, file: !110, line: 93, baseType: !4290, size: 64, offset: 192)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!431, !4287, !4293, !4156, !4157}
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4279, file: !110, line: 95, baseType: !4295, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{null, !348}
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4279, file: !110, line: 97, baseType: !4299, size: 64, offset: 320)
!4299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4301)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !117, line: 286, size: 1472, elements: !4302)
!4302 = !{!4303, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4301, file: !117, line: 287, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!125, !348}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4301, file: !117, line: 288, baseType: !4295, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4301, file: !117, line: 289, baseType: !4304, size: 64, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4301, file: !117, line: 290, baseType: !4304, size: 64, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4301, file: !117, line: 291, baseType: !4304, size: 64, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4301, file: !117, line: 292, baseType: !4304, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4301, file: !117, line: 293, baseType: !4304, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4301, file: !117, line: 294, baseType: !4304, size: 64, offset: 448)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4301, file: !117, line: 295, baseType: !4304, size: 64, offset: 512)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4301, file: !117, line: 296, baseType: !4304, size: 64, offset: 576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4301, file: !117, line: 297, baseType: !4304, size: 64, offset: 640)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4301, file: !117, line: 298, baseType: !4304, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4301, file: !117, line: 299, baseType: !4304, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4301, file: !117, line: 300, baseType: !4304, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4301, file: !117, line: 301, baseType: !4304, size: 64, offset: 896)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4301, file: !117, line: 302, baseType: !4304, size: 64, offset: 960)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4301, file: !117, line: 303, baseType: !4304, size: 64, offset: 1024)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4301, file: !117, line: 304, baseType: !4304, size: 64, offset: 1088)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4301, file: !117, line: 305, baseType: !4304, size: 64, offset: 1152)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4301, file: !117, line: 306, baseType: !4304, size: 64, offset: 1216)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4301, file: !117, line: 307, baseType: !4304, size: 64, offset: 1280)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4301, file: !117, line: 308, baseType: !4304, size: 64, offset: 1344)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4301, file: !117, line: 309, baseType: !4304, size: 64, offset: 1408)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !349, file: !110, line: 714, baseType: !4330, size: 64, offset: 768)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4332)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4333, line: 80, size: 1344, elements: !4334)
!4333 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4413}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4332, file: !4333, line: 81, baseType: !295, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4332, file: !4333, line: 82, baseType: !295, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4332, file: !4333, line: 83, baseType: !482, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4332, file: !4333, line: 84, baseType: !482, size: 64, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4332, file: !4333, line: 85, baseType: !482, size: 64, offset: 256)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4332, file: !4333, line: 87, baseType: !4341, size: 64, offset: 320)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!125, !348, !4344}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !104, line: 96, size: 1152, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4350, !4351, !4352, !4353, !4366, !4376, !4377, !4378, !4379, !4380, !4388, !4389, !4390, !4391, !4392, !4393}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4345, file: !104, line: 97, baseType: !295, size: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4345, file: !104, line: 98, baseType: !4330, size: 64, offset: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4345, file: !104, line: 100, baseType: !693, size: 64, offset: 128)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4345, file: !104, line: 101, baseType: !295, size: 64, offset: 192)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4345, file: !104, line: 103, baseType: !844, size: 8, offset: 256)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4345, file: !104, line: 104, baseType: !103, size: 32, offset: 288)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4345, file: !104, line: 106, baseType: !4354, size: 64, offset: 320)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4356)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4357, line: 282, size: 1600, elements: !4358)
!4357 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4358 = !{!4359, !4360, !4361, !4365}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4356, file: !4357, line: 283, baseType: !227, size: 256)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4356, file: !4357, line: 284, baseType: !227, size: 256, offset: 256)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4356, file: !4357, line: 285, baseType: !4362, size: 1024, offset: 512)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4363)
!4363 = !{!4364}
!4364 = !DISubrange(count: 128)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4356, file: !4357, line: 286, baseType: !2667, size: 64, offset: 1536)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4345, file: !104, line: 107, baseType: !4367, size: 64, offset: 384)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4369)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4357, line: 217, size: 256, elements: !4370)
!4370 = !{!4371, !4372, !4374, !4375}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4369, file: !4357, line: 218, baseType: !3625, size: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4369, file: !4357, line: 219, baseType: !4373, size: 64, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4357, line: 15, baseType: !298)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4369, file: !4357, line: 220, baseType: !172, size: 32, offset: 192)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4369, file: !4357, line: 221, baseType: !172, size: 32, offset: 224)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4345, file: !104, line: 109, baseType: !4304, size: 64, offset: 448)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4345, file: !104, line: 110, baseType: !4295, size: 64, offset: 512)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4345, file: !104, line: 111, baseType: !4304, size: 64, offset: 576)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4345, file: !104, line: 112, baseType: !4295, size: 64, offset: 640)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4345, file: !104, line: 113, baseType: !4381, size: 64, offset: 704)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!125, !348, !4384}
!4384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !117, line: 60, baseType: !4385)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !117, line: 58, size: 32, elements: !4386)
!4386 = !{!4387}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4385, file: !117, line: 59, baseType: !125, size: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4345, file: !104, line: 114, baseType: !4304, size: 64, offset: 768)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4345, file: !104, line: 115, baseType: !482, size: 64, offset: 832)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4345, file: !104, line: 116, baseType: !482, size: 64, offset: 896)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4345, file: !104, line: 118, baseType: !4299, size: 64, offset: 960)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4345, file: !104, line: 119, baseType: !4295, size: 64, offset: 1024)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4345, file: !104, line: 121, baseType: !4394, size: 64, offset: 1088)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !104, line: 121, flags: DIFlagFwdDecl)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4332, file: !4333, line: 88, baseType: !4284, size: 64, offset: 384)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4332, file: !4333, line: 89, baseType: !4304, size: 64, offset: 448)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4332, file: !4333, line: 90, baseType: !4295, size: 64, offset: 512)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4332, file: !4333, line: 91, baseType: !4295, size: 64, offset: 576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4332, file: !4333, line: 92, baseType: !4295, size: 64, offset: 640)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4332, file: !4333, line: 94, baseType: !4304, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4332, file: !4333, line: 95, baseType: !4304, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4332, file: !4333, line: 97, baseType: !4381, size: 64, offset: 832)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4332, file: !4333, line: 98, baseType: !4304, size: 64, offset: 896)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4332, file: !4333, line: 100, baseType: !4304, size: 64, offset: 960)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4332, file: !4333, line: 102, baseType: !4304, size: 64, offset: 1024)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4332, file: !4333, line: 103, baseType: !4295, size: 64, offset: 1088)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4332, file: !4333, line: 105, baseType: !4299, size: 64, offset: 1152)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4332, file: !4333, line: 107, baseType: !4410, size: 64, offset: 1216)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4412)
!4412 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4333, line: 107, flags: DIFlagFwdDecl)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4332, file: !4333, line: 109, baseType: !844, size: 8, offset: 1280)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !349, file: !110, line: 715, baseType: !4344, size: 64, offset: 832)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !349, file: !110, line: 717, baseType: !168, size: 64, offset: 896)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !349, file: !110, line: 719, baseType: !168, size: 64, offset: 960)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !349, file: !110, line: 721, baseType: !764, size: 256, offset: 1024)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !349, file: !110, line: 725, baseType: !4419, size: 448, offset: 1280)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !110, line: 517, size: 448, elements: !4420)
!4420 = !{!4421, !4422, !4423, !4424}
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4419, file: !110, line: 518, baseType: !266, size: 128)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4419, file: !110, line: 519, baseType: !266, size: 128, offset: 128)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4419, file: !110, line: 520, baseType: !266, size: 128, offset: 256)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4419, file: !110, line: 521, baseType: !109, size: 32, offset: 384)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !349, file: !110, line: 726, baseType: !4426, size: 2496, offset: 1728)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !117, line: 663, size: 2496, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4510, !4514}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4426, file: !117, line: 664, baseType: !4384, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4426, file: !117, line: 665, baseType: !23, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4426, file: !117, line: 666, baseType: !23, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4426, file: !117, line: 667, baseType: !844, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4426, file: !117, line: 668, baseType: !844, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4426, file: !117, line: 669, baseType: !844, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4426, file: !117, line: 670, baseType: !844, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4426, file: !117, line: 671, baseType: !844, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4426, file: !117, line: 672, baseType: !844, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4426, file: !117, line: 673, baseType: !844, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4426, file: !117, line: 674, baseType: !844, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4426, file: !117, line: 675, baseType: !170, size: 32, offset: 64)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4426, file: !117, line: 676, baseType: !365, size: 32, offset: 96)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4426, file: !117, line: 678, baseType: !266, size: 128, offset: 128)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4426, file: !117, line: 679, baseType: !713, size: 256, offset: 256)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4426, file: !117, line: 680, baseType: !4444, size: 64, offset: 512)
!4444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4445, size: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4446, line: 43, size: 1536, elements: !4447)
!4446 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4447 = !{!4448, !4449, !4450, !4451, !4452, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4445, file: !4446, line: 44, baseType: !295, size: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4445, file: !4446, line: 45, baseType: !125, size: 32, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4445, file: !4446, line: 46, baseType: !266, size: 128, offset: 128)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4445, file: !4446, line: 47, baseType: !365, size: 32, offset: 256)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4445, file: !4446, line: 48, baseType: !4453, size: 64, offset: 320)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !117, line: 629, flags: DIFlagFwdDecl)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4445, file: !4446, line: 49, baseType: !1004, size: 320, offset: 384)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4445, file: !4446, line: 50, baseType: !298, size: 64, offset: 704)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4445, file: !4446, line: 51, baseType: !1659, size: 64, offset: 768)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4445, file: !4446, line: 52, baseType: !1659, size: 64, offset: 832)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4445, file: !4446, line: 53, baseType: !1659, size: 64, offset: 896)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4445, file: !4446, line: 54, baseType: !1659, size: 64, offset: 960)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4445, file: !4446, line: 55, baseType: !1659, size: 64, offset: 1024)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4445, file: !4446, line: 56, baseType: !298, size: 64, offset: 1088)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4445, file: !4446, line: 57, baseType: !298, size: 64, offset: 1152)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4445, file: !4446, line: 58, baseType: !298, size: 64, offset: 1216)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4445, file: !4446, line: 59, baseType: !298, size: 64, offset: 1280)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4445, file: !4446, line: 60, baseType: !298, size: 64, offset: 1344)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4445, file: !4446, line: 61, baseType: !348, size: 64, offset: 1408)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4445, file: !4446, line: 62, baseType: !844, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4445, file: !4446, line: 63, baseType: !844, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4426, file: !117, line: 681, baseType: !844, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4426, file: !117, line: 682, baseType: !844, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4426, file: !117, line: 683, baseType: !844, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4426, file: !117, line: 684, baseType: !23, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4426, file: !117, line: 685, baseType: !23, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4426, file: !117, line: 690, baseType: !1651, size: 512, offset: 640)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4426, file: !117, line: 691, baseType: !291, size: 64, offset: 1152)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4426, file: !117, line: 692, baseType: !1022, size: 256, offset: 1216)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4426, file: !117, line: 693, baseType: !1517, size: 192, offset: 1472)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4426, file: !117, line: 694, baseType: !4453, size: 64, offset: 1664)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4426, file: !117, line: 695, baseType: !385, size: 32, offset: 1728)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4426, file: !117, line: 696, baseType: !385, size: 32, offset: 1760)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4426, file: !117, line: 697, baseType: !23, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4426, file: !117, line: 698, baseType: !23, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4426, file: !117, line: 699, baseType: !23, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4426, file: !117, line: 700, baseType: !23, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4426, file: !117, line: 701, baseType: !23, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4426, file: !117, line: 702, baseType: !23, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4426, file: !117, line: 703, baseType: !844, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4426, file: !117, line: 704, baseType: !23, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4426, file: !117, line: 705, baseType: !23, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4426, file: !117, line: 706, baseType: !23, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4426, file: !117, line: 707, baseType: !23, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4426, file: !117, line: 708, baseType: !23, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4426, file: !117, line: 709, baseType: !23, size: 32, offset: 1824)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4426, file: !117, line: 710, baseType: !116, size: 32, offset: 1856)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4426, file: !117, line: 711, baseType: !124, size: 32, offset: 1888)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4426, file: !117, line: 712, baseType: !124, size: 32, offset: 1920)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4426, file: !117, line: 713, baseType: !125, size: 32, offset: 1952)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4426, file: !117, line: 714, baseType: !125, size: 32, offset: 1984)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4426, file: !117, line: 715, baseType: !291, size: 64, offset: 2048)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4426, file: !117, line: 716, baseType: !291, size: 64, offset: 2112)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4426, file: !117, line: 717, baseType: !291, size: 64, offset: 2176)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4426, file: !117, line: 718, baseType: !291, size: 64, offset: 2240)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4426, file: !117, line: 720, baseType: !4505, size: 64, offset: 2304)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !117, line: 632, size: 64, elements: !4507)
!4507 = !{!4508, !4509}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4506, file: !117, line: 633, baseType: !365, size: 32)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4506, file: !117, line: 634, baseType: !23, size: 32, offset: 32)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4426, file: !117, line: 721, baseType: !4511, size: 64, offset: 2368)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{null, !348, !760}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4426, file: !117, line: 722, baseType: !4515, size: 64, offset: 2432)
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4516, size: 64)
!4516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !117, line: 722, flags: DIFlagFwdDecl)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !349, file: !110, line: 727, baseType: !4518, size: 64, offset: 4224)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !117, line: 742, size: 1792, elements: !4520)
!4520 = !{!4521, !4522, !4523, !4527, !4528, !4529}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4519, file: !117, line: 743, baseType: !4301, size: 1472)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4519, file: !117, line: 744, baseType: !4304, size: 64, offset: 1472)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4519, file: !117, line: 745, baseType: !4524, size: 64, offset: 1536)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{null, !348, !844}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4519, file: !117, line: 746, baseType: !4304, size: 64, offset: 1600)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4519, file: !117, line: 747, baseType: !4295, size: 64, offset: 1664)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4519, file: !117, line: 748, baseType: !4295, size: 64, offset: 1728)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !349, file: !110, line: 736, baseType: !4531, size: 128, offset: 4288)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !110, line: 529, size: 128, elements: !4532)
!4532 = !{!4533, !4537}
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4531, file: !110, line: 531, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4536, line: 13, flags: DIFlagFwdDecl)
!4536 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4531, file: !110, line: 532, baseType: !4538, size: 64, offset: 64)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !110, line: 49, flags: DIFlagFwdDecl)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !349, file: !110, line: 738, baseType: !4541, size: 64, offset: 4416)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4543)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !110, line: 738, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !349, file: !110, line: 740, baseType: !4545, size: 64, offset: 4480)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !349, file: !110, line: 741, baseType: !291, size: 64, offset: 4544)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !349, file: !110, line: 746, baseType: !291, size: 64, offset: 4608)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !349, file: !110, line: 747, baseType: !4549, size: 64, offset: 4672)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4551 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !110, line: 747, flags: DIFlagFwdDecl)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !349, file: !110, line: 749, baseType: !4553, size: 64, offset: 4736)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !110, line: 428, size: 128, elements: !4555)
!4555 = !{!4556, !4557, !4558}
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4554, file: !110, line: 433, baseType: !23, size: 32)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4554, file: !110, line: 434, baseType: !23, size: 32, offset: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4554, file: !110, line: 435, baseType: !298, size: 64, offset: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !349, file: !110, line: 751, baseType: !266, size: 128, offset: 4800)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !349, file: !110, line: 762, baseType: !4561, size: 64, offset: 4928)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !110, line: 762, flags: DIFlagFwdDecl)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !349, file: !110, line: 770, baseType: !4564, offset: 4992)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4565, line: 5, elements: !1051)
!4565 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !349, file: !110, line: 772, baseType: !4567, size: 64, offset: 4992)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4569, line: 18, flags: DIFlagFwdDecl)
!4569 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !349, file: !110, line: 773, baseType: !4571, size: 64, offset: 5056)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4573, line: 41, size: 512, elements: !4574)
!4573 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4574 = !{!4575, !4576, !4670, !4671, !4672, !4673}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4572, file: !4573, line: 42, baseType: !4571, size: 64)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4572, file: !4573, line: 43, baseType: !4577, size: 64, offset: 64)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4579)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4573, line: 125, size: 1408, elements: !4580)
!4580 = !{!4581, !4585, !4589, !4595, !4599, !4600, !4605, !4609, !4613, !4617, !4621, !4622, !4626, !4630, !4634, !4645, !4646, !4647, !4648, !4658, !4662, !4666}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4579, file: !4573, line: 126, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!4571, !4571}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4579, file: !4573, line: 127, baseType: !4586, size: 64, offset: 64)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{null, !4571}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4579, file: !4573, line: 128, baseType: !4590, size: 64, offset: 128)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!844, !4593}
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4572)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4579, file: !4573, line: 129, baseType: !4596, size: 64, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!2667, !4593, !4287}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4579, file: !4573, line: 131, baseType: !4590, size: 64, offset: 256)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4579, file: !4573, line: 133, baseType: !4601, size: 64, offset: 320)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!4604, !4593}
!4604 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4573, line: 132, flags: DIFlagFwdDecl)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4579, file: !4573, line: 134, baseType: !4606, size: 64, offset: 384)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!844, !4593, !295}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4579, file: !4573, line: 136, baseType: !4610, size: 64, offset: 448)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!125, !4593, !295, !23, !168, !478}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4579, file: !4573, line: 141, baseType: !4614, size: 64, offset: 512)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!125, !4593, !295, !1099, !478}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4579, file: !4573, line: 144, baseType: !4618, size: 64, offset: 576)
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DISubroutineType(types: !4620)
!4620 = !{!295, !4593}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4579, file: !4573, line: 145, baseType: !4618, size: 64, offset: 640)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4579, file: !4573, line: 146, baseType: !4623, size: 64, offset: 704)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!4571, !4593}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4579, file: !4573, line: 148, baseType: !4627, size: 64, offset: 768)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!4571, !4593, !4571}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4579, file: !4573, line: 151, baseType: !4631, size: 64, offset: 832)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!4571, !4593, !295}
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4579, file: !4573, line: 153, baseType: !4635, size: 64, offset: 896)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DISubroutineType(types: !4637)
!4637 = !{!125, !4593, !295, !295, !23, !23, !4638}
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4573, line: 94, size: 640, elements: !4640)
!4640 = !{!4641, !4642, !4643}
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4639, file: !4573, line: 95, baseType: !4571, size: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4639, file: !4573, line: 96, baseType: !23, size: 32, offset: 64)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4639, file: !4573, line: 97, baseType: !4644, size: 512, offset: 128)
!4644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 512, elements: !1694)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4579, file: !4573, line: 158, baseType: !4627, size: 64, offset: 960)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4579, file: !4573, line: 161, baseType: !4623, size: 64, offset: 1024)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4579, file: !4573, line: 163, baseType: !4582, size: 64, offset: 1088)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4579, file: !4573, line: 164, baseType: !4649, size: 64, offset: 1152)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!125, !4593, !4652}
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4573, line: 73, size: 128, elements: !4654)
!4654 = !{!4655, !4656, !4657}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4653, file: !4573, line: 74, baseType: !23, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4653, file: !4573, line: 75, baseType: !23, size: 32, offset: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4653, file: !4573, line: 76, baseType: !4593, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4579, file: !4573, line: 166, baseType: !4659, size: 64, offset: 1216)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!168, !4571, !125}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4579, file: !4573, line: 167, baseType: !4663, size: 64, offset: 1280)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!125, !4593, !23}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4579, file: !4573, line: 168, baseType: !4667, size: 64, offset: 1344)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!125, !4571}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4572, file: !4573, line: 44, baseType: !348, size: 64, offset: 128)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4572, file: !4573, line: 45, baseType: !266, size: 128, offset: 192)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4572, file: !4573, line: 46, baseType: !266, size: 128, offset: 320)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4572, file: !4573, line: 47, baseType: !393, size: 8, offset: 448)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !349, file: !110, line: 776, baseType: !125, size: 32, offset: 5120)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !349, file: !110, line: 778, baseType: !659, size: 32, offset: 5152)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !349, file: !110, line: 779, baseType: !170, size: 32, offset: 5184)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !349, file: !110, line: 781, baseType: !365, size: 32, offset: 5216)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !349, file: !110, line: 782, baseType: !266, size: 128, offset: 5248)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !349, file: !110, line: 784, baseType: !4680, size: 64, offset: 5376)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4682)
!4682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4683, line: 52, size: 768, elements: !4684)
!4683 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4693, !4697, !4698, !4699, !4700, !4704, !4708}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4682, file: !4683, line: 53, baseType: !295, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4682, file: !4683, line: 55, baseType: !482, size: 64, offset: 64)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4682, file: !4683, line: 56, baseType: !482, size: 64, offset: 128)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4682, file: !4683, line: 58, baseType: !4284, size: 64, offset: 192)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4682, file: !4683, line: 59, baseType: !4690, size: 64, offset: 256)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!431, !4287, !4293}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4682, file: !4683, line: 61, baseType: !4694, size: 64, offset: 320)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{null, !4680}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4682, file: !4683, line: 62, baseType: !4295, size: 64, offset: 384)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4682, file: !4683, line: 64, baseType: !4304, size: 64, offset: 448)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4682, file: !4683, line: 66, baseType: !4124, size: 64, offset: 512)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4682, file: !4683, line: 67, baseType: !4701, size: 64, offset: 576)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{!2667, !4287}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4682, file: !4683, line: 69, baseType: !4705, size: 64, offset: 640)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DISubroutineType(types: !4707)
!4707 = !{null, !4287, !4156, !4157}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4682, file: !4683, line: 71, baseType: !4299, size: 64, offset: 704)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !349, file: !110, line: 785, baseType: !482, size: 64, offset: 5440)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !349, file: !110, line: 787, baseType: !4295, size: 64, offset: 5504)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !349, file: !110, line: 788, baseType: !4712, size: 64, offset: 5568)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !110, line: 46, flags: DIFlagFwdDecl)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !349, file: !110, line: 789, baseType: !4715, size: 64, offset: 5632)
!4715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4716, size: 64)
!4716 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !110, line: 48, flags: DIFlagFwdDecl)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !349, file: !110, line: 791, baseType: !4718, size: 64, offset: 5696)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !110, line: 597, size: 128, elements: !4720)
!4720 = !{!4721, !4722, !4723, !4724, !4725}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4719, file: !110, line: 598, baseType: !132, size: 32)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4719, file: !110, line: 599, baseType: !141, size: 32, offset: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4719, file: !110, line: 600, baseType: !146, size: 32, offset: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4719, file: !110, line: 601, baseType: !844, size: 8, offset: 96)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4719, file: !110, line: 602, baseType: !844, size: 8, offset: 104)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !349, file: !110, line: 793, baseType: !151, size: 32, offset: 5760)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !349, file: !110, line: 795, baseType: !844, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !349, file: !110, line: 796, baseType: !844, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !349, file: !110, line: 797, baseType: !844, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !349, file: !110, line: 798, baseType: !844, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !349, file: !110, line: 799, baseType: !844, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !274, file: !158, line: 676, baseType: !349, size: 5824, offset: 2240)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !274, file: !158, line: 677, baseType: !496, size: 64, offset: 8064)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !274, file: !158, line: 678, baseType: !496, size: 64, offset: 8128)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !274, file: !158, line: 679, baseType: !23, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !274, file: !158, line: 680, baseType: !23, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !263, file: !158, line: 325, baseType: !273, size: 64, offset: 192)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !263, file: !158, line: 327, baseType: !168, size: 64, offset: 256)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !263, file: !158, line: 328, baseType: !334, size: 64, offset: 320)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !263, file: !158, line: 329, baseType: !4741, size: 64, offset: 384)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !158, line: 76, size: 832, elements: !4743)
!4743 = !{!4744, !4745, !4746, !4749, !4750}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4742, file: !158, line: 77, baseType: !273, size: 64)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4742, file: !158, line: 78, baseType: !266, size: 128, offset: 64)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4742, file: !158, line: 79, baseType: !4747, size: 64, offset: 192)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !158, line: 79, flags: DIFlagFwdDecl)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4742, file: !158, line: 80, baseType: !338, size: 8, offset: 256)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4742, file: !158, line: 81, baseType: !352, size: 512, offset: 320)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !263, file: !158, line: 331, baseType: !23, size: 32, offset: 448)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !263, file: !158, line: 332, baseType: !344, size: 16, offset: 480)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !263, file: !158, line: 333, baseType: !344, size: 16, offset: 496)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !263, file: !158, line: 334, baseType: !344, size: 16, offset: 512)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !263, file: !158, line: 335, baseType: !344, size: 16, offset: 528)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !263, file: !158, line: 336, baseType: !23, size: 32, offset: 544)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !263, file: !158, line: 337, baseType: !393, size: 8, offset: 576)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !263, file: !158, line: 338, baseType: !393, size: 8, offset: 584)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !263, file: !158, line: 344, baseType: !4760, size: 64, offset: 640)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4762, line: 415, size: 64, elements: !4763)
!4762 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4763 = !{!4764, !4765, !4766}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4761, file: !4762, line: 416, baseType: !393, size: 8)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4761, file: !4762, line: 417, baseType: !393, size: 8, offset: 8)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4761, file: !4762, line: 418, baseType: !170, size: 32, offset: 32)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !263, file: !158, line: 345, baseType: !262, size: 64, offset: 704)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !263, file: !158, line: 347, baseType: !170, size: 32, offset: 768)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !263, file: !158, line: 348, baseType: !393, size: 8, offset: 800)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !263, file: !158, line: 349, baseType: !393, size: 8, offset: 808)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !263, file: !158, line: 350, baseType: !393, size: 8, offset: 816)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !263, file: !158, line: 351, baseType: !393, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !263, file: !158, line: 352, baseType: !393, size: 8, offset: 832)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !263, file: !158, line: 353, baseType: !393, size: 8, offset: 840)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !263, file: !158, line: 354, baseType: !400, size: 16, offset: 848)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !263, file: !158, line: 355, baseType: !1113, size: 64, offset: 896)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !263, file: !158, line: 357, baseType: !4778, size: 64, offset: 960)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !158, line: 918, size: 2368, elements: !4780)
!4780 = !{!4781, !4782, !4783, !4796, !4800, !4804, !4808, !4812, !4813, !4817, !4818, !4822, !4842, !4843, !4844, !4845, !4850}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4779, file: !158, line: 919, baseType: !266, size: 128)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4779, file: !158, line: 920, baseType: !295, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4779, file: !158, line: 921, baseType: !4784, size: 64, offset: 192)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4786)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4357, line: 44, size: 320, elements: !4787)
!4787 = !{!4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4786, file: !4357, line: 45, baseType: !172, size: 32)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4786, file: !4357, line: 45, baseType: !172, size: 32, offset: 32)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4786, file: !4357, line: 46, baseType: !172, size: 32, offset: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4786, file: !4357, line: 46, baseType: !172, size: 32, offset: 96)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4786, file: !4357, line: 47, baseType: !172, size: 32, offset: 128)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4786, file: !4357, line: 47, baseType: !172, size: 32, offset: 160)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4786, file: !4357, line: 48, baseType: !4373, size: 64, offset: 192)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4786, file: !4357, line: 49, baseType: !172, size: 32, offset: 256)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4779, file: !158, line: 922, baseType: !4797, size: 64, offset: 256)
!4797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4798, size: 64)
!4798 = !DISubroutineType(types: !4799)
!4799 = !{!125, !262, !4784}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4779, file: !158, line: 923, baseType: !4801, size: 64, offset: 320)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{null, !262}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4779, file: !158, line: 924, baseType: !4805, size: 64, offset: 384)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!125, !262, !4384}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4779, file: !158, line: 925, baseType: !4809, size: 64, offset: 448)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4810, size: 64)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!125, !262}
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4779, file: !158, line: 926, baseType: !4801, size: 64, offset: 512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4779, file: !158, line: 927, baseType: !4814, size: 64, offset: 576)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!125, !262, !125}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4779, file: !158, line: 928, baseType: !4814, size: 64, offset: 640)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4779, file: !158, line: 929, baseType: !4819, size: 64, offset: 704)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!170, !262}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4779, file: !158, line: 930, baseType: !4823, size: 64, offset: 768)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4825)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !158, line: 837, size: 448, elements: !4826)
!4826 = !{!4827, !4833, !4837, !4838, !4839, !4840, !4841}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4825, file: !158, line: 839, baseType: !4828, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!4831, !262, !4832}
!4831 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !158, line: 814, baseType: !23)
!4832 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !158, line: 196, baseType: !23)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4825, file: !158, line: 843, baseType: !4834, size: 64, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4835, size: 64)
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!4831, !262}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4825, file: !158, line: 846, baseType: !4834, size: 64, offset: 128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4825, file: !158, line: 849, baseType: !4801, size: 64, offset: 192)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4825, file: !158, line: 850, baseType: !4801, size: 64, offset: 256)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4825, file: !158, line: 853, baseType: !4801, size: 64, offset: 320)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4825, file: !158, line: 856, baseType: !4801, size: 64, offset: 384)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4779, file: !158, line: 931, baseType: !482, size: 64, offset: 832)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4779, file: !158, line: 932, baseType: !482, size: 64, offset: 896)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4779, file: !158, line: 933, baseType: !4345, size: 1152, offset: 960)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4779, file: !158, line: 934, baseType: !4846, size: 192, offset: 2112)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !158, line: 801, size: 192, elements: !4847)
!4847 = !{!4848, !4849}
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4846, file: !158, line: 802, baseType: !365, size: 32)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4846, file: !158, line: 803, baseType: !266, size: 128, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4779, file: !158, line: 935, baseType: !844, size: 8, offset: 2304)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !263, file: !158, line: 358, baseType: !291, size: 64, offset: 1024)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !263, file: !158, line: 364, baseType: !4554, size: 128, offset: 1088)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !263, file: !158, line: 366, baseType: !4854, size: 32, offset: 1216)
!4854 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !158, line: 171, baseType: !125)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !263, file: !158, line: 369, baseType: !393, size: 8, offset: 1248)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !263, file: !158, line: 370, baseType: !23, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !263, file: !158, line: 371, baseType: !23, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !263, file: !158, line: 373, baseType: !23, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !263, file: !158, line: 374, baseType: !23, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !263, file: !158, line: 375, baseType: !23, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !263, file: !158, line: 376, baseType: !23, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !263, file: !158, line: 377, baseType: !23, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !263, file: !158, line: 378, baseType: !23, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !263, file: !158, line: 379, baseType: !23, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !263, file: !158, line: 380, baseType: !23, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !263, file: !158, line: 382, baseType: !23, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !263, file: !158, line: 383, baseType: !23, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !263, file: !158, line: 384, baseType: !23, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !263, file: !158, line: 385, baseType: !23, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !263, file: !158, line: 388, baseType: !23, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !263, file: !158, line: 390, baseType: !23, size: 32, offset: 1280)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !263, file: !158, line: 391, baseType: !23, size: 32, offset: 1312)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !263, file: !158, line: 394, baseType: !4874, size: 64, offset: 1344)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !158, line: 316, flags: DIFlagFwdDecl)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !263, file: !158, line: 395, baseType: !400, size: 16, offset: 1408)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !263, file: !158, line: 396, baseType: !23, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !263, file: !158, line: 399, baseType: !23, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !263, file: !158, line: 400, baseType: !23, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !263, file: !158, line: 402, baseType: !4832, size: 32, offset: 1440)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !263, file: !158, line: 403, baseType: !349, size: 5824, offset: 1472)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !263, file: !158, line: 405, baseType: !125, size: 32, offset: 7296)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !263, file: !158, line: 411, baseType: !23, size: 32, offset: 7328)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !263, file: !158, line: 412, baseType: !4885, size: 5632, offset: 7360)
!4885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 5632, elements: !4886)
!4886 = !{!4887}
!4887 = !DISubrange(count: 11)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !263, file: !158, line: 413, baseType: !285, size: 512, offset: 12992)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !263, file: !158, line: 415, baseType: !844, size: 8, offset: 13504)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !263, file: !158, line: 417, baseType: !23, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !263, file: !158, line: 418, baseType: !23, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !263, file: !158, line: 419, baseType: !23, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !263, file: !158, line: 420, baseType: !23, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !263, file: !158, line: 421, baseType: !23, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !263, file: !158, line: 423, baseType: !23, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !263, file: !158, line: 424, baseType: !23, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !263, file: !158, line: 425, baseType: !23, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !263, file: !158, line: 426, baseType: !23, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !263, file: !158, line: 427, baseType: !23, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !263, file: !158, line: 428, baseType: !23, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !263, file: !158, line: 429, baseType: !23, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !263, file: !158, line: 430, baseType: !23, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !263, file: !158, line: 431, baseType: !23, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !263, file: !158, line: 432, baseType: !23, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !263, file: !158, line: 433, baseType: !23, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !263, file: !158, line: 434, baseType: !23, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !263, file: !158, line: 435, baseType: !23, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !263, file: !158, line: 436, baseType: !23, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !263, file: !158, line: 437, baseType: !23, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !263, file: !158, line: 438, baseType: !23, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !263, file: !158, line: 439, baseType: !23, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !263, file: !158, line: 440, baseType: !23, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !263, file: !158, line: 441, baseType: !23, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !263, file: !158, line: 442, baseType: !23, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !263, file: !158, line: 443, baseType: !23, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !263, file: !158, line: 451, baseType: !23, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !263, file: !158, line: 457, baseType: !23, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !263, file: !158, line: 458, baseType: !23, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !263, file: !158, line: 459, baseType: !23, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !263, file: !158, line: 460, baseType: !23, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !263, file: !158, line: 461, baseType: !23, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !263, file: !158, line: 462, baseType: !23, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !263, file: !158, line: 463, baseType: !23, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !263, file: !158, line: 464, baseType: !23, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !263, file: !158, line: 465, baseType: !23, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !263, file: !158, line: 466, baseType: !23, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !263, file: !158, line: 467, baseType: !23, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !263, file: !158, line: 468, baseType: !4929, size: 16, offset: 13552)
!4929 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !158, line: 222, baseType: !344)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !263, file: !158, line: 469, baseType: !385, size: 32, offset: 13568)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !263, file: !158, line: 471, baseType: !365, size: 32, offset: 13600)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !263, file: !158, line: 472, baseType: !4933, size: 512, offset: 13632)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 512, elements: !2844)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !263, file: !158, line: 473, baseType: !1132, size: 64, offset: 14144)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !263, file: !158, line: 474, baseType: !4936, size: 704, offset: 14208)
!4936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 704, elements: !4886)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !263, file: !158, line: 475, baseType: !4936, size: 704, offset: 14912)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !263, file: !158, line: 487, baseType: !168, size: 64, offset: 15616)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !263, file: !158, line: 488, baseType: !722, size: 32, offset: 15680)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !263, file: !158, line: 490, baseType: !4941, size: 320, offset: 15744)
!4941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !158, line: 309, size: 320, elements: !4942)
!4942 = !{!4943, !4944, !4945}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4941, file: !158, line: 310, baseType: !764, size: 256)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4941, file: !158, line: 311, baseType: !23, size: 32, offset: 256)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4941, file: !158, line: 312, baseType: !393, size: 8, offset: 288)
!4946 = !DIDerivedType(tag: DW_TAG_member, scope: !263, file: !158, line: 497, baseType: !4947, size: 64, offset: 16064)
!4947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !158, line: 497, size: 64, elements: !4948)
!4948 = !{!4949, !4976}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4947, file: !158, line: 498, baseType: !4950, size: 64)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4762, line: 294, size: 1024, elements: !4952)
!4952 = !{!4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4975}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4951, file: !4762, line: 295, baseType: !125, size: 32)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4951, file: !4762, line: 296, baseType: !125, size: 32, offset: 32)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4951, file: !4762, line: 297, baseType: !170, size: 32, offset: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4951, file: !4762, line: 298, baseType: !400, size: 16, offset: 96)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4951, file: !4762, line: 299, baseType: !400, size: 16, offset: 112)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4951, file: !4762, line: 300, baseType: !400, size: 16, offset: 128)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4951, file: !4762, line: 301, baseType: !400, size: 16, offset: 144)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4951, file: !4762, line: 302, baseType: !400, size: 16, offset: 160)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4951, file: !4762, line: 303, baseType: !400, size: 16, offset: 176)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4951, file: !4762, line: 304, baseType: !400, size: 16, offset: 192)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4951, file: !4762, line: 305, baseType: !170, size: 32, offset: 224)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4951, file: !4762, line: 306, baseType: !393, size: 8, offset: 256)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4951, file: !4762, line: 307, baseType: !393, size: 8, offset: 264)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4951, file: !4762, line: 308, baseType: !400, size: 16, offset: 272)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4951, file: !4762, line: 309, baseType: !262, size: 64, offset: 320)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4951, file: !4762, line: 310, baseType: !262, size: 64, offset: 384)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4951, file: !4762, line: 311, baseType: !170, size: 32, offset: 448)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4951, file: !4762, line: 312, baseType: !393, size: 8, offset: 480)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4951, file: !4762, line: 313, baseType: !400, size: 16, offset: 496)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4951, file: !4762, line: 314, baseType: !400, size: 16, offset: 512)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4951, file: !4762, line: 315, baseType: !4974, size: 384, offset: 576)
!4974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 384, elements: !1997)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4951, file: !4762, line: 316, baseType: !844, size: 8, offset: 960)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4947, file: !158, line: 499, baseType: !262, size: 64)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !263, file: !158, line: 501, baseType: !400, size: 16, offset: 16128)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !263, file: !158, line: 502, baseType: !393, size: 8, offset: 16144)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !263, file: !158, line: 505, baseType: !400, size: 16, offset: 16160)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !263, file: !158, line: 506, baseType: !170, size: 32, offset: 16192)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !263, file: !158, line: 507, baseType: !23, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !263, file: !158, line: 510, baseType: !400, size: 16, offset: 16240)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !263, file: !158, line: 511, baseType: !400, size: 16, offset: 16256)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !263, file: !158, line: 519, baseType: !400, size: 16, offset: 16272)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !263, file: !158, line: 520, baseType: !290, size: 64, offset: 16320)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !263, file: !158, line: 521, baseType: !478, size: 64, offset: 16384)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !263, file: !158, line: 526, baseType: !295, size: 64, offset: 16448)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !263, file: !158, line: 528, baseType: !298, size: 64, offset: 16512)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !263, file: !158, line: 531, baseType: !4990, size: 56, offset: 16576)
!4990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 56, elements: !885)
!4991 = !{!4992, !4993}
!4992 = !DILocalVariable(name: "dev", arg: 1, scope: !259, file: !2, line: 125, type: !262)
!4993 = !DILocalVariable(name: "resno", arg: 2, scope: !259, file: !2, line: 125, type: !125)
!4994 = !DILocation(line: 125, column: 42, scope: !259)
!4995 = !DILocation(line: 125, column: 51, scope: !259)
!4996 = !DILocation(line: 127, column: 6, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !259, file: !2, line: 127, column: 6)
!4998 = !DILocation(line: 127, column: 12, scope: !4997)
!4999 = !DILocation(line: 127, column: 6, scope: !259)
!5000 = !DILocation(line: 128, column: 27, scope: !4997)
!5001 = !DILocation(line: 128, column: 32, scope: !4997)
!5002 = !DILocation(line: 128, column: 3, scope: !4997)
!5003 = !DILocation(line: 133, column: 1, scope: !259)
!5004 = distinct !DISubprogram(name: "pci_std_update_resource", scope: !2, file: !2, line: 25, type: !260, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5005)
!5005 = !{!5006, !5007, !5008, !5014, !5015, !5016, !5017, !5018, !5019, !5020}
!5006 = !DILocalVariable(name: "dev", arg: 1, scope: !5004, file: !2, line: 25, type: !262)
!5007 = !DILocalVariable(name: "resno", arg: 2, scope: !5004, file: !2, line: 25, type: !125)
!5008 = !DILocalVariable(name: "region", scope: !5004, file: !2, line: 27, type: !5009)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus_region", file: !158, line: 796, size: 128, elements: !5010)
!5010 = !{!5011, !5013}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5009, file: !158, line: 797, baseType: !5012, size: 64)
!5012 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_addr_t", file: !158, line: 791, baseType: !291)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5009, file: !158, line: 798, baseType: !5012, size: 64, offset: 64)
!5014 = !DILocalVariable(name: "disable", scope: !5004, file: !2, line: 28, type: !844)
!5015 = !DILocalVariable(name: "cmd", scope: !5004, file: !2, line: 29, type: !400)
!5016 = !DILocalVariable(name: "new", scope: !5004, file: !2, line: 30, type: !170)
!5017 = !DILocalVariable(name: "check", scope: !5004, file: !2, line: 30, type: !170)
!5018 = !DILocalVariable(name: "mask", scope: !5004, file: !2, line: 30, type: !170)
!5019 = !DILocalVariable(name: "reg", scope: !5004, file: !2, line: 31, type: !125)
!5020 = !DILocalVariable(name: "res", scope: !5004, file: !2, line: 32, type: !284)
!5021 = !DILocation(line: 25, column: 53, scope: !5004)
!5022 = !DILocation(line: 25, column: 62, scope: !5004)
!5023 = !DILocation(line: 27, column: 2, scope: !5004)
!5024 = !DILocation(line: 27, column: 24, scope: !5004)
!5025 = !DILocation(line: 28, column: 2, scope: !5004)
!5026 = !DILocation(line: 28, column: 7, scope: !5004)
!5027 = !DILocation(line: 29, column: 2, scope: !5004)
!5028 = !DILocation(line: 29, column: 6, scope: !5004)
!5029 = !DILocation(line: 30, column: 2, scope: !5004)
!5030 = !DILocation(line: 30, column: 6, scope: !5004)
!5031 = !DILocation(line: 30, column: 11, scope: !5004)
!5032 = !DILocation(line: 30, column: 18, scope: !5004)
!5033 = !DILocation(line: 31, column: 2, scope: !5004)
!5034 = !DILocation(line: 31, column: 6, scope: !5004)
!5035 = !DILocation(line: 32, column: 2, scope: !5004)
!5036 = !DILocation(line: 32, column: 19, scope: !5004)
!5037 = !DILocation(line: 32, column: 25, scope: !5004)
!5038 = !DILocation(line: 32, column: 30, scope: !5004)
!5039 = !DILocation(line: 32, column: 41, scope: !5004)
!5040 = !DILocation(line: 32, column: 39, scope: !5004)
!5041 = !DILocation(line: 35, column: 6, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 35, column: 6)
!5043 = !DILocation(line: 35, column: 11, scope: !5042)
!5044 = !DILocation(line: 35, column: 6, scope: !5004)
!5045 = !DILocation(line: 36, column: 3, scope: !5042)
!5046 = !DILocation(line: 42, column: 7, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 42, column: 6)
!5048 = !DILocation(line: 42, column: 12, scope: !5047)
!5049 = !DILocation(line: 42, column: 6, scope: !5004)
!5050 = !DILocation(line: 43, column: 3, scope: !5047)
!5051 = !DILocation(line: 45, column: 6, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 45, column: 6)
!5053 = !DILocation(line: 45, column: 11, scope: !5052)
!5054 = !DILocation(line: 45, column: 17, scope: !5052)
!5055 = !DILocation(line: 45, column: 6, scope: !5004)
!5056 = !DILocation(line: 46, column: 3, scope: !5052)
!5057 = !DILocation(line: 53, column: 6, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 53, column: 6)
!5059 = !DILocation(line: 53, column: 11, scope: !5058)
!5060 = !DILocation(line: 53, column: 17, scope: !5058)
!5061 = !DILocation(line: 53, column: 6, scope: !5004)
!5062 = !DILocation(line: 54, column: 3, scope: !5058)
!5063 = !DILocation(line: 56, column: 26, scope: !5004)
!5064 = !DILocation(line: 56, column: 31, scope: !5004)
!5065 = !DILocation(line: 56, column: 45, scope: !5004)
!5066 = !DILocation(line: 56, column: 2, scope: !5004)
!5067 = !DILocation(line: 57, column: 15, scope: !5004)
!5068 = !DILocation(line: 57, column: 8, scope: !5004)
!5069 = !DILocation(line: 57, column: 6, scope: !5004)
!5070 = !DILocation(line: 59, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 59, column: 6)
!5072 = !DILocation(line: 59, column: 11, scope: !5071)
!5073 = !DILocation(line: 59, column: 17, scope: !5071)
!5074 = !DILocation(line: 59, column: 6, scope: !5004)
!5075 = !DILocation(line: 60, column: 8, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5071, file: !2, line: 59, column: 34)
!5077 = !DILocation(line: 61, column: 10, scope: !5076)
!5078 = !DILocation(line: 61, column: 15, scope: !5076)
!5079 = !DILocation(line: 61, column: 21, scope: !5076)
!5080 = !DILocation(line: 61, column: 7, scope: !5076)
!5081 = !DILocation(line: 62, column: 2, scope: !5076)
!5082 = !DILocation(line: 62, column: 13, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5071, file: !2, line: 62, column: 13)
!5084 = !DILocation(line: 62, column: 19, scope: !5083)
!5085 = !DILocation(line: 62, column: 13, scope: !5071)
!5086 = !DILocation(line: 63, column: 8, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5083, file: !2, line: 62, column: 40)
!5088 = !DILocation(line: 64, column: 2, scope: !5087)
!5089 = !DILocation(line: 65, column: 8, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5083, file: !2, line: 64, column: 9)
!5091 = !DILocation(line: 66, column: 10, scope: !5090)
!5092 = !DILocation(line: 66, column: 15, scope: !5090)
!5093 = !DILocation(line: 66, column: 21, scope: !5090)
!5094 = !DILocation(line: 66, column: 7, scope: !5090)
!5095 = !DILocation(line: 69, column: 6, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 69, column: 6)
!5097 = !DILocation(line: 69, column: 12, scope: !5096)
!5098 = !DILocation(line: 69, column: 6, scope: !5004)
!5099 = !DILocation(line: 70, column: 34, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5096, file: !2, line: 69, column: 32)
!5101 = !DILocation(line: 70, column: 32, scope: !5100)
!5102 = !DILocation(line: 70, column: 28, scope: !5100)
!5103 = !DILocation(line: 70, column: 7, scope: !5100)
!5104 = !DILocation(line: 71, column: 2, scope: !5100)
!5105 = !DILocation(line: 71, column: 13, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5096, file: !2, line: 71, column: 13)
!5107 = !DILocation(line: 71, column: 19, scope: !5106)
!5108 = !DILocation(line: 71, column: 13, scope: !5096)
!5109 = !DILocation(line: 81, column: 9, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5111, file: !2, line: 81, column: 7)
!5111 = distinct !DILexicalBlock(scope: !5106, file: !2, line: 71, column: 40)
!5112 = !DILocation(line: 81, column: 14, scope: !5110)
!5113 = !DILocation(line: 81, column: 20, scope: !5110)
!5114 = !DILocation(line: 81, column: 45, scope: !5110)
!5115 = !DILocation(line: 82, column: 8, scope: !5110)
!5116 = !DILocation(line: 82, column: 13, scope: !5110)
!5117 = !DILocation(line: 81, column: 7, scope: !5111)
!5118 = !DILocation(line: 83, column: 4, scope: !5110)
!5119 = !DILocation(line: 85, column: 9, scope: !5111)
!5120 = !DILocation(line: 85, column: 14, scope: !5111)
!5121 = !DILocation(line: 85, column: 7, scope: !5111)
!5122 = !DILocation(line: 86, column: 7, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5111, file: !2, line: 86, column: 7)
!5124 = !DILocation(line: 86, column: 12, scope: !5123)
!5125 = !DILocation(line: 86, column: 18, scope: !5123)
!5126 = !DILocation(line: 86, column: 7, scope: !5111)
!5127 = !DILocation(line: 87, column: 8, scope: !5123)
!5128 = !DILocation(line: 87, column: 4, scope: !5123)
!5129 = !DILocation(line: 88, column: 2, scope: !5111)
!5130 = !DILocation(line: 89, column: 3, scope: !5106)
!5131 = !DILocation(line: 96, column: 13, scope: !5004)
!5132 = !DILocation(line: 96, column: 18, scope: !5004)
!5133 = !DILocation(line: 96, column: 24, scope: !5004)
!5134 = !DILocation(line: 96, column: 45, scope: !5004)
!5135 = !DILocation(line: 96, column: 49, scope: !5004)
!5136 = !DILocation(line: 96, column: 54, scope: !5004)
!5137 = !DILocation(line: 96, column: 48, scope: !5004)
!5138 = !DILocation(line: 0, scope: !5004)
!5139 = !DILocation(line: 96, column: 10, scope: !5004)
!5140 = !DILocation(line: 97, column: 6, scope: !5141)
!5141 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 97, column: 6)
!5142 = !{i8 0, i8 2}
!5143 = !DILocation(line: 97, column: 6, scope: !5004)
!5144 = !DILocation(line: 98, column: 24, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5141, file: !2, line: 97, column: 15)
!5146 = !DILocation(line: 98, column: 3, scope: !5145)
!5147 = !DILocation(line: 99, column: 25, scope: !5145)
!5148 = !DILocation(line: 100, column: 11, scope: !5145)
!5149 = !DILocation(line: 100, column: 15, scope: !5145)
!5150 = !DILocation(line: 99, column: 3, scope: !5145)
!5151 = !DILocation(line: 101, column: 2, scope: !5145)
!5152 = !DILocation(line: 103, column: 25, scope: !5004)
!5153 = !DILocation(line: 103, column: 30, scope: !5004)
!5154 = !DILocation(line: 103, column: 35, scope: !5004)
!5155 = !DILocation(line: 103, column: 2, scope: !5004)
!5156 = !DILocation(line: 104, column: 24, scope: !5004)
!5157 = !DILocation(line: 104, column: 29, scope: !5004)
!5158 = !DILocation(line: 104, column: 2, scope: !5004)
!5159 = !DILocation(line: 106, column: 7, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 106, column: 6)
!5161 = !DILocation(line: 106, column: 13, scope: !5160)
!5162 = !DILocation(line: 106, column: 11, scope: !5160)
!5163 = !DILocation(line: 106, column: 22, scope: !5160)
!5164 = !DILocation(line: 106, column: 20, scope: !5160)
!5165 = !DILocation(line: 106, column: 6, scope: !5004)
!5166 = !DILocation(line: 107, column: 3, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5168, file: !2, line: 107, column: 3)
!5168 = distinct !DILexicalBlock(scope: !5160, file: !2, line: 106, column: 28)
!5169 = !DILocation(line: 107, column: 3, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5167, file: !2, line: 107, column: 3)
!5171 = !DILocation(line: 109, column: 2, scope: !5168)
!5172 = !DILocation(line: 111, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 111, column: 6)
!5174 = !DILocation(line: 111, column: 11, scope: !5173)
!5175 = !DILocation(line: 111, column: 17, scope: !5173)
!5176 = !DILocation(line: 111, column: 6, scope: !5004)
!5177 = !DILocation(line: 112, column: 16, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5173, file: !2, line: 111, column: 38)
!5179 = !DILocation(line: 112, column: 22, scope: !5178)
!5180 = !DILocation(line: 112, column: 28, scope: !5178)
!5181 = !DILocation(line: 112, column: 9, scope: !5178)
!5182 = !DILocation(line: 112, column: 7, scope: !5178)
!5183 = !DILocation(line: 113, column: 26, scope: !5178)
!5184 = !DILocation(line: 113, column: 31, scope: !5178)
!5185 = !DILocation(line: 113, column: 35, scope: !5178)
!5186 = !DILocation(line: 113, column: 40, scope: !5178)
!5187 = !DILocation(line: 113, column: 3, scope: !5178)
!5188 = !DILocation(line: 114, column: 25, scope: !5178)
!5189 = !DILocation(line: 114, column: 30, scope: !5178)
!5190 = !DILocation(line: 114, column: 34, scope: !5178)
!5191 = !DILocation(line: 114, column: 3, scope: !5178)
!5192 = !DILocation(line: 115, column: 7, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5178, file: !2, line: 115, column: 7)
!5194 = !DILocation(line: 115, column: 16, scope: !5193)
!5195 = !DILocation(line: 115, column: 13, scope: !5193)
!5196 = !DILocation(line: 115, column: 7, scope: !5178)
!5197 = !DILocation(line: 116, column: 4, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5199, file: !2, line: 116, column: 4)
!5199 = distinct !DILexicalBlock(scope: !5193, file: !2, line: 115, column: 21)
!5200 = !DILocation(line: 116, column: 4, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5198, file: !2, line: 116, column: 4)
!5202 = !DILocation(line: 118, column: 3, scope: !5199)
!5203 = !DILocation(line: 119, column: 2, scope: !5178)
!5204 = !DILocation(line: 121, column: 6, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5004, file: !2, line: 121, column: 6)
!5206 = !DILocation(line: 121, column: 6, scope: !5004)
!5207 = !DILocation(line: 122, column: 25, scope: !5205)
!5208 = !DILocation(line: 122, column: 43, scope: !5205)
!5209 = !DILocation(line: 122, column: 3, scope: !5205)
!5210 = !DILocation(line: 123, column: 1, scope: !5004)
!5211 = distinct !DISubprogram(name: "pci_claim_resource", scope: !2, file: !2, line: 135, type: !4815, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5212)
!5212 = !{!5213, !5214, !5215, !5216, !5217}
!5213 = !DILocalVariable(name: "dev", arg: 1, scope: !5211, file: !2, line: 135, type: !262)
!5214 = !DILocalVariable(name: "resource", arg: 2, scope: !5211, file: !2, line: 135, type: !125)
!5215 = !DILocalVariable(name: "res", scope: !5211, file: !2, line: 137, type: !284)
!5216 = !DILocalVariable(name: "root", scope: !5211, file: !2, line: 138, type: !284)
!5217 = !DILocalVariable(name: "conflict", scope: !5211, file: !2, line: 138, type: !284)
!5218 = !DILocation(line: 135, column: 40, scope: !5211)
!5219 = !DILocation(line: 135, column: 49, scope: !5211)
!5220 = !DILocation(line: 137, column: 2, scope: !5211)
!5221 = !DILocation(line: 137, column: 19, scope: !5211)
!5222 = !DILocation(line: 137, column: 26, scope: !5211)
!5223 = !DILocation(line: 137, column: 31, scope: !5211)
!5224 = !DILocation(line: 137, column: 40, scope: !5211)
!5225 = !DILocation(line: 138, column: 2, scope: !5211)
!5226 = !DILocation(line: 138, column: 19, scope: !5211)
!5227 = !DILocation(line: 138, column: 26, scope: !5211)
!5228 = !DILocation(line: 140, column: 6, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5211, file: !2, line: 140, column: 6)
!5230 = !DILocation(line: 140, column: 11, scope: !5229)
!5231 = !DILocation(line: 140, column: 17, scope: !5229)
!5232 = !DILocation(line: 140, column: 6, scope: !5211)
!5233 = !DILocation(line: 141, column: 3, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !2, line: 141, column: 3)
!5235 = distinct !DILexicalBlock(scope: !5229, file: !2, line: 140, column: 37)
!5236 = !DILocation(line: 141, column: 3, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5234, file: !2, line: 141, column: 3)
!5238 = !DILocation(line: 143, column: 3, scope: !5235)
!5239 = !DILocation(line: 151, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5211, file: !2, line: 151, column: 6)
!5241 = !DILocation(line: 151, column: 11, scope: !5240)
!5242 = !DILocation(line: 151, column: 17, scope: !5240)
!5243 = !DILocation(line: 151, column: 6, scope: !5211)
!5244 = !DILocation(line: 152, column: 3, scope: !5240)
!5245 = !DILocation(line: 154, column: 34, scope: !5211)
!5246 = !DILocation(line: 154, column: 39, scope: !5211)
!5247 = !DILocation(line: 154, column: 9, scope: !5211)
!5248 = !DILocation(line: 154, column: 7, scope: !5211)
!5249 = !DILocation(line: 155, column: 7, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5211, file: !2, line: 155, column: 6)
!5251 = !DILocation(line: 155, column: 6, scope: !5211)
!5252 = !DILocation(line: 156, column: 3, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5254, file: !2, line: 156, column: 3)
!5254 = distinct !DILexicalBlock(scope: !5250, file: !2, line: 155, column: 13)
!5255 = !DILocation(line: 156, column: 3, scope: !5256)
!5256 = distinct !DILexicalBlock(scope: !5253, file: !2, line: 156, column: 3)
!5257 = !DILocation(line: 158, column: 3, scope: !5254)
!5258 = !DILocation(line: 158, column: 8, scope: !5254)
!5259 = !DILocation(line: 158, column: 14, scope: !5254)
!5260 = !DILocation(line: 159, column: 3, scope: !5254)
!5261 = !DILocation(line: 162, column: 39, scope: !5211)
!5262 = !DILocation(line: 162, column: 45, scope: !5211)
!5263 = !DILocation(line: 162, column: 13, scope: !5211)
!5264 = !DILocation(line: 162, column: 11, scope: !5211)
!5265 = !DILocation(line: 163, column: 6, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5211, file: !2, line: 163, column: 6)
!5267 = !DILocation(line: 163, column: 6, scope: !5211)
!5268 = !DILocation(line: 164, column: 3, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !2, line: 164, column: 3)
!5270 = distinct !DILexicalBlock(scope: !5266, file: !2, line: 163, column: 16)
!5271 = !DILocation(line: 164, column: 3, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5269, file: !2, line: 164, column: 3)
!5273 = !DILocation(line: 166, column: 3, scope: !5270)
!5274 = !DILocation(line: 166, column: 8, scope: !5270)
!5275 = !DILocation(line: 166, column: 14, scope: !5270)
!5276 = !DILocation(line: 167, column: 3, scope: !5270)
!5277 = !DILocation(line: 170, column: 2, scope: !5211)
!5278 = !DILocation(line: 171, column: 1, scope: !5211)
!5279 = !DISubprogram(name: "_dev_info", scope: !5280, file: !5280, line: 56, type: !5281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5280 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5281 = !DISubroutineType(types: !5282)
!5282 = !{null, !4287, !295, null}
!5283 = !DISubprogram(name: "pci_find_parent_resource", scope: !158, file: !158, line: 1142, type: !5284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5284 = !DISubroutineType(types: !5285)
!5285 = !{!284, !5286, !284}
!5286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5287, size: 64)
!5287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!5288 = !DISubprogram(name: "request_resource_conflict", scope: !286, file: !286, line: 195, type: !5289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!284, !284, !284}
!5291 = distinct !DISubprogram(name: "pci_disable_bridge_window", scope: !2, file: !2, line: 174, type: !4802, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5292)
!5292 = !{!5293}
!5293 = !DILocalVariable(name: "dev", arg: 1, scope: !5291, file: !2, line: 174, type: !262)
!5294 = !DILocation(line: 174, column: 48, scope: !5291)
!5295 = !DILocation(line: 177, column: 25, scope: !5291)
!5296 = !DILocation(line: 177, column: 2, scope: !5291)
!5297 = !DILocation(line: 180, column: 25, scope: !5291)
!5298 = !DILocation(line: 180, column: 2, scope: !5291)
!5299 = !DILocation(line: 181, column: 25, scope: !5291)
!5300 = !DILocation(line: 181, column: 2, scope: !5291)
!5301 = !DILocation(line: 182, column: 25, scope: !5291)
!5302 = !DILocation(line: 182, column: 2, scope: !5291)
!5303 = !DILocation(line: 183, column: 1, scope: !5291)
!5304 = !DISubprogram(name: "pci_write_config_dword", scope: !158, file: !158, line: 1218, type: !5305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!125, !5286, !125, !170}
!5307 = distinct !DISubprogram(name: "pcibios_retrieve_fw_addr", scope: !2, file: !2, line: 194, type: !5308, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5310)
!5308 = !DISubroutineType(types: !5309)
!5309 = !{!289, !262, !125}
!5310 = !{!5311, !5312}
!5311 = !DILocalVariable(name: "dev", arg: 1, scope: !5307, file: !2, line: 194, type: !262)
!5312 = !DILocalVariable(name: "idx", arg: 2, scope: !5307, file: !2, line: 194, type: !125)
!5313 = !DILocation(line: 194, column: 65, scope: !5307)
!5314 = !DILocation(line: 194, column: 74, scope: !5307)
!5315 = !DILocation(line: 196, column: 2, scope: !5307)
!5316 = distinct !DISubprogram(name: "pcibios_align_resource", scope: !2, file: !2, line: 253, type: !5317, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5321)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!289, !168, !5319, !289, !289}
!5319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5320, size: 64)
!5320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!5321 = !{!5322, !5323, !5324, !5325}
!5322 = !DILocalVariable(name: "data", arg: 1, scope: !5316, file: !2, line: 253, type: !168)
!5323 = !DILocalVariable(name: "res", arg: 2, scope: !5316, file: !2, line: 254, type: !5319)
!5324 = !DILocalVariable(name: "size", arg: 3, scope: !5316, file: !2, line: 255, type: !289)
!5325 = !DILocalVariable(name: "align", arg: 4, scope: !5316, file: !2, line: 256, type: !289)
!5326 = !DILocation(line: 253, column: 53, scope: !5316)
!5327 = !DILocation(line: 254, column: 35, scope: !5316)
!5328 = !DILocation(line: 255, column: 28, scope: !5316)
!5329 = !DILocation(line: 256, column: 28, scope: !5316)
!5330 = !DILocation(line: 258, column: 15, scope: !5316)
!5331 = !DILocation(line: 258, column: 20, scope: !5316)
!5332 = !DILocation(line: 258, column: 8, scope: !5316)
!5333 = distinct !DISubprogram(name: "pci_assign_resource", scope: !2, file: !2, line: 325, type: !4815, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5334)
!5334 = !{!5335, !5336, !5337, !5338, !5339, !5340}
!5335 = !DILocalVariable(name: "dev", arg: 1, scope: !5333, file: !2, line: 325, type: !262)
!5336 = !DILocalVariable(name: "resno", arg: 2, scope: !5333, file: !2, line: 325, type: !125)
!5337 = !DILocalVariable(name: "res", scope: !5333, file: !2, line: 327, type: !284)
!5338 = !DILocalVariable(name: "align", scope: !5333, file: !2, line: 328, type: !289)
!5339 = !DILocalVariable(name: "size", scope: !5333, file: !2, line: 328, type: !289)
!5340 = !DILocalVariable(name: "ret", scope: !5333, file: !2, line: 329, type: !125)
!5341 = !DILocation(line: 325, column: 41, scope: !5333)
!5342 = !DILocation(line: 325, column: 50, scope: !5333)
!5343 = !DILocation(line: 327, column: 2, scope: !5333)
!5344 = !DILocation(line: 327, column: 19, scope: !5333)
!5345 = !DILocation(line: 327, column: 25, scope: !5333)
!5346 = !DILocation(line: 327, column: 30, scope: !5333)
!5347 = !DILocation(line: 327, column: 41, scope: !5333)
!5348 = !DILocation(line: 327, column: 39, scope: !5333)
!5349 = !DILocation(line: 328, column: 2, scope: !5333)
!5350 = !DILocation(line: 328, column: 18, scope: !5333)
!5351 = !DILocation(line: 328, column: 25, scope: !5333)
!5352 = !DILocation(line: 329, column: 2, scope: !5333)
!5353 = !DILocation(line: 329, column: 6, scope: !5333)
!5354 = !DILocation(line: 331, column: 6, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 331, column: 6)
!5356 = !DILocation(line: 331, column: 11, scope: !5355)
!5357 = !DILocation(line: 331, column: 17, scope: !5355)
!5358 = !DILocation(line: 331, column: 6, scope: !5333)
!5359 = !DILocation(line: 332, column: 3, scope: !5355)
!5360 = !DILocation(line: 334, column: 2, scope: !5333)
!5361 = !DILocation(line: 334, column: 7, scope: !5333)
!5362 = !DILocation(line: 334, column: 13, scope: !5333)
!5363 = !DILocation(line: 335, column: 33, scope: !5333)
!5364 = !DILocation(line: 335, column: 38, scope: !5333)
!5365 = !DILocation(line: 335, column: 10, scope: !5333)
!5366 = !DILocation(line: 335, column: 8, scope: !5333)
!5367 = !DILocation(line: 336, column: 7, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 336, column: 6)
!5369 = !DILocation(line: 336, column: 6, scope: !5333)
!5370 = !DILocation(line: 337, column: 3, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5372, file: !2, line: 337, column: 3)
!5372 = distinct !DILexicalBlock(scope: !5368, file: !2, line: 336, column: 14)
!5373 = !DILocation(line: 337, column: 3, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5371, file: !2, line: 337, column: 3)
!5375 = !DILocation(line: 339, column: 3, scope: !5372)
!5376 = !DILocation(line: 342, column: 23, scope: !5333)
!5377 = !DILocation(line: 342, column: 9, scope: !5333)
!5378 = !DILocation(line: 342, column: 7, scope: !5333)
!5379 = !DILocation(line: 343, column: 29, scope: !5333)
!5380 = !DILocation(line: 343, column: 34, scope: !5333)
!5381 = !DILocation(line: 343, column: 41, scope: !5333)
!5382 = !DILocation(line: 343, column: 47, scope: !5333)
!5383 = !DILocation(line: 343, column: 8, scope: !5333)
!5384 = !DILocation(line: 343, column: 6, scope: !5333)
!5385 = !DILocation(line: 350, column: 6, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 350, column: 6)
!5387 = !DILocation(line: 350, column: 10, scope: !5386)
!5388 = !DILocation(line: 350, column: 6, scope: !5333)
!5389 = !DILocation(line: 351, column: 3, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !2, line: 351, column: 3)
!5391 = distinct !DILexicalBlock(scope: !5386, file: !2, line: 350, column: 15)
!5392 = !DILocation(line: 351, column: 3, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5390, file: !2, line: 351, column: 3)
!5394 = !DILocation(line: 352, column: 31, scope: !5391)
!5395 = !DILocation(line: 352, column: 36, scope: !5391)
!5396 = !DILocation(line: 352, column: 41, scope: !5391)
!5397 = !DILocation(line: 352, column: 48, scope: !5391)
!5398 = !DILocation(line: 352, column: 9, scope: !5391)
!5399 = !DILocation(line: 352, column: 7, scope: !5391)
!5400 = !DILocation(line: 353, column: 2, scope: !5391)
!5401 = !DILocation(line: 355, column: 6, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 355, column: 6)
!5403 = !DILocation(line: 355, column: 10, scope: !5402)
!5404 = !DILocation(line: 355, column: 6, scope: !5333)
!5405 = !DILocation(line: 356, column: 3, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5407, file: !2, line: 356, column: 3)
!5407 = distinct !DILexicalBlock(scope: !5402, file: !2, line: 355, column: 15)
!5408 = !DILocation(line: 356, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5406, file: !2, line: 356, column: 3)
!5410 = !DILocation(line: 357, column: 10, scope: !5407)
!5411 = !DILocation(line: 357, column: 3, scope: !5407)
!5412 = !DILocation(line: 360, column: 2, scope: !5333)
!5413 = !DILocation(line: 360, column: 7, scope: !5333)
!5414 = !DILocation(line: 360, column: 13, scope: !5333)
!5415 = !DILocation(line: 361, column: 2, scope: !5333)
!5416 = !DILocation(line: 361, column: 7, scope: !5333)
!5417 = !DILocation(line: 361, column: 13, scope: !5333)
!5418 = !DILocation(line: 362, column: 2, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 362, column: 2)
!5420 = !DILocation(line: 362, column: 2, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5419, file: !2, line: 362, column: 2)
!5422 = !DILocation(line: 363, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 363, column: 6)
!5424 = !DILocation(line: 363, column: 12, scope: !5423)
!5425 = !DILocation(line: 363, column: 6, scope: !5333)
!5426 = !DILocation(line: 364, column: 23, scope: !5423)
!5427 = !DILocation(line: 364, column: 28, scope: !5423)
!5428 = !DILocation(line: 364, column: 3, scope: !5423)
!5429 = !DILocation(line: 366, column: 2, scope: !5333)
!5430 = !DILocation(line: 367, column: 1, scope: !5333)
!5431 = distinct !DISubprogram(name: "pci_resource_alignment", scope: !4762, file: !4762, line: 518, type: !5432, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5434)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!289, !262, !284}
!5434 = !{!5435, !5436}
!5435 = !DILocalVariable(name: "dev", arg: 1, scope: !5431, file: !4762, line: 518, type: !262)
!5436 = !DILocalVariable(name: "res", arg: 2, scope: !5431, file: !4762, line: 519, type: !284)
!5437 = !DILocation(line: 518, column: 70, scope: !5431)
!5438 = !DILocation(line: 519, column: 29, scope: !5431)
!5439 = !DILocation(line: 527, column: 6, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5431, file: !4762, line: 527, column: 6)
!5441 = !DILocation(line: 527, column: 11, scope: !5440)
!5442 = !DILocation(line: 527, column: 17, scope: !5440)
!5443 = !DILocation(line: 527, column: 22, scope: !5440)
!5444 = !DILocation(line: 527, column: 6, scope: !5431)
!5445 = !DILocation(line: 528, column: 41, scope: !5440)
!5446 = !DILocation(line: 528, column: 10, scope: !5440)
!5447 = !DILocation(line: 528, column: 3, scope: !5440)
!5448 = !DILocation(line: 529, column: 28, scope: !5431)
!5449 = !DILocation(line: 529, column: 9, scope: !5431)
!5450 = !DILocation(line: 529, column: 2, scope: !5431)
!5451 = !DILocation(line: 530, column: 1, scope: !5431)
!5452 = distinct !DISubprogram(name: "resource_size", scope: !286, file: !286, line: 219, type: !5453, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5455)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!289, !5319}
!5455 = !{!5456}
!5456 = !DILocalVariable(name: "res", arg: 1, scope: !5452, file: !286, line: 219, type: !5319)
!5457 = !DILocation(line: 219, column: 68, scope: !5452)
!5458 = !DILocation(line: 221, column: 9, scope: !5452)
!5459 = !DILocation(line: 221, column: 14, scope: !5452)
!5460 = !DILocation(line: 221, column: 20, scope: !5452)
!5461 = !DILocation(line: 221, column: 25, scope: !5452)
!5462 = !DILocation(line: 221, column: 18, scope: !5452)
!5463 = !DILocation(line: 221, column: 31, scope: !5452)
!5464 = !DILocation(line: 221, column: 2, scope: !5452)
!5465 = distinct !DISubprogram(name: "_pci_assign_resource", scope: !2, file: !2, line: 309, type: !5466, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5468)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{!125, !262, !125, !289, !289}
!5468 = !{!5469, !5470, !5471, !5472, !5473, !5474}
!5469 = !DILocalVariable(name: "dev", arg: 1, scope: !5465, file: !2, line: 309, type: !262)
!5470 = !DILocalVariable(name: "resno", arg: 2, scope: !5465, file: !2, line: 309, type: !125)
!5471 = !DILocalVariable(name: "size", arg: 3, scope: !5465, file: !2, line: 310, type: !289)
!5472 = !DILocalVariable(name: "min_align", arg: 4, scope: !5465, file: !2, line: 310, type: !289)
!5473 = !DILocalVariable(name: "bus", scope: !5465, file: !2, line: 312, type: !273)
!5474 = !DILocalVariable(name: "ret", scope: !5465, file: !2, line: 313, type: !125)
!5475 = !DILocation(line: 309, column: 49, scope: !5465)
!5476 = !DILocation(line: 309, column: 58, scope: !5465)
!5477 = !DILocation(line: 310, column: 21, scope: !5465)
!5478 = !DILocation(line: 310, column: 43, scope: !5465)
!5479 = !DILocation(line: 312, column: 2, scope: !5465)
!5480 = !DILocation(line: 312, column: 18, scope: !5465)
!5481 = !DILocation(line: 313, column: 2, scope: !5465)
!5482 = !DILocation(line: 313, column: 6, scope: !5465)
!5483 = !DILocation(line: 315, column: 8, scope: !5465)
!5484 = !DILocation(line: 315, column: 13, scope: !5465)
!5485 = !DILocation(line: 315, column: 6, scope: !5465)
!5486 = !DILocation(line: 316, column: 2, scope: !5465)
!5487 = !DILocation(line: 316, column: 38, scope: !5465)
!5488 = !DILocation(line: 316, column: 43, scope: !5465)
!5489 = !DILocation(line: 316, column: 48, scope: !5465)
!5490 = !DILocation(line: 316, column: 55, scope: !5465)
!5491 = !DILocation(line: 316, column: 61, scope: !5465)
!5492 = !DILocation(line: 316, column: 16, scope: !5465)
!5493 = !DILocation(line: 316, column: 14, scope: !5465)
!5494 = !DILocation(line: 317, column: 8, scope: !5495)
!5495 = distinct !DILexicalBlock(scope: !5496, file: !2, line: 317, column: 7)
!5496 = distinct !DILexicalBlock(scope: !5465, file: !2, line: 316, column: 74)
!5497 = !DILocation(line: 317, column: 13, scope: !5495)
!5498 = !DILocation(line: 317, column: 20, scope: !5495)
!5499 = !DILocation(line: 317, column: 24, scope: !5495)
!5500 = !DILocation(line: 317, column: 29, scope: !5495)
!5501 = !DILocation(line: 317, column: 35, scope: !5495)
!5502 = !DILocation(line: 317, column: 7, scope: !5496)
!5503 = !DILocation(line: 318, column: 4, scope: !5495)
!5504 = !DILocation(line: 319, column: 9, scope: !5496)
!5505 = !DILocation(line: 319, column: 14, scope: !5496)
!5506 = !DILocation(line: 319, column: 7, scope: !5496)
!5507 = distinct !{!5507, !5486, !5508, !5509, !5510}
!5508 = !DILocation(line: 320, column: 2, scope: !5465)
!5509 = !{!"llvm.loop.mustprogress"}
!5510 = !{!"llvm.loop.unroll.disable"}
!5511 = !DILocation(line: 322, column: 9, scope: !5465)
!5512 = !DILocation(line: 323, column: 1, scope: !5465)
!5513 = !DILocation(line: 322, column: 2, scope: !5465)
!5514 = distinct !DISubprogram(name: "pci_revert_fw_address", scope: !2, file: !2, line: 199, type: !5515, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5517)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!125, !284, !262, !125, !289}
!5517 = !{!5518, !5519, !5520, !5521, !5522, !5523, !5524, !5525, !5526}
!5518 = !DILocalVariable(name: "res", arg: 1, scope: !5514, file: !2, line: 199, type: !284)
!5519 = !DILocalVariable(name: "dev", arg: 2, scope: !5514, file: !2, line: 199, type: !262)
!5520 = !DILocalVariable(name: "resno", arg: 3, scope: !5514, file: !2, line: 200, type: !125)
!5521 = !DILocalVariable(name: "size", arg: 4, scope: !5514, file: !2, line: 200, type: !289)
!5522 = !DILocalVariable(name: "root", scope: !5514, file: !2, line: 202, type: !284)
!5523 = !DILocalVariable(name: "conflict", scope: !5514, file: !2, line: 202, type: !284)
!5524 = !DILocalVariable(name: "fw_addr", scope: !5514, file: !2, line: 203, type: !289)
!5525 = !DILocalVariable(name: "start", scope: !5514, file: !2, line: 203, type: !289)
!5526 = !DILocalVariable(name: "end", scope: !5514, file: !2, line: 203, type: !289)
!5527 = !DILocation(line: 199, column: 51, scope: !5514)
!5528 = !DILocation(line: 199, column: 72, scope: !5514)
!5529 = !DILocation(line: 200, column: 7, scope: !5514)
!5530 = !DILocation(line: 200, column: 30, scope: !5514)
!5531 = !DILocation(line: 202, column: 2, scope: !5514)
!5532 = !DILocation(line: 202, column: 19, scope: !5514)
!5533 = !DILocation(line: 202, column: 26, scope: !5514)
!5534 = !DILocation(line: 203, column: 2, scope: !5514)
!5535 = !DILocation(line: 203, column: 18, scope: !5514)
!5536 = !DILocation(line: 203, column: 27, scope: !5514)
!5537 = !DILocation(line: 203, column: 34, scope: !5514)
!5538 = !DILocation(line: 205, column: 37, scope: !5514)
!5539 = !DILocation(line: 205, column: 42, scope: !5514)
!5540 = !DILocation(line: 205, column: 12, scope: !5514)
!5541 = !DILocation(line: 205, column: 10, scope: !5514)
!5542 = !DILocation(line: 206, column: 7, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5514, file: !2, line: 206, column: 6)
!5544 = !DILocation(line: 206, column: 6, scope: !5514)
!5545 = !DILocation(line: 207, column: 3, scope: !5543)
!5546 = !DILocation(line: 209, column: 10, scope: !5514)
!5547 = !DILocation(line: 209, column: 15, scope: !5514)
!5548 = !DILocation(line: 209, column: 8, scope: !5514)
!5549 = !DILocation(line: 210, column: 8, scope: !5514)
!5550 = !DILocation(line: 210, column: 13, scope: !5514)
!5551 = !DILocation(line: 210, column: 6, scope: !5514)
!5552 = !DILocation(line: 211, column: 15, scope: !5514)
!5553 = !DILocation(line: 211, column: 2, scope: !5514)
!5554 = !DILocation(line: 211, column: 7, scope: !5514)
!5555 = !DILocation(line: 211, column: 13, scope: !5514)
!5556 = !DILocation(line: 212, column: 13, scope: !5514)
!5557 = !DILocation(line: 212, column: 18, scope: !5514)
!5558 = !DILocation(line: 212, column: 26, scope: !5514)
!5559 = !DILocation(line: 212, column: 24, scope: !5514)
!5560 = !DILocation(line: 212, column: 31, scope: !5514)
!5561 = !DILocation(line: 212, column: 2, scope: !5514)
!5562 = !DILocation(line: 212, column: 7, scope: !5514)
!5563 = !DILocation(line: 212, column: 11, scope: !5514)
!5564 = !DILocation(line: 213, column: 2, scope: !5514)
!5565 = !DILocation(line: 213, column: 7, scope: !5514)
!5566 = !DILocation(line: 213, column: 13, scope: !5514)
!5567 = !DILocation(line: 215, column: 34, scope: !5514)
!5568 = !DILocation(line: 215, column: 39, scope: !5514)
!5569 = !DILocation(line: 215, column: 9, scope: !5514)
!5570 = !DILocation(line: 215, column: 7, scope: !5514)
!5571 = !DILocation(line: 216, column: 7, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5514, file: !2, line: 216, column: 6)
!5573 = !DILocation(line: 216, column: 6, scope: !5514)
!5574 = !DILocation(line: 221, column: 27, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5576, file: !2, line: 221, column: 7)
!5576 = distinct !DILexicalBlock(scope: !5572, file: !2, line: 216, column: 13)
!5577 = !DILocation(line: 221, column: 7, scope: !5575)
!5578 = !DILocation(line: 221, column: 7, scope: !5576)
!5579 = !DILocation(line: 222, column: 4, scope: !5575)
!5580 = !DILocation(line: 228, column: 7, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5576, file: !2, line: 228, column: 7)
!5582 = !DILocation(line: 228, column: 12, scope: !5581)
!5583 = !DILocation(line: 228, column: 18, scope: !5581)
!5584 = !DILocation(line: 228, column: 7, scope: !5576)
!5585 = !DILocation(line: 229, column: 9, scope: !5581)
!5586 = !DILocation(line: 229, column: 4, scope: !5581)
!5587 = !DILocation(line: 231, column: 9, scope: !5581)
!5588 = !DILocation(line: 232, column: 2, scope: !5576)
!5589 = !DILocation(line: 234, column: 2, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5514, file: !2, line: 234, column: 2)
!5591 = !DILocation(line: 234, column: 2, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5590, file: !2, line: 234, column: 2)
!5593 = !DILocation(line: 236, column: 39, scope: !5514)
!5594 = !DILocation(line: 236, column: 45, scope: !5514)
!5595 = !DILocation(line: 236, column: 13, scope: !5514)
!5596 = !DILocation(line: 236, column: 11, scope: !5514)
!5597 = !DILocation(line: 237, column: 6, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5514, file: !2, line: 237, column: 6)
!5599 = !DILocation(line: 237, column: 6, scope: !5514)
!5600 = !DILocation(line: 238, column: 3, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5602, file: !2, line: 238, column: 3)
!5602 = distinct !DILexicalBlock(scope: !5598, file: !2, line: 237, column: 16)
!5603 = !DILocation(line: 238, column: 3, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5601, file: !2, line: 238, column: 3)
!5605 = !DILocation(line: 240, column: 16, scope: !5602)
!5606 = !DILocation(line: 240, column: 3, scope: !5602)
!5607 = !DILocation(line: 240, column: 8, scope: !5602)
!5608 = !DILocation(line: 240, column: 14, scope: !5602)
!5609 = !DILocation(line: 241, column: 14, scope: !5602)
!5610 = !DILocation(line: 241, column: 3, scope: !5602)
!5611 = !DILocation(line: 241, column: 8, scope: !5602)
!5612 = !DILocation(line: 241, column: 12, scope: !5602)
!5613 = !DILocation(line: 242, column: 3, scope: !5602)
!5614 = !DILocation(line: 242, column: 8, scope: !5602)
!5615 = !DILocation(line: 242, column: 14, scope: !5602)
!5616 = !DILocation(line: 243, column: 3, scope: !5602)
!5617 = !DILocation(line: 245, column: 2, scope: !5514)
!5618 = !DILocation(line: 246, column: 1, scope: !5514)
!5619 = distinct !DISubprogram(name: "pci_reassign_resource", scope: !2, file: !2, line: 370, type: !5466, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5620)
!5620 = !{!5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628}
!5621 = !DILocalVariable(name: "dev", arg: 1, scope: !5619, file: !2, line: 370, type: !262)
!5622 = !DILocalVariable(name: "resno", arg: 2, scope: !5619, file: !2, line: 370, type: !125)
!5623 = !DILocalVariable(name: "addsize", arg: 3, scope: !5619, file: !2, line: 370, type: !289)
!5624 = !DILocalVariable(name: "min_align", arg: 4, scope: !5619, file: !2, line: 371, type: !289)
!5625 = !DILocalVariable(name: "res", scope: !5619, file: !2, line: 373, type: !284)
!5626 = !DILocalVariable(name: "flags", scope: !5619, file: !2, line: 374, type: !298)
!5627 = !DILocalVariable(name: "new_size", scope: !5619, file: !2, line: 375, type: !289)
!5628 = !DILocalVariable(name: "ret", scope: !5619, file: !2, line: 376, type: !125)
!5629 = !DILocation(line: 370, column: 43, scope: !5619)
!5630 = !DILocation(line: 370, column: 52, scope: !5619)
!5631 = !DILocation(line: 370, column: 75, scope: !5619)
!5632 = !DILocation(line: 371, column: 20, scope: !5619)
!5633 = !DILocation(line: 373, column: 2, scope: !5619)
!5634 = !DILocation(line: 373, column: 19, scope: !5619)
!5635 = !DILocation(line: 373, column: 25, scope: !5619)
!5636 = !DILocation(line: 373, column: 30, scope: !5619)
!5637 = !DILocation(line: 373, column: 41, scope: !5619)
!5638 = !DILocation(line: 373, column: 39, scope: !5619)
!5639 = !DILocation(line: 374, column: 2, scope: !5619)
!5640 = !DILocation(line: 374, column: 16, scope: !5619)
!5641 = !DILocation(line: 375, column: 2, scope: !5619)
!5642 = !DILocation(line: 375, column: 18, scope: !5619)
!5643 = !DILocation(line: 376, column: 2, scope: !5619)
!5644 = !DILocation(line: 376, column: 6, scope: !5619)
!5645 = !DILocation(line: 378, column: 6, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5619, file: !2, line: 378, column: 6)
!5647 = !DILocation(line: 378, column: 11, scope: !5646)
!5648 = !DILocation(line: 378, column: 17, scope: !5646)
!5649 = !DILocation(line: 378, column: 6, scope: !5619)
!5650 = !DILocation(line: 379, column: 3, scope: !5646)
!5651 = !DILocation(line: 381, column: 10, scope: !5619)
!5652 = !DILocation(line: 381, column: 15, scope: !5619)
!5653 = !DILocation(line: 381, column: 8, scope: !5619)
!5654 = !DILocation(line: 382, column: 2, scope: !5619)
!5655 = !DILocation(line: 382, column: 7, scope: !5619)
!5656 = !DILocation(line: 382, column: 13, scope: !5619)
!5657 = !DILocation(line: 383, column: 7, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5619, file: !2, line: 383, column: 6)
!5659 = !DILocation(line: 383, column: 12, scope: !5658)
!5660 = !DILocation(line: 383, column: 6, scope: !5619)
!5661 = !DILocation(line: 384, column: 3, scope: !5662)
!5662 = distinct !DILexicalBlock(scope: !5663, file: !2, line: 384, column: 3)
!5663 = distinct !DILexicalBlock(scope: !5658, file: !2, line: 383, column: 20)
!5664 = !DILocation(line: 384, column: 3, scope: !5665)
!5665 = distinct !DILexicalBlock(scope: !5662, file: !2, line: 384, column: 3)
!5666 = !DILocation(line: 386, column: 3, scope: !5663)
!5667 = !DILocation(line: 390, column: 27, scope: !5619)
!5668 = !DILocation(line: 390, column: 13, scope: !5619)
!5669 = !DILocation(line: 390, column: 34, scope: !5619)
!5670 = !DILocation(line: 390, column: 32, scope: !5619)
!5671 = !DILocation(line: 390, column: 11, scope: !5619)
!5672 = !DILocation(line: 391, column: 29, scope: !5619)
!5673 = !DILocation(line: 391, column: 34, scope: !5619)
!5674 = !DILocation(line: 391, column: 41, scope: !5619)
!5675 = !DILocation(line: 391, column: 51, scope: !5619)
!5676 = !DILocation(line: 391, column: 8, scope: !5619)
!5677 = !DILocation(line: 391, column: 6, scope: !5619)
!5678 = !DILocation(line: 392, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5619, file: !2, line: 392, column: 6)
!5680 = !DILocation(line: 392, column: 6, scope: !5619)
!5681 = !DILocation(line: 393, column: 16, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5679, file: !2, line: 392, column: 11)
!5683 = !DILocation(line: 393, column: 3, scope: !5682)
!5684 = !DILocation(line: 393, column: 8, scope: !5682)
!5685 = !DILocation(line: 393, column: 14, scope: !5682)
!5686 = !DILocation(line: 394, column: 3, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5682, file: !2, line: 394, column: 3)
!5688 = !DILocation(line: 394, column: 3, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5687, file: !2, line: 394, column: 3)
!5690 = !DILocation(line: 396, column: 10, scope: !5682)
!5691 = !DILocation(line: 396, column: 3, scope: !5682)
!5692 = !DILocation(line: 399, column: 2, scope: !5619)
!5693 = !DILocation(line: 399, column: 7, scope: !5619)
!5694 = !DILocation(line: 399, column: 13, scope: !5619)
!5695 = !DILocation(line: 400, column: 2, scope: !5619)
!5696 = !DILocation(line: 400, column: 7, scope: !5619)
!5697 = !DILocation(line: 400, column: 13, scope: !5619)
!5698 = !DILocation(line: 401, column: 2, scope: !5699)
!5699 = distinct !DILexicalBlock(scope: !5619, file: !2, line: 401, column: 2)
!5700 = !DILocation(line: 401, column: 2, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5699, file: !2, line: 401, column: 2)
!5702 = !DILocation(line: 403, column: 6, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !5619, file: !2, line: 403, column: 6)
!5704 = !DILocation(line: 403, column: 12, scope: !5703)
!5705 = !DILocation(line: 403, column: 6, scope: !5619)
!5706 = !DILocation(line: 404, column: 23, scope: !5703)
!5707 = !DILocation(line: 404, column: 28, scope: !5703)
!5708 = !DILocation(line: 404, column: 3, scope: !5703)
!5709 = !DILocation(line: 406, column: 2, scope: !5619)
!5710 = !DILocation(line: 407, column: 1, scope: !5619)
!5711 = distinct !DISubprogram(name: "pci_release_resource", scope: !2, file: !2, line: 409, type: !260, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5712)
!5712 = !{!5713, !5714, !5715}
!5713 = !DILocalVariable(name: "dev", arg: 1, scope: !5711, file: !2, line: 409, type: !262)
!5714 = !DILocalVariable(name: "resno", arg: 2, scope: !5711, file: !2, line: 409, type: !125)
!5715 = !DILocalVariable(name: "res", scope: !5711, file: !2, line: 411, type: !284)
!5716 = !DILocation(line: 409, column: 43, scope: !5711)
!5717 = !DILocation(line: 409, column: 52, scope: !5711)
!5718 = !DILocation(line: 411, column: 2, scope: !5711)
!5719 = !DILocation(line: 411, column: 19, scope: !5711)
!5720 = !DILocation(line: 411, column: 25, scope: !5711)
!5721 = !DILocation(line: 411, column: 30, scope: !5711)
!5722 = !DILocation(line: 411, column: 41, scope: !5711)
!5723 = !DILocation(line: 411, column: 39, scope: !5711)
!5724 = !DILocation(line: 413, column: 2, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 413, column: 2)
!5726 = !DILocation(line: 413, column: 2, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5725, file: !2, line: 413, column: 2)
!5728 = !DILocation(line: 415, column: 7, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5711, file: !2, line: 415, column: 6)
!5730 = !DILocation(line: 415, column: 12, scope: !5729)
!5731 = !DILocation(line: 415, column: 6, scope: !5711)
!5732 = !DILocation(line: 416, column: 3, scope: !5729)
!5733 = !DILocation(line: 418, column: 19, scope: !5711)
!5734 = !DILocation(line: 418, column: 2, scope: !5711)
!5735 = !DILocation(line: 419, column: 27, scope: !5711)
!5736 = !DILocation(line: 419, column: 13, scope: !5711)
!5737 = !DILocation(line: 419, column: 32, scope: !5711)
!5738 = !DILocation(line: 419, column: 2, scope: !5711)
!5739 = !DILocation(line: 419, column: 7, scope: !5711)
!5740 = !DILocation(line: 419, column: 11, scope: !5711)
!5741 = !DILocation(line: 420, column: 2, scope: !5711)
!5742 = !DILocation(line: 420, column: 7, scope: !5711)
!5743 = !DILocation(line: 420, column: 13, scope: !5711)
!5744 = !DILocation(line: 421, column: 2, scope: !5711)
!5745 = !DILocation(line: 421, column: 7, scope: !5711)
!5746 = !DILocation(line: 421, column: 13, scope: !5711)
!5747 = !DILocation(line: 422, column: 1, scope: !5711)
!5748 = !DISubprogram(name: "release_resource", scope: !286, file: !286, line: 197, type: !5749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5749 = !DISubroutineType(types: !5750)
!5750 = !{!125, !284}
!5751 = distinct !DISubprogram(name: "pci_resize_resource", scope: !2, file: !2, line: 425, type: !5752, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5754)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{!125, !262, !125, !125}
!5754 = !{!5755, !5756, !5757, !5758, !5759, !5804, !5805, !5806, !5807, !5808}
!5755 = !DILocalVariable(name: "dev", arg: 1, scope: !5751, file: !2, line: 425, type: !262)
!5756 = !DILocalVariable(name: "resno", arg: 2, scope: !5751, file: !2, line: 425, type: !125)
!5757 = !DILocalVariable(name: "size", arg: 3, scope: !5751, file: !2, line: 425, type: !125)
!5758 = !DILocalVariable(name: "res", scope: !5751, file: !2, line: 427, type: !284)
!5759 = !DILocalVariable(name: "host", scope: !5751, file: !2, line: 428, type: !5760)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_host_bridge", file: !158, line: 563, size: 7168, elements: !5762)
!5762 = !{!5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5771, !5772, !5777, !5781, !5785, !5786, !5787, !5788, !5789, !5790, !5791, !5792, !5793, !5794, !5795, !5796, !5797, !5798, !5799, !5803}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5761, file: !158, line: 564, baseType: !349, size: 5824)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5761, file: !158, line: 565, baseType: !273, size: 64, offset: 5824)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5761, file: !158, line: 566, baseType: !308, size: 64, offset: 5888)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "child_ops", scope: !5761, file: !158, line: 567, baseType: !308, size: 64, offset: 5952)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !5761, file: !158, line: 568, baseType: !168, size: 64, offset: 6016)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "busnr", scope: !5761, file: !158, line: 569, baseType: !125, size: 32, offset: 6080)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "domain_nr", scope: !5761, file: !158, line: 570, baseType: !125, size: 32, offset: 6112)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "windows", scope: !5761, file: !158, line: 571, baseType: !266, size: 128, offset: 6144)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ranges", scope: !5761, file: !158, line: 572, baseType: !266, size: 128, offset: 6272)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "swizzle_irq", scope: !5761, file: !158, line: 573, baseType: !5773, size: 64, offset: 6400)
!5773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5774, size: 64)
!5774 = !DISubroutineType(types: !5775)
!5775 = !{!393, !262, !5776}
!5776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "map_irq", scope: !5761, file: !158, line: 574, baseType: !5778, size: 64, offset: 6464)
!5778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5779, size: 64)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!125, !5286, !393, !393}
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "release_fn", scope: !5761, file: !158, line: 575, baseType: !5782, size: 64, offset: 6528)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5783, size: 64)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{null, !5760}
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "release_data", scope: !5761, file: !158, line: 576, baseType: !168, size: 64, offset: 6592)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_reset_delay", scope: !5761, file: !158, line: 577, baseType: !23, size: 1, offset: 6656, flags: DIFlagBitField, extraData: i64 6656)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "no_ext_tags", scope: !5761, file: !158, line: 578, baseType: !23, size: 1, offset: 6657, flags: DIFlagBitField, extraData: i64 6656)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "no_inc_mrrs", scope: !5761, file: !158, line: 579, baseType: !23, size: 1, offset: 6658, flags: DIFlagBitField, extraData: i64 6656)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "native_aer", scope: !5761, file: !158, line: 580, baseType: !23, size: 1, offset: 6659, flags: DIFlagBitField, extraData: i64 6656)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "native_pcie_hotplug", scope: !5761, file: !158, line: 581, baseType: !23, size: 1, offset: 6660, flags: DIFlagBitField, extraData: i64 6656)
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "native_shpc_hotplug", scope: !5761, file: !158, line: 582, baseType: !23, size: 1, offset: 6661, flags: DIFlagBitField, extraData: i64 6656)
!5792 = !DIDerivedType(tag: DW_TAG_member, name: "native_pme", scope: !5761, file: !158, line: 583, baseType: !23, size: 1, offset: 6662, flags: DIFlagBitField, extraData: i64 6656)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "native_ltr", scope: !5761, file: !158, line: 584, baseType: !23, size: 1, offset: 6663, flags: DIFlagBitField, extraData: i64 6656)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "native_dpc", scope: !5761, file: !158, line: 585, baseType: !23, size: 1, offset: 6664, flags: DIFlagBitField, extraData: i64 6656)
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "native_cxl_error", scope: !5761, file: !158, line: 586, baseType: !23, size: 1, offset: 6665, flags: DIFlagBitField, extraData: i64 6656)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_config", scope: !5761, file: !158, line: 587, baseType: !23, size: 1, offset: 6666, flags: DIFlagBitField, extraData: i64 6656)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "size_windows", scope: !5761, file: !158, line: 588, baseType: !23, size: 1, offset: 6667, flags: DIFlagBitField, extraData: i64 6656)
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !5761, file: !158, line: 589, baseType: !23, size: 1, offset: 6668, flags: DIFlagBitField, extraData: i64 6656)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "align_resource", scope: !5761, file: !158, line: 592, baseType: !5800, size: 64, offset: 6720)
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5801, size: 64)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!289, !262, !5319, !289, !289, !289}
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5761, file: !158, line: 597, baseType: !2705, align: 512, offset: 7168)
!5804 = !DILocalVariable(name: "old", scope: !5751, file: !2, line: 429, type: !125)
!5805 = !DILocalVariable(name: "ret", scope: !5751, file: !2, line: 429, type: !125)
!5806 = !DILocalVariable(name: "sizes", scope: !5751, file: !2, line: 430, type: !170)
!5807 = !DILocalVariable(name: "cmd", scope: !5751, file: !2, line: 431, type: !400)
!5808 = !DILabel(scope: !5751, name: "error_resize", file: !2, line: 471)
!5809 = !DILocation(line: 425, column: 41, scope: !5751)
!5810 = !DILocation(line: 425, column: 50, scope: !5751)
!5811 = !DILocation(line: 425, column: 61, scope: !5751)
!5812 = !DILocation(line: 427, column: 2, scope: !5751)
!5813 = !DILocation(line: 427, column: 19, scope: !5751)
!5814 = !DILocation(line: 427, column: 25, scope: !5751)
!5815 = !DILocation(line: 427, column: 30, scope: !5751)
!5816 = !DILocation(line: 427, column: 41, scope: !5751)
!5817 = !DILocation(line: 427, column: 39, scope: !5751)
!5818 = !DILocation(line: 428, column: 2, scope: !5751)
!5819 = !DILocation(line: 428, column: 26, scope: !5751)
!5820 = !DILocation(line: 429, column: 2, scope: !5751)
!5821 = !DILocation(line: 429, column: 6, scope: !5751)
!5822 = !DILocation(line: 429, column: 11, scope: !5751)
!5823 = !DILocation(line: 430, column: 2, scope: !5751)
!5824 = !DILocation(line: 430, column: 6, scope: !5751)
!5825 = !DILocation(line: 431, column: 2, scope: !5751)
!5826 = !DILocation(line: 431, column: 6, scope: !5751)
!5827 = !DILocation(line: 434, column: 30, scope: !5751)
!5828 = !DILocation(line: 434, column: 35, scope: !5751)
!5829 = !DILocation(line: 434, column: 9, scope: !5751)
!5830 = !DILocation(line: 434, column: 7, scope: !5751)
!5831 = !DILocation(line: 435, column: 6, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 435, column: 6)
!5833 = !DILocation(line: 435, column: 12, scope: !5832)
!5834 = !DILocation(line: 435, column: 6, scope: !5751)
!5835 = !DILocation(line: 436, column: 3, scope: !5832)
!5836 = !DILocation(line: 439, column: 8, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 439, column: 6)
!5838 = !DILocation(line: 439, column: 13, scope: !5837)
!5839 = !DILocation(line: 439, column: 19, scope: !5837)
!5840 = !DILocation(line: 439, column: 6, scope: !5751)
!5841 = !DILocation(line: 440, column: 3, scope: !5837)
!5842 = !DILocation(line: 442, column: 23, scope: !5751)
!5843 = !DILocation(line: 442, column: 2, scope: !5751)
!5844 = !DILocation(line: 443, column: 6, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 443, column: 6)
!5846 = !DILocation(line: 443, column: 10, scope: !5845)
!5847 = !DILocation(line: 443, column: 6, scope: !5751)
!5848 = !DILocation(line: 444, column: 3, scope: !5845)
!5849 = !DILocation(line: 446, column: 39, scope: !5751)
!5850 = !DILocation(line: 446, column: 44, scope: !5751)
!5851 = !DILocation(line: 446, column: 10, scope: !5751)
!5852 = !DILocation(line: 446, column: 8, scope: !5751)
!5853 = !DILocation(line: 447, column: 7, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 447, column: 6)
!5855 = !DILocation(line: 447, column: 6, scope: !5751)
!5856 = !DILocation(line: 448, column: 3, scope: !5854)
!5857 = !DILocation(line: 450, column: 8, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 450, column: 6)
!5859 = !DILocation(line: 450, column: 16, scope: !5858)
!5860 = !DILocation(line: 450, column: 14, scope: !5858)
!5861 = !DILocation(line: 450, column: 6, scope: !5751)
!5862 = !DILocation(line: 451, column: 3, scope: !5858)
!5863 = !DILocation(line: 453, column: 35, scope: !5751)
!5864 = !DILocation(line: 453, column: 40, scope: !5751)
!5865 = !DILocation(line: 453, column: 8, scope: !5751)
!5866 = !DILocation(line: 453, column: 6, scope: !5751)
!5867 = !DILocation(line: 454, column: 6, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 454, column: 6)
!5869 = !DILocation(line: 454, column: 10, scope: !5868)
!5870 = !DILocation(line: 454, column: 6, scope: !5751)
!5871 = !DILocation(line: 455, column: 10, scope: !5868)
!5872 = !DILocation(line: 455, column: 3, scope: !5868)
!5873 = !DILocation(line: 457, column: 27, scope: !5751)
!5874 = !DILocation(line: 457, column: 32, scope: !5751)
!5875 = !DILocation(line: 457, column: 39, scope: !5751)
!5876 = !DILocation(line: 457, column: 8, scope: !5751)
!5877 = !DILocation(line: 457, column: 6, scope: !5751)
!5878 = !DILocation(line: 458, column: 6, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 458, column: 6)
!5880 = !DILocation(line: 458, column: 6, scope: !5751)
!5881 = !DILocation(line: 459, column: 10, scope: !5879)
!5882 = !DILocation(line: 459, column: 3, scope: !5879)
!5883 = !DILocation(line: 461, column: 13, scope: !5751)
!5884 = !DILocation(line: 461, column: 18, scope: !5751)
!5885 = !DILocation(line: 461, column: 50, scope: !5751)
!5886 = !DILocation(line: 461, column: 26, scope: !5751)
!5887 = !DILocation(line: 461, column: 24, scope: !5751)
!5888 = !DILocation(line: 461, column: 56, scope: !5751)
!5889 = !DILocation(line: 461, column: 2, scope: !5751)
!5890 = !DILocation(line: 461, column: 7, scope: !5751)
!5891 = !DILocation(line: 461, column: 11, scope: !5751)
!5892 = !DILocation(line: 464, column: 6, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5751, file: !2, line: 464, column: 6)
!5894 = !DILocation(line: 464, column: 11, scope: !5893)
!5895 = !DILocation(line: 464, column: 16, scope: !5893)
!5896 = !DILocation(line: 464, column: 6, scope: !5751)
!5897 = !DILocation(line: 465, column: 39, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5893, file: !2, line: 464, column: 22)
!5899 = !DILocation(line: 465, column: 44, scope: !5898)
!5900 = !DILocation(line: 465, column: 49, scope: !5898)
!5901 = !DILocation(line: 465, column: 55, scope: !5898)
!5902 = !DILocation(line: 465, column: 60, scope: !5898)
!5903 = !DILocation(line: 465, column: 9, scope: !5898)
!5904 = !DILocation(line: 465, column: 7, scope: !5898)
!5905 = !DILocation(line: 466, column: 7, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5898, file: !2, line: 466, column: 7)
!5907 = !DILocation(line: 466, column: 7, scope: !5898)
!5908 = !DILocation(line: 467, column: 4, scope: !5906)
!5909 = !DILocation(line: 468, column: 2, scope: !5898)
!5910 = !DILocation(line: 469, column: 2, scope: !5751)
!5911 = !DILocation(line: 471, column: 1, scope: !5751)
!5912 = !DILocation(line: 472, column: 21, scope: !5751)
!5913 = !DILocation(line: 472, column: 26, scope: !5751)
!5914 = !DILocation(line: 472, column: 33, scope: !5751)
!5915 = !DILocation(line: 472, column: 2, scope: !5751)
!5916 = !DILocation(line: 473, column: 13, scope: !5751)
!5917 = !DILocation(line: 473, column: 18, scope: !5751)
!5918 = !DILocation(line: 473, column: 50, scope: !5751)
!5919 = !DILocation(line: 473, column: 26, scope: !5751)
!5920 = !DILocation(line: 473, column: 24, scope: !5751)
!5921 = !DILocation(line: 473, column: 55, scope: !5751)
!5922 = !DILocation(line: 473, column: 2, scope: !5751)
!5923 = !DILocation(line: 473, column: 7, scope: !5751)
!5924 = !DILocation(line: 473, column: 11, scope: !5751)
!5925 = !DILocation(line: 474, column: 9, scope: !5751)
!5926 = !DILocation(line: 474, column: 2, scope: !5751)
!5927 = !DILocation(line: 475, column: 1, scope: !5751)
!5928 = !DISubprogram(name: "pci_find_host_bridge", scope: !158, file: !158, line: 616, type: !5929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5929 = !DISubroutineType(types: !5930)
!5930 = !{!5760, !273}
!5931 = !DISubprogram(name: "pci_read_config_word", scope: !158, file: !158, line: 1214, type: !5932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!125, !5286, !125, !5934}
!5934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!5935 = !DISubprogram(name: "pci_rebar_get_possible_sizes", scope: !158, file: !158, line: 1368, type: !5936, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5936 = !DISubroutineType(types: !5937)
!5937 = !{!170, !262, !125}
!5938 = !DISubprogram(name: "pci_rebar_get_current_size", scope: !4762, file: !4762, line: 616, type: !4815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5939 = !DISubprogram(name: "pci_rebar_set_size", scope: !4762, file: !4762, line: 617, type: !5752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5940 = distinct !DISubprogram(name: "pci_rebar_size_to_bytes", scope: !4762, file: !4762, line: 618, type: !5941, scopeLine: 619, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5943)
!5941 = !DISubroutineType(types: !5942)
!5942 = !{!291, !125}
!5943 = !{!5944}
!5944 = !DILocalVariable(name: "size", arg: 1, scope: !5940, file: !4762, line: 618, type: !125)
!5945 = !DILocation(line: 618, column: 47, scope: !5940)
!5946 = !DILocation(line: 620, column: 18, scope: !5940)
!5947 = !DILocation(line: 620, column: 23, scope: !5940)
!5948 = !DILocation(line: 620, column: 14, scope: !5940)
!5949 = !DILocation(line: 620, column: 2, scope: !5940)
!5950 = !DISubprogram(name: "pci_reassign_bridge_resources", scope: !158, file: !158, line: 1439, type: !5951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5951 = !DISubroutineType(types: !5952)
!5952 = !{!125, !262, !298}
!5953 = distinct !DISubprogram(name: "pci_enable_resources", scope: !2, file: !2, line: 478, type: !4815, scopeLine: 479, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !5954)
!5954 = !{!5955, !5956, !5957, !5958, !5959, !5960}
!5955 = !DILocalVariable(name: "dev", arg: 1, scope: !5953, file: !2, line: 478, type: !262)
!5956 = !DILocalVariable(name: "mask", arg: 2, scope: !5953, file: !2, line: 478, type: !125)
!5957 = !DILocalVariable(name: "cmd", scope: !5953, file: !2, line: 480, type: !400)
!5958 = !DILocalVariable(name: "old_cmd", scope: !5953, file: !2, line: 480, type: !400)
!5959 = !DILocalVariable(name: "i", scope: !5953, file: !2, line: 481, type: !125)
!5960 = !DILocalVariable(name: "r", scope: !5953, file: !2, line: 482, type: !284)
!5961 = !DILocation(line: 478, column: 42, scope: !5953)
!5962 = !DILocation(line: 478, column: 51, scope: !5953)
!5963 = !DILocation(line: 480, column: 2, scope: !5953)
!5964 = !DILocation(line: 480, column: 6, scope: !5953)
!5965 = !DILocation(line: 480, column: 11, scope: !5953)
!5966 = !DILocation(line: 481, column: 2, scope: !5953)
!5967 = !DILocation(line: 481, column: 6, scope: !5953)
!5968 = !DILocation(line: 482, column: 2, scope: !5953)
!5969 = !DILocation(line: 482, column: 19, scope: !5953)
!5970 = !DILocation(line: 484, column: 23, scope: !5953)
!5971 = !DILocation(line: 484, column: 2, scope: !5953)
!5972 = !DILocation(line: 485, column: 12, scope: !5953)
!5973 = !DILocation(line: 485, column: 10, scope: !5953)
!5974 = !DILocation(line: 487, column: 2, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 487, column: 2)
!5976 = !DILocation(line: 487, column: 2, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5975, file: !2, line: 487, column: 2)
!5978 = !DILocation(line: 0, scope: !5977)
!5979 = !DILocation(line: 488, column: 9, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 488, column: 7)
!5981 = distinct !DILexicalBlock(scope: !5977, file: !2, line: 487, column: 39)
!5982 = !DILocation(line: 488, column: 22, scope: !5980)
!5983 = !DILocation(line: 488, column: 19, scope: !5980)
!5984 = !DILocation(line: 488, column: 14, scope: !5980)
!5985 = !DILocation(line: 488, column: 7, scope: !5981)
!5986 = !DILocation(line: 489, column: 4, scope: !5980)
!5987 = !DILocation(line: 491, column: 9, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 491, column: 7)
!5989 = !DILocation(line: 491, column: 12, scope: !5988)
!5990 = !DILocation(line: 491, column: 18, scope: !5988)
!5991 = !DILocation(line: 491, column: 7, scope: !5981)
!5992 = !DILocation(line: 492, column: 4, scope: !5988)
!5993 = !DILocation(line: 493, column: 8, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 493, column: 7)
!5995 = !DILocation(line: 493, column: 10, scope: !5994)
!5996 = !DILocation(line: 493, column: 31, scope: !5994)
!5997 = !DILocation(line: 494, column: 8, scope: !5994)
!5998 = !DILocation(line: 494, column: 11, scope: !5994)
!5999 = !DILocation(line: 494, column: 17, scope: !5994)
!6000 = !DILocation(line: 493, column: 7, scope: !5981)
!6001 = !DILocation(line: 495, column: 4, scope: !5994)
!6002 = !DILocation(line: 497, column: 7, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 497, column: 7)
!6004 = !DILocation(line: 497, column: 10, scope: !6003)
!6005 = !DILocation(line: 497, column: 16, scope: !6003)
!6006 = !DILocation(line: 497, column: 7, scope: !5981)
!6007 = !DILocation(line: 498, column: 4, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !6009, file: !2, line: 498, column: 4)
!6009 = distinct !DILexicalBlock(scope: !6003, file: !2, line: 497, column: 36)
!6010 = !DILocation(line: 498, column: 4, scope: !6011)
!6011 = distinct !DILexicalBlock(scope: !6008, file: !2, line: 498, column: 4)
!6012 = !DILocation(line: 500, column: 4, scope: !6009)
!6013 = !DILocation(line: 503, column: 8, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 503, column: 7)
!6015 = !DILocation(line: 503, column: 11, scope: !6014)
!6016 = !DILocation(line: 503, column: 7, scope: !5981)
!6017 = !DILocation(line: 504, column: 4, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6019, file: !2, line: 504, column: 4)
!6019 = distinct !DILexicalBlock(scope: !6014, file: !2, line: 503, column: 19)
!6020 = !DILocation(line: 504, column: 4, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6018, file: !2, line: 504, column: 4)
!6022 = !DILocation(line: 506, column: 4, scope: !6019)
!6023 = !DILocation(line: 509, column: 7, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 509, column: 7)
!6025 = !DILocation(line: 509, column: 10, scope: !6024)
!6026 = !DILocation(line: 509, column: 16, scope: !6024)
!6027 = !DILocation(line: 509, column: 7, scope: !5981)
!6028 = !DILocation(line: 510, column: 8, scope: !6024)
!6029 = !DILocation(line: 510, column: 4, scope: !6024)
!6030 = !DILocation(line: 511, column: 7, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !5981, file: !2, line: 511, column: 7)
!6032 = !DILocation(line: 511, column: 10, scope: !6031)
!6033 = !DILocation(line: 511, column: 16, scope: !6031)
!6034 = !DILocation(line: 511, column: 7, scope: !5981)
!6035 = !DILocation(line: 512, column: 8, scope: !6031)
!6036 = !DILocation(line: 512, column: 4, scope: !6031)
!6037 = !DILocation(line: 513, column: 2, scope: !5981)
!6038 = distinct !{!6038, !5974, !6039, !5509, !5510}
!6039 = !DILocation(line: 513, column: 2, scope: !5975)
!6040 = !DILocation(line: 515, column: 6, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !5953, file: !2, line: 515, column: 6)
!6042 = !DILocation(line: 515, column: 13, scope: !6041)
!6043 = !DILocation(line: 515, column: 10, scope: !6041)
!6044 = !DILocation(line: 515, column: 6, scope: !5953)
!6045 = !DILocation(line: 516, column: 3, scope: !6046)
!6046 = distinct !DILexicalBlock(scope: !6047, file: !2, line: 516, column: 3)
!6047 = distinct !DILexicalBlock(scope: !6041, file: !2, line: 515, column: 22)
!6048 = !DILocation(line: 516, column: 3, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6046, file: !2, line: 516, column: 3)
!6050 = !DILocation(line: 517, column: 25, scope: !6047)
!6051 = !DILocation(line: 517, column: 43, scope: !6047)
!6052 = !DILocation(line: 517, column: 3, scope: !6047)
!6053 = !DILocation(line: 518, column: 2, scope: !6047)
!6054 = !DILocation(line: 519, column: 2, scope: !5953)
!6055 = !DILocation(line: 520, column: 1, scope: !5953)
!6056 = !DISubprogram(name: "_dev_err", scope: !5280, file: !5280, line: 50, type: !5281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6057 = !DISubprogram(name: "pci_write_config_word", scope: !158, file: !158, line: 1217, type: !6058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6058 = !DISubroutineType(types: !6059)
!6059 = !{!125, !5286, !125, !400}
!6060 = !DISubprogram(name: "pcibios_resource_to_bus", scope: !158, file: !158, line: 1106, type: !6061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6061 = !DISubroutineType(types: !6062)
!6062 = !{null, !273, !6063, !284}
!6063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!6064 = !DISubprogram(name: "pci_read_config_dword", scope: !158, file: !158, line: 1215, type: !6065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{!125, !5286, !125, !327}
!6067 = !DISubprogram(name: "pci_cardbus_resource_alignment", scope: !4762, file: !4762, line: 516, type: !6068, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6068 = !DISubroutineType(types: !6069)
!6069 = !{!298, !284}
!6070 = !DISubprogram(name: "resource_alignment", scope: !286, file: !286, line: 218, type: !6071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!289, !284}
!6073 = distinct !DISubprogram(name: "__pci_assign_resource", scope: !2, file: !2, line: 261, type: !6074, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6076)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{!125, !273, !262, !125, !289, !289}
!6076 = !{!6077, !6078, !6079, !6080, !6081, !6082, !6083, !6084}
!6077 = !DILocalVariable(name: "bus", arg: 1, scope: !6073, file: !2, line: 261, type: !273)
!6078 = !DILocalVariable(name: "dev", arg: 2, scope: !6073, file: !2, line: 261, type: !262)
!6079 = !DILocalVariable(name: "resno", arg: 3, scope: !6073, file: !2, line: 262, type: !125)
!6080 = !DILocalVariable(name: "size", arg: 4, scope: !6073, file: !2, line: 262, type: !289)
!6081 = !DILocalVariable(name: "align", arg: 5, scope: !6073, file: !2, line: 262, type: !289)
!6082 = !DILocalVariable(name: "res", scope: !6073, file: !2, line: 264, type: !284)
!6083 = !DILocalVariable(name: "min", scope: !6073, file: !2, line: 265, type: !289)
!6084 = !DILocalVariable(name: "ret", scope: !6073, file: !2, line: 266, type: !125)
!6085 = !DILocation(line: 261, column: 50, scope: !6073)
!6086 = !DILocation(line: 261, column: 71, scope: !6073)
!6087 = !DILocation(line: 262, column: 7, scope: !6073)
!6088 = !DILocation(line: 262, column: 30, scope: !6073)
!6089 = !DILocation(line: 262, column: 52, scope: !6073)
!6090 = !DILocation(line: 264, column: 2, scope: !6073)
!6091 = !DILocation(line: 264, column: 19, scope: !6073)
!6092 = !DILocation(line: 264, column: 25, scope: !6073)
!6093 = !DILocation(line: 264, column: 30, scope: !6073)
!6094 = !DILocation(line: 264, column: 41, scope: !6073)
!6095 = !DILocation(line: 264, column: 39, scope: !6073)
!6096 = !DILocation(line: 265, column: 2, scope: !6073)
!6097 = !DILocation(line: 265, column: 18, scope: !6073)
!6098 = !DILocation(line: 266, column: 2, scope: !6073)
!6099 = !DILocation(line: 266, column: 6, scope: !6073)
!6100 = !DILocation(line: 268, column: 9, scope: !6073)
!6101 = !DILocation(line: 268, column: 14, scope: !6073)
!6102 = !DILocation(line: 268, column: 20, scope: !6073)
!6103 = !DILocation(line: 268, column: 8, scope: !6073)
!6104 = !DILocation(line: 268, column: 56, scope: !6073)
!6105 = !DILocation(line: 268, column: 6, scope: !6073)
!6106 = !DILocation(line: 277, column: 31, scope: !6073)
!6107 = !DILocation(line: 277, column: 36, scope: !6073)
!6108 = !DILocation(line: 277, column: 41, scope: !6073)
!6109 = !DILocation(line: 277, column: 47, scope: !6073)
!6110 = !DILocation(line: 277, column: 54, scope: !6073)
!6111 = !DILocation(line: 279, column: 34, scope: !6073)
!6112 = !DILocation(line: 277, column: 8, scope: !6073)
!6113 = !DILocation(line: 277, column: 6, scope: !6073)
!6114 = !DILocation(line: 280, column: 6, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6073, file: !2, line: 280, column: 6)
!6116 = !DILocation(line: 280, column: 10, scope: !6115)
!6117 = !DILocation(line: 280, column: 6, scope: !6073)
!6118 = !DILocation(line: 281, column: 3, scope: !6115)
!6119 = !DILocation(line: 287, column: 7, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6073, file: !2, line: 287, column: 6)
!6121 = !DILocation(line: 287, column: 12, scope: !6120)
!6122 = !DILocation(line: 287, column: 18, scope: !6120)
!6123 = !DILocation(line: 287, column: 63, scope: !6120)
!6124 = !DILocation(line: 287, column: 6, scope: !6073)
!6125 = !DILocation(line: 289, column: 32, scope: !6126)
!6126 = distinct !DILexicalBlock(scope: !6120, file: !2, line: 288, column: 50)
!6127 = !DILocation(line: 289, column: 37, scope: !6126)
!6128 = !DILocation(line: 289, column: 42, scope: !6126)
!6129 = !DILocation(line: 289, column: 48, scope: !6126)
!6130 = !DILocation(line: 289, column: 55, scope: !6126)
!6131 = !DILocation(line: 291, column: 35, scope: !6126)
!6132 = !DILocation(line: 289, column: 9, scope: !6126)
!6133 = !DILocation(line: 289, column: 7, scope: !6126)
!6134 = !DILocation(line: 292, column: 7, scope: !6135)
!6135 = distinct !DILexicalBlock(scope: !6126, file: !2, line: 292, column: 7)
!6136 = !DILocation(line: 292, column: 11, scope: !6135)
!6137 = !DILocation(line: 292, column: 7, scope: !6126)
!6138 = !DILocation(line: 293, column: 4, scope: !6135)
!6139 = !DILocation(line: 294, column: 2, scope: !6126)
!6140 = !DILocation(line: 302, column: 6, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6073, file: !2, line: 302, column: 6)
!6142 = !DILocation(line: 302, column: 11, scope: !6141)
!6143 = !DILocation(line: 302, column: 17, scope: !6141)
!6144 = !DILocation(line: 302, column: 6, scope: !6073)
!6145 = !DILocation(line: 303, column: 32, scope: !6141)
!6146 = !DILocation(line: 303, column: 37, scope: !6141)
!6147 = !DILocation(line: 303, column: 42, scope: !6141)
!6148 = !DILocation(line: 303, column: 48, scope: !6141)
!6149 = !DILocation(line: 303, column: 55, scope: !6141)
!6150 = !DILocation(line: 304, column: 35, scope: !6141)
!6151 = !DILocation(line: 303, column: 9, scope: !6141)
!6152 = !DILocation(line: 303, column: 7, scope: !6141)
!6153 = !DILocation(line: 303, column: 3, scope: !6141)
!6154 = !DILocation(line: 306, column: 9, scope: !6073)
!6155 = !DILocation(line: 306, column: 2, scope: !6073)
!6156 = !DILocation(line: 307, column: 1, scope: !6073)
!6157 = !DISubprogram(name: "pci_bus_alloc_resource", scope: !158, file: !158, line: 1523, type: !6158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6158 = !DISubroutineType(types: !6159)
!6159 = !{!125, !273, !284, !289, !289, !289, !298, !6160, !168}
!6160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!6161 = distinct !DISubprogram(name: "pci_upstream_bridge", scope: !158, file: !158, line: 720, type: !6162, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6164)
!6162 = !DISubroutineType(types: !6163)
!6163 = !{!262, !262}
!6164 = !{!6165}
!6165 = !DILocalVariable(name: "dev", arg: 1, scope: !6161, file: !158, line: 720, type: !262)
!6166 = !DILocation(line: 720, column: 67, scope: !6161)
!6167 = !DILocation(line: 722, column: 19, scope: !6161)
!6168 = !DILocation(line: 722, column: 8, scope: !6161)
!6169 = !DILocation(line: 722, column: 6, scope: !6161)
!6170 = !DILocation(line: 723, column: 22, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6161, file: !158, line: 723, column: 6)
!6172 = !DILocation(line: 723, column: 27, scope: !6171)
!6173 = !DILocation(line: 723, column: 6, scope: !6171)
!6174 = !DILocation(line: 723, column: 6, scope: !6161)
!6175 = !DILocation(line: 724, column: 3, scope: !6171)
!6176 = !DILocation(line: 726, column: 9, scope: !6161)
!6177 = !DILocation(line: 726, column: 14, scope: !6161)
!6178 = !DILocation(line: 726, column: 19, scope: !6161)
!6179 = !DILocation(line: 726, column: 2, scope: !6161)
!6180 = !DILocation(line: 727, column: 1, scope: !6161)
!6181 = distinct !DISubprogram(name: "pci_physfn", scope: !158, file: !158, line: 534, type: !6162, scopeLine: 535, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6182)
!6182 = !{!6183}
!6183 = !DILocalVariable(name: "dev", arg: 1, scope: !6181, file: !158, line: 534, type: !262)
!6184 = !DILocation(line: 534, column: 58, scope: !6181)
!6185 = !DILocation(line: 540, column: 9, scope: !6181)
!6186 = !DILocation(line: 540, column: 2, scope: !6181)
!6187 = distinct !DISubprogram(name: "pci_is_root_bus", scope: !158, file: !158, line: 698, type: !6188, scopeLine: 699, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !6190)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{!844, !273}
!6190 = !{!6191}
!6191 = !DILocalVariable(name: "pbus", arg: 1, scope: !6187, file: !158, line: 698, type: !273)
!6192 = !DILocation(line: 698, column: 52, scope: !6187)
!6193 = !DILocation(line: 700, column: 11, scope: !6187)
!6194 = !DILocation(line: 700, column: 17, scope: !6187)
!6195 = !DILocation(line: 700, column: 9, scope: !6187)
!6196 = !DILocation(line: 700, column: 2, scope: !6187)
