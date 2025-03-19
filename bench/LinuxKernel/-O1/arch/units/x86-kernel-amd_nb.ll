; ModuleID = 'arch/x86/kernel/amd_nb.c'
source_filename = "arch/x86/kernel/amd_nb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_nb_num: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_nb_num ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_nb_has_feature: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_nb_has_feature ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_node_to_amd_nb: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad node_to_amd_nb ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_smn_read: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_smn_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_smn_write: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_smn_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_amd_flush_garts: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad amd_flush_garts ; .previous"
module asm ".section\09\22.initcall5.init..kmod_amd_nb__298_550_init_amd_nbs\22, \22a\22\09\09"
module asm "__initcall__kmod_amd_nb__298_550_init_amd_nbs5:\09\09\09"
module asm ".long\09__initstub__kmod_amd_nb__298_550_init_amd_nbs5 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.amd_nb_bus_dev_range = type { i8, i8, i8 }
%struct.amd_northbridge_info = type { i16, i64, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.cpuinfo_x86 = type { %union.anon.14, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.16, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.14 = type { i32 }
%union.anon.16 = type { i64, [88 x i8] }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.17 }
%union.anon.17 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.amd_northbridge = type { ptr, ptr, ptr, %struct.amd_l3_cache, ptr }
%struct.amd_l3_cache = type { i32, [4 x i8] }
%struct.anon.15 = type { i8, i8, i8, i8 }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }

@amd_nb_bus_dev_ranges = hidden constant [4 x %struct.amd_nb_bus_dev_range] [%struct.amd_nb_bus_dev_range { i8 0, i8 24, i8 32 }, %struct.amd_nb_bus_dev_range { i8 -1, i8 0, i8 32 }, %struct.amd_nb_bus_dev_range { i8 -2, i8 0, i8 32 }, %struct.amd_nb_bus_dev_range zeroinitializer], section ".init.rodata", align 1, !dbg !0
@amd_northbridges = internal global %struct.amd_northbridge_info zeroinitializer, align 8, !dbg !5027
@__UNIQUE_ID___addressable_amd_nb_num292 = internal global ptr @amd_nb_num, section ".discard.addressable", align 8, !dbg !253
@__UNIQUE_ID___addressable_amd_nb_has_feature293 = internal global ptr @amd_nb_has_feature, section ".discard.addressable", align 8, !dbg !255
@__UNIQUE_ID___addressable_node_to_amd_nb294 = internal global ptr @node_to_amd_nb, section ".discard.addressable", align 8, !dbg !257
@__UNIQUE_ID___addressable_amd_smn_read295 = internal global ptr @amd_smn_read, section ".discard.addressable", align 8, !dbg !259
@__UNIQUE_ID___addressable_amd_smn_write296 = internal global ptr @amd_smn_write, section ".discard.addressable", align 8, !dbg !261
@amd_nb_misc_ids = internal constant [28 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 4355, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 4611, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5635, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5123, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5149, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5491, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5427, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5507, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5219, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5611, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5267, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5195, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5927, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5891, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5187, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5715, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5296, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5756, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5741, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5347, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5363, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 4859, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 4803, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5883, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 4683, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 4795, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5331, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5054
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@hygon_nb_misc_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 7572, i32 5219, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5059
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@amd_set_subcaches.reset = internal global i32 0, align 4, !dbg !263
@amd_set_subcaches.ban = internal global i32 0, align 4, !dbg !4998
@amd_flush_garts.gart_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !5000
@flush_words = internal global ptr null, align 8, !dbg !5025
@.str = private unnamed_addr constant [29 x i8] c"\015amd_nb: nothing to flush?\0A\00", align 1, !dbg !5016
@__UNIQUE_ID___addressable_amd_flush_garts297 = internal global ptr @amd_flush_garts, section ".discard.addressable", align 8, !dbg !5021
@__UNIQUE_ID___addressable___initstub__kmod_amd_nb__298_550_init_amd_nbs5299 = internal global ptr @__initstub__kmod_amd_nb__298_550_init_amd_nbs5, section ".discard.addressable", align 8, !dbg !5023
@smn_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smn_mutex, i64 16), ptr getelementptr (i8, ptr @smn_mutex, i64 16) } }, align 8, !dbg !5052
@.str.1 = private unnamed_addr constant [47 x i8] c"\014amd_nb: Error programming SMN address 0x%x.\0A\00", align 1, !dbg !5034
@.str.2 = private unnamed_addr constant [38 x i8] c"\014amd_nb: Error %s SMN address 0x%x.\0A\00", align 1, !dbg !5039
@.str.3 = private unnamed_addr constant [11 x i8] c"writing to\00", align 1, !dbg !5044
@.str.4 = private unnamed_addr constant [13 x i8] c"reading from\00", align 1, !dbg !5047
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@amd_nb_link_ids = internal constant [22 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 5636, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5150, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5492, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5428, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5508, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5220, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5612, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5268, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5196, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5188, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5928, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5716, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5297, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5757, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5742, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5348, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5364, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 4860, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5892, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 4804, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5332, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5067
@amd_root_ids = internal constant [14 x %struct.pci_device_id] [%struct.pci_device_id { i32 4130, i32 5200, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5584, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5248, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5680, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5301, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5284, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5301, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5336, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5352, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5434, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5383, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 4386, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id { i32 4130, i32 5307, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5072
@hygon_root_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 7572, i32 5200, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5077
@hygon_nb_link_ids = internal constant [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 7572, i32 5220, i32 -1, i32 -1, i32 0, i32 0, i64 0, i32 0 }, %struct.pci_device_id zeroinitializer], align 16, !dbg !5079
@.str.5 = private unnamed_addr constant [54 x i8] c"\016amd_nb: Unsupported AMD DF/PCI configuration found\0A\00", align 1, !dbg !5062
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5081
@.str.7 = private unnamed_addr constant [69 x i8] c"\015amd_nb: Cannot initialize GART flush words, GART support disabled\0A\00", align 1, !dbg !5086
@.str.8 = private unnamed_addr constant [54 x i8] c"\016amd_nb: x86/cpu/AMD: CPU erratum 688 worked around\0A\00", align 1, !dbg !5091
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_amd_nb_num292, ptr @__UNIQUE_ID___addressable_amd_nb_has_feature293, ptr @__UNIQUE_ID___addressable_node_to_amd_nb294, ptr @__UNIQUE_ID___addressable_amd_smn_read295, ptr @__UNIQUE_ID___addressable_amd_smn_write296, ptr @__UNIQUE_ID___addressable_amd_flush_garts297, ptr @__UNIQUE_ID___addressable___initstub__kmod_amd_nb__298_550_init_amd_nbs5299], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i16 @amd_nb_num() #0 align 16 !dbg !5109 {
entry:
  %0 = load i16, ptr @amd_northbridges, align 8, !dbg !5112
  ret i16 %0, !dbg !5113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @amd_nb_has_feature(i32 noundef %feature) #0 align 16 !dbg !5114 {
entry:
  %feature.addr = alloca i32, align 4
  store i32 %feature, ptr %feature.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %feature.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load i64, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5120
  %1 = load i32, ptr %feature.addr, align 4, !dbg !5121
  %conv = zext i32 %1 to i64, !dbg !5121
  %and = and i64 %0, %conv, !dbg !5122
  %2 = load i32, ptr %feature.addr, align 4, !dbg !5123
  %conv1 = zext i32 %2 to i64, !dbg !5123
  %cmp = icmp eq i64 %and, %conv1, !dbg !5124
  ret i1 %cmp, !dbg !5125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @node_to_amd_nb(i32 noundef %node) #0 align 16 !dbg !5126 {
entry:
  %node.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5130, metadata !DIExpression()), !dbg !5131
  %0 = load i32, ptr %node.addr, align 4, !dbg !5132
  %1 = load i16, ptr @amd_northbridges, align 8, !dbg !5133
  %conv = zext i16 %1 to i32, !dbg !5134
  %cmp = icmp slt i32 %0, %conv, !dbg !5135
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5136

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 2), align 8, !dbg !5137
  %3 = load i32, ptr %node.addr, align 4, !dbg !5138
  %idxprom = sext i32 %3 to i64, !dbg !5139
  %arrayidx = getelementptr %struct.amd_northbridge, ptr %2, i64 %idxprom, !dbg !5139
  br label %cond.end, !dbg !5136

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5136

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %cond.false ], !dbg !5136
  ret ptr %cond, !dbg !5140
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @amd_smn_read(i16 noundef zeroext %node, i32 noundef %address, ptr noundef %value) #0 align 16 !dbg !5141 {
entry:
  %node.addr = alloca i16, align 2
  %address.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i16 %node, ptr %node.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5145, metadata !DIExpression()), !dbg !5149
  store i32 %address, ptr %address.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5146, metadata !DIExpression()), !dbg !5150
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5147, metadata !DIExpression()), !dbg !5151
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5152
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5148, metadata !DIExpression()), !dbg !5153
  %0 = load i16, ptr %node.addr, align 2, !dbg !5154
  %1 = load i32, ptr %address.addr, align 4, !dbg !5155
  %2 = load ptr, ptr %value.addr, align 8, !dbg !5156
  %call = call i32 @__amd_smn_rw(i16 noundef zeroext %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext false) #16, !dbg !5157
  store i32 %call, ptr %err, align 4, !dbg !5153
  %3 = load ptr, ptr %value.addr, align 8, !dbg !5158
  %4 = load i32, ptr %3, align 4, !dbg !5158
  %cmp = icmp eq i32 %4, -1, !dbg !5158
  br i1 %cmp, label %if.then, label %if.end, !dbg !5160

if.then:                                          ; preds = %entry
  store i32 -19, ptr %err, align 4, !dbg !5161
  %5 = load ptr, ptr %value.addr, align 8, !dbg !5163
  store i32 0, ptr %5, align 4, !dbg !5164
  br label %if.end, !dbg !5165

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, ptr %err, align 4, !dbg !5166
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5167
  ret i32 %6, !dbg !5168
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__amd_smn_rw(i16 noundef zeroext %node, i32 noundef %address, ptr noundef %value, i1 noundef zeroext %write) #0 align 16 !dbg !5169 {
entry:
  %node.addr = alloca i16, align 2
  %address.addr = alloca i32, align 4
  %value.addr = alloca ptr, align 8
  %write.addr = alloca i8, align 1
  %root = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  store i16 %node, ptr %node.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5173, metadata !DIExpression()), !dbg !5181
  store i32 %address, ptr %address.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5174, metadata !DIExpression()), !dbg !5182
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5175, metadata !DIExpression()), !dbg !5183
  %frombool = zext i1 %write to i8
  store i8 %frombool, ptr %write.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !5176, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #15, !dbg !5185
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5177, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5178, metadata !DIExpression()), !dbg !5188
  store i32 -19, ptr %err, align 4, !dbg !5188
  %0 = load i16, ptr %node.addr, align 2, !dbg !5189
  %conv = zext i16 %0 to i32, !dbg !5189
  %1 = load i16, ptr @amd_northbridges, align 8, !dbg !5191
  %conv1 = zext i16 %1 to i32, !dbg !5192
  %cmp = icmp sge i32 %conv, %conv1, !dbg !5193
  br i1 %cmp, label %if.then, label %if.end, !dbg !5194

if.then:                                          ; preds = %entry
  br label %out, !dbg !5195

if.end:                                           ; preds = %entry
  %2 = load i16, ptr %node.addr, align 2, !dbg !5196
  %conv3 = zext i16 %2 to i32, !dbg !5196
  %call = call ptr @node_to_amd_nb(i32 noundef %conv3) #16, !dbg !5197
  %root4 = getelementptr inbounds %struct.amd_northbridge, ptr %call, i32 0, i32 0, !dbg !5198
  %3 = load ptr, ptr %root4, align 8, !dbg !5198
  store ptr %3, ptr %root, align 8, !dbg !5199
  %4 = load ptr, ptr %root, align 8, !dbg !5200
  %tobool = icmp ne ptr %4, null, !dbg !5200
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !5202

if.then5:                                         ; preds = %if.end
  br label %out, !dbg !5203

if.end6:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @smn_mutex) #16, !dbg !5204
  %5 = load ptr, ptr %root, align 8, !dbg !5205
  %6 = load i32, ptr %address.addr, align 4, !dbg !5206
  %call7 = call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 96, i32 noundef %6) #16, !dbg !5207
  store i32 %call7, ptr %err, align 4, !dbg !5208
  %7 = load i32, ptr %err, align 4, !dbg !5209
  %tobool8 = icmp ne i32 %7, 0, !dbg !5209
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !5211

if.then9:                                         ; preds = %if.end6
  br label %do.body, !dbg !5212

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !5215

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5215

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %address.addr, align 4, !dbg !5212
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %8) #17, !dbg !5212
  store i32 %call10, ptr %tmp, align 4, !dbg !5215
  %9 = load i32, ptr %tmp, align 4, !dbg !5212
  br label %out_unlock, !dbg !5217

if.end11:                                         ; preds = %if.end6
  %10 = load i8, ptr %write.addr, align 1, !dbg !5218, !range !5219, !noundef !1058
  %tobool12 = trunc i8 %10 to i1, !dbg !5218
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !5218

cond.true:                                        ; preds = %if.end11
  %11 = load ptr, ptr %root, align 8, !dbg !5220
  %12 = load ptr, ptr %value.addr, align 8, !dbg !5221
  %13 = load i32, ptr %12, align 4, !dbg !5222
  %call14 = call i32 @pci_write_config_dword(ptr noundef %11, i32 noundef 100, i32 noundef %13) #16, !dbg !5223
  br label %cond.end, !dbg !5218

cond.false:                                       ; preds = %if.end11
  %14 = load ptr, ptr %root, align 8, !dbg !5224
  %15 = load ptr, ptr %value.addr, align 8, !dbg !5225
  %call15 = call i32 @pci_read_config_dword(ptr noundef %14, i32 noundef 100, ptr noundef %15) #16, !dbg !5226
  br label %cond.end, !dbg !5218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call14, %cond.true ], [ %call15, %cond.false ], !dbg !5218
  store i32 %cond, ptr %err, align 4, !dbg !5227
  %16 = load i32, ptr %err, align 4, !dbg !5228
  %tobool16 = icmp ne i32 %16, 0, !dbg !5228
  br i1 %tobool16, label %if.then17, label %if.end26, !dbg !5230

if.then17:                                        ; preds = %cond.end
  br label %do.body18, !dbg !5231

do.body18:                                        ; preds = %if.then17
  br label %do.cond19, !dbg !5233

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5233

do.end20:                                         ; preds = %do.cond19
  %17 = load i8, ptr %write.addr, align 1, !dbg !5231, !range !5219, !noundef !1058
  %tobool22 = trunc i8 %17 to i1, !dbg !5231
  %18 = zext i1 %tobool22 to i64, !dbg !5231
  %cond24 = select i1 %tobool22, ptr @.str.3, ptr @.str.4, !dbg !5231
  %19 = load i32, ptr %address.addr, align 4, !dbg !5231
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %cond24, i32 noundef %19) #17, !dbg !5231
  store i32 %call25, ptr %tmp21, align 4, !dbg !5233
  %20 = load i32, ptr %tmp21, align 4, !dbg !5231
  br label %if.end26, !dbg !5235

if.end26:                                         ; preds = %do.end20, %cond.end
  br label %out_unlock, !dbg !5228

out_unlock:                                       ; preds = %if.end26, %do.end
  call void @llvm.dbg.label(metadata !5179), !dbg !5236
  call void @mutex_unlock(ptr noundef @smn_mutex) #16, !dbg !5237
  br label %out, !dbg !5237

out:                                              ; preds = %out_unlock, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !5180), !dbg !5238
  %21 = load i32, ptr %err, align 4, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #15, !dbg !5240
  ret i32 %21, !dbg !5241
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @amd_smn_write(i16 noundef zeroext %node, i32 noundef %address, i32 noundef %value) #0 align 16 !dbg !5242 {
entry:
  %node.addr = alloca i16, align 2
  %address.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store i16 %node, ptr %node.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !5246, metadata !DIExpression()), !dbg !5249
  store i32 %address, ptr %address.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5247, metadata !DIExpression()), !dbg !5250
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5248, metadata !DIExpression()), !dbg !5251
  %0 = load i16, ptr %node.addr, align 2, !dbg !5252
  %1 = load i32, ptr %address.addr, align 4, !dbg !5253
  %call = call i32 @__amd_smn_rw(i16 noundef zeroext %0, i32 noundef %1, ptr noundef %value.addr, i1 noundef zeroext true) #16, !dbg !5254
  ret i32 %call, !dbg !5255
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden zeroext i1 @early_is_amd_nb(i32 noundef %device) #3 section ".init.text" align 16 !dbg !5256 {
entry:
  %retval = alloca i1, align 1
  %device.addr = alloca i32, align 4
  %misc_ids = alloca ptr, align 8
  %id = alloca ptr, align 8
  %vendor = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %device, ptr %device.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !5260, metadata !DIExpression()), !dbg !5264
  call void @llvm.lifetime.start.p0(i64 8, ptr %misc_ids) #15, !dbg !5265
  call void @llvm.dbg.declare(metadata ptr %misc_ids, metadata !5261, metadata !DIExpression()), !dbg !5266
  store ptr @amd_nb_misc_ids, ptr %misc_ids, align 8, !dbg !5266
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #15, !dbg !5267
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5262, metadata !DIExpression()), !dbg !5268
  call void @llvm.lifetime.start.p0(i64 4, ptr %vendor) #15, !dbg !5269
  call void @llvm.dbg.declare(metadata ptr %vendor, metadata !5263, metadata !DIExpression()), !dbg !5270
  %0 = load i32, ptr %device.addr, align 4, !dbg !5271
  %and = and i32 %0, 65535, !dbg !5272
  store i32 %and, ptr %vendor, align 4, !dbg !5270
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5273
  %conv = zext i8 %1 to i32, !dbg !5275
  %cmp = icmp ne i32 %conv, 2, !dbg !5276
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5277

land.lhs.true:                                    ; preds = %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5278
  %conv2 = zext i8 %2 to i32, !dbg !5279
  %cmp3 = icmp ne i32 %conv2, 9, !dbg !5280
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5281

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !5282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5282

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5283
  %conv5 = zext i8 %3 to i32, !dbg !5285
  %cmp6 = icmp eq i32 %conv5, 9, !dbg !5286
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !5287

if.then8:                                         ; preds = %if.end
  store ptr @hygon_nb_misc_ids, ptr %misc_ids, align 8, !dbg !5288
  br label %if.end9, !dbg !5289

if.end9:                                          ; preds = %if.then8, %if.end
  %4 = load i32, ptr %device.addr, align 4, !dbg !5290
  %shr = lshr i32 %4, 16, !dbg !5290
  store i32 %shr, ptr %device.addr, align 4, !dbg !5290
  %5 = load ptr, ptr %misc_ids, align 8, !dbg !5291
  store ptr %5, ptr %id, align 8, !dbg !5293
  br label %for.cond, !dbg !5294

for.cond:                                         ; preds = %for.inc, %if.end9
  %6 = load ptr, ptr %id, align 8, !dbg !5295
  %vendor10 = getelementptr inbounds %struct.pci_device_id, ptr %6, i32 0, i32 0, !dbg !5297
  %7 = load i32, ptr %vendor10, align 8, !dbg !5297
  %tobool = icmp ne i32 %7, 0, !dbg !5298
  br i1 %tobool, label %for.body, label %for.end, !dbg !5298

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %vendor, align 4, !dbg !5299
  %9 = load ptr, ptr %id, align 8, !dbg !5301
  %vendor11 = getelementptr inbounds %struct.pci_device_id, ptr %9, i32 0, i32 0, !dbg !5302
  %10 = load i32, ptr %vendor11, align 8, !dbg !5302
  %cmp12 = icmp eq i32 %8, %10, !dbg !5303
  br i1 %cmp12, label %land.lhs.true14, label %if.end19, !dbg !5304

land.lhs.true14:                                  ; preds = %for.body
  %11 = load i32, ptr %device.addr, align 4, !dbg !5305
  %12 = load ptr, ptr %id, align 8, !dbg !5306
  %device15 = getelementptr inbounds %struct.pci_device_id, ptr %12, i32 0, i32 1, !dbg !5307
  %13 = load i32, ptr %device15, align 4, !dbg !5307
  %cmp16 = icmp eq i32 %11, %13, !dbg !5308
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5309

if.then18:                                        ; preds = %land.lhs.true14
  store i1 true, ptr %retval, align 1, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5310

if.end19:                                         ; preds = %land.lhs.true14, %for.body
  br label %for.inc, !dbg !5307

for.inc:                                          ; preds = %if.end19
  %14 = load ptr, ptr %id, align 8, !dbg !5311
  %incdec.ptr = getelementptr %struct.pci_device_id, ptr %14, i32 1, !dbg !5311
  store ptr %incdec.ptr, ptr %id, align 8, !dbg !5311
  br label %for.cond, !dbg !5312, !llvm.loop !5313

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !5317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5317

cleanup:                                          ; preds = %for.end, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %vendor) #15, !dbg !5318
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #15, !dbg !5318
  call void @llvm.lifetime.end.p0(i64 8, ptr %misc_ids) #15, !dbg !5318
  %15 = load i1, ptr %retval, align 1, !dbg !5318
  ret i1 %15, !dbg !5318
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @amd_get_mmconfig_range(ptr noundef %res) #0 align 16 !dbg !5319 {
entry:
  %retval = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %base = alloca i64, align 8
  %msr = alloca i64, align 8
  %segn_busn_bits = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5323, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %base, metadata !5324, metadata !DIExpression()), !dbg !5329
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #15, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !5325, metadata !DIExpression()), !dbg !5330
  call void @llvm.lifetime.start.p0(i64 4, ptr %segn_busn_bits) #15, !dbg !5331
  call void @llvm.dbg.declare(metadata ptr %segn_busn_bits, metadata !5326, metadata !DIExpression()), !dbg !5332
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5333
  %conv = zext i8 %0 to i32, !dbg !5335
  %cmp = icmp ne i32 %conv, 2, !dbg !5336
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5337

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5338
  %conv2 = zext i8 %1 to i32, !dbg !5339
  %cmp3 = icmp ne i32 %conv2, 9, !dbg !5340
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5341

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !5342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5342

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5343
  %conv5 = zext i8 %2 to i32, !dbg !5345
  %cmp6 = icmp slt i32 %conv5, 16, !dbg !5346
  br i1 %cmp6, label %if.then8, label %lor.lhs.false, !dbg !5347

lor.lhs.false:                                    ; preds = %if.end
  %call = call i32 @rdmsrl_safe(i32 noundef -1073676200, ptr noundef %msr) #16, !dbg !5348
  %tobool = icmp ne i32 %call, 0, !dbg !5348
  br i1 %tobool, label %if.then8, label %if.end9, !dbg !5349

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store ptr null, ptr %retval, align 8, !dbg !5350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5350

if.end9:                                          ; preds = %lor.lhs.false
  %3 = load i64, ptr %msr, align 8, !dbg !5351
  %and = and i64 %3, 1, !dbg !5353
  %tobool10 = icmp ne i64 %and, 0, !dbg !5353
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5354

if.then11:                                        ; preds = %if.end9
  store ptr null, ptr %retval, align 8, !dbg !5355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5355

if.end12:                                         ; preds = %if.end9
  %4 = load i64, ptr %msr, align 8, !dbg !5356
  %and13 = and i64 %4, 281474975662080, !dbg !5357
  store i64 %and13, ptr %base, align 8, !dbg !5358
  %5 = load i64, ptr %msr, align 8, !dbg !5359
  %shr = lshr i64 %5, 2, !dbg !5360
  %and14 = and i64 %shr, 15, !dbg !5361
  %conv15 = trunc i64 %and14 to i32, !dbg !5362
  store i32 %conv15, ptr %segn_busn_bits, align 4, !dbg !5363
  %6 = load ptr, ptr %res.addr, align 8, !dbg !5364
  %flags = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 3, !dbg !5365
  store i64 512, ptr %flags, align 8, !dbg !5366
  %7 = load i64, ptr %base, align 8, !dbg !5367
  %8 = load ptr, ptr %res.addr, align 8, !dbg !5368
  %start = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !5369
  store i64 %7, ptr %start, align 8, !dbg !5370
  %9 = load i64, ptr %base, align 8, !dbg !5371
  %10 = load i32, ptr %segn_busn_bits, align 4, !dbg !5372
  %add = add i32 %10, 20, !dbg !5373
  %sh_prom = zext i32 %add to i64, !dbg !5374
  %shl = shl i64 1, %sh_prom, !dbg !5374
  %add16 = add i64 %9, %shl, !dbg !5375
  %sub = sub i64 %add16, 1, !dbg !5376
  %11 = load ptr, ptr %res.addr, align 8, !dbg !5377
  %end = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1, !dbg !5378
  store i64 %sub, ptr %end, align 8, !dbg !5379
  %12 = load ptr, ptr %res.addr, align 8, !dbg !5380
  store ptr %12, ptr %retval, align 8, !dbg !5381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5381

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %segn_busn_bits) #15, !dbg !5382
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #15, !dbg !5382
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !5382
  %13 = load ptr, ptr %retval, align 8, !dbg !5382
  ret ptr %13, !dbg !5382
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #4 align 16 !dbg !5383 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5389, metadata !DIExpression()), !dbg !5392
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5390, metadata !DIExpression()), !dbg !5393
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5394
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5391, metadata !DIExpression()), !dbg !5395
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5396
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #16, !dbg !5397
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5398
  store i64 %call, ptr %1, align 8, !dbg !5399
  %2 = load i32, ptr %err, align 4, !dbg !5400
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5401
  ret i32 %2, !dbg !5402
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @amd_get_subcaches(i32 noundef %cpu) #0 align 16 !dbg !5403 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %link = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %mask = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__ptr10 = alloca i64, align 8
  %tmp11 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5405, metadata !DIExpression()), !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #15, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5406, metadata !DIExpression()), !dbg !5420
  br label %do.body, !dbg !5421

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5407, metadata !DIExpression()), !dbg !5422
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5422
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5422
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5421
  br label %do.cond, !dbg !5422

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5422

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5423
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5410, metadata !DIExpression()), !dbg !5423
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !5423
  %1 = load i64, ptr %__ptr, align 8, !dbg !5423
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5423
  %idxprom = sext i32 %2 to i64, !dbg !5423
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5423
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5423
  %add = add i64 %1, %3, !dbg !5423
  %4 = inttoptr i64 %add to ptr, !dbg !5423
  store ptr %4, ptr %tmp1, align 8, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5421
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5423
  store ptr %5, ptr %tmp, align 8, !dbg !5422
  %6 = load ptr, ptr %tmp, align 8, !dbg !5421
  %cpu_die_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 29, !dbg !5424
  %7 = load i16, ptr %cpu_die_id, align 8, !dbg !5424
  %conv = zext i16 %7 to i32, !dbg !5424
  %call = call ptr @node_to_amd_nb(i32 noundef %conv) #16, !dbg !5425
  %link2 = getelementptr inbounds %struct.amd_northbridge, ptr %call, i32 0, i32 2, !dbg !5426
  %8 = load ptr, ptr %link2, align 8, !dbg !5426
  store ptr %8, ptr %link, align 8, !dbg !5420
  call void @llvm.lifetime.start.p0(i64 4, ptr %mask) #15, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5412, metadata !DIExpression()), !dbg !5428
  %call3 = call zeroext i1 @amd_nb_has_feature(i32 noundef 4) #16, !dbg !5429
  br i1 %call3, label %if.end, label %if.then, !dbg !5431

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !5432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5432

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %link, align 8, !dbg !5433
  %call4 = call i32 @pci_read_config_dword(ptr noundef %9, i32 noundef 468, ptr noundef %mask) #16, !dbg !5434
  %10 = load i32, ptr %mask, align 4, !dbg !5435
  br label %do.body5, !dbg !5436

do.body5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify6) #15, !dbg !5437
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify6, metadata !5413, metadata !DIExpression()), !dbg !5437
  store ptr null, ptr %__vpp_verify6, align 8, !dbg !5437
  %11 = load ptr, ptr %__vpp_verify6, align 8, !dbg !5437
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify6) #15, !dbg !5436
  br label %do.cond7, !dbg !5437

do.cond7:                                         ; preds = %do.body5
  br label %do.end8, !dbg !5437

do.end8:                                          ; preds = %do.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr10) #15, !dbg !5438
  call void @llvm.dbg.declare(metadata ptr %__ptr10, metadata !5416, metadata !DIExpression()), !dbg !5438
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr10, align 8, !dbg !5438
  %12 = load i64, ptr %__ptr10, align 8, !dbg !5438
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !5438
  %idxprom12 = sext i32 %13 to i64, !dbg !5438
  %arrayidx13 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom12, !dbg !5438
  %14 = load i64, ptr %arrayidx13, align 8, !dbg !5438
  %add14 = add i64 %12, %14, !dbg !5438
  %15 = inttoptr i64 %add14 to ptr, !dbg !5438
  store ptr %15, ptr %tmp11, align 8, !dbg !5438
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr10) #15, !dbg !5436
  %16 = load ptr, ptr %tmp11, align 8, !dbg !5438
  store ptr %16, ptr %tmp9, align 8, !dbg !5437
  %17 = load ptr, ptr %tmp9, align 8, !dbg !5436
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 28, !dbg !5439
  %18 = load i16, ptr %cpu_core_id, align 2, !dbg !5439
  %conv15 = zext i16 %18 to i32, !dbg !5440
  %mul = mul i32 4, %conv15, !dbg !5441
  %shr = lshr i32 %10, %mul, !dbg !5442
  %and = and i32 %shr, 15, !dbg !5443
  store i32 %and, ptr %retval, align 4, !dbg !5444
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5444

cleanup:                                          ; preds = %do.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %mask) #15, !dbg !5445
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #15, !dbg !5445
  %19 = load i32, ptr %retval, align 4, !dbg !5445
  ret i32 %19, !dbg !5445
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5446 dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @amd_set_subcaches(i32 noundef %cpu, i64 noundef %mask) #0 align 16 !dbg !265 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %mask.addr = alloca i64, align 8
  %nb = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %reg = alloca i32, align 4
  %cuid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__vpp_verify20 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  %__ptr24 = alloca i64, align 8
  %tmp25 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !269, metadata !DIExpression()), !dbg !5451
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !270, metadata !DIExpression()), !dbg !5452
  call void @llvm.lifetime.start.p0(i64 8, ptr %nb) #15, !dbg !5453
  call void @llvm.dbg.declare(metadata ptr %nb, metadata !271, metadata !DIExpression()), !dbg !5454
  br label %do.body, !dbg !5455

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5456
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4986, metadata !DIExpression()), !dbg !5456
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5456
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5455
  br label %do.cond, !dbg !5456

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5456

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !5457
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4989, metadata !DIExpression()), !dbg !5457
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !5457
  %1 = load i64, ptr %__ptr, align 8, !dbg !5457
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !5457
  %idxprom = sext i32 %2 to i64, !dbg !5457
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !5457
  %3 = load i64, ptr %arrayidx, align 8, !dbg !5457
  %add = add i64 %1, %3, !dbg !5457
  %4 = inttoptr i64 %add to ptr, !dbg !5457
  store ptr %4, ptr %tmp1, align 8, !dbg !5457
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !5455
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5457
  store ptr %5, ptr %tmp, align 8, !dbg !5456
  %6 = load ptr, ptr %tmp, align 8, !dbg !5455
  %cpu_die_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 29, !dbg !5458
  %7 = load i16, ptr %cpu_die_id, align 8, !dbg !5458
  %conv = zext i16 %7 to i32, !dbg !5458
  %call = call ptr @node_to_amd_nb(i32 noundef %conv) #16, !dbg !5459
  store ptr %call, ptr %nb, align 8, !dbg !5454
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #15, !dbg !5460
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !4991, metadata !DIExpression()), !dbg !5461
  call void @llvm.lifetime.start.p0(i64 4, ptr %cuid) #15, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %cuid, metadata !4992, metadata !DIExpression()), !dbg !5463
  %call2 = call zeroext i1 @amd_nb_has_feature(i32 noundef 4) #16, !dbg !5464
  br i1 %call2, label %lor.lhs.false, label %if.then, !dbg !5466

lor.lhs.false:                                    ; preds = %do.end
  %8 = load i64, ptr %mask.addr, align 8, !dbg !5467
  %cmp = icmp ugt i64 %8, 15, !dbg !5468
  br i1 %cmp, label %if.then, label %if.end, !dbg !5469

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 -22, ptr %retval, align 4, !dbg !5470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5470

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i32, ptr @amd_set_subcaches.reset, align 4, !dbg !5471
  %cmp4 = icmp eq i32 %9, 0, !dbg !5473
  br i1 %cmp4, label %if.then6, label %if.end9, !dbg !5474

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %nb, align 8, !dbg !5475
  %link = getelementptr inbounds %struct.amd_northbridge, ptr %10, i32 0, i32 2, !dbg !5477
  %11 = load ptr, ptr %link, align 8, !dbg !5477
  %call7 = call i32 @pci_read_config_dword(ptr noundef %11, i32 noundef 468, ptr noundef @amd_set_subcaches.reset) #16, !dbg !5478
  %12 = load ptr, ptr %nb, align 8, !dbg !5479
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %12, i32 0, i32 1, !dbg !5480
  %13 = load ptr, ptr %misc, align 8, !dbg !5480
  %call8 = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef 440, ptr noundef @amd_set_subcaches.ban) #16, !dbg !5481
  %14 = load i32, ptr @amd_set_subcaches.ban, align 4, !dbg !5482
  %and = and i32 %14, 1572864, !dbg !5482
  store i32 %and, ptr @amd_set_subcaches.ban, align 4, !dbg !5482
  br label %if.end9, !dbg !5483

if.end9:                                          ; preds = %if.then6, %if.end
  %15 = load i64, ptr %mask.addr, align 8, !dbg !5484
  %cmp10 = icmp ne i64 %15, 15, !dbg !5486
  br i1 %cmp10, label %if.then12, label %if.end18, !dbg !5487

if.then12:                                        ; preds = %if.end9
  %16 = load ptr, ptr %nb, align 8, !dbg !5488
  %misc13 = getelementptr inbounds %struct.amd_northbridge, ptr %16, i32 0, i32 1, !dbg !5490
  %17 = load ptr, ptr %misc13, align 8, !dbg !5490
  %call14 = call i32 @pci_read_config_dword(ptr noundef %17, i32 noundef 440, ptr noundef %reg) #16, !dbg !5491
  %18 = load ptr, ptr %nb, align 8, !dbg !5492
  %misc15 = getelementptr inbounds %struct.amd_northbridge, ptr %18, i32 0, i32 1, !dbg !5493
  %19 = load ptr, ptr %misc15, align 8, !dbg !5493
  %20 = load i32, ptr %reg, align 4, !dbg !5494
  %and16 = and i32 %20, -1572865, !dbg !5495
  %call17 = call i32 @pci_write_config_dword(ptr noundef %19, i32 noundef 440, i32 noundef %and16) #16, !dbg !5496
  br label %if.end18, !dbg !5497

if.end18:                                         ; preds = %if.then12, %if.end9
  br label %do.body19, !dbg !5498

do.body19:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify20) #15, !dbg !5499
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify20, metadata !4993, metadata !DIExpression()), !dbg !5499
  store ptr null, ptr %__vpp_verify20, align 8, !dbg !5499
  %21 = load ptr, ptr %__vpp_verify20, align 8, !dbg !5499
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify20) #15, !dbg !5498
  br label %do.cond21, !dbg !5499

do.cond21:                                        ; preds = %do.body19
  br label %do.end22, !dbg !5499

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr24) #15, !dbg !5500
  call void @llvm.dbg.declare(metadata ptr %__ptr24, metadata !4996, metadata !DIExpression()), !dbg !5500
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr24, align 8, !dbg !5500
  %22 = load i64, ptr %__ptr24, align 8, !dbg !5500
  %23 = load i32, ptr %cpu.addr, align 4, !dbg !5500
  %idxprom26 = sext i32 %23 to i64, !dbg !5500
  %arrayidx27 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom26, !dbg !5500
  %24 = load i64, ptr %arrayidx27, align 8, !dbg !5500
  %add28 = add i64 %22, %24, !dbg !5500
  %25 = inttoptr i64 %add28 to ptr, !dbg !5500
  store ptr %25, ptr %tmp25, align 8, !dbg !5500
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr24) #15, !dbg !5498
  %26 = load ptr, ptr %tmp25, align 8, !dbg !5500
  store ptr %26, ptr %tmp23, align 8, !dbg !5499
  %27 = load ptr, ptr %tmp23, align 8, !dbg !5498
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %27, i32 0, i32 28, !dbg !5501
  %28 = load i16, ptr %cpu_core_id, align 2, !dbg !5501
  %conv29 = zext i16 %28 to i32, !dbg !5502
  store i32 %conv29, ptr %cuid, align 4, !dbg !5503
  %29 = load i32, ptr %cuid, align 4, !dbg !5504
  %mul = mul i32 4, %29, !dbg !5505
  %30 = load i64, ptr %mask.addr, align 8, !dbg !5506
  %sh_prom = zext i32 %mul to i64, !dbg !5506
  %shl = shl i64 %30, %sh_prom, !dbg !5506
  store i64 %shl, ptr %mask.addr, align 8, !dbg !5506
  %31 = load i32, ptr %cuid, align 4, !dbg !5507
  %shl30 = shl i32 1, %31, !dbg !5508
  %xor = xor i32 15, %shl30, !dbg !5509
  %shl31 = shl i32 %xor, 26, !dbg !5510
  %conv32 = sext i32 %shl31 to i64, !dbg !5511
  %32 = load i64, ptr %mask.addr, align 8, !dbg !5512
  %or = or i64 %32, %conv32, !dbg !5512
  store i64 %or, ptr %mask.addr, align 8, !dbg !5512
  %33 = load ptr, ptr %nb, align 8, !dbg !5513
  %link33 = getelementptr inbounds %struct.amd_northbridge, ptr %33, i32 0, i32 2, !dbg !5514
  %34 = load ptr, ptr %link33, align 8, !dbg !5514
  %35 = load i64, ptr %mask.addr, align 8, !dbg !5515
  %conv34 = trunc i64 %35 to i32, !dbg !5515
  %call35 = call i32 @pci_write_config_dword(ptr noundef %34, i32 noundef 468, i32 noundef %conv34) #16, !dbg !5516
  %36 = load ptr, ptr %nb, align 8, !dbg !5517
  %link36 = getelementptr inbounds %struct.amd_northbridge, ptr %36, i32 0, i32 2, !dbg !5518
  %37 = load ptr, ptr %link36, align 8, !dbg !5518
  %call37 = call i32 @pci_read_config_dword(ptr noundef %37, i32 noundef 468, ptr noundef %reg) #16, !dbg !5519
  %38 = load i32, ptr %reg, align 4, !dbg !5520
  %39 = load i32, ptr @amd_set_subcaches.reset, align 4, !dbg !5522
  %cmp38 = icmp eq i32 %38, %39, !dbg !5523
  br i1 %cmp38, label %if.then40, label %if.end47, !dbg !5524

if.then40:                                        ; preds = %do.end22
  %40 = load ptr, ptr %nb, align 8, !dbg !5525
  %misc41 = getelementptr inbounds %struct.amd_northbridge, ptr %40, i32 0, i32 1, !dbg !5527
  %41 = load ptr, ptr %misc41, align 8, !dbg !5527
  %call42 = call i32 @pci_read_config_dword(ptr noundef %41, i32 noundef 440, ptr noundef %reg) #16, !dbg !5528
  %42 = load i32, ptr %reg, align 4, !dbg !5529
  %and43 = and i32 %42, -1572865, !dbg !5529
  store i32 %and43, ptr %reg, align 4, !dbg !5529
  %43 = load ptr, ptr %nb, align 8, !dbg !5530
  %misc44 = getelementptr inbounds %struct.amd_northbridge, ptr %43, i32 0, i32 1, !dbg !5531
  %44 = load ptr, ptr %misc44, align 8, !dbg !5531
  %45 = load i32, ptr %reg, align 4, !dbg !5532
  %46 = load i32, ptr @amd_set_subcaches.ban, align 4, !dbg !5533
  %or45 = or i32 %45, %46, !dbg !5534
  %call46 = call i32 @pci_write_config_dword(ptr noundef %44, i32 noundef 440, i32 noundef %or45) #16, !dbg !5535
  br label %if.end47, !dbg !5536

if.end47:                                         ; preds = %if.then40, %do.end22
  store i32 0, ptr %retval, align 4, !dbg !5537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5537

cleanup:                                          ; preds = %if.end47, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cuid) #15, !dbg !5538
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #15, !dbg !5538
  call void @llvm.lifetime.end.p0(i64 8, ptr %nb) #15, !dbg !5538
  %47 = load i32, ptr %retval, align 4, !dbg !5538
  ret i32 %47, !dbg !5538
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5539 dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @amd_flush_garts() #0 align 16 !dbg !5002 {
entry:
  %flushed = alloca i32, align 4
  %i = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %w = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %flushed) #15, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %flushed, metadata !5004, metadata !DIExpression()), !dbg !5543
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5542
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5005, metadata !DIExpression()), !dbg !5544
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !5545
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5006, metadata !DIExpression()), !dbg !5546
  %call = call zeroext i1 @amd_nb_has_feature(i32 noundef 1) #16, !dbg !5547
  br i1 %call, label %if.end, label %if.then, !dbg !5549

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5550

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !5551

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !5552

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5553
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5007, metadata !DIExpression()), !dbg !5553
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5553
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5011, metadata !DIExpression()), !dbg !5553
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5553
  %conv = zext i1 %cmp to i32, !dbg !5553
  store i32 1, ptr %tmp, align 4, !dbg !5553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5554
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5554
  %0 = load i32, ptr %tmp, align 4, !dbg !5553
  %call2 = call ptr @spinlock_check(ptr noundef @amd_flush_garts.gart_lock) #16, !dbg !5554
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #16, !dbg !5554
  store i64 %call3, ptr %flags, align 8, !dbg !5554
  br label %do.cond, !dbg !5554

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5554

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5552

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5552

do.end5:                                          ; preds = %do.cond4
  store i32 0, ptr %flushed, align 4, !dbg !5555
  store i32 0, ptr %i, align 4, !dbg !5556
  br label %for.cond, !dbg !5558

for.cond:                                         ; preds = %for.inc, %do.end5
  %1 = load i32, ptr %i, align 4, !dbg !5559
  %2 = load i16, ptr @amd_northbridges, align 8, !dbg !5561
  %conv6 = zext i16 %2 to i32, !dbg !5562
  %cmp7 = icmp slt i32 %1, %conv6, !dbg !5563
  br i1 %cmp7, label %for.body, label %for.end, !dbg !5564

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !5565
  %call9 = call ptr @node_to_amd_nb(i32 noundef %3) #16, !dbg !5567
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %call9, i32 0, i32 1, !dbg !5568
  %4 = load ptr, ptr %misc, align 8, !dbg !5568
  %5 = load ptr, ptr @flush_words, align 8, !dbg !5569
  %6 = load i32, ptr %i, align 4, !dbg !5570
  %idxprom = sext i32 %6 to i64, !dbg !5569
  %arrayidx = getelementptr i32, ptr %5, i64 %idxprom, !dbg !5569
  %7 = load i32, ptr %arrayidx, align 4, !dbg !5569
  %or = or i32 %7, 1, !dbg !5571
  %call10 = call i32 @pci_write_config_dword(ptr noundef %4, i32 noundef 156, i32 noundef %or) #16, !dbg !5572
  %8 = load i32, ptr %flushed, align 4, !dbg !5573
  %inc = add i32 %8, 1, !dbg !5573
  store i32 %inc, ptr %flushed, align 4, !dbg !5573
  br label %for.inc, !dbg !5574

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !5575
  %inc11 = add i32 %9, 1, !dbg !5575
  store i32 %inc11, ptr %i, align 4, !dbg !5575
  br label %for.cond, !dbg !5576, !llvm.loop !5577

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !5579
  br label %for.cond12, !dbg !5580

for.cond12:                                       ; preds = %for.inc24, %for.end
  %10 = load i32, ptr %i, align 4, !dbg !5581
  %11 = load i16, ptr @amd_northbridges, align 8, !dbg !5582
  %conv13 = zext i16 %11 to i32, !dbg !5583
  %cmp14 = icmp slt i32 %10, %conv13, !dbg !5584
  br i1 %cmp14, label %for.body16, label %for.end26, !dbg !5585

for.body16:                                       ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 4, ptr %w) #15, !dbg !5586
  call void @llvm.dbg.declare(metadata ptr %w, metadata !5012, metadata !DIExpression()), !dbg !5587
  br label %for.cond17, !dbg !5588

for.cond17:                                       ; preds = %if.end22, %for.body16
  %12 = load i32, ptr %i, align 4, !dbg !5589
  %call18 = call ptr @node_to_amd_nb(i32 noundef %12) #16, !dbg !5593
  %misc19 = getelementptr inbounds %struct.amd_northbridge, ptr %call18, i32 0, i32 1, !dbg !5594
  %13 = load ptr, ptr %misc19, align 8, !dbg !5594
  %call20 = call i32 @pci_read_config_dword(ptr noundef %13, i32 noundef 156, ptr noundef %w) #16, !dbg !5595
  %14 = load i32, ptr %w, align 4, !dbg !5596
  %and = and i32 %14, 1, !dbg !5598
  %tobool = icmp ne i32 %and, 0, !dbg !5598
  br i1 %tobool, label %if.end22, label %if.then21, !dbg !5599

if.then21:                                        ; preds = %for.cond17
  br label %for.end23, !dbg !5600

if.end22:                                         ; preds = %for.cond17
  call void @cpu_relax() #16, !dbg !5601
  br label %for.cond17, !dbg !5602, !llvm.loop !5603

for.end23:                                        ; preds = %if.then21
  call void @llvm.lifetime.end.p0(i64 4, ptr %w) #15, !dbg !5606
  br label %for.inc24, !dbg !5607

for.inc24:                                        ; preds = %for.end23
  %15 = load i32, ptr %i, align 4, !dbg !5608
  %inc25 = add i32 %15, 1, !dbg !5608
  store i32 %inc25, ptr %i, align 4, !dbg !5608
  br label %for.cond12, !dbg !5609, !llvm.loop !5610

for.end26:                                        ; preds = %for.cond12
  %16 = load i64, ptr %flags, align 8, !dbg !5612
  call void @spin_unlock_irqrestore(ptr noundef @amd_flush_garts.gart_lock, i64 noundef %16) #16, !dbg !5613
  %17 = load i32, ptr %flushed, align 4, !dbg !5614
  %tobool27 = icmp ne i32 %17, 0, !dbg !5614
  br i1 %tobool27, label %if.end34, label %if.then28, !dbg !5616

if.then28:                                        ; preds = %for.end26
  br label %do.body29, !dbg !5617

do.body29:                                        ; preds = %if.then28
  br label %do.cond30, !dbg !5619

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5619

do.end31:                                         ; preds = %do.cond30
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #17, !dbg !5617
  store i32 %call33, ptr %tmp32, align 4, !dbg !5619
  %18 = load i32, ptr %tmp32, align 4, !dbg !5617
  br label %if.end34, !dbg !5621

if.end34:                                         ; preds = %do.end31, %for.end26
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5622
  br label %cleanup, !dbg !5622

cleanup:                                          ; preds = %if.end34, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !5622
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5622
  call void @llvm.lifetime.end.p0(i64 4, ptr %flushed) #15, !dbg !5622
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5622

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5623 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !5628 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5635
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5636
  ret ptr %1, !dbg !5637
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #6 align 16 !dbg !5638 {
entry:
  call void @rep_nop() #16, !dbg !5640
  ret void, !dbg !5641
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !5642 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5646, metadata !DIExpression()), !dbg !5652
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5647, metadata !DIExpression()), !dbg !5653
  br label %do.body, !dbg !5654

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5648, metadata !DIExpression()), !dbg !5655
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !5655
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5651, metadata !DIExpression()), !dbg !5655
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5655
  %conv = zext i1 %cmp to i32, !dbg !5655
  store i32 1, ptr %tmp, align 4, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !5656
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !5656
  %0 = load i32, ptr %tmp, align 4, !dbg !5655
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5656
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5656
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5656
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !5656
  br label %do.end, !dbg !5656

do.end:                                           ; preds = %do.body
  ret void, !dbg !5657
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5658 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_amd_nb__298_550_init_amd_nbs5() #3 section ".init.text" align 16 !dbg !5662 {
entry:
  %call = call i32 @init_amd_nbs() #17, !dbg !5663
  ret i32 %call, !dbg !5663
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_amd_nbs() #3 section ".init.text" align 16 !dbg !5664 {
entry:
  %retval = alloca i32, align 4
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5665
  %conv = zext i8 %0 to i32, !dbg !5667
  %cmp = icmp ne i32 %conv, 2, !dbg !5668
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5669

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5670
  %conv2 = zext i8 %1 to i32, !dbg !5671
  %cmp3 = icmp ne i32 %conv2, 9, !dbg !5672
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5673

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !5674
  br label %return, !dbg !5674

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call i32 @amd_cache_northbridges() #16, !dbg !5675
  call void @amd_cache_gart() #16, !dbg !5676
  call void @fix_erratum_688() #17, !dbg !5677
  store i32 0, ptr %retval, align 4, !dbg !5678
  br label %return, !dbg !5678

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5679
  ret i32 %2, !dbg !5679
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5680 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5684 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #4 align 16 !dbg !5685 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5689, metadata !DIExpression()), !dbg !5693
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5690, metadata !DIExpression()), !dbg !5694
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #15, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %low, metadata !5691, metadata !DIExpression()), !dbg !5695
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #15, !dbg !5695
  call void @llvm.dbg.declare(metadata ptr %high, metadata !5692, metadata !DIExpression()), !dbg !5695
  %0 = load ptr, ptr %err.addr, align 8, !dbg !5696
  %1 = load i32, ptr %msr.addr, align 4, !dbg !5697
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #15, !dbg !5698, !srcloc !5699
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !5698
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !5698
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !5698
  store i32 %asmresult, ptr %0, align 4, !dbg !5698
  store i64 %asmresult1, ptr %low, align 8, !dbg !5698
  store i64 %asmresult2, ptr %high, align 8, !dbg !5698
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #16, !dbg !5700
  br i1 %call, label %if.then, label %if.end, !dbg !5702

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !5703
  %4 = load i64, ptr %low, align 8, !dbg !5704
  %5 = load i64, ptr %high, align 8, !dbg !5704
  %shl = shl i64 %5, 32, !dbg !5704
  %or = or i64 %4, %shl, !dbg !5704
  %6 = load ptr, ptr %err.addr, align 8, !dbg !5705
  %7 = load i32, ptr %6, align 4, !dbg !5706
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #16, !dbg !5707
  br label %if.end, !dbg !5707

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !5708
  %9 = load i64, ptr %high, align 8, !dbg !5708
  %shl3 = shl i64 %9, 32, !dbg !5708
  %or4 = or i64 %8, %shl3, !dbg !5708
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #15, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #15, !dbg !5709
  ret i64 %or4, !dbg !5710
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !5711 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5727, metadata !DIExpression()), !dbg !5728
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5729
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #16, !dbg !5730
  ret i1 %call, !dbg !5731
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5732 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !5735 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5740, metadata !DIExpression()), !dbg !5743
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5741, metadata !DIExpression()), !dbg !5744
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5745
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5746, !range !5219, !noundef !1058
  %tobool = trunc i8 %1 to i1, !dbg !5746
  %conv = zext i1 %tobool to i32, !dbg !5746
  %or = or i32 2, %conv, !dbg !5747
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #15
          to label %asm.fallthrough [label %l_yes], !dbg !5748, !srcloc !5749

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5750
  br label %return, !dbg !5750

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5742), !dbg !5751
  store i1 true, ptr %retval, align 1, !dbg !5752
  br label %return, !dbg !5752

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5753
  ret i1 %2, !dbg !5753
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #6 align 16 !dbg !5754 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5755, !srcloc !5756
  ret void, !dbg !5757
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5758 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @amd_cache_northbridges() #0 align 16 !dbg !5761 {
entry:
  %retval = alloca i32, align 4
  %misc_ids = alloca ptr, align 8
  %link_ids = alloca ptr, align 8
  %root_ids = alloca ptr, align 8
  %root = alloca ptr, align 8
  %misc = alloca ptr, align 8
  %link = alloca ptr, align 8
  %nb = alloca ptr, align 8
  %roots_per_misc = alloca i16, align 2
  %misc_count = alloca i16, align 2
  %root_count = alloca i16, align 2
  %i = alloca i16, align 2
  %j = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %misc_ids) #15, !dbg !5775
  call void @llvm.dbg.declare(metadata ptr %misc_ids, metadata !5763, metadata !DIExpression()), !dbg !5776
  store ptr @amd_nb_misc_ids, ptr %misc_ids, align 8, !dbg !5776
  call void @llvm.lifetime.start.p0(i64 8, ptr %link_ids) #15, !dbg !5777
  call void @llvm.dbg.declare(metadata ptr %link_ids, metadata !5764, metadata !DIExpression()), !dbg !5778
  store ptr @amd_nb_link_ids, ptr %link_ids, align 8, !dbg !5778
  call void @llvm.lifetime.start.p0(i64 8, ptr %root_ids) #15, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %root_ids, metadata !5765, metadata !DIExpression()), !dbg !5780
  store ptr @amd_root_ids, ptr %root_ids, align 8, !dbg !5780
  call void @llvm.lifetime.start.p0(i64 8, ptr %root) #15, !dbg !5781
  call void @llvm.dbg.declare(metadata ptr %root, metadata !5766, metadata !DIExpression()), !dbg !5782
  call void @llvm.lifetime.start.p0(i64 8, ptr %misc) #15, !dbg !5781
  call void @llvm.dbg.declare(metadata ptr %misc, metadata !5767, metadata !DIExpression()), !dbg !5783
  call void @llvm.lifetime.start.p0(i64 8, ptr %link) #15, !dbg !5781
  call void @llvm.dbg.declare(metadata ptr %link, metadata !5768, metadata !DIExpression()), !dbg !5784
  call void @llvm.lifetime.start.p0(i64 8, ptr %nb) #15, !dbg !5785
  call void @llvm.dbg.declare(metadata ptr %nb, metadata !5769, metadata !DIExpression()), !dbg !5786
  call void @llvm.lifetime.start.p0(i64 2, ptr %roots_per_misc) #15, !dbg !5787
  call void @llvm.dbg.declare(metadata ptr %roots_per_misc, metadata !5770, metadata !DIExpression()), !dbg !5788
  store i16 0, ptr %roots_per_misc, align 2, !dbg !5788
  call void @llvm.lifetime.start.p0(i64 2, ptr %misc_count) #15, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %misc_count, metadata !5771, metadata !DIExpression()), !dbg !5790
  store i16 0, ptr %misc_count, align 2, !dbg !5790
  call void @llvm.lifetime.start.p0(i64 2, ptr %root_count) #15, !dbg !5791
  call void @llvm.dbg.declare(metadata ptr %root_count, metadata !5772, metadata !DIExpression()), !dbg !5792
  store i16 0, ptr %root_count, align 2, !dbg !5792
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #15, !dbg !5793
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5773, metadata !DIExpression()), !dbg !5794
  call void @llvm.lifetime.start.p0(i64 2, ptr %j) #15, !dbg !5793
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5774, metadata !DIExpression()), !dbg !5795
  %0 = load i16, ptr @amd_northbridges, align 8, !dbg !5796
  %tobool = icmp ne i16 %0, 0, !dbg !5798
  br i1 %tobool, label %if.then, label %if.end, !dbg !5799

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5800
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5800

if.end:                                           ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !5801
  %conv = zext i8 %1 to i32, !dbg !5803
  %cmp = icmp eq i32 %conv, 9, !dbg !5804
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5805

if.then2:                                         ; preds = %if.end
  store ptr @hygon_root_ids, ptr %root_ids, align 8, !dbg !5806
  store ptr @hygon_nb_misc_ids, ptr %misc_ids, align 8, !dbg !5808
  store ptr @hygon_nb_link_ids, ptr %link_ids, align 8, !dbg !5809
  br label %if.end3, !dbg !5810

if.end3:                                          ; preds = %if.then2, %if.end
  store ptr null, ptr %misc, align 8, !dbg !5811
  br label %while.cond, !dbg !5812

while.cond:                                       ; preds = %while.body, %if.end3
  %2 = load ptr, ptr %misc, align 8, !dbg !5813
  %3 = load ptr, ptr %misc_ids, align 8, !dbg !5814
  %call = call ptr @next_northbridge(ptr noundef %2, ptr noundef %3) #16, !dbg !5815
  store ptr %call, ptr %misc, align 8, !dbg !5816
  %tobool4 = icmp ne ptr %call, null, !dbg !5812
  br i1 %tobool4, label %while.body, label %while.end, !dbg !5812

while.body:                                       ; preds = %while.cond
  %4 = load i16, ptr %misc_count, align 2, !dbg !5817
  %inc = add i16 %4, 1, !dbg !5817
  store i16 %inc, ptr %misc_count, align 2, !dbg !5817
  br label %while.cond, !dbg !5812, !llvm.loop !5818

while.end:                                        ; preds = %while.cond
  %5 = load i16, ptr %misc_count, align 2, !dbg !5819
  %tobool5 = icmp ne i16 %5, 0, !dbg !5819
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5821

if.then6:                                         ; preds = %while.end
  store i32 -19, ptr %retval, align 4, !dbg !5822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5822

if.end7:                                          ; preds = %while.end
  store ptr null, ptr %root, align 8, !dbg !5823
  br label %while.cond8, !dbg !5824

while.cond8:                                      ; preds = %while.body11, %if.end7
  %6 = load ptr, ptr %root, align 8, !dbg !5825
  %7 = load ptr, ptr %root_ids, align 8, !dbg !5826
  %call9 = call ptr @next_northbridge(ptr noundef %6, ptr noundef %7) #16, !dbg !5827
  store ptr %call9, ptr %root, align 8, !dbg !5828
  %tobool10 = icmp ne ptr %call9, null, !dbg !5824
  br i1 %tobool10, label %while.body11, label %while.end13, !dbg !5824

while.body11:                                     ; preds = %while.cond8
  %8 = load i16, ptr %root_count, align 2, !dbg !5829
  %inc12 = add i16 %8, 1, !dbg !5829
  store i16 %inc12, ptr %root_count, align 2, !dbg !5829
  br label %while.cond8, !dbg !5824, !llvm.loop !5830

while.end13:                                      ; preds = %while.cond8
  %9 = load i16, ptr %root_count, align 2, !dbg !5831
  %tobool14 = icmp ne i16 %9, 0, !dbg !5831
  br i1 %tobool14, label %if.then15, label %if.end26, !dbg !5833

if.then15:                                        ; preds = %while.end13
  %10 = load i16, ptr %root_count, align 2, !dbg !5834
  %conv16 = zext i16 %10 to i32, !dbg !5834
  %11 = load i16, ptr %misc_count, align 2, !dbg !5836
  %conv17 = zext i16 %11 to i32, !dbg !5836
  %div = sdiv i32 %conv16, %conv17, !dbg !5837
  %conv18 = trunc i32 %div to i16, !dbg !5834
  store i16 %conv18, ptr %roots_per_misc, align 2, !dbg !5838
  %12 = load i16, ptr %roots_per_misc, align 2, !dbg !5839
  %tobool19 = icmp ne i16 %12, 0, !dbg !5839
  br i1 %tobool19, label %lor.lhs.false, label %if.then23, !dbg !5841

lor.lhs.false:                                    ; preds = %if.then15
  %13 = load i16, ptr %root_count, align 2, !dbg !5842
  %conv20 = zext i16 %13 to i32, !dbg !5842
  %14 = load i16, ptr %roots_per_misc, align 2, !dbg !5843
  %conv21 = zext i16 %14 to i32, !dbg !5843
  %rem = srem i32 %conv20, %conv21, !dbg !5844
  %tobool22 = icmp ne i32 %rem, 0, !dbg !5844
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5845

if.then23:                                        ; preds = %lor.lhs.false, %if.then15
  br label %do.body, !dbg !5846

do.body:                                          ; preds = %if.then23
  br label %do.cond, !dbg !5849

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5849

do.end:                                           ; preds = %do.cond
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5) #17, !dbg !5846
  store i32 %call24, ptr %tmp, align 4, !dbg !5849
  %15 = load i32, ptr %tmp, align 4, !dbg !5846
  store i32 -19, ptr %retval, align 4, !dbg !5851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5851

if.end25:                                         ; preds = %lor.lhs.false
  br label %if.end26, !dbg !5852

if.end26:                                         ; preds = %if.end25, %while.end13
  %16 = load i16, ptr %misc_count, align 2, !dbg !5853
  %conv27 = zext i16 %16 to i64, !dbg !5853
  %call28 = call noalias ptr @kcalloc(i64 noundef %conv27, i64 noundef 40, i32 noundef 3264) #18, !dbg !5854
  store ptr %call28, ptr %nb, align 8, !dbg !5855
  %17 = load ptr, ptr %nb, align 8, !dbg !5856
  %tobool29 = icmp ne ptr %17, null, !dbg !5856
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !5858

if.then30:                                        ; preds = %if.end26
  store i32 -12, ptr %retval, align 4, !dbg !5859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5859

if.end31:                                         ; preds = %if.end26
  %18 = load ptr, ptr %nb, align 8, !dbg !5860
  store ptr %18, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 2), align 8, !dbg !5861
  %19 = load i16, ptr %misc_count, align 2, !dbg !5862
  store i16 %19, ptr @amd_northbridges, align 8, !dbg !5863
  store ptr null, ptr %root, align 8, !dbg !5864
  store ptr null, ptr %misc, align 8, !dbg !5865
  store ptr null, ptr %link, align 8, !dbg !5866
  store i16 0, ptr %i, align 2, !dbg !5867
  br label %for.cond, !dbg !5869

for.cond:                                         ; preds = %for.inc56, %if.end31
  %20 = load i16, ptr %i, align 2, !dbg !5870
  %conv32 = zext i16 %20 to i32, !dbg !5870
  %21 = load i16, ptr @amd_northbridges, align 8, !dbg !5872
  %conv33 = zext i16 %21 to i32, !dbg !5873
  %cmp34 = icmp slt i32 %conv32, %conv33, !dbg !5874
  br i1 %cmp34, label %for.body, label %for.end58, !dbg !5875

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %root, align 8, !dbg !5876
  %23 = load ptr, ptr %root_ids, align 8, !dbg !5878
  %call36 = call ptr @next_northbridge(ptr noundef %22, ptr noundef %23) #16, !dbg !5879
  store ptr %call36, ptr %root, align 8, !dbg !5880
  %24 = load i16, ptr %i, align 2, !dbg !5881
  %conv37 = zext i16 %24 to i32, !dbg !5881
  %call38 = call ptr @node_to_amd_nb(i32 noundef %conv37) #16, !dbg !5882
  %root39 = getelementptr inbounds %struct.amd_northbridge, ptr %call38, i32 0, i32 0, !dbg !5883
  store ptr %call36, ptr %root39, align 8, !dbg !5884
  %25 = load ptr, ptr %misc, align 8, !dbg !5885
  %26 = load ptr, ptr %misc_ids, align 8, !dbg !5886
  %call40 = call ptr @next_northbridge(ptr noundef %25, ptr noundef %26) #16, !dbg !5887
  store ptr %call40, ptr %misc, align 8, !dbg !5888
  %27 = load i16, ptr %i, align 2, !dbg !5889
  %conv41 = zext i16 %27 to i32, !dbg !5889
  %call42 = call ptr @node_to_amd_nb(i32 noundef %conv41) #16, !dbg !5890
  %misc43 = getelementptr inbounds %struct.amd_northbridge, ptr %call42, i32 0, i32 1, !dbg !5891
  store ptr %call40, ptr %misc43, align 8, !dbg !5892
  %28 = load ptr, ptr %link, align 8, !dbg !5893
  %29 = load ptr, ptr %link_ids, align 8, !dbg !5894
  %call44 = call ptr @next_northbridge(ptr noundef %28, ptr noundef %29) #16, !dbg !5895
  store ptr %call44, ptr %link, align 8, !dbg !5896
  %30 = load i16, ptr %i, align 2, !dbg !5897
  %conv45 = zext i16 %30 to i32, !dbg !5897
  %call46 = call ptr @node_to_amd_nb(i32 noundef %conv45) #16, !dbg !5898
  %link47 = getelementptr inbounds %struct.amd_northbridge, ptr %call46, i32 0, i32 2, !dbg !5899
  store ptr %call44, ptr %link47, align 8, !dbg !5900
  store i16 1, ptr %j, align 2, !dbg !5901
  br label %for.cond48, !dbg !5903

for.cond48:                                       ; preds = %for.inc, %for.body
  %31 = load i16, ptr %j, align 2, !dbg !5904
  %conv49 = zext i16 %31 to i32, !dbg !5904
  %32 = load i16, ptr %roots_per_misc, align 2, !dbg !5906
  %conv50 = zext i16 %32 to i32, !dbg !5906
  %cmp51 = icmp slt i32 %conv49, %conv50, !dbg !5907
  br i1 %cmp51, label %for.body53, label %for.end, !dbg !5908

for.body53:                                       ; preds = %for.cond48
  %33 = load ptr, ptr %root, align 8, !dbg !5909
  %34 = load ptr, ptr %root_ids, align 8, !dbg !5910
  %call54 = call ptr @next_northbridge(ptr noundef %33, ptr noundef %34) #16, !dbg !5911
  store ptr %call54, ptr %root, align 8, !dbg !5912
  br label %for.inc, !dbg !5913

for.inc:                                          ; preds = %for.body53
  %35 = load i16, ptr %j, align 2, !dbg !5914
  %inc55 = add i16 %35, 1, !dbg !5914
  store i16 %inc55, ptr %j, align 2, !dbg !5914
  br label %for.cond48, !dbg !5915, !llvm.loop !5916

for.end:                                          ; preds = %for.cond48
  br label %for.inc56, !dbg !5918

for.inc56:                                        ; preds = %for.end
  %36 = load i16, ptr %i, align 2, !dbg !5919
  %inc57 = add i16 %36, 1, !dbg !5919
  store i16 %inc57, ptr %i, align 2, !dbg !5919
  br label %for.cond, !dbg !5920, !llvm.loop !5921

for.end58:                                        ; preds = %for.cond
  %call59 = call zeroext i1 @amd_gart_present() #16, !dbg !5923
  br i1 %call59, label %if.then60, label %if.end61, !dbg !5925

if.then60:                                        ; preds = %for.end58
  %37 = load i64, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5926
  %or = or i64 %37, 1, !dbg !5926
  store i64 %or, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5926
  br label %if.end61, !dbg !5927

if.end61:                                         ; preds = %if.then60, %for.end58
  %call62 = call i32 @cpuid_edx(i32 noundef -2147483642) #16, !dbg !5928
  %tobool63 = icmp ne i32 %call62, 0, !dbg !5928
  br i1 %tobool63, label %if.end65, label %if.then64, !dbg !5930

if.then64:                                        ; preds = %if.end61
  store i32 0, ptr %retval, align 4, !dbg !5931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5931

if.end65:                                         ; preds = %if.end61
  %38 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5932
  %conv66 = zext i8 %38 to i32, !dbg !5934
  %cmp67 = icmp eq i32 %conv66, 16, !dbg !5935
  br i1 %cmp67, label %land.lhs.true, label %if.end82, !dbg !5936

land.lhs.true:                                    ; preds = %if.end65
  %39 = load i8, ptr @boot_cpu_data, align 8, !dbg !5937
  %conv69 = zext i8 %39 to i32, !dbg !5938
  %cmp70 = icmp sge i32 %conv69, 8, !dbg !5939
  br i1 %cmp70, label %land.lhs.true72, label %if.end82, !dbg !5940

land.lhs.true72:                                  ; preds = %land.lhs.true
  %40 = load i8, ptr @boot_cpu_data, align 8, !dbg !5941
  %conv73 = zext i8 %40 to i32, !dbg !5942
  %cmp74 = icmp sgt i32 %conv73, 9, !dbg !5943
  br i1 %cmp74, label %if.then80, label %lor.lhs.false76, !dbg !5944

lor.lhs.false76:                                  ; preds = %land.lhs.true72
  %41 = load i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 1), align 4, !dbg !5945
  %conv77 = zext i8 %41 to i32, !dbg !5946
  %cmp78 = icmp sge i32 %conv77, 1, !dbg !5947
  br i1 %cmp78, label %if.then80, label %if.end82, !dbg !5948

if.then80:                                        ; preds = %lor.lhs.false76, %land.lhs.true72
  %42 = load i64, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5949
  %or81 = or i64 %42, 2, !dbg !5949
  store i64 %or81, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5949
  br label %if.end82, !dbg !5950

if.end82:                                         ; preds = %if.then80, %lor.lhs.false76, %land.lhs.true, %if.end65
  %43 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5951
  %conv83 = zext i8 %43 to i32, !dbg !5953
  %cmp84 = icmp eq i32 %conv83, 21, !dbg !5954
  br i1 %cmp84, label %if.then86, label %if.end88, !dbg !5955

if.then86:                                        ; preds = %if.end82
  %44 = load i64, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5956
  %or87 = or i64 %44, 2, !dbg !5956
  store i64 %or87, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5956
  br label %if.end88, !dbg !5957

if.end88:                                         ; preds = %if.then86, %if.end82
  %45 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !5958
  %conv89 = zext i8 %45 to i32, !dbg !5960
  %cmp90 = icmp eq i32 %conv89, 21, !dbg !5961
  br i1 %cmp90, label %if.then92, label %if.end94, !dbg !5962

if.then92:                                        ; preds = %if.end88
  %46 = load i64, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5963
  %or93 = or i64 %46, 4, !dbg !5963
  store i64 %or93, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5963
  br label %if.end94, !dbg !5964

if.end94:                                         ; preds = %if.then92, %if.end88
  store i32 0, ptr %retval, align 4, !dbg !5965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5965

cleanup:                                          ; preds = %if.end94, %if.then64, %if.then30, %do.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %j) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 2, ptr %root_count) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 2, ptr %misc_count) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 2, ptr %roots_per_misc) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %nb) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %link) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %misc) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %root) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %root_ids) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %link_ids) #15, !dbg !5966
  call void @llvm.lifetime.end.p0(i64 8, ptr %misc_ids) #15, !dbg !5966
  %47 = load i32, ptr %retval, align 4, !dbg !5966
  ret i32 %47, !dbg !5966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @amd_cache_gart() #0 align 16 !dbg !5967 {
entry:
  %i = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr %i) #15, !dbg !5970
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5969, metadata !DIExpression()), !dbg !5971
  %call = call zeroext i1 @amd_nb_has_feature(i32 noundef 1) #16, !dbg !5972
  br i1 %call, label %if.end, label %if.then, !dbg !5974

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5975

if.end:                                           ; preds = %entry
  %0 = load i16, ptr @amd_northbridges, align 8, !dbg !5976
  %conv = zext i16 %0 to i64, !dbg !5977
  %call1 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 4, i32 noundef 3264) #18, !dbg !5978
  store ptr %call1, ptr @flush_words, align 8, !dbg !5979
  %1 = load ptr, ptr @flush_words, align 8, !dbg !5980
  %tobool = icmp ne ptr %1, null, !dbg !5980
  br i1 %tobool, label %if.end4, label %if.then2, !dbg !5982

if.then2:                                         ; preds = %if.end
  %2 = load i64, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5983
  %and = and i64 %2, -2, !dbg !5983
  store i64 %and, ptr getelementptr inbounds (%struct.amd_northbridge_info, ptr @amd_northbridges, i32 0, i32 1), align 8, !dbg !5983
  br label %do.body, !dbg !5985

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !5987

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5987

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #17, !dbg !5985
  store i32 %call3, ptr %tmp, align 4, !dbg !5987
  %3 = load i32, ptr %tmp, align 4, !dbg !5985
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5989

if.end4:                                          ; preds = %if.end
  store i16 0, ptr %i, align 2, !dbg !5990
  br label %for.cond, !dbg !5992

for.cond:                                         ; preds = %for.inc, %if.end4
  %4 = load i16, ptr %i, align 2, !dbg !5993
  %conv5 = zext i16 %4 to i32, !dbg !5993
  %5 = load i16, ptr @amd_northbridges, align 8, !dbg !5995
  %conv6 = zext i16 %5 to i32, !dbg !5996
  %cmp = icmp ne i32 %conv5, %conv6, !dbg !5997
  br i1 %cmp, label %for.body, label %for.end, !dbg !5998

for.body:                                         ; preds = %for.cond
  %6 = load i16, ptr %i, align 2, !dbg !5999
  %conv8 = zext i16 %6 to i32, !dbg !5999
  %call9 = call ptr @node_to_amd_nb(i32 noundef %conv8) #16, !dbg !6000
  %misc = getelementptr inbounds %struct.amd_northbridge, ptr %call9, i32 0, i32 1, !dbg !6001
  %7 = load ptr, ptr %misc, align 8, !dbg !6001
  %8 = load ptr, ptr @flush_words, align 8, !dbg !6002
  %9 = load i16, ptr %i, align 2, !dbg !6003
  %idxprom = zext i16 %9 to i64, !dbg !6002
  %arrayidx = getelementptr i32, ptr %8, i64 %idxprom, !dbg !6002
  %call10 = call i32 @pci_read_config_dword(ptr noundef %7, i32 noundef 156, ptr noundef %arrayidx) #16, !dbg !6004
  br label %for.inc, !dbg !6004

for.inc:                                          ; preds = %for.body
  %10 = load i16, ptr %i, align 2, !dbg !6005
  %inc = add i16 %10, 1, !dbg !6005
  store i16 %inc, ptr %i, align 2, !dbg !6005
  br label %for.cond, !dbg !6006, !llvm.loop !6007

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6009
  br label %cleanup, !dbg !6009

cleanup:                                          ; preds = %for.end, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %i) #15, !dbg !6009
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6009

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @fix_erratum_688() #3 section ".init.text" align 16 !dbg !6010 {
entry:
  %F4 = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %F4) #15, !dbg !6014
  call void @llvm.dbg.declare(metadata ptr %F4, metadata !6012, metadata !DIExpression()), !dbg !6015
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #15, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %val, metadata !6013, metadata !DIExpression()), !dbg !6017
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !6018
  %conv = zext i8 %0 to i32, !dbg !6020
  %cmp = icmp ne i32 %conv, 20, !dbg !6021
  br i1 %cmp, label %if.then, label %if.end, !dbg !6022

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6023

if.end:                                           ; preds = %entry
  %1 = load i16, ptr @amd_northbridges, align 8, !dbg !6024
  %tobool = icmp ne i16 %1, 0, !dbg !6026
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !6027

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6028

if.end3:                                          ; preds = %if.end
  %call = call ptr @node_to_amd_nb(i32 noundef 0) #16, !dbg !6029
  %link = getelementptr inbounds %struct.amd_northbridge, ptr %call, i32 0, i32 2, !dbg !6030
  %2 = load ptr, ptr %link, align 8, !dbg !6030
  store ptr %2, ptr %F4, align 8, !dbg !6031
  %3 = load ptr, ptr %F4, align 8, !dbg !6032
  %tobool4 = icmp ne ptr %3, null, !dbg !6032
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6034

if.then5:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6035

if.end6:                                          ; preds = %if.end3
  %4 = load ptr, ptr %F4, align 8, !dbg !6036
  %call7 = call i32 @pci_read_config_dword(ptr noundef %4, i32 noundef 356, ptr noundef %val) #16, !dbg !6038
  %tobool8 = icmp ne i32 %call7, 0, !dbg !6038
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6039

if.then9:                                         ; preds = %if.end6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6040

if.end10:                                         ; preds = %if.end6
  %5 = load i32, ptr %val, align 4, !dbg !6041
  %conv11 = zext i32 %5 to i64, !dbg !6041
  %and = and i64 %conv11, 4, !dbg !6043
  %tobool12 = icmp ne i64 %and, 0, !dbg !6043
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6044

if.then13:                                        ; preds = %if.end10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6045

if.end14:                                         ; preds = %if.end10
  call void @on_each_cpu(ptr noundef @__fix_erratum_688, ptr noundef null, i32 noundef 0) #16, !dbg !6046
  br label %do.body, !dbg !6047

do.body:                                          ; preds = %if.end14
  br label %do.cond, !dbg !6049

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6049

do.end:                                           ; preds = %do.cond
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.8) #17, !dbg !6047
  store i32 %call15, ptr %tmp, align 4, !dbg !6049
  %6 = load i32, ptr %tmp, align 4, !dbg !6047
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6051
  br label %cleanup, !dbg !6051

cleanup:                                          ; preds = %do.end, %if.then13, %if.then9, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #15, !dbg !6051
  call void @llvm.lifetime.end.p0(i64 8, ptr %F4) #15, !dbg !6051
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6051

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @next_northbridge(ptr noundef %dev, ptr noundef %ids) #0 align 16 !dbg !6052 {
entry:
  %dev.addr = alloca ptr, align 8
  %ids.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6056, metadata !DIExpression()), !dbg !6058
  store ptr %ids, ptr %ids.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ids.addr, metadata !6057, metadata !DIExpression()), !dbg !6059
  br label %do.body, !dbg !6060

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6061
  %call = call ptr @pci_get_device(i32 noundef -1, i32 noundef -1, ptr noundef %0) #16, !dbg !6063
  store ptr %call, ptr %dev.addr, align 8, !dbg !6064
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6065
  %tobool = icmp ne ptr %1, null, !dbg !6065
  br i1 %tobool, label %if.end, label %if.then, !dbg !6067

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !6068

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !6069

do.cond:                                          ; preds = %if.end
  %2 = load ptr, ptr %ids.addr, align 8, !dbg !6070
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6071
  %call1 = call ptr @pci_match_id(ptr noundef %2, ptr noundef %3) #16, !dbg !6072
  %tobool2 = icmp ne ptr %call1, null, !dbg !6073
  %lnot = xor i1 %tobool2, true, !dbg !6073
  br i1 %lnot, label %do.body, label %do.end, !dbg !6069, !llvm.loop !6074

do.end:                                           ; preds = %do.cond, %if.then
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6076
  ret ptr %4, !dbg !6077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6078 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6082, metadata !DIExpression()), !dbg !6085
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6083, metadata !DIExpression()), !dbg !6086
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6084, metadata !DIExpression()), !dbg !6087
  %0 = load i64, ptr %n.addr, align 8, !dbg !6088
  %1 = load i64, ptr %size.addr, align 8, !dbg !6089
  %2 = load i32, ptr %flags.addr, align 4, !dbg !6090
  %or = or i32 %2, 256, !dbg !6091
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #18, !dbg !6092
  ret ptr %call, !dbg !6093
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @amd_gart_present() #4 align 16 !dbg !6094 {
entry:
  %retval = alloca i1, align 1
  %0 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !6095
  %conv = zext i8 %0 to i32, !dbg !6097
  %cmp = icmp ne i32 %conv, 2, !dbg !6098
  br i1 %cmp, label %if.then, label %if.end, !dbg !6099

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6100
  br label %return, !dbg !6100

if.end:                                           ; preds = %entry
  %1 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !6101
  %conv2 = zext i8 %1 to i32, !dbg !6103
  %cmp3 = icmp eq i32 %conv2, 15, !dbg !6104
  br i1 %cmp3, label %if.then15, label %lor.lhs.false, !dbg !6105

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !6106
  %conv5 = zext i8 %2 to i32, !dbg !6107
  %cmp6 = icmp eq i32 %conv5, 16, !dbg !6108
  br i1 %cmp6, label %if.then15, label %lor.lhs.false8, !dbg !6109

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %3 = load i8, ptr getelementptr inbounds (%struct.anon.15, ptr @boot_cpu_data, i32 0, i32 1), align 1, !dbg !6110
  %conv9 = zext i8 %3 to i32, !dbg !6111
  %cmp10 = icmp eq i32 %conv9, 21, !dbg !6112
  br i1 %cmp10, label %land.lhs.true, label %if.end16, !dbg !6113

land.lhs.true:                                    ; preds = %lor.lhs.false8
  %4 = load i8, ptr @boot_cpu_data, align 8, !dbg !6114
  %conv12 = zext i8 %4 to i32, !dbg !6115
  %cmp13 = icmp slt i32 %conv12, 16, !dbg !6116
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !6117

if.then15:                                        ; preds = %land.lhs.true, %lor.lhs.false, %if.end
  store i1 true, ptr %retval, align 1, !dbg !6118
  br label %return, !dbg !6118

if.end16:                                         ; preds = %land.lhs.true, %lor.lhs.false8
  store i1 false, ptr %retval, align 1, !dbg !6119
  br label %return, !dbg !6119

return:                                           ; preds = %if.end16, %if.then15, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !6120
  ret i1 %5, !dbg !6120
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_edx(i32 noundef %op) #4 align 16 !dbg !6121 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6126, metadata !DIExpression()), !dbg !6131
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #15, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !6127, metadata !DIExpression()), !dbg !6133
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #15, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !6128, metadata !DIExpression()), !dbg !6134
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #15, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !6129, metadata !DIExpression()), !dbg !6135
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #15, !dbg !6132
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !6130, metadata !DIExpression()), !dbg !6136
  %0 = load i32, ptr %op.addr, align 4, !dbg !6137
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #16, !dbg !6138
  %1 = load i32, ptr %edx, align 4, !dbg !6139
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #15, !dbg !6140
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #15, !dbg !6140
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #15, !dbg !6140
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #15, !dbg !6140
  ret i32 %1, !dbg !6141
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6142 dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6145 dso_local ptr @pci_match_id(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !6148 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6150, metadata !DIExpression()), !dbg !6154
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6151, metadata !DIExpression()), !dbg !6155
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6152, metadata !DIExpression()), !dbg !6156
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !6157
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6153, metadata !DIExpression()), !dbg !6158
  %0 = load i64, ptr %n.addr, align 8, !dbg !6159
  %1 = load i64, ptr %size.addr, align 8, !dbg !6159
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6159
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6159
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6159
  store i64 %4, ptr %bytes, align 8, !dbg !6159
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !6159
  %lnot = xor i1 %call, true, !dbg !6159
  %lnot1 = xor i1 %lnot, true, !dbg !6159
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6159
  %conv = sext i32 %lnot.ext to i64, !dbg !6159
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6159
  %tobool = icmp ne i64 %expval, 0, !dbg !6159
  br i1 %tobool, label %if.then, label %if.end, !dbg !6161

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6162

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6163
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6165
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6166

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6167
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6168
  br i1 %8, label %if.then2, label %if.end4, !dbg !6169

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6170
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6171
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #19, !dbg !6172
  store ptr %call3, ptr %retval, align 8, !dbg !6173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6173

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6174
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6175
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #19, !dbg !6176
  store ptr %call5, ptr %retval, align 8, !dbg !6177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6177

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !6178
  %13 = load ptr, ptr %retval, align 8, !dbg !6178
  ret ptr %13, !dbg !6178
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !6179 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6184, metadata !DIExpression()), !dbg !6185
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6186, !range !5219, !noundef !1058
  %tobool = trunc i8 %0 to i1, !dbg !6186
  %lnot = xor i1 %tobool, true, !dbg !6186
  %lnot1 = xor i1 %lnot, true, !dbg !6186
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6186
  %conv = sext i32 %lnot.ext to i64, !dbg !6186
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6186
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6186
  ret i1 %tobool2, !dbg !6187
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6188 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6192, metadata !DIExpression()), !dbg !6197
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6193, metadata !DIExpression()), !dbg !6198
  %0 = load i64, ptr %size.addr, align 8, !dbg !6199
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6200
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6201

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6202
  %tobool = icmp ne i64 %2, 0, !dbg !6202
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6203

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !6204
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6194, metadata !DIExpression()), !dbg !6205
  %3 = load i64, ptr %size.addr, align 8, !dbg !6206
  %cmp = icmp ugt i64 %3, 8192, !dbg !6208
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6209

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6210
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6211
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6212
  store ptr %call, ptr %retval, align 8, !dbg !6213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6213

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6214
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !6214
  store i32 %call2, ptr %index, align 4, !dbg !6215
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6216
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6217
  %9 = ptrtoint ptr %8 to i64, !dbg !6217
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !6218
  %idxprom = zext i32 %call3 to i64, !dbg !6219
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6219
  %10 = load i32, ptr %index, align 4, !dbg !6220
  %idxprom4 = zext i32 %10 to i64, !dbg !6219
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6219
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6219
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6221
  %13 = load i64, ptr %size.addr, align 8, !dbg !6222
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6223
  store ptr %call6, ptr %retval, align 8, !dbg !6224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6224

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !6225
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6226
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6227
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6228
  store ptr %call8, ptr %retval, align 8, !dbg !6229
  br label %return, !dbg !6229

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6230
  ret ptr %16, !dbg !6230
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6231 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6232 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !6233 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6237, metadata !DIExpression()), !dbg !6239
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6238, metadata !DIExpression()), !dbg !6240
  %0 = load i64, ptr %size.addr, align 8, !dbg !6241
  %tobool = icmp ne i64 %0, 0, !dbg !6241
  br i1 %tobool, label %if.end, label %if.then, !dbg !6243

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6244
  br label %return, !dbg !6244

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6245
  %cmp = icmp ule i64 %1, 8, !dbg !6247
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6248

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6249
  br label %return, !dbg !6249

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6250
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6252
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6253

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6254
  %cmp4 = icmp ule i64 %3, 96, !dbg !6255
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6256

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6257
  br label %return, !dbg !6257

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6258
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6260
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6261

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6262
  %cmp9 = icmp ule i64 %5, 192, !dbg !6263
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6264

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6265
  br label %return, !dbg !6265

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6266
  %cmp12 = icmp ule i64 %6, 8, !dbg !6268
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6269

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6270
  br label %return, !dbg !6270

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6271
  %cmp15 = icmp ule i64 %7, 16, !dbg !6273
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6274

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6275
  br label %return, !dbg !6275

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6276
  %cmp18 = icmp ule i64 %8, 32, !dbg !6278
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6279

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6280
  br label %return, !dbg !6280

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6281
  %cmp21 = icmp ule i64 %9, 64, !dbg !6283
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6284

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6285
  br label %return, !dbg !6285

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6286
  %cmp24 = icmp ule i64 %10, 128, !dbg !6288
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6289

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6290
  br label %return, !dbg !6290

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6291
  %cmp27 = icmp ule i64 %11, 256, !dbg !6293
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6294

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6295
  br label %return, !dbg !6295

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6296
  %cmp30 = icmp ule i64 %12, 512, !dbg !6298
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6299

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6300
  br label %return, !dbg !6300

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6301
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6303
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6304

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6305
  br label %return, !dbg !6305

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6306
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6308
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6309

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6310
  br label %return, !dbg !6310

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6311
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6313
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6314

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6315
  br label %return, !dbg !6315

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6316
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6318
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6319

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6320
  br label %return, !dbg !6320

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6321
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6323
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6324

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6325
  br label %return, !dbg !6325

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6326
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6328
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6329

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6330
  br label %return, !dbg !6330

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6331
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6333
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6334

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6335
  br label %return, !dbg !6335

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6336
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6338
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6339

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6340
  br label %return, !dbg !6340

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6341
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6343
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6344

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6345
  br label %return, !dbg !6345

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6346
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6348
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6349

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6350
  br label %return, !dbg !6350

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6351
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6353
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6354

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6355
  br label %return, !dbg !6355

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6356
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6358
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6359

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6360
  br label %return, !dbg !6360

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6361, !range !5219, !noundef !1058
  %tobool69 = trunc i8 %25 to i1, !dbg !6361
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6363

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6364

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !6365, !srcloc !6368
  unreachable, !dbg !6365

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6369

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6370

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6371

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6373

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6371

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #15, !dbg !6375, !srcloc !6377
  br label %do.end75, !dbg !6375

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6371

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6378
  br label %return, !dbg !6378

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6379
  ret i32 %26, !dbg !6379
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6380 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !6386 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6390, metadata !DIExpression()), !dbg !6392
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6391, metadata !DIExpression()), !dbg !6393
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6394
  %and = and i32 %0, 17, !dbg !6394
  %cmp = icmp eq i32 %and, 0, !dbg !6394
  %lnot = xor i1 %cmp, true, !dbg !6394
  %lnot1 = xor i1 %lnot, true, !dbg !6394
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6394
  %conv = sext i32 %lnot.ext to i64, !dbg !6394
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6394
  %tobool = icmp ne i64 %expval, 0, !dbg !6394
  br i1 %tobool, label %if.then, label %if.end, !dbg !6396

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6397
  br label %return, !dbg !6397

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6398
  %and2 = and i32 %1, 1, !dbg !6400
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6400
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6401

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6402
  br label %return, !dbg !6402

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6403
  br label %return, !dbg !6403

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6405
  ret i32 %2, !dbg !6405
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6406 dso_local void @__compiletime_assert_117() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !6407 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6411, metadata !DIExpression()), !dbg !6416
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !6412, metadata !DIExpression()), !dbg !6417
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !6413, metadata !DIExpression()), !dbg !6418
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !6414, metadata !DIExpression()), !dbg !6419
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !6415, metadata !DIExpression()), !dbg !6420
  %0 = load i32, ptr %op.addr, align 4, !dbg !6421
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !6422
  store i32 %0, ptr %1, align 4, !dbg !6423
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !6424
  store i32 0, ptr %2, align 4, !dbg !6425
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !6426
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !6427
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !6428
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !6429
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #16, !dbg !6430
  ret void, !dbg !6431
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !6432 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !6436, metadata !DIExpression()), !dbg !6440
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !6437, metadata !DIExpression()), !dbg !6441
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !6438, metadata !DIExpression()), !dbg !6442
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !6439, metadata !DIExpression()), !dbg !6443
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !6444
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !6445
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !6446
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !6447
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !6448
  %5 = load i32, ptr %4, align 4, !dbg !6449
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !6450
  %7 = load i32, ptr %6, align 4, !dbg !6451
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #15, !dbg !6452, !srcloc !6453
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !6452
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !6452
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !6452
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !6452
  store i32 %asmresult, ptr %0, align 4, !dbg !6452
  store i32 %asmresult1, ptr %1, align 4, !dbg !6452
  store i32 %asmresult2, ptr %2, align 4, !dbg !6452
  store i32 %asmresult3, ptr %3, align 4, !dbg !6452
  ret void, !dbg !6454
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @on_each_cpu(ptr noundef %func, ptr noundef %info, i32 noundef %wait) #4 align 16 !dbg !6455 {
entry:
  %func.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %wait.addr = alloca i32, align 4
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !6461, metadata !DIExpression()), !dbg !6464
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6462, metadata !DIExpression()), !dbg !6465
  store i32 %wait, ptr %wait.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !6463, metadata !DIExpression()), !dbg !6466
  %0 = load ptr, ptr %func.addr, align 8, !dbg !6467
  %1 = load ptr, ptr %info.addr, align 8, !dbg !6468
  %2 = load i32, ptr %wait.addr, align 4, !dbg !6469
  %tobool = icmp ne i32 %2, 0, !dbg !6469
  call void @on_each_cpu_cond_mask(ptr noundef null, ptr noundef %0, ptr noundef %1, i1 noundef zeroext %tobool, ptr noundef @__cpu_online_mask) #16, !dbg !6470
  ret void, !dbg !6471
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__fix_erratum_688(ptr noundef %info) #0 align 16 !dbg !6472 {
entry:
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6474, metadata !DIExpression()), !dbg !6475
  %call = call i32 @msr_set_bit(i32 noundef -1073672159, i8 noundef zeroext 3) #16, !dbg !6476
  %call1 = call i32 @msr_set_bit(i32 noundef -1073672159, i8 noundef zeroext 14) #16, !dbg !6477
  ret void, !dbg !6478
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6479 dso_local void @on_each_cpu_cond_mask(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6486 dso_local i32 @msr_set_bit(i32 noundef, i8 noundef zeroext) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107}
!llvm.ident = !{!5108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "amd_nb_bus_dev_ranges", scope: !2, file: !3, line: 143, type: !5093, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.amd_nb.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/amd_nb\22 -D KBUILD_BASENAME=\22amd_nb\22 -D KBUILD_MODNAME=\22amd_nb\22 -D __KBUILD_MODNAME=kmod_amd_nb -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/amd_nb.ll arch/x86/kernel/amd_nb.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !252, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/amd_nb.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ebbea3197ab20253d7acb4813595b8f")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !146}
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
!156 = !{!157, !158, !162, !199, !242, !243}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !159, line: 21, baseType: !160)
!159 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !161, line: 27, baseType: !7)
!161 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !164, line: 83, size: 2368, elements: !165)
!164 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!165 = !{!166, !179, !180, !181, !185, !186, !187, !188, !189, !190, !191, !200, !205, !209, !210, !211, !212, !213, !214, !215, !216, !220, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !238, !239, !241}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !164, line: 84, baseType: !167, size: 32)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 84, size: 32, elements: !168)
!168 = !{!169, !178}
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !167, file: !164, line: 90, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !167, file: !164, line: 90, size: 32, elements: !171)
!171 = !{!172, !175, !176, !177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !170, file: !164, line: 91, baseType: !173, size: 8)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !161, line: 21, baseType: !174)
!174 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !170, file: !164, line: 93, baseType: !173, size: 8, offset: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !170, file: !164, line: 95, baseType: !173, size: 8, offset: 16)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !170, file: !164, line: 96, baseType: !173, size: 8, offset: 24)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !167, file: !164, line: 99, baseType: !160, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !163, file: !164, line: 101, baseType: !173, size: 8, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !163, file: !164, line: 104, baseType: !109, size: 32, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !163, file: !164, line: 107, baseType: !182, size: 160, offset: 96)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 160, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 5)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !163, file: !164, line: 109, baseType: !173, size: 8, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !163, file: !164, line: 110, baseType: !173, size: 8, offset: 264)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !163, file: !164, line: 112, baseType: !173, size: 8, offset: 272)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !163, file: !164, line: 113, baseType: !173, size: 8, offset: 280)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !163, file: !164, line: 115, baseType: !160, size: 32, offset: 288)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !163, file: !164, line: 117, baseType: !109, size: 32, offset: 320)
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !164, line: 123, baseType: !192, size: 768, offset: 384)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 123, size: 768, elements: !193)
!193 = !{!194, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !192, file: !164, line: 124, baseType: !195, size: 768)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 768, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 24)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !192, file: !164, line: 125, baseType: !199, size: 64)
!199 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !163, file: !164, line: 127, baseType: !201, size: 128, offset: 1152)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 128, elements: !203)
!202 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!203 = !{!204}
!204 = !DISubrange(count: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !163, file: !164, line: 128, baseType: !206, size: 512, offset: 1280)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 512, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !163, file: !164, line: 130, baseType: !7, size: 32, offset: 1792)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !163, file: !164, line: 131, baseType: !109, size: 32, offset: 1824)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !163, file: !164, line: 133, baseType: !109, size: 32, offset: 1856)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !163, file: !164, line: 134, baseType: !109, size: 32, offset: 1888)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !163, file: !164, line: 135, baseType: !109, size: 32, offset: 1920)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !163, file: !164, line: 136, baseType: !109, size: 32, offset: 1952)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !163, file: !164, line: 137, baseType: !199, size: 64, offset: 1984)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !163, file: !164, line: 139, baseType: !217, size: 64, offset: 2048)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !159, line: 23, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !161, line: 31, baseType: !219)
!219 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !163, file: !164, line: 141, baseType: !221, size: 16, offset: 2112)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !159, line: 19, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !161, line: 24, baseType: !223)
!223 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !163, file: !164, line: 142, baseType: !221, size: 16, offset: 2128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !163, file: !164, line: 143, baseType: !221, size: 16, offset: 2144)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !163, file: !164, line: 144, baseType: !221, size: 16, offset: 2160)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !163, file: !164, line: 146, baseType: !221, size: 16, offset: 2176)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !163, file: !164, line: 148, baseType: !221, size: 16, offset: 2192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !163, file: !164, line: 150, baseType: !221, size: 16, offset: 2208)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !163, file: !164, line: 152, baseType: !221, size: 16, offset: 2224)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !163, file: !164, line: 153, baseType: !221, size: 16, offset: 2240)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !163, file: !164, line: 154, baseType: !221, size: 16, offset: 2256)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !163, file: !164, line: 156, baseType: !221, size: 16, offset: 2272)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !163, file: !164, line: 158, baseType: !235, size: 8, offset: 2288)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !236, line: 35, baseType: !237)
!236 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!237 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !163, file: !164, line: 159, baseType: !158, size: 32, offset: 2304)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !163, file: !164, line: 161, baseType: !240, size: 8, offset: 2336)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !159, line: 17, baseType: !173)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !163, file: !164, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !236, line: 154, baseType: !7)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !246, line: 19, size: 64, elements: !247)
!246 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !245, file: !246, line: 19, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 1)
!252 = !{!0, !253, !255, !257, !259, !261, !263, !4998, !5000, !5016, !5021, !5023, !5025, !5027, !5034, !5039, !5044, !5047, !5052, !5054, !5059, !5062, !5067, !5072, !5077, !5079, !5081, !5086, !5091}
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_nb_num292", scope: !2, file: !3, line: 156, type: !157, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_nb_has_feature293", scope: !2, file: !3, line: 162, type: !157, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_node_to_amd_nb294", scope: !2, file: !3, line: 168, type: !157, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_smn_read295", scope: !2, file: !3, line: 225, type: !157, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_smn_write296", scope: !2, file: !3, line: 231, type: !157, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "reset", scope: !265, file: !3, line: 405, type: !7, isLocal: true, isDefinition: true)
!265 = distinct !DISubprogram(name: "amd_set_subcaches", scope: !3, file: !3, line: 403, type: !266, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{!109, !109, !199}
!268 = !{!269, !270, !271, !4986, !4989, !4991, !4992, !4993, !4996}
!269 = !DILocalVariable(name: "cpu", arg: 1, scope: !265, file: !3, line: 403, type: !109)
!270 = !DILocalVariable(name: "mask", arg: 2, scope: !265, file: !3, line: 403, type: !199)
!271 = !DILocalVariable(name: "nb", scope: !265, file: !3, line: 406, type: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_northbridge", file: !274, line: 61, size: 320, elements: !275)
!274 = !DIFile(filename: "./arch/x86/include/asm/amd_nb.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b0a32ff2229a1703a76a20aba8707eec")
!275 = !{!276, !4958, !4959, !4960, !4966}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !273, file: !274, line: 62, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !279, line: 322, size: 16640, elements: !280)
!279 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!280 = !{!281, !287, !4733, !4734, !4735, !4736, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4842, !4843, !4844, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4864, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4921, !4922, !4923, !4925, !4926, !4928, !4929, !4930, !4931, !4937, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !278, file: !279, line: 323, baseType: !282, size: 128)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !236, line: 190, size: 128, elements: !283)
!283 = !{!284, !286}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !236, line: 191, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !282, file: !236, line: 191, baseType: !285, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !278, file: !279, line: 324, baseType: !288, size: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !279, line: 647, size: 8256, elements: !290)
!290 = !{!291, !292, !293, !294, !295, !296, !297, !317, !318, !319, !344, !345, !349, !350, !351, !352, !353, !357, !358, !360, !4728, !4729, !4730, !4731, !4732}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !289, file: !279, line: 648, baseType: !282, size: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !289, file: !279, line: 649, baseType: !288, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !289, file: !279, line: 650, baseType: !282, size: 128, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !289, file: !279, line: 651, baseType: !282, size: 128, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !289, file: !279, line: 652, baseType: !277, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !289, file: !279, line: 653, baseType: !282, size: 128, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !289, file: !279, line: 655, baseType: !298, size: 256, offset: 640)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !315)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !301, line: 21, size: 512, elements: !302)
!301 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!302 = !{!303, !306, !307, !310, !311, !312, !313, !314}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !300, file: !301, line: 22, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !236, line: 164, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !236, line: 159, baseType: !217)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !300, file: !301, line: 23, baseType: !304, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !301, line: 24, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !301, line: 25, baseType: !199, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !300, file: !301, line: 26, baseType: !199, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !300, file: !301, line: 27, baseType: !299, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !300, file: !301, line: 27, baseType: !299, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !300, file: !301, line: 27, baseType: !299, size: 64, offset: 448)
!315 = !{!316}
!316 = !DISubrange(count: 4)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !289, file: !279, line: 656, baseType: !282, size: 128, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !289, file: !279, line: 657, baseType: !300, size: 512, offset: 1024)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !289, file: !279, line: 659, baseType: !320, size: 64, offset: 1536)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !279, line: 773, size: 320, elements: !322)
!322 = !{!323, !327, !331, !335, !340}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !321, file: !279, line: 774, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!109, !288}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !321, file: !279, line: 775, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !288}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !321, file: !279, line: 776, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!157, !288, !7, !109}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !321, file: !279, line: 777, baseType: !336, size: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!109, !288, !7, !109, !109, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !321, file: !279, line: 778, baseType: !341, size: 64, offset: 256)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!109, !288, !7, !109, !109, !158}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !289, file: !279, line: 660, baseType: !157, size: 64, offset: 1600)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !289, file: !279, line: 661, baseType: !346, size: 64, offset: 1664)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !348, line: 131, flags: DIFlagFwdDecl)
!348 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !289, file: !279, line: 663, baseType: !174, size: 8, offset: 1728)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !289, file: !279, line: 664, baseType: !174, size: 8, offset: 1736)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !289, file: !279, line: 665, baseType: !174, size: 8, offset: 1744)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !289, file: !279, line: 666, baseType: !174, size: 8, offset: 1752)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !279, line: 671, baseType: !354, size: 384, offset: 1760)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 384, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 48)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !289, file: !279, line: 673, baseType: !223, size: 16, offset: 2144)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !289, file: !279, line: 674, baseType: !359, size: 16, offset: 2160)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !279, line: 255, baseType: !223)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !289, file: !279, line: 675, baseType: !361, size: 64, offset: 2176)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !363)
!363 = !{!364, !4267, !4268, !4271, !4272, !4325, !4410, !4411, !4412, !4413, !4414, !4421, !4513, !4526, !4536, !4540, !4542, !4543, !4544, !4548, !4555, !4556, !4559, !4562, !4566, !4670, !4671, !4672, !4673, !4674, !4675, !4705, !4706, !4707, !4710, !4713, !4722, !4723, !4724, !4725, !4726, !4727}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !362, file: !94, line: 706, baseType: !365, size: 512)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !366, line: 64, size: 512, elements: !367)
!366 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!367 = !{!368, !369, !370, !372, !451, !4154, !4257, !4262, !4263, !4264, !4265, !4266}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !365, file: !366, line: 65, baseType: !308, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !365, file: !366, line: 66, baseType: !282, size: 128, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !365, file: !366, line: 67, baseType: !371, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !365, file: !366, line: 68, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !366, line: 168, size: 768, elements: !375)
!375 = !{!376, !377, !412, !413}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !374, file: !366, line: 169, baseType: !282, size: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !374, file: !366, line: 170, baseType: !378, size: 32, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !379, line: 29, baseType: !380)
!379 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !379, line: 17, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !379, line: 18, baseType: !383, size: 32)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !379, line: 18, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !383, file: !379, line: 19, baseType: !386, size: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !387, line: 14, size: 32, elements: !388)
!387 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !386, file: !387, line: 15, baseType: !390, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !391, line: 44, baseType: !392)
!391 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !391, line: 14, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !391, line: 15, baseType: !395, size: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !391, line: 15, size: 32, elements: !396)
!396 = !{!397, !402, !407}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !395, file: !391, line: 16, baseType: !398, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !236, line: 174, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 172, size: 32, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !399, file: !236, line: 173, baseType: !109, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !391, line: 24, baseType: !403, size: 16)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !391, line: 24, size: 16, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !403, file: !391, line: 25, baseType: !240, size: 8)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !403, file: !391, line: 26, baseType: !240, size: 8, offset: 8)
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !391, line: 28, baseType: !408, size: 32)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !391, line: 28, size: 32, elements: !409)
!409 = !{!410, !411}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !408, file: !391, line: 29, baseType: !221, size: 16)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !408, file: !391, line: 30, baseType: !221, size: 16, offset: 16)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !374, file: !366, line: 171, baseType: !365, size: 512, offset: 192)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !374, file: !366, line: 172, baseType: !414, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !366, line: 133, size: 192, elements: !417)
!417 = !{!418, !425, !430}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !416, file: !366, line: 134, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!109, !423}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !416, file: !366, line: 135, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!308, !423}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !416, file: !366, line: 136, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!109, !423, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !366, line: 125, size: 20736, elements: !437)
!437 = !{!438, !443, !445, !446, !450}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !436, file: !366, line: 126, baseType: !439, size: 192)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 192, elements: !441)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!441 = !{!442}
!442 = !DISubrange(count: 3)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !436, file: !366, line: 127, baseType: !444, size: 4096, offset: 192)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 4096, elements: !207)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !436, file: !366, line: 128, baseType: !109, size: 32, offset: 4288)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !436, file: !366, line: 129, baseType: !447, size: 16384, offset: 4320)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 16384, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 2048)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !436, file: !366, line: 130, baseType: !109, size: 32, offset: 20704)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !365, file: !366, line: 69, baseType: !452, size: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !454)
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !366, line: 116, size: 384, elements: !455)
!455 = !{!456, !460, !488, !4116, !4144, !4148}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !454, file: !366, line: 117, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !371}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !454, file: !366, line: 118, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !464, line: 254, size: 128, elements: !465)
!464 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!465 = !{!466, !481}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !463, file: !464, line: 255, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!470, !371, !475, !440}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !236, line: 66, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !472, line: 73, baseType: !473)
!472 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !472, line: 15, baseType: !474)
!474 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !464, line: 30, size: 128, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !476, file: !464, line: 31, baseType: !308, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !476, file: !464, line: 32, baseType: !480, size: 16, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !236, line: 24, baseType: !223)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !463, file: !464, line: 256, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!470, !371, !475, !308, !485}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !236, line: 61, baseType: !486)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !472, line: 72, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !472, line: 16, baseType: !199)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !454, file: !366, line: 119, baseType: !489, size: 64, offset: 128)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !464, line: 84, size: 320, elements: !493)
!493 = !{!494, !495, !499, !4112, !4114}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !464, line: 85, baseType: !308, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !492, file: !464, line: 86, baseType: !496, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!480, !371, !475, !109}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !492, file: !464, line: 88, baseType: !500, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!480, !371, !503, !109}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !464, line: 175, size: 512, elements: !505)
!505 = !{!506, !507, !508, !509, !4103, !4107, !4108}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !504, file: !464, line: 176, baseType: !476, size: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !504, file: !464, line: 177, baseType: !485, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !504, file: !464, line: 178, baseType: !157, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !504, file: !464, line: 179, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !515)
!515 = !{!516, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !4097, !4098, !4099, !4100, !4101, !4102}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !514, file: !14, line: 473, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !519)
!519 = !{!520, !521, !522, !530, !531, !538, !539, !542, !543, !3876, !3877, !3878, !3879, !3880, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3920, !3923, !3924, !3925, !3934, !3935, !3936, !3937}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !518, file: !14, line: 642, baseType: !480, size: 16)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !518, file: !14, line: 643, baseType: !223, size: 16, offset: 16)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !518, file: !14, line: 644, baseType: !523, size: 32, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !524, line: 23, baseType: !525)
!524 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 21, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !525, file: !524, line: 22, baseType: !528, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !236, line: 37, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !472, line: 49, baseType: !7)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !518, file: !14, line: 645, baseType: !282, size: 128, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !518, file: !14, line: 646, baseType: !532, size: 32, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !524, line: 28, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !524, line: 26, size: 32, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !533, file: !524, line: 27, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !236, line: 38, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !472, line: 50, baseType: !7)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !518, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !518, file: !14, line: 650, baseType: !540, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !518, file: !14, line: 651, baseType: !540, size: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !518, file: !14, line: 654, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !547)
!547 = !{!548, !3704, !3714, !3718, !3722, !3726, !3730, !3734, !3738, !3742, !3746, !3747, !3751, !3755, !3792, !3821, !3825, !3831, !3835, !3839, !3843, !3847, !3851, !3857, !3861}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !546, file: !14, line: 1967, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!552, !517, !552, !7}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !554, line: 82, size: 1536, elements: !555)
!554 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!555 = !{!556, !557, !567, !575, !576, !591, !592, !596, !609, !3687, !3688, !3689, !3690, !3696, !3697, !3698}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !553, file: !554, line: 84, baseType: !7, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !553, file: !554, line: 85, baseType: !558, size: 32, offset: 32)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !559, line: 275, baseType: !560)
!559 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !559, line: 275, size: 32, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !560, file: !559, line: 275, baseType: !563, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !559, line: 69, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !559, line: 64, size: 32, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !564, file: !559, line: 65, baseType: !7, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !553, file: !554, line: 86, baseType: !568, size: 128, offset: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !569, line: 38, size: 128, elements: !570)
!569 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!570 = !{!571, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !568, file: !569, line: 39, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !568, file: !569, line: 39, baseType: !574, size: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !553, file: !554, line: 87, baseType: !552, size: 64, offset: 192)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !553, file: !554, line: 88, baseType: !577, size: 128, offset: 256)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !554, line: 49, size: 128, elements: !578)
!578 = !{!579, !588}
!579 = !DIDerivedType(tag: DW_TAG_member, scope: !577, file: !554, line: 50, baseType: !580, size: 64)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !554, line: 50, size: 64, elements: !581)
!581 = !{!582, !587}
!582 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !554, line: 51, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !580, file: !554, line: 51, size: 64, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !583, file: !554, line: 52, baseType: !158, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !583, file: !554, line: 52, baseType: !158, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !580, file: !554, line: 54, baseType: !217, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !577, file: !554, line: 56, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !553, file: !554, line: 89, baseType: !517, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !553, file: !554, line: 91, baseType: !593, size: 256, offset: 448)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 32)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !553, file: !554, line: 94, baseType: !597, size: 64, offset: 704)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !598, line: 25, size: 64, elements: !599)
!598 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !597, file: !598, line: 26, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !597, file: !598, line: 26, size: 64, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !601, file: !598, line: 28, baseType: !218, size: 64, align: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !598, line: 30, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !601, file: !598, line: 30, size: 64, elements: !606)
!606 = !{!607, !608}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !605, file: !598, line: 31, baseType: !378, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !605, file: !598, line: 32, baseType: !109, size: 32, offset: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !553, file: !554, line: 95, baseType: !610, size: 64, offset: 768)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !554, line: 128, size: 1024, align: 512, elements: !613)
!613 = !{!614, !618, !619, !626, !632, !636, !640, !644, !645, !649, !653, !3677, !3681}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !612, file: !554, line: 129, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!109, !552, !7}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !612, file: !554, line: 130, baseType: !615, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !612, file: !554, line: 131, baseType: !620, size: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!109, !623, !625}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !612, file: !554, line: 132, baseType: !627, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!109, !623, !7, !308, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !612, file: !554, line: 134, baseType: !633, size: 64, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!109, !623}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !612, file: !554, line: 135, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!109, !552}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !612, file: !554, line: 136, baseType: !641, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !552}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !612, file: !554, line: 137, baseType: !641, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !612, file: !554, line: 138, baseType: !646, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !552, !517}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !612, file: !554, line: 139, baseType: !650, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!440, !552, !440, !109}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !612, file: !554, line: 140, baseType: !654, size: 64, offset: 640)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!657, !3676}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !659, line: 70, size: 256, elements: !660)
!659 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!660 = !{!661, !662, !3672, !3673}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !658, file: !659, line: 71, baseType: !552, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !658, file: !659, line: 72, baseType: !663, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !665)
!665 = !{!666, !667, !670, !671, !672, !676, !1152, !1291, !1331, !1421, !1425, !1426, !1427, !1428, !1429, !1438, !1439, !1440, !1441, !1446, !1450, !1451, !1454, !1457, !1460, !1463, !1464, !1465, !1506, !3605, !3606, !3607, !3608, !3609, !3610, !3613, !3615, !3622, !3623, !3624, !3625, !3626, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !664, file: !14, line: 1191, baseType: !282, size: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !664, file: !14, line: 1192, baseType: !668, size: 32, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !236, line: 21, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !236, line: 18, baseType: !158)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !664, file: !14, line: 1193, baseType: !174, size: 8, offset: 160)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !664, file: !14, line: 1194, baseType: !199, size: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !664, file: !14, line: 1195, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !236, line: 52, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !472, line: 88, baseType: !675)
!675 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !664, file: !14, line: 1196, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !679)
!679 = !{!680, !681, !682, !689, !693, !697, !701, !1137, !1138, !1142, !1144, !1145, !1146, !1148, !1149, !1150, !1151}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !678, file: !14, line: 2367, baseType: !308, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !678, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !678, file: !14, line: 2376, baseType: !683, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!109, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !688, line: 32, flags: DIFlagFwdDecl)
!688 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!689 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !678, file: !14, line: 2377, baseType: !690, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !678, file: !14, line: 2378, baseType: !694, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!552, !677, !109, !308, !157}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !678, file: !14, line: 2380, baseType: !698, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !663}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !678, file: !14, line: 2381, baseType: !702, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !704)
!704 = !{!705, !706, !707, !711, !733, !759, !760, !761, !762, !766, !771, !772, !792, !848, !849, !850, !851, !852, !853, !854, !855, !863, !867, !894, !915, !916, !917, !918, !927, !950, !951, !954, !957, !958, !959, !960, !961, !962, !963, !968, !969, !1095, !1103, !1104, !1105, !1107, !1111, !1112, !1116, !1117, !1118, !1119, !1121, !1122, !1123, !1130, !1131, !1132, !1136}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !703, file: !6, line: 403, baseType: !5, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !703, file: !6, line: 406, baseType: !282, size: 128, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !703, file: !6, line: 409, baseType: !708, size: 448, offset: 192)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 448, elements: !709)
!709 = !{!710}
!710 = !DISubrange(count: 56)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !703, file: !6, line: 417, baseType: !712, size: 768, offset: 640)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !713)
!713 = !{!714, !715, !716, !717, !720}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !712, file: !6, line: 46, baseType: !365, size: 512)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !712, file: !6, line: 47, baseType: !702, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !712, file: !6, line: 48, baseType: !371, size: 64, offset: 576)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !712, file: !6, line: 49, baseType: !718, size: 64, offset: 640)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !712, file: !6, line: 50, baseType: !721, size: 64, offset: 704)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !723, line: 26, size: 256, elements: !724)
!723 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!724 = !{!725, !726}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !722, file: !723, line: 27, baseType: !7, size: 32)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !722, file: !723, line: 28, baseType: !727, size: 192, offset: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !728, line: 43, size: 192, elements: !729)
!728 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!729 = !{!730, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !727, file: !728, line: 44, baseType: !731, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !387, line: 23, baseType: !386)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !727, file: !728, line: 45, baseType: !282, size: 128, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !703, file: !6, line: 418, baseType: !734, size: 64, offset: 1408)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !736)
!736 = !{!737, !738, !743, !747, !751, !755}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !735, file: !6, line: 54, baseType: !476, size: 128)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !735, file: !6, line: 55, baseType: !739, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!470, !734, !742, !440}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !735, file: !6, line: 57, baseType: !744, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!470, !734, !742, !308, !485}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !735, file: !6, line: 59, baseType: !748, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !702, !308}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !735, file: !6, line: 60, baseType: !752, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!109, !702}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !735, file: !6, line: 61, baseType: !756, size: 64, offset: 384)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !702}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !703, file: !6, line: 419, baseType: !308, size: 64, offset: 1472)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !703, file: !6, line: 420, baseType: !308, size: 64, offset: 1536)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !703, file: !6, line: 421, baseType: !371, size: 64, offset: 1600)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !703, file: !6, line: 424, baseType: !763, size: 64, offset: 1664)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !765)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !703, file: !6, line: 425, baseType: !767, size: 64, offset: 1728)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !159, line: 20, baseType: !770)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !161, line: 26, baseType: !109)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !703, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !703, file: !6, line: 435, baseType: !773, size: 256, offset: 1856)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !774, line: 66, size: 256, elements: !775)
!774 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!775 = !{!776, !785, !786, !791}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !773, file: !774, line: 67, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !778, line: 13, baseType: !779)
!778 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !236, line: 181, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 179, size: 64, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !780, file: !236, line: 180, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !159, line: 22, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !161, line: 30, baseType: !675)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !773, file: !774, line: 68, baseType: !731, size: 32, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !773, file: !774, line: 70, baseType: !787, size: 32, offset: 96)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !788, line: 15, size: 32, elements: !789)
!788 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !787, file: !788, line: 20, baseType: !398, size: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !773, file: !774, line: 72, baseType: !282, size: 128, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !703, file: !6, line: 437, baseType: !793, size: 64, offset: 2112)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !795, line: 69, size: 320, elements: !796)
!795 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!796 = !{!797, !798, !799, !819, !821, !825, !826}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !794, file: !795, line: 70, baseType: !308, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !794, file: !795, line: 71, baseType: !702, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !794, file: !795, line: 72, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !795, line: 47, size: 256, elements: !803)
!803 = !{!804, !805, !811, !815}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !802, file: !795, line: 49, baseType: !7, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !802, file: !795, line: 51, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!109, !308, !809}
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !802, file: !795, line: 53, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!109, !440, !809}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !802, file: !795, line: 55, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !157}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !794, file: !795, line: 73, baseType: !820, size: 16, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !794, file: !795, line: 74, baseType: !822, size: 8, offset: 208)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !159, line: 16, baseType: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !161, line: 20, baseType: !824)
!824 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !794, file: !795, line: 75, baseType: !240, size: 8, offset: 216)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !795, line: 76, baseType: !827, size: 64, offset: 256)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !794, file: !795, line: 76, size: 64, elements: !828)
!828 = !{!829, !830, !837}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !827, file: !795, line: 77, baseType: !157, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !827, file: !795, line: 78, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !795, line: 86, size: 128, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !833, file: !795, line: 87, baseType: !7, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !833, file: !795, line: 88, baseType: !440, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !827, file: !795, line: 79, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !795, line: 92, size: 256, elements: !841)
!841 = !{!842, !843, !844, !846, !847}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !840, file: !795, line: 94, baseType: !7, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !840, file: !795, line: 95, baseType: !7, size: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !840, file: !795, line: 96, baseType: !845, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !840, file: !795, line: 97, baseType: !800, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !840, file: !795, line: 98, baseType: !157, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !703, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !703, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !703, file: !6, line: 442, baseType: !763, size: 64, offset: 2240)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !703, file: !6, line: 443, baseType: !767, size: 64, offset: 2304)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !703, file: !6, line: 444, baseType: !235, size: 8, offset: 2368)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !703, file: !6, line: 451, baseType: !235, size: 8, offset: 2376)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !703, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !703, file: !6, line: 455, baseType: !856, size: 64, offset: 2432)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !858, line: 23, size: 96, elements: !859)
!858 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !857, file: !858, line: 24, baseType: !109, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !857, file: !858, line: 24, baseType: !109, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !857, file: !858, line: 24, baseType: !109, size: 32, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !703, file: !6, line: 458, baseType: !864, size: 64, offset: 2496)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!109}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !703, file: !6, line: 460, baseType: !868, size: 4032, align: 512, offset: 2560)
!868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !869, size: 4032, elements: !892)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !870)
!870 = !{!871, !872, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !869, file: !6, line: 363, baseType: !157, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !869, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !869, file: !6, line: 367, baseType: !874, size: 448, offset: 128)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !874, file: !6, line: 320, baseType: !702, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !874, file: !6, line: 321, baseType: !878, size: 384, offset: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !879, line: 40, size: 384, elements: !880)
!879 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !878, file: !879, line: 41, baseType: !882, size: 384, align: 64)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 384, align: 64, elements: !890)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !884, line: 5, size: 192, align: 64, elements: !885)
!884 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!885 = !{!886, !887, !889}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !883, file: !884, line: 6, baseType: !199, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !883, file: !884, line: 7, baseType: !888, size: 64, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !883, file: !884, line: 8, baseType: !888, size: 64, offset: 128)
!890 = !{!891}
!891 = !DISubrange(count: 2)
!892 = !{!893}
!893 = !DISubrange(count: 7)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !703, file: !6, line: 463, baseType: !895, size: 192, offset: 6592)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !896, line: 8, size: 192, elements: !897)
!896 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!897 = !{!898, !899, !901}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !895, file: !896, line: 10, baseType: !7, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !895, file: !896, line: 11, baseType: !900, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !895, file: !896, line: 12, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !904, line: 59, size: 48, elements: !905)
!904 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!905 = !{!906, !910, !911, !912, !913, !914}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !903, file: !904, line: 60, baseType: !907, size: 16)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !159, line: 18, baseType: !908)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !161, line: 23, baseType: !909)
!909 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !903, file: !904, line: 61, baseType: !907, size: 16, offset: 16)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !903, file: !904, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !903, file: !904, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !903, file: !904, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !903, file: !904, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !703, file: !6, line: 465, baseType: !199, size: 64, offset: 6784)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !703, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !703, file: !6, line: 470, baseType: !282, size: 128, offset: 6912)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !703, file: !6, line: 471, baseType: !919, size: 64, offset: 7040)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !921, line: 33, size: 96, elements: !922)
!921 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!922 = !{!923, !924, !925, !926}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !920, file: !921, line: 37, baseType: !109, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !920, file: !921, line: 43, baseType: !109, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !920, file: !921, line: 45, baseType: !223, size: 16, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !920, file: !921, line: 47, baseType: !223, size: 16, offset: 80)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !703, file: !6, line: 476, baseType: !928, size: 64, offset: 7104)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !930)
!930 = !{!931, !947, !948, !949}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !929, file: !6, line: 379, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !934, line: 204, baseType: !935)
!934 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !934, line: 197, size: 192, elements: !936)
!936 = !{!937, !939, !940, !941, !943, !945}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !935, file: !934, line: 198, baseType: !938, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !934, line: 21, baseType: !160)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !935, file: !934, line: 199, baseType: !174, size: 8, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !935, file: !934, line: 200, baseType: !174, size: 8, offset: 40)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !935, file: !934, line: 201, baseType: !942, size: 16, offset: 48)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !934, line: 17, baseType: !222)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !935, file: !934, line: 202, baseType: !944, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !934, line: 16, baseType: !218)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !935, file: !934, line: 203, baseType: !946, size: 64, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !934, line: 22, baseType: !218)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !929, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !929, file: !6, line: 381, baseType: !440, size: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !929, file: !6, line: 382, baseType: !440, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !703, file: !6, line: 477, baseType: !929, size: 256, offset: 7168)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !703, file: !6, line: 480, baseType: !952, size: 64, offset: 7424)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !703, file: !6, line: 483, baseType: !955, size: 64, offset: 7488)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !703, file: !6, line: 488, baseType: !440, size: 64, offset: 7552)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !703, file: !6, line: 492, baseType: !157, size: 64, offset: 7616)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !703, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !703, file: !6, line: 495, baseType: !157, size: 64, offset: 7744)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !703, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !703, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !703, file: !6, line: 500, baseType: !964, size: 64, offset: 7872)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !966, line: 45, baseType: !967)
!966 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !703, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !703, file: !6, line: 504, baseType: !970, size: 64, offset: 8000)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !973, line: 96, size: 192, elements: !974)
!973 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!974 = !{!975, !976, !1055, !1059}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !972, file: !973, line: 97, baseType: !7, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !972, file: !973, line: 98, baseType: !977, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !973, line: 24, size: 3072, elements: !979)
!979 = !{!980, !982, !983, !984, !985, !1007, !1008, !1009, !1010, !1028, !1040, !1041, !1052, !1053, !1054}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !978, file: !973, line: 26, baseType: !981, size: 128)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 128, elements: !890)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !978, file: !973, line: 27, baseType: !981, size: 128, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !978, file: !973, line: 28, baseType: !109, size: 32, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !978, file: !973, line: 31, baseType: !378, size: 32, align: 512, offset: 512)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !978, file: !973, line: 32, baseType: !986, size: 960, offset: 576)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !987, line: 206, size: 960, elements: !988)
!987 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!988 = !{!989, !998, !1001, !1003, !1004, !1006}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !986, file: !987, line: 207, baseType: !990, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !236, line: 232, size: 128, align: 64, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !991, file: !236, line: 233, baseType: !990, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !991, file: !236, line: 234, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{null, !990}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !986, file: !987, line: 208, baseType: !999, size: 256, offset: 64)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1000, size: 256, elements: !315)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !986, file: !987, line: 209, baseType: !1002, size: 256, offset: 320)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !315)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !986, file: !987, line: 213, baseType: !474, size: 64, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !986, file: !987, line: 215, baseType: !1005, size: 256, offset: 640)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 256, elements: !315)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !987, line: 216, baseType: !240, size: 8, offset: 896)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !978, file: !973, line: 33, baseType: !199, size: 64, offset: 1536)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !978, file: !973, line: 34, baseType: !199, size: 64, offset: 1600)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !978, file: !973, line: 35, baseType: !235, size: 8, offset: 1664)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !978, file: !973, line: 36, baseType: !1011, size: 320, offset: 1728)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1012, line: 11, size: 320, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1013 = !{!1014, !1021, !1022, !1027}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1011, file: !1012, line: 16, baseType: !1015, size: 128)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !236, line: 198, size: 128, elements: !1016)
!1016 = !{!1017, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1015, file: !236, line: 199, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1015, file: !236, line: 199, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1011, file: !1012, line: 17, baseType: !199, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1011, file: !1012, line: 18, baseType: !1023, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !1026}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1011, file: !1012, line: 19, baseType: !158, size: 32, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !978, file: !973, line: 37, baseType: !1029, size: 256, offset: 2048)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1030, line: 98, size: 256, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1029, file: !1030, line: 99, baseType: !777, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1029, file: !1030, line: 100, baseType: !282, size: 128, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1029, file: !1030, line: 101, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1030, line: 21, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{null, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !978, file: !973, line: 38, baseType: !991, size: 128, align: 64, offset: 2304)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !978, file: !973, line: 39, baseType: !1042, size: 64, offset: 2432)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !973, line: 49, size: 768, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1048, !1049, !1050, !1051}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1043, file: !973, line: 50, baseType: !378, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1043, file: !973, line: 51, baseType: !1002, size: 256, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1043, file: !973, line: 53, baseType: !1002, size: 256, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1043, file: !973, line: 54, baseType: !199, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1043, file: !973, line: 55, baseType: !1042, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1043, file: !973, line: 56, baseType: !109, size: 32, offset: 704)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1043, file: !973, line: 57, baseType: !109, size: 32, offset: 736)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !978, file: !973, line: 40, baseType: !199, size: 64, offset: 2496)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !978, file: !973, line: 42, baseType: !109, size: 32, offset: 2560)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !978, file: !973, line: 43, baseType: !971, size: 64, offset: 2624)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !972, file: !973, line: 99, baseType: !1056, offset: 128)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1057, line: 211, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1058 = !{}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !972, file: !973, line: 100, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !973, line: 63, size: 3008, elements: !1062)
!1062 = !{!1063, !1064, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1094}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1061, file: !973, line: 64, baseType: !1042, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1061, file: !973, line: 65, baseType: !1065, size: 192, offset: 64)
!1065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 192, elements: !441)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1061, file: !973, line: 67, baseType: !109, size: 32, offset: 256)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1061, file: !973, line: 68, baseType: !773, size: 256, offset: 320)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1061, file: !973, line: 69, baseType: !378, size: 32, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1061, file: !973, line: 70, baseType: !773, size: 256, offset: 640)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1061, file: !973, line: 71, baseType: !199, size: 64, offset: 896)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1061, file: !973, line: 72, baseType: !199, size: 64, offset: 960)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1061, file: !973, line: 73, baseType: !199, size: 64, offset: 1024)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1061, file: !973, line: 74, baseType: !199, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1061, file: !973, line: 75, baseType: !199, size: 64, offset: 1152)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1061, file: !973, line: 76, baseType: !199, size: 64, offset: 1216)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1061, file: !973, line: 77, baseType: !199, size: 64, offset: 1280)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1061, file: !973, line: 78, baseType: !199, size: 64, offset: 1344)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1061, file: !973, line: 79, baseType: !235, size: 8, offset: 1408)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1061, file: !973, line: 80, baseType: !199, size: 64, offset: 1472)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1061, file: !973, line: 81, baseType: !773, size: 256, offset: 1536)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1061, file: !973, line: 82, baseType: !722, size: 256, offset: 1792)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1061, file: !973, line: 84, baseType: !398, size: 32, offset: 2048)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1061, file: !973, line: 87, baseType: !199, size: 64, offset: 2112)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1061, file: !973, line: 88, baseType: !199, size: 64, offset: 2176)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1061, file: !973, line: 89, baseType: !1086, size: 704, offset: 2240)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1030, line: 111, size: 704, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1093}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1086, file: !1030, line: 112, baseType: !1029, size: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1086, file: !1030, line: 113, baseType: !1011, size: 320, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1086, file: !1030, line: 116, baseType: !1091, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1030, line: 18, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1086, file: !1030, line: 117, baseType: !109, size: 32, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1061, file: !973, line: 90, baseType: !971, size: 64, offset: 2944)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !703, file: !6, line: 515, baseType: !1096, size: 64, offset: 8064)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1098, line: 117, size: 128, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1099 = !{!1100, !1101, !1102}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1097, file: !1098, line: 118, baseType: !769, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1097, file: !1098, line: 119, baseType: !769, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1097, file: !1098, line: 120, baseType: !474, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !703, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !703, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !703, file: !6, line: 520, baseType: !1106, size: 64, offset: 8192)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !703, file: !6, line: 523, baseType: !1108, size: 64, offset: 8256)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !703, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !703, file: !6, line: 525, baseType: !1113, size: 64, offset: 8384)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !703, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !703, file: !6, line: 533, baseType: !157, size: 64, offset: 8512)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !703, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !703, file: !6, line: 535, baseType: !1120, size: 64, offset: 8640)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !703, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !703, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !703, file: !6, line: 540, baseType: !1124, size: 64, offset: 8768)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1126, line: 32, size: 64, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1125, file: !1126, line: 33, baseType: !769, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1125, file: !1126, line: 34, baseType: !769, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !703, file: !6, line: 563, baseType: !282, size: 128, offset: 8832)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !703, file: !6, line: 565, baseType: !282, size: 128, offset: 8960)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !703, file: !6, line: 568, baseType: !1133, size: 64, offset: 9088)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{null}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !703, file: !6, line: 570, baseType: !398, size: 32, offset: 9152)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !14, line: 2382, baseType: !677, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !678, file: !14, line: 2383, baseType: !1139, size: 64, offset: 512)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !236, line: 194, size: 64, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1139, file: !236, line: 195, baseType: !1018, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !678, file: !14, line: 2385, baseType: !1143, offset: 576)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1057, line: 206, elements: !1058)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !678, file: !14, line: 2386, baseType: !1143, offset: 576)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !678, file: !14, line: 2387, baseType: !1143, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !678, file: !14, line: 2388, baseType: !1147, offset: 576)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1143, elements: !441)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !678, file: !14, line: 2390, baseType: !1143, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !678, file: !14, line: 2391, baseType: !1143, offset: 576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !678, file: !14, line: 2392, baseType: !1143, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !678, file: !14, line: 2393, baseType: !1143, offset: 576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !664, file: !14, line: 1197, baseType: !1153, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1155)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1156)
!1156 = !{!1157, !1161, !1165, !1166, !1170, !1176, !1180, !1181, !1182, !1186, !1190, !1194, !1195, !1196, !1202, !1206, !1207, !1214, !1215, !1216, !1217, !1221, !1225, !1274, !1289, !1290}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1155, file: !14, line: 2058, baseType: !1158, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!517, !663}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1155, file: !14, line: 2059, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{null, !517}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1155, file: !14, line: 2060, baseType: !1162, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1155, file: !14, line: 2062, baseType: !1167, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !517, !109}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1155, file: !14, line: 2063, baseType: !1171, size: 64, offset: 256)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!109, !517, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1155, file: !14, line: 2064, baseType: !1177, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!109, !517}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1155, file: !14, line: 2065, baseType: !1162, size: 64, offset: 384)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1155, file: !14, line: 2066, baseType: !698, size: 64, offset: 448)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1155, file: !14, line: 2067, baseType: !1183, size: 64, offset: 512)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!109, !663, !109}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1155, file: !14, line: 2068, baseType: !1187, size: 64, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!109, !663, !13}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1155, file: !14, line: 2069, baseType: !1191, size: 64, offset: 640)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!109, !663}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1155, file: !14, line: 2070, baseType: !1187, size: 64, offset: 704)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1155, file: !14, line: 2071, baseType: !1191, size: 64, offset: 768)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1155, file: !14, line: 2072, baseType: !1197, size: 64, offset: 832)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!109, !552, !1200}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1155, file: !14, line: 2073, baseType: !1203, size: 64, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!109, !663, !900, !440}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1155, file: !14, line: 2074, baseType: !698, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1155, file: !14, line: 2076, baseType: !1208, size: 64, offset: 1024)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!109, !1211, !552}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1213, line: 66, flags: DIFlagFwdDecl)
!1213 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1155, file: !14, line: 2077, baseType: !1208, size: 64, offset: 1088)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1155, file: !14, line: 2078, baseType: !1208, size: 64, offset: 1152)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1155, file: !14, line: 2079, baseType: !1208, size: 64, offset: 1216)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1155, file: !14, line: 2081, baseType: !1218, size: 64, offset: 1280)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!470, !663, !109, !440, !485, !673}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1155, file: !14, line: 2082, baseType: !1222, size: 64, offset: 1344)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!470, !663, !109, !308, !485, !673}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1155, file: !14, line: 2083, baseType: !1226, size: 64, offset: 1408)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!1229, !517}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1257, !1258, !1259}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1231, file: !19, line: 297, baseType: !1015, size: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1231, file: !19, line: 298, baseType: !282, size: 128, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1231, file: !19, line: 299, baseType: !282, size: 128, offset: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1231, file: !19, line: 300, baseType: !282, size: 128, offset: 384)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1231, file: !19, line: 301, baseType: !773, size: 256, offset: 512)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1231, file: !19, line: 302, baseType: !378, size: 32, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1231, file: !19, line: 303, baseType: !398, size: 32, offset: 800)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1231, file: !19, line: 304, baseType: !663, size: 64, offset: 832)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1231, file: !19, line: 305, baseType: !1242, size: 64, offset: 896)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1243)
!1243 = !{!1244, !1256}
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !19, line: 69, baseType: !1245, size: 32)
!1245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1242, file: !19, line: 69, size: 32, elements: !1246)
!1246 = !{!1247, !1248, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1245, file: !19, line: 70, baseType: !523, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1245, file: !19, line: 71, baseType: !532, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1245, file: !19, line: 72, baseType: !1250, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1251, line: 24, baseType: !1252)
!1251 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1251, line: 22, size: 32, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1252, file: !1251, line: 23, baseType: !1255, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1251, line: 20, baseType: !529)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1242, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1231, file: !19, line: 306, baseType: !673, size: 64, offset: 960)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1231, file: !19, line: 307, baseType: !199, size: 64, offset: 1024)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1231, file: !19, line: 308, baseType: !1260, size: 576, offset: 1088)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1261)
!1261 = !{!1262, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1273}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1260, file: !19, line: 206, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !675)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1260, file: !19, line: 207, baseType: !1263, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1260, file: !19, line: 208, baseType: !1263, size: 64, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1260, file: !19, line: 209, baseType: !1263, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1260, file: !19, line: 210, baseType: !1263, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1260, file: !19, line: 211, baseType: !1263, size: 64, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1260, file: !19, line: 212, baseType: !1263, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1260, file: !19, line: 213, baseType: !1271, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1272, line: 8, baseType: !784)
!1272 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1260, file: !19, line: 214, baseType: !1271, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1155, file: !14, line: 2085, baseType: !1275, size: 64, offset: 1472)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!474, !663, !1278}
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1280, line: 15, size: 256, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1281 = !{!1282, !1283, !1284, !1285, !1286}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1279, file: !1280, line: 16, baseType: !242, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1279, file: !1280, line: 19, baseType: !109, size: 32, offset: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1279, file: !1280, line: 26, baseType: !199, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1279, file: !1280, line: 33, baseType: !199, size: 64, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1279, file: !1280, line: 36, baseType: !1287, size: 64, offset: 192)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1155, file: !14, line: 2087, baseType: !1275, size: 64, offset: 1536)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1155, file: !14, line: 2089, baseType: !698, size: 64, offset: 1600)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !664, file: !14, line: 1198, baseType: !1292, size: 64, offset: 448)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1295)
!1295 = !{!1296, !1300, !1304, !1308, !1309, !1310, !1311, !1312, !1317, !1322, !1326}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1294, file: !19, line: 325, baseType: !1297, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!109, !1230}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1294, file: !19, line: 326, baseType: !1301, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!1230, !663, !109}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1294, file: !19, line: 327, baseType: !1305, size: 64, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !1230}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1294, file: !19, line: 328, baseType: !1297, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1294, file: !19, line: 329, baseType: !1297, size: 64, offset: 256)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1294, file: !19, line: 330, baseType: !1297, size: 64, offset: 320)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1294, file: !19, line: 331, baseType: !1183, size: 64, offset: 384)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1294, file: !19, line: 334, baseType: !1313, size: 64, offset: 448)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!1316, !517}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1294, file: !19, line: 335, baseType: !1318, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DISubroutineType(types: !1320)
!1320 = !{!109, !517, !1321}
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1294, file: !19, line: 337, baseType: !1323, size: 64, offset: 576)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!109, !517, !1316}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1294, file: !19, line: 339, baseType: !1327, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!109, !663, !1330}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !664, file: !14, line: 1199, baseType: !1332, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1335)
!1335 = !{!1336, !1347, !1348, !1352, !1353, !1354, !1369, !1392, !1396, !1397, !1420}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1334, file: !19, line: 431, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!109, !663, !109, !109, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1343, line: 8, size: 128, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1344 = !{!1345, !1346}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1342, file: !1343, line: 9, baseType: !657, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1342, file: !1343, line: 10, baseType: !552, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1334, file: !19, line: 432, baseType: !1183, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1334, file: !19, line: 433, baseType: !1349, size: 64, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!109, !663, !7}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1334, file: !19, line: 434, baseType: !1349, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1334, file: !19, line: 435, baseType: !1183, size: 64, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1334, file: !19, line: 436, baseType: !1355, size: 64, offset: 320)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!109, !663, !109, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1359, file: !19, line: 418, baseType: !109, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1359, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1359, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1359, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1359, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1359, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1359, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1359, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1334, file: !19, line: 437, baseType: !1370, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!109, !663, !1242, !1373}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1374, file: !19, line: 346, baseType: !109, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1374, file: !19, line: 347, baseType: !217, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1374, file: !19, line: 348, baseType: !217, size: 64, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1374, file: !19, line: 349, baseType: !217, size: 64, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1374, file: !19, line: 350, baseType: !217, size: 64, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1374, file: !19, line: 351, baseType: !217, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1374, file: !19, line: 352, baseType: !217, size: 64, offset: 384)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1374, file: !19, line: 353, baseType: !783, size: 64, offset: 448)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1374, file: !19, line: 355, baseType: !783, size: 64, offset: 512)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1374, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1374, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1374, file: !19, line: 358, baseType: !217, size: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1374, file: !19, line: 359, baseType: !217, size: 64, offset: 704)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1374, file: !19, line: 360, baseType: !217, size: 64, offset: 768)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1374, file: !19, line: 361, baseType: !783, size: 64, offset: 832)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1374, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1334, file: !19, line: 438, baseType: !1393, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!109, !663, !1330, !1373}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1334, file: !19, line: 440, baseType: !1370, size: 64, offset: 512)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1334, file: !19, line: 441, baseType: !1398, size: 64, offset: 576)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!109, !663, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1403)
!1403 = !{!1404, !1405}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1402, file: !19, line: 412, baseType: !7, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1402, file: !19, line: 413, baseType: !1406, size: 1344, offset: 64)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1407, size: 1344, elements: !441)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1408)
!1408 = !{!1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1419}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1407, file: !19, line: 398, baseType: !7, size: 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1407, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1407, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1407, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1407, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1407, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1407, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1407, file: !19, line: 406, baseType: !219, size: 64, offset: 256)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1407, file: !19, line: 407, baseType: !1418, size: 64, offset: 320)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !236, line: 132, baseType: !217)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1407, file: !19, line: 408, baseType: !1418, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1334, file: !19, line: 442, baseType: !1349, size: 64, offset: 640)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !664, file: !14, line: 1200, baseType: !1422, size: 64, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1424)
!1424 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !664, file: !14, line: 1201, baseType: !199, size: 64, offset: 640)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !664, file: !14, line: 1202, baseType: !199, size: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !664, file: !14, line: 1203, baseType: !199, size: 64, offset: 768)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !664, file: !14, line: 1204, baseType: !552, size: 64, offset: 832)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !664, file: !14, line: 1205, baseType: !1430, size: 320, offset: 896)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1431, line: 48, size: 320, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1432 = !{!1433, !1434, !1435, !1436, !1437}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1430, file: !1431, line: 49, baseType: !777, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1430, file: !1431, line: 55, baseType: !777, size: 64, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1430, file: !1431, line: 57, baseType: !787, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1430, file: !1431, line: 59, baseType: !731, size: 32, offset: 160)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1430, file: !1431, line: 60, baseType: !282, size: 128, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !664, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !664, file: !14, line: 1207, baseType: !398, size: 32, offset: 1248)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !664, file: !14, line: 1209, baseType: !157, size: 64, offset: 1280)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !664, file: !14, line: 1211, baseType: !1442, size: 64, offset: 1344)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !664, file: !14, line: 1223, baseType: !1447, size: 64, offset: 1408)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !569, line: 34, size: 64, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1447, file: !569, line: 35, baseType: !572, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !664, file: !14, line: 1224, baseType: !282, size: 128, offset: 1472)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !664, file: !14, line: 1225, baseType: !1452, size: 64, offset: 1600)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !664, file: !14, line: 1226, baseType: !1455, size: 64, offset: 1664)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !664, file: !14, line: 1227, baseType: !1458, size: 64, offset: 1728)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !664, file: !14, line: 1228, baseType: !1461, size: 64, offset: 1792)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !664, file: !14, line: 1229, baseType: !1015, size: 128, offset: 1856)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !664, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !664, file: !14, line: 1231, baseType: !1466, size: 2496, offset: 2048)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1472, !1504}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1466, file: !19, line: 522, baseType: !7, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1466, file: !19, line: 523, baseType: !1430, size: 320, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1466, file: !19, line: 524, baseType: !1471, size: 192, offset: 384)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 192, elements: !441)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1466, file: !19, line: 525, baseType: !1473, size: 1728, offset: 576)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1474, size: 1728, elements: !441)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1475)
!1475 = !{!1476, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1474, file: !19, line: 223, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1479)
!1479 = !{!1480, !1481, !1494, !1495}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1478, file: !19, line: 446, baseType: !109, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1478, file: !19, line: 447, baseType: !1482, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1484, file: !19, line: 313, baseType: !1183, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1484, file: !19, line: 314, baseType: !1183, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1484, file: !19, line: 315, baseType: !1183, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1484, file: !19, line: 316, baseType: !1183, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1484, file: !19, line: 317, baseType: !1297, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1484, file: !19, line: 318, baseType: !1297, size: 64, offset: 320)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1484, file: !19, line: 319, baseType: !1297, size: 64, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1484, file: !19, line: 320, baseType: !1327, size: 64, offset: 448)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1478, file: !19, line: 448, baseType: !702, size: 64, offset: 128)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1478, file: !19, line: 449, baseType: !1477, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1474, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1474, file: !19, line: 226, baseType: !282, size: 128, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1474, file: !19, line: 227, baseType: !199, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1474, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1474, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1474, file: !19, line: 230, baseType: !1263, size: 64, offset: 384)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1474, file: !19, line: 231, baseType: !1263, size: 64, offset: 448)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1474, file: !19, line: 232, baseType: !157, size: 64, offset: 512)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1466, file: !19, line: 526, baseType: !1505, size: 192, offset: 2304)
!1505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1482, size: 192, elements: !441)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !664, file: !14, line: 1233, baseType: !1507, size: 2368, offset: 4544)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1508)
!1508 = !{!1509, !1510, !1511}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1507, file: !14, line: 1185, baseType: !223, size: 16)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1507, file: !14, line: 1186, baseType: !223, size: 16, offset: 16)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1507, file: !14, line: 1187, baseType: !1512, size: 2304, offset: 64)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1513, size: 2304, elements: !441)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1514, line: 12, size: 768, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1515 = !{!1516, !1530, !1531, !3603, !3604}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1513, file: !1514, line: 13, baseType: !1517, size: 384)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1518, line: 17, size: 384, elements: !1519)
!1518 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1519 = !{!1520, !1521, !1522, !1529}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1517, file: !1518, line: 18, baseType: !109, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1517, file: !1518, line: 19, baseType: !109, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1517, file: !1518, line: 20, baseType: !1523, size: 192, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1524, line: 41, baseType: !1525)
!1524 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1524, line: 37, size: 192, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !1524, line: 38, baseType: !378, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1525, file: !1524, line: 39, baseType: !282, size: 128, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1517, file: !1518, line: 22, baseType: !991, size: 128, align: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1513, file: !1514, line: 14, baseType: !845, size: 64, offset: 384)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1513, file: !1514, line: 15, baseType: !1532, size: 64, offset: 448)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1533, line: 16, size: 64, elements: !1534)
!1533 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1532, file: !1533, line: 17, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1213, line: 746, size: 58368, elements: !1538)
!1538 = !{!1539, !1547, !1548, !1549, !1555, !1556, !1557, !1558, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1629, !1640, !1735, !1739, !1742, !1773, !1774, !1775, !1776, !1780, !1782, !1783, !1784, !1785, !1786, !1787, !1798, !1799, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1816, !1817, !1824, !1825, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2783, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2831, !2837, !2838, !2839, !2840, !2841, !2842, !2845, !2852, !2857, !2860, !2863, !2866, !2869, !3007, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3045, !3046, !3047, !3056, !3064, !3065, !3066, !3067, !3068, !3073, !3074, !3075, !3078, !3079, !3082, !3085, !3088, !3096, !3099, !3100, !3186, !3187, !3188, !3189, !3190, !3196, !3197, !3198, !3199, !3202, !3203, !3206, !3209, !3210, !3213, !3214, !3215, !3218, !3219, !3220, !3221, !3222, !3223, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3255, !3256, !3262, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3274, !3346, !3348, !3349, !3350, !3351, !3352, !3353, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3381, !3382, !3383}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1537, file: !1213, line: 752, baseType: !1540, size: 192)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1541, line: 56, size: 192, elements: !1542)
!1541 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1542 = !{!1543, !1544, !1545, !1546}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1540, file: !1541, line: 57, baseType: !199, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1540, file: !1541, line: 58, baseType: !199, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1540, file: !1541, line: 59, baseType: !158, size: 32, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1540, file: !1541, line: 61, baseType: !158, size: 32, offset: 160)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1537, file: !1213, line: 754, baseType: !7, size: 32, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1537, file: !1213, line: 767, baseType: !157, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1537, file: !1213, line: 768, baseType: !1550, size: 32, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1551, line: 113, baseType: !1552)
!1551 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1551, line: 111, size: 32, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1552, file: !1551, line: 112, baseType: !398, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1537, file: !1213, line: 770, baseType: !7, size: 32, offset: 352)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1537, file: !1213, line: 771, baseType: !7, size: 32, offset: 384)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1537, file: !1213, line: 774, baseType: !109, size: 32, offset: 416)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1537, file: !1213, line: 775, baseType: !1559, size: 128, offset: 448)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1560, line: 58, size: 128, elements: !1561)
!1560 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1561 = !{!1562, !1568, !1573, !1574}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1559, file: !1560, line: 59, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1564, line: 60, size: 64, elements: !1565)
!1564 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1563, file: !1564, line: 61, baseType: !1567, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1559, file: !1560, line: 60, baseType: !1569, size: 32, offset: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1559, file: !1560, line: 60, size: 32, elements: !1570)
!1570 = !{!1571, !1572}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1569, file: !1560, line: 61, baseType: !7, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1569, file: !1560, line: 62, baseType: !398, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1559, file: !1560, line: 65, baseType: !221, size: 16, offset: 96)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1559, file: !1560, line: 65, baseType: !221, size: 16, offset: 112)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1537, file: !1213, line: 776, baseType: !7, size: 32, offset: 576)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1537, file: !1213, line: 777, baseType: !199, size: 64, offset: 640)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1537, file: !1213, line: 778, baseType: !1536, size: 64, offset: 704)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1537, file: !1213, line: 787, baseType: !109, size: 32, offset: 768)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1537, file: !1213, line: 788, baseType: !109, size: 32, offset: 800)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1537, file: !1213, line: 790, baseType: !109, size: 32, offset: 832)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1537, file: !1213, line: 792, baseType: !109, size: 32, offset: 864)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1537, file: !1213, line: 793, baseType: !109, size: 32, offset: 896)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1537, file: !1213, line: 794, baseType: !109, size: 32, offset: 928)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1537, file: !1213, line: 795, baseType: !7, size: 32, offset: 960)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1537, file: !1213, line: 797, baseType: !1586, size: 2048, offset: 1024)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1213, line: 551, size: 2048, elements: !1587)
!1587 = !{!1588, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1608, !1611, !1612, !1613}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1586, file: !1213, line: 553, baseType: !1589, size: 128)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1213, line: 411, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1589, file: !1213, line: 412, baseType: !199, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1589, file: !1213, line: 413, baseType: !158, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1586, file: !1213, line: 554, baseType: !883, size: 192, align: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1586, file: !1213, line: 555, baseType: !217, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1586, file: !1213, line: 556, baseType: !217, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1586, file: !1213, line: 558, baseType: !282, size: 128, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1586, file: !1213, line: 559, baseType: !7, size: 32, offset: 576)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1586, file: !1213, line: 561, baseType: !217, size: 64, offset: 640)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1586, file: !1213, line: 562, baseType: !217, size: 64, offset: 704)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1586, file: !1213, line: 563, baseType: !217, size: 64, offset: 768)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1586, file: !1213, line: 564, baseType: !217, size: 64, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1586, file: !1213, line: 565, baseType: !783, size: 64, offset: 896)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1586, file: !1213, line: 566, baseType: !217, size: 64, offset: 960)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1586, file: !1213, line: 568, baseType: !217, size: 64, offset: 1024)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1586, file: !1213, line: 571, baseType: !109, size: 32, offset: 1088)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1586, file: !1213, line: 572, baseType: !1607, size: 64, offset: 1152)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1586, file: !1213, line: 574, baseType: !1609, size: 64, offset: 1216)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1213, line: 49, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1586, file: !1213, line: 576, baseType: !1609, size: 64, offset: 1280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1586, file: !1213, line: 578, baseType: !199, size: 64, offset: 1344)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1586, file: !1213, line: 588, baseType: !1614, size: 512, align: 512, offset: 1536)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1213, line: 497, size: 512, align: 512, elements: !1615)
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1614, file: !1213, line: 498, baseType: !217, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1614, file: !1213, line: 499, baseType: !217, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1614, file: !1213, line: 500, baseType: !217, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1614, file: !1213, line: 501, baseType: !158, size: 32, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1614, file: !1213, line: 502, baseType: !158, size: 32, offset: 224)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1614, file: !1213, line: 503, baseType: !199, size: 64, offset: 256)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1614, file: !1213, line: 504, baseType: !199, size: 64, offset: 320)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1614, file: !1213, line: 505, baseType: !199, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1614, file: !1213, line: 506, baseType: !1625, size: 64, align: 64, offset: 448)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1213, line: 445, size: 64, align: 64, elements: !1626)
!1626 = !{!1627, !1628}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1625, file: !1213, line: 446, baseType: !7, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1625, file: !1213, line: 447, baseType: !7, size: 32, offset: 32)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1537, file: !1213, line: 798, baseType: !1630, size: 384, offset: 3072)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1213, line: 592, size: 384, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1630, file: !1213, line: 593, baseType: !282, size: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1630, file: !1213, line: 594, baseType: !199, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1630, file: !1213, line: 595, baseType: !199, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1630, file: !1213, line: 596, baseType: !7, size: 32, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1630, file: !1213, line: 597, baseType: !223, size: 16, offset: 288)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1630, file: !1213, line: 598, baseType: !223, size: 16, offset: 304)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1630, file: !1213, line: 600, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1537, file: !1213, line: 799, baseType: !1641, size: 1792, offset: 3456)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1213, line: 610, size: 1792, elements: !1642)
!1642 = !{!1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1732, !1733}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1641, file: !1213, line: 611, baseType: !883, size: 192, align: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1641, file: !1213, line: 618, baseType: !217, size: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1641, file: !1213, line: 619, baseType: !217, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1641, file: !1213, line: 620, baseType: !217, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1641, file: !1213, line: 621, baseType: !217, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1641, file: !1213, line: 622, baseType: !217, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1641, file: !1213, line: 629, baseType: !783, size: 64, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1641, file: !1213, line: 630, baseType: !217, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1641, file: !1213, line: 631, baseType: !7, size: 32, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1641, file: !1213, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1641, file: !1213, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1641, file: !1213, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1641, file: !1213, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1641, file: !1213, line: 662, baseType: !1657, size: 512, offset: 704)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1658)
!1658 = !{!1659, !1667, !1668, !1673, !1728, !1729, !1730, !1731}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1657, file: !25, line: 119, baseType: !1660, size: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1661, line: 9, size: 256, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1660, file: !1661, line: 10, baseType: !883, size: 192, align: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1660, file: !1661, line: 11, baseType: !1665, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1666, line: 29, baseType: !783)
!1666 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1657, file: !25, line: 120, baseType: !1665, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1657, file: !25, line: 121, baseType: !1669, size: 64, offset: 320)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!24, !1672}
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1657, file: !25, line: 122, baseType: !1674, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1676)
!1676 = !{!1677, !1702, !1703, !1706, !1711, !1712, !1723, !1727}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1675, file: !25, line: 160, baseType: !1678, size: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1679, file: !25, line: 216, baseType: !731, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1679, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1679, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1679, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1679, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1679, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1679, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1679, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1679, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1679, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1679, file: !25, line: 227, baseType: !223, size: 16, offset: 192)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1679, file: !25, line: 228, baseType: !223, size: 16, offset: 208)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1679, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1679, file: !25, line: 235, baseType: !1665, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1679, file: !25, line: 236, baseType: !1672, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1679, file: !25, line: 237, baseType: !1665, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1679, file: !25, line: 238, baseType: !1672, size: 64, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1679, file: !25, line: 239, baseType: !1699, size: 4096, align: 512, offset: 512)
!1699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1675, size: 4096, align: 512, elements: !1700)
!1700 = !{!1701}
!1701 = !DISubrange(count: 8)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1675, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1675, file: !25, line: 162, baseType: !1704, size: 32, offset: 96)
!1704 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !236, line: 32, baseType: !1705)
!1705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !472, line: 96, baseType: !109)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1675, file: !25, line: 163, baseType: !1707, size: 32, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !559, line: 274, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !559, line: 274, size: 32, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1708, file: !559, line: 274, baseType: !563, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1675, file: !25, line: 164, baseType: !1672, size: 64, offset: 192)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1675, file: !25, line: 165, baseType: !1713, size: 128, offset: 256)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1661, line: 14, size: 128, elements: !1714)
!1714 = !{!1715}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1713, file: !1661, line: 15, baseType: !1716, size: 128)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !884, line: 26, size: 128, elements: !1717)
!1717 = !{!1718, !1722}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1716, file: !884, line: 27, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !884, line: 12, size: 64, elements: !1720)
!1720 = !{!1721}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1719, file: !884, line: 13, baseType: !888, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1716, file: !884, line: 28, baseType: !888, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1675, file: !25, line: 166, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!1665}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1675, file: !25, line: 167, baseType: !1665, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1657, file: !25, line: 123, baseType: !240, size: 8, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1657, file: !25, line: 124, baseType: !240, size: 8, offset: 456)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1657, file: !25, line: 125, baseType: !240, size: 8, offset: 464)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1657, file: !25, line: 126, baseType: !240, size: 8, offset: 472)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1641, file: !1213, line: 671, baseType: !1657, size: 512, offset: 1216)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1641, file: !1213, line: 679, baseType: !1734, size: 64, offset: 1728)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1537, file: !1213, line: 800, baseType: !1736, size: 64, offset: 5248)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1738)
!1738 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1213, line: 800, flags: DIFlagFwdDecl)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1537, file: !1213, line: 809, baseType: !1740, size: 64, offset: 5312)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1213, line: 70, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1537, file: !1213, line: 825, baseType: !1743, size: 2048, align: 512, offset: 5632)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1213, line: 509, size: 2048, align: 512, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1743, file: !1213, line: 511, baseType: !217, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1743, file: !1213, line: 512, baseType: !217, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1743, file: !1213, line: 513, baseType: !217, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1743, file: !1213, line: 514, baseType: !217, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1743, file: !1213, line: 515, baseType: !217, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1743, file: !1213, line: 516, baseType: !217, size: 64, offset: 320)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1743, file: !1213, line: 518, baseType: !217, size: 64, offset: 384)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1743, file: !1213, line: 519, baseType: !217, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1743, file: !1213, line: 520, baseType: !783, size: 64, offset: 512)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1743, file: !1213, line: 522, baseType: !217, size: 64, offset: 576)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1743, file: !1213, line: 523, baseType: !217, size: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1743, file: !1213, line: 524, baseType: !783, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1743, file: !1213, line: 526, baseType: !783, size: 64, offset: 768)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1743, file: !1213, line: 527, baseType: !217, size: 64, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1743, file: !1213, line: 529, baseType: !217, size: 64, offset: 896)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1743, file: !1213, line: 530, baseType: !217, size: 64, offset: 960)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1743, file: !1213, line: 531, baseType: !217, size: 64, offset: 1024)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1743, file: !1213, line: 532, baseType: !217, size: 64, offset: 1088)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1743, file: !1213, line: 533, baseType: !217, size: 64, offset: 1152)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1743, file: !1213, line: 535, baseType: !217, size: 64, offset: 1216)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1743, file: !1213, line: 536, baseType: !217, size: 64, offset: 1280)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1743, file: !1213, line: 537, baseType: !217, size: 64, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1743, file: !1213, line: 538, baseType: !217, size: 64, offset: 1408)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1743, file: !1213, line: 539, baseType: !217, size: 64, offset: 1472)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1743, file: !1213, line: 540, baseType: !217, size: 64, offset: 1536)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1743, file: !1213, line: 541, baseType: !217, size: 64, offset: 1600)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1743, file: !1213, line: 542, baseType: !217, size: 64, offset: 1664)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1743, file: !1213, line: 543, baseType: !217, size: 64, offset: 1728)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1537, file: !1213, line: 833, baseType: !7, size: 32, offset: 7680)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1537, file: !1213, line: 836, baseType: !7, size: 32, offset: 7712)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1537, file: !1213, line: 837, baseType: !109, size: 32, offset: 7744)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1537, file: !1213, line: 838, baseType: !1777, size: 64, offset: 7808)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !246, line: 19, baseType: !245)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1537, file: !1213, line: 839, baseType: !1781, size: 64, offset: 7872)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1537, file: !1213, line: 840, baseType: !1779, size: 64, offset: 7936)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1537, file: !1213, line: 841, baseType: !157, size: 64, offset: 8000)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1537, file: !1213, line: 843, baseType: !223, size: 16, offset: 8064)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1537, file: !1213, line: 845, baseType: !223, size: 16, offset: 8080)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1537, file: !1213, line: 848, baseType: !109, size: 32, offset: 8096)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1537, file: !1213, line: 849, baseType: !1788, size: 32, offset: 8128)
!1788 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1213, line: 718, size: 32, elements: !1789)
!1789 = !{!1790, !1797}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1788, file: !1213, line: 724, baseType: !1791, size: 32)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1788, file: !1213, line: 719, size: 32, elements: !1792)
!1792 = !{!1793, !1794, !1795, !1796}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1791, file: !1213, line: 720, baseType: !240, size: 8)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1791, file: !1213, line: 721, baseType: !240, size: 8, offset: 8)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1791, file: !1213, line: 722, baseType: !240, size: 8, offset: 16)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1791, file: !1213, line: 723, baseType: !240, size: 8, offset: 24)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1788, file: !1213, line: 725, baseType: !158, size: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1537, file: !1213, line: 850, baseType: !282, size: 128, offset: 8192)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1537, file: !1213, line: 851, baseType: !1800, size: 64, offset: 8320)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1213, line: 60, flags: DIFlagFwdDecl)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1537, file: !1213, line: 855, baseType: !199, size: 64, offset: 8384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1537, file: !1213, line: 856, baseType: !240, size: 8, offset: 8448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1537, file: !1213, line: 857, baseType: !240, size: 8, offset: 8456)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1537, file: !1213, line: 858, baseType: !109, size: 32, offset: 8480)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1537, file: !1213, line: 859, baseType: !282, size: 128, offset: 8512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1537, file: !1213, line: 860, baseType: !109, size: 32, offset: 8640)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1537, file: !1213, line: 861, baseType: !282, size: 128, offset: 8704)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1537, file: !1213, line: 873, baseType: !1810, size: 256, offset: 8832)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1213, line: 376, size: 256, elements: !1811)
!1811 = !{!1812, !1813, !1814, !1815}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1810, file: !1213, line: 381, baseType: !199, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1810, file: !1213, line: 384, baseType: !219, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1810, file: !1213, line: 389, baseType: !219, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1810, file: !1213, line: 392, baseType: !219, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1537, file: !1213, line: 875, baseType: !282, size: 128, offset: 9088)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1537, file: !1213, line: 877, baseType: !1818, size: 320, offset: 9216)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1819, line: 86, size: 320, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1820 = !{!1821, !1822, !1823}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1818, file: !1819, line: 87, baseType: !109, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1818, file: !1819, line: 88, baseType: !282, size: 128, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1818, file: !1819, line: 89, baseType: !282, size: 128, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1537, file: !1213, line: 878, baseType: !883, size: 192, align: 64, offset: 9536)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1537, file: !1213, line: 881, baseType: !1826, size: 64, offset: 9728)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1828)
!1828 = !{!1829, !2703}
!1829 = !DIDerivedType(tag: DW_TAG_member, scope: !1827, file: !38, line: 734, baseType: !1830, size: 10240)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1827, file: !38, line: 734, size: 10240, elements: !1831)
!1831 = !{!1832, !1836, !1849, !2580, !2581, !2582, !2583, !2584, !2585, !2592, !2593, !2594, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2633, !2635, !2638, !2683, !2684, !2685, !2688, !2689, !2690, !2693, !2694, !2695, !2701, !2702}
!1832 = !DIDerivedType(tag: DW_TAG_member, scope: !1830, file: !38, line: 739, baseType: !1833, size: 512, align: 512)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1830, file: !38, line: 739, size: 512, align: 512, elements: !1834)
!1834 = !{!1835}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1833, file: !38, line: 747, baseType: !398, size: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1830, file: !38, line: 750, baseType: !1837, size: 128, offset: 512)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1838, line: 218, size: 128, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1839 = !{!1840, !1847, !1848}
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 219, baseType: !1841, size: 32)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 219, size: 32, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1841, file: !1838, line: 220, baseType: !378, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1841, file: !1838, line: 221, baseType: !1845)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1838, line: 197, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1838, line: 197, elements: !1058)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1837, file: !1838, line: 223, baseType: !7, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1837, file: !1838, line: 224, baseType: !157, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1830, file: !38, line: 752, baseType: !1850, size: 64, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!199, !1853, !199, !199, !199, !199}
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1855)
!1855 = !{!1856, !1862, !1863, !1865, !1866, !1867, !1868, !1869, !1919, !2109, !2118, !2119, !2120, !2570, !2571, !2572, !2573, !2575, !2576, !2579}
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !14, line: 995, baseType: !1857, size: 128)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !14, line: 995, size: 128, elements: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1857, file: !14, line: 996, baseType: !1563, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1857, file: !14, line: 997, baseType: !991, size: 128, align: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1857, file: !14, line: 998, baseType: !7, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1854, file: !14, line: 1005, baseType: !378, size: 32, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1854, file: !14, line: 1006, baseType: !1864, size: 32, offset: 160)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !236, line: 156, baseType: !7)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1854, file: !14, line: 1007, baseType: !777, size: 64, offset: 192)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1854, file: !14, line: 1008, baseType: !773, size: 256, offset: 256)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1854, file: !14, line: 1009, baseType: !673, size: 64, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1854, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1854, file: !14, line: 1011, baseType: !1870, size: 256, offset: 640)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1871)
!1871 = !{!1872, !1893, !1915, !1916, !1917, !1918}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1870, file: !14, line: 949, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1874, line: 34, baseType: !1875)
!1874 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1874, line: 25, size: 64, elements: !1876)
!1876 = !{!1877}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1875, file: !1874, line: 26, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1879, line: 27, baseType: !1880)
!1879 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1879, line: 13, size: 64, elements: !1881)
!1881 = !{!1882, !1892}
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1880, file: !1879, line: 14, baseType: !1883, size: 32)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1880, file: !1879, line: 14, size: 32, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1883, file: !1879, line: 15, baseType: !398, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, scope: !1883, file: !1879, line: 16, baseType: !1887, size: 32)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !1879, line: 16, size: 32, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1887, file: !1879, line: 18, baseType: !240, size: 8)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1887, file: !1879, line: 19, baseType: !1891, size: 24, offset: 8)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 24, elements: !441)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1880, file: !1879, line: 26, baseType: !390, size: 32, offset: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1870, file: !14, line: 950, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1902, !1903, !1904, !1905}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1895, file: !30, line: 61, baseType: !1550, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1895, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1895, file: !30, line: 63, baseType: !378, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1895, file: !30, line: 65, baseType: !1901, size: 256, offset: 128)
!1901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 256, elements: !315)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1895, file: !30, line: 66, baseType: !1139, size: 64, offset: 384)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1895, file: !30, line: 68, baseType: !1523, size: 192, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1895, file: !30, line: 69, baseType: !991, size: 128, align: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1895, file: !30, line: 70, baseType: !1906, offset: 768)
!1906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1907, elements: !1913)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1907, file: !30, line: 55, baseType: !109, size: 32)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1907, file: !30, line: 56, baseType: !1911, size: 64, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1913 = !{!1914}
!1914 = !DISubrange(count: -1)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1870, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1870, file: !14, line: 952, baseType: !523, size: 32, offset: 160)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1870, file: !14, line: 952, baseType: !523, size: 32, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1870, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1854, file: !14, line: 1012, baseType: !1920, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1923, line: 110, size: 1472, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1941, !1942, !1943, !1944, !1945, !1946, !2054, !2055, !2056, !2057, !2058, !2089, !2092, !2096, !2104}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1922, file: !1923, line: 111, baseType: !777, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1922, file: !1923, line: 112, baseType: !523, size: 32, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1922, file: !1923, line: 113, baseType: !532, size: 32, offset: 96)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1922, file: !1923, line: 114, baseType: !523, size: 32, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1922, file: !1923, line: 115, baseType: !532, size: 32, offset: 160)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1922, file: !1923, line: 116, baseType: !523, size: 32, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1922, file: !1923, line: 117, baseType: !532, size: 32, offset: 224)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1922, file: !1923, line: 118, baseType: !523, size: 32, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1922, file: !1923, line: 119, baseType: !532, size: 32, offset: 288)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1922, file: !1923, line: 120, baseType: !7, size: 32, offset: 320)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1922, file: !1923, line: 121, baseType: !1936, size: 64, offset: 384)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1937, line: 24, baseType: !1938)
!1937 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1937, line: 24, size: 64, elements: !1939)
!1939 = !{!1940}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1938, file: !1937, line: 24, baseType: !217, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1922, file: !1923, line: 122, baseType: !1936, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1922, file: !1923, line: 123, baseType: !1936, size: 64, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1922, file: !1923, line: 124, baseType: !1936, size: 64, offset: 576)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1922, file: !1923, line: 125, baseType: !1936, size: 64, offset: 640)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1922, file: !1923, line: 127, baseType: !174, size: 8, offset: 704)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1922, file: !1923, line: 129, baseType: !1947, size: 64, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1949, line: 195, size: 1728, elements: !1950)
!1949 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1950 = !{!1951, !1952, !1955, !1960, !1961, !1964, !1965, !1970, !1971, !1972, !1973, !1976, !1977, !1978, !1979, !1980, !2018, !2039}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1948, file: !1949, line: 196, baseType: !1550, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1948, file: !1949, line: 197, baseType: !1953, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1949, line: 28, baseType: !1954)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !236, line: 104, baseType: !769)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1949, line: 198, baseType: !1956, size: 192, offset: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !1949, line: 198, size: 192, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1956, file: !1949, line: 199, baseType: !282, size: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1956, file: !1949, line: 200, baseType: !883, size: 192, align: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1948, file: !1949, line: 205, baseType: !1430, size: 320, offset: 256)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1948, file: !1949, line: 206, baseType: !1962, size: 64, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1949, line: 206, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1948, file: !1949, line: 207, baseType: !157, size: 64, offset: 640)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1949, line: 208, baseType: !1966, size: 64, offset: 704)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !1949, line: 208, size: 64, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1966, file: !1949, line: 209, baseType: !1271, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1966, file: !1949, line: 210, baseType: !1271, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1948, file: !1949, line: 212, baseType: !1271, size: 64, offset: 768)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1948, file: !1949, line: 213, baseType: !523, size: 32, offset: 832)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1948, file: !1949, line: 214, baseType: !532, size: 32, offset: 864)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1948, file: !1949, line: 215, baseType: !1974, size: 32, offset: 896)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1949, line: 31, baseType: !1975)
!1975 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !236, line: 110, baseType: !158)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1948, file: !1949, line: 216, baseType: !223, size: 16, offset: 928)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1948, file: !1949, line: 217, baseType: !223, size: 16, offset: 944)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1948, file: !1949, line: 221, baseType: !909, size: 16, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1949, line: 228, baseType: !199, size: 64, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1949, line: 245, baseType: !1981, size: 320, offset: 1088)
!1981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !1949, line: 245, size: 320, elements: !1982)
!1982 = !{!1983, !2010}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1981, file: !1949, line: 246, baseType: !1984, size: 320)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1949, line: 114, size: 320, elements: !1985)
!1985 = !{!1986, !1987, !1999, !2002, !2009}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1984, file: !1949, line: 116, baseType: !199, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1984, file: !1949, line: 117, baseType: !1988, size: 64, offset: 64)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1984, file: !1949, line: 117, size: 64, elements: !1989)
!1989 = !{!1990, !1998}
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1988, file: !1949, line: 118, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1988, file: !1949, line: 118, size: 64, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1991, file: !1949, line: 120, baseType: !221, size: 16)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1991, file: !1949, line: 121, baseType: !1995, size: 48, offset: 16)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 48, elements: !1996)
!1996 = !{!1997}
!1997 = !DISubrange(count: 6)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1988, file: !1949, line: 127, baseType: !199, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1984, file: !1949, line: 129, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1949, line: 102, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1984, file: !1949, line: 130, baseType: !2003, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1949, line: 108, size: 192, elements: !2005)
!2005 = !{!2006, !2007, !2008}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2004, file: !1949, line: 109, baseType: !991, size: 128, align: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2004, file: !1949, line: 110, baseType: !1550, size: 32, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2004, file: !1949, line: 111, baseType: !235, size: 8, offset: 160)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1984, file: !1949, line: 131, baseType: !308, size: 64, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !1949, line: 247, baseType: !2011, size: 320)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1981, file: !1949, line: 247, size: 320, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2011, file: !1949, line: 248, baseType: !199, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2011, file: !1949, line: 249, baseType: !199, size: 64, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2011, file: !1949, line: 250, baseType: !2000, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2011, file: !1949, line: 251, baseType: !2003, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2011, file: !1949, line: 252, baseType: !440, size: 64, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !1948, file: !1949, line: 260, baseType: !2019, size: 256, offset: 1408)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1948, file: !1949, line: 260, size: 256, elements: !2020)
!2020 = !{!2021, !2027}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2019, file: !1949, line: 261, baseType: !2022, size: 256)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1949, line: 134, size: 256, elements: !2023)
!2023 = !{!2024, !2025}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2022, file: !1949, line: 135, baseType: !157, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2022, file: !1949, line: 136, baseType: !2026, size: 256)
!2026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 256, elements: !315)
!2027 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !1949, line: 262, baseType: !2028, size: 256)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2019, file: !1949, line: 262, size: 256, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2028, file: !1949, line: 264, baseType: !282, size: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2028, file: !1949, line: 265, baseType: !2032, size: 128, offset: 128)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2033, line: 22, size: 128, elements: !2034)
!2033 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2034 = !{!2035, !2038}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2032, file: !2033, line: 23, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2033, line: 23, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2032, file: !2033, line: 24, baseType: !199, size: 64, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1948, file: !1949, line: 280, baseType: !2040, size: 64, offset: 1664)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1949, line: 176, size: 192, elements: !2042)
!2042 = !{!2043, !2052, !2053}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2041, file: !1949, line: 177, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1949, line: 171, baseType: !2045)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!109, !1947, !2048, !2050, !1947}
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2041, file: !1949, line: 178, baseType: !1947, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2041, file: !1949, line: 179, baseType: !2000, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1922, file: !1923, line: 130, baseType: !1947, size: 64, offset: 832)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1922, file: !1923, line: 131, baseType: !1947, size: 64, offset: 896)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1922, file: !1923, line: 132, baseType: !1947, size: 64, offset: 960)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1922, file: !1923, line: 135, baseType: !157, size: 64, offset: 1024)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1922, file: !1923, line: 137, baseType: !2059, size: 64, offset: 1088)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2061, line: 14, size: 1088, elements: !2062)
!2061 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2062 = !{!2063, !2064, !2073, !2074, !2075, !2076, !2077, !2078}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2060, file: !2061, line: 15, baseType: !1550, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2060, file: !2061, line: 17, baseType: !2065, size: 320, offset: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !2066, line: 22, size: 320, elements: !2067)
!2066 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!2067 = !{!2068, !2069, !2070, !2071}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2065, file: !2066, line: 23, baseType: !731, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2065, file: !2066, line: 24, baseType: !783, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2065, file: !2066, line: 26, baseType: !282, size: 128, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2065, file: !2066, line: 28, baseType: !2072, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2060, file: !2061, line: 19, baseType: !199, size: 64, offset: 384)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2060, file: !2061, line: 20, baseType: !777, size: 64, offset: 448)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2060, file: !2061, line: 23, baseType: !1015, size: 128, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2060, file: !2061, line: 24, baseType: !523, size: 32, offset: 640)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2060, file: !2061, line: 29, baseType: !777, size: 64, offset: 704)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2060, file: !2061, line: 36, baseType: !2079, size: 320, offset: 768)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2080, line: 15, size: 320, elements: !2081)
!2080 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2079, file: !2080, line: 16, baseType: !731, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2079, file: !2080, line: 18, baseType: !109, size: 32, offset: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2079, file: !2080, line: 19, baseType: !109, size: 32, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2079, file: !2080, line: 20, baseType: !109, size: 32, offset: 96)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2079, file: !2080, line: 21, baseType: !109, size: 32, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2079, file: !2080, line: 22, baseType: !199, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2079, file: !2080, line: 23, baseType: !199, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1922, file: !1923, line: 138, baseType: !2090, size: 64, offset: 1152)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1922, file: !1923, line: 139, baseType: !2093, size: 64, offset: 1216)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2095, line: 16, flags: DIFlagFwdDecl)
!2095 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1922, file: !1923, line: 140, baseType: !2097, size: 64, offset: 1280)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1923, line: 25, size: 64, elements: !2099)
!2099 = !{!2100, !2101, !2102}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2098, file: !1923, line: 26, baseType: !398, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2098, file: !1923, line: 27, baseType: !109, size: 32, offset: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2098, file: !1923, line: 28, baseType: !2103, offset: 64)
!2103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, elements: !1913)
!2104 = !DIDerivedType(tag: DW_TAG_member, scope: !1922, file: !1923, line: 142, baseType: !2105, size: 128, offset: 1344)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1922, file: !1923, line: 142, size: 128, elements: !2106)
!2106 = !{!2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2105, file: !1923, line: 143, baseType: !109, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2105, file: !1923, line: 144, baseType: !991, size: 128, align: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1854, file: !14, line: 1013, baseType: !2110, size: 256, offset: 960)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2110, file: !14, line: 971, baseType: !199, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2110, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2110, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2110, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2110, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2110, file: !14, line: 976, baseType: !673, size: 64, offset: 192)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1854, file: !14, line: 1014, baseType: !1342, size: 128, offset: 1216)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1854, file: !14, line: 1015, baseType: !517, size: 64, offset: 1344)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1854, file: !14, line: 1016, baseType: !2121, size: 64, offset: 1408)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2123)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !2124)
!2124 = !{!2125, !2126, !2130, !2135, !2139, !2168, !2169, !2175, !2188, !2196, !2200, !2201, !2492, !2493, !2497, !2502, !2503, !2507, !2511, !2517, !2518, !2522, !2523, !2529, !2533, !2537, !2543, !2547, !2551, !2555, !2559, !2560, !2566}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2123, file: !14, line: 1915, baseType: !702, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2123, file: !14, line: 1916, baseType: !2127, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!673, !1853, !673, !109}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2123, file: !14, line: 1917, baseType: !2131, size: 64, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!470, !1853, !440, !485, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2123, file: !14, line: 1918, baseType: !2136, size: 64, offset: 192)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!470, !1853, !308, !485, !2134}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2123, file: !14, line: 1919, baseType: !2140, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!470, !2143, !2165}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !2145)
!2145 = !{!2146, !2147, !2148, !2152, !2153, !2154, !2155}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !2144, file: !14, line: 374, baseType: !1853, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !2144, file: !14, line: 375, baseType: !673, size: 64, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !2144, file: !14, line: 376, baseType: !2149, size: 64, offset: 128)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{null, !2143, !474}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2144, file: !14, line: 377, baseType: !157, size: 64, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !2144, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !2144, file: !14, line: 379, baseType: !221, size: 16, offset: 288)
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !2144, file: !14, line: 380, baseType: !2156, size: 64, offset: 320)
!2156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2144, file: !14, line: 380, size: 64, elements: !2157)
!2157 = !{!2158, !2161}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2156, file: !14, line: 386, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2156, file: !14, line: 395, baseType: !2162, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!470, !157}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !2167, line: 17, flags: DIFlagFwdDecl)
!2167 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2123, file: !14, line: 1920, baseType: !2140, size: 64, offset: 320)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2123, file: !14, line: 1921, baseType: !2170, size: 64, offset: 384)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!109, !2143, !2173, !7}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2123, file: !14, line: 1923, baseType: !2176, size: 64, offset: 448)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!109, !1853, !2179}
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2181)
!2181 = !{!2182, !2187}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2180, file: !14, line: 1859, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!235, !2179, !308, !109, !673, !217, !7}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2180, file: !14, line: 1860, baseType: !673, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2123, file: !14, line: 1924, baseType: !2189, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!2192, !1853, !2194}
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2193, line: 59, baseType: !7)
!2193 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !688, line: 31, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2123, file: !14, line: 1925, baseType: !2197, size: 64, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!474, !1853, !7, !199}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2123, file: !14, line: 1926, baseType: !2197, size: 64, offset: 640)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2123, file: !14, line: 1927, baseType: !2202, size: 64, offset: 704)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!109, !1853, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !2207)
!2207 = !{!2208, !2217, !2218, !2226, !2233, !2234, !2239, !2240, !2245, !2246, !2249, !2485, !2486, !2487, !2488, !2489, !2490}
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !38, line: 628, baseType: !2209, size: 128)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2206, file: !38, line: 628, size: 128, elements: !2210)
!2210 = !{!2211, !2216}
!2211 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !38, line: 629, baseType: !2212, size: 128)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2209, file: !38, line: 629, size: 128, elements: !2213)
!2213 = !{!2214, !2215}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2212, file: !38, line: 631, baseType: !199, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2212, file: !38, line: 632, baseType: !199, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2209, file: !38, line: 635, baseType: !991, size: 128, align: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2206, file: !38, line: 639, baseType: !1826, size: 64, offset: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2206, file: !38, line: 640, baseType: !2219, size: 64, offset: 192)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2220, line: 297, baseType: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2220, line: 297, size: 64, elements: !2222)
!2222 = !{!2223}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2221, file: !2220, line: 297, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2225, line: 19, baseType: !199)
!2225 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2226 = !DIDerivedType(tag: DW_TAG_member, scope: !2206, file: !38, line: 646, baseType: !2227, size: 64, offset: 256)
!2227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2206, file: !38, line: 646, size: 64, elements: !2228)
!2228 = !{!2229, !2232}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2227, file: !38, line: 647, baseType: !2230, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2231)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !199)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2227, file: !38, line: 648, baseType: !2231, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2206, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2206, file: !38, line: 667, baseType: !2235, size: 64, offset: 384)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !2237)
!2237 = !{!2238}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2236, file: !38, line: 580, baseType: !1430, size: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2206, file: !38, line: 670, baseType: !235, size: 8, offset: 448)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2206, file: !38, line: 681, baseType: !2241, size: 256, offset: 512)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2206, file: !38, line: 678, size: 256, elements: !2242)
!2242 = !{!2243, !2244}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2241, file: !38, line: 679, baseType: !883, size: 192, align: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2241, file: !38, line: 680, baseType: !199, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2206, file: !38, line: 689, baseType: !282, size: 128, offset: 768)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2206, file: !38, line: 691, baseType: !2247, size: 64, offset: 896)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2206, file: !38, line: 694, baseType: !2250, size: 64, offset: 960)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2253, line: 563, size: 1024, elements: !2254)
!2253 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2254 = !{!2255, !2259, !2260, !2264, !2268, !2272, !2449, !2453, !2457, !2461, !2462, !2463, !2467, !2471, !2477, !2481}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2252, file: !2253, line: 564, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !2205}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2252, file: !2253, line: 569, baseType: !2256, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2252, file: !2253, line: 571, baseType: !2261, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!109, !2205, !199}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2252, file: !2253, line: 572, baseType: !2265, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!109, !2205}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2252, file: !2253, line: 578, baseType: !2269, size: 64, offset: 256)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!109, !2205, !199, !199, !199}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2252, file: !2253, line: 580, baseType: !2273, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2253, line: 512, size: 896, elements: !2279)
!2279 = !{!2280, !2288, !2289, !2296, !2303, !2313, !2442, !2443, !2445, !2447}
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !2253, line: 513, baseType: !2281, size: 320)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !2253, line: 513, size: 320, elements: !2282)
!2282 = !{!2283, !2284, !2285, !2286, !2287}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2281, file: !2253, line: 514, baseType: !2205, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2281, file: !2253, line: 515, baseType: !242, size: 32, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2281, file: !2253, line: 516, baseType: !199, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2281, file: !2253, line: 517, baseType: !199, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2281, file: !2253, line: 518, baseType: !199, size: 64, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2278, file: !2253, line: 520, baseType: !37, size: 32, offset: 320)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2278, file: !2253, line: 522, baseType: !2290, size: 64, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2225, line: 22, baseType: !2292)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2225, line: 22, size: 64, elements: !2293)
!2293 = !{!2294}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2292, file: !2225, line: 22, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2225, line: 15, baseType: !199)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2278, file: !2253, line: 524, baseType: !2297, size: 64, offset: 448)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2220, line: 372, baseType: !2299)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2220, line: 372, size: 64, elements: !2300)
!2300 = !{!2301}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2299, file: !2220, line: 372, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2225, line: 16, baseType: !199)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2278, file: !2253, line: 527, baseType: !2304, size: 64, offset: 512)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2278, file: !2253, line: 527, size: 64, elements: !2305)
!2305 = !{!2306, !2312}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2304, file: !2253, line: 528, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2225, line: 21, baseType: !2308)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2225, line: 21, size: 64, elements: !2309)
!2309 = !{!2310}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2308, file: !2225, line: 21, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2225, line: 14, baseType: !199)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2304, file: !2253, line: 529, baseType: !2291, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2278, file: !2253, line: 534, baseType: !2314, size: 64, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2316)
!2316 = !{!2317, !2318, !2436, !2441}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2315, file: !38, line: 75, baseType: !199, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !38, line: 83, baseType: !2319, size: 320, offset: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !38, line: 83, size: 320, elements: !2320)
!2320 = !{!2321, !2342, !2356, !2360, !2435}
!2321 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !38, line: 84, baseType: !2322, size: 320)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !38, line: 84, size: 320, elements: !2323)
!2323 = !{!2324, !2335, !2336, !2341}
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2322, file: !38, line: 90, baseType: !2325, size: 128)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2322, file: !38, line: 90, size: 128, elements: !2326)
!2326 = !{!2327, !2328, !2333, !2334}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2325, file: !38, line: 91, baseType: !282, size: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2325, file: !38, line: 94, baseType: !2329, size: 128)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2325, file: !38, line: 94, size: 128, elements: !2330)
!2330 = !{!2331, !2332}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2329, file: !38, line: 96, baseType: !157, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2329, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2325, file: !38, line: 102, baseType: !282, size: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2325, file: !38, line: 103, baseType: !282, size: 128)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2322, file: !38, line: 106, baseType: !513, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, scope: !2322, file: !38, line: 107, baseType: !2337, size: 64, offset: 192)
!2337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2322, file: !38, line: 107, size: 64, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2337, file: !38, line: 108, baseType: !199, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2337, file: !38, line: 109, baseType: !199, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2322, file: !38, line: 117, baseType: !199, size: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !38, line: 119, baseType: !2343, size: 320)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !38, line: 119, size: 320, elements: !2344)
!2344 = !{!2345, !2346, !2349, !2350, !2351}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2343, file: !38, line: 124, baseType: !199, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2343, file: !38, line: 125, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2343, file: !38, line: 126, baseType: !199, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2343, file: !38, line: 127, baseType: !199, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !2343, file: !38, line: 128, baseType: !2352, size: 64, offset: 256)
!2352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2343, file: !38, line: 128, size: 64, elements: !2353)
!2353 = !{!2354, !2355}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2352, file: !38, line: 133, baseType: !199, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2352, file: !38, line: 138, baseType: !777, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !38, line: 141, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !38, line: 141, size: 64, elements: !2358)
!2358 = !{!2359}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2357, file: !38, line: 142, baseType: !199, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, scope: !2319, file: !38, line: 144, baseType: !2361, size: 128)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2319, file: !38, line: 144, size: 128, elements: !2362)
!2362 = !{!2363, !2434}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2361, file: !38, line: 146, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !2366)
!2366 = !{!2367, !2377, !2398, !2399, !2400, !2401, !2402, !2416, !2417, !2418}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2365, file: !54, line: 127, baseType: !2368, size: 384)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !2369)
!2369 = !{!2370, !2371, !2373, !2374, !2375, !2376}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2368, file: !54, line: 22, baseType: !199, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2368, file: !54, line: 23, baseType: !2372, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2368, file: !54, line: 24, baseType: !2372, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2368, file: !54, line: 25, baseType: !199, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2368, file: !54, line: 26, baseType: !199, size: 64, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2368, file: !54, line: 27, baseType: !199, size: 64, offset: 320)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2365, file: !54, line: 128, baseType: !2378, size: 128, offset: 384)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2379, line: 105, size: 128, elements: !2380)
!2379 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2378, file: !2379, line: 110, baseType: !199, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2378, file: !2379, line: 118, baseType: !2383, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2379, line: 95, size: 448, elements: !2385)
!2385 = !{!2386, !2387, !2393, !2394, !2395, !2396, !2397}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2384, file: !2379, line: 96, baseType: !777, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2384, file: !2379, line: 97, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2379, line: 60, baseType: !2390)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2384, file: !2379, line: 98, baseType: !2388, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2384, file: !2379, line: 99, baseType: !235, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2384, file: !2379, line: 100, baseType: !235, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2384, file: !2379, line: 101, baseType: !991, size: 128, align: 64, offset: 256)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2384, file: !2379, line: 102, baseType: !2392, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2365, file: !54, line: 129, baseType: !722, size: 256, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2365, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2365, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2365, file: !54, line: 132, baseType: !199, size: 64, offset: 832)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2365, file: !54, line: 133, baseType: !2403, size: 64, offset: 896)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !2406)
!2406 = !{!2407, !2411, !2412}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2405, file: !54, line: 83, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{null, !2314}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2405, file: !54, line: 89, baseType: !2273, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2405, file: !54, line: 100, baseType: !2413, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!109, !2364, !199, !199, !109}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2365, file: !54, line: 134, baseType: !157, size: 64, offset: 960)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2365, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2365, file: !54, line: 136, baseType: !2419, size: 128, offset: 1088)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2365, file: !54, line: 136, size: 128, elements: !2420)
!2420 = !{!2421, !2427}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2419, file: !54, line: 137, baseType: !2422, size: 128)
!2422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2423, line: 6, size: 128, elements: !2424)
!2423 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2424 = !{!2425, !2426}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2422, file: !2423, line: 7, baseType: !217, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2422, file: !2423, line: 8, baseType: !217, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !54, line: 138, baseType: !2428)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !54, line: 138, elements: !2429)
!2429 = !{!2430, !2432}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2428, file: !54, line: 138, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2428, file: !54, line: 138, elements: !1058)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2428, file: !54, line: 138, baseType: !2433)
!2433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2422, elements: !1913)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2361, file: !38, line: 147, baseType: !157, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2319, file: !38, line: 161, baseType: !991, size: 128, align: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2315, file: !38, line: 164, baseType: !2437, size: 32, offset: 384)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2315, file: !38, line: 164, size: 32, elements: !2438)
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2437, file: !38, line: 169, baseType: !398, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2437, file: !38, line: 177, baseType: !7, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2315, file: !38, line: 181, baseType: !398, size: 32, offset: 416)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2278, file: !2253, line: 535, baseType: !2314, size: 64, offset: 640)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2278, file: !2253, line: 541, baseType: !2444, size: 64, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2278, file: !2253, line: 545, baseType: !2446, size: 64, offset: 768)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2278, file: !2253, line: 549, baseType: !2448, size: 64, offset: 832)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2220, line: 520, baseType: !2314)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2252, file: !2253, line: 581, baseType: !2450, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2276, !2277, !7}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2252, file: !2253, line: 582, baseType: !2454, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!2276, !2277, !199, !199}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2252, file: !2253, line: 584, baseType: !2458, size: 64, offset: 512)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!199, !2205}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2252, file: !2253, line: 588, baseType: !2273, size: 64, offset: 576)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2252, file: !2253, line: 591, baseType: !2273, size: 64, offset: 640)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2252, file: !2253, line: 597, baseType: !2464, size: 64, offset: 704)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!109, !2205, !199, !157, !109, !109}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2252, file: !2253, line: 603, baseType: !2468, size: 64, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{!308, !2205}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2252, file: !2253, line: 613, baseType: !2472, size: 64, offset: 832)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!109, !2205, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2252, file: !2253, line: 625, baseType: !2478, size: 64, offset: 896)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!2475, !2205, !199}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2252, file: !2253, line: 633, baseType: !2482, size: 64, offset: 960)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!2314, !2205, !199}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2206, file: !38, line: 697, baseType: !199, size: 64, offset: 1024)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2206, file: !38, line: 699, baseType: !1853, size: 64, offset: 1088)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2206, file: !38, line: 700, baseType: !157, size: 64, offset: 1152)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2206, file: !38, line: 711, baseType: !777, size: 64, offset: 1216)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2206, file: !38, line: 717, baseType: !2475, size: 64, offset: 1280)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2206, file: !38, line: 722, baseType: !2491, offset: 1344)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1058)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2123, file: !14, line: 1928, baseType: !199, size: 64, offset: 768)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2123, file: !14, line: 1929, baseType: !2494, size: 64, offset: 832)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!109, !517, !1853}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2123, file: !14, line: 1930, baseType: !2498, size: 64, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!109, !1853, !2501}
!2501 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !157)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2123, file: !14, line: 1931, baseType: !2494, size: 64, offset: 960)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2123, file: !14, line: 1932, baseType: !2504, size: 64, offset: 1024)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!109, !1853, !673, !673, !109}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2123, file: !14, line: 1933, baseType: !2508, size: 64, offset: 1088)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!109, !109, !1853, !109}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2123, file: !14, line: 1934, baseType: !2512, size: 64, offset: 1152)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!109, !1853, !109, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2123, file: !14, line: 1935, baseType: !1850, size: 64, offset: 1216)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2123, file: !14, line: 1936, baseType: !2519, size: 64, offset: 1280)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!109, !109}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2123, file: !14, line: 1937, baseType: !2512, size: 64, offset: 1344)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2123, file: !14, line: 1938, baseType: !2524, size: 64, offset: 1408)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!470, !2527, !1853, !2134, !485, !7}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1213, line: 59, flags: DIFlagFwdDecl)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2123, file: !14, line: 1939, baseType: !2530, size: 64, offset: 1472)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!470, !1853, !2134, !2527, !485, !7}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2123, file: !14, line: 1940, baseType: !2534, size: 64, offset: 1536)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{null, !1853}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2123, file: !14, line: 1941, baseType: !2538, size: 64, offset: 1600)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!109, !1853, !109, !2541, !2542}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2123, file: !14, line: 1942, baseType: !2544, size: 64, offset: 1664)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!474, !1853, !109, !673, !673}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2123, file: !14, line: 1944, baseType: !2548, size: 64, offset: 1728)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{null, !1211, !1853}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2123, file: !14, line: 1948, baseType: !2552, size: 64, offset: 1792)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!470, !1853, !673, !1853, !673, !485, !7}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2123, file: !14, line: 1950, baseType: !2556, size: 64, offset: 1856)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!673, !1853, !673, !1853, !673, !673, !7}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2123, file: !14, line: 1953, baseType: !2504, size: 64, offset: 1920)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2123, file: !14, line: 1954, baseType: !2561, size: 64, offset: 1984)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!109, !2564, !7}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2123, file: !14, line: 1955, baseType: !2567, size: 64, offset: 2048)
!2567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2568 = !DISubroutineType(types: !2569)
!2569 = !{!109, !2564, !2173, !7}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1854, file: !14, line: 1018, baseType: !217, size: 64, offset: 1472)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1854, file: !14, line: 1020, baseType: !157, size: 64, offset: 1536)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1854, file: !14, line: 1023, baseType: !157, size: 64, offset: 1600)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1854, file: !14, line: 1027, baseType: !2574, size: 64, offset: 1664)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1854, file: !14, line: 1029, baseType: !513, size: 64, offset: 1728)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1854, file: !14, line: 1030, baseType: !2577, size: 32, offset: 1792)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2578, line: 8, baseType: !158)
!2578 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1854, file: !14, line: 1031, baseType: !2577, size: 32, offset: 1824)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1830, file: !38, line: 756, baseType: !199, size: 64, offset: 704)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1830, file: !38, line: 757, baseType: !199, size: 64, offset: 768)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1830, file: !38, line: 760, baseType: !199, size: 64, offset: 832)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1830, file: !38, line: 761, baseType: !199, size: 64, offset: 896)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1830, file: !38, line: 763, baseType: !199, size: 64, offset: 960)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1830, file: !38, line: 764, baseType: !2586, size: 64, offset: 1024)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2220, line: 299, baseType: !2588)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2220, line: 299, size: 64, elements: !2589)
!2589 = !{!2590}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2588, file: !2220, line: 299, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2225, line: 18, baseType: !199)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1830, file: !38, line: 773, baseType: !398, size: 32, offset: 1088)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1830, file: !38, line: 785, baseType: !398, size: 32, offset: 1120)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1830, file: !38, line: 795, baseType: !2595, size: 64, offset: 1152)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2597)
!2597 = !{!2598, !2599}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2596, file: !38, line: 727, baseType: !217, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2596, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1830, file: !38, line: 801, baseType: !199, size: 64, offset: 1216)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1830, file: !38, line: 804, baseType: !777, size: 64, offset: 1280)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1830, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1830, file: !38, line: 808, baseType: !378, size: 32, offset: 1376)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1830, file: !38, line: 823, baseType: !1430, size: 320, offset: 1408)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1830, file: !38, line: 825, baseType: !282, size: 128, offset: 1728)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1830, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1830, file: !38, line: 849, baseType: !199, size: 64, offset: 1920)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1830, file: !38, line: 850, baseType: !199, size: 64, offset: 1984)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1830, file: !38, line: 852, baseType: !199, size: 64, offset: 2048)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1830, file: !38, line: 853, baseType: !199, size: 64, offset: 2112)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1830, file: !38, line: 854, baseType: !779, size: 64, offset: 2176)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1830, file: !38, line: 855, baseType: !199, size: 64, offset: 2240)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1830, file: !38, line: 856, baseType: !199, size: 64, offset: 2304)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1830, file: !38, line: 857, baseType: !199, size: 64, offset: 2368)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1830, file: !38, line: 858, baseType: !199, size: 64, offset: 2432)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1830, file: !38, line: 865, baseType: !563, size: 32, offset: 2496)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1830, file: !38, line: 867, baseType: !378, size: 32, offset: 2528)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1830, file: !38, line: 869, baseType: !199, size: 64, offset: 2560)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1830, file: !38, line: 869, baseType: !199, size: 64, offset: 2624)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1830, file: !38, line: 869, baseType: !199, size: 64, offset: 2688)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1830, file: !38, line: 869, baseType: !199, size: 64, offset: 2752)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1830, file: !38, line: 870, baseType: !199, size: 64, offset: 2816)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1830, file: !38, line: 870, baseType: !199, size: 64, offset: 2880)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1830, file: !38, line: 870, baseType: !199, size: 64, offset: 2944)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1830, file: !38, line: 871, baseType: !199, size: 64, offset: 3008)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1830, file: !38, line: 871, baseType: !199, size: 64, offset: 3072)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1830, file: !38, line: 871, baseType: !199, size: 64, offset: 3136)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1830, file: !38, line: 871, baseType: !199, size: 64, offset: 3200)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1830, file: !38, line: 873, baseType: !2630, size: 3328, offset: 3264)
!2630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 3328, elements: !2631)
!2631 = !{!2632}
!2632 = !DISubrange(count: 52)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1830, file: !38, line: 875, baseType: !2634, size: 1280, offset: 6592)
!2634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2065, size: 1280, elements: !315)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1830, file: !38, line: 877, baseType: !2636, size: 64, offset: 7872)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1830, file: !38, line: 880, baseType: !2639, size: 1088, offset: 7936)
!2639 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2640, line: 72, baseType: !2641)
!2640 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2640, line: 23, size: 1088, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2650, !2651, !2652, !2653, !2680, !2681, !2682}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2641, file: !2640, line: 28, baseType: !217, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2641, file: !2640, line: 38, baseType: !779, size: 64, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2641, file: !2640, line: 40, baseType: !199, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2641, file: !2640, line: 43, baseType: !1430, size: 320, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2641, file: !2640, line: 44, baseType: !2648, size: 64, offset: 512)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2640, line: 44, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2641, file: !2640, line: 48, baseType: !199, size: 64, offset: 576)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2641, file: !2640, line: 59, baseType: !773, size: 256, offset: 640)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2641, file: !2640, line: 60, baseType: !157, size: 64, offset: 896)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2641, file: !2640, line: 61, baseType: !2654, size: 64, offset: 960)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2657, line: 13, size: 1216, elements: !2658)
!2657 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2656, file: !2657, line: 14, baseType: !157, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2656, file: !2657, line: 15, baseType: !199, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2656, file: !2657, line: 17, baseType: !199, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2656, file: !2657, line: 17, baseType: !199, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2656, file: !2657, line: 18, baseType: !199, size: 64, offset: 256)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2656, file: !2657, line: 18, baseType: !199, size: 64, offset: 320)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2656, file: !2657, line: 19, baseType: !2666, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2656, file: !2657, line: 21, baseType: !474, size: 64, offset: 448)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2656, file: !2657, line: 23, baseType: !474, size: 64, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2656, file: !2657, line: 24, baseType: !474, size: 64, offset: 576)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2656, file: !2657, line: 25, baseType: !474, size: 64, offset: 640)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2656, file: !2657, line: 26, baseType: !474, size: 64, offset: 704)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2656, file: !2657, line: 27, baseType: !474, size: 64, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2656, file: !2657, line: 28, baseType: !474, size: 64, offset: 832)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2656, file: !2657, line: 29, baseType: !474, size: 64, offset: 896)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2656, file: !2657, line: 30, baseType: !474, size: 64, offset: 960)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2656, file: !2657, line: 31, baseType: !474, size: 64, offset: 1024)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2656, file: !2657, line: 32, baseType: !474, size: 64, offset: 1088)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2656, file: !2657, line: 33, baseType: !474, size: 64, offset: 1152)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2641, file: !2640, line: 63, baseType: !398, size: 32, offset: 1024)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2641, file: !2640, line: 69, baseType: !221, size: 16, offset: 1056)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2641, file: !2640, line: 70, baseType: !907, size: 16, offset: 1072)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1830, file: !38, line: 882, baseType: !199, size: 64, offset: 9024)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1830, file: !38, line: 885, baseType: !378, size: 32, offset: 9088)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1830, file: !38, line: 886, baseType: !2686, size: 64, offset: 9152)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1830, file: !38, line: 901, baseType: !2090, size: 64, offset: 9216)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1830, file: !38, line: 904, baseType: !1853, size: 64, offset: 9280)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1830, file: !38, line: 906, baseType: !2691, size: 64, offset: 9344)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1830, file: !38, line: 930, baseType: !398, size: 32, offset: 9408)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1830, file: !38, line: 933, baseType: !398, size: 32, offset: 9440)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1830, file: !38, line: 935, baseType: !2696, size: 64, offset: 9472)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2697)
!2697 = !{!2698}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2696, file: !68, line: 104, baseType: !2699, size: 64)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1830, file: !38, line: 940, baseType: !777, size: 64, offset: 9536)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1830, file: !38, line: 942, baseType: !1029, size: 256, offset: 9600)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1827, file: !38, line: 986, baseType: !2704, offset: 10240)
!2704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !1913)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1537, file: !1213, line: 882, baseType: !1826, size: 64, offset: 9792)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1537, file: !1213, line: 884, baseType: !109, size: 32, offset: 9856)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1537, file: !1213, line: 885, baseType: !109, size: 32, offset: 9888)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1537, file: !1213, line: 886, baseType: !109, size: 32, offset: 9920)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1537, file: !1213, line: 888, baseType: !109, size: 32, offset: 9952)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1537, file: !1213, line: 890, baseType: !199, size: 64, offset: 9984)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1537, file: !1213, line: 893, baseType: !7, size: 32, offset: 10048)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1537, file: !1213, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1537, file: !1213, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1537, file: !1213, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1537, file: !1213, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1537, file: !1213, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1537, file: !1213, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1537, file: !1213, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1537, file: !1213, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1537, file: !1213, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1537, file: !1213, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1537, file: !1213, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1537, file: !1213, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1537, file: !1213, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1537, file: !1213, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1537, file: !1213, line: 969, baseType: !199, size: 64, offset: 10176)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1537, file: !1213, line: 971, baseType: !2728, size: 448, offset: 10240)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2729)
!2729 = !{!2730, !2731, !2736}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2728, file: !62, line: 26, baseType: !199, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2728, file: !62, line: 27, baseType: !2732, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!474, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !62, line: 28, baseType: !2737, size: 320, offset: 128)
!2737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2728, file: !62, line: 28, size: 320, elements: !2738)
!2738 = !{!2739, !2748, !2773}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2737, file: !62, line: 37, baseType: !2740, size: 320)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !62, line: 30, size: 320, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2740, file: !62, line: 31, baseType: !339, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2740, file: !62, line: 32, baseType: !158, size: 32, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2740, file: !62, line: 33, baseType: !158, size: 32, offset: 96)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2740, file: !62, line: 34, baseType: !158, size: 32, offset: 128)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2740, file: !62, line: 35, baseType: !217, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2740, file: !62, line: 36, baseType: !339, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2737, file: !62, line: 47, baseType: !2749, size: 192)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !62, line: 39, size: 192, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2772}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2749, file: !62, line: 40, baseType: !1704, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2749, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, scope: !2749, file: !62, line: 42, baseType: !2754, size: 64, offset: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2749, file: !62, line: 42, size: 64, elements: !2755)
!2755 = !{!2756, !2764}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2754, file: !62, line: 43, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2759, line: 7, size: 128, elements: !2760)
!2759 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2760 = !{!2761, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2758, file: !2759, line: 8, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !472, line: 93, baseType: !675)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2758, file: !2759, line: 9, baseType: !675, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2754, file: !62, line: 44, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2767, line: 7, size: 64, elements: !2768)
!2767 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2768 = !{!2769, !2771}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2766, file: !2767, line: 8, baseType: !2770, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2767, line: 5, baseType: !769)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2766, file: !2767, line: 9, baseType: !769, size: 32, offset: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2749, file: !62, line: 46, baseType: !217, size: 64, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2737, file: !62, line: 55, baseType: !2774, size: 256)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !62, line: 49, size: 256, elements: !2775)
!2775 = !{!2776, !2779, !2780, !2781, !2782}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2774, file: !62, line: 50, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2774, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2774, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2774, file: !62, line: 53, baseType: !199, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2774, file: !62, line: 54, baseType: !199, size: 64, offset: 192)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1537, file: !1213, line: 973, baseType: !2784, size: 32, offset: 10688)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !236, line: 27, baseType: !2785)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !472, line: 28, baseType: !109)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1537, file: !1213, line: 974, baseType: !2784, size: 32, offset: 10720)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1537, file: !1213, line: 978, baseType: !199, size: 64, offset: 10752)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1537, file: !1213, line: 987, baseType: !1536, size: 64, offset: 10816)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1537, file: !1213, line: 990, baseType: !1536, size: 64, offset: 10880)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1537, file: !1213, line: 995, baseType: !282, size: 128, offset: 10944)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1537, file: !1213, line: 996, baseType: !282, size: 128, offset: 11072)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1537, file: !1213, line: 997, baseType: !1536, size: 64, offset: 11200)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1537, file: !1213, line: 1005, baseType: !282, size: 128, offset: 11264)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1537, file: !1213, line: 1006, baseType: !282, size: 128, offset: 11392)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1537, file: !1213, line: 1009, baseType: !1894, size: 64, offset: 11520)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1537, file: !1213, line: 1010, baseType: !2797, size: 512, offset: 11584)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1015, size: 512, elements: !315)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1537, file: !1213, line: 1011, baseType: !282, size: 128, offset: 12096)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1537, file: !1213, line: 1012, baseType: !282, size: 128, offset: 12224)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1537, file: !1213, line: 1014, baseType: !721, size: 64, offset: 12352)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1537, file: !1213, line: 1017, baseType: !900, size: 64, offset: 12416)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1537, file: !1213, line: 1020, baseType: !900, size: 64, offset: 12480)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1537, file: !1213, line: 1023, baseType: !157, size: 64, offset: 12544)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1537, file: !1213, line: 1025, baseType: !217, size: 64, offset: 12608)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1537, file: !1213, line: 1026, baseType: !217, size: 64, offset: 12672)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1537, file: !1213, line: 1031, baseType: !217, size: 64, offset: 12736)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1537, file: !1213, line: 1032, baseType: !2808, size: 192, offset: 12800)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1213, line: 324, size: 192, elements: !2809)
!2809 = !{!2810, !2811, !2812}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2808, file: !1213, line: 326, baseType: !217, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2808, file: !1213, line: 327, baseType: !217, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2808, file: !1213, line: 328, baseType: !731, size: 32, offset: 128)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1537, file: !1213, line: 1041, baseType: !199, size: 64, offset: 12992)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1537, file: !1213, line: 1042, baseType: !199, size: 64, offset: 13056)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1537, file: !1213, line: 1045, baseType: !217, size: 64, offset: 13120)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1537, file: !1213, line: 1048, baseType: !217, size: 64, offset: 13184)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1537, file: !1213, line: 1051, baseType: !199, size: 64, offset: 13248)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1537, file: !1213, line: 1052, baseType: !199, size: 64, offset: 13312)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1537, file: !1213, line: 1055, baseType: !2820, size: 640, offset: 13376)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2821, line: 132, size: 640, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2822 = !{!2823, !2829, !2830}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2820, file: !2821, line: 133, baseType: !2824, size: 576)
!2824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2825, size: 576, elements: !441)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2821, line: 117, size: 192, elements: !2826)
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2825, file: !2821, line: 118, baseType: !217, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2825, file: !2821, line: 119, baseType: !1713, size: 128, offset: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2820, file: !2821, line: 134, baseType: !7, size: 32, offset: 576)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2820, file: !2821, line: 135, baseType: !7, size: 32, offset: 608)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1537, file: !1213, line: 1058, baseType: !2832, size: 448, offset: 14016)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2821, line: 144, size: 448, elements: !2833)
!2833 = !{!2834, !2835, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2832, file: !2821, line: 145, baseType: !991, size: 128, align: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2832, file: !2821, line: 146, baseType: !773, size: 256, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2832, file: !2821, line: 147, baseType: !7, size: 32, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1537, file: !1213, line: 1064, baseType: !1920, size: 64, offset: 14464)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1537, file: !1213, line: 1067, baseType: !1920, size: 64, offset: 14528)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1537, file: !1213, line: 1070, baseType: !1920, size: 64, offset: 14592)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1537, file: !1213, line: 1074, baseType: !1947, size: 64, offset: 14656)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1537, file: !1213, line: 1084, baseType: !201, size: 128, offset: 14720)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1537, file: !1213, line: 1086, baseType: !2843, size: 64, offset: 14848)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1213, line: 55, flags: DIFlagFwdDecl)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1537, file: !1213, line: 1089, baseType: !2846, size: 64, offset: 14912)
!2846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2847, line: 12, size: 64, elements: !2848)
!2847 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2848 = !{!2849}
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2846, file: !2847, line: 13, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2847, line: 8, flags: DIFlagFwdDecl)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1537, file: !1213, line: 1090, baseType: !2853, size: 128, offset: 14976)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2854, line: 13, size: 128, elements: !2855)
!2854 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2855 = !{!2856}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2853, file: !2854, line: 14, baseType: !282, size: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1537, file: !1213, line: 1097, baseType: !2858, size: 64, offset: 15104)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1213, line: 50, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1537, file: !1213, line: 1100, baseType: !2861, size: 64, offset: 15168)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1213, line: 1100, flags: DIFlagFwdDecl)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1537, file: !1213, line: 1103, baseType: !2864, size: 64, offset: 15232)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1213, line: 53, flags: DIFlagFwdDecl)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1537, file: !1213, line: 1107, baseType: !2867, size: 64, offset: 15296)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1213, line: 56, flags: DIFlagFwdDecl)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1537, file: !1213, line: 1110, baseType: !2870, size: 64, offset: 15360)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2872, line: 93, size: 8768, elements: !2873)
!2872 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2873 = !{!2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2921, !2930, !2931, !2933, !2934, !2935, !2938, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2976, !2977, !2984, !2994, !2997, !2998, !3001, !3002, !3003, !3004, !3005, !3006}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2871, file: !2872, line: 94, baseType: !1550, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2871, file: !2872, line: 95, baseType: !398, size: 32, offset: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2871, file: !2872, line: 96, baseType: !109, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2871, file: !2872, line: 97, baseType: !109, size: 32, offset: 96)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2871, file: !2872, line: 98, baseType: !282, size: 128, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2871, file: !2872, line: 100, baseType: !1523, size: 192, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2871, file: !2872, line: 103, baseType: !1536, size: 64, offset: 448)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2871, file: !2872, line: 106, baseType: !2882, size: 192, offset: 512)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2095, line: 32, size: 192, elements: !2883)
!2883 = !{!2884, !2885}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2882, file: !2095, line: 33, baseType: !282, size: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2882, file: !2095, line: 34, baseType: !2886, size: 64, offset: 128)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2887, line: 25, baseType: !2888)
!2887 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2887, line: 23, size: 64, elements: !2889)
!2889 = !{!2890}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2888, file: !2887, line: 24, baseType: !249, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2871, file: !2872, line: 109, baseType: !1139, size: 64, offset: 704)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2871, file: !2872, line: 112, baseType: !109, size: 32, offset: 768)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2871, file: !2872, line: 114, baseType: !109, size: 32, offset: 800)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2871, file: !2872, line: 115, baseType: !1536, size: 64, offset: 832)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2871, file: !2872, line: 118, baseType: !109, size: 32, offset: 896)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2871, file: !2872, line: 119, baseType: !7, size: 32, offset: 928)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2871, file: !2872, line: 121, baseType: !2898, size: 64, offset: 960)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2872, line: 80, size: 448, elements: !2900)
!2900 = !{!2901, !2902, !2908}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2899, file: !2872, line: 81, baseType: !398, size: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2899, file: !2872, line: 82, baseType: !2903, size: 128, offset: 64)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2872, line: 75, size: 128, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2903, file: !2872, line: 76, baseType: !1536, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2903, file: !2872, line: 77, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2899, file: !2872, line: 83, baseType: !722, size: 256, offset: 192)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2871, file: !2872, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2871, file: !2872, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2871, file: !2872, line: 138, baseType: !7, size: 32, offset: 1056)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2871, file: !2872, line: 139, baseType: !282, size: 128, offset: 1088)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2871, file: !2872, line: 142, baseType: !1657, size: 512, offset: 1216)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2871, file: !2872, line: 143, baseType: !1665, size: 64, offset: 1728)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2871, file: !2872, line: 150, baseType: !2916, size: 256, offset: 1792)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2917, size: 256, elements: !890)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2872, line: 38, size: 128, elements: !2918)
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2917, file: !2872, line: 39, baseType: !217, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2917, file: !2872, line: 40, baseType: !217, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2871, file: !2872, line: 156, baseType: !2922, size: 192, offset: 2048)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2872, line: 66, size: 192, elements: !2923)
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2922, file: !2872, line: 67, baseType: !2925, size: 192)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2872, line: 47, size: 192, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2925, file: !2872, line: 48, baseType: !779, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2925, file: !2872, line: 49, baseType: !779, size: 64, offset: 64)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2925, file: !2872, line: 50, baseType: !779, size: 64, offset: 128)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2871, file: !2872, line: 160, baseType: !2820, size: 640, offset: 2240)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2871, file: !2872, line: 163, baseType: !2932, size: 256, offset: 2880)
!2932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1894, size: 256, elements: !315)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2871, file: !2872, line: 169, baseType: !1894, size: 64, offset: 3136)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2871, file: !2872, line: 172, baseType: !109, size: 32, offset: 3200)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2871, file: !2872, line: 174, baseType: !2936, size: 64, offset: 3264)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2872, line: 174, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2871, file: !2872, line: 185, baseType: !2939, size: 64, offset: 3328)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !559, line: 860, baseType: !2940)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !559, line: 853, size: 64, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2940, file: !559, line: 858, baseType: !558, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2940, file: !559, line: 859, baseType: !378, size: 32, offset: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2871, file: !2872, line: 186, baseType: !217, size: 64, offset: 3392)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2871, file: !2872, line: 186, baseType: !217, size: 64, offset: 3456)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2871, file: !2872, line: 186, baseType: !217, size: 64, offset: 3520)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2871, file: !2872, line: 186, baseType: !217, size: 64, offset: 3584)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2871, file: !2872, line: 187, baseType: !217, size: 64, offset: 3648)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2871, file: !2872, line: 188, baseType: !217, size: 64, offset: 3712)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2871, file: !2872, line: 189, baseType: !2808, size: 192, offset: 3776)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2871, file: !2872, line: 190, baseType: !199, size: 64, offset: 3968)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2871, file: !2872, line: 190, baseType: !199, size: 64, offset: 4032)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2871, file: !2872, line: 190, baseType: !199, size: 64, offset: 4096)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2871, file: !2872, line: 190, baseType: !199, size: 64, offset: 4160)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2871, file: !2872, line: 191, baseType: !199, size: 64, offset: 4224)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2871, file: !2872, line: 191, baseType: !199, size: 64, offset: 4288)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2871, file: !2872, line: 191, baseType: !199, size: 64, offset: 4352)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2871, file: !2872, line: 191, baseType: !199, size: 64, offset: 4416)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2871, file: !2872, line: 192, baseType: !199, size: 64, offset: 4480)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2871, file: !2872, line: 192, baseType: !199, size: 64, offset: 4544)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2871, file: !2872, line: 192, baseType: !199, size: 64, offset: 4608)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2871, file: !2872, line: 192, baseType: !199, size: 64, offset: 4672)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2871, file: !2872, line: 193, baseType: !199, size: 64, offset: 4736)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2871, file: !2872, line: 193, baseType: !199, size: 64, offset: 4800)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2871, file: !2872, line: 194, baseType: !2966, size: 448, offset: 4864)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2967, line: 12, size: 448, elements: !2968)
!2967 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2968 = !{!2969, !2970, !2971, !2972, !2973, !2974, !2975}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2966, file: !2967, line: 15, baseType: !217, size: 64)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2966, file: !2967, line: 17, baseType: !217, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2966, file: !2967, line: 19, baseType: !217, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2966, file: !2967, line: 21, baseType: !217, size: 64, offset: 192)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2966, file: !2967, line: 29, baseType: !217, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2966, file: !2967, line: 35, baseType: !217, size: 64, offset: 320)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2966, file: !2967, line: 44, baseType: !217, size: 64, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2871, file: !2872, line: 202, baseType: !219, size: 64, offset: 5312)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2871, file: !2872, line: 213, baseType: !2978, size: 2048, offset: 5376)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 2048, elements: !203)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2980, line: 43, size: 128, elements: !2981)
!2980 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2981 = !{!2982, !2983}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2979, file: !2980, line: 44, baseType: !487, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2979, file: !2980, line: 45, baseType: !487, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2871, file: !2872, line: 216, baseType: !2985, size: 448, offset: 7424)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2872, line: 30, size: 448, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990, !2991, !2992, !2993}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2985, file: !2872, line: 31, baseType: !109, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2985, file: !2872, line: 32, baseType: !474, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2985, file: !2872, line: 33, baseType: !199, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2985, file: !2872, line: 34, baseType: !217, size: 64, offset: 192)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2985, file: !2872, line: 34, baseType: !217, size: 64, offset: 256)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2985, file: !2872, line: 35, baseType: !199, size: 64, offset: 320)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2985, file: !2872, line: 35, baseType: !199, size: 64, offset: 384)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2871, file: !2872, line: 219, baseType: !2995, size: 64, offset: 7872)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2872, line: 219, flags: DIFlagFwdDecl)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2871, file: !2872, line: 222, baseType: !7, size: 32, offset: 7936)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2871, file: !2872, line: 223, baseType: !2999, size: 64, offset: 8000)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2872, line: 223, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2871, file: !2872, line: 230, baseType: !235, size: 8, offset: 8064)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2871, file: !2872, line: 231, baseType: !909, size: 16, offset: 8080)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2871, file: !2872, line: 232, baseType: !909, size: 16, offset: 8096)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2871, file: !2872, line: 234, baseType: !1826, size: 64, offset: 8128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2871, file: !2872, line: 237, baseType: !773, size: 256, offset: 8192)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2871, file: !2872, line: 243, baseType: !1430, size: 320, offset: 8448)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1537, file: !1213, line: 1111, baseType: !3008, size: 64, offset: 15424)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2872, line: 20, size: 16640, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3009, file: !2872, line: 21, baseType: !378, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3009, file: !2872, line: 22, baseType: !1550, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3009, file: !2872, line: 23, baseType: !1523, size: 192, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3009, file: !2872, line: 24, baseType: !3015, size: 16384, offset: 256)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3016, size: 16384, elements: !207)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2095, line: 51, size: 256, elements: !3017)
!3017 = !{!3018}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3016, file: !2095, line: 52, baseType: !3019, size: 256)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2095, line: 37, size: 256, elements: !3020)
!3020 = !{!3021, !3028, !3029, !3033}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3019, file: !2095, line: 39, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3023, line: 83, baseType: !3024)
!3023 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3023, line: 82, baseType: !3026)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{null, !109}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3019, file: !2095, line: 40, baseType: !199, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3019, file: !2095, line: 46, baseType: !3030, size: 64, offset: 128)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3023, line: 86, baseType: !3031)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3023, line: 85, baseType: !1134)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3019, file: !2095, line: 48, baseType: !2886, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1537, file: !1213, line: 1112, baseType: !2886, size: 64, offset: 15488)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1537, file: !1213, line: 1113, baseType: !2886, size: 64, offset: 15552)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1537, file: !1213, line: 1115, baseType: !2886, size: 64, offset: 15616)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1537, file: !1213, line: 1116, baseType: !2882, size: 192, offset: 15680)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1537, file: !1213, line: 1117, baseType: !199, size: 64, offset: 15872)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1537, file: !1213, line: 1118, baseType: !485, size: 64, offset: 15936)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1537, file: !1213, line: 1119, baseType: !7, size: 32, offset: 16000)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1537, file: !1213, line: 1121, baseType: !990, size: 64, offset: 16064)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1537, file: !1213, line: 1125, baseType: !3043, size: 64, offset: 16128)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1213, line: 43, flags: DIFlagFwdDecl)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1537, file: !1213, line: 1127, baseType: !523, size: 32, offset: 16192)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1537, file: !1213, line: 1128, baseType: !7, size: 32, offset: 16224)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1537, file: !1213, line: 1130, baseType: !3048, size: 128, offset: 16256)
!3048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3049, line: 37, size: 128, elements: !3050)
!3049 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3050 = !{!3051, !3052, !3053}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3048, file: !3049, line: 38, baseType: !109, size: 32)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3048, file: !3049, line: 39, baseType: !398, size: 32, offset: 32)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3048, file: !3049, line: 40, baseType: !3054, size: 64, offset: 64)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3049, line: 24, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1537, file: !1213, line: 1131, baseType: !3057, size: 256, offset: 16384)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3058, line: 12, size: 256, elements: !3059)
!3058 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3057, file: !3058, line: 13, baseType: !440, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3057, file: !3058, line: 14, baseType: !199, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3057, file: !3058, line: 15, baseType: !199, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3057, file: !3058, line: 16, baseType: !235, size: 8, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1537, file: !1213, line: 1134, baseType: !217, size: 64, offset: 16640)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1537, file: !1213, line: 1135, baseType: !217, size: 64, offset: 16704)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1537, file: !1213, line: 1138, baseType: !378, size: 32, offset: 16768)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1537, file: !1213, line: 1141, baseType: !731, size: 32, offset: 16800)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1537, file: !1213, line: 1143, baseType: !3069, size: 64, offset: 16832)
!3069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1213, line: 735, size: 64, elements: !3070)
!3070 = !{!3071}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3069, file: !1213, line: 736, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1537, file: !1213, line: 1147, baseType: !1716, size: 128, offset: 16896)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1537, file: !1213, line: 1149, baseType: !1536, size: 64, offset: 17024)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1537, file: !1213, line: 1151, baseType: !3076, size: 64, offset: 17088)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1213, line: 1151, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1537, file: !1213, line: 1188, baseType: !157, size: 64, offset: 17152)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1537, file: !1213, line: 1191, baseType: !3080, size: 64, offset: 17216)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1213, line: 44, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1537, file: !1213, line: 1194, baseType: !3083, size: 64, offset: 17280)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1213, line: 45, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1537, file: !1213, line: 1197, baseType: !3086, size: 64, offset: 17344)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1213, line: 61, flags: DIFlagFwdDecl)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1537, file: !1213, line: 1199, baseType: !3089, size: 64, offset: 17408)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3091, line: 99, size: 128, elements: !3092)
!3091 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3092 = !{!3093, !3094, !3095}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3090, file: !3091, line: 100, baseType: !777, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3090, file: !3091, line: 101, baseType: !398, size: 32, offset: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3090, file: !3091, line: 103, baseType: !223, size: 16, offset: 96)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1537, file: !1213, line: 1202, baseType: !3097, size: 64, offset: 17472)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1213, line: 48, flags: DIFlagFwdDecl)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1537, file: !1213, line: 1205, baseType: !199, size: 64, offset: 17536)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1537, file: !1213, line: 1206, baseType: !3101, size: 64, offset: 17600)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2095, line: 14, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2095, line: 12, size: 384, elements: !3104)
!3104 = !{!3105}
!3105 = !DIDerivedType(tag: DW_TAG_member, scope: !3103, file: !2095, line: 13, baseType: !3106, size: 384)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3103, file: !2095, line: 13, size: 384, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3111}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3106, file: !2095, line: 13, baseType: !109, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3106, file: !2095, line: 13, baseType: !109, size: 32, offset: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3106, file: !2095, line: 13, baseType: !109, size: 32, offset: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3106, file: !2095, line: 13, baseType: !3112, size: 256, offset: 128)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3113, line: 37, size: 256, elements: !3114)
!3113 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3114 = !{!3115, !3120, !3133, !3139, !3148, !3175, !3180}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3112, file: !3113, line: 42, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3113, line: 39, size: 64, elements: !3117)
!3117 = !{!3118, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3116, file: !3113, line: 40, baseType: !2785, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3116, file: !3113, line: 41, baseType: !529, size: 32, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3112, file: !3113, line: 50, baseType: !3121, size: 192)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3113, line: 45, size: 192, elements: !3122)
!3122 = !{!3123, !3125, !3126, !3132}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3121, file: !3113, line: 46, baseType: !3124, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !472, line: 95, baseType: !109)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3121, file: !3113, line: 47, baseType: !109, size: 32, offset: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3121, file: !3113, line: 48, baseType: !3127, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3113, line: 11, baseType: !3128)
!3128 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3113, line: 8, size: 64, elements: !3129)
!3129 = !{!3130, !3131}
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3128, file: !3113, line: 9, baseType: !109, size: 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3128, file: !3113, line: 10, baseType: !157, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3121, file: !3113, line: 49, baseType: !109, size: 32, offset: 128)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3112, file: !3113, line: 57, baseType: !3134, size: 128)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3113, line: 53, size: 128, elements: !3135)
!3135 = !{!3136, !3137, !3138}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3134, file: !3113, line: 54, baseType: !2785, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3134, file: !3113, line: 55, baseType: !529, size: 32, offset: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3134, file: !3113, line: 56, baseType: !3127, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3112, file: !3113, line: 66, baseType: !3140, size: 256)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3113, line: 60, size: 256, elements: !3141)
!3141 = !{!3142, !3143, !3144, !3145, !3147}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3140, file: !3113, line: 61, baseType: !2785, size: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3140, file: !3113, line: 62, baseType: !529, size: 32, offset: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3140, file: !3113, line: 63, baseType: !109, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3140, file: !3113, line: 64, baseType: !3146, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !472, line: 94, baseType: !473)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3140, file: !3113, line: 65, baseType: !3146, size: 64, offset: 192)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3112, file: !3113, line: 105, baseType: !3149, size: 256)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3113, line: 69, size: 256, elements: !3150)
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3149, file: !3113, line: 70, baseType: !157, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, scope: !3149, file: !3113, line: 79, baseType: !3153, size: 192, offset: 64)
!3153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3149, file: !3113, line: 79, size: 192, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3164, !3169}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3153, file: !3113, line: 81, baseType: !109, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3153, file: !3113, line: 86, baseType: !909, size: 16)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3153, file: !3113, line: 92, baseType: !3158, size: 192)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3153, file: !3113, line: 88, size: 192, elements: !3159)
!3159 = !{!3160, !3162, !3163}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3158, file: !3113, line: 89, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 64, elements: !1700)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3158, file: !3113, line: 90, baseType: !157, size: 64, offset: 64)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3158, file: !3113, line: 91, baseType: !157, size: 64, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3153, file: !3113, line: 97, baseType: !3165, size: 96)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3153, file: !3113, line: 94, size: 96, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3165, file: !3113, line: 95, baseType: !3161, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3165, file: !3113, line: 96, baseType: !160, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3153, file: !3113, line: 103, baseType: !3170, size: 128)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3153, file: !3113, line: 99, size: 128, elements: !3171)
!3171 = !{!3172, !3173, !3174}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3170, file: !3113, line: 100, baseType: !199, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3170, file: !3113, line: 101, baseType: !160, size: 32, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3170, file: !3113, line: 102, baseType: !160, size: 32, offset: 96)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3112, file: !3113, line: 111, baseType: !3176, size: 128)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3113, line: 108, size: 128, elements: !3177)
!3177 = !{!3178, !3179}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3176, file: !3113, line: 109, baseType: !474, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3176, file: !3113, line: 110, baseType: !109, size: 32, offset: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3112, file: !3113, line: 118, baseType: !3181, size: 128)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !3113, line: 114, size: 128, elements: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3181, file: !3113, line: 115, baseType: !157, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3181, file: !3113, line: 116, baseType: !109, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3181, file: !3113, line: 117, baseType: !7, size: 32, offset: 96)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1537, file: !1213, line: 1208, baseType: !2966, size: 448, offset: 17664)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1537, file: !1213, line: 1215, baseType: !217, size: 64, offset: 18112)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1537, file: !1213, line: 1217, baseType: !217, size: 64, offset: 18176)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1537, file: !1213, line: 1219, baseType: !217, size: 64, offset: 18240)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1537, file: !1213, line: 1223, baseType: !3191, size: 64, offset: 18304)
!3191 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3192, line: 99, baseType: !3193)
!3192 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3192, line: 99, size: 64, elements: !3194)
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3193, file: !3192, line: 99, baseType: !249, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1537, file: !1213, line: 1225, baseType: !558, size: 32, offset: 18368)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1537, file: !1213, line: 1226, baseType: !109, size: 32, offset: 18400)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1537, file: !1213, line: 1227, baseType: !109, size: 32, offset: 18432)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1537, file: !1213, line: 1231, baseType: !3200, size: 64, offset: 18496)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1213, line: 1231, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1537, file: !1213, line: 1233, baseType: !282, size: 128, offset: 18560)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1537, file: !1213, line: 1240, baseType: !3204, size: 64, offset: 18688)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1213, line: 62, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1537, file: !1213, line: 1242, baseType: !3207, size: 64, offset: 18752)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1213, line: 1242, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1537, file: !1213, line: 1244, baseType: !282, size: 128, offset: 18816)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1537, file: !1213, line: 1245, baseType: !3211, size: 64, offset: 18944)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1213, line: 51, flags: DIFlagFwdDecl)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1537, file: !1213, line: 1246, baseType: !773, size: 256, offset: 19008)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1537, file: !1213, line: 1247, baseType: !7, size: 32, offset: 19264)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1537, file: !1213, line: 1250, baseType: !3216, size: 64, offset: 19328)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1213, line: 57, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1537, file: !1213, line: 1251, baseType: !773, size: 256, offset: 19392)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1537, file: !1213, line: 1252, baseType: !282, size: 128, offset: 19648)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1537, file: !1213, line: 1259, baseType: !2475, size: 64, offset: 19776)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1537, file: !1213, line: 1260, baseType: !909, size: 16, offset: 19840)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1537, file: !1213, line: 1261, baseType: !909, size: 16, offset: 19856)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1537, file: !1213, line: 1314, baseType: !3224, size: 64, offset: 19904)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3226, line: 62, size: 256, align: 256, elements: !3227)
!3226 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3227 = !{!3228, !3229, !3230, !3231, !3232, !3233, !3234}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3225, file: !3226, line: 75, baseType: !160, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3225, file: !3226, line: 90, baseType: !160, size: 32, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3225, file: !3226, line: 112, baseType: !218, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3225, file: !3226, line: 132, baseType: !160, size: 32, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3225, file: !3226, line: 140, baseType: !160, size: 32, offset: 160)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3225, file: !3226, line: 149, baseType: !160, size: 32, offset: 192)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3225, file: !3226, line: 154, baseType: !3235, offset: 224)
!3235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, elements: !1913)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1537, file: !1213, line: 1315, baseType: !158, size: 32, offset: 19968)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1537, file: !1213, line: 1316, baseType: !158, size: 32, offset: 20000)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1537, file: !1213, line: 1321, baseType: !199, size: 64, offset: 20032)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1537, file: !1213, line: 1325, baseType: !109, size: 32, offset: 20096)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1537, file: !1213, line: 1326, baseType: !109, size: 32, offset: 20128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1537, file: !1213, line: 1327, baseType: !109, size: 32, offset: 20160)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1537, file: !1213, line: 1328, baseType: !109, size: 32, offset: 20192)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1537, file: !1213, line: 1329, baseType: !991, size: 128, align: 64, offset: 20224)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1537, file: !1213, line: 1332, baseType: !3245, size: 128, offset: 20352)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3246, line: 51, size: 128, elements: !3247)
!3246 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3247 = !{!3248, !3253, !3254}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3245, file: !3246, line: 60, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3250, line: 7, size: 64, elements: !3251)
!3250 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3251 = !{!3252}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3249, file: !3250, line: 12, baseType: !245, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3245, file: !3246, line: 63, baseType: !235, size: 8, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3245, file: !3246, line: 70, baseType: !235, size: 8, offset: 72)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1537, file: !1213, line: 1335, baseType: !2527, size: 64, offset: 20480)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1537, file: !1213, line: 1337, baseType: !3257, size: 128, offset: 20544)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3246, line: 39, size: 128, elements: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3257, file: !3246, line: 40, baseType: !2314, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3257, file: !3246, line: 42, baseType: !160, size: 32, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3257, file: !3246, line: 43, baseType: !160, size: 32, offset: 96)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1537, file: !1213, line: 1340, baseType: !3263, size: 64, offset: 20672)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1213, line: 69, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1537, file: !1213, line: 1351, baseType: !109, size: 32, offset: 20736)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1537, file: !1213, line: 1352, baseType: !109, size: 32, offset: 20768)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1537, file: !1213, line: 1354, baseType: !199, size: 64, offset: 20800)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1537, file: !1213, line: 1364, baseType: !217, size: 64, offset: 20864)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1537, file: !1213, line: 1365, baseType: !217, size: 64, offset: 20928)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1537, file: !1213, line: 1412, baseType: !199, size: 64, offset: 20992)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1537, file: !1213, line: 1453, baseType: !3272, size: 64, offset: 21056)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1213, line: 1453, flags: DIFlagFwdDecl)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1537, file: !1213, line: 1457, baseType: !3275, size: 64, offset: 21120)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3277)
!3277 = !{!3278, !3279, !3298, !3301, !3302, !3335, !3345}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3276, file: !68, line: 62, baseType: !67, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !3276, file: !68, line: 64, baseType: !3280, size: 192, offset: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3276, file: !68, line: 64, size: 192, elements: !3281)
!3281 = !{!3282, !3293}
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !68, line: 65, baseType: !3283, size: 192)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3280, file: !68, line: 65, size: 192, elements: !3284)
!3284 = !{!3285, !3292}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3283, file: !68, line: 66, baseType: !3286, size: 128)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3287, line: 50, size: 128, elements: !3288)
!3287 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3288 = !{!3289, !3290, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3286, file: !3287, line: 52, baseType: !199, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3286, file: !3287, line: 54, baseType: !7, size: 32, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3286, file: !3287, line: 55, baseType: !7, size: 32, offset: 96)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3283, file: !68, line: 67, baseType: !199, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !68, line: 70, baseType: !3294, size: 192)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3280, file: !68, line: 70, size: 192, elements: !3295)
!3295 = !{!3296, !3297}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3294, file: !68, line: 71, baseType: !991, size: 128, align: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3294, file: !68, line: 72, baseType: !199, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3276, file: !68, line: 76, baseType: !3299, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3276, file: !68, line: 77, baseType: !199, size: 64, offset: 320)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3276, file: !68, line: 79, baseType: !3303, size: 64, offset: 384)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3287, line: 25, size: 256, elements: !3305)
!3305 = !{!3306, !3312, !3316}
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !3304, file: !3287, line: 26, baseType: !3307, size: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3304, file: !3287, line: 26, size: 128, elements: !3308)
!3308 = !{!3309, !3311}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3307, file: !3287, line: 27, baseType: !3310, size: 128)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 128, elements: !203)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3307, file: !3287, line: 28, baseType: !3310, size: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3304, file: !3287, line: 31, baseType: !3313, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3315)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3287, line: 23, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3304, file: !3287, line: 33, baseType: !3317, size: 64, offset: 192)
!3317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3304, file: !3287, line: 33, size: 64, elements: !3318)
!3318 = !{!3319, !3325, !3330}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3317, file: !3287, line: 38, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !3287, line: 34, size: 64, elements: !3321)
!3321 = !{!3322, !3323, !3324}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3320, file: !3287, line: 35, baseType: !769, size: 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3320, file: !3287, line: 36, baseType: !240, size: 8, offset: 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3320, file: !3287, line: 37, baseType: !240, size: 8, offset: 40)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3317, file: !3287, line: 42, baseType: !3326, size: 16)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !3287, line: 39, size: 16, elements: !3327)
!3327 = !{!3328, !3329}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3326, file: !3287, line: 40, baseType: !240, size: 8)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3326, file: !3287, line: 41, baseType: !240, size: 8, offset: 8)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3317, file: !3287, line: 46, baseType: !3331, size: 16)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3317, file: !3287, line: 43, size: 16, elements: !3332)
!3332 = !{!3333, !3334}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3331, file: !3287, line: 44, baseType: !240, size: 8)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3331, file: !3287, line: 45, baseType: !240, size: 8, offset: 8)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3276, file: !68, line: 81, baseType: !3336, size: 64, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3338)
!3338 = !{!3339, !3340, !3341, !3342, !3343, !3344}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3337, file: !68, line: 86, baseType: !3299, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3337, file: !68, line: 87, baseType: !199, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3337, file: !68, line: 88, baseType: !199, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3337, file: !68, line: 89, baseType: !199, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3337, file: !68, line: 90, baseType: !235, size: 8, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3337, file: !68, line: 92, baseType: !3336, size: 64, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3276, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1537, file: !1213, line: 1463, baseType: !3347, offset: 21184)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1213, line: 739, elements: !1058)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1537, file: !1213, line: 1470, baseType: !991, size: 128, align: 64, offset: 21184)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1537, file: !1213, line: 1471, baseType: !1550, size: 32, offset: 21312)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1537, file: !1213, line: 1472, baseType: !109, size: 32, offset: 21344)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1537, file: !1213, line: 1474, baseType: !1536, size: 64, offset: 21376)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1537, file: !1213, line: 1475, baseType: !1011, size: 320, offset: 21440)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1537, file: !1213, line: 1478, baseType: !3354, size: 64, offset: 21760)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2167, line: 49, size: 512, elements: !3356)
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3363, !3364, !3365, !3366}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3355, file: !2167, line: 50, baseType: !3354, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3355, file: !2167, line: 51, baseType: !157, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3355, file: !2167, line: 52, baseType: !199, size: 64, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3355, file: !2167, line: 53, baseType: !199, size: 64, offset: 192)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3355, file: !2167, line: 54, baseType: !3362, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3355, file: !2167, line: 56, baseType: !7, size: 32, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3355, file: !2167, line: 58, baseType: !7, size: 32, offset: 352)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3355, file: !2167, line: 59, baseType: !305, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3355, file: !2167, line: 60, baseType: !2666, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1537, file: !1213, line: 1482, baseType: !1550, size: 32, offset: 21824)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1537, file: !1213, line: 1489, baseType: !157, size: 64, offset: 21888)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1537, file: !1213, line: 1504, baseType: !157, size: 64, offset: 21952)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1537, file: !1213, line: 1505, baseType: !218, size: 64, offset: 22016)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1537, file: !1213, line: 1506, baseType: !217, size: 64, offset: 22080)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1537, file: !1213, line: 1507, baseType: !218, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1537, file: !1213, line: 1508, baseType: !218, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1537, file: !1213, line: 1509, baseType: !218, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1537, file: !1213, line: 1510, baseType: !991, size: 128, align: 64, offset: 22208)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1537, file: !1213, line: 1511, baseType: !109, size: 32, offset: 22336)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1537, file: !1213, line: 1515, baseType: !3378, size: 64, offset: 22400)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1564, line: 56, size: 64, elements: !3379)
!3379 = !{!3380}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3378, file: !1564, line: 57, baseType: !1567, size: 64)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1537, file: !1213, line: 1518, baseType: !3378, size: 64, offset: 22464)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1537, file: !1213, line: 1528, baseType: !991, size: 128, align: 64, offset: 22528)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1537, file: !1213, line: 1552, baseType: !3384, size: 35328, offset: 23040)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !164, line: 430, size: 35328, elements: !3385)
!3385 = !{!3386, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3415, !3416, !3417, !3418, !3419, !3420, !3423, !3424, !3425, !3426}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3384, file: !164, line: 432, baseType: !3387, size: 192)
!3387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3388, size: 192, elements: !441)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3389, line: 16, size: 64, elements: !3390)
!3389 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3390 = !{!3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3388, file: !3389, line: 17, baseType: !221, size: 16)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3388, file: !3389, line: 18, baseType: !221, size: 16, offset: 16)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3388, file: !3389, line: 19, baseType: !221, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3388, file: !3389, line: 19, baseType: !221, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3388, file: !3389, line: 19, baseType: !221, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3388, file: !3389, line: 19, baseType: !221, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3388, file: !3389, line: 19, baseType: !221, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3388, file: !3389, line: 20, baseType: !221, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3388, file: !3389, line: 20, baseType: !221, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3388, file: !3389, line: 20, baseType: !221, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3388, file: !3389, line: 20, baseType: !221, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3388, file: !3389, line: 20, baseType: !221, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3388, file: !3389, line: 20, baseType: !221, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3384, file: !164, line: 436, baseType: !199, size: 64, offset: 192)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3384, file: !164, line: 440, baseType: !223, size: 16, offset: 256)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3384, file: !164, line: 441, baseType: !223, size: 16, offset: 272)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3384, file: !164, line: 442, baseType: !223, size: 16, offset: 288)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3384, file: !164, line: 443, baseType: !223, size: 16, offset: 304)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3384, file: !164, line: 447, baseType: !199, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3384, file: !164, line: 448, baseType: !199, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3384, file: !164, line: 459, baseType: !3412, size: 256, offset: 448)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3413, size: 256, elements: !315)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !164, line: 428, flags: DIFlagFwdDecl)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3384, file: !164, line: 461, baseType: !199, size: 64, offset: 704)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3384, file: !164, line: 463, baseType: !199, size: 64, offset: 768)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3384, file: !164, line: 465, baseType: !199, size: 64, offset: 832)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3384, file: !164, line: 466, baseType: !199, size: 64, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3384, file: !164, line: 467, baseType: !199, size: 64, offset: 960)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3384, file: !164, line: 473, baseType: !3421, size: 64, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !164, line: 10, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3384, file: !164, line: 480, baseType: !199, size: 64, offset: 1088)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3384, file: !164, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3384, file: !164, line: 491, baseType: !158, size: 32, offset: 1184)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3384, file: !164, line: 501, baseType: !3427, size: 33792, offset: 1536)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3428, line: 448, size: 33792, elements: !3429)
!3428 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3429 = !{!3430, !3431, !3432, !3594, !3595, !3601, !3602}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3427, file: !3428, line: 461, baseType: !7, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3427, file: !3428, line: 468, baseType: !199, size: 64, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3427, file: !3428, line: 476, baseType: !3433, size: 64, offset: 128)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3428, line: 356, size: 33280, align: 512, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3434, file: !3428, line: 358, baseType: !7, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3434, file: !3428, line: 361, baseType: !7, size: 32, offset: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3434, file: !3428, line: 364, baseType: !217, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3434, file: !3428, line: 367, baseType: !217, size: 64, offset: 128)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3434, file: !3428, line: 370, baseType: !217, size: 64, offset: 192)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3434, file: !3428, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3434, file: !3428, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3434, file: !3428, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3434, file: !3428, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3434, file: !3428, line: 397, baseType: !3446, size: 32768, offset: 512)
!3446 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3428, line: 348, size: 32768, elements: !3447)
!3447 = !{!3448, !3463, !3500, !3577, !3590}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3446, file: !3428, line: 349, baseType: !3449, size: 896)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3428, line: 12, size: 896, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3462}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3449, file: !3428, line: 13, baseType: !158, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3449, file: !3428, line: 14, baseType: !158, size: 32, offset: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3449, file: !3428, line: 15, baseType: !158, size: 32, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3449, file: !3428, line: 16, baseType: !158, size: 32, offset: 96)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3449, file: !3428, line: 17, baseType: !158, size: 32, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3449, file: !3428, line: 18, baseType: !158, size: 32, offset: 160)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3449, file: !3428, line: 19, baseType: !158, size: 32, offset: 192)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3449, file: !3428, line: 22, baseType: !3459, size: 640, offset: 224)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 640, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 20)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3449, file: !3428, line: 25, baseType: !158, size: 32, offset: 864)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3446, file: !3428, line: 350, baseType: !3464, size: 4096, align: 128)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3428, line: 34, size: 4096, align: 128, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3485, !3486, !3487, !3489, !3491, !3495}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3464, file: !3428, line: 35, baseType: !221, size: 16)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3464, file: !3428, line: 36, baseType: !221, size: 16, offset: 16)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3464, file: !3428, line: 37, baseType: !221, size: 16, offset: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3464, file: !3428, line: 38, baseType: !221, size: 16, offset: 48)
!3470 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !3428, line: 39, baseType: !3471, size: 128, offset: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !3428, line: 39, size: 128, elements: !3472)
!3472 = !{!3473, !3478}
!3473 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !3428, line: 40, baseType: !3474, size: 128)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3471, file: !3428, line: 40, size: 128, elements: !3475)
!3475 = !{!3476, !3477}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3474, file: !3428, line: 41, baseType: !217, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3474, file: !3428, line: 42, baseType: !217, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !3428, line: 44, baseType: !3479, size: 128)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3471, file: !3428, line: 44, size: 128, elements: !3480)
!3480 = !{!3481, !3482, !3483, !3484}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3479, file: !3428, line: 45, baseType: !158, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3479, file: !3428, line: 46, baseType: !158, size: 32, offset: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3479, file: !3428, line: 47, baseType: !158, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3479, file: !3428, line: 48, baseType: !158, size: 32, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3464, file: !3428, line: 51, baseType: !158, size: 32, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3464, file: !3428, line: 52, baseType: !158, size: 32, offset: 224)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3464, file: !3428, line: 55, baseType: !3488, size: 1024, offset: 256)
!3488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 1024, elements: !594)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3464, file: !3428, line: 58, baseType: !3490, size: 2048, offset: 1280)
!3490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 2048, elements: !207)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3464, file: !3428, line: 60, baseType: !3492, size: 384, offset: 3328)
!3492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 384, elements: !3493)
!3493 = !{!3494}
!3494 = !DISubrange(count: 12)
!3495 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !3428, line: 62, baseType: !3496, size: 384, offset: 3712)
!3496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3464, file: !3428, line: 62, size: 384, elements: !3497)
!3497 = !{!3498, !3499}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3496, file: !3428, line: 63, baseType: !3492, size: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3496, file: !3428, line: 64, baseType: !3492, size: 384)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3446, file: !3428, line: 351, baseType: !3501, size: 1088)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3428, line: 79, size: 1088, elements: !3502)
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3576}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3501, file: !3428, line: 80, baseType: !158, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3501, file: !3428, line: 81, baseType: !158, size: 32, offset: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3501, file: !3428, line: 82, baseType: !158, size: 32, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3501, file: !3428, line: 83, baseType: !158, size: 32, offset: 96)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3501, file: !3428, line: 84, baseType: !158, size: 32, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3501, file: !3428, line: 85, baseType: !158, size: 32, offset: 160)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3501, file: !3428, line: 86, baseType: !158, size: 32, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3501, file: !3428, line: 88, baseType: !3459, size: 640, offset: 224)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3501, file: !3428, line: 89, baseType: !240, size: 8, offset: 864)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3501, file: !3428, line: 90, baseType: !240, size: 8, offset: 872)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3501, file: !3428, line: 91, baseType: !240, size: 8, offset: 880)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3501, file: !3428, line: 92, baseType: !240, size: 8, offset: 888)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3501, file: !3428, line: 93, baseType: !240, size: 8, offset: 896)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3501, file: !3428, line: 94, baseType: !240, size: 8, offset: 904)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3501, file: !3428, line: 95, baseType: !3518, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3520, line: 11, size: 128, elements: !3521)
!3520 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3521 = !{!3522, !3523}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3519, file: !3520, line: 12, baseType: !474, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3519, file: !3520, line: 13, baseType: !3524, size: 64, offset: 64)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3526, line: 103, size: 1344, elements: !3527)
!3526 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3556, !3557, !3558}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3525, file: !3526, line: 109, baseType: !199, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3525, file: !3526, line: 110, baseType: !199, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3525, file: !3526, line: 111, baseType: !199, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3525, file: !3526, line: 112, baseType: !199, size: 64, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3525, file: !3526, line: 113, baseType: !199, size: 64, offset: 256)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3525, file: !3526, line: 114, baseType: !199, size: 64, offset: 320)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3525, file: !3526, line: 117, baseType: !199, size: 64, offset: 384)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3525, file: !3526, line: 118, baseType: !199, size: 64, offset: 448)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3525, file: !3526, line: 119, baseType: !199, size: 64, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3525, file: !3526, line: 120, baseType: !199, size: 64, offset: 576)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3525, file: !3526, line: 121, baseType: !199, size: 64, offset: 640)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3525, file: !3526, line: 122, baseType: !199, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3525, file: !3526, line: 123, baseType: !199, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3525, file: !3526, line: 124, baseType: !199, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3525, file: !3526, line: 125, baseType: !199, size: 64, offset: 896)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3525, file: !3526, line: 139, baseType: !199, size: 64, offset: 960)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3525, file: !3526, line: 142, baseType: !199, size: 64, offset: 1024)
!3545 = !DIDerivedType(tag: DW_TAG_member, scope: !3525, file: !3526, line: 144, baseType: !3546, size: 64, offset: 1088)
!3546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3525, file: !3526, line: 144, size: 64, elements: !3547)
!3547 = !{!3548, !3549, !3550}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3546, file: !3526, line: 146, baseType: !221, size: 16)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3546, file: !3526, line: 148, baseType: !217, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3546, file: !3526, line: 150, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3526, line: 59, size: 64, elements: !3552)
!3552 = !{!3553, !3554, !3555}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3551, file: !3526, line: 61, baseType: !217, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3551, file: !3526, line: 63, baseType: !217, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3551, file: !3526, line: 65, baseType: !217, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3525, file: !3526, line: 153, baseType: !199, size: 64, offset: 1152)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3525, file: !3526, line: 154, baseType: !199, size: 64, offset: 1216)
!3558 = !DIDerivedType(tag: DW_TAG_member, scope: !3525, file: !3526, line: 156, baseType: !3559, size: 64, offset: 1280)
!3559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3525, file: !3526, line: 156, size: 64, elements: !3560)
!3560 = !{!3561, !3562, !3563}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3559, file: !3526, line: 158, baseType: !221, size: 16)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3559, file: !3526, line: 160, baseType: !217, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3559, file: !3526, line: 162, baseType: !3564, size: 64)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3526, line: 69, size: 64, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3564, file: !3526, line: 71, baseType: !217, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3564, file: !3526, line: 73, baseType: !217, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3564, file: !3526, line: 75, baseType: !217, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3564, file: !3526, line: 77, baseType: !217, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3564, file: !3526, line: 80, baseType: !217, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3564, file: !3526, line: 83, baseType: !217, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3564, file: !3526, line: 86, baseType: !217, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3564, file: !3526, line: 88, baseType: !217, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3564, file: !3526, line: 93, baseType: !217, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3564, file: !3526, line: 100, baseType: !217, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3501, file: !3428, line: 96, baseType: !158, size: 32, offset: 1024)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3446, file: !3428, line: 352, baseType: !3578, size: 4608, align: 512)
!3578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3428, line: 333, size: 4608, align: 512, elements: !3579)
!3579 = !{!3580, !3581, !3588}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3578, file: !3428, line: 334, baseType: !3464, size: 4096, align: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3578, file: !3428, line: 335, baseType: !3582, size: 512, offset: 4096)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3428, line: 312, size: 512, elements: !3583)
!3583 = !{!3584, !3585, !3586}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3582, file: !3428, line: 313, baseType: !217, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3582, file: !3428, line: 314, baseType: !217, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3582, file: !3428, line: 315, baseType: !3587, size: 384, offset: 128)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 384, elements: !1996)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3578, file: !3428, line: 336, baseType: !3589, offset: 4608)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, elements: !1913)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3446, file: !3428, line: 353, baseType: !3591, size: 32768)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 32768, elements: !3592)
!3592 = !{!3593}
!3593 = !DISubrange(count: 4096)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3427, file: !3428, line: 484, baseType: !3433, size: 64, offset: 192)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3427, file: !3428, line: 491, baseType: !3596, size: 128, offset: 256)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3428, line: 404, size: 128, elements: !3597)
!3597 = !{!3598, !3599, !3600}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3596, file: !3428, line: 424, baseType: !217, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3596, file: !3428, line: 432, baseType: !7, size: 32, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3596, file: !3428, line: 440, baseType: !7, size: 32, offset: 96)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3427, file: !3428, line: 498, baseType: !3596, size: 128, offset: 384)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3427, file: !3428, line: 508, baseType: !3434, size: 33280, align: 512, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1513, file: !1514, line: 16, baseType: !1523, size: 192, offset: 512)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1513, file: !1514, line: 17, baseType: !398, size: 32, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !664, file: !14, line: 1240, baseType: !157, size: 64, offset: 6912)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !664, file: !14, line: 1243, baseType: !158, size: 32, offset: 6976)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !664, file: !14, line: 1245, baseType: !1271, size: 64, offset: 7040)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !664, file: !14, line: 1246, baseType: !1271, size: 64, offset: 7104)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !664, file: !14, line: 1248, baseType: !160, size: 32, offset: 7168)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !664, file: !14, line: 1249, baseType: !3611, size: 64, offset: 7232)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !664, file: !14, line: 1252, baseType: !3614, size: 256, offset: 7296)
!3614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 256, elements: !594)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !664, file: !14, line: 1253, baseType: !3616, size: 128, offset: 7552)
!3616 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3617, line: 21, baseType: !3618)
!3617 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3617, line: 19, size: 128, elements: !3619)
!3619 = !{!3620}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3618, file: !3617, line: 20, baseType: !3621, size: 128)
!3621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !203)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !664, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !664, file: !14, line: 1261, baseType: !773, size: 256, offset: 7744)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !664, file: !14, line: 1267, baseType: !308, size: 64, offset: 8000)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !664, file: !14, line: 1269, baseType: !610, size: 64, offset: 8064)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !664, file: !14, line: 1271, baseType: !3627, size: 448, offset: 8128)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1280, line: 63, size: 448, elements: !3628)
!3628 = !{!3629, !3634, !3635, !3636, !3637, !3638, !3639}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3627, file: !1280, line: 64, baseType: !3630, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!199, !3633, !1278}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3627, file: !1280, line: 66, baseType: !3630, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3627, file: !1280, line: 69, baseType: !474, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3627, file: !1280, line: 70, baseType: !109, size: 32, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3627, file: !1280, line: 71, baseType: !7, size: 32, offset: 224)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3627, file: !1280, line: 74, baseType: !282, size: 128, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3627, file: !1280, line: 85, baseType: !3640, size: 64, offset: 384)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !664, file: !14, line: 1274, baseType: !777, size: 64, offset: 8576)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !664, file: !14, line: 1280, baseType: !777, size: 64, offset: 8640)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !664, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !664, file: !14, line: 1286, baseType: !2577, size: 32, offset: 8736)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !664, file: !14, line: 1289, baseType: !1091, size: 64, offset: 8768)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !664, file: !14, line: 1290, baseType: !1139, size: 64, offset: 8832)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !664, file: !14, line: 1297, baseType: !2090, size: 64, offset: 8896)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !664, file: !14, line: 1304, baseType: !3649, size: 64, offset: 8960)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3650, line: 49, size: 64, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3651 = !{!3652}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3649, file: !3650, line: 50, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3650, line: 41, size: 512, align: 512, elements: !3655)
!3655 = !{!3656, !3657, !3662}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3654, file: !3650, line: 43, baseType: !378, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3654, file: !3650, line: 45, baseType: !3658, size: 192, offset: 64)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3650, line: 29, size: 192, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3658, file: !3650, line: 30, baseType: !282, size: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3658, file: !3650, line: 32, baseType: !474, size: 64, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3654, file: !3650, line: 46, baseType: !474, size: 64, offset: 256)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !664, file: !14, line: 1305, baseType: !3649, size: 64, offset: 9024)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !664, file: !14, line: 1306, baseType: !991, size: 128, align: 64, offset: 9088)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !664, file: !14, line: 1307, baseType: !1029, size: 256, offset: 9216)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !664, file: !14, line: 1309, baseType: !773, size: 256, offset: 9472)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !664, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !664, file: !14, line: 1317, baseType: !378, size: 32, align: 512, offset: 10240)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !664, file: !14, line: 1318, baseType: !282, size: 128, offset: 10304)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !664, file: !14, line: 1320, baseType: !378, size: 32, offset: 10432)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !664, file: !14, line: 1321, baseType: !282, size: 128, offset: 10496)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !658, file: !659, line: 73, baseType: !109, size: 32, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !658, file: !659, line: 74, baseType: !3674, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1937, line: 42, flags: DIFlagFwdDecl)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !612, file: !554, line: 141, baseType: !3678, size: 64, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!109, !1340, !235}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !612, file: !554, line: 142, baseType: !3682, size: 64, offset: 768)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!552, !552, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !553, file: !554, line: 96, baseType: !663, size: 64, offset: 832)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !553, file: !554, line: 97, baseType: !199, size: 64, offset: 896)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !553, file: !554, line: 98, baseType: !157, size: 64, offset: 960)
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !553, file: !554, line: 100, baseType: !3691, size: 128, offset: 1024)
!3691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !554, line: 100, size: 128, elements: !3692)
!3692 = !{!3693, !3694}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3691, file: !554, line: 101, baseType: !282, size: 128)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3691, file: !554, line: 102, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !553, file: !554, line: 104, baseType: !282, size: 128, offset: 1152)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !553, file: !554, line: 105, baseType: !282, size: 128, offset: 1280)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !553, file: !554, line: 113, baseType: !3699, size: 128, offset: 1408)
!3699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !554, line: 109, size: 128, elements: !3700)
!3700 = !{!3701, !3702, !3703}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3699, file: !554, line: 110, baseType: !1015, size: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3699, file: !554, line: 111, baseType: !568, size: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3699, file: !554, line: 112, baseType: !991, size: 128, align: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !546, file: !14, line: 1968, baseType: !3705, size: 64, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!308, !552, !517, !3708}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3710, line: 10, size: 128, elements: !3711)
!3710 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3711 = !{!3712, !3713}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3709, file: !3710, line: 11, baseType: !816, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3709, file: !3710, line: 12, baseType: !157, size: 64, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !546, file: !14, line: 1969, baseType: !3715, size: 64, offset: 128)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!109, !3674, !517, !109}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !546, file: !14, line: 1970, baseType: !3719, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!540, !517, !109, !235}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !546, file: !14, line: 1972, baseType: !3723, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!109, !552, !440, !109}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !546, file: !14, line: 1974, baseType: !3727, size: 64, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!109, !3674, !517, !552, !480, !235}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !546, file: !14, line: 1976, baseType: !3731, size: 64, offset: 384)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!109, !552, !517, !552}
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !546, file: !14, line: 1977, baseType: !3735, size: 64, offset: 448)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!109, !517, !552}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !546, file: !14, line: 1978, baseType: !3739, size: 64, offset: 512)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!109, !3674, !517, !552, !308}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !546, file: !14, line: 1980, baseType: !3743, size: 64, offset: 576)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!109, !3674, !517, !552, !480}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !546, file: !14, line: 1982, baseType: !3735, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !546, file: !14, line: 1983, baseType: !3748, size: 64, offset: 704)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!109, !3674, !517, !552, !480, !668}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !546, file: !14, line: 1985, baseType: !3752, size: 64, offset: 768)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!109, !3674, !517, !552, !517, !552, !7}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !546, file: !14, line: 1987, baseType: !3756, size: 64, offset: 832)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!109, !3674, !552, !3759}
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3761)
!3761 = !{!3762, !3763, !3764, !3774, !3783, !3784, !3789, !3790, !3791}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3760, file: !14, line: 227, baseType: !7, size: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3760, file: !14, line: 228, baseType: !480, size: 16, offset: 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, scope: !3760, file: !14, line: 241, baseType: !3765, size: 32, offset: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3760, file: !14, line: 241, size: 32, elements: !3766)
!3766 = !{!3767, !3768}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3765, file: !14, line: 242, baseType: !523, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3765, file: !14, line: 243, baseType: !3769, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3770, line: 16, baseType: !3771)
!3770 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3770, line: 14, size: 32, elements: !3772)
!3772 = !{!3773}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3771, file: !3770, line: 15, baseType: !528, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, scope: !3760, file: !14, line: 245, baseType: !3775, size: 32, offset: 96)
!3775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3760, file: !14, line: 245, size: 32, elements: !3776)
!3776 = !{!3777, !3778}
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3775, file: !14, line: 246, baseType: !532, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3775, file: !14, line: 247, baseType: !3779, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3770, line: 20, baseType: !3780)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3770, line: 18, size: 32, elements: !3781)
!3781 = !{!3782}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3780, file: !3770, line: 19, baseType: !536, size: 32)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3760, file: !14, line: 249, baseType: !673, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3760, file: !14, line: 250, baseType: !3785, size: 128, offset: 192)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1272, line: 13, size: 128, elements: !3786)
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3785, file: !1272, line: 14, baseType: !1271, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3785, file: !1272, line: 15, baseType: !474, size: 64, offset: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3760, file: !14, line: 251, baseType: !3785, size: 128, offset: 320)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3760, file: !14, line: 252, baseType: !3785, size: 128, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3760, file: !14, line: 259, baseType: !1853, size: 64, offset: 576)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !546, file: !14, line: 1988, baseType: !3793, size: 64, offset: 896)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{!109, !3674, !1340, !3796, !158, !7}
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3798, line: 22, size: 1280, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3799 = !{!3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3797, file: !3798, line: 23, baseType: !158, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3797, file: !3798, line: 24, baseType: !480, size: 16, offset: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3797, file: !3798, line: 25, baseType: !7, size: 32, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3797, file: !3798, line: 26, baseType: !1975, size: 32, offset: 96)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3797, file: !3798, line: 27, baseType: !217, size: 64, offset: 128)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3797, file: !3798, line: 28, baseType: !217, size: 64, offset: 192)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3797, file: !3798, line: 41, baseType: !217, size: 64, offset: 256)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3797, file: !3798, line: 42, baseType: !668, size: 32, offset: 320)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3797, file: !3798, line: 43, baseType: !668, size: 32, offset: 352)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3797, file: !3798, line: 44, baseType: !523, size: 32, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3797, file: !3798, line: 45, baseType: !532, size: 32, offset: 416)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3797, file: !3798, line: 46, baseType: !673, size: 64, offset: 448)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3797, file: !3798, line: 47, baseType: !3785, size: 128, offset: 512)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3797, file: !3798, line: 48, baseType: !3785, size: 128, offset: 640)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3797, file: !3798, line: 49, baseType: !3785, size: 128, offset: 768)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3797, file: !3798, line: 50, baseType: !3785, size: 128, offset: 896)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3797, file: !3798, line: 51, baseType: !217, size: 64, offset: 1024)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3797, file: !3798, line: 52, baseType: !217, size: 64, offset: 1088)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3797, file: !3798, line: 53, baseType: !158, size: 32, offset: 1152)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3797, file: !3798, line: 54, baseType: !158, size: 32, offset: 1184)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3797, file: !3798, line: 55, baseType: !217, size: 64, offset: 1216)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !546, file: !14, line: 1990, baseType: !3822, size: 64, offset: 960)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!470, !552, !440, !485}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !546, file: !14, line: 1991, baseType: !3826, size: 64, offset: 1024)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!109, !517, !3829, !217, !217}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !546, file: !14, line: 1993, baseType: !3832, size: 64, offset: 1088)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!109, !517, !109}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !546, file: !14, line: 1994, baseType: !3836, size: 64, offset: 1152)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!109, !517, !552, !1853, !7, !480}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !546, file: !14, line: 1997, baseType: !3840, size: 64, offset: 1216)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!109, !3674, !517, !1853, !480}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !546, file: !14, line: 1999, baseType: !3844, size: 64, offset: 1280)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!540, !3674, !552, !109}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !546, file: !14, line: 2001, baseType: !3848, size: 64, offset: 1344)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!109, !3674, !552, !540, !109}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !546, file: !14, line: 2003, baseType: !3852, size: 64, offset: 1408)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DISubroutineType(types: !3854)
!3854 = !{!109, !3674, !552, !3855}
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !546, file: !14, line: 2005, baseType: !3858, size: 64, offset: 1472)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!109, !552, !3855}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !546, file: !14, line: 2006, baseType: !3862, size: 64, offset: 1536)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!3865, !517}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3867)
!3867 = !{!3868, !3875}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3866, file: !14, line: 3193, baseType: !3869, size: 128)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3870, line: 296, size: 128, elements: !3871)
!3870 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3871 = !{!3872, !3873, !3874}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3869, file: !3870, line: 297, baseType: !378, size: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3869, file: !3870, line: 299, baseType: !242, size: 32, offset: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3869, file: !3870, line: 300, baseType: !157, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3866, file: !14, line: 3194, baseType: !158, size: 32, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !518, file: !14, line: 655, baseType: !663, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !518, file: !14, line: 656, baseType: !513, size: 64, offset: 512)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !518, file: !14, line: 659, baseType: !157, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !518, file: !14, line: 663, baseType: !199, size: 64, offset: 640)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !14, line: 671, baseType: !3881, size: 32, offset: 704)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !14, line: 671, size: 32, elements: !3882)
!3882 = !{!3883, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3881, file: !14, line: 672, baseType: !3884, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3881, file: !14, line: 673, baseType: !7, size: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !518, file: !14, line: 675, baseType: !668, size: 32, offset: 736)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !518, file: !14, line: 676, baseType: !673, size: 64, offset: 768)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !518, file: !14, line: 677, baseType: !3785, size: 128, offset: 832)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !518, file: !14, line: 678, baseType: !3785, size: 128, offset: 960)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !518, file: !14, line: 679, baseType: !3785, size: 128, offset: 1088)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !518, file: !14, line: 680, baseType: !378, size: 32, offset: 1216)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !518, file: !14, line: 681, baseType: !223, size: 16, offset: 1248)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !518, file: !14, line: 682, baseType: !240, size: 8, offset: 1264)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !518, file: !14, line: 683, baseType: !240, size: 8, offset: 1272)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !518, file: !14, line: 684, baseType: !1418, size: 64, offset: 1280)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !518, file: !14, line: 691, baseType: !199, size: 64, offset: 1344)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !518, file: !14, line: 692, baseType: !1430, size: 320, offset: 1408)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !518, file: !14, line: 694, baseType: !199, size: 64, offset: 1728)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !518, file: !14, line: 695, baseType: !199, size: 64, offset: 1792)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !518, file: !14, line: 697, baseType: !1015, size: 128, offset: 1856)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !518, file: !14, line: 698, baseType: !282, size: 128, offset: 1984)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !518, file: !14, line: 707, baseType: !282, size: 128, offset: 2112)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !518, file: !14, line: 708, baseType: !282, size: 128, offset: 2240)
!3904 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !14, line: 709, baseType: !3905, size: 128, offset: 2368)
!3905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !14, line: 709, size: 128, elements: !3906)
!3906 = !{!3907, !3908}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3905, file: !14, line: 710, baseType: !1139, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3905, file: !14, line: 711, baseType: !991, size: 128, align: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !518, file: !14, line: 713, baseType: !779, size: 64, offset: 2496)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !518, file: !14, line: 714, baseType: !779, size: 64, offset: 2560)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !518, file: !14, line: 715, baseType: !398, size: 32, offset: 2624)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !518, file: !14, line: 716, baseType: !398, size: 32, offset: 2656)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !518, file: !14, line: 717, baseType: !398, size: 32, offset: 2688)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !518, file: !14, line: 719, baseType: !398, size: 32, offset: 2720)
!3915 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !14, line: 721, baseType: !3916, size: 64, offset: 2752)
!3916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !14, line: 721, size: 64, elements: !3917)
!3917 = !{!3918, !3919}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3916, file: !14, line: 722, baseType: !2121, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3916, file: !14, line: 723, baseType: !1162, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !518, file: !14, line: 725, baseType: !3921, size: 64, offset: 2816)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !518, file: !14, line: 726, baseType: !514, size: 1536, align: 64, offset: 2880)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !518, file: !14, line: 727, baseType: !282, size: 128, offset: 4416)
!3925 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !14, line: 728, baseType: !3926, size: 64, offset: 4544)
!3926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !14, line: 728, size: 64, elements: !3927)
!3927 = !{!3928, !3929, !3932, !3933}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3926, file: !14, line: 729, baseType: !2527, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3926, file: !14, line: 730, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3926, file: !14, line: 731, baseType: !440, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3926, file: !14, line: 732, baseType: !7, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !518, file: !14, line: 735, baseType: !160, size: 32, offset: 4608)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !518, file: !14, line: 738, baseType: !160, size: 32, offset: 4640)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !518, file: !14, line: 739, baseType: !3611, size: 64, offset: 4672)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !518, file: !14, line: 750, baseType: !157, size: 64, offset: 4736)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !514, file: !14, line: 474, baseType: !3869, size: 128, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !514, file: !14, line: 475, baseType: !1430, size: 320, offset: 192)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !514, file: !14, line: 476, baseType: !242, size: 32, offset: 512)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !514, file: !14, line: 477, baseType: !398, size: 32, offset: 544)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !514, file: !14, line: 482, baseType: !1716, size: 128, offset: 576)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !514, file: !14, line: 483, baseType: !199, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !514, file: !14, line: 484, baseType: !199, size: 64, offset: 768)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !514, file: !14, line: 485, baseType: !3946, size: 64, offset: 832)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3948)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3949)
!3949 = !{!3950, !3954, !4024, !4028, !4032, !4038, !4042, !4046, !4051, !4055, !4059, !4063, !4064, !4068, !4072, !4076, !4081, !4085, !4092, !4093}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3948, file: !14, line: 405, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!109, !2314, !1174}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3948, file: !14, line: 406, baseType: !3955, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{!109, !1853, !3958}
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3960)
!3960 = !{!3961, !3991, !4005}
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !38, line: 295, baseType: !3962, size: 512)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !38, line: 295, size: 512, elements: !3963)
!3963 = !{!3964, !3990}
!3964 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !38, line: 296, baseType: !3965, size: 448)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !38, line: 296, size: 448, elements: !3966)
!3966 = !{!3967, !3968, !3977, !3978, !3979, !3988, !3989}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3965, file: !38, line: 298, baseType: !199, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, scope: !3965, file: !38, line: 299, baseType: !3969, size: 128, offset: 64)
!3969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3965, file: !38, line: 299, size: 128, elements: !3970)
!3970 = !{!3971, !3972}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3969, file: !38, line: 300, baseType: !282, size: 128)
!3972 = !DIDerivedType(tag: DW_TAG_member, scope: !3969, file: !38, line: 302, baseType: !3973, size: 128)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3969, file: !38, line: 302, size: 128, elements: !3974)
!3974 = !{!3975, !3976}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3973, file: !38, line: 303, baseType: !157, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3973, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3965, file: !38, line: 310, baseType: !513, size: 64, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3965, file: !38, line: 311, baseType: !199, size: 64, offset: 256)
!3979 = !DIDerivedType(tag: DW_TAG_member, scope: !3965, file: !38, line: 312, baseType: !3980, size: 64, offset: 320)
!3980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3965, file: !38, line: 312, size: 64, elements: !3981)
!3981 = !{!3982, !3983}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3980, file: !38, line: 313, baseType: !157, size: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3980, file: !38, line: 314, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3985)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3986)
!3986 = !{!3987}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3985, file: !38, line: 256, baseType: !199, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3965, file: !38, line: 316, baseType: !398, size: 32, offset: 384)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3965, file: !38, line: 317, baseType: !398, size: 32, offset: 416)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3962, file: !38, line: 323, baseType: !2315, size: 512, align: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !38, line: 325, baseType: !3992, size: 512, offset: 512)
!3992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !38, line: 325, size: 512, elements: !3993)
!3993 = !{!3994, !4004}
!3994 = !DIDerivedType(tag: DW_TAG_member, scope: !3992, file: !38, line: 326, baseType: !3995, size: 320)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3992, file: !38, line: 326, size: 320, elements: !3996)
!3996 = !{!3997, !3998, !3999, !4000, !4001, !4002, !4003}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3995, file: !38, line: 327, baseType: !199, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3995, file: !38, line: 328, baseType: !199, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3995, file: !38, line: 329, baseType: !199, size: 64, offset: 128)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3995, file: !38, line: 331, baseType: !398, size: 32, offset: 192)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3995, file: !38, line: 332, baseType: !398, size: 32, offset: 224)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3995, file: !38, line: 333, baseType: !398, size: 32, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3995, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3992, file: !38, line: 339, baseType: !2315, size: 512, align: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, scope: !3959, file: !38, line: 341, baseType: !4006, size: 512, offset: 1024)
!4006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3959, file: !38, line: 341, size: 512, elements: !4007)
!4007 = !{!4008, !4017, !4023}
!4008 = !DIDerivedType(tag: DW_TAG_member, scope: !4006, file: !38, line: 342, baseType: !4009, size: 384)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4006, file: !38, line: 342, size: 384, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014, !4015, !4016}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4009, file: !38, line: 343, baseType: !199, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4009, file: !38, line: 344, baseType: !199, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4009, file: !38, line: 346, baseType: !157, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4009, file: !38, line: 347, baseType: !157, size: 64, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4009, file: !38, line: 348, baseType: !157, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4009, file: !38, line: 349, baseType: !157, size: 64, offset: 320)
!4017 = !DIDerivedType(tag: DW_TAG_member, scope: !4006, file: !38, line: 352, baseType: !4018, size: 256)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4006, file: !38, line: 352, size: 256, elements: !4019)
!4019 = !{!4020, !4021, !4022}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4018, file: !38, line: 353, baseType: !199, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4018, file: !38, line: 354, baseType: !199, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4018, file: !38, line: 356, baseType: !282, size: 128, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4006, file: !38, line: 359, baseType: !2315, size: 512, align: 128)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3948, file: !14, line: 409, baseType: !4025, size: 64, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!109, !513, !1174}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3948, file: !14, line: 412, baseType: !4029, size: 64, offset: 192)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!235, !513, !3958}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3948, file: !14, line: 414, baseType: !4033, size: 64, offset: 256)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{null, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3948, file: !14, line: 416, baseType: !4039, size: 64, offset: 320)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!109, !1853, !513, !673, !7, !3362, !2542}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3948, file: !14, line: 419, baseType: !4043, size: 64, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!109, !1853, !513, !673, !7, !7, !2314, !157}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3948, file: !14, line: 424, baseType: !4047, size: 64, offset: 448)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{!4050, !513, !4050}
!4050 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !236, line: 131, baseType: !217)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3948, file: !14, line: 425, baseType: !4052, size: 64, offset: 512)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{null, !3958, !485, !485}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3948, file: !14, line: 426, baseType: !4056, size: 64, offset: 576)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!235, !3958, !242}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3948, file: !14, line: 427, baseType: !4060, size: 64, offset: 640)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !3958}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3948, file: !14, line: 428, baseType: !2140, size: 64, offset: 704)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3948, file: !14, line: 433, baseType: !4065, size: 64, offset: 768)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!109, !513, !3958, !3958, !74}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3948, file: !14, line: 435, baseType: !4069, size: 64, offset: 832)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!109, !3958}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3948, file: !14, line: 436, baseType: !4073, size: 64, offset: 896)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!235, !3958, !485, !485}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3948, file: !14, line: 438, baseType: !4077, size: 64, offset: 960)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{null, !3958, !4080, !4080}
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3948, file: !14, line: 439, baseType: !4082, size: 64, offset: 1024)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!109, !513, !2314}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3948, file: !14, line: 442, baseType: !4086, size: 64, offset: 1088)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!109, !4089, !1853, !4091}
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3948, file: !14, line: 444, baseType: !2534, size: 64, offset: 1152)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3948, file: !14, line: 445, baseType: !4094, size: 64, offset: 1216)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!109, !2143, !2165}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !514, file: !14, line: 486, baseType: !199, size: 64, offset: 896)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !514, file: !14, line: 487, baseType: !1430, size: 320, offset: 960)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !514, file: !14, line: 488, baseType: !2577, size: 32, offset: 1280)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !514, file: !14, line: 489, baseType: !378, size: 32, offset: 1312)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !514, file: !14, line: 490, baseType: !282, size: 128, offset: 1344)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !514, file: !14, line: 491, baseType: !157, size: 64, offset: 1472)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !504, file: !464, line: 180, baseType: !4104, size: 64, offset: 320)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DISubroutineType(types: !4106)
!4106 = !{!470, !1853, !371, !503, !440, !673, !485}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !504, file: !464, line: 182, baseType: !4104, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !504, file: !464, line: 184, baseType: !4109, size: 64, offset: 448)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!109, !1853, !371, !503, !2205}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !492, file: !464, line: 90, baseType: !4113, size: 64, offset: 192)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !492, file: !464, line: 91, baseType: !4115, size: 64, offset: 256)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !454, file: !366, line: 120, baseType: !4117, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!4120, !423}
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4122)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !4123)
!4123 = !{!4124, !4125, !4129, !4133, !4139, !4143}
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4122, file: !82, line: 40, baseType: !81, size: 32)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4122, file: !82, line: 41, baseType: !4126, size: 64, offset: 64)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!235}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4122, file: !82, line: 42, baseType: !4130, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!157}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4122, file: !82, line: 43, baseType: !4134, size: 64, offset: 192)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!2666, !4137}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4122, file: !82, line: 44, baseType: !4140, size: 64, offset: 256)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!2666}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4122, file: !82, line: 45, baseType: !816, size: 64, offset: 320)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !454, file: !366, line: 121, baseType: !4145, size: 64, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!2666, !423}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !454, file: !366, line: 122, baseType: !4149, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{null, !423, !4152, !4153}
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !365, file: !366, line: 70, baseType: !4155, size: 64, offset: 384)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !688, line: 190, size: 1152, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4249, !4250, !4251, !4252, !4253, !4256}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4156, file: !688, line: 191, baseType: !398, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4156, file: !688, line: 192, baseType: !398, size: 32, offset: 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4156, file: !688, line: 202, baseType: !4155, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4156, file: !688, line: 203, baseType: !308, size: 64, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4156, file: !688, line: 205, baseType: !883, size: 192, align: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4156, file: !688, line: 207, baseType: !2666, size: 64, offset: 384)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4156, file: !688, line: 208, baseType: !7, size: 32, offset: 448)
!4165 = !DIDerivedType(tag: DW_TAG_member, scope: !4156, file: !688, line: 209, baseType: !4166, size: 256, offset: 512)
!4166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4156, file: !688, line: 209, size: 256, elements: !4167)
!4167 = !{!4168, !4177, !4181}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4166, file: !688, line: 210, baseType: !4169, size: 256)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !688, line: 153, size: 256, elements: !4170)
!4170 = !{!4171, !4172, !4173, !4176}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4169, file: !688, line: 154, baseType: !199, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4169, file: !688, line: 156, baseType: !1719, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4169, file: !688, line: 162, baseType: !4174, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !688, line: 162, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4169, file: !688, line: 167, baseType: !199, size: 64, offset: 192)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4166, file: !688, line: 211, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !688, line: 170, size: 64, elements: !4179)
!4179 = !{!4180}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4178, file: !688, line: 171, baseType: !4155, size: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4166, file: !688, line: 212, baseType: !4182, size: 256)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !688, line: 174, size: 256, elements: !4183)
!4183 = !{!4184, !4244, !4247, !4248}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4182, file: !688, line: 175, baseType: !4185, size: 64)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4187)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !688, line: 271, size: 768, elements: !4188)
!4188 = !{!4189, !4209, !4213, !4217, !4221, !4225, !4229, !4233, !4234, !4235, !4236, !4240}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4187, file: !688, line: 276, baseType: !4190, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DISubroutineType(types: !4192)
!4192 = !{!109, !4193}
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !688, line: 251, size: 1216, elements: !4195)
!4195 = !{!4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4194, file: !688, line: 253, baseType: !4155, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4194, file: !688, line: 254, baseType: !1853, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4194, file: !688, line: 255, baseType: !1211, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4194, file: !688, line: 256, baseType: !157, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4194, file: !688, line: 259, baseType: !773, size: 256, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4194, file: !688, line: 260, baseType: !773, size: 256, offset: 512)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4194, file: !688, line: 261, baseType: !109, size: 32, offset: 768)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4194, file: !688, line: 262, baseType: !282, size: 128, offset: 832)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4194, file: !688, line: 263, baseType: !440, size: 64, offset: 960)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4194, file: !688, line: 265, baseType: !485, size: 64, offset: 1024)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4194, file: !688, line: 266, baseType: !235, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4194, file: !688, line: 267, baseType: !235, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4194, file: !688, line: 268, baseType: !2250, size: 64, offset: 1152)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4187, file: !688, line: 277, baseType: !4210, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4211, size: 64)
!4211 = !DISubroutineType(types: !4212)
!4212 = !{null, !4193}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4187, file: !688, line: 290, baseType: !4214, size: 64, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!109, !1211, !157}
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4187, file: !688, line: 292, baseType: !4218, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!157, !1211, !2134}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4187, file: !688, line: 293, baseType: !4222, size: 64, offset: 256)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!157, !1211, !157, !2134}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4187, file: !688, line: 294, baseType: !4226, size: 64, offset: 320)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{null, !1211, !157}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4187, file: !688, line: 296, baseType: !4230, size: 64, offset: 384)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!470, !4193, !440, !485, !673}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4187, file: !688, line: 306, baseType: !485, size: 64, offset: 448)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4187, file: !688, line: 313, baseType: !235, size: 8, offset: 512)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4187, file: !688, line: 314, baseType: !4230, size: 64, offset: 576)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4187, file: !688, line: 317, baseType: !4237, size: 64, offset: 640)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!2192, !4193, !2194}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4187, file: !688, line: 320, baseType: !4241, size: 64, offset: 704)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!109, !4193, !2205}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4182, file: !688, line: 176, baseType: !4245, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !688, line: 35, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4182, file: !688, line: 177, baseType: !673, size: 64, offset: 128)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4182, file: !688, line: 178, baseType: !4155, size: 64, offset: 192)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4156, file: !688, line: 215, baseType: !157, size: 64, offset: 768)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4156, file: !688, line: 221, baseType: !217, size: 64, offset: 832)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4156, file: !688, line: 223, baseType: !223, size: 16, offset: 896)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4156, file: !688, line: 224, baseType: !480, size: 16, offset: 912)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4156, file: !688, line: 225, baseType: !4254, size: 64, offset: 960)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !688, line: 36, flags: DIFlagFwdDecl)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4156, file: !688, line: 227, baseType: !991, size: 128, align: 64, offset: 1024)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !365, file: !366, line: 71, baseType: !4258, size: 32, offset: 448)
!4258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4259, line: 19, size: 32, elements: !4260)
!4259 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4260 = !{!4261}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4258, file: !4259, line: 20, baseType: !1550, size: 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !365, file: !366, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !365, file: !366, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !365, file: !366, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !365, file: !366, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !365, file: !366, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !362, file: !94, line: 707, baseType: !361, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !362, file: !94, line: 709, baseType: !4269, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !362, file: !94, line: 711, baseType: !308, size: 64, offset: 640)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !94, line: 712, baseType: !4273, size: 64, offset: 704)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4275)
!4275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4276)
!4276 = !{!4277, !4278, !4279, !4285, !4290, !4294}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4275, file: !94, line: 90, baseType: !308, size: 64)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4275, file: !94, line: 91, baseType: !489, size: 64, offset: 64)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4275, file: !94, line: 92, baseType: !4280, size: 64, offset: 128)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!109, !4283, !435}
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4275, file: !94, line: 93, baseType: !4286, size: 64, offset: 192)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!440, !4283, !4289, !4152, !4153}
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4275, file: !94, line: 95, baseType: !4291, size: 64, offset: 256)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DISubroutineType(types: !4293)
!4293 = !{null, !361}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4275, file: !94, line: 97, baseType: !4295, size: 64, offset: 320)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4298)
!4298 = !{!4299, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4297, file: !101, line: 287, baseType: !4300, size: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!109, !361}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4297, file: !101, line: 288, baseType: !4291, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4297, file: !101, line: 289, baseType: !4300, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4297, file: !101, line: 290, baseType: !4300, size: 64, offset: 192)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4297, file: !101, line: 291, baseType: !4300, size: 64, offset: 256)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4297, file: !101, line: 292, baseType: !4300, size: 64, offset: 320)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4297, file: !101, line: 293, baseType: !4300, size: 64, offset: 384)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4297, file: !101, line: 294, baseType: !4300, size: 64, offset: 448)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4297, file: !101, line: 295, baseType: !4300, size: 64, offset: 512)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4297, file: !101, line: 296, baseType: !4300, size: 64, offset: 576)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4297, file: !101, line: 297, baseType: !4300, size: 64, offset: 640)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4297, file: !101, line: 298, baseType: !4300, size: 64, offset: 704)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4297, file: !101, line: 299, baseType: !4300, size: 64, offset: 768)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4297, file: !101, line: 300, baseType: !4300, size: 64, offset: 832)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4297, file: !101, line: 301, baseType: !4300, size: 64, offset: 896)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4297, file: !101, line: 302, baseType: !4300, size: 64, offset: 960)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4297, file: !101, line: 303, baseType: !4300, size: 64, offset: 1024)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4297, file: !101, line: 304, baseType: !4300, size: 64, offset: 1088)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4297, file: !101, line: 305, baseType: !4300, size: 64, offset: 1152)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4297, file: !101, line: 306, baseType: !4300, size: 64, offset: 1216)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4297, file: !101, line: 307, baseType: !4300, size: 64, offset: 1280)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4297, file: !101, line: 308, baseType: !4300, size: 64, offset: 1344)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4297, file: !101, line: 309, baseType: !4300, size: 64, offset: 1408)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !362, file: !94, line: 714, baseType: !4326, size: 64, offset: 768)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4328)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4329, line: 80, size: 1344, elements: !4330)
!4329 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4409}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4328, file: !4329, line: 81, baseType: !308, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4328, file: !4329, line: 82, baseType: !308, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4328, file: !4329, line: 83, baseType: !489, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4328, file: !4329, line: 84, baseType: !489, size: 64, offset: 192)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4328, file: !4329, line: 85, baseType: !489, size: 64, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4328, file: !4329, line: 87, baseType: !4337, size: 64, offset: 320)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!109, !361, !4340}
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4342)
!4342 = !{!4343, !4344, !4345, !4346, !4347, !4348, !4349, !4362, !4372, !4373, !4374, !4375, !4376, !4384, !4385, !4386, !4387, !4388, !4389}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4341, file: !88, line: 97, baseType: !308, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4341, file: !88, line: 98, baseType: !4326, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4341, file: !88, line: 100, baseType: !702, size: 64, offset: 128)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4341, file: !88, line: 101, baseType: !308, size: 64, offset: 192)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4341, file: !88, line: 103, baseType: !235, size: 8, offset: 256)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4341, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4341, file: !88, line: 106, baseType: !4350, size: 64, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4352)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4353, line: 282, size: 1600, elements: !4354)
!4353 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4354 = !{!4355, !4356, !4357, !4361}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4352, file: !4353, line: 283, baseType: !3614, size: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4352, file: !4353, line: 284, baseType: !3614, size: 256, offset: 256)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4352, file: !4353, line: 285, baseType: !4358, size: 1024, offset: 512)
!4358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 1024, elements: !4359)
!4359 = !{!4360}
!4360 = !DISubrange(count: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4352, file: !4353, line: 286, baseType: !2666, size: 64, offset: 1536)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4341, file: !88, line: 107, baseType: !4363, size: 64, offset: 384)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4365)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4353, line: 217, size: 256, elements: !4366)
!4366 = !{!4367, !4368, !4370, !4371}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4365, file: !4353, line: 218, baseType: !3621, size: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4365, file: !4353, line: 219, baseType: !4369, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4353, line: 15, baseType: !199)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4365, file: !4353, line: 220, baseType: !160, size: 32, offset: 192)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4365, file: !4353, line: 221, baseType: !160, size: 32, offset: 224)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4341, file: !88, line: 109, baseType: !4300, size: 64, offset: 448)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4341, file: !88, line: 110, baseType: !4291, size: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4341, file: !88, line: 111, baseType: !4300, size: 64, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4341, file: !88, line: 112, baseType: !4291, size: 64, offset: 640)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4341, file: !88, line: 113, baseType: !4377, size: 64, offset: 704)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!109, !361, !4380}
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4382)
!4382 = !{!4383}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4381, file: !101, line: 59, baseType: !109, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4341, file: !88, line: 114, baseType: !4300, size: 64, offset: 768)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4341, file: !88, line: 115, baseType: !489, size: 64, offset: 832)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4341, file: !88, line: 116, baseType: !489, size: 64, offset: 896)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4341, file: !88, line: 118, baseType: !4295, size: 64, offset: 960)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4341, file: !88, line: 119, baseType: !4291, size: 64, offset: 1024)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4341, file: !88, line: 121, baseType: !4390, size: 64, offset: 1088)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4328, file: !4329, line: 88, baseType: !4280, size: 64, offset: 384)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4328, file: !4329, line: 89, baseType: !4300, size: 64, offset: 448)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4328, file: !4329, line: 90, baseType: !4291, size: 64, offset: 512)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4328, file: !4329, line: 91, baseType: !4291, size: 64, offset: 576)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4328, file: !4329, line: 92, baseType: !4291, size: 64, offset: 640)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4328, file: !4329, line: 94, baseType: !4300, size: 64, offset: 704)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4328, file: !4329, line: 95, baseType: !4300, size: 64, offset: 768)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4328, file: !4329, line: 97, baseType: !4377, size: 64, offset: 832)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4328, file: !4329, line: 98, baseType: !4300, size: 64, offset: 896)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4328, file: !4329, line: 100, baseType: !4300, size: 64, offset: 960)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4328, file: !4329, line: 102, baseType: !4300, size: 64, offset: 1024)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4328, file: !4329, line: 103, baseType: !4291, size: 64, offset: 1088)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4328, file: !4329, line: 105, baseType: !4295, size: 64, offset: 1152)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4328, file: !4329, line: 107, baseType: !4406, size: 64, offset: 1216)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4408)
!4408 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4329, line: 107, flags: DIFlagFwdDecl)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4328, file: !4329, line: 109, baseType: !235, size: 8, offset: 1280)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !362, file: !94, line: 715, baseType: !4340, size: 64, offset: 832)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !362, file: !94, line: 717, baseType: !157, size: 64, offset: 896)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !362, file: !94, line: 719, baseType: !157, size: 64, offset: 960)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !362, file: !94, line: 721, baseType: !773, size: 256, offset: 1024)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !362, file: !94, line: 725, baseType: !4415, size: 448, offset: 1280)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4416)
!4416 = !{!4417, !4418, !4419, !4420}
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4415, file: !94, line: 518, baseType: !282, size: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4415, file: !94, line: 519, baseType: !282, size: 128, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4415, file: !94, line: 520, baseType: !282, size: 128, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4415, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !362, file: !94, line: 726, baseType: !4422, size: 2496, offset: 1728)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4423)
!4423 = !{!4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4506, !4510}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4422, file: !101, line: 664, baseType: !4380, size: 32)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4422, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4422, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4422, file: !101, line: 667, baseType: !235, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4422, file: !101, line: 668, baseType: !235, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4422, file: !101, line: 669, baseType: !235, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4422, file: !101, line: 670, baseType: !235, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4422, file: !101, line: 671, baseType: !235, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4422, file: !101, line: 672, baseType: !235, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4422, file: !101, line: 673, baseType: !235, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4422, file: !101, line: 674, baseType: !235, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4422, file: !101, line: 675, baseType: !158, size: 32, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4422, file: !101, line: 676, baseType: !378, size: 32, offset: 96)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4422, file: !101, line: 678, baseType: !282, size: 128, offset: 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4422, file: !101, line: 679, baseType: !722, size: 256, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4422, file: !101, line: 680, baseType: !4440, size: 64, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4442, line: 43, size: 1536, elements: !4443)
!4442 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4443 = !{!4444, !4445, !4446, !4447, !4448, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4441, file: !4442, line: 44, baseType: !308, size: 64)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4441, file: !4442, line: 45, baseType: !109, size: 32, offset: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4441, file: !4442, line: 46, baseType: !282, size: 128, offset: 128)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4441, file: !4442, line: 47, baseType: !378, size: 32, offset: 256)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4441, file: !4442, line: 48, baseType: !4449, size: 64, offset: 320)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4441, file: !4442, line: 49, baseType: !1011, size: 320, offset: 384)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4441, file: !4442, line: 50, baseType: !199, size: 64, offset: 704)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4441, file: !4442, line: 51, baseType: !1665, size: 64, offset: 768)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4441, file: !4442, line: 52, baseType: !1665, size: 64, offset: 832)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4441, file: !4442, line: 53, baseType: !1665, size: 64, offset: 896)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4441, file: !4442, line: 54, baseType: !1665, size: 64, offset: 960)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4441, file: !4442, line: 55, baseType: !1665, size: 64, offset: 1024)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4441, file: !4442, line: 56, baseType: !199, size: 64, offset: 1088)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4441, file: !4442, line: 57, baseType: !199, size: 64, offset: 1152)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4441, file: !4442, line: 58, baseType: !199, size: 64, offset: 1216)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4441, file: !4442, line: 59, baseType: !199, size: 64, offset: 1280)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4441, file: !4442, line: 60, baseType: !199, size: 64, offset: 1344)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4441, file: !4442, line: 61, baseType: !361, size: 64, offset: 1408)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4441, file: !4442, line: 62, baseType: !235, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4441, file: !4442, line: 63, baseType: !235, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4422, file: !101, line: 681, baseType: !235, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4422, file: !101, line: 682, baseType: !235, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4422, file: !101, line: 683, baseType: !235, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4422, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4422, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4422, file: !101, line: 690, baseType: !1657, size: 512, offset: 640)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4422, file: !101, line: 691, baseType: !217, size: 64, offset: 1152)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4422, file: !101, line: 692, baseType: !1029, size: 256, offset: 1216)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4422, file: !101, line: 693, baseType: !1523, size: 192, offset: 1472)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4422, file: !101, line: 694, baseType: !4449, size: 64, offset: 1664)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4422, file: !101, line: 695, baseType: !398, size: 32, offset: 1728)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4422, file: !101, line: 696, baseType: !398, size: 32, offset: 1760)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4422, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4422, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4422, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4422, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4422, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4422, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4422, file: !101, line: 703, baseType: !235, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4422, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4422, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4422, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4422, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4422, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4422, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4422, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4422, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4422, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4422, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4422, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4422, file: !101, line: 715, baseType: !217, size: 64, offset: 2048)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4422, file: !101, line: 716, baseType: !217, size: 64, offset: 2112)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4422, file: !101, line: 717, baseType: !217, size: 64, offset: 2176)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4422, file: !101, line: 718, baseType: !217, size: 64, offset: 2240)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4422, file: !101, line: 720, baseType: !4501, size: 64, offset: 2304)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4503)
!4503 = !{!4504, !4505}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4502, file: !101, line: 633, baseType: !378, size: 32)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4502, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4422, file: !101, line: 721, baseType: !4507, size: 64, offset: 2368)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !361, !769}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4422, file: !101, line: 722, baseType: !4511, size: 64, offset: 2432)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !362, file: !94, line: 727, baseType: !4514, size: 64, offset: 4224)
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4516)
!4516 = !{!4517, !4518, !4519, !4523, !4524, !4525}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4515, file: !101, line: 743, baseType: !4297, size: 1472)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4515, file: !101, line: 744, baseType: !4300, size: 64, offset: 1472)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4515, file: !101, line: 745, baseType: !4520, size: 64, offset: 1536)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{null, !361, !235}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4515, file: !101, line: 746, baseType: !4300, size: 64, offset: 1600)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4515, file: !101, line: 747, baseType: !4291, size: 64, offset: 1664)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4515, file: !101, line: 748, baseType: !4291, size: 64, offset: 1728)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !362, file: !94, line: 736, baseType: !4527, size: 128, offset: 4288)
!4527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4528)
!4528 = !{!4529, !4533}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4527, file: !94, line: 531, baseType: !4530, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4532, line: 13, flags: DIFlagFwdDecl)
!4532 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4527, file: !94, line: 532, baseType: !4534, size: 64, offset: 64)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !362, file: !94, line: 738, baseType: !4537, size: 64, offset: 4416)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4539)
!4539 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !362, file: !94, line: 740, baseType: !4541, size: 64, offset: 4480)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !362, file: !94, line: 741, baseType: !217, size: 64, offset: 4544)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !362, file: !94, line: 746, baseType: !217, size: 64, offset: 4608)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !362, file: !94, line: 747, baseType: !4545, size: 64, offset: 4672)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4547)
!4547 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !362, file: !94, line: 749, baseType: !4549, size: 64, offset: 4736)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4551)
!4551 = !{!4552, !4553, !4554}
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4550, file: !94, line: 433, baseType: !7, size: 32)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4550, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4550, file: !94, line: 435, baseType: !199, size: 64, offset: 64)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !362, file: !94, line: 751, baseType: !282, size: 128, offset: 4800)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !362, file: !94, line: 762, baseType: !4557, size: 64, offset: 4928)
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !362, file: !94, line: 770, baseType: !4560, offset: 4992)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4561, line: 5, elements: !1058)
!4561 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !362, file: !94, line: 772, baseType: !4563, size: 64, offset: 4992)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4565, line: 18, flags: DIFlagFwdDecl)
!4565 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !362, file: !94, line: 773, baseType: !4567, size: 64, offset: 5056)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4569, line: 41, size: 512, elements: !4570)
!4569 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4570 = !{!4571, !4572, !4666, !4667, !4668, !4669}
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4568, file: !4569, line: 42, baseType: !4567, size: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4568, file: !4569, line: 43, baseType: !4573, size: 64, offset: 64)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4575)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4569, line: 125, size: 1408, elements: !4576)
!4576 = !{!4577, !4581, !4585, !4591, !4595, !4596, !4601, !4605, !4609, !4613, !4617, !4618, !4622, !4626, !4630, !4641, !4642, !4643, !4644, !4654, !4658, !4662}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4575, file: !4569, line: 126, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!4567, !4567}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4575, file: !4569, line: 127, baseType: !4582, size: 64, offset: 64)
!4582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4583, size: 64)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{null, !4567}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4575, file: !4569, line: 128, baseType: !4586, size: 64, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!235, !4589}
!4589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4590, size: 64)
!4590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4568)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4575, file: !4569, line: 129, baseType: !4592, size: 64, offset: 192)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!2666, !4589, !4283}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4575, file: !4569, line: 131, baseType: !4586, size: 64, offset: 256)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4575, file: !4569, line: 133, baseType: !4597, size: 64, offset: 320)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!4600, !4589}
!4600 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4569, line: 132, flags: DIFlagFwdDecl)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4575, file: !4569, line: 134, baseType: !4602, size: 64, offset: 384)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!235, !4589, !308}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4575, file: !4569, line: 136, baseType: !4606, size: 64, offset: 448)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!109, !4589, !308, !7, !157, !485}
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4575, file: !4569, line: 141, baseType: !4610, size: 64, offset: 512)
!4610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4611, size: 64)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!109, !4589, !308, !1106, !485}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4575, file: !4569, line: 144, baseType: !4614, size: 64, offset: 576)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!308, !4589}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4575, file: !4569, line: 145, baseType: !4614, size: 64, offset: 640)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4575, file: !4569, line: 146, baseType: !4619, size: 64, offset: 704)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!4567, !4589}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4575, file: !4569, line: 148, baseType: !4623, size: 64, offset: 768)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!4567, !4589, !4567}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4575, file: !4569, line: 151, baseType: !4627, size: 64, offset: 832)
!4627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4628, size: 64)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!4567, !4589, !308}
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4575, file: !4569, line: 153, baseType: !4631, size: 64, offset: 896)
!4631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4632, size: 64)
!4632 = !DISubroutineType(types: !4633)
!4633 = !{!109, !4589, !308, !308, !7, !7, !4634}
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4569, line: 94, size: 640, elements: !4636)
!4636 = !{!4637, !4638, !4639}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4635, file: !4569, line: 95, baseType: !4567, size: 64)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4635, file: !4569, line: 96, baseType: !7, size: 32, offset: 64)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4635, file: !4569, line: 97, baseType: !4640, size: 512, offset: 128)
!4640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 512, elements: !1700)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4575, file: !4569, line: 158, baseType: !4623, size: 64, offset: 960)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4575, file: !4569, line: 161, baseType: !4619, size: 64, offset: 1024)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4575, file: !4569, line: 163, baseType: !4578, size: 64, offset: 1088)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4575, file: !4569, line: 164, baseType: !4645, size: 64, offset: 1152)
!4645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4646, size: 64)
!4646 = !DISubroutineType(types: !4647)
!4647 = !{!109, !4589, !4648}
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4569, line: 73, size: 128, elements: !4650)
!4650 = !{!4651, !4652, !4653}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4649, file: !4569, line: 74, baseType: !7, size: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4649, file: !4569, line: 75, baseType: !7, size: 32, offset: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4649, file: !4569, line: 76, baseType: !4589, size: 64, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4575, file: !4569, line: 166, baseType: !4655, size: 64, offset: 1216)
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4656, size: 64)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!157, !4567, !109}
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4575, file: !4569, line: 167, baseType: !4659, size: 64, offset: 1280)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!109, !4589, !7}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4575, file: !4569, line: 168, baseType: !4663, size: 64, offset: 1344)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!109, !4567}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4568, file: !4569, line: 44, baseType: !361, size: 64, offset: 128)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4568, file: !4569, line: 45, baseType: !282, size: 128, offset: 192)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4568, file: !4569, line: 46, baseType: !282, size: 128, offset: 320)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4568, file: !4569, line: 47, baseType: !240, size: 8, offset: 448)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !362, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !362, file: !94, line: 778, baseType: !668, size: 32, offset: 5152)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !362, file: !94, line: 779, baseType: !158, size: 32, offset: 5184)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !362, file: !94, line: 781, baseType: !378, size: 32, offset: 5216)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !362, file: !94, line: 782, baseType: !282, size: 128, offset: 5248)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !362, file: !94, line: 784, baseType: !4676, size: 64, offset: 5376)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4678)
!4678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4679, line: 52, size: 768, elements: !4680)
!4679 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4680 = !{!4681, !4682, !4683, !4684, !4685, !4689, !4693, !4694, !4695, !4696, !4700, !4704}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4678, file: !4679, line: 53, baseType: !308, size: 64)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4678, file: !4679, line: 55, baseType: !489, size: 64, offset: 64)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4678, file: !4679, line: 56, baseType: !489, size: 64, offset: 128)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4678, file: !4679, line: 58, baseType: !4280, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4678, file: !4679, line: 59, baseType: !4686, size: 64, offset: 256)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!440, !4283, !4289}
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4678, file: !4679, line: 61, baseType: !4690, size: 64, offset: 320)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DISubroutineType(types: !4692)
!4692 = !{null, !4676}
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4678, file: !4679, line: 62, baseType: !4291, size: 64, offset: 384)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4678, file: !4679, line: 64, baseType: !4300, size: 64, offset: 448)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4678, file: !4679, line: 66, baseType: !4120, size: 64, offset: 512)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4678, file: !4679, line: 67, baseType: !4697, size: 64, offset: 576)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DISubroutineType(types: !4699)
!4699 = !{!2666, !4283}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4678, file: !4679, line: 69, baseType: !4701, size: 64, offset: 640)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DISubroutineType(types: !4703)
!4703 = !{null, !4283, !4152, !4153}
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4678, file: !4679, line: 71, baseType: !4295, size: 64, offset: 704)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !362, file: !94, line: 785, baseType: !489, size: 64, offset: 5440)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !362, file: !94, line: 787, baseType: !4291, size: 64, offset: 5504)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !362, file: !94, line: 788, baseType: !4708, size: 64, offset: 5568)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !362, file: !94, line: 789, baseType: !4711, size: 64, offset: 5632)
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !362, file: !94, line: 791, baseType: !4714, size: 64, offset: 5696)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4716)
!4716 = !{!4717, !4718, !4719, !4720, !4721}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4715, file: !94, line: 598, baseType: !116, size: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4715, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4715, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4715, file: !94, line: 601, baseType: !235, size: 8, offset: 96)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4715, file: !94, line: 602, baseType: !235, size: 8, offset: 104)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !362, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !362, file: !94, line: 795, baseType: !235, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !362, file: !94, line: 796, baseType: !235, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !362, file: !94, line: 797, baseType: !235, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !362, file: !94, line: 798, baseType: !235, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !362, file: !94, line: 799, baseType: !235, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !289, file: !279, line: 676, baseType: !362, size: 5824, offset: 2240)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !289, file: !279, line: 677, baseType: !503, size: 64, offset: 8064)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !289, file: !279, line: 678, baseType: !503, size: 64, offset: 8128)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !289, file: !279, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !289, file: !279, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !278, file: !279, line: 325, baseType: !288, size: 64, offset: 192)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !278, file: !279, line: 327, baseType: !157, size: 64, offset: 256)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !278, file: !279, line: 328, baseType: !346, size: 64, offset: 320)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !278, file: !279, line: 329, baseType: !4737, size: 64, offset: 384)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !279, line: 76, size: 832, elements: !4739)
!4739 = !{!4740, !4741, !4742, !4745, !4746}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4738, file: !279, line: 77, baseType: !288, size: 64)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4738, file: !279, line: 78, baseType: !282, size: 128, offset: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4738, file: !279, line: 79, baseType: !4743, size: 64, offset: 192)
!4743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4744, size: 64)
!4744 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !279, line: 79, flags: DIFlagFwdDecl)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4738, file: !279, line: 80, baseType: !174, size: 8, offset: 256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4738, file: !279, line: 81, baseType: !365, size: 512, offset: 320)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !278, file: !279, line: 331, baseType: !7, size: 32, offset: 448)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !278, file: !279, line: 332, baseType: !223, size: 16, offset: 480)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !278, file: !279, line: 333, baseType: !223, size: 16, offset: 496)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !278, file: !279, line: 334, baseType: !223, size: 16, offset: 512)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !278, file: !279, line: 335, baseType: !223, size: 16, offset: 528)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !278, file: !279, line: 336, baseType: !7, size: 32, offset: 544)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !278, file: !279, line: 337, baseType: !240, size: 8, offset: 576)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !278, file: !279, line: 338, baseType: !240, size: 8, offset: 584)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !278, file: !279, line: 344, baseType: !4756, size: 64, offset: 640)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !279, line: 319, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !278, file: !279, line: 345, baseType: !277, size: 64, offset: 704)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !278, file: !279, line: 347, baseType: !158, size: 32, offset: 768)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !278, file: !279, line: 348, baseType: !240, size: 8, offset: 800)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !278, file: !279, line: 349, baseType: !240, size: 8, offset: 808)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !278, file: !279, line: 350, baseType: !240, size: 8, offset: 816)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !278, file: !279, line: 351, baseType: !240, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !278, file: !279, line: 352, baseType: !240, size: 8, offset: 832)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !278, file: !279, line: 353, baseType: !240, size: 8, offset: 840)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !278, file: !279, line: 354, baseType: !221, size: 16, offset: 848)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !278, file: !279, line: 355, baseType: !1120, size: 64, offset: 896)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !278, file: !279, line: 357, baseType: !4769, size: 64, offset: 960)
!4769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4770, size: 64)
!4770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !279, line: 918, size: 2368, elements: !4771)
!4771 = !{!4772, !4773, !4774, !4787, !4791, !4795, !4799, !4803, !4804, !4808, !4809, !4813, !4833, !4834, !4835, !4836, !4841}
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4770, file: !279, line: 919, baseType: !282, size: 128)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4770, file: !279, line: 920, baseType: !308, size: 64, offset: 128)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4770, file: !279, line: 921, baseType: !4775, size: 64, offset: 192)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4777)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4353, line: 44, size: 320, elements: !4778)
!4778 = !{!4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4777, file: !4353, line: 45, baseType: !160, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4777, file: !4353, line: 45, baseType: !160, size: 32, offset: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4777, file: !4353, line: 46, baseType: !160, size: 32, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4777, file: !4353, line: 46, baseType: !160, size: 32, offset: 96)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4777, file: !4353, line: 47, baseType: !160, size: 32, offset: 128)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4777, file: !4353, line: 47, baseType: !160, size: 32, offset: 160)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4777, file: !4353, line: 48, baseType: !4369, size: 64, offset: 192)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4777, file: !4353, line: 49, baseType: !160, size: 32, offset: 256)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4770, file: !279, line: 922, baseType: !4788, size: 64, offset: 256)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!109, !277, !4775}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4770, file: !279, line: 923, baseType: !4792, size: 64, offset: 320)
!4792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4793, size: 64)
!4793 = !DISubroutineType(types: !4794)
!4794 = !{null, !277}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4770, file: !279, line: 924, baseType: !4796, size: 64, offset: 384)
!4796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4797, size: 64)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!109, !277, !4380}
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4770, file: !279, line: 925, baseType: !4800, size: 64, offset: 448)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!109, !277}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4770, file: !279, line: 926, baseType: !4792, size: 64, offset: 512)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4770, file: !279, line: 927, baseType: !4805, size: 64, offset: 576)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4806, size: 64)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!109, !277, !109}
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4770, file: !279, line: 928, baseType: !4805, size: 64, offset: 640)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4770, file: !279, line: 929, baseType: !4810, size: 64, offset: 704)
!4810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4811, size: 64)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!158, !277}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4770, file: !279, line: 930, baseType: !4814, size: 64, offset: 768)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4816)
!4816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !279, line: 837, size: 448, elements: !4817)
!4817 = !{!4818, !4824, !4828, !4829, !4830, !4831, !4832}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4816, file: !279, line: 839, baseType: !4819, size: 64)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!4822, !277, !4823}
!4822 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !279, line: 814, baseType: !7)
!4823 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !279, line: 196, baseType: !7)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4816, file: !279, line: 843, baseType: !4825, size: 64, offset: 64)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DISubroutineType(types: !4827)
!4827 = !{!4822, !277}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4816, file: !279, line: 846, baseType: !4825, size: 64, offset: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4816, file: !279, line: 849, baseType: !4792, size: 64, offset: 192)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4816, file: !279, line: 850, baseType: !4792, size: 64, offset: 256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4816, file: !279, line: 853, baseType: !4792, size: 64, offset: 320)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4816, file: !279, line: 856, baseType: !4792, size: 64, offset: 384)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4770, file: !279, line: 931, baseType: !489, size: 64, offset: 832)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4770, file: !279, line: 932, baseType: !489, size: 64, offset: 896)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4770, file: !279, line: 933, baseType: !4341, size: 1152, offset: 960)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4770, file: !279, line: 934, baseType: !4837, size: 192, offset: 2112)
!4837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !279, line: 801, size: 192, elements: !4838)
!4838 = !{!4839, !4840}
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4837, file: !279, line: 802, baseType: !378, size: 32)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4837, file: !279, line: 803, baseType: !282, size: 128, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4770, file: !279, line: 935, baseType: !235, size: 8, offset: 2304)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !278, file: !279, line: 358, baseType: !217, size: 64, offset: 1024)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !278, file: !279, line: 364, baseType: !4550, size: 128, offset: 1088)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !278, file: !279, line: 366, baseType: !4845, size: 32, offset: 1216)
!4845 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !279, line: 171, baseType: !109)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !278, file: !279, line: 369, baseType: !240, size: 8, offset: 1248)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !278, file: !279, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !278, file: !279, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !278, file: !279, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !278, file: !279, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !278, file: !279, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !278, file: !279, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !278, file: !279, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !278, file: !279, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !278, file: !279, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !278, file: !279, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !278, file: !279, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !278, file: !279, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !278, file: !279, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !278, file: !279, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !278, file: !279, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !278, file: !279, line: 390, baseType: !7, size: 32, offset: 1280)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !278, file: !279, line: 391, baseType: !7, size: 32, offset: 1312)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !278, file: !279, line: 394, baseType: !4865, size: 64, offset: 1344)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !279, line: 316, flags: DIFlagFwdDecl)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !278, file: !279, line: 395, baseType: !221, size: 16, offset: 1408)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !278, file: !279, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !278, file: !279, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !278, file: !279, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !278, file: !279, line: 402, baseType: !4823, size: 32, offset: 1440)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !278, file: !279, line: 403, baseType: !362, size: 5824, offset: 1472)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !278, file: !279, line: 405, baseType: !109, size: 32, offset: 7296)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !278, file: !279, line: 411, baseType: !7, size: 32, offset: 7328)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !278, file: !279, line: 412, baseType: !4876, size: 5632, offset: 7360)
!4876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 5632, elements: !4877)
!4877 = !{!4878}
!4878 = !DISubrange(count: 11)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !278, file: !279, line: 413, baseType: !300, size: 512, offset: 12992)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !278, file: !279, line: 415, baseType: !235, size: 8, offset: 13504)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !278, file: !279, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !278, file: !279, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !278, file: !279, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !278, file: !279, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !278, file: !279, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !278, file: !279, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !278, file: !279, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !278, file: !279, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !278, file: !279, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !278, file: !279, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !278, file: !279, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !278, file: !279, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !278, file: !279, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !278, file: !279, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !278, file: !279, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !278, file: !279, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !278, file: !279, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !278, file: !279, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !278, file: !279, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !278, file: !279, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !278, file: !279, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !278, file: !279, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !278, file: !279, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !278, file: !279, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !278, file: !279, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !278, file: !279, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !278, file: !279, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !278, file: !279, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !278, file: !279, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !278, file: !279, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !278, file: !279, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !278, file: !279, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !278, file: !279, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !278, file: !279, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !278, file: !279, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !278, file: !279, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !278, file: !279, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !278, file: !279, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !278, file: !279, line: 468, baseType: !4920, size: 16, offset: 13552)
!4920 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !279, line: 222, baseType: !223)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !278, file: !279, line: 469, baseType: !398, size: 32, offset: 13568)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !278, file: !279, line: 471, baseType: !378, size: 32, offset: 13600)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !278, file: !279, line: 472, baseType: !4924, size: 512, offset: 13632)
!4924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 512, elements: !203)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !278, file: !279, line: 473, baseType: !1139, size: 64, offset: 14144)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !278, file: !279, line: 474, baseType: !4927, size: 704, offset: 14208)
!4927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 704, elements: !4877)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !278, file: !279, line: 475, baseType: !4927, size: 704, offset: 14912)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !278, file: !279, line: 487, baseType: !157, size: 64, offset: 15616)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !278, file: !279, line: 488, baseType: !731, size: 32, offset: 15680)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !278, file: !279, line: 490, baseType: !4932, size: 320, offset: 15744)
!4932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !279, line: 309, size: 320, elements: !4933)
!4933 = !{!4934, !4935, !4936}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4932, file: !279, line: 310, baseType: !773, size: 256)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4932, file: !279, line: 311, baseType: !7, size: 32, offset: 256)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4932, file: !279, line: 312, baseType: !240, size: 8, offset: 288)
!4937 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !279, line: 497, baseType: !4938, size: 64, offset: 16064)
!4938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !279, line: 497, size: 64, elements: !4939)
!4939 = !{!4940, !4943}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4938, file: !279, line: 498, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !279, line: 317, flags: DIFlagFwdDecl)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4938, file: !279, line: 499, baseType: !277, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !278, file: !279, line: 501, baseType: !221, size: 16, offset: 16128)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !278, file: !279, line: 502, baseType: !240, size: 8, offset: 16144)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !278, file: !279, line: 505, baseType: !221, size: 16, offset: 16160)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !278, file: !279, line: 506, baseType: !158, size: 32, offset: 16192)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !278, file: !279, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !278, file: !279, line: 510, baseType: !221, size: 16, offset: 16240)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !278, file: !279, line: 511, baseType: !221, size: 16, offset: 16256)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !278, file: !279, line: 519, baseType: !221, size: 16, offset: 16272)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !278, file: !279, line: 520, baseType: !305, size: 64, offset: 16320)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !278, file: !279, line: 521, baseType: !485, size: 64, offset: 16384)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !278, file: !279, line: 526, baseType: !308, size: 64, offset: 16448)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !278, file: !279, line: 528, baseType: !199, size: 64, offset: 16512)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !278, file: !279, line: 531, baseType: !4957, size: 56, offset: 16576)
!4957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 56, elements: !892)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "misc", scope: !273, file: !274, line: 63, baseType: !277, size: 64, offset: 64)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !273, file: !274, line: 64, baseType: !277, size: 64, offset: 128)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "l3_cache", scope: !273, file: !274, line: 65, baseType: !4961, size: 64, offset: 192)
!4961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_l3_cache", file: !274, line: 27, size: 64, elements: !4962)
!4962 = !{!4963, !4964}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "indices", scope: !4961, file: !274, line: 28, baseType: !7, size: 32)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "subcaches", scope: !4961, file: !274, line: 29, baseType: !4965, size: 32, offset: 32)
!4965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 32, elements: !315)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "bank4", scope: !273, file: !274, line: 66, baseType: !4967, size: 64, offset: 256)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "threshold_bank", file: !274, line: 52, size: 192, elements: !4969)
!4969 = !{!4970, !4971, !4984, !4985}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4968, file: !274, line: 53, baseType: !371, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4968, file: !274, line: 54, baseType: !4972, size: 64, offset: 64)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "threshold_block", file: !274, line: 32, size: 832, elements: !4974)
!4974 = !{!4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4973, file: !274, line: 33, baseType: !7, size: 32)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "bank", scope: !4973, file: !274, line: 34, baseType: !7, size: 32, offset: 32)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4973, file: !274, line: 35, baseType: !7, size: 32, offset: 64)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4973, file: !274, line: 36, baseType: !158, size: 32, offset: 96)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_enable", scope: !4973, file: !274, line: 37, baseType: !221, size: 16, offset: 128)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_capable", scope: !4973, file: !274, line: 38, baseType: !235, size: 8, offset: 144)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "threshold_limit", scope: !4973, file: !274, line: 40, baseType: !221, size: 16, offset: 160)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4973, file: !274, line: 45, baseType: !365, size: 512, offset: 192)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "miscj", scope: !4973, file: !274, line: 46, baseType: !282, size: 128, offset: 704)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "cpus", scope: !4968, file: !274, line: 57, baseType: !1550, size: 32, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !4968, file: !274, line: 58, baseType: !7, size: 32, offset: 160)
!4986 = !DILocalVariable(name: "__vpp_verify", scope: !4987, file: !3, line: 406, type: !2666)
!4987 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 406, column: 46)
!4988 = distinct !DILexicalBlock(scope: !265, file: !3, line: 406, column: 46)
!4989 = !DILocalVariable(name: "__ptr", scope: !4990, file: !3, line: 406, type: !199)
!4990 = distinct !DILexicalBlock(scope: !4988, file: !3, line: 406, column: 46)
!4991 = !DILocalVariable(name: "reg", scope: !265, file: !3, line: 407, type: !7)
!4992 = !DILocalVariable(name: "cuid", scope: !265, file: !3, line: 408, type: !109)
!4993 = !DILocalVariable(name: "__vpp_verify", scope: !4994, file: !3, line: 426, type: !2666)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 426, column: 9)
!4995 = distinct !DILexicalBlock(scope: !265, file: !3, line: 426, column: 9)
!4996 = !DILocalVariable(name: "__ptr", scope: !4997, file: !3, line: 426, type: !199)
!4997 = distinct !DILexicalBlock(scope: !4995, file: !3, line: 426, column: 9)
!4998 = !DIGlobalVariableExpression(var: !4999, expr: !DIExpression())
!4999 = distinct !DIGlobalVariable(name: "ban", scope: !265, file: !3, line: 405, type: !7, isLocal: true, isDefinition: true)
!5000 = !DIGlobalVariableExpression(var: !5001, expr: !DIExpression())
!5001 = distinct !DIGlobalVariable(name: "gart_lock", scope: !5002, file: !3, line: 465, type: !378, isLocal: true, isDefinition: true)
!5002 = distinct !DISubprogram(name: "amd_flush_garts", scope: !3, file: !3, line: 461, type: !1134, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5003)
!5003 = !{!5004, !5005, !5006, !5007, !5011, !5012}
!5004 = !DILocalVariable(name: "flushed", scope: !5002, file: !3, line: 463, type: !109)
!5005 = !DILocalVariable(name: "i", scope: !5002, file: !3, line: 463, type: !109)
!5006 = !DILocalVariable(name: "flags", scope: !5002, file: !3, line: 464, type: !199)
!5007 = !DILocalVariable(name: "__dummy", scope: !5008, file: !3, line: 476, type: !199)
!5008 = distinct !DILexicalBlock(scope: !5009, file: !3, line: 476, column: 2)
!5009 = distinct !DILexicalBlock(scope: !5010, file: !3, line: 476, column: 2)
!5010 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 476, column: 2)
!5011 = !DILocalVariable(name: "__dummy2", scope: !5008, file: !3, line: 476, type: !199)
!5012 = !DILocalVariable(name: "w", scope: !5013, file: !3, line: 484, type: !158)
!5013 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 483, column: 45)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 483, column: 2)
!5015 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 483, column: 2)
!5016 = !DIGlobalVariableExpression(var: !5017, expr: !DIExpression())
!5017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !5018, isLocal: true, isDefinition: true)
!5018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 232, elements: !5019)
!5019 = !{!5020}
!5020 = !DISubrange(count: 29)
!5021 = !DIGlobalVariableExpression(var: !5022, expr: !DIExpression())
!5022 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_amd_flush_garts297", scope: !2, file: !3, line: 498, type: !157, isLocal: true, isDefinition: true)
!5023 = !DIGlobalVariableExpression(var: !5024, expr: !DIExpression())
!5024 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_amd_nb__298_550_init_amd_nbs5299", scope: !2, file: !3, line: 550, type: !157, isLocal: true, isDefinition: true)
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "flush_words", scope: !2, file: !3, line: 51, type: !339, isLocal: true, isDefinition: true)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(name: "amd_northbridges", scope: !2, file: !3, line: 150, type: !5029, isLocal: true, isDefinition: true)
!5029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_northbridge_info", file: !274, line: 69, size: 192, elements: !5030)
!5030 = !{!5031, !5032, !5033}
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5029, file: !274, line: 70, baseType: !221, size: 16)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5029, file: !274, line: 71, baseType: !217, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "nb", scope: !5029, file: !274, line: 72, baseType: !272, size: 64, offset: 128)
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !5036, isLocal: true, isDefinition: true)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 376, elements: !5037)
!5037 = !{!5038}
!5038 = !DISubrange(count: 47)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !5041, isLocal: true, isDefinition: true)
!5041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 304, elements: !5042)
!5042 = !{!5043}
!5043 = !DISubrange(count: 38)
!5044 = !DIGlobalVariableExpression(var: !5045, expr: !DIExpression())
!5045 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !5046, isLocal: true, isDefinition: true)
!5046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 88, elements: !4877)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !5049, isLocal: true, isDefinition: true)
!5049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 104, elements: !5050)
!5050 = !{!5051}
!5051 = !DISubrange(count: 13)
!5052 = !DIGlobalVariableExpression(var: !5053, expr: !DIExpression())
!5053 = distinct !DIGlobalVariable(name: "smn_mutex", scope: !2, file: !3, line: 49, type: !773, isLocal: true, isDefinition: true)
!5054 = !DIGlobalVariableExpression(var: !5055, expr: !DIExpression())
!5055 = distinct !DIGlobalVariable(name: "amd_nb_misc_ids", scope: !2, file: !3, line: 72, type: !5056, isLocal: true, isDefinition: true)
!5056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4776, size: 8960, elements: !5057)
!5057 = !{!5058}
!5058 = !DISubrange(count: 28)
!5059 = !DIGlobalVariableExpression(var: !5060, expr: !DIExpression())
!5060 = distinct !DIGlobalVariable(name: "hygon_nb_misc_ids", scope: !2, file: !3, line: 133, type: !5061, isLocal: true, isDefinition: true)
!5061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4776, size: 640, elements: !890)
!5062 = !DIGlobalVariableExpression(var: !5063, expr: !DIExpression())
!5063 = distinct !DIGlobalVariable(scope: null, file: !3, line: 274, type: !5064, isLocal: true, isDefinition: true)
!5064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 432, elements: !5065)
!5065 = !{!5066}
!5066 = !DISubrange(count: 54)
!5067 = !DIGlobalVariableExpression(var: !5068, expr: !DIExpression())
!5068 = distinct !DIGlobalVariable(name: "amd_nb_link_ids", scope: !2, file: !3, line: 103, type: !5069, isLocal: true, isDefinition: true)
!5069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4776, size: 7040, elements: !5070)
!5070 = !{!5071}
!5071 = !DISubrange(count: 22)
!5072 = !DIGlobalVariableExpression(var: !5073, expr: !DIExpression())
!5073 = distinct !DIGlobalVariable(name: "amd_root_ids", scope: !2, file: !3, line: 53, type: !5074, isLocal: true, isDefinition: true)
!5074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4776, size: 4480, elements: !5075)
!5075 = !{!5076}
!5076 = !DISubrange(count: 14)
!5077 = !DIGlobalVariableExpression(var: !5078, expr: !DIExpression())
!5078 = distinct !DIGlobalVariable(name: "hygon_root_ids", scope: !2, file: !3, line: 128, type: !5061, isLocal: true, isDefinition: true)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "hygon_nb_link_ids", scope: !2, file: !3, line: 138, type: !5061, isLocal: true, isDefinition: true)
!5081 = !DIGlobalVariableExpression(var: !5082, expr: !DIExpression())
!5082 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !5083, isLocal: true, isDefinition: true)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 168, elements: !5084)
!5084 = !{!5085}
!5085 = !DISubrange(count: 21)
!5086 = !DIGlobalVariableExpression(var: !5087, expr: !DIExpression())
!5087 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !5088, isLocal: true, isDefinition: true)
!5088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 552, elements: !5089)
!5089 = !{!5090}
!5090 = !DISubrange(count: 69)
!5091 = !DIGlobalVariableExpression(var: !5092, expr: !DIExpression())
!5092 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !5064, isLocal: true, isDefinition: true)
!5093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5094, size: 96, elements: !315)
!5094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5095)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "amd_nb_bus_dev_range", file: !274, line: 9, size: 24, elements: !5096)
!5096 = !{!5097, !5098, !5099}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5095, file: !274, line: 10, baseType: !240, size: 8)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base", scope: !5095, file: !274, line: 11, baseType: !240, size: 8, offset: 8)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "dev_limit", scope: !5095, file: !274, line: 12, baseType: !240, size: 8, offset: 16)
!5100 = !{i32 7, !"Dwarf Version", i32 5}
!5101 = !{i32 2, !"Debug Info Version", i32 3}
!5102 = !{i32 1, !"wchar_size", i32 2}
!5103 = !{i32 8, !"cf-protection-branch", i32 1}
!5104 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5105 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5106 = !{i32 1, !"Code Model", i32 2}
!5107 = !{i32 1, !"override-stack-alignment", i32 8}
!5108 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5109 = distinct !DISubprogram(name: "amd_nb_num", scope: !3, file: !3, line: 152, type: !5110, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!221}
!5112 = !DILocation(line: 154, column: 26, scope: !5109)
!5113 = !DILocation(line: 154, column: 2, scope: !5109)
!5114 = distinct !DISubprogram(name: "amd_nb_has_feature", scope: !3, file: !3, line: 158, type: !5115, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5117)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!235, !7}
!5117 = !{!5118}
!5118 = !DILocalVariable(name: "feature", arg: 1, scope: !5114, file: !3, line: 158, type: !7)
!5119 = !DILocation(line: 158, column: 38, scope: !5114)
!5120 = !DILocation(line: 160, column: 28, scope: !5114)
!5121 = !DILocation(line: 160, column: 36, scope: !5114)
!5122 = !DILocation(line: 160, column: 34, scope: !5114)
!5123 = !DILocation(line: 160, column: 48, scope: !5114)
!5124 = !DILocation(line: 160, column: 45, scope: !5114)
!5125 = !DILocation(line: 160, column: 2, scope: !5114)
!5126 = distinct !DISubprogram(name: "node_to_amd_nb", scope: !3, file: !3, line: 164, type: !5127, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5129)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!272, !109}
!5129 = !{!5130}
!5130 = !DILocalVariable(name: "node", arg: 1, scope: !5126, file: !3, line: 164, type: !109)
!5131 = !DILocation(line: 164, column: 44, scope: !5126)
!5132 = !DILocation(line: 166, column: 10, scope: !5126)
!5133 = !DILocation(line: 166, column: 34, scope: !5126)
!5134 = !DILocation(line: 166, column: 17, scope: !5126)
!5135 = !DILocation(line: 166, column: 15, scope: !5126)
!5136 = !DILocation(line: 166, column: 9, scope: !5126)
!5137 = !DILocation(line: 166, column: 59, scope: !5126)
!5138 = !DILocation(line: 166, column: 62, scope: !5126)
!5139 = !DILocation(line: 166, column: 42, scope: !5126)
!5140 = !DILocation(line: 166, column: 2, scope: !5126)
!5141 = distinct !DISubprogram(name: "amd_smn_read", scope: !3, file: !3, line: 214, type: !5142, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5144)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!109, !221, !158, !339}
!5144 = !{!5145, !5146, !5147, !5148}
!5145 = !DILocalVariable(name: "node", arg: 1, scope: !5141, file: !3, line: 214, type: !221)
!5146 = !DILocalVariable(name: "address", arg: 2, scope: !5141, file: !3, line: 214, type: !158)
!5147 = !DILocalVariable(name: "value", arg: 3, scope: !5141, file: !3, line: 214, type: !339)
!5148 = !DILocalVariable(name: "err", scope: !5141, file: !3, line: 216, type: !109)
!5149 = !DILocation(line: 214, column: 22, scope: !5141)
!5150 = !DILocation(line: 214, column: 32, scope: !5141)
!5151 = !DILocation(line: 214, column: 46, scope: !5141)
!5152 = !DILocation(line: 216, column: 2, scope: !5141)
!5153 = !DILocation(line: 216, column: 6, scope: !5141)
!5154 = !DILocation(line: 216, column: 25, scope: !5141)
!5155 = !DILocation(line: 216, column: 31, scope: !5141)
!5156 = !DILocation(line: 216, column: 40, scope: !5141)
!5157 = !DILocation(line: 216, column: 12, scope: !5141)
!5158 = !DILocation(line: 218, column: 6, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5141, file: !3, line: 218, column: 6)
!5160 = !DILocation(line: 218, column: 6, scope: !5141)
!5161 = !DILocation(line: 219, column: 7, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 218, column: 34)
!5163 = !DILocation(line: 220, column: 4, scope: !5162)
!5164 = !DILocation(line: 220, column: 10, scope: !5162)
!5165 = !DILocation(line: 221, column: 2, scope: !5162)
!5166 = !DILocation(line: 223, column: 9, scope: !5141)
!5167 = !DILocation(line: 224, column: 1, scope: !5141)
!5168 = !DILocation(line: 223, column: 2, scope: !5141)
!5169 = distinct !DISubprogram(name: "__amd_smn_rw", scope: !3, file: !3, line: 181, type: !5170, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5172)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!109, !221, !158, !339, !235}
!5172 = !{!5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180}
!5173 = !DILocalVariable(name: "node", arg: 1, scope: !5169, file: !3, line: 181, type: !221)
!5174 = !DILocalVariable(name: "address", arg: 2, scope: !5169, file: !3, line: 181, type: !158)
!5175 = !DILocalVariable(name: "value", arg: 3, scope: !5169, file: !3, line: 181, type: !339)
!5176 = !DILocalVariable(name: "write", arg: 4, scope: !5169, file: !3, line: 181, type: !235)
!5177 = !DILocalVariable(name: "root", scope: !5169, file: !3, line: 183, type: !277)
!5178 = !DILocalVariable(name: "err", scope: !5169, file: !3, line: 184, type: !109)
!5179 = !DILabel(scope: !5169, name: "out_unlock", file: !3, line: 207)
!5180 = !DILabel(scope: !5169, name: "out", file: !3, line: 210)
!5181 = !DILocation(line: 181, column: 29, scope: !5169)
!5182 = !DILocation(line: 181, column: 39, scope: !5169)
!5183 = !DILocation(line: 181, column: 53, scope: !5169)
!5184 = !DILocation(line: 181, column: 65, scope: !5169)
!5185 = !DILocation(line: 183, column: 2, scope: !5169)
!5186 = !DILocation(line: 183, column: 18, scope: !5169)
!5187 = !DILocation(line: 184, column: 2, scope: !5169)
!5188 = !DILocation(line: 184, column: 6, scope: !5169)
!5189 = !DILocation(line: 186, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 186, column: 6)
!5191 = !DILocation(line: 186, column: 31, scope: !5190)
!5192 = !DILocation(line: 186, column: 14, scope: !5190)
!5193 = !DILocation(line: 186, column: 11, scope: !5190)
!5194 = !DILocation(line: 186, column: 6, scope: !5169)
!5195 = !DILocation(line: 187, column: 3, scope: !5190)
!5196 = !DILocation(line: 189, column: 24, scope: !5169)
!5197 = !DILocation(line: 189, column: 9, scope: !5169)
!5198 = !DILocation(line: 189, column: 31, scope: !5169)
!5199 = !DILocation(line: 189, column: 7, scope: !5169)
!5200 = !DILocation(line: 190, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 190, column: 6)
!5202 = !DILocation(line: 190, column: 6, scope: !5169)
!5203 = !DILocation(line: 191, column: 3, scope: !5201)
!5204 = !DILocation(line: 193, column: 2, scope: !5169)
!5205 = !DILocation(line: 195, column: 31, scope: !5169)
!5206 = !DILocation(line: 195, column: 43, scope: !5169)
!5207 = !DILocation(line: 195, column: 8, scope: !5169)
!5208 = !DILocation(line: 195, column: 6, scope: !5169)
!5209 = !DILocation(line: 196, column: 6, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 196, column: 6)
!5211 = !DILocation(line: 196, column: 6, scope: !5169)
!5212 = !DILocation(line: 197, column: 3, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 197, column: 3)
!5214 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 196, column: 11)
!5215 = !DILocation(line: 197, column: 3, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 197, column: 3)
!5217 = !DILocation(line: 198, column: 3, scope: !5214)
!5218 = !DILocation(line: 201, column: 9, scope: !5169)
!5219 = !{i8 0, i8 2}
!5220 = !DILocation(line: 201, column: 40, scope: !5169)
!5221 = !DILocation(line: 201, column: 53, scope: !5169)
!5222 = !DILocation(line: 201, column: 52, scope: !5169)
!5223 = !DILocation(line: 201, column: 17, scope: !5169)
!5224 = !DILocation(line: 202, column: 32, scope: !5169)
!5225 = !DILocation(line: 202, column: 44, scope: !5169)
!5226 = !DILocation(line: 202, column: 10, scope: !5169)
!5227 = !DILocation(line: 201, column: 6, scope: !5169)
!5228 = !DILocation(line: 203, column: 6, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 203, column: 6)
!5230 = !DILocation(line: 203, column: 6, scope: !5169)
!5231 = !DILocation(line: 204, column: 3, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 204, column: 3)
!5233 = !DILocation(line: 204, column: 3, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5232, file: !3, line: 204, column: 3)
!5235 = !DILocation(line: 204, column: 3, scope: !5229)
!5236 = !DILocation(line: 207, column: 1, scope: !5169)
!5237 = !DILocation(line: 208, column: 2, scope: !5169)
!5238 = !DILocation(line: 210, column: 1, scope: !5169)
!5239 = !DILocation(line: 211, column: 9, scope: !5169)
!5240 = !DILocation(line: 212, column: 1, scope: !5169)
!5241 = !DILocation(line: 211, column: 2, scope: !5169)
!5242 = distinct !DISubprogram(name: "amd_smn_write", scope: !3, file: !3, line: 227, type: !5243, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5245)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!109, !221, !158, !158}
!5245 = !{!5246, !5247, !5248}
!5246 = !DILocalVariable(name: "node", arg: 1, scope: !5242, file: !3, line: 227, type: !221)
!5247 = !DILocalVariable(name: "address", arg: 2, scope: !5242, file: !3, line: 227, type: !158)
!5248 = !DILocalVariable(name: "value", arg: 3, scope: !5242, file: !3, line: 227, type: !158)
!5249 = !DILocation(line: 227, column: 23, scope: !5242)
!5250 = !DILocation(line: 227, column: 33, scope: !5242)
!5251 = !DILocation(line: 227, column: 46, scope: !5242)
!5252 = !DILocation(line: 229, column: 22, scope: !5242)
!5253 = !DILocation(line: 229, column: 28, scope: !5242)
!5254 = !DILocation(line: 229, column: 9, scope: !5242)
!5255 = !DILocation(line: 229, column: 2, scope: !5242)
!5256 = distinct !DISubprogram(name: "early_is_amd_nb", scope: !3, file: !3, line: 341, type: !5257, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!235, !158}
!5259 = !{!5260, !5261, !5262, !5263}
!5260 = !DILocalVariable(name: "device", arg: 1, scope: !5256, file: !3, line: 341, type: !158)
!5261 = !DILocalVariable(name: "misc_ids", scope: !5256, file: !3, line: 343, type: !4775)
!5262 = !DILocalVariable(name: "id", scope: !5256, file: !3, line: 344, type: !4775)
!5263 = !DILocalVariable(name: "vendor", scope: !5256, file: !3, line: 345, type: !158)
!5264 = !DILocation(line: 341, column: 33, scope: !5256)
!5265 = !DILocation(line: 343, column: 2, scope: !5256)
!5266 = !DILocation(line: 343, column: 30, scope: !5256)
!5267 = !DILocation(line: 344, column: 2, scope: !5256)
!5268 = !DILocation(line: 344, column: 30, scope: !5256)
!5269 = !DILocation(line: 345, column: 2, scope: !5256)
!5270 = !DILocation(line: 345, column: 6, scope: !5256)
!5271 = !DILocation(line: 345, column: 15, scope: !5256)
!5272 = !DILocation(line: 345, column: 22, scope: !5256)
!5273 = !DILocation(line: 347, column: 20, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 347, column: 6)
!5275 = !DILocation(line: 347, column: 6, scope: !5274)
!5276 = !DILocation(line: 347, column: 31, scope: !5274)
!5277 = !DILocation(line: 347, column: 49, scope: !5274)
!5278 = !DILocation(line: 348, column: 20, scope: !5274)
!5279 = !DILocation(line: 348, column: 6, scope: !5274)
!5280 = !DILocation(line: 348, column: 31, scope: !5274)
!5281 = !DILocation(line: 347, column: 6, scope: !5256)
!5282 = !DILocation(line: 349, column: 3, scope: !5274)
!5283 = !DILocation(line: 351, column: 20, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 351, column: 6)
!5285 = !DILocation(line: 351, column: 6, scope: !5284)
!5286 = !DILocation(line: 351, column: 31, scope: !5284)
!5287 = !DILocation(line: 351, column: 6, scope: !5256)
!5288 = !DILocation(line: 352, column: 12, scope: !5284)
!5289 = !DILocation(line: 352, column: 3, scope: !5284)
!5290 = !DILocation(line: 354, column: 9, scope: !5256)
!5291 = !DILocation(line: 355, column: 12, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5256, file: !3, line: 355, column: 2)
!5293 = !DILocation(line: 355, column: 10, scope: !5292)
!5294 = !DILocation(line: 355, column: 7, scope: !5292)
!5295 = !DILocation(line: 355, column: 22, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 355, column: 2)
!5297 = !DILocation(line: 355, column: 26, scope: !5296)
!5298 = !DILocation(line: 355, column: 2, scope: !5292)
!5299 = !DILocation(line: 356, column: 7, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 356, column: 7)
!5301 = !DILocation(line: 356, column: 17, scope: !5300)
!5302 = !DILocation(line: 356, column: 21, scope: !5300)
!5303 = !DILocation(line: 356, column: 14, scope: !5300)
!5304 = !DILocation(line: 356, column: 28, scope: !5300)
!5305 = !DILocation(line: 356, column: 31, scope: !5300)
!5306 = !DILocation(line: 356, column: 41, scope: !5300)
!5307 = !DILocation(line: 356, column: 45, scope: !5300)
!5308 = !DILocation(line: 356, column: 38, scope: !5300)
!5309 = !DILocation(line: 356, column: 7, scope: !5296)
!5310 = !DILocation(line: 357, column: 4, scope: !5300)
!5311 = !DILocation(line: 355, column: 36, scope: !5296)
!5312 = !DILocation(line: 355, column: 2, scope: !5296)
!5313 = distinct !{!5313, !5298, !5314, !5315, !5316}
!5314 = !DILocation(line: 357, column: 11, scope: !5292)
!5315 = !{!"llvm.loop.mustprogress"}
!5316 = !{!"llvm.loop.unroll.disable"}
!5317 = !DILocation(line: 358, column: 2, scope: !5256)
!5318 = !DILocation(line: 359, column: 1, scope: !5256)
!5319 = distinct !DISubprogram(name: "amd_get_mmconfig_range", scope: !3, file: !3, line: 361, type: !5320, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5322)
!5320 = !DISubroutineType(types: !5321)
!5321 = !{!299, !299}
!5322 = !{!5323, !5324, !5325, !5326}
!5323 = !DILocalVariable(name: "res", arg: 1, scope: !5319, file: !3, line: 361, type: !299)
!5324 = !DILocalVariable(name: "base", scope: !5319, file: !3, line: 363, type: !217)
!5325 = !DILocalVariable(name: "msr", scope: !5319, file: !3, line: 363, type: !217)
!5326 = !DILocalVariable(name: "segn_busn_bits", scope: !5319, file: !3, line: 364, type: !7)
!5327 = !DILocation(line: 361, column: 58, scope: !5319)
!5328 = !DILocation(line: 363, column: 2, scope: !5319)
!5329 = !DILocation(line: 363, column: 6, scope: !5319)
!5330 = !DILocation(line: 363, column: 12, scope: !5319)
!5331 = !DILocation(line: 364, column: 2, scope: !5319)
!5332 = !DILocation(line: 364, column: 15, scope: !5319)
!5333 = !DILocation(line: 366, column: 20, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 366, column: 6)
!5335 = !DILocation(line: 366, column: 6, scope: !5334)
!5336 = !DILocation(line: 366, column: 31, scope: !5334)
!5337 = !DILocation(line: 366, column: 49, scope: !5334)
!5338 = !DILocation(line: 367, column: 20, scope: !5334)
!5339 = !DILocation(line: 367, column: 6, scope: !5334)
!5340 = !DILocation(line: 367, column: 31, scope: !5334)
!5341 = !DILocation(line: 366, column: 6, scope: !5319)
!5342 = !DILocation(line: 368, column: 3, scope: !5334)
!5343 = !DILocation(line: 371, column: 20, scope: !5344)
!5344 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 371, column: 6)
!5345 = !DILocation(line: 371, column: 6, scope: !5344)
!5346 = !DILocation(line: 371, column: 24, scope: !5344)
!5347 = !DILocation(line: 371, column: 31, scope: !5344)
!5348 = !DILocation(line: 372, column: 6, scope: !5344)
!5349 = !DILocation(line: 371, column: 6, scope: !5319)
!5350 = !DILocation(line: 373, column: 3, scope: !5344)
!5351 = !DILocation(line: 376, column: 8, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 376, column: 6)
!5353 = !DILocation(line: 376, column: 12, scope: !5352)
!5354 = !DILocation(line: 376, column: 6, scope: !5319)
!5355 = !DILocation(line: 377, column: 3, scope: !5352)
!5356 = !DILocation(line: 379, column: 9, scope: !5319)
!5357 = !DILocation(line: 379, column: 13, scope: !5319)
!5358 = !DILocation(line: 379, column: 7, scope: !5319)
!5359 = !DILocation(line: 381, column: 20, scope: !5319)
!5360 = !DILocation(line: 381, column: 24, scope: !5319)
!5361 = !DILocation(line: 381, column: 60, scope: !5319)
!5362 = !DILocation(line: 381, column: 19, scope: !5319)
!5363 = !DILocation(line: 381, column: 17, scope: !5319)
!5364 = !DILocation(line: 384, column: 2, scope: !5319)
!5365 = !DILocation(line: 384, column: 7, scope: !5319)
!5366 = !DILocation(line: 384, column: 13, scope: !5319)
!5367 = !DILocation(line: 385, column: 15, scope: !5319)
!5368 = !DILocation(line: 385, column: 2, scope: !5319)
!5369 = !DILocation(line: 385, column: 7, scope: !5319)
!5370 = !DILocation(line: 385, column: 13, scope: !5319)
!5371 = !DILocation(line: 386, column: 13, scope: !5319)
!5372 = !DILocation(line: 386, column: 28, scope: !5319)
!5373 = !DILocation(line: 386, column: 43, scope: !5319)
!5374 = !DILocation(line: 386, column: 25, scope: !5319)
!5375 = !DILocation(line: 386, column: 18, scope: !5319)
!5376 = !DILocation(line: 386, column: 50, scope: !5319)
!5377 = !DILocation(line: 386, column: 2, scope: !5319)
!5378 = !DILocation(line: 386, column: 7, scope: !5319)
!5379 = !DILocation(line: 386, column: 11, scope: !5319)
!5380 = !DILocation(line: 387, column: 9, scope: !5319)
!5381 = !DILocation(line: 387, column: 2, scope: !5319)
!5382 = !DILocation(line: 388, column: 1, scope: !5319)
!5383 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !5384, file: !5384, line: 281, type: !5385, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5388)
!5384 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!5385 = !DISubroutineType(types: !5386)
!5386 = !{!109, !7, !5387}
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!5388 = !{!5389, !5390, !5391}
!5389 = !DILocalVariable(name: "msr", arg: 1, scope: !5383, file: !5384, line: 281, type: !7)
!5390 = !DILocalVariable(name: "p", arg: 2, scope: !5383, file: !5384, line: 281, type: !5387)
!5391 = !DILocalVariable(name: "err", scope: !5383, file: !5384, line: 283, type: !109)
!5392 = !DILocation(line: 281, column: 44, scope: !5383)
!5393 = !DILocation(line: 281, column: 69, scope: !5383)
!5394 = !DILocation(line: 283, column: 2, scope: !5383)
!5395 = !DILocation(line: 283, column: 6, scope: !5383)
!5396 = !DILocation(line: 285, column: 28, scope: !5383)
!5397 = !DILocation(line: 285, column: 7, scope: !5383)
!5398 = !DILocation(line: 285, column: 3, scope: !5383)
!5399 = !DILocation(line: 285, column: 5, scope: !5383)
!5400 = !DILocation(line: 286, column: 9, scope: !5383)
!5401 = !DILocation(line: 287, column: 1, scope: !5383)
!5402 = !DILocation(line: 286, column: 2, scope: !5383)
!5403 = distinct !DISubprogram(name: "amd_get_subcaches", scope: !3, file: !3, line: 390, type: !2520, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5404)
!5404 = !{!5405, !5406, !5407, !5410, !5412, !5413, !5416}
!5405 = !DILocalVariable(name: "cpu", arg: 1, scope: !5403, file: !3, line: 390, type: !109)
!5406 = !DILocalVariable(name: "link", scope: !5403, file: !3, line: 392, type: !277)
!5407 = !DILocalVariable(name: "__vpp_verify", scope: !5408, file: !3, line: 392, type: !2666)
!5408 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 392, column: 40)
!5409 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 392, column: 40)
!5410 = !DILocalVariable(name: "__ptr", scope: !5411, file: !3, line: 392, type: !199)
!5411 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 392, column: 40)
!5412 = !DILocalVariable(name: "mask", scope: !5403, file: !3, line: 393, type: !7)
!5413 = !DILocalVariable(name: "__vpp_verify", scope: !5414, file: !3, line: 400, type: !2666)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 400, column: 23)
!5415 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 400, column: 23)
!5416 = !DILocalVariable(name: "__ptr", scope: !5417, file: !3, line: 400, type: !199)
!5417 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 400, column: 23)
!5418 = !DILocation(line: 390, column: 27, scope: !5403)
!5419 = !DILocation(line: 392, column: 2, scope: !5403)
!5420 = !DILocation(line: 392, column: 18, scope: !5403)
!5421 = !DILocation(line: 392, column: 40, scope: !5409)
!5422 = !DILocation(line: 392, column: 40, scope: !5408)
!5423 = !DILocation(line: 392, column: 40, scope: !5411)
!5424 = !DILocation(line: 392, column: 40, scope: !5403)
!5425 = !DILocation(line: 392, column: 25, scope: !5403)
!5426 = !DILocation(line: 392, column: 63, scope: !5403)
!5427 = !DILocation(line: 393, column: 2, scope: !5403)
!5428 = !DILocation(line: 393, column: 15, scope: !5403)
!5429 = !DILocation(line: 395, column: 7, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 395, column: 6)
!5431 = !DILocation(line: 395, column: 6, scope: !5403)
!5432 = !DILocation(line: 396, column: 3, scope: !5430)
!5433 = !DILocation(line: 398, column: 24, scope: !5403)
!5434 = !DILocation(line: 398, column: 2, scope: !5403)
!5435 = !DILocation(line: 400, column: 10, scope: !5403)
!5436 = !DILocation(line: 400, column: 23, scope: !5415)
!5437 = !DILocation(line: 400, column: 23, scope: !5414)
!5438 = !DILocation(line: 400, column: 23, scope: !5417)
!5439 = !DILocation(line: 400, column: 37, scope: !5403)
!5440 = !DILocation(line: 400, column: 23, scope: !5403)
!5441 = !DILocation(line: 400, column: 21, scope: !5403)
!5442 = !DILocation(line: 400, column: 15, scope: !5403)
!5443 = !DILocation(line: 400, column: 51, scope: !5403)
!5444 = !DILocation(line: 400, column: 2, scope: !5403)
!5445 = !DILocation(line: 401, column: 1, scope: !5403)
!5446 = !DISubprogram(name: "pci_read_config_dword", scope: !279, file: !279, line: 1215, type: !5447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5447 = !DISubroutineType(types: !5448)
!5448 = !{!109, !5449, !109, !339}
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!5451 = !DILocation(line: 403, column: 27, scope: !265)
!5452 = !DILocation(line: 403, column: 46, scope: !265)
!5453 = !DILocation(line: 406, column: 2, scope: !265)
!5454 = !DILocation(line: 406, column: 26, scope: !265)
!5455 = !DILocation(line: 406, column: 46, scope: !4988)
!5456 = !DILocation(line: 406, column: 46, scope: !4987)
!5457 = !DILocation(line: 406, column: 46, scope: !4990)
!5458 = !DILocation(line: 406, column: 46, scope: !265)
!5459 = !DILocation(line: 406, column: 31, scope: !265)
!5460 = !DILocation(line: 407, column: 2, scope: !265)
!5461 = !DILocation(line: 407, column: 15, scope: !265)
!5462 = !DILocation(line: 408, column: 2, scope: !265)
!5463 = !DILocation(line: 408, column: 6, scope: !265)
!5464 = !DILocation(line: 410, column: 7, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !265, file: !3, line: 410, column: 6)
!5466 = !DILocation(line: 410, column: 50, scope: !5465)
!5467 = !DILocation(line: 410, column: 53, scope: !5465)
!5468 = !DILocation(line: 410, column: 58, scope: !5465)
!5469 = !DILocation(line: 410, column: 6, scope: !265)
!5470 = !DILocation(line: 411, column: 3, scope: !5465)
!5471 = !DILocation(line: 414, column: 6, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !265, file: !3, line: 414, column: 6)
!5473 = !DILocation(line: 414, column: 12, scope: !5472)
!5474 = !DILocation(line: 414, column: 6, scope: !265)
!5475 = !DILocation(line: 415, column: 25, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 414, column: 18)
!5477 = !DILocation(line: 415, column: 29, scope: !5476)
!5478 = !DILocation(line: 415, column: 3, scope: !5476)
!5479 = !DILocation(line: 416, column: 25, scope: !5476)
!5480 = !DILocation(line: 416, column: 29, scope: !5476)
!5481 = !DILocation(line: 416, column: 3, scope: !5476)
!5482 = !DILocation(line: 417, column: 7, scope: !5476)
!5483 = !DILocation(line: 418, column: 2, scope: !5476)
!5484 = !DILocation(line: 421, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !265, file: !3, line: 421, column: 6)
!5486 = !DILocation(line: 421, column: 11, scope: !5485)
!5487 = !DILocation(line: 421, column: 6, scope: !265)
!5488 = !DILocation(line: 422, column: 25, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 421, column: 19)
!5490 = !DILocation(line: 422, column: 29, scope: !5489)
!5491 = !DILocation(line: 422, column: 3, scope: !5489)
!5492 = !DILocation(line: 423, column: 26, scope: !5489)
!5493 = !DILocation(line: 423, column: 30, scope: !5489)
!5494 = !DILocation(line: 423, column: 43, scope: !5489)
!5495 = !DILocation(line: 423, column: 47, scope: !5489)
!5496 = !DILocation(line: 423, column: 3, scope: !5489)
!5497 = !DILocation(line: 424, column: 2, scope: !5489)
!5498 = !DILocation(line: 426, column: 9, scope: !4995)
!5499 = !DILocation(line: 426, column: 9, scope: !4994)
!5500 = !DILocation(line: 426, column: 9, scope: !4997)
!5501 = !DILocation(line: 426, column: 23, scope: !265)
!5502 = !DILocation(line: 426, column: 9, scope: !265)
!5503 = !DILocation(line: 426, column: 7, scope: !265)
!5504 = !DILocation(line: 427, column: 15, scope: !265)
!5505 = !DILocation(line: 427, column: 13, scope: !265)
!5506 = !DILocation(line: 427, column: 7, scope: !265)
!5507 = !DILocation(line: 428, column: 23, scope: !265)
!5508 = !DILocation(line: 428, column: 20, scope: !265)
!5509 = !DILocation(line: 428, column: 15, scope: !265)
!5510 = !DILocation(line: 428, column: 30, scope: !265)
!5511 = !DILocation(line: 428, column: 10, scope: !265)
!5512 = !DILocation(line: 428, column: 7, scope: !265)
!5513 = !DILocation(line: 430, column: 25, scope: !265)
!5514 = !DILocation(line: 430, column: 29, scope: !265)
!5515 = !DILocation(line: 430, column: 42, scope: !265)
!5516 = !DILocation(line: 430, column: 2, scope: !265)
!5517 = !DILocation(line: 433, column: 24, scope: !265)
!5518 = !DILocation(line: 433, column: 28, scope: !265)
!5519 = !DILocation(line: 433, column: 2, scope: !265)
!5520 = !DILocation(line: 434, column: 6, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !265, file: !3, line: 434, column: 6)
!5522 = !DILocation(line: 434, column: 13, scope: !5521)
!5523 = !DILocation(line: 434, column: 10, scope: !5521)
!5524 = !DILocation(line: 434, column: 6, scope: !265)
!5525 = !DILocation(line: 435, column: 25, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5521, file: !3, line: 434, column: 20)
!5527 = !DILocation(line: 435, column: 29, scope: !5526)
!5528 = !DILocation(line: 435, column: 3, scope: !5526)
!5529 = !DILocation(line: 436, column: 7, scope: !5526)
!5530 = !DILocation(line: 437, column: 26, scope: !5526)
!5531 = !DILocation(line: 437, column: 30, scope: !5526)
!5532 = !DILocation(line: 437, column: 43, scope: !5526)
!5533 = !DILocation(line: 437, column: 49, scope: !5526)
!5534 = !DILocation(line: 437, column: 47, scope: !5526)
!5535 = !DILocation(line: 437, column: 3, scope: !5526)
!5536 = !DILocation(line: 438, column: 2, scope: !5526)
!5537 = !DILocation(line: 440, column: 2, scope: !265)
!5538 = !DILocation(line: 441, column: 1, scope: !265)
!5539 = !DISubprogram(name: "pci_write_config_dword", scope: !279, file: !279, line: 1218, type: !5540, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5540 = !DISubroutineType(types: !5541)
!5541 = !{!109, !5449, !109, !158}
!5542 = !DILocation(line: 463, column: 2, scope: !5002)
!5543 = !DILocation(line: 463, column: 6, scope: !5002)
!5544 = !DILocation(line: 463, column: 15, scope: !5002)
!5545 = !DILocation(line: 464, column: 2, scope: !5002)
!5546 = !DILocation(line: 464, column: 16, scope: !5002)
!5547 = !DILocation(line: 467, column: 7, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 467, column: 6)
!5549 = !DILocation(line: 467, column: 6, scope: !5002)
!5550 = !DILocation(line: 468, column: 3, scope: !5548)
!5551 = !DILocation(line: 476, column: 2, scope: !5002)
!5552 = !DILocation(line: 476, column: 2, scope: !5010)
!5553 = !DILocation(line: 476, column: 2, scope: !5008)
!5554 = !DILocation(line: 476, column: 2, scope: !5009)
!5555 = !DILocation(line: 477, column: 10, scope: !5002)
!5556 = !DILocation(line: 478, column: 9, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 478, column: 2)
!5558 = !DILocation(line: 478, column: 7, scope: !5557)
!5559 = !DILocation(line: 478, column: 14, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 478, column: 2)
!5561 = !DILocation(line: 478, column: 35, scope: !5560)
!5562 = !DILocation(line: 478, column: 18, scope: !5560)
!5563 = !DILocation(line: 478, column: 16, scope: !5560)
!5564 = !DILocation(line: 478, column: 2, scope: !5557)
!5565 = !DILocation(line: 479, column: 41, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5560, file: !3, line: 478, column: 45)
!5567 = !DILocation(line: 479, column: 26, scope: !5566)
!5568 = !DILocation(line: 479, column: 45, scope: !5566)
!5569 = !DILocation(line: 480, column: 12, scope: !5566)
!5570 = !DILocation(line: 480, column: 24, scope: !5566)
!5571 = !DILocation(line: 480, column: 27, scope: !5566)
!5572 = !DILocation(line: 479, column: 3, scope: !5566)
!5573 = !DILocation(line: 481, column: 10, scope: !5566)
!5574 = !DILocation(line: 482, column: 2, scope: !5566)
!5575 = !DILocation(line: 478, column: 41, scope: !5560)
!5576 = !DILocation(line: 478, column: 2, scope: !5560)
!5577 = distinct !{!5577, !5564, !5578, !5315, !5316}
!5578 = !DILocation(line: 482, column: 2, scope: !5557)
!5579 = !DILocation(line: 483, column: 9, scope: !5015)
!5580 = !DILocation(line: 483, column: 7, scope: !5015)
!5581 = !DILocation(line: 483, column: 14, scope: !5014)
!5582 = !DILocation(line: 483, column: 35, scope: !5014)
!5583 = !DILocation(line: 483, column: 18, scope: !5014)
!5584 = !DILocation(line: 483, column: 16, scope: !5014)
!5585 = !DILocation(line: 483, column: 2, scope: !5015)
!5586 = !DILocation(line: 484, column: 3, scope: !5013)
!5587 = !DILocation(line: 484, column: 7, scope: !5013)
!5588 = !DILocation(line: 486, column: 3, scope: !5013)
!5589 = !DILocation(line: 487, column: 41, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 486, column: 12)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !3, line: 486, column: 3)
!5592 = distinct !DILexicalBlock(scope: !5013, file: !3, line: 486, column: 3)
!5593 = !DILocation(line: 487, column: 26, scope: !5590)
!5594 = !DILocation(line: 487, column: 45, scope: !5590)
!5595 = !DILocation(line: 487, column: 4, scope: !5590)
!5596 = !DILocation(line: 489, column: 10, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 489, column: 8)
!5598 = !DILocation(line: 489, column: 12, scope: !5597)
!5599 = !DILocation(line: 489, column: 8, scope: !5590)
!5600 = !DILocation(line: 490, column: 5, scope: !5597)
!5601 = !DILocation(line: 491, column: 4, scope: !5590)
!5602 = !DILocation(line: 486, column: 3, scope: !5591)
!5603 = distinct !{!5603, !5604, !5605, !5316}
!5604 = !DILocation(line: 486, column: 3, scope: !5592)
!5605 = !DILocation(line: 492, column: 3, scope: !5592)
!5606 = !DILocation(line: 493, column: 2, scope: !5014)
!5607 = !DILocation(line: 493, column: 2, scope: !5013)
!5608 = !DILocation(line: 483, column: 41, scope: !5014)
!5609 = !DILocation(line: 483, column: 2, scope: !5014)
!5610 = distinct !{!5610, !5585, !5611, !5315, !5316}
!5611 = !DILocation(line: 493, column: 2, scope: !5015)
!5612 = !DILocation(line: 494, column: 37, scope: !5002)
!5613 = !DILocation(line: 494, column: 2, scope: !5002)
!5614 = !DILocation(line: 495, column: 7, scope: !5615)
!5615 = distinct !DILexicalBlock(scope: !5002, file: !3, line: 495, column: 6)
!5616 = !DILocation(line: 495, column: 6, scope: !5002)
!5617 = !DILocation(line: 496, column: 3, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5615, file: !3, line: 496, column: 3)
!5619 = !DILocation(line: 496, column: 3, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 496, column: 3)
!5621 = !DILocation(line: 496, column: 3, scope: !5615)
!5622 = !DILocation(line: 497, column: 1, scope: !5002)
!5623 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5624, file: !5624, line: 32, type: !5625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5624 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5625 = !DISubroutineType(types: !5626)
!5626 = !{!199, !5627}
!5627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!5628 = distinct !DISubprogram(name: "spinlock_check", scope: !5629, file: !5629, line: 324, type: !5630, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5632)
!5629 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5630 = !DISubroutineType(types: !5631)
!5631 = !{!5627, !2446}
!5632 = !{!5633}
!5633 = !DILocalVariable(name: "lock", arg: 1, scope: !5628, file: !5629, line: 324, type: !2446)
!5634 = !DILocation(line: 324, column: 67, scope: !5628)
!5635 = !DILocation(line: 326, column: 10, scope: !5628)
!5636 = !DILocation(line: 326, column: 16, scope: !5628)
!5637 = !DILocation(line: 326, column: 2, scope: !5628)
!5638 = distinct !DISubprogram(name: "cpu_relax", scope: !5639, file: !5639, line: 16, type: !1134, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5639 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!5640 = !DILocation(line: 18, column: 2, scope: !5638)
!5641 = !DILocation(line: 19, column: 1, scope: !5638)
!5642 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5629, file: !5629, line: 404, type: !5643, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5645)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{null, !2446, !199}
!5645 = !{!5646, !5647, !5648, !5651}
!5646 = !DILocalVariable(name: "lock", arg: 1, scope: !5642, file: !5629, line: 404, type: !2446)
!5647 = !DILocalVariable(name: "flags", arg: 2, scope: !5642, file: !5629, line: 404, type: !199)
!5648 = !DILocalVariable(name: "__dummy", scope: !5649, file: !5629, line: 406, type: !199)
!5649 = distinct !DILexicalBlock(scope: !5650, file: !5629, line: 406, column: 2)
!5650 = distinct !DILexicalBlock(scope: !5642, file: !5629, line: 406, column: 2)
!5651 = !DILocalVariable(name: "__dummy2", scope: !5649, file: !5629, line: 406, type: !199)
!5652 = !DILocation(line: 404, column: 64, scope: !5642)
!5653 = !DILocation(line: 404, column: 84, scope: !5642)
!5654 = !DILocation(line: 406, column: 2, scope: !5642)
!5655 = !DILocation(line: 406, column: 2, scope: !5649)
!5656 = !DILocation(line: 406, column: 2, scope: !5650)
!5657 = !DILocation(line: 407, column: 1, scope: !5642)
!5658 = !DISubprogram(name: "_printk", scope: !5659, file: !5659, line: 153, type: !5660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5659 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5660 = !DISubroutineType(types: !5661)
!5661 = !{!109, !308, null}
!5662 = distinct !DISubprogram(name: "__initstub__kmod_amd_nb__298_550_init_amd_nbs5", scope: !3, file: !3, line: 550, type: !865, scopeLine: 550, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5663 = !DILocation(line: 550, column: 1, scope: !5662)
!5664 = distinct !DISubprogram(name: "init_amd_nbs", scope: !3, file: !3, line: 535, type: !865, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5665 = !DILocation(line: 537, column: 20, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 537, column: 6)
!5667 = !DILocation(line: 537, column: 6, scope: !5666)
!5668 = !DILocation(line: 537, column: 31, scope: !5666)
!5669 = !DILocation(line: 537, column: 49, scope: !5666)
!5670 = !DILocation(line: 538, column: 20, scope: !5666)
!5671 = !DILocation(line: 538, column: 6, scope: !5666)
!5672 = !DILocation(line: 538, column: 31, scope: !5666)
!5673 = !DILocation(line: 537, column: 6, scope: !5664)
!5674 = !DILocation(line: 539, column: 3, scope: !5666)
!5675 = !DILocation(line: 541, column: 2, scope: !5664)
!5676 = !DILocation(line: 542, column: 2, scope: !5664)
!5677 = !DILocation(line: 544, column: 2, scope: !5664)
!5678 = !DILocation(line: 546, column: 2, scope: !5664)
!5679 = !DILocation(line: 547, column: 1, scope: !5664)
!5680 = !DISubprogram(name: "mutex_lock", scope: !774, file: !774, line: 227, type: !5681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5681 = !DISubroutineType(types: !5682)
!5682 = !{null, !5683}
!5683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!5684 = !DISubprogram(name: "mutex_unlock", scope: !774, file: !774, line: 246, type: !5681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5685 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !5384, file: !5384, line: 126, type: !5686, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5688)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!219, !7, !900}
!5688 = !{!5689, !5690, !5691, !5692}
!5689 = !DILocalVariable(name: "msr", arg: 1, scope: !5685, file: !5384, line: 126, type: !7)
!5690 = !DILocalVariable(name: "err", arg: 2, scope: !5685, file: !5384, line: 127, type: !900)
!5691 = !DILocalVariable(name: "low", scope: !5685, file: !5384, line: 129, type: !199)
!5692 = !DILocalVariable(name: "high", scope: !5685, file: !5384, line: 129, type: !199)
!5693 = !DILocation(line: 126, column: 68, scope: !5685)
!5694 = !DILocation(line: 127, column: 18, scope: !5685)
!5695 = !DILocation(line: 129, column: 2, scope: !5685)
!5696 = !DILocation(line: 134, column: 23, scope: !5685)
!5697 = !DILocation(line: 135, column: 15, scope: !5685)
!5698 = !DILocation(line: 131, column: 2, scope: !5685)
!5699 = !{i64 1272104, i64 1272145, i64 1272149, i64 2149454757, i64 2149454782, i64 2149454817, i64 2149455034, i64 2149455087, i64 2149455118, i64 2149455149, i64 2149455227, i64 2149455261, i64 2149455299, i64 2149455342, i64 2149455365, i64 2149455403, i64 2149455425, i64 2149455456, i64 2149455541, i64 2149455575, i64 2149455613, i64 2149455656, i64 2149455679, i64 2149455717, i64 2149455739, i64 2149455773, i64 2149455835, i64 2149455858, i64 2149454883, i64 2149455932, i64 2149454994}
!5700 = !DILocation(line: 136, column: 6, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5685, file: !5384, line: 136, column: 6)
!5702 = !DILocation(line: 136, column: 6, scope: !5685)
!5703 = !DILocation(line: 137, column: 21, scope: !5701)
!5704 = !DILocation(line: 137, column: 26, scope: !5701)
!5705 = !DILocation(line: 137, column: 56, scope: !5701)
!5706 = !DILocation(line: 137, column: 55, scope: !5701)
!5707 = !DILocation(line: 137, column: 3, scope: !5701)
!5708 = !DILocation(line: 138, column: 9, scope: !5685)
!5709 = !DILocation(line: 139, column: 1, scope: !5685)
!5710 = !DILocation(line: 138, column: 2, scope: !5685)
!5711 = distinct !DISubprogram(name: "static_key_false", scope: !1098, file: !1098, line: 205, type: !5712, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5726)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!235, !5714}
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1098, line: 85, size: 128, elements: !5716)
!5716 = !{!5717, !5718}
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5715, file: !1098, line: 86, baseType: !398, size: 32)
!5718 = !DIDerivedType(tag: DW_TAG_member, scope: !5715, file: !1098, line: 101, baseType: !5719, size: 64, offset: 64)
!5719 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5715, file: !1098, line: 101, size: 64, elements: !5720)
!5720 = !{!5721, !5722, !5723}
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5719, file: !1098, line: 102, baseType: !199, size: 64)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5719, file: !1098, line: 103, baseType: !1096, size: 64)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5719, file: !1098, line: 104, baseType: !5724, size: 64)
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5725, size: 64)
!5725 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1098, line: 104, flags: DIFlagFwdDecl)
!5726 = !{!5727}
!5727 = !DILocalVariable(name: "key", arg: 1, scope: !5711, file: !1098, line: 205, type: !5714)
!5728 = !DILocation(line: 205, column: 65, scope: !5711)
!5729 = !DILocation(line: 207, column: 28, scope: !5711)
!5730 = !DILocation(line: 207, column: 9, scope: !5711)
!5731 = !DILocation(line: 207, column: 2, scope: !5711)
!5732 = !DISubprogram(name: "do_trace_read_msr", scope: !5384, file: !5384, line: 65, type: !5733, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5733 = !DISubroutineType(types: !5734)
!5734 = !{null, !7, !217, !109}
!5735 = distinct !DISubprogram(name: "arch_static_branch", scope: !5736, file: !5736, line: 25, type: !5737, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5739)
!5736 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5737 = !DISubroutineType(types: !5738)
!5738 = !{!235, !5714, !235}
!5739 = !{!5740, !5741, !5742}
!5740 = !DILocalVariable(name: "key", arg: 1, scope: !5735, file: !5736, line: 25, type: !5714)
!5741 = !DILocalVariable(name: "branch", arg: 2, scope: !5735, file: !5736, line: 25, type: !235)
!5742 = !DILabel(scope: !5735, name: "l_yes", file: !5736, line: 33)
!5743 = !DILocation(line: 25, column: 67, scope: !5735)
!5744 = !DILocation(line: 25, column: 77, scope: !5735)
!5745 = !DILocation(line: 30, column: 13, scope: !5735)
!5746 = !DILocation(line: 30, column: 28, scope: !5735)
!5747 = !DILocation(line: 30, column: 26, scope: !5735)
!5748 = !DILocation(line: 27, column: 2, scope: !5735)
!5749 = !{i64 1175380, i64 1175424, i64 2148660107, i64 2148660128, i64 2148660154, i64 2148660187, i64 2148660221, i64 2148660245}
!5750 = !DILocation(line: 32, column: 2, scope: !5735)
!5751 = !DILocation(line: 33, column: 1, scope: !5735)
!5752 = !DILocation(line: 34, column: 2, scope: !5735)
!5753 = !DILocation(line: 35, column: 1, scope: !5735)
!5754 = distinct !DISubprogram(name: "rep_nop", scope: !5639, file: !5639, line: 11, type: !1134, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5755 = !DILocation(line: 13, column: 2, scope: !5754)
!5756 = !{i64 2036859}
!5757 = !DILocation(line: 14, column: 1, scope: !5754)
!5758 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5624, file: !5624, line: 43, type: !5759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{null, !5627, !199}
!5761 = distinct !DISubprogram(name: "amd_cache_northbridges", scope: !3, file: !3, line: 234, type: !865, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5762)
!5762 = !{!5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5771, !5772, !5773, !5774}
!5763 = !DILocalVariable(name: "misc_ids", scope: !5761, file: !3, line: 236, type: !4775)
!5764 = !DILocalVariable(name: "link_ids", scope: !5761, file: !3, line: 237, type: !4775)
!5765 = !DILocalVariable(name: "root_ids", scope: !5761, file: !3, line: 238, type: !4775)
!5766 = !DILocalVariable(name: "root", scope: !5761, file: !3, line: 239, type: !277)
!5767 = !DILocalVariable(name: "misc", scope: !5761, file: !3, line: 239, type: !277)
!5768 = !DILocalVariable(name: "link", scope: !5761, file: !3, line: 239, type: !277)
!5769 = !DILocalVariable(name: "nb", scope: !5761, file: !3, line: 240, type: !272)
!5770 = !DILocalVariable(name: "roots_per_misc", scope: !5761, file: !3, line: 241, type: !221)
!5771 = !DILocalVariable(name: "misc_count", scope: !5761, file: !3, line: 242, type: !221)
!5772 = !DILocalVariable(name: "root_count", scope: !5761, file: !3, line: 243, type: !221)
!5773 = !DILocalVariable(name: "i", scope: !5761, file: !3, line: 244, type: !221)
!5774 = !DILocalVariable(name: "j", scope: !5761, file: !3, line: 244, type: !221)
!5775 = !DILocation(line: 236, column: 2, scope: !5761)
!5776 = !DILocation(line: 236, column: 30, scope: !5761)
!5777 = !DILocation(line: 237, column: 2, scope: !5761)
!5778 = !DILocation(line: 237, column: 30, scope: !5761)
!5779 = !DILocation(line: 238, column: 2, scope: !5761)
!5780 = !DILocation(line: 238, column: 30, scope: !5761)
!5781 = !DILocation(line: 239, column: 2, scope: !5761)
!5782 = !DILocation(line: 239, column: 18, scope: !5761)
!5783 = !DILocation(line: 239, column: 25, scope: !5761)
!5784 = !DILocation(line: 239, column: 32, scope: !5761)
!5785 = !DILocation(line: 240, column: 2, scope: !5761)
!5786 = !DILocation(line: 240, column: 26, scope: !5761)
!5787 = !DILocation(line: 241, column: 2, scope: !5761)
!5788 = !DILocation(line: 241, column: 6, scope: !5761)
!5789 = !DILocation(line: 242, column: 2, scope: !5761)
!5790 = !DILocation(line: 242, column: 6, scope: !5761)
!5791 = !DILocation(line: 243, column: 2, scope: !5761)
!5792 = !DILocation(line: 243, column: 6, scope: !5761)
!5793 = !DILocation(line: 244, column: 2, scope: !5761)
!5794 = !DILocation(line: 244, column: 6, scope: !5761)
!5795 = !DILocation(line: 244, column: 9, scope: !5761)
!5796 = !DILocation(line: 246, column: 23, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 246, column: 6)
!5798 = !DILocation(line: 246, column: 6, scope: !5797)
!5799 = !DILocation(line: 246, column: 6, scope: !5761)
!5800 = !DILocation(line: 247, column: 3, scope: !5797)
!5801 = !DILocation(line: 249, column: 20, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 249, column: 6)
!5803 = !DILocation(line: 249, column: 6, scope: !5802)
!5804 = !DILocation(line: 249, column: 31, scope: !5802)
!5805 = !DILocation(line: 249, column: 6, scope: !5761)
!5806 = !DILocation(line: 250, column: 12, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 249, column: 52)
!5808 = !DILocation(line: 251, column: 12, scope: !5807)
!5809 = !DILocation(line: 252, column: 12, scope: !5807)
!5810 = !DILocation(line: 253, column: 2, scope: !5807)
!5811 = !DILocation(line: 255, column: 7, scope: !5761)
!5812 = !DILocation(line: 256, column: 2, scope: !5761)
!5813 = !DILocation(line: 256, column: 34, scope: !5761)
!5814 = !DILocation(line: 256, column: 40, scope: !5761)
!5815 = !DILocation(line: 256, column: 17, scope: !5761)
!5816 = !DILocation(line: 256, column: 15, scope: !5761)
!5817 = !DILocation(line: 257, column: 13, scope: !5761)
!5818 = distinct !{!5818, !5812, !5817, !5315, !5316}
!5819 = !DILocation(line: 259, column: 7, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 259, column: 6)
!5821 = !DILocation(line: 259, column: 6, scope: !5761)
!5822 = !DILocation(line: 260, column: 3, scope: !5820)
!5823 = !DILocation(line: 262, column: 7, scope: !5761)
!5824 = !DILocation(line: 263, column: 2, scope: !5761)
!5825 = !DILocation(line: 263, column: 34, scope: !5761)
!5826 = !DILocation(line: 263, column: 40, scope: !5761)
!5827 = !DILocation(line: 263, column: 17, scope: !5761)
!5828 = !DILocation(line: 263, column: 15, scope: !5761)
!5829 = !DILocation(line: 264, column: 13, scope: !5761)
!5830 = distinct !{!5830, !5824, !5829, !5315, !5316}
!5831 = !DILocation(line: 266, column: 6, scope: !5832)
!5832 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 266, column: 6)
!5833 = !DILocation(line: 266, column: 6, scope: !5761)
!5834 = !DILocation(line: 267, column: 20, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5832, file: !3, line: 266, column: 18)
!5836 = !DILocation(line: 267, column: 33, scope: !5835)
!5837 = !DILocation(line: 267, column: 31, scope: !5835)
!5838 = !DILocation(line: 267, column: 18, scope: !5835)
!5839 = !DILocation(line: 273, column: 8, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 273, column: 7)
!5841 = !DILocation(line: 273, column: 23, scope: !5840)
!5842 = !DILocation(line: 273, column: 27, scope: !5840)
!5843 = !DILocation(line: 273, column: 40, scope: !5840)
!5844 = !DILocation(line: 273, column: 38, scope: !5840)
!5845 = !DILocation(line: 273, column: 7, scope: !5835)
!5846 = !DILocation(line: 274, column: 4, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 274, column: 4)
!5848 = distinct !DILexicalBlock(scope: !5840, file: !3, line: 273, column: 57)
!5849 = !DILocation(line: 274, column: 4, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 274, column: 4)
!5851 = !DILocation(line: 275, column: 4, scope: !5848)
!5852 = !DILocation(line: 277, column: 2, scope: !5835)
!5853 = !DILocation(line: 279, column: 15, scope: !5761)
!5854 = !DILocation(line: 279, column: 7, scope: !5761)
!5855 = !DILocation(line: 279, column: 5, scope: !5761)
!5856 = !DILocation(line: 280, column: 7, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 280, column: 6)
!5858 = !DILocation(line: 280, column: 6, scope: !5761)
!5859 = !DILocation(line: 281, column: 3, scope: !5857)
!5860 = !DILocation(line: 283, column: 24, scope: !5761)
!5861 = !DILocation(line: 283, column: 22, scope: !5761)
!5862 = !DILocation(line: 284, column: 25, scope: !5761)
!5863 = !DILocation(line: 284, column: 23, scope: !5761)
!5864 = !DILocation(line: 286, column: 21, scope: !5761)
!5865 = !DILocation(line: 286, column: 14, scope: !5761)
!5866 = !DILocation(line: 286, column: 7, scope: !5761)
!5867 = !DILocation(line: 287, column: 9, scope: !5868)
!5868 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 287, column: 2)
!5869 = !DILocation(line: 287, column: 7, scope: !5868)
!5870 = !DILocation(line: 287, column: 14, scope: !5871)
!5871 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 287, column: 2)
!5872 = !DILocation(line: 287, column: 35, scope: !5871)
!5873 = !DILocation(line: 287, column: 18, scope: !5871)
!5874 = !DILocation(line: 287, column: 16, scope: !5871)
!5875 = !DILocation(line: 287, column: 2, scope: !5868)
!5876 = !DILocation(line: 289, column: 21, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5871, file: !3, line: 287, column: 45)
!5878 = !DILocation(line: 289, column: 27, scope: !5877)
!5879 = !DILocation(line: 289, column: 4, scope: !5877)
!5880 = !DILocation(line: 288, column: 34, scope: !5877)
!5881 = !DILocation(line: 288, column: 18, scope: !5877)
!5882 = !DILocation(line: 288, column: 3, scope: !5877)
!5883 = !DILocation(line: 288, column: 22, scope: !5877)
!5884 = !DILocation(line: 288, column: 27, scope: !5877)
!5885 = !DILocation(line: 291, column: 21, scope: !5877)
!5886 = !DILocation(line: 291, column: 27, scope: !5877)
!5887 = !DILocation(line: 291, column: 4, scope: !5877)
!5888 = !DILocation(line: 290, column: 34, scope: !5877)
!5889 = !DILocation(line: 290, column: 18, scope: !5877)
!5890 = !DILocation(line: 290, column: 3, scope: !5877)
!5891 = !DILocation(line: 290, column: 22, scope: !5877)
!5892 = !DILocation(line: 290, column: 27, scope: !5877)
!5893 = !DILocation(line: 293, column: 21, scope: !5877)
!5894 = !DILocation(line: 293, column: 27, scope: !5877)
!5895 = !DILocation(line: 293, column: 4, scope: !5877)
!5896 = !DILocation(line: 292, column: 34, scope: !5877)
!5897 = !DILocation(line: 292, column: 18, scope: !5877)
!5898 = !DILocation(line: 292, column: 3, scope: !5877)
!5899 = !DILocation(line: 292, column: 22, scope: !5877)
!5900 = !DILocation(line: 292, column: 27, scope: !5877)
!5901 = !DILocation(line: 304, column: 10, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5877, file: !3, line: 304, column: 3)
!5903 = !DILocation(line: 304, column: 8, scope: !5902)
!5904 = !DILocation(line: 304, column: 15, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5902, file: !3, line: 304, column: 3)
!5906 = !DILocation(line: 304, column: 19, scope: !5905)
!5907 = !DILocation(line: 304, column: 17, scope: !5905)
!5908 = !DILocation(line: 304, column: 3, scope: !5902)
!5909 = !DILocation(line: 305, column: 28, scope: !5905)
!5910 = !DILocation(line: 305, column: 34, scope: !5905)
!5911 = !DILocation(line: 305, column: 11, scope: !5905)
!5912 = !DILocation(line: 305, column: 9, scope: !5905)
!5913 = !DILocation(line: 305, column: 4, scope: !5905)
!5914 = !DILocation(line: 304, column: 36, scope: !5905)
!5915 = !DILocation(line: 304, column: 3, scope: !5905)
!5916 = distinct !{!5916, !5908, !5917, !5315, !5316}
!5917 = !DILocation(line: 305, column: 42, scope: !5902)
!5918 = !DILocation(line: 306, column: 2, scope: !5877)
!5919 = !DILocation(line: 287, column: 41, scope: !5871)
!5920 = !DILocation(line: 287, column: 2, scope: !5871)
!5921 = distinct !{!5921, !5875, !5922, !5315, !5316}
!5922 = !DILocation(line: 306, column: 2, scope: !5868)
!5923 = !DILocation(line: 308, column: 6, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 308, column: 6)
!5925 = !DILocation(line: 308, column: 6, scope: !5761)
!5926 = !DILocation(line: 309, column: 26, scope: !5924)
!5927 = !DILocation(line: 309, column: 3, scope: !5924)
!5928 = !DILocation(line: 314, column: 7, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 314, column: 6)
!5930 = !DILocation(line: 314, column: 6, scope: !5761)
!5931 = !DILocation(line: 315, column: 3, scope: !5929)
!5932 = !DILocation(line: 321, column: 20, scope: !5933)
!5933 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 321, column: 6)
!5934 = !DILocation(line: 321, column: 6, scope: !5933)
!5935 = !DILocation(line: 321, column: 24, scope: !5933)
!5936 = !DILocation(line: 321, column: 32, scope: !5933)
!5937 = !DILocation(line: 322, column: 20, scope: !5933)
!5938 = !DILocation(line: 322, column: 6, scope: !5933)
!5939 = !DILocation(line: 322, column: 30, scope: !5933)
!5940 = !DILocation(line: 322, column: 37, scope: !5933)
!5941 = !DILocation(line: 323, column: 21, scope: !5933)
!5942 = !DILocation(line: 323, column: 7, scope: !5933)
!5943 = !DILocation(line: 323, column: 31, scope: !5933)
!5944 = !DILocation(line: 323, column: 37, scope: !5933)
!5945 = !DILocation(line: 324, column: 21, scope: !5933)
!5946 = !DILocation(line: 324, column: 7, scope: !5933)
!5947 = !DILocation(line: 324, column: 34, scope: !5933)
!5948 = !DILocation(line: 321, column: 6, scope: !5761)
!5949 = !DILocation(line: 325, column: 26, scope: !5933)
!5950 = !DILocation(line: 325, column: 3, scope: !5933)
!5951 = !DILocation(line: 327, column: 20, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 327, column: 6)
!5953 = !DILocation(line: 327, column: 6, scope: !5952)
!5954 = !DILocation(line: 327, column: 24, scope: !5952)
!5955 = !DILocation(line: 327, column: 6, scope: !5761)
!5956 = !DILocation(line: 328, column: 26, scope: !5952)
!5957 = !DILocation(line: 328, column: 3, scope: !5952)
!5958 = !DILocation(line: 331, column: 20, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 331, column: 6)
!5960 = !DILocation(line: 331, column: 6, scope: !5959)
!5961 = !DILocation(line: 331, column: 24, scope: !5959)
!5962 = !DILocation(line: 331, column: 6, scope: !5761)
!5963 = !DILocation(line: 332, column: 26, scope: !5959)
!5964 = !DILocation(line: 332, column: 3, scope: !5959)
!5965 = !DILocation(line: 334, column: 2, scope: !5761)
!5966 = !DILocation(line: 335, column: 1, scope: !5761)
!5967 = distinct !DISubprogram(name: "amd_cache_gart", scope: !3, file: !3, line: 443, type: !1134, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5968)
!5968 = !{!5969}
!5969 = !DILocalVariable(name: "i", scope: !5967, file: !3, line: 445, type: !221)
!5970 = !DILocation(line: 445, column: 2, scope: !5967)
!5971 = !DILocation(line: 445, column: 6, scope: !5967)
!5972 = !DILocation(line: 447, column: 7, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 447, column: 6)
!5974 = !DILocation(line: 447, column: 6, scope: !5967)
!5975 = !DILocation(line: 448, column: 3, scope: !5973)
!5976 = !DILocation(line: 450, column: 47, scope: !5967)
!5977 = !DILocation(line: 450, column: 30, scope: !5967)
!5978 = !DILocation(line: 450, column: 16, scope: !5967)
!5979 = !DILocation(line: 450, column: 14, scope: !5967)
!5980 = !DILocation(line: 451, column: 7, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 451, column: 6)
!5982 = !DILocation(line: 451, column: 6, scope: !5967)
!5983 = !DILocation(line: 452, column: 26, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 451, column: 20)
!5985 = !DILocation(line: 453, column: 3, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5984, file: !3, line: 453, column: 3)
!5987 = !DILocation(line: 453, column: 3, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 453, column: 3)
!5989 = !DILocation(line: 454, column: 3, scope: !5984)
!5990 = !DILocation(line: 457, column: 9, scope: !5991)
!5991 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 457, column: 2)
!5992 = !DILocation(line: 457, column: 7, scope: !5991)
!5993 = !DILocation(line: 457, column: 14, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5991, file: !3, line: 457, column: 2)
!5995 = !DILocation(line: 457, column: 36, scope: !5994)
!5996 = !DILocation(line: 457, column: 19, scope: !5994)
!5997 = !DILocation(line: 457, column: 16, scope: !5994)
!5998 = !DILocation(line: 457, column: 2, scope: !5991)
!5999 = !DILocation(line: 458, column: 40, scope: !5994)
!6000 = !DILocation(line: 458, column: 25, scope: !5994)
!6001 = !DILocation(line: 458, column: 44, scope: !5994)
!6002 = !DILocation(line: 458, column: 57, scope: !5994)
!6003 = !DILocation(line: 458, column: 69, scope: !5994)
!6004 = !DILocation(line: 458, column: 3, scope: !5994)
!6005 = !DILocation(line: 457, column: 42, scope: !5994)
!6006 = !DILocation(line: 457, column: 2, scope: !5994)
!6007 = distinct !{!6007, !5998, !6008, !5315, !5316}
!6008 = !DILocation(line: 458, column: 71, scope: !5991)
!6009 = !DILocation(line: 459, column: 1, scope: !5967)
!6010 = distinct !DISubprogram(name: "fix_erratum_688", scope: !3, file: !3, line: 509, type: !1134, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6011)
!6011 = !{!6012, !6013}
!6012 = !DILocalVariable(name: "F4", scope: !6010, file: !3, line: 511, type: !277)
!6013 = !DILocalVariable(name: "val", scope: !6010, file: !3, line: 512, type: !158)
!6014 = !DILocation(line: 511, column: 2, scope: !6010)
!6015 = !DILocation(line: 511, column: 18, scope: !6010)
!6016 = !DILocation(line: 512, column: 2, scope: !6010)
!6017 = !DILocation(line: 512, column: 6, scope: !6010)
!6018 = !DILocation(line: 514, column: 20, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 514, column: 6)
!6020 = !DILocation(line: 514, column: 6, scope: !6019)
!6021 = !DILocation(line: 514, column: 24, scope: !6019)
!6022 = !DILocation(line: 514, column: 6, scope: !6010)
!6023 = !DILocation(line: 515, column: 3, scope: !6019)
!6024 = !DILocation(line: 517, column: 24, scope: !6025)
!6025 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 517, column: 6)
!6026 = !DILocation(line: 517, column: 7, scope: !6025)
!6027 = !DILocation(line: 517, column: 6, scope: !6010)
!6028 = !DILocation(line: 518, column: 3, scope: !6025)
!6029 = !DILocation(line: 520, column: 7, scope: !6010)
!6030 = !DILocation(line: 520, column: 26, scope: !6010)
!6031 = !DILocation(line: 520, column: 5, scope: !6010)
!6032 = !DILocation(line: 521, column: 7, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 521, column: 6)
!6034 = !DILocation(line: 521, column: 6, scope: !6010)
!6035 = !DILocation(line: 522, column: 3, scope: !6033)
!6036 = !DILocation(line: 524, column: 28, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 524, column: 6)
!6038 = !DILocation(line: 524, column: 6, scope: !6037)
!6039 = !DILocation(line: 524, column: 6, scope: !6010)
!6040 = !DILocation(line: 525, column: 3, scope: !6037)
!6041 = !DILocation(line: 527, column: 6, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 527, column: 6)
!6043 = !DILocation(line: 527, column: 10, scope: !6042)
!6044 = !DILocation(line: 527, column: 6, scope: !6010)
!6045 = !DILocation(line: 528, column: 3, scope: !6042)
!6046 = !DILocation(line: 530, column: 2, scope: !6010)
!6047 = !DILocation(line: 532, column: 2, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6010, file: !3, line: 532, column: 2)
!6049 = !DILocation(line: 532, column: 2, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 532, column: 2)
!6051 = !DILocation(line: 533, column: 1, scope: !6010)
!6052 = distinct !DISubprogram(name: "next_northbridge", scope: !3, file: !3, line: 170, type: !6053, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6055)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{!277, !277, !4775}
!6055 = !{!6056, !6057}
!6056 = !DILocalVariable(name: "dev", arg: 1, scope: !6052, file: !3, line: 170, type: !277)
!6057 = !DILocalVariable(name: "ids", arg: 2, scope: !6052, file: !3, line: 171, type: !4775)
!6058 = !DILocation(line: 170, column: 57, scope: !6052)
!6059 = !DILocation(line: 171, column: 34, scope: !6052)
!6060 = !DILocation(line: 173, column: 2, scope: !6052)
!6061 = !DILocation(line: 174, column: 48, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 173, column: 5)
!6063 = !DILocation(line: 174, column: 9, scope: !6062)
!6064 = !DILocation(line: 174, column: 7, scope: !6062)
!6065 = !DILocation(line: 175, column: 8, scope: !6066)
!6066 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 175, column: 7)
!6067 = !DILocation(line: 175, column: 7, scope: !6062)
!6068 = !DILocation(line: 176, column: 4, scope: !6066)
!6069 = !DILocation(line: 177, column: 2, scope: !6062)
!6070 = !DILocation(line: 177, column: 25, scope: !6052)
!6071 = !DILocation(line: 177, column: 30, scope: !6052)
!6072 = !DILocation(line: 177, column: 12, scope: !6052)
!6073 = !DILocation(line: 177, column: 11, scope: !6052)
!6074 = distinct !{!6074, !6060, !6075, !5315, !5316}
!6075 = !DILocation(line: 177, column: 34, scope: !6052)
!6076 = !DILocation(line: 178, column: 9, scope: !6052)
!6077 = !DILocation(line: 178, column: 2, scope: !6052)
!6078 = distinct !DISubprogram(name: "kcalloc", scope: !147, file: !147, line: 666, type: !6079, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6081)
!6079 = !DISubroutineType(types: !6080)
!6080 = !{!157, !485, !485, !242}
!6081 = !{!6082, !6083, !6084}
!6082 = !DILocalVariable(name: "n", arg: 1, scope: !6078, file: !147, line: 666, type: !485)
!6083 = !DILocalVariable(name: "size", arg: 2, scope: !6078, file: !147, line: 666, type: !485)
!6084 = !DILocalVariable(name: "flags", arg: 3, scope: !6078, file: !147, line: 666, type: !242)
!6085 = !DILocation(line: 666, column: 55, scope: !6078)
!6086 = !DILocation(line: 666, column: 65, scope: !6078)
!6087 = !DILocation(line: 666, column: 77, scope: !6078)
!6088 = !DILocation(line: 668, column: 23, scope: !6078)
!6089 = !DILocation(line: 668, column: 26, scope: !6078)
!6090 = !DILocation(line: 668, column: 32, scope: !6078)
!6091 = !DILocation(line: 668, column: 38, scope: !6078)
!6092 = !DILocation(line: 668, column: 9, scope: !6078)
!6093 = !DILocation(line: 668, column: 2, scope: !6078)
!6094 = distinct !DISubprogram(name: "amd_gart_present", scope: !274, file: !274, line: 102, type: !4127, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6095 = !DILocation(line: 104, column: 20, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6094, file: !274, line: 104, column: 6)
!6097 = !DILocation(line: 104, column: 6, scope: !6096)
!6098 = !DILocation(line: 104, column: 31, scope: !6096)
!6099 = !DILocation(line: 104, column: 6, scope: !6094)
!6100 = !DILocation(line: 105, column: 3, scope: !6096)
!6101 = !DILocation(line: 108, column: 20, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !6094, file: !274, line: 108, column: 6)
!6103 = !DILocation(line: 108, column: 6, scope: !6102)
!6104 = !DILocation(line: 108, column: 24, scope: !6102)
!6105 = !DILocation(line: 108, column: 31, scope: !6102)
!6106 = !DILocation(line: 108, column: 48, scope: !6102)
!6107 = !DILocation(line: 108, column: 34, scope: !6102)
!6108 = !DILocation(line: 108, column: 52, scope: !6102)
!6109 = !DILocation(line: 108, column: 60, scope: !6102)
!6110 = !DILocation(line: 109, column: 21, scope: !6102)
!6111 = !DILocation(line: 109, column: 7, scope: !6102)
!6112 = !DILocation(line: 109, column: 25, scope: !6102)
!6113 = !DILocation(line: 109, column: 33, scope: !6102)
!6114 = !DILocation(line: 109, column: 50, scope: !6102)
!6115 = !DILocation(line: 109, column: 36, scope: !6102)
!6116 = !DILocation(line: 109, column: 60, scope: !6102)
!6117 = !DILocation(line: 108, column: 6, scope: !6094)
!6118 = !DILocation(line: 110, column: 3, scope: !6102)
!6119 = !DILocation(line: 112, column: 2, scope: !6094)
!6120 = !DILocation(line: 113, column: 1, scope: !6094)
!6121 = distinct !DISubprogram(name: "cpuid_edx", scope: !6122, file: !6122, line: 121, type: !6123, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6125)
!6122 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!6123 = !DISubroutineType(types: !6124)
!6124 = !{!7, !7}
!6125 = !{!6126, !6127, !6128, !6129, !6130}
!6126 = !DILocalVariable(name: "op", arg: 1, scope: !6121, file: !6122, line: 121, type: !7)
!6127 = !DILocalVariable(name: "eax", scope: !6121, file: !6122, line: 123, type: !7)
!6128 = !DILocalVariable(name: "ebx", scope: !6121, file: !6122, line: 123, type: !7)
!6129 = !DILocalVariable(name: "ecx", scope: !6121, file: !6122, line: 123, type: !7)
!6130 = !DILocalVariable(name: "edx", scope: !6121, file: !6122, line: 123, type: !7)
!6131 = !DILocation(line: 121, column: 51, scope: !6121)
!6132 = !DILocation(line: 123, column: 2, scope: !6121)
!6133 = !DILocation(line: 123, column: 15, scope: !6121)
!6134 = !DILocation(line: 123, column: 20, scope: !6121)
!6135 = !DILocation(line: 123, column: 25, scope: !6121)
!6136 = !DILocation(line: 123, column: 30, scope: !6121)
!6137 = !DILocation(line: 125, column: 8, scope: !6121)
!6138 = !DILocation(line: 125, column: 2, scope: !6121)
!6139 = !DILocation(line: 127, column: 9, scope: !6121)
!6140 = !DILocation(line: 128, column: 1, scope: !6121)
!6141 = !DILocation(line: 127, column: 2, scope: !6121)
!6142 = !DISubprogram(name: "pci_get_device", scope: !279, file: !279, line: 1176, type: !6143, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6143 = !DISubroutineType(types: !6144)
!6144 = !{!277, !7, !7, !277}
!6145 = !DISubprogram(name: "pci_match_id", scope: !279, file: !279, line: 1594, type: !6146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6146 = !DISubroutineType(types: !6147)
!6147 = !{!4775, !4775, !277}
!6148 = distinct !DISubprogram(name: "kmalloc_array", scope: !147, file: !147, line: 629, type: !6079, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6149)
!6149 = !{!6150, !6151, !6152, !6153}
!6150 = !DILocalVariable(name: "n", arg: 1, scope: !6148, file: !147, line: 629, type: !485)
!6151 = !DILocalVariable(name: "size", arg: 2, scope: !6148, file: !147, line: 629, type: !485)
!6152 = !DILocalVariable(name: "flags", arg: 3, scope: !6148, file: !147, line: 629, type: !242)
!6153 = !DILocalVariable(name: "bytes", scope: !6148, file: !147, line: 631, type: !485)
!6154 = !DILocation(line: 629, column: 61, scope: !6148)
!6155 = !DILocation(line: 629, column: 71, scope: !6148)
!6156 = !DILocation(line: 629, column: 83, scope: !6148)
!6157 = !DILocation(line: 631, column: 2, scope: !6148)
!6158 = !DILocation(line: 631, column: 9, scope: !6148)
!6159 = !DILocation(line: 633, column: 6, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6148, file: !147, line: 633, column: 6)
!6161 = !DILocation(line: 633, column: 6, scope: !6148)
!6162 = !DILocation(line: 634, column: 3, scope: !6160)
!6163 = !DILocation(line: 635, column: 27, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6148, file: !147, line: 635, column: 6)
!6165 = !DILocation(line: 635, column: 6, scope: !6164)
!6166 = !DILocation(line: 635, column: 30, scope: !6164)
!6167 = !DILocation(line: 635, column: 54, scope: !6164)
!6168 = !DILocation(line: 635, column: 33, scope: !6164)
!6169 = !DILocation(line: 635, column: 6, scope: !6148)
!6170 = !DILocation(line: 636, column: 18, scope: !6164)
!6171 = !DILocation(line: 636, column: 25, scope: !6164)
!6172 = !DILocation(line: 636, column: 10, scope: !6164)
!6173 = !DILocation(line: 636, column: 3, scope: !6164)
!6174 = !DILocation(line: 637, column: 19, scope: !6148)
!6175 = !DILocation(line: 637, column: 26, scope: !6148)
!6176 = !DILocation(line: 637, column: 9, scope: !6148)
!6177 = !DILocation(line: 637, column: 2, scope: !6148)
!6178 = !DILocation(line: 638, column: 1, scope: !6148)
!6179 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6180, file: !6180, line: 51, type: !6181, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6183)
!6180 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6181 = !DISubroutineType(types: !6182)
!6182 = !{!235, !235}
!6183 = !{!6184}
!6184 = !DILocalVariable(name: "overflow", arg: 1, scope: !6179, file: !6180, line: 51, type: !235)
!6185 = !DILocation(line: 51, column: 60, scope: !6179)
!6186 = !DILocation(line: 53, column: 9, scope: !6179)
!6187 = !DILocation(line: 53, column: 2, scope: !6179)
!6188 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !6189, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6191)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{!157, !485, !242}
!6191 = !{!6192, !6193, !6194}
!6192 = !DILocalVariable(name: "size", arg: 1, scope: !6188, file: !147, line: 591, type: !485)
!6193 = !DILocalVariable(name: "flags", arg: 2, scope: !6188, file: !147, line: 591, type: !242)
!6194 = !DILocalVariable(name: "index", scope: !6195, file: !147, line: 594, type: !7)
!6195 = distinct !DILexicalBlock(scope: !6196, file: !147, line: 593, column: 42)
!6196 = distinct !DILexicalBlock(scope: !6188, file: !147, line: 593, column: 6)
!6197 = !DILocation(line: 591, column: 61, scope: !6188)
!6198 = !DILocation(line: 591, column: 73, scope: !6188)
!6199 = !DILocation(line: 593, column: 27, scope: !6196)
!6200 = !DILocation(line: 593, column: 6, scope: !6196)
!6201 = !DILocation(line: 593, column: 33, scope: !6196)
!6202 = !DILocation(line: 593, column: 36, scope: !6196)
!6203 = !DILocation(line: 593, column: 6, scope: !6188)
!6204 = !DILocation(line: 594, column: 3, scope: !6195)
!6205 = !DILocation(line: 594, column: 16, scope: !6195)
!6206 = !DILocation(line: 596, column: 7, scope: !6207)
!6207 = distinct !DILexicalBlock(scope: !6195, file: !147, line: 596, column: 7)
!6208 = !DILocation(line: 596, column: 12, scope: !6207)
!6209 = !DILocation(line: 596, column: 7, scope: !6195)
!6210 = !DILocation(line: 597, column: 25, scope: !6207)
!6211 = !DILocation(line: 597, column: 31, scope: !6207)
!6212 = !DILocation(line: 597, column: 11, scope: !6207)
!6213 = !DILocation(line: 597, column: 4, scope: !6207)
!6214 = !DILocation(line: 599, column: 11, scope: !6195)
!6215 = !DILocation(line: 599, column: 9, scope: !6195)
!6216 = !DILocation(line: 601, column: 33, scope: !6195)
!6217 = !DILocation(line: 601, column: 40, scope: !6195)
!6218 = !DILocation(line: 601, column: 20, scope: !6195)
!6219 = !DILocation(line: 601, column: 5, scope: !6195)
!6220 = !DILocation(line: 601, column: 51, scope: !6195)
!6221 = !DILocation(line: 602, column: 5, scope: !6195)
!6222 = !DILocation(line: 602, column: 12, scope: !6195)
!6223 = !DILocation(line: 600, column: 10, scope: !6195)
!6224 = !DILocation(line: 600, column: 3, scope: !6195)
!6225 = !DILocation(line: 603, column: 2, scope: !6196)
!6226 = !DILocation(line: 604, column: 19, scope: !6188)
!6227 = !DILocation(line: 604, column: 25, scope: !6188)
!6228 = !DILocation(line: 604, column: 9, scope: !6188)
!6229 = !DILocation(line: 604, column: 2, scope: !6188)
!6230 = !DILocation(line: 605, column: 1, scope: !6188)
!6231 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !6189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6232 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !6189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6233 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !6234, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!7, !485, !235}
!6236 = !{!6237, !6238}
!6237 = !DILocalVariable(name: "size", arg: 1, scope: !6233, file: !147, line: 444, type: !485)
!6238 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6233, file: !147, line: 445, type: !235)
!6239 = !DILocation(line: 444, column: 60, scope: !6233)
!6240 = !DILocation(line: 445, column: 16, scope: !6233)
!6241 = !DILocation(line: 447, column: 7, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 447, column: 6)
!6243 = !DILocation(line: 447, column: 6, scope: !6233)
!6244 = !DILocation(line: 448, column: 3, scope: !6242)
!6245 = !DILocation(line: 450, column: 6, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 450, column: 6)
!6247 = !DILocation(line: 450, column: 11, scope: !6246)
!6248 = !DILocation(line: 450, column: 6, scope: !6233)
!6249 = !DILocation(line: 451, column: 3, scope: !6246)
!6250 = !DILocation(line: 453, column: 32, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 453, column: 6)
!6252 = !DILocation(line: 453, column: 37, scope: !6251)
!6253 = !DILocation(line: 453, column: 42, scope: !6251)
!6254 = !DILocation(line: 453, column: 45, scope: !6251)
!6255 = !DILocation(line: 453, column: 50, scope: !6251)
!6256 = !DILocation(line: 453, column: 6, scope: !6233)
!6257 = !DILocation(line: 454, column: 3, scope: !6251)
!6258 = !DILocation(line: 455, column: 32, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 455, column: 6)
!6260 = !DILocation(line: 455, column: 37, scope: !6259)
!6261 = !DILocation(line: 455, column: 43, scope: !6259)
!6262 = !DILocation(line: 455, column: 46, scope: !6259)
!6263 = !DILocation(line: 455, column: 51, scope: !6259)
!6264 = !DILocation(line: 455, column: 6, scope: !6233)
!6265 = !DILocation(line: 456, column: 3, scope: !6259)
!6266 = !DILocation(line: 457, column: 6, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 457, column: 6)
!6268 = !DILocation(line: 457, column: 11, scope: !6267)
!6269 = !DILocation(line: 457, column: 6, scope: !6233)
!6270 = !DILocation(line: 457, column: 26, scope: !6267)
!6271 = !DILocation(line: 458, column: 6, scope: !6272)
!6272 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 458, column: 6)
!6273 = !DILocation(line: 458, column: 11, scope: !6272)
!6274 = !DILocation(line: 458, column: 6, scope: !6233)
!6275 = !DILocation(line: 458, column: 26, scope: !6272)
!6276 = !DILocation(line: 459, column: 6, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 459, column: 6)
!6278 = !DILocation(line: 459, column: 11, scope: !6277)
!6279 = !DILocation(line: 459, column: 6, scope: !6233)
!6280 = !DILocation(line: 459, column: 26, scope: !6277)
!6281 = !DILocation(line: 460, column: 6, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 460, column: 6)
!6283 = !DILocation(line: 460, column: 11, scope: !6282)
!6284 = !DILocation(line: 460, column: 6, scope: !6233)
!6285 = !DILocation(line: 460, column: 26, scope: !6282)
!6286 = !DILocation(line: 461, column: 6, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 461, column: 6)
!6288 = !DILocation(line: 461, column: 11, scope: !6287)
!6289 = !DILocation(line: 461, column: 6, scope: !6233)
!6290 = !DILocation(line: 461, column: 26, scope: !6287)
!6291 = !DILocation(line: 462, column: 6, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 462, column: 6)
!6293 = !DILocation(line: 462, column: 11, scope: !6292)
!6294 = !DILocation(line: 462, column: 6, scope: !6233)
!6295 = !DILocation(line: 462, column: 26, scope: !6292)
!6296 = !DILocation(line: 463, column: 6, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 463, column: 6)
!6298 = !DILocation(line: 463, column: 11, scope: !6297)
!6299 = !DILocation(line: 463, column: 6, scope: !6233)
!6300 = !DILocation(line: 463, column: 26, scope: !6297)
!6301 = !DILocation(line: 464, column: 6, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 464, column: 6)
!6303 = !DILocation(line: 464, column: 11, scope: !6302)
!6304 = !DILocation(line: 464, column: 6, scope: !6233)
!6305 = !DILocation(line: 464, column: 26, scope: !6302)
!6306 = !DILocation(line: 465, column: 6, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 465, column: 6)
!6308 = !DILocation(line: 465, column: 11, scope: !6307)
!6309 = !DILocation(line: 465, column: 6, scope: !6233)
!6310 = !DILocation(line: 465, column: 26, scope: !6307)
!6311 = !DILocation(line: 466, column: 6, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 466, column: 6)
!6313 = !DILocation(line: 466, column: 11, scope: !6312)
!6314 = !DILocation(line: 466, column: 6, scope: !6233)
!6315 = !DILocation(line: 466, column: 26, scope: !6312)
!6316 = !DILocation(line: 467, column: 6, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 467, column: 6)
!6318 = !DILocation(line: 467, column: 11, scope: !6317)
!6319 = !DILocation(line: 467, column: 6, scope: !6233)
!6320 = !DILocation(line: 467, column: 26, scope: !6317)
!6321 = !DILocation(line: 468, column: 6, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 468, column: 6)
!6323 = !DILocation(line: 468, column: 11, scope: !6322)
!6324 = !DILocation(line: 468, column: 6, scope: !6233)
!6325 = !DILocation(line: 468, column: 26, scope: !6322)
!6326 = !DILocation(line: 469, column: 6, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 469, column: 6)
!6328 = !DILocation(line: 469, column: 11, scope: !6327)
!6329 = !DILocation(line: 469, column: 6, scope: !6233)
!6330 = !DILocation(line: 469, column: 26, scope: !6327)
!6331 = !DILocation(line: 470, column: 6, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 470, column: 6)
!6333 = !DILocation(line: 470, column: 11, scope: !6332)
!6334 = !DILocation(line: 470, column: 6, scope: !6233)
!6335 = !DILocation(line: 470, column: 26, scope: !6332)
!6336 = !DILocation(line: 471, column: 6, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 471, column: 6)
!6338 = !DILocation(line: 471, column: 11, scope: !6337)
!6339 = !DILocation(line: 471, column: 6, scope: !6233)
!6340 = !DILocation(line: 471, column: 26, scope: !6337)
!6341 = !DILocation(line: 472, column: 6, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 472, column: 6)
!6343 = !DILocation(line: 472, column: 11, scope: !6342)
!6344 = !DILocation(line: 472, column: 6, scope: !6233)
!6345 = !DILocation(line: 472, column: 26, scope: !6342)
!6346 = !DILocation(line: 473, column: 6, scope: !6347)
!6347 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 473, column: 6)
!6348 = !DILocation(line: 473, column: 11, scope: !6347)
!6349 = !DILocation(line: 473, column: 6, scope: !6233)
!6350 = !DILocation(line: 473, column: 26, scope: !6347)
!6351 = !DILocation(line: 474, column: 6, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 474, column: 6)
!6353 = !DILocation(line: 474, column: 11, scope: !6352)
!6354 = !DILocation(line: 474, column: 6, scope: !6233)
!6355 = !DILocation(line: 474, column: 27, scope: !6352)
!6356 = !DILocation(line: 475, column: 6, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 475, column: 6)
!6358 = !DILocation(line: 475, column: 11, scope: !6357)
!6359 = !DILocation(line: 475, column: 6, scope: !6233)
!6360 = !DILocation(line: 475, column: 32, scope: !6357)
!6361 = !DILocation(line: 477, column: 50, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6233, file: !147, line: 477, column: 6)
!6363 = !DILocation(line: 477, column: 6, scope: !6233)
!6364 = !DILocation(line: 478, column: 3, scope: !6362)
!6365 = !DILocation(line: 478, column: 3, scope: !6366)
!6366 = distinct !DILexicalBlock(scope: !6367, file: !147, line: 478, column: 3)
!6367 = distinct !DILexicalBlock(scope: !6362, file: !147, line: 478, column: 3)
!6368 = !{i32 -2143546804}
!6369 = !DILocation(line: 478, column: 3, scope: !6367)
!6370 = !DILocation(line: 480, column: 3, scope: !6362)
!6371 = !DILocation(line: 480, column: 3, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6362, file: !147, line: 480, column: 3)
!6373 = !DILocation(line: 480, column: 3, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6372, file: !147, line: 480, column: 3)
!6375 = !DILocation(line: 480, column: 3, scope: !6376)
!6376 = distinct !DILexicalBlock(scope: !6372, file: !147, line: 480, column: 3)
!6377 = !{i64 2151420695, i64 2151420724, i64 2151420770, i64 2151420828, i64 2151420882, i64 2151420936, i64 2151420991, i64 2151421022}
!6378 = !DILocation(line: 483, column: 2, scope: !6233)
!6379 = !DILocation(line: 484, column: 1, scope: !6233)
!6380 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !6381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{!157, !6383, !242, !485}
!6383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6384, size: 64)
!6384 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6385, line: 11, flags: DIFlagFwdDecl)
!6385 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6386 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !6387, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6387 = !DISubroutineType(types: !6388)
!6388 = !{!146, !242, !199}
!6389 = !{!6390, !6391}
!6390 = !DILocalVariable(name: "flags", arg: 1, scope: !6386, file: !147, line: 401, type: !242)
!6391 = !DILocalVariable(name: "caller", arg: 2, scope: !6386, file: !147, line: 401, type: !199)
!6392 = !DILocation(line: 401, column: 67, scope: !6386)
!6393 = !DILocation(line: 401, column: 88, scope: !6386)
!6394 = !DILocation(line: 407, column: 6, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6386, file: !147, line: 407, column: 6)
!6396 = !DILocation(line: 407, column: 6, scope: !6386)
!6397 = !DILocation(line: 413, column: 3, scope: !6395)
!6398 = !DILocation(line: 423, column: 38, scope: !6399)
!6399 = distinct !DILexicalBlock(scope: !6386, file: !147, line: 423, column: 6)
!6400 = !DILocation(line: 423, column: 44, scope: !6399)
!6401 = !DILocation(line: 423, column: 6, scope: !6386)
!6402 = !DILocation(line: 424, column: 3, scope: !6399)
!6403 = !DILocation(line: 426, column: 3, scope: !6404)
!6404 = distinct !DILexicalBlock(scope: !6386, file: !147, line: 425, column: 6)
!6405 = !DILocation(line: 429, column: 1, scope: !6386)
!6406 = !DISubprogram(name: "__compiletime_assert_117", scope: !147, file: !147, line: 478, type: !1134, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6407 = distinct !DISubprogram(name: "cpuid", scope: !6122, file: !6122, line: 72, type: !6408, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6410)
!6408 = !DISubroutineType(types: !6409)
!6409 = !{null, !7, !845, !845, !845, !845}
!6410 = !{!6411, !6412, !6413, !6414, !6415}
!6411 = !DILocalVariable(name: "op", arg: 1, scope: !6407, file: !6122, line: 72, type: !7)
!6412 = !DILocalVariable(name: "eax", arg: 2, scope: !6407, file: !6122, line: 73, type: !845)
!6413 = !DILocalVariable(name: "ebx", arg: 3, scope: !6407, file: !6122, line: 73, type: !845)
!6414 = !DILocalVariable(name: "ecx", arg: 4, scope: !6407, file: !6122, line: 74, type: !845)
!6415 = !DILocalVariable(name: "edx", arg: 5, scope: !6407, file: !6122, line: 74, type: !845)
!6416 = !DILocation(line: 72, column: 39, scope: !6407)
!6417 = !DILocation(line: 73, column: 19, scope: !6407)
!6418 = !DILocation(line: 73, column: 38, scope: !6407)
!6419 = !DILocation(line: 74, column: 19, scope: !6407)
!6420 = !DILocation(line: 74, column: 38, scope: !6407)
!6421 = !DILocation(line: 76, column: 9, scope: !6407)
!6422 = !DILocation(line: 76, column: 3, scope: !6407)
!6423 = !DILocation(line: 76, column: 7, scope: !6407)
!6424 = !DILocation(line: 77, column: 3, scope: !6407)
!6425 = !DILocation(line: 77, column: 7, scope: !6407)
!6426 = !DILocation(line: 78, column: 10, scope: !6407)
!6427 = !DILocation(line: 78, column: 15, scope: !6407)
!6428 = !DILocation(line: 78, column: 20, scope: !6407)
!6429 = !DILocation(line: 78, column: 25, scope: !6407)
!6430 = !DILocation(line: 78, column: 2, scope: !6407)
!6431 = !DILocation(line: 79, column: 1, scope: !6407)
!6432 = distinct !DISubprogram(name: "native_cpuid", scope: !6122, file: !6122, line: 30, type: !6433, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6435)
!6433 = !DISubroutineType(types: !6434)
!6434 = !{null, !845, !845, !845, !845}
!6435 = !{!6436, !6437, !6438, !6439}
!6436 = !DILocalVariable(name: "eax", arg: 1, scope: !6432, file: !6122, line: 30, type: !845)
!6437 = !DILocalVariable(name: "ebx", arg: 2, scope: !6432, file: !6122, line: 30, type: !845)
!6438 = !DILocalVariable(name: "ecx", arg: 3, scope: !6432, file: !6122, line: 31, type: !845)
!6439 = !DILocalVariable(name: "edx", arg: 4, scope: !6432, file: !6122, line: 31, type: !845)
!6440 = !DILocation(line: 30, column: 47, scope: !6432)
!6441 = !DILocation(line: 30, column: 66, scope: !6432)
!6442 = !DILocation(line: 31, column: 19, scope: !6432)
!6443 = !DILocation(line: 31, column: 38, scope: !6432)
!6444 = !DILocation(line: 35, column: 15, scope: !6432)
!6445 = !DILocation(line: 36, column: 15, scope: !6432)
!6446 = !DILocation(line: 37, column: 15, scope: !6432)
!6447 = !DILocation(line: 38, column: 15, scope: !6432)
!6448 = !DILocation(line: 39, column: 14, scope: !6432)
!6449 = !DILocation(line: 39, column: 13, scope: !6432)
!6450 = !DILocation(line: 39, column: 26, scope: !6432)
!6451 = !DILocation(line: 39, column: 25, scope: !6432)
!6452 = !DILocation(line: 34, column: 2, scope: !6432)
!6453 = !{i64 1259029}
!6454 = !DILocation(line: 41, column: 1, scope: !6432)
!6455 = distinct !DISubprogram(name: "on_each_cpu", scope: !6456, file: !6456, line: 69, type: !6457, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6460)
!6456 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!6457 = !DISubroutineType(types: !6458)
!6458 = !{null, !6459, !157, !109}
!6459 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !6456, line: 17, baseType: !816)
!6460 = !{!6461, !6462, !6463}
!6461 = !DILocalVariable(name: "func", arg: 1, scope: !6455, file: !6456, line: 69, type: !6459)
!6462 = !DILocalVariable(name: "info", arg: 2, scope: !6455, file: !6456, line: 69, type: !157)
!6463 = !DILocalVariable(name: "wait", arg: 3, scope: !6455, file: !6456, line: 69, type: !109)
!6464 = !DILocation(line: 69, column: 48, scope: !6455)
!6465 = !DILocation(line: 69, column: 60, scope: !6455)
!6466 = !DILocation(line: 69, column: 70, scope: !6455)
!6467 = !DILocation(line: 71, column: 30, scope: !6455)
!6468 = !DILocation(line: 71, column: 36, scope: !6455)
!6469 = !DILocation(line: 71, column: 42, scope: !6455)
!6470 = !DILocation(line: 71, column: 2, scope: !6455)
!6471 = !DILocation(line: 72, column: 1, scope: !6455)
!6472 = distinct !DISubprogram(name: "__fix_erratum_688", scope: !3, file: !3, line: 500, type: !817, scopeLine: 501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6473)
!6473 = !{!6474}
!6474 = !DILocalVariable(name: "info", arg: 1, scope: !6472, file: !3, line: 500, type: !157)
!6475 = !DILocation(line: 500, column: 37, scope: !6472)
!6476 = !DILocation(line: 504, column: 2, scope: !6472)
!6477 = !DILocation(line: 505, column: 2, scope: !6472)
!6478 = !DILocation(line: 506, column: 1, scope: !6472)
!6479 = !DISubprogram(name: "on_each_cpu_cond_mask", scope: !6456, file: !6456, line: 53, type: !6480, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6480 = !DISubroutineType(types: !6481)
!6481 = !{null, !6482, !6459, !157, !235, !243}
!6482 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_cond_func_t", file: !6456, line: 18, baseType: !6483)
!6483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6484, size: 64)
!6484 = !DISubroutineType(types: !6485)
!6485 = !{!235, !109, !157}
!6486 = !DISubprogram(name: "msr_set_bit", scope: !5384, file: !5384, line: 310, type: !6487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6487 = !DISubroutineType(types: !6488)
!6488 = !{!109, !158, !240}
