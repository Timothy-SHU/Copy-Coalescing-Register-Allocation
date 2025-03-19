; ModuleID = 'drivers/pci/slot.c'
source_filename = "drivers/pci/slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_slots_kset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_slots_kset ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_create_slot: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_create_slot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_destroy_slot: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_destroy_slot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_hp_create_module_link: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_hp_create_module_link ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_hp_remove_module_link: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_hp_remove_module_link ; .previous"
module asm ".section\09\22.initcall4.init..kmod_slot__297_383_pci_slot_init\22, \22a\22\09\09"
module asm "__initcall__kmod_slot__297_383_pci_slot_init4:\09\09\09"
module asm ".long\09__initstub__kmod_slot__297_383_pci_slot_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_slot_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }
%struct.pci_sysdata = type { i32, i32, ptr, ptr, ptr }

@pci_slots_kset = hidden global ptr null, align 8, !dbg !0
@__UNIQUE_ID___addressable_pci_slots_kset292 = internal global ptr @pci_slots_kset, section ".discard.addressable", align 8, !dbg !4984
@pci_slot_mutex = external dso_local global %struct.mutex, align 8
@pci_slot_ktype = internal constant %struct.kobj_type { ptr @pci_slot_release, ptr @pci_slot_sysfs_ops, ptr @pci_slot_default_groups, ptr null, ptr null, ptr null }, align 8, !dbg !5011
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !4986
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 8
@__UNIQUE_ID___addressable_pci_create_slot293 = internal global ptr @pci_create_slot, section ".discard.addressable", align 8, !dbg !4989
@__UNIQUE_ID___addressable_pci_destroy_slot294 = internal global ptr @pci_destroy_slot, section ".discard.addressable", align 8, !dbg !4991
@module_kset = external dso_local global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"module\00", align 1, !dbg !4993
@.str.2 = private unnamed_addr constant [32 x i8] c"Error creating sysfs link (%d)\0A\00", align 1, !dbg !4996
@__UNIQUE_ID___addressable_pci_hp_create_module_link295 = internal global ptr @pci_hp_create_module_link, section ".discard.addressable", align 8, !dbg !4998
@__UNIQUE_ID___addressable_pci_hp_remove_module_link296 = internal global ptr @pci_hp_remove_module_link, section ".discard.addressable", align 8, !dbg !5000
@__UNIQUE_ID___addressable___initstub__kmod_slot__297_383_pci_slot_init4298 = internal global ptr @__initstub__kmod_slot__297_383_pci_slot_init4, section ".discard.addressable", align 8, !dbg !5002
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5004
@.str.4 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1, !dbg !5009
@pci_slot_sysfs_ops = internal constant %struct.sysfs_ops { ptr @pci_slot_attr_show, ptr @pci_slot_attr_store }, align 8, !dbg !5013
@pci_slot_default_groups = internal global [2 x ptr] [ptr @pci_slot_default_group, ptr null], align 16, !dbg !5015
@pci_slot_default_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_slot_default_attrs, ptr null }, align 8, !dbg !5018
@pci_slot_default_attrs = internal global [4 x ptr] [ptr @pci_slot_attr_address, ptr @pci_slot_attr_max_speed, ptr @pci_slot_attr_cur_speed, ptr null], align 16, !dbg !5020
@pci_slot_attr_address = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @address_read_file, ptr null }, align 8, !dbg !5025
@pci_slot_attr_max_speed = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @max_speed_read_file, ptr null }, align 8, !dbg !5037
@pci_slot_attr_cur_speed = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @cur_speed_read_file, ptr null }, align 8, !dbg !5044
@.str.5 = private unnamed_addr constant [8 x i8] c"address\00", align 1, !dbg !5023
@.str.6 = private unnamed_addr constant [11 x i8] c"%04x:%02x\0A\00", align 1, !dbg !5027
@.str.7 = private unnamed_addr constant [16 x i8] c"%04x:%02x:%02x\0A\00", align 1, !dbg !5030
@.str.8 = private unnamed_addr constant [14 x i8] c"max_bus_speed\00", align 1, !dbg !5032
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !5039
@.str.10 = private unnamed_addr constant [14 x i8] c"cur_bus_speed\00", align 1, !dbg !5042
@pci_bus_type = external dso_local global %struct.bus_type, align 8
@.str.11 = private unnamed_addr constant [6 x i8] c"slots\00", align 1, !dbg !5046
@.str.12 = private unnamed_addr constant [36 x i8] c"\013PCI: Slot initialization failure\0A\00", align 1, !dbg !5048
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_pci_slots_kset292, ptr @__UNIQUE_ID___addressable_pci_create_slot293, ptr @__UNIQUE_ID___addressable_pci_destroy_slot294, ptr @__UNIQUE_ID___addressable_pci_hp_create_module_link295, ptr @__UNIQUE_ID___addressable_pci_hp_remove_module_link296, ptr @__UNIQUE_ID___addressable___initstub__kmod_slot__297_383_pci_slot_init4298], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_dev_assign_slot(ptr noundef %dev) #0 align 16 !dbg !5062 {
entry:
  %dev.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5064, metadata !DIExpression()), !dbg !5072
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #15, !dbg !5073
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5065, metadata !DIExpression()), !dbg !5074
  call void @mutex_lock(ptr noundef @pci_slot_mutex) #16, !dbg !5075
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5076
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5066, metadata !DIExpression()), !dbg !5076
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5076
  %bus = getelementptr inbounds %struct.pci_dev, ptr %0, i32 0, i32 1, !dbg !5076
  %1 = load ptr, ptr %bus, align 8, !dbg !5076
  %slots = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 5, !dbg !5076
  %next = getelementptr inbounds %struct.list_head, ptr %slots, i32 0, i32 0, !dbg !5076
  %2 = load ptr, ptr %next, align 8, !dbg !5076
  store ptr %2, ptr %__mptr, align 8, !dbg !5076
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5076
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !5076
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5076
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5077
  %4 = load ptr, ptr %tmp, align 8, !dbg !5076
  store ptr %4, ptr %slot, align 8, !dbg !5077
  br label %for.cond, !dbg !5077

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %slot, align 8, !dbg !5078
  %list = getelementptr inbounds %struct.pci_slot, ptr %5, i32 0, i32 1, !dbg !5078
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5078
  %bus1 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1, !dbg !5078
  %7 = load ptr, ptr %bus1, align 8, !dbg !5078
  %slots2 = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 5, !dbg !5078
  %cmp = icmp eq ptr %list, %slots2, !dbg !5078
  %lnot = xor i1 %cmp, true, !dbg !5078
  br i1 %lnot, label %for.body, label %for.end, !dbg !5077

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !5079
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 6, !dbg !5079
  %9 = load i32, ptr %devfn, align 8, !dbg !5079
  %shr = lshr i32 %9, 3, !dbg !5079
  %and = and i32 %shr, 31, !dbg !5079
  %10 = load ptr, ptr %slot, align 8, !dbg !5081
  %number = getelementptr inbounds %struct.pci_slot, ptr %10, i32 0, i32 3, !dbg !5082
  %11 = load i8, ptr %number, align 8, !dbg !5082
  %conv = zext i8 %11 to i32, !dbg !5081
  %cmp3 = icmp eq i32 %and, %conv, !dbg !5083
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5084

if.then:                                          ; preds = %for.body
  %12 = load ptr, ptr %slot, align 8, !dbg !5085
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !5086
  %slot5 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 5, !dbg !5087
  store ptr %12, ptr %slot5, align 8, !dbg !5088
  br label %if.end, !dbg !5086

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5082

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #15, !dbg !5089
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5069, metadata !DIExpression()), !dbg !5089
  %14 = load ptr, ptr %slot, align 8, !dbg !5089
  %list7 = getelementptr inbounds %struct.pci_slot, ptr %14, i32 0, i32 1, !dbg !5089
  %next8 = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 0, !dbg !5089
  %15 = load ptr, ptr %next8, align 8, !dbg !5089
  store ptr %15, ptr %__mptr6, align 8, !dbg !5089
  %16 = load ptr, ptr %__mptr6, align 8, !dbg !5089
  %add.ptr10 = getelementptr i8, ptr %16, i64 -8, !dbg !5089
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5089
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #15, !dbg !5078
  %17 = load ptr, ptr %tmp9, align 8, !dbg !5089
  store ptr %17, ptr %slot, align 8, !dbg !5078
  br label %for.cond, !dbg !5078, !llvm.loop !5090

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @pci_slot_mutex) #16, !dbg !5094
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #15, !dbg !5095
  ret void, !dbg !5095
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5096 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5100 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pci_create_slot(ptr noundef %parent, i32 noundef %slot_nr, ptr noundef %name, ptr noundef %hotplug) #0 align 16 !dbg !5101 {
entry:
  %parent.addr = alloca ptr, align 8
  %slot_nr.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %hotplug.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %err = alloca i32, align 4
  %slot_name = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr39 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5105, metadata !DIExpression()), !dbg !5122
  store i32 %slot_nr, ptr %slot_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot_nr.addr, metadata !5106, metadata !DIExpression()), !dbg !5123
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5107, metadata !DIExpression()), !dbg !5124
  store ptr %hotplug, ptr %hotplug.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hotplug.addr, metadata !5108, metadata !DIExpression()), !dbg !5125
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5126
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5109, metadata !DIExpression()), !dbg !5127
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #15, !dbg !5128
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5110, metadata !DIExpression()), !dbg !5129
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5111, metadata !DIExpression()), !dbg !5131
  store i32 0, ptr %err, align 4, !dbg !5131
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot_name) #15, !dbg !5132
  call void @llvm.dbg.declare(metadata ptr %slot_name, metadata !5112, metadata !DIExpression()), !dbg !5133
  store ptr null, ptr %slot_name, align 8, !dbg !5133
  call void @mutex_lock(ptr noundef @pci_slot_mutex) #16, !dbg !5134
  %0 = load i32, ptr %slot_nr.addr, align 4, !dbg !5135
  %cmp = icmp eq i32 %0, -1, !dbg !5137
  br i1 %cmp, label %if.then, label %if.end, !dbg !5138

if.then:                                          ; preds = %entry
  br label %placeholder, !dbg !5139

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %parent.addr, align 8, !dbg !5140
  %2 = load i32, ptr %slot_nr.addr, align 4, !dbg !5141
  %call = call ptr @get_slot(ptr noundef %1, i32 noundef %2) #16, !dbg !5142
  store ptr %call, ptr %slot, align 8, !dbg !5143
  %3 = load ptr, ptr %slot, align 8, !dbg !5144
  %tobool = icmp ne ptr %3, null, !dbg !5144
  br i1 %tobool, label %if.then1, label %if.end12, !dbg !5146

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %hotplug.addr, align 8, !dbg !5147
  %tobool2 = icmp ne ptr %4, null, !dbg !5147
  br i1 %tobool2, label %if.then3, label %if.end11, !dbg !5150

if.then3:                                         ; preds = %if.then1
  %5 = load ptr, ptr %slot, align 8, !dbg !5151
  %hotplug4 = getelementptr inbounds %struct.pci_slot, ptr %5, i32 0, i32 2, !dbg !5154
  %6 = load ptr, ptr %hotplug4, align 8, !dbg !5154
  %tobool5 = icmp ne ptr %6, null, !dbg !5151
  %7 = zext i1 %tobool5 to i64, !dbg !5151
  %cond = select i1 %tobool5, i32 -16, i32 0, !dbg !5151
  store i32 %cond, ptr %err, align 4, !dbg !5155
  %tobool6 = icmp ne i32 %cond, 0, !dbg !5155
  br i1 %tobool6, label %if.then9, label %lor.lhs.false, !dbg !5156

lor.lhs.false:                                    ; preds = %if.then3
  %8 = load ptr, ptr %slot, align 8, !dbg !5157
  %9 = load ptr, ptr %name.addr, align 8, !dbg !5158
  %call7 = call i32 @rename_slot(ptr noundef %8, ptr noundef %9) #16, !dbg !5159
  store i32 %call7, ptr %err, align 4, !dbg !5160
  %tobool8 = icmp ne i32 %call7, 0, !dbg !5160
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5161

if.then9:                                         ; preds = %lor.lhs.false, %if.then3
  %10 = load ptr, ptr %slot, align 8, !dbg !5162
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %10, i32 0, i32 4, !dbg !5164
  call void @kobject_put(ptr noundef %kobj) #16, !dbg !5165
  store ptr null, ptr %slot, align 8, !dbg !5166
  br label %err44, !dbg !5167

if.end10:                                         ; preds = %lor.lhs.false
  br label %if.end11, !dbg !5168

if.end11:                                         ; preds = %if.end10, %if.then1
  br label %out, !dbg !5169

if.end12:                                         ; preds = %if.end
  br label %placeholder, !dbg !5144

placeholder:                                      ; preds = %if.end12, %if.then
  call void @llvm.dbg.label(metadata !5113), !dbg !5170
  %call13 = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #17, !dbg !5171
  store ptr %call13, ptr %slot, align 8, !dbg !5172
  %11 = load ptr, ptr %slot, align 8, !dbg !5173
  %tobool14 = icmp ne ptr %11, null, !dbg !5173
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !5175

if.then15:                                        ; preds = %placeholder
  store i32 -12, ptr %err, align 4, !dbg !5176
  br label %err44, !dbg !5178

if.end16:                                         ; preds = %placeholder
  %12 = load ptr, ptr %parent.addr, align 8, !dbg !5179
  %call17 = call ptr @pci_bus_get(ptr noundef %12) #16, !dbg !5180
  %13 = load ptr, ptr %slot, align 8, !dbg !5181
  %bus = getelementptr inbounds %struct.pci_slot, ptr %13, i32 0, i32 0, !dbg !5182
  store ptr %call17, ptr %bus, align 8, !dbg !5183
  %14 = load i32, ptr %slot_nr.addr, align 4, !dbg !5184
  %conv = trunc i32 %14 to i8, !dbg !5184
  %15 = load ptr, ptr %slot, align 8, !dbg !5185
  %number = getelementptr inbounds %struct.pci_slot, ptr %15, i32 0, i32 3, !dbg !5186
  store i8 %conv, ptr %number, align 8, !dbg !5187
  %16 = load ptr, ptr @pci_slots_kset, align 8, !dbg !5188
  %17 = load ptr, ptr %slot, align 8, !dbg !5189
  %kobj18 = getelementptr inbounds %struct.pci_slot, ptr %17, i32 0, i32 4, !dbg !5190
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj18, i32 0, i32 3, !dbg !5191
  store ptr %16, ptr %kset, align 8, !dbg !5192
  %18 = load ptr, ptr %name.addr, align 8, !dbg !5193
  %call19 = call ptr @make_slot_name(ptr noundef %18) #16, !dbg !5194
  store ptr %call19, ptr %slot_name, align 8, !dbg !5195
  %19 = load ptr, ptr %slot_name, align 8, !dbg !5196
  %tobool20 = icmp ne ptr %19, null, !dbg !5196
  br i1 %tobool20, label %if.end23, label %if.then21, !dbg !5198

if.then21:                                        ; preds = %if.end16
  store i32 -12, ptr %err, align 4, !dbg !5199
  %20 = load ptr, ptr %slot, align 8, !dbg !5201
  %bus22 = getelementptr inbounds %struct.pci_slot, ptr %20, i32 0, i32 0, !dbg !5202
  %21 = load ptr, ptr %bus22, align 8, !dbg !5202
  call void @pci_bus_put(ptr noundef %21) #16, !dbg !5203
  %22 = load ptr, ptr %slot, align 8, !dbg !5204
  call void @kfree(ptr noundef %22) #16, !dbg !5205
  br label %err44, !dbg !5206

if.end23:                                         ; preds = %if.end16
  %23 = load ptr, ptr %slot, align 8, !dbg !5207
  %list = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 1, !dbg !5208
  call void @INIT_LIST_HEAD(ptr noundef %list) #16, !dbg !5209
  %24 = load ptr, ptr %slot, align 8, !dbg !5210
  %list24 = getelementptr inbounds %struct.pci_slot, ptr %24, i32 0, i32 1, !dbg !5211
  %25 = load ptr, ptr %parent.addr, align 8, !dbg !5212
  %slots = getelementptr inbounds %struct.pci_bus, ptr %25, i32 0, i32 5, !dbg !5213
  call void @list_add(ptr noundef %list24, ptr noundef %slots) #16, !dbg !5214
  %26 = load ptr, ptr %slot, align 8, !dbg !5215
  %kobj25 = getelementptr inbounds %struct.pci_slot, ptr %26, i32 0, i32 4, !dbg !5216
  %27 = load ptr, ptr %slot_name, align 8, !dbg !5217
  %call26 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj25, ptr noundef @pci_slot_ktype, ptr noundef null, ptr noundef @.str, ptr noundef %27) #16, !dbg !5218
  store i32 %call26, ptr %err, align 4, !dbg !5219
  %28 = load i32, ptr %err, align 4, !dbg !5220
  %tobool27 = icmp ne i32 %28, 0, !dbg !5220
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !5222

if.then28:                                        ; preds = %if.end23
  %29 = load ptr, ptr %slot, align 8, !dbg !5223
  %kobj29 = getelementptr inbounds %struct.pci_slot, ptr %29, i32 0, i32 4, !dbg !5225
  call void @kobject_put(ptr noundef %kobj29) #16, !dbg !5226
  br label %err44, !dbg !5227

if.end30:                                         ; preds = %if.end23
  call void @down_read(ptr noundef @pci_bus_sem) #16, !dbg !5228
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5229
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5114, metadata !DIExpression()), !dbg !5229
  %30 = load ptr, ptr %parent.addr, align 8, !dbg !5229
  %devices = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 3, !dbg !5229
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5229
  %31 = load ptr, ptr %next, align 8, !dbg !5229
  store ptr %31, ptr %__mptr, align 8, !dbg !5229
  %32 = load ptr, ptr %__mptr, align 8, !dbg !5229
  %add.ptr = getelementptr i8, ptr %32, i64 0, !dbg !5229
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5229
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5230
  %33 = load ptr, ptr %tmp, align 8, !dbg !5229
  store ptr %33, ptr %dev, align 8, !dbg !5230
  br label %for.cond, !dbg !5230

for.cond:                                         ; preds = %for.inc, %if.end30
  %34 = load ptr, ptr %dev, align 8, !dbg !5231
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 0, !dbg !5231
  %35 = load ptr, ptr %parent.addr, align 8, !dbg !5231
  %devices31 = getelementptr inbounds %struct.pci_bus, ptr %35, i32 0, i32 3, !dbg !5231
  %cmp32 = icmp eq ptr %bus_list, %devices31, !dbg !5231
  %lnot = xor i1 %cmp32, true, !dbg !5231
  br i1 %lnot, label %for.body, label %for.end, !dbg !5230

for.body:                                         ; preds = %for.cond
  %36 = load ptr, ptr %dev, align 8, !dbg !5232
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 6, !dbg !5232
  %37 = load i32, ptr %devfn, align 8, !dbg !5232
  %shr = lshr i32 %37, 3, !dbg !5232
  %and = and i32 %shr, 31, !dbg !5232
  %38 = load i32, ptr %slot_nr.addr, align 4, !dbg !5234
  %cmp34 = icmp eq i32 %and, %38, !dbg !5235
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !5236

if.then36:                                        ; preds = %for.body
  %39 = load ptr, ptr %slot, align 8, !dbg !5237
  %40 = load ptr, ptr %dev, align 8, !dbg !5238
  %slot37 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 5, !dbg !5239
  store ptr %39, ptr %slot37, align 8, !dbg !5240
  br label %if.end38, !dbg !5238

if.end38:                                         ; preds = %if.then36, %for.body
  br label %for.inc, !dbg !5234

for.inc:                                          ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr39) #15, !dbg !5241
  call void @llvm.dbg.declare(metadata ptr %__mptr39, metadata !5117, metadata !DIExpression()), !dbg !5241
  %41 = load ptr, ptr %dev, align 8, !dbg !5241
  %bus_list40 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 0, !dbg !5241
  %next41 = getelementptr inbounds %struct.list_head, ptr %bus_list40, i32 0, i32 0, !dbg !5241
  %42 = load ptr, ptr %next41, align 8, !dbg !5241
  store ptr %42, ptr %__mptr39, align 8, !dbg !5241
  %43 = load ptr, ptr %__mptr39, align 8, !dbg !5241
  %add.ptr43 = getelementptr i8, ptr %43, i64 0, !dbg !5241
  store ptr %add.ptr43, ptr %tmp42, align 8, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr39) #15, !dbg !5231
  %44 = load ptr, ptr %tmp42, align 8, !dbg !5241
  store ptr %44, ptr %dev, align 8, !dbg !5231
  br label %for.cond, !dbg !5231, !llvm.loop !5242

for.end:                                          ; preds = %for.cond
  call void @up_read(ptr noundef @pci_bus_sem) #16, !dbg !5244
  br label %out, !dbg !5245

out:                                              ; preds = %err44, %for.end, %if.end11
  call void @llvm.dbg.label(metadata !5120), !dbg !5246
  %45 = load ptr, ptr %slot_name, align 8, !dbg !5247
  call void @kfree(ptr noundef %45) #16, !dbg !5248
  call void @mutex_unlock(ptr noundef @pci_slot_mutex) #16, !dbg !5249
  %46 = load ptr, ptr %slot, align 8, !dbg !5250
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot_name) #15, !dbg !5251
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5251
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #15, !dbg !5251
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5251
  ret ptr %46, !dbg !5252

err44:                                            ; preds = %if.then28, %if.then21, %if.then15, %if.then9
  call void @llvm.dbg.label(metadata !5121), !dbg !5253
  %47 = load i32, ptr %err, align 4, !dbg !5254
  %conv45 = sext i32 %47 to i64, !dbg !5254
  %call46 = call ptr @ERR_PTR(i64 noundef %conv45) #16, !dbg !5255
  store ptr %call46, ptr %slot, align 8, !dbg !5256
  br label %out, !dbg !5257
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_slot(ptr noundef %parent, i32 noundef %slot_nr) #0 align 16 !dbg !5258 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %slot_nr.addr = alloca i32, align 4
  %slot = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5262, metadata !DIExpression()), !dbg !5271
  store i32 %slot_nr, ptr %slot_nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %slot_nr.addr, metadata !5263, metadata !DIExpression()), !dbg !5272
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #15, !dbg !5273
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5264, metadata !DIExpression()), !dbg !5274
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5275
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5265, metadata !DIExpression()), !dbg !5275
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !5275
  %slots = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 5, !dbg !5275
  %next = getelementptr inbounds %struct.list_head, ptr %slots, i32 0, i32 0, !dbg !5275
  %1 = load ptr, ptr %next, align 8, !dbg !5275
  store ptr %1, ptr %__mptr, align 8, !dbg !5275
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5275
  %add.ptr = getelementptr i8, ptr %2, i64 -8, !dbg !5275
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5275
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5276
  %3 = load ptr, ptr %tmp, align 8, !dbg !5275
  store ptr %3, ptr %slot, align 8, !dbg !5276
  br label %for.cond, !dbg !5276

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %slot, align 8, !dbg !5277
  %list = getelementptr inbounds %struct.pci_slot, ptr %4, i32 0, i32 1, !dbg !5277
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !5277
  %slots1 = getelementptr inbounds %struct.pci_bus, ptr %5, i32 0, i32 5, !dbg !5277
  %cmp = icmp eq ptr %list, %slots1, !dbg !5277
  %lnot = xor i1 %cmp, true, !dbg !5277
  br i1 %lnot, label %for.body, label %for.end, !dbg !5276

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %slot, align 8, !dbg !5278
  %number = getelementptr inbounds %struct.pci_slot, ptr %6, i32 0, i32 3, !dbg !5280
  %7 = load i8, ptr %number, align 8, !dbg !5280
  %conv = zext i8 %7 to i32, !dbg !5278
  %8 = load i32, ptr %slot_nr.addr, align 4, !dbg !5281
  %cmp2 = icmp eq i32 %conv, %8, !dbg !5282
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5283

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %slot, align 8, !dbg !5284
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %9, i32 0, i32 4, !dbg !5286
  %call = call ptr @kobject_get(ptr noundef %kobj) #16, !dbg !5287
  %10 = load ptr, ptr %slot, align 8, !dbg !5288
  store ptr %10, ptr %retval, align 8, !dbg !5289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5289

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5281

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #15, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5268, metadata !DIExpression()), !dbg !5290
  %11 = load ptr, ptr %slot, align 8, !dbg !5290
  %list5 = getelementptr inbounds %struct.pci_slot, ptr %11, i32 0, i32 1, !dbg !5290
  %next6 = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !5290
  %12 = load ptr, ptr %next6, align 8, !dbg !5290
  store ptr %12, ptr %__mptr4, align 8, !dbg !5290
  %13 = load ptr, ptr %__mptr4, align 8, !dbg !5290
  %add.ptr8 = getelementptr i8, ptr %13, i64 -8, !dbg !5290
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !5290
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #15, !dbg !5277
  %14 = load ptr, ptr %tmp7, align 8, !dbg !5290
  store ptr %14, ptr %slot, align 8, !dbg !5277
  br label %for.cond, !dbg !5277, !llvm.loop !5291

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5293

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #15, !dbg !5294
  %15 = load ptr, ptr %retval, align 8, !dbg !5294
  ret ptr %15, !dbg !5294
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rename_slot(ptr noundef %slot, ptr noundef %name) #0 align 16 !dbg !5295 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %slot_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5299, metadata !DIExpression()), !dbg !5303
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5300, metadata !DIExpression()), !dbg !5304
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #15, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5301, metadata !DIExpression()), !dbg !5306
  store i32 0, ptr %result, align 4, !dbg !5306
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot_name) #15, !dbg !5307
  call void @llvm.dbg.declare(metadata ptr %slot_name, metadata !5302, metadata !DIExpression()), !dbg !5308
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5309
  %call = call ptr @pci_slot_name(ptr noundef %0) #16, !dbg !5311
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5312
  %call1 = call i32 @strcmp(ptr noundef %call, ptr noundef %1) #16, !dbg !5313
  %cmp = icmp eq i32 %call1, 0, !dbg !5314
  br i1 %cmp, label %if.then, label %if.end, !dbg !5315

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %result, align 4, !dbg !5316
  store i32 %2, ptr %retval, align 4, !dbg !5317
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5317

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5318
  %call2 = call ptr @make_slot_name(ptr noundef %3) #16, !dbg !5319
  store ptr %call2, ptr %slot_name, align 8, !dbg !5320
  %4 = load ptr, ptr %slot_name, align 8, !dbg !5321
  %tobool = icmp ne ptr %4, null, !dbg !5321
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !5323

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !5324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5324

if.end4:                                          ; preds = %if.end
  %5 = load ptr, ptr %slot.addr, align 8, !dbg !5325
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %5, i32 0, i32 4, !dbg !5326
  %6 = load ptr, ptr %slot_name, align 8, !dbg !5327
  %call5 = call i32 @kobject_rename(ptr noundef %kobj, ptr noundef %6) #16, !dbg !5328
  store i32 %call5, ptr %result, align 4, !dbg !5329
  %7 = load ptr, ptr %slot_name, align 8, !dbg !5330
  call void @kfree(ptr noundef %7) #16, !dbg !5331
  %8 = load i32, ptr %result, align 4, !dbg !5332
  store i32 %8, ptr %retval, align 4, !dbg !5333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5333

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot_name) #15, !dbg !5334
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #15, !dbg !5334
  %9 = load i32, ptr %retval, align 4, !dbg !5334
  ret i32 %9, !dbg !5334
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5335 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5336 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5340, metadata !DIExpression()), !dbg !5342
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5341, metadata !DIExpression()), !dbg !5343
  %0 = load i64, ptr %size.addr, align 8, !dbg !5344
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5345
  %or = or i32 %1, 256, !dbg !5346
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !5347
  ret ptr %call, !dbg !5348
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5349 dso_local ptr @pci_bus_get(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @make_slot_name(ptr noundef %name) #0 align 16 !dbg !5352 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %new_name = alloca ptr, align 8
  %len = alloca i32, align 4
  %max = alloca i32, align 4
  %dup = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %dup_slot = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5356, metadata !DIExpression()), !dbg !5365
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_name) #15, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %new_name, metadata !5357, metadata !DIExpression()), !dbg !5367
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5358, metadata !DIExpression()), !dbg !5369
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #15, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %max, metadata !5359, metadata !DIExpression()), !dbg !5370
  call void @llvm.lifetime.start.p0(i64 4, ptr %dup) #15, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %dup, metadata !5360, metadata !DIExpression()), !dbg !5371
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5372
  %call = call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #16, !dbg !5373
  store ptr %call, ptr %new_name, align 8, !dbg !5374
  %1 = load ptr, ptr %new_name, align 8, !dbg !5375
  %tobool = icmp ne ptr %1, null, !dbg !5375
  br i1 %tobool, label %if.end, label %if.then, !dbg !5377

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !5378

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5379
  %call1 = call i64 @strlen(ptr noundef %2) #16, !dbg !5380
  %add = add i64 %call1, 2, !dbg !5381
  %conv = trunc i64 %add to i32, !dbg !5380
  store i32 %conv, ptr %len, align 4, !dbg !5382
  store i32 1, ptr %max, align 4, !dbg !5383
  store i32 1, ptr %dup, align 4, !dbg !5384
  br label %for.cond, !dbg !5385

for.cond:                                         ; preds = %cleanup.cont, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %dup_slot) #15, !dbg !5386
  call void @llvm.dbg.declare(metadata ptr %dup_slot, metadata !5361, metadata !DIExpression()), !dbg !5387
  %3 = load ptr, ptr @pci_slots_kset, align 8, !dbg !5388
  %4 = load ptr, ptr %new_name, align 8, !dbg !5389
  %call2 = call ptr @kset_find_obj(ptr noundef %3, ptr noundef %4) #16, !dbg !5390
  store ptr %call2, ptr %dup_slot, align 8, !dbg !5391
  %5 = load ptr, ptr %dup_slot, align 8, !dbg !5392
  %tobool3 = icmp ne ptr %5, null, !dbg !5392
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !5394

if.then4:                                         ; preds = %for.cond
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5395

if.end5:                                          ; preds = %for.cond
  %6 = load ptr, ptr %dup_slot, align 8, !dbg !5396
  call void @kobject_put(ptr noundef %6) #16, !dbg !5397
  %7 = load i32, ptr %dup, align 4, !dbg !5398
  %8 = load i32, ptr %max, align 4, !dbg !5400
  %cmp = icmp eq i32 %7, %8, !dbg !5401
  br i1 %cmp, label %if.then7, label %if.end13, !dbg !5402

if.then7:                                         ; preds = %if.end5
  %9 = load i32, ptr %len, align 4, !dbg !5403
  %inc = add i32 %9, 1, !dbg !5403
  store i32 %inc, ptr %len, align 4, !dbg !5403
  %10 = load i32, ptr %max, align 4, !dbg !5405
  %mul = mul i32 %10, 10, !dbg !5405
  store i32 %mul, ptr %max, align 4, !dbg !5405
  %11 = load ptr, ptr %new_name, align 8, !dbg !5406
  call void @kfree(ptr noundef %11) #16, !dbg !5407
  %12 = load i32, ptr %len, align 4, !dbg !5408
  %conv8 = sext i32 %12 to i64, !dbg !5408
  %call9 = call noalias ptr @kmalloc(i64 noundef %conv8, i32 noundef 3264) #17, !dbg !5409
  store ptr %call9, ptr %new_name, align 8, !dbg !5410
  %13 = load ptr, ptr %new_name, align 8, !dbg !5411
  %tobool10 = icmp ne ptr %13, null, !dbg !5411
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5413

if.then11:                                        ; preds = %if.then7
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5414

if.end12:                                         ; preds = %if.then7
  br label %if.end13, !dbg !5415

if.end13:                                         ; preds = %if.end12, %if.end5
  %14 = load ptr, ptr %new_name, align 8, !dbg !5416
  %15 = load ptr, ptr %name.addr, align 8, !dbg !5417
  %16 = load i32, ptr %dup, align 4, !dbg !5418
  %inc14 = add i32 %16, 1, !dbg !5418
  store i32 %inc14, ptr %dup, align 4, !dbg !5418
  %call15 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %14, ptr noundef @.str.4, ptr noundef %15, i32 noundef %16) #16, !dbg !5419
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5420
  br label %cleanup, !dbg !5420

cleanup:                                          ; preds = %if.end13, %if.then11, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %dup_slot) #15, !dbg !5420
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5421, !llvm.loop !5422

for.end:                                          ; preds = %cleanup
  %17 = load ptr, ptr %new_name, align 8, !dbg !5425
  store ptr %17, ptr %retval, align 8, !dbg !5426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup16, !dbg !5426

cleanup16:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %dup) #15, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #15, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !5427
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_name) #15, !dbg !5427
  %18 = load ptr, ptr %retval, align 8, !dbg !5427
  ret ptr %18, !dbg !5427

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5428 dso_local void @pci_bus_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5429 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5432 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  br label %do.body, !dbg !5439

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5440

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5442

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5440

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5444
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5444
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5444
  store volatile ptr %0, ptr %next, align 8, !dbg !5444
  br label %do.end3, !dbg !5444

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5440

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5446

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5447

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5449

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5447

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5451
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5451
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5451
  store volatile ptr %2, ptr %prev, align 8, !dbg !5451
  br label %do.end9, !dbg !5451

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5447

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !5454 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5458, metadata !DIExpression()), !dbg !5460
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5459, metadata !DIExpression()), !dbg !5461
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5462
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5463
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5464
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5465
  %3 = load ptr, ptr %next, align 8, !dbg !5465
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !dbg !5466
  ret void, !dbg !5467
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5468 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5471 dso_local void @down_read(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5475 dso_local void @up_read(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5476 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5481, metadata !DIExpression()), !dbg !5482
  %0 = load i64, ptr %error.addr, align 8, !dbg !5483
  %1 = inttoptr i64 %0 to ptr, !dbg !5484
  ret ptr %1, !dbg !5485
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_destroy_slot(ptr noundef %slot) #0 align 16 !dbg !5486 {
entry:
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5490, metadata !DIExpression()), !dbg !5491
  call void @mutex_lock(ptr noundef @pci_slot_mutex) #16, !dbg !5492
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5493
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 4, !dbg !5494
  call void @kobject_put(ptr noundef %kobj) #16, !dbg !5495
  call void @mutex_unlock(ptr noundef @pci_slot_mutex) #16, !dbg !5496
  ret void, !dbg !5497
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_hp_create_module_link(ptr noundef %pci_slot) #0 align 16 !dbg !5498 {
entry:
  %pci_slot.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5500, metadata !DIExpression()), !dbg !5504
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #15, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5501, metadata !DIExpression()), !dbg !5506
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5507
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5508
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5508
  store ptr %1, ptr %slot, align 8, !dbg !5506
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #15, !dbg !5509
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5502, metadata !DIExpression()), !dbg !5510
  store ptr null, ptr %kobj, align 8, !dbg !5510
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5503, metadata !DIExpression()), !dbg !5512
  %2 = load ptr, ptr %slot, align 8, !dbg !5513
  %tobool = icmp ne ptr %2, null, !dbg !5513
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5515

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %slot, align 8, !dbg !5516
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %3, i32 0, i32 0, !dbg !5517
  %4 = load ptr, ptr %ops, align 8, !dbg !5517
  %tobool1 = icmp ne ptr %4, null, !dbg !5516
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5518

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5519

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr @module_kset, align 8, !dbg !5520
  %6 = load ptr, ptr %slot, align 8, !dbg !5521
  %mod_name = getelementptr inbounds %struct.hotplug_slot, ptr %6, i32 0, i32 4, !dbg !5522
  %7 = load ptr, ptr %mod_name, align 8, !dbg !5522
  %call = call ptr @kset_find_obj(ptr noundef %5, ptr noundef %7) #16, !dbg !5523
  store ptr %call, ptr %kobj, align 8, !dbg !5524
  %8 = load ptr, ptr %kobj, align 8, !dbg !5525
  %tobool2 = icmp ne ptr %8, null, !dbg !5525
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5527

if.then3:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5528

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5529
  %kobj5 = getelementptr inbounds %struct.pci_slot, ptr %9, i32 0, i32 4, !dbg !5530
  %10 = load ptr, ptr %kobj, align 8, !dbg !5531
  %call6 = call i32 @sysfs_create_link(ptr noundef %kobj5, ptr noundef %10, ptr noundef @.str.1) #16, !dbg !5532
  store i32 %call6, ptr %ret, align 4, !dbg !5533
  %11 = load i32, ptr %ret, align 4, !dbg !5534
  %tobool7 = icmp ne i32 %11, 0, !dbg !5534
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5536

if.then8:                                         ; preds = %if.end4
  br label %do.body, !dbg !5537

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !5539

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5539

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5537
  %bus = getelementptr inbounds %struct.pci_slot, ptr %12, i32 0, i32 0, !dbg !5537
  %13 = load ptr, ptr %bus, align 8, !dbg !5537
  %dev = getelementptr inbounds %struct.pci_bus, ptr %13, i32 0, i32 20, !dbg !5537
  %14 = load i32, ptr %ret, align 4, !dbg !5537
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.2, i32 noundef %14) #18, !dbg !5537
  br label %if.end9, !dbg !5541

if.end9:                                          ; preds = %do.end, %if.end4
  %15 = load ptr, ptr %kobj, align 8, !dbg !5542
  call void @kobject_put(ptr noundef %15) #16, !dbg !5543
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5544
  br label %cleanup, !dbg !5544

cleanup:                                          ; preds = %if.end9, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #15, !dbg !5544
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #15, !dbg !5544
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5544

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5545 dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5548 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5551 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_hp_remove_module_link(ptr noundef %pci_slot) #0 align 16 !dbg !5555 {
entry:
  %pci_slot.addr = alloca ptr, align 8
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5557, metadata !DIExpression()), !dbg !5558
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5559
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 4, !dbg !5560
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef @.str.1) #16, !dbg !5561
  ret void, !dbg !5562
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5563 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_slot__297_383_pci_slot_init4() #7 section ".init.text" align 16 !dbg !5566 {
entry:
  %call = call i32 @pci_slot_init() #16, !dbg !5567
  ret i32 %call, !dbg !5567
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_slot_init() #0 align 16 !dbg !5568 {
entry:
  %retval = alloca i32, align 4
  %pci_bus_kset = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_bus_kset) #15, !dbg !5571
  call void @llvm.dbg.declare(metadata ptr %pci_bus_kset, metadata !5570, metadata !DIExpression()), !dbg !5572
  %call = call ptr @bus_get_kset(ptr noundef @pci_bus_type) #16, !dbg !5573
  store ptr %call, ptr %pci_bus_kset, align 8, !dbg !5574
  %0 = load ptr, ptr %pci_bus_kset, align 8, !dbg !5575
  %kobj = getelementptr inbounds %struct.kset, ptr %0, i32 0, i32 2, !dbg !5576
  %call1 = call ptr @kset_create_and_add(ptr noundef @.str.11, ptr noundef null, ptr noundef %kobj) #16, !dbg !5577
  store ptr %call1, ptr @pci_slots_kset, align 8, !dbg !5578
  %1 = load ptr, ptr @pci_slots_kset, align 8, !dbg !5579
  %tobool = icmp ne ptr %1, null, !dbg !5579
  br i1 %tobool, label %if.end, label %if.then, !dbg !5581

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5582

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5585

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5585

do.end:                                           ; preds = %do.cond
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.12) #18, !dbg !5582
  store i32 %call2, ptr %tmp, align 4, !dbg !5585
  %2 = load i32, ptr %tmp, align 4, !dbg !5582
  store i32 -12, ptr %retval, align 4, !dbg !5587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5587

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5588

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_bus_kset) #15, !dbg !5589
  %3 = load i32, ptr %retval, align 4, !dbg !5589
  ret i32 %3, !dbg !5589
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5590 dso_local ptr @kobject_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5593 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_slot_name(ptr noundef %slot) #5 align 16 !dbg !5597 {
entry:
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5603, metadata !DIExpression()), !dbg !5604
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5605
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 4, !dbg !5606
  %call = call ptr @kobject_name(ptr noundef %kobj) #16, !dbg !5607
  ret ptr %call, !dbg !5608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5609 dso_local i32 @kobject_rename(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !5612 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5616
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !5617
  %1 = load ptr, ptr %name, align 8, !dbg !5617
  ret ptr %1, !dbg !5618
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5619 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5621, metadata !DIExpression()), !dbg !5626
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5622, metadata !DIExpression()), !dbg !5627
  %0 = load i64, ptr %size.addr, align 8, !dbg !5628
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5629
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5630

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5631
  %tobool = icmp ne i64 %2, 0, !dbg !5631
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5632

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !5633
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5623, metadata !DIExpression()), !dbg !5634
  %3 = load i64, ptr %size.addr, align 8, !dbg !5635
  %cmp = icmp ugt i64 %3, 8192, !dbg !5637
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5638

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5639
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5640
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5641
  store ptr %call, ptr %retval, align 8, !dbg !5642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5642

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5643
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !5643
  store i32 %call2, ptr %index, align 4, !dbg !5644
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5645
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5646
  %9 = ptrtoint ptr %8 to i64, !dbg !5646
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !5647
  %idxprom = zext i32 %call3 to i64, !dbg !5648
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5648
  %10 = load i32, ptr %index, align 4, !dbg !5649
  %idxprom4 = zext i32 %10 to i64, !dbg !5648
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5648
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5648
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5650
  %13 = load i64, ptr %size.addr, align 8, !dbg !5651
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5652
  store ptr %call6, ptr %retval, align 8, !dbg !5653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5653

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !5654
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5655
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5656
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5657
  store ptr %call8, ptr %retval, align 8, !dbg !5658
  br label %return, !dbg !5658

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5659
  ret ptr %16, !dbg !5659
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5660 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !5661 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5665, metadata !DIExpression()), !dbg !5667
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5666, metadata !DIExpression()), !dbg !5668
  %0 = load i64, ptr %size.addr, align 8, !dbg !5669
  %tobool = icmp ne i64 %0, 0, !dbg !5669
  br i1 %tobool, label %if.end, label %if.then, !dbg !5671

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5672
  br label %return, !dbg !5672

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5673
  %cmp = icmp ule i64 %1, 8, !dbg !5675
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5676

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5677
  br label %return, !dbg !5677

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5678
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5680
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5681

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5682
  %cmp4 = icmp ule i64 %3, 96, !dbg !5683
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5684

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5685
  br label %return, !dbg !5685

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5686
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5688
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5689

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5690
  %cmp9 = icmp ule i64 %5, 192, !dbg !5691
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5692

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5693
  br label %return, !dbg !5693

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5694
  %cmp12 = icmp ule i64 %6, 8, !dbg !5696
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5697

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5698
  br label %return, !dbg !5698

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5699
  %cmp15 = icmp ule i64 %7, 16, !dbg !5701
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5702

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5703
  br label %return, !dbg !5703

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5704
  %cmp18 = icmp ule i64 %8, 32, !dbg !5706
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5707

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5708
  br label %return, !dbg !5708

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5709
  %cmp21 = icmp ule i64 %9, 64, !dbg !5711
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5712

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5713
  br label %return, !dbg !5713

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5714
  %cmp24 = icmp ule i64 %10, 128, !dbg !5716
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5717

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5718
  br label %return, !dbg !5718

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5719
  %cmp27 = icmp ule i64 %11, 256, !dbg !5721
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5722

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5723
  br label %return, !dbg !5723

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5724
  %cmp30 = icmp ule i64 %12, 512, !dbg !5726
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5727

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5728
  br label %return, !dbg !5728

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5729
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5731
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5732

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5733
  br label %return, !dbg !5733

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5734
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5736
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5737

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5738
  br label %return, !dbg !5738

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5739
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5741
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5742

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5743
  br label %return, !dbg !5743

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5744
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5746
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5747

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5748
  br label %return, !dbg !5748

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5749
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5751
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5752

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5753
  br label %return, !dbg !5753

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5754
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5756
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5757

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5758
  br label %return, !dbg !5758

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5759
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5761
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5762

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5763
  br label %return, !dbg !5763

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5764
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5766
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5767

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5768
  br label %return, !dbg !5768

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5769
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5771
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5772

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5773
  br label %return, !dbg !5773

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5774
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5776
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5777

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5778
  br label %return, !dbg !5778

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5779
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5781
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5782

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5783
  br label %return, !dbg !5783

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5784
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5786
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5787

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5788
  br label %return, !dbg !5788

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5789, !range !5791, !noundef !1518
  %tobool69 = trunc i8 %25 to i1, !dbg !5789
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5792

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5793

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_190() #20, !dbg !5794, !srcloc !5797
  unreachable, !dbg !5794

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5798

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5799

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5800

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5802

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5800

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 480, i32 0, i64 12) #15, !dbg !5804, !srcloc !5806
  br label %do.end75, !dbg !5804

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5800

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5807
  br label %return, !dbg !5807

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5808
  ret i32 %26, !dbg !5808
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5809 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !5815 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5819, metadata !DIExpression()), !dbg !5821
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5820, metadata !DIExpression()), !dbg !5822
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5823
  %and = and i32 %0, 17, !dbg !5823
  %cmp = icmp eq i32 %and, 0, !dbg !5823
  %lnot = xor i1 %cmp, true, !dbg !5823
  %lnot1 = xor i1 %lnot, true, !dbg !5823
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5823
  %conv = sext i32 %lnot.ext to i64, !dbg !5823
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5823
  %tobool = icmp ne i64 %expval, 0, !dbg !5823
  br i1 %tobool, label %if.then, label %if.end, !dbg !5825

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5826
  br label %return, !dbg !5826

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5827
  %and2 = and i32 %1, 1, !dbg !5829
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5829
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5830

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5831
  br label %return, !dbg !5831

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5834
  ret i32 %2, !dbg !5834
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5835 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5836 dso_local void @__compiletime_assert_190() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5837 dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5840 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5843 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5847 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5851, metadata !DIExpression()), !dbg !5854
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5852, metadata !DIExpression()), !dbg !5855
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5853, metadata !DIExpression()), !dbg !5856
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5857
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5859
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5860
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !5861
  br i1 %call, label %if.end, label %if.then, !dbg !5862

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5863

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !5864
  %4 = load ptr, ptr %next.addr, align 8, !dbg !5865
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !5866
  store ptr %3, ptr %prev1, align 8, !dbg !5867
  %5 = load ptr, ptr %next.addr, align 8, !dbg !5868
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5869
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !5870
  store ptr %5, ptr %next2, align 8, !dbg !5871
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !5872
  %8 = load ptr, ptr %new.addr, align 8, !dbg !5873
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5874
  store ptr %7, ptr %prev3, align 8, !dbg !5875
  br label %do.body, !dbg !5876

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5877

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5879

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5877

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !5881
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !5881
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !5881
  store volatile ptr %9, ptr %next6, align 8, !dbg !5881
  br label %do.end7, !dbg !5881

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5877

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5884 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5888, metadata !DIExpression()), !dbg !5891
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5889, metadata !DIExpression()), !dbg !5892
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5890, metadata !DIExpression()), !dbg !5893
  ret i1 true, !dbg !5894
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pci_slot_release(ptr noundef %kobj) #0 align 16 !dbg !5895 {
entry:
  %kobj.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5897, metadata !DIExpression()), !dbg !5908
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !5909
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5898, metadata !DIExpression()), !dbg !5910
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #15, !dbg !5911
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5899, metadata !DIExpression()), !dbg !5912
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !5913
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5900, metadata !DIExpression()), !dbg !5913
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5913
  store ptr %0, ptr %__mptr, align 8, !dbg !5913
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5913
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !5913
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5913
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !5914
  %2 = load ptr, ptr %tmp, align 8, !dbg !5913
  store ptr %2, ptr %slot, align 8, !dbg !5912
  call void @down_read(ptr noundef @pci_bus_sem) #16, !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !5916
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5902, metadata !DIExpression()), !dbg !5916
  %3 = load ptr, ptr %slot, align 8, !dbg !5916
  %bus = getelementptr inbounds %struct.pci_slot, ptr %3, i32 0, i32 0, !dbg !5916
  %4 = load ptr, ptr %bus, align 8, !dbg !5916
  %devices = getelementptr inbounds %struct.pci_bus, ptr %4, i32 0, i32 3, !dbg !5916
  %next = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 0, !dbg !5916
  %5 = load ptr, ptr %next, align 8, !dbg !5916
  store ptr %5, ptr %__mptr1, align 8, !dbg !5916
  %6 = load ptr, ptr %__mptr1, align 8, !dbg !5916
  %add.ptr3 = getelementptr i8, ptr %6, i64 0, !dbg !5916
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5916
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !5917
  %7 = load ptr, ptr %tmp2, align 8, !dbg !5916
  store ptr %7, ptr %dev, align 8, !dbg !5917
  br label %for.cond, !dbg !5917

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %dev, align 8, !dbg !5918
  %bus_list = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 0, !dbg !5918
  %9 = load ptr, ptr %slot, align 8, !dbg !5918
  %bus4 = getelementptr inbounds %struct.pci_slot, ptr %9, i32 0, i32 0, !dbg !5918
  %10 = load ptr, ptr %bus4, align 8, !dbg !5918
  %devices5 = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 3, !dbg !5918
  %cmp = icmp eq ptr %bus_list, %devices5, !dbg !5918
  %lnot = xor i1 %cmp, true, !dbg !5918
  br i1 %lnot, label %for.body, label %for.end, !dbg !5917

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %dev, align 8, !dbg !5919
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 6, !dbg !5919
  %12 = load i32, ptr %devfn, align 8, !dbg !5919
  %shr = lshr i32 %12, 3, !dbg !5919
  %and = and i32 %shr, 31, !dbg !5919
  %13 = load ptr, ptr %slot, align 8, !dbg !5921
  %number = getelementptr inbounds %struct.pci_slot, ptr %13, i32 0, i32 3, !dbg !5922
  %14 = load i8, ptr %number, align 8, !dbg !5922
  %conv = zext i8 %14 to i32, !dbg !5921
  %cmp6 = icmp eq i32 %and, %conv, !dbg !5923
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5924

if.then:                                          ; preds = %for.body
  %15 = load ptr, ptr %dev, align 8, !dbg !5925
  %slot8 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 5, !dbg !5926
  store ptr null, ptr %slot8, align 8, !dbg !5927
  br label %if.end, !dbg !5925

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5922

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #15, !dbg !5928
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !5905, metadata !DIExpression()), !dbg !5928
  %16 = load ptr, ptr %dev, align 8, !dbg !5928
  %bus_list10 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 0, !dbg !5928
  %next11 = getelementptr inbounds %struct.list_head, ptr %bus_list10, i32 0, i32 0, !dbg !5928
  %17 = load ptr, ptr %next11, align 8, !dbg !5928
  store ptr %17, ptr %__mptr9, align 8, !dbg !5928
  %18 = load ptr, ptr %__mptr9, align 8, !dbg !5928
  %add.ptr13 = getelementptr i8, ptr %18, i64 0, !dbg !5928
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !5928
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #15, !dbg !5918
  %19 = load ptr, ptr %tmp12, align 8, !dbg !5928
  store ptr %19, ptr %dev, align 8, !dbg !5918
  br label %for.cond, !dbg !5918, !llvm.loop !5929

for.end:                                          ; preds = %for.cond
  call void @up_read(ptr noundef @pci_bus_sem) #16, !dbg !5931
  %20 = load ptr, ptr %slot, align 8, !dbg !5932
  %list = getelementptr inbounds %struct.pci_slot, ptr %20, i32 0, i32 1, !dbg !5933
  call void @list_del(ptr noundef %list) #16, !dbg !5934
  %21 = load ptr, ptr %slot, align 8, !dbg !5935
  %bus14 = getelementptr inbounds %struct.pci_slot, ptr %21, i32 0, i32 0, !dbg !5936
  %22 = load ptr, ptr %bus14, align 8, !dbg !5936
  call void @pci_bus_put(ptr noundef %22) #16, !dbg !5937
  %23 = load ptr, ptr %slot, align 8, !dbg !5938
  call void @kfree(ptr noundef %23) #16, !dbg !5939
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #15, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !5940
  ret void, !dbg !5940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !5941 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5943, metadata !DIExpression()), !dbg !5944
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5945
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !5946
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5947
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5948
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5949
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5950
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5951
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5952
  ret void, !dbg !5953
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !5954 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5956, metadata !DIExpression()), !dbg !5957
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5958
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !5960
  br i1 %call, label %if.end, label %if.then, !dbg !5961

if.then:                                          ; preds = %entry
  br label %return, !dbg !5962

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5963
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5964
  %2 = load ptr, ptr %prev, align 8, !dbg !5964
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5965
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5966
  %4 = load ptr, ptr %next, align 8, !dbg !5966
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !5967
  br label %return, !dbg !5968

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5968
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !5969 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  ret i1 true, !dbg !5975
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !5976 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5978, metadata !DIExpression()), !dbg !5980
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5979, metadata !DIExpression()), !dbg !5981
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5982
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5983
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5984
  store ptr %0, ptr %prev1, align 8, !dbg !5985
  br label %do.body, !dbg !5986

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5987

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5989

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5987

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5991
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5991
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5991
  store volatile ptr %2, ptr %next4, align 8, !dbg !5991
  br label %do.end5, !dbg !5991

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5987

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_slot_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5994 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %attribute = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5996, metadata !DIExpression()), !dbg !6005
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5997, metadata !DIExpression()), !dbg !6006
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5998, metadata !DIExpression()), !dbg !6007
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #15, !dbg !6008
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5999, metadata !DIExpression()), !dbg !6009
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6010
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6000, metadata !DIExpression()), !dbg !6010
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6010
  store ptr %0, ptr %__mptr, align 8, !dbg !6010
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6010
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !6010
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6010
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6011
  %2 = load ptr, ptr %tmp, align 8, !dbg !6010
  store ptr %2, ptr %slot, align 8, !dbg !6009
  call void @llvm.lifetime.start.p0(i64 8, ptr %attribute) #15, !dbg !6012
  call void @llvm.dbg.declare(metadata ptr %attribute, metadata !6002, metadata !DIExpression()), !dbg !6013
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !6014
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6003, metadata !DIExpression()), !dbg !6014
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !6014
  store ptr %3, ptr %__mptr1, align 8, !dbg !6014
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6014
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !6014
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6014
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !6015
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6014
  store ptr %5, ptr %attribute, align 8, !dbg !6013
  %6 = load ptr, ptr %attribute, align 8, !dbg !6016
  %show = getelementptr inbounds %struct.pci_slot_attribute, ptr %6, i32 0, i32 1, !dbg !6017
  %7 = load ptr, ptr %show, align 8, !dbg !6017
  %tobool = icmp ne ptr %7, null, !dbg !6016
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6016

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %attribute, align 8, !dbg !6018
  %show4 = getelementptr inbounds %struct.pci_slot_attribute, ptr %8, i32 0, i32 1, !dbg !6019
  %9 = load ptr, ptr %show4, align 8, !dbg !6019
  %10 = load ptr, ptr %slot, align 8, !dbg !6020
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !6021
  %call = call i64 %9(ptr noundef %10, ptr noundef %11) #16, !dbg !6018
  br label %cond.end, !dbg !6016

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6016

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ -5, %cond.false ], !dbg !6016
  call void @llvm.lifetime.end.p0(i64 8, ptr %attribute) #15, !dbg !6022
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #15, !dbg !6022
  ret i64 %cond, !dbg !6023
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pci_slot_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %len) #0 align 16 !dbg !6024 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %slot = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %attribute = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6026, metadata !DIExpression()), !dbg !6036
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6027, metadata !DIExpression()), !dbg !6037
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6028, metadata !DIExpression()), !dbg !6038
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6029, metadata !DIExpression()), !dbg !6039
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #15, !dbg !6040
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !6030, metadata !DIExpression()), !dbg !6041
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !6042
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6031, metadata !DIExpression()), !dbg !6042
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6042
  store ptr %0, ptr %__mptr, align 8, !dbg !6042
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6042
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !6042
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !6043
  %2 = load ptr, ptr %tmp, align 8, !dbg !6042
  store ptr %2, ptr %slot, align 8, !dbg !6041
  call void @llvm.lifetime.start.p0(i64 8, ptr %attribute) #15, !dbg !6044
  call void @llvm.dbg.declare(metadata ptr %attribute, metadata !6033, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6034, metadata !DIExpression()), !dbg !6046
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !6046
  store ptr %3, ptr %__mptr1, align 8, !dbg !6046
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6046
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !6046
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6046
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !6047
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6046
  store ptr %5, ptr %attribute, align 8, !dbg !6045
  %6 = load ptr, ptr %attribute, align 8, !dbg !6048
  %store = getelementptr inbounds %struct.pci_slot_attribute, ptr %6, i32 0, i32 2, !dbg !6049
  %7 = load ptr, ptr %store, align 8, !dbg !6049
  %tobool = icmp ne ptr %7, null, !dbg !6048
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6048

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %attribute, align 8, !dbg !6050
  %store4 = getelementptr inbounds %struct.pci_slot_attribute, ptr %8, i32 0, i32 2, !dbg !6051
  %9 = load ptr, ptr %store4, align 8, !dbg !6051
  %10 = load ptr, ptr %slot, align 8, !dbg !6052
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !6053
  %12 = load i64, ptr %len.addr, align 8, !dbg !6054
  %call = call i64 %9(ptr noundef %10, ptr noundef %11, i64 noundef %12) #16, !dbg !6050
  br label %cond.end, !dbg !6048

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6048

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ -5, %cond.false ], !dbg !6048
  call void @llvm.lifetime.end.p0(i64 8, ptr %attribute) #15, !dbg !6055
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #15, !dbg !6055
  ret i64 %cond, !dbg !6056
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @address_read_file(ptr noundef %slot, ptr noundef %buf) #0 align 16 !dbg !6057 {
entry:
  %retval = alloca i64, align 8
  %slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6059, metadata !DIExpression()), !dbg !6061
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6060, metadata !DIExpression()), !dbg !6062
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !6063
  %number = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 3, !dbg !6065
  %1 = load i8, ptr %number, align 8, !dbg !6065
  %conv = zext i8 %1 to i32, !dbg !6063
  %cmp = icmp eq i32 %conv, 255, !dbg !6066
  br i1 %cmp, label %if.then, label %if.end, !dbg !6067

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6068
  %3 = load ptr, ptr %slot.addr, align 8, !dbg !6069
  %bus = getelementptr inbounds %struct.pci_slot, ptr %3, i32 0, i32 0, !dbg !6070
  %4 = load ptr, ptr %bus, align 8, !dbg !6070
  %call = call i32 @pci_domain_nr(ptr noundef %4) #16, !dbg !6071
  %5 = load ptr, ptr %slot.addr, align 8, !dbg !6072
  %bus2 = getelementptr inbounds %struct.pci_slot, ptr %5, i32 0, i32 0, !dbg !6073
  %6 = load ptr, ptr %bus2, align 8, !dbg !6073
  %number3 = getelementptr inbounds %struct.pci_bus, ptr %6, i32 0, i32 12, !dbg !6074
  %7 = load i8, ptr %number3, align 8, !dbg !6074
  %conv4 = zext i8 %7 to i32, !dbg !6072
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.6, i32 noundef %call, i32 noundef %conv4) #16, !dbg !6075
  %conv6 = sext i32 %call5 to i64, !dbg !6075
  store i64 %conv6, ptr %retval, align 8, !dbg !6076
  br label %return, !dbg !6076

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !6077
  %9 = load ptr, ptr %slot.addr, align 8, !dbg !6078
  %bus7 = getelementptr inbounds %struct.pci_slot, ptr %9, i32 0, i32 0, !dbg !6079
  %10 = load ptr, ptr %bus7, align 8, !dbg !6079
  %call8 = call i32 @pci_domain_nr(ptr noundef %10) #16, !dbg !6080
  %11 = load ptr, ptr %slot.addr, align 8, !dbg !6081
  %bus9 = getelementptr inbounds %struct.pci_slot, ptr %11, i32 0, i32 0, !dbg !6082
  %12 = load ptr, ptr %bus9, align 8, !dbg !6082
  %number10 = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 12, !dbg !6083
  %13 = load i8, ptr %number10, align 8, !dbg !6083
  %conv11 = zext i8 %13 to i32, !dbg !6081
  %14 = load ptr, ptr %slot.addr, align 8, !dbg !6084
  %number12 = getelementptr inbounds %struct.pci_slot, ptr %14, i32 0, i32 3, !dbg !6085
  %15 = load i8, ptr %number12, align 8, !dbg !6085
  %conv13 = zext i8 %15 to i32, !dbg !6084
  %call14 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.7, i32 noundef %call8, i32 noundef %conv11, i32 noundef %conv13) #16, !dbg !6086
  %conv15 = sext i32 %call14 to i64, !dbg !6086
  store i64 %conv15, ptr %retval, align 8, !dbg !6087
  br label %return, !dbg !6087

return:                                           ; preds = %if.end, %if.then
  %16 = load i64, ptr %retval, align 8, !dbg !6088
  ret i64 %16, !dbg !6088
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6089 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pci_domain_nr(ptr noundef %bus) #5 align 16 !dbg !6090 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6093, metadata !DIExpression()), !dbg !6094
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6095
  %call = call ptr @to_pci_sysdata(ptr noundef %0) #16, !dbg !6096
  %domain = getelementptr inbounds %struct.pci_sysdata, ptr %call, i32 0, i32 0, !dbg !6097
  %1 = load i32, ptr %domain, align 8, !dbg !6097
  ret i32 %1, !dbg !6098
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_pci_sysdata(ptr noundef %bus) #5 align 16 !dbg !6099 {
entry:
  %bus.addr = alloca ptr, align 8
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !6372, metadata !DIExpression()), !dbg !6373
  %0 = load ptr, ptr %bus.addr, align 8, !dbg !6374
  %sysdata = getelementptr inbounds %struct.pci_bus, ptr %0, i32 0, i32 10, !dbg !6375
  %1 = load ptr, ptr %sysdata, align 8, !dbg !6375
  ret ptr %1, !dbg !6376
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_speed_read_file(ptr noundef %slot, ptr noundef %buf) #0 align 16 !dbg !6377 {
entry:
  %slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6379, metadata !DIExpression()), !dbg !6381
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6380, metadata !DIExpression()), !dbg !6382
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !6383
  %bus = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 0, !dbg !6384
  %1 = load ptr, ptr %bus, align 8, !dbg !6384
  %max_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 14, !dbg !6385
  %2 = load i8, ptr %max_bus_speed, align 2, !dbg !6385
  %conv = zext i8 %2 to i32, !dbg !6383
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6386
  %call = call i64 @bus_speed_read(i32 noundef %conv, ptr noundef %3) #16, !dbg !6387
  ret i64 %call, !dbg !6388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @bus_speed_read(i32 noundef %speed, ptr noundef %buf) #0 align 16 !dbg !6389 {
entry:
  %speed.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  store i32 %speed, ptr %speed.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %speed.addr, metadata !6393, metadata !DIExpression()), !dbg !6395
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6394, metadata !DIExpression()), !dbg !6396
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6397
  %1 = load i32, ptr %speed.addr, align 4, !dbg !6398
  %call = call ptr @pci_speed_string(i32 noundef %1) #16, !dbg !6399
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.9, ptr noundef %call) #16, !dbg !6400
  %conv = sext i32 %call1 to i64, !dbg !6400
  ret i64 %conv, !dbg !6401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6402 dso_local ptr @pci_speed_string(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cur_speed_read_file(ptr noundef %slot, ptr noundef %buf) #0 align 16 !dbg !6405 {
entry:
  %slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6407, metadata !DIExpression()), !dbg !6409
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6408, metadata !DIExpression()), !dbg !6410
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !6411
  %bus = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 0, !dbg !6412
  %1 = load ptr, ptr %bus, align 8, !dbg !6412
  %cur_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 15, !dbg !6413
  %2 = load i8, ptr %cur_bus_speed, align 1, !dbg !6413
  %conv = zext i8 %2 to i32, !dbg !6411
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6414
  %call = call i64 @bus_speed_read(i32 noundef %conv, ptr noundef %3) #16, !dbg !6415
  ret i64 %call, !dbg !6416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6417 dso_local ptr @bus_get_kset(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6420 dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6423 dso_local i32 @_printk(ptr noundef, ...) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060}
!llvm.ident = !{!5061}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pci_slots_kset", scope: !2, file: !3, line: 15, type: !356, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/.slot.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/slot\22 -D KBUILD_BASENAME=\22slot\22 -D KBUILD_MODNAME=\22slot\22 -D __KBUILD_MODNAME=kmod_slot -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/slot.ll drivers/pci/slot.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !191, globals: !4983, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/slot.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "55baf3b818fd95d582cd6b552a2a17bc")
!4 = !{!5, !13, !18, !24, !29, !37, !53, !61, !67, !74, !81, !87, !93, !100, !108, !116, !125, !130, !135, !141, !147, !152, !162}
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
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !142, line: 30, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!145 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!146 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !153, line: 364, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!154 = !{!155, !156, !157, !158, !159, !160, !161}
!155 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!160 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!161 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_bus_speed", file: !163, line: 277, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!164 = !{!165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190}
!165 = !DIEnumerator(name: "PCI_SPEED_33MHz", value: 0)
!166 = !DIEnumerator(name: "PCI_SPEED_66MHz", value: 1)
!167 = !DIEnumerator(name: "PCI_SPEED_66MHz_PCIX", value: 2)
!168 = !DIEnumerator(name: "PCI_SPEED_100MHz_PCIX", value: 3)
!169 = !DIEnumerator(name: "PCI_SPEED_133MHz_PCIX", value: 4)
!170 = !DIEnumerator(name: "PCI_SPEED_66MHz_PCIX_ECC", value: 5)
!171 = !DIEnumerator(name: "PCI_SPEED_100MHz_PCIX_ECC", value: 6)
!172 = !DIEnumerator(name: "PCI_SPEED_133MHz_PCIX_ECC", value: 7)
!173 = !DIEnumerator(name: "PCI_SPEED_66MHz_PCIX_266", value: 9)
!174 = !DIEnumerator(name: "PCI_SPEED_100MHz_PCIX_266", value: 10)
!175 = !DIEnumerator(name: "PCI_SPEED_133MHz_PCIX_266", value: 11)
!176 = !DIEnumerator(name: "AGP_UNKNOWN", value: 12)
!177 = !DIEnumerator(name: "AGP_1X", value: 13)
!178 = !DIEnumerator(name: "AGP_2X", value: 14)
!179 = !DIEnumerator(name: "AGP_4X", value: 15)
!180 = !DIEnumerator(name: "AGP_8X", value: 16)
!181 = !DIEnumerator(name: "PCI_SPEED_66MHz_PCIX_533", value: 17)
!182 = !DIEnumerator(name: "PCI_SPEED_100MHz_PCIX_533", value: 18)
!183 = !DIEnumerator(name: "PCI_SPEED_133MHz_PCIX_533", value: 19)
!184 = !DIEnumerator(name: "PCIE_SPEED_2_5GT", value: 20)
!185 = !DIEnumerator(name: "PCIE_SPEED_5_0GT", value: 21)
!186 = !DIEnumerator(name: "PCIE_SPEED_8_0GT", value: 22)
!187 = !DIEnumerator(name: "PCIE_SPEED_16_0GT", value: 23)
!188 = !DIEnumerator(name: "PCIE_SPEED_32_0GT", value: 24)
!189 = !DIEnumerator(name: "PCIE_SPEED_64_0GT", value: 25)
!190 = !DIEnumerator(name: "PCI_SPEED_UNKNOWN", value: 255)
!191 = !{!192, !193, !1172, !211, !260, !4969, !4971}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !163, line: 76, size: 832, elements: !195)
!195 = !{!196, !4927, !4928, !4967, !4968}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !194, file: !163, line: 77, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !163, line: 647, size: 8256, elements: !199)
!199 = !{!200, !207, !208, !209, !210, !4879, !4880, !4882, !4883, !4884, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4918, !4919, !4921, !4922, !4923, !4924, !4925, !4926}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !198, file: !163, line: 648, baseType: !201, size: 128)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !202, line: 190, size: 128, elements: !203)
!202 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !202, line: 191, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !202, line: 191, baseType: !205, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !198, file: !163, line: 649, baseType: !197, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !198, file: !163, line: 650, baseType: !201, size: 128, offset: 192)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !198, file: !163, line: 651, baseType: !201, size: 128, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !198, file: !163, line: 652, baseType: !211, size: 64, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !163, line: 322, size: 16640, elements: !213)
!213 = !{!214, !215, !216, !217, !218, !222, !223, !224, !226, !227, !228, !229, !230, !236, !237, !247, !248, !249, !250, !251, !252, !253, !254, !255, !258, !261, !4726, !4727, !4728, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4751, !4752, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4818, !4819, !4820, !4822, !4823, !4825, !4826, !4827, !4828, !4834, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !212, file: !163, line: 323, baseType: !201, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !212, file: !163, line: 324, baseType: !197, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !212, file: !163, line: 325, baseType: !197, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !212, file: !163, line: 327, baseType: !192, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !212, file: !163, line: 328, baseType: !219, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !221, line: 131, flags: DIFlagFwdDecl)
!221 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!222 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !212, file: !163, line: 329, baseType: !193, size: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !212, file: !163, line: 331, baseType: !7, size: 32, offset: 448)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !212, file: !163, line: 332, baseType: !225, size: 16, offset: 480)
!225 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !212, file: !163, line: 333, baseType: !225, size: 16, offset: 496)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !212, file: !163, line: 334, baseType: !225, size: 16, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !212, file: !163, line: 335, baseType: !225, size: 16, offset: 528)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !212, file: !163, line: 336, baseType: !7, size: 32, offset: 544)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !212, file: !163, line: 337, baseType: !231, size: 8, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !232, line: 17, baseType: !233)
!232 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !234, line: 21, baseType: !235)
!234 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!235 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !212, file: !163, line: 338, baseType: !231, size: 8, offset: 584)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !212, file: !163, line: 344, baseType: !238, size: 64, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !240, line: 415, size: 64, elements: !241)
!240 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!241 = !{!242, !243, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !239, file: !240, line: 416, baseType: !231, size: 8)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !239, file: !240, line: 417, baseType: !231, size: 8, offset: 8)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !239, file: !240, line: 418, baseType: !245, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !232, line: 21, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !234, line: 27, baseType: !7)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !212, file: !163, line: 345, baseType: !211, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !212, file: !163, line: 347, baseType: !245, size: 32, offset: 768)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !212, file: !163, line: 348, baseType: !231, size: 8, offset: 800)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !212, file: !163, line: 349, baseType: !231, size: 8, offset: 808)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !212, file: !163, line: 350, baseType: !231, size: 8, offset: 816)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !212, file: !163, line: 351, baseType: !231, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !212, file: !163, line: 352, baseType: !231, size: 8, offset: 832)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !212, file: !163, line: 353, baseType: !231, size: 8, offset: 840)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !212, file: !163, line: 354, baseType: !256, size: 16, offset: 848)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !232, line: 19, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !234, line: 24, baseType: !225)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !212, file: !163, line: 355, baseType: !259, size: 64, offset: 896)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !212, file: !163, line: 357, baseType: !262, size: 64, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !163, line: 918, size: 2368, elements: !264)
!264 = !{!265, !266, !270, !285, !289, !293, !301, !305, !306, !310, !311, !315, !335, !4260, !4261, !4720, !4725}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !263, file: !163, line: 919, baseType: !201, size: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !263, file: !163, line: 920, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !263, file: !163, line: 921, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !274, line: 44, size: 320, elements: !275)
!274 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!275 = !{!276, !277, !278, !279, !280, !281, !282, !284}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !273, file: !274, line: 45, baseType: !246, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !273, file: !274, line: 45, baseType: !246, size: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !273, file: !274, line: 46, baseType: !246, size: 32, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !273, file: !274, line: 46, baseType: !246, size: 32, offset: 96)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !273, file: !274, line: 47, baseType: !246, size: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !273, file: !274, line: 47, baseType: !246, size: 32, offset: 160)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !273, file: !274, line: 48, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !274, line: 15, baseType: !260)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !273, file: !274, line: 49, baseType: !246, size: 32, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !263, file: !163, line: 922, baseType: !286, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!109, !211, !271}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !263, file: !163, line: 923, baseType: !290, size: 64, offset: 320)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !211}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !263, file: !163, line: 924, baseType: !294, size: 64, offset: 384)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!109, !211, !297}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !298)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !298, file: !101, line: 59, baseType: !109, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !263, file: !163, line: 925, baseType: !302, size: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!109, !211}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !263, file: !163, line: 926, baseType: !290, size: 64, offset: 512)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !263, file: !163, line: 927, baseType: !307, size: 64, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!109, !211, !109}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !263, file: !163, line: 928, baseType: !307, size: 64, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !263, file: !163, line: 929, baseType: !312, size: 64, offset: 704)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!245, !211}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !263, file: !163, line: 930, baseType: !316, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !163, line: 837, size: 448, elements: !319)
!319 = !{!320, !326, !330, !331, !332, !333, !334}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !318, file: !163, line: 839, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !211, !325}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !163, line: 814, baseType: !7)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !163, line: 196, baseType: !7)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !318, file: !163, line: 843, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!324, !211}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !318, file: !163, line: 846, baseType: !327, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !318, file: !163, line: 849, baseType: !290, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !318, file: !163, line: 850, baseType: !290, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !318, file: !163, line: 853, baseType: !290, size: 64, offset: 320)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !318, file: !163, line: 856, baseType: !290, size: 64, offset: 384)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !263, file: !163, line: 931, baseType: !336, size: 64, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !340, line: 84, size: 320, elements: !341)
!340 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!341 = !{!342, !343, !4233, !4256, !4258}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !340, line: 85, baseType: !267, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !339, file: !340, line: 86, baseType: !344, size: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347, !348, !459, !109}
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !202, line: 24, baseType: !225)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !350, line: 64, size: 512, elements: !351)
!350 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!351 = !{!352, !353, !354, !355, !436, !530, !4223, !4228, !4229, !4230, !4231, !4232}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !350, line: 65, baseType: !267, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !349, file: !350, line: 66, baseType: !201, size: 128, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !349, file: !350, line: 67, baseType: !348, size: 64, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !349, file: !350, line: 68, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !350, line: 168, size: 768, elements: !358)
!358 = !{!359, !360, !395, !396}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !357, file: !350, line: 169, baseType: !201, size: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !357, file: !350, line: 170, baseType: !361, size: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !362, line: 29, baseType: !363)
!362 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !362, line: 17, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !362, line: 18, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !362, line: 18, size: 32, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !366, file: !362, line: 19, baseType: !369, size: 32)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !370, line: 14, size: 32, elements: !371)
!370 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !369, file: !370, line: 15, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !374, line: 44, baseType: !375)
!374 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !374, line: 14, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !374, line: 15, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !374, line: 15, size: 32, elements: !379)
!379 = !{!380, !385, !390}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !378, file: !374, line: 16, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !202, line: 174, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 172, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !382, file: !202, line: 173, baseType: !109, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !374, line: 24, baseType: !386, size: 16)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !374, line: 24, size: 16, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !386, file: !374, line: 25, baseType: !231, size: 8)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !386, file: !374, line: 26, baseType: !231, size: 8, offset: 8)
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !378, file: !374, line: 28, baseType: !391, size: 32)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !378, file: !374, line: 28, size: 32, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !391, file: !374, line: 29, baseType: !256, size: 16)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !391, file: !374, line: 30, baseType: !256, size: 16, offset: 16)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !357, file: !350, line: 171, baseType: !349, size: 512, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !357, file: !350, line: 172, baseType: !397, size: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !350, line: 133, size: 192, elements: !400)
!400 = !{!401, !408, !413}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !399, file: !350, line: 134, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!109, !406}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !399, file: !350, line: 135, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!267, !406}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !399, file: !350, line: 136, baseType: !414, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!109, !406, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !350, line: 125, size: 20736, elements: !420)
!420 = !{!421, !426, !430, !431, !435}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !419, file: !350, line: 126, baseType: !422, size: 192)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 192, elements: !424)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!424 = !{!425}
!425 = !DISubrange(count: 3)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !419, file: !350, line: 127, baseType: !427, size: 4096, offset: 192)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 4096, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !419, file: !350, line: 128, baseType: !109, size: 32, offset: 4288)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !419, file: !350, line: 129, baseType: !432, size: 16384, offset: 4320)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 16384, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 2048)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !419, file: !350, line: 130, baseType: !109, size: 32, offset: 20704)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !349, file: !350, line: 69, baseType: !437, size: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !350, line: 116, size: 384, elements: !440)
!440 = !{!441, !445, !471, !472, !507, !511}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !439, file: !350, line: 117, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !348}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !439, file: !350, line: 118, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !340, line: 254, size: 128, elements: !449)
!449 = !{!450, !464}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !448, file: !340, line: 255, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!454, !348, !459, !423}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !202, line: 66, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !456, line: 73, baseType: !457)
!456 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !456, line: 15, baseType: !458)
!458 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !340, line: 30, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !460, file: !340, line: 31, baseType: !267, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !460, file: !340, line: 32, baseType: !347, size: 16, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !448, file: !340, line: 256, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!454, !348, !459, !267, !468}
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !202, line: 61, baseType: !469)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !456, line: 72, baseType: !470)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !456, line: 16, baseType: !260)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !439, file: !350, line: 119, baseType: !336, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !439, file: !350, line: 120, baseType: !473, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !406}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !479)
!479 = !{!480, !481, !487, !491, !499, !503}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !82, line: 40, baseType: !81, size: 32)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !478, file: !82, line: 41, baseType: !482, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !202, line: 35, baseType: !486)
!486 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !478, file: !82, line: 42, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!192}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !478, file: !82, line: 43, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !497}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !478, file: !82, line: 44, baseType: !500, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!495}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !478, file: !82, line: 45, baseType: !504, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !192}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !439, file: !350, line: 121, baseType: !508, size: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!495, !406}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !439, file: !350, line: 122, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{null, !406, !515, !523}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !517, line: 23, baseType: !518)
!517 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 21, size: 32, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !518, file: !517, line: 22, baseType: !521, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !202, line: 37, baseType: !522)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !456, line: 49, baseType: !7)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !517, line: 28, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 26, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !525, file: !517, line: 27, baseType: !528, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !202, line: 38, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !456, line: 50, baseType: !7)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !349, file: !350, line: 70, baseType: !531, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !533, line: 190, size: 1152, elements: !534)
!533 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!534 = !{!535, !536, !537, !538, !539, !547, !548, !549, !4215, !4216, !4217, !4218, !4219, !4222}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !532, file: !533, line: 191, baseType: !381, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !532, file: !533, line: 192, baseType: !381, size: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !532, file: !533, line: 202, baseType: !531, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !532, file: !533, line: 203, baseType: !267, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !532, file: !533, line: 205, baseType: !540, size: 192, align: 64, offset: 192)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !541, line: 5, size: 192, align: 64, elements: !542)
!541 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!542 = !{!543, !544, !546}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !540, file: !541, line: 6, baseType: !260, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !540, file: !541, line: 7, baseType: !545, size: 64, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !540, file: !541, line: 8, baseType: !545, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !532, file: !533, line: 207, baseType: !495, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !532, file: !533, line: 208, baseType: !7, size: 32, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, scope: !532, file: !533, line: 209, baseType: !550, size: 256, offset: 512)
!550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !532, file: !533, line: 209, size: 256, elements: !551)
!551 = !{!552, !564, !568}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !550, file: !533, line: 210, baseType: !553, size: 256)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !533, line: 153, size: 256, elements: !554)
!554 = !{!555, !556, !560, !563}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !553, file: !533, line: 154, baseType: !260, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !553, file: !533, line: 156, baseType: !557, size: 64, offset: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !541, line: 12, size: 64, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !557, file: !541, line: 13, baseType: !545, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !553, file: !533, line: 162, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !533, line: 162, flags: DIFlagFwdDecl)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !553, file: !533, line: 167, baseType: !260, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !550, file: !533, line: 211, baseType: !565, size: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !533, line: 170, size: 64, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !565, file: !533, line: 171, baseType: !531, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !550, file: !533, line: 212, baseType: !569, size: 256)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !533, line: 174, size: 256, elements: !570)
!570 = !{!571, !4210, !4213, !4214}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !569, file: !533, line: 175, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !533, line: 271, size: 768, elements: !575)
!575 = !{!576, !4175, !4179, !4183, !4187, !4191, !4195, !4199, !4200, !4201, !4202, !4206}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !574, file: !533, line: 276, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!109, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !533, line: 251, size: 1216, elements: !582)
!582 = !{!583, !584, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !581, file: !533, line: 253, baseType: !531, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !581, file: !533, line: 254, baseType: !585, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !587)
!587 = !{!588, !607, !608, !610, !620, !633, !636, !637, !709, !915, !924, !4154, !4155, !4156, !4157, !4158, !4159, !4161, !4162, !4163}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !14, line: 995, baseType: !589, size: 128)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !586, file: !14, line: 995, size: 128, elements: !590)
!590 = !{!591, !597, !606}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !589, file: !14, line: 996, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !593, line: 60, size: 64, elements: !594)
!593 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !593, line: 61, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !589, file: !14, line: 997, baseType: !598, size: 128, align: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !202, line: 232, size: 128, align: 64, elements: !599)
!599 = !{!600, !602}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !598, file: !202, line: 233, baseType: !601, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !598, file: !202, line: 234, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !601}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !589, file: !14, line: 998, baseType: !7, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !586, file: !14, line: 1005, baseType: !361, size: 32, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !586, file: !14, line: 1006, baseType: !609, size: 32, offset: 160)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !202, line: 156, baseType: !7)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !586, file: !14, line: 1007, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !612, line: 13, baseType: !613)
!612 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !202, line: 181, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 179, size: 64, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !614, file: !202, line: 180, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !232, line: 22, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !234, line: 30, baseType: !619)
!619 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !586, file: !14, line: 1008, baseType: !621, size: 256, offset: 256)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !622, line: 66, size: 256, elements: !623)
!622 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!623 = !{!624, !625, !627, !632}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !621, file: !622, line: 67, baseType: !611, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !621, file: !622, line: 68, baseType: !626, size: 32, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !370, line: 23, baseType: !369)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !621, file: !622, line: 70, baseType: !628, size: 32, offset: 96)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !629, line: 15, size: 32, elements: !630)
!629 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !628, file: !629, line: 20, baseType: !381, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !621, file: !622, line: 72, baseType: !201, size: 128, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !586, file: !14, line: 1009, baseType: !634, size: 64, offset: 512)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !202, line: 52, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !456, line: 88, baseType: !619)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !586, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !586, file: !14, line: 1011, baseType: !638, size: 256, offset: 640)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !639)
!639 = !{!640, !661, !705, !706, !707, !708}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !638, file: !14, line: 949, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !642, line: 34, baseType: !643)
!642 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !642, line: 25, size: 64, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !643, file: !642, line: 26, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !647, line: 27, baseType: !648)
!647 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !647, line: 13, size: 64, elements: !649)
!649 = !{!650, !660}
!650 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !647, line: 14, baseType: !651, size: 32)
!651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !647, line: 14, size: 32, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !651, file: !647, line: 15, baseType: !381, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !647, line: 16, baseType: !655, size: 32)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !651, file: !647, line: 16, size: 32, elements: !656)
!656 = !{!657, !658}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !655, file: !647, line: 18, baseType: !231, size: 8)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !655, file: !647, line: 19, baseType: !659, size: 24, offset: 8)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 24, elements: !424)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !648, file: !647, line: 26, baseType: !373, size: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !638, file: !14, line: 950, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !664)
!664 = !{!665, !671, !672, !673, !686, !687, !694, !695}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !663, file: !30, line: 61, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !667, line: 113, baseType: !668)
!667 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !667, line: 111, size: 32, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !668, file: !667, line: 112, baseType: !381, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !663, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !663, file: !30, line: 63, baseType: !361, size: 32, offset: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !663, file: !30, line: 65, baseType: !674, size: 256, offset: 128)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, size: 256, elements: !684)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !202, line: 194, size: 64, elements: !676)
!676 = !{!677}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !675, file: !202, line: 195, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !202, line: 198, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !202, line: 199, baseType: !678, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !679, file: !202, line: 199, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!684 = !{!685}
!685 = !DISubrange(count: 4)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !663, file: !30, line: 66, baseType: !675, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !663, file: !30, line: 68, baseType: !688, size: 192, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !689, line: 41, baseType: !690)
!689 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !689, line: 37, size: 192, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !690, file: !689, line: 38, baseType: !361, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !690, file: !689, line: 39, baseType: !201, size: 128, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !663, file: !30, line: 69, baseType: !598, size: 128, align: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !663, file: !30, line: 70, baseType: !696, offset: 768)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, elements: !703)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !697, file: !30, line: 55, baseType: !109, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !697, file: !30, line: 56, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!703 = !{!704}
!704 = !DISubrange(count: -1)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !638, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !638, file: !14, line: 952, baseType: !516, size: 32, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !638, file: !14, line: 952, baseType: !516, size: 32, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !638, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !586, file: !14, line: 1012, baseType: !710, size: 64, offset: 896)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !713, line: 110, size: 1472, elements: !714)
!713 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!714 = !{!715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !734, !735, !736, !737, !738, !739, !860, !861, !862, !863, !864, !895, !898, !902, !910}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !712, file: !713, line: 111, baseType: !611, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !712, file: !713, line: 112, baseType: !516, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !712, file: !713, line: 113, baseType: !524, size: 32, offset: 96)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !712, file: !713, line: 114, baseType: !516, size: 32, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !712, file: !713, line: 115, baseType: !524, size: 32, offset: 160)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !712, file: !713, line: 116, baseType: !516, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !712, file: !713, line: 117, baseType: !524, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !712, file: !713, line: 118, baseType: !516, size: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !712, file: !713, line: 119, baseType: !524, size: 32, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !712, file: !713, line: 120, baseType: !7, size: 32, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !712, file: !713, line: 121, baseType: !726, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !727, line: 24, baseType: !728)
!727 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 24, size: 64, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !728, file: !727, line: 24, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !232, line: 23, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !234, line: 31, baseType: !733)
!733 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !712, file: !713, line: 122, baseType: !726, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !712, file: !713, line: 123, baseType: !726, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !712, file: !713, line: 124, baseType: !726, size: 64, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !712, file: !713, line: 125, baseType: !726, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !712, file: !713, line: 127, baseType: !235, size: 8, offset: 704)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !712, file: !713, line: 129, baseType: !740, size: 64, offset: 768)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !742, line: 195, size: 1728, elements: !743)
!742 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!743 = !{!744, !745, !750, !755, !764, !767, !768, !775, !776, !777, !778, !781, !782, !783, !785, !786, !824, !845}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !741, file: !742, line: 196, baseType: !666, size: 32)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !741, file: !742, line: 197, baseType: !746, size: 32, offset: 32)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !742, line: 28, baseType: !747)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !202, line: 104, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !232, line: 20, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !234, line: 26, baseType: !109)
!750 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !742, line: 198, baseType: !751, size: 192, offset: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !742, line: 198, size: 192, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !751, file: !742, line: 199, baseType: !201, size: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !751, file: !742, line: 200, baseType: !540, size: 192, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !741, file: !742, line: 205, baseType: !756, size: 320, offset: 256)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !757, line: 48, size: 320, elements: !758)
!757 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!758 = !{!759, !760, !761, !762, !763}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !756, file: !757, line: 49, baseType: !611, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !756, file: !757, line: 55, baseType: !611, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !756, file: !757, line: 57, baseType: !628, size: 32, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !756, file: !757, line: 59, baseType: !626, size: 32, offset: 160)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !756, file: !757, line: 60, baseType: !201, size: 128, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !741, file: !742, line: 206, baseType: !765, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !742, line: 206, flags: DIFlagFwdDecl)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !741, file: !742, line: 207, baseType: !192, size: 64, offset: 640)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !742, line: 208, baseType: !769, size: 64, offset: 704)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !742, line: 208, size: 64, elements: !770)
!770 = !{!771, !774}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !769, file: !742, line: 209, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !773, line: 8, baseType: !618)
!773 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!774 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !769, file: !742, line: 210, baseType: !772, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !741, file: !742, line: 212, baseType: !772, size: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !741, file: !742, line: 213, baseType: !516, size: 32, offset: 832)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !741, file: !742, line: 214, baseType: !524, size: 32, offset: 864)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !741, file: !742, line: 215, baseType: !779, size: 32, offset: 896)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !742, line: 31, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !202, line: 110, baseType: !245)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !741, file: !742, line: 216, baseType: !225, size: 16, offset: 928)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !741, file: !742, line: 217, baseType: !225, size: 16, offset: 944)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !741, file: !742, line: 221, baseType: !784, size: 16, offset: 960)
!784 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !742, line: 228, baseType: !260, size: 64, offset: 1024)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !742, line: 245, baseType: !787, size: 320, offset: 1088)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !742, line: 245, size: 320, elements: !788)
!788 = !{!789, !816}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !787, file: !742, line: 246, baseType: !790, size: 320)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !742, line: 114, size: 320, elements: !791)
!791 = !{!792, !793, !805, !808, !815}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !790, file: !742, line: 116, baseType: !260, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !742, line: 117, baseType: !794, size: 64, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !742, line: 117, size: 64, elements: !795)
!795 = !{!796, !804}
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !742, line: 118, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !794, file: !742, line: 118, size: 64, elements: !798)
!798 = !{!799, !800}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !797, file: !742, line: 120, baseType: !256, size: 16)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !797, file: !742, line: 121, baseType: !801, size: 48, offset: 16)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 48, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 6)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !794, file: !742, line: 127, baseType: !260, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !742, line: 129, baseType: !806, size: 64, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !742, line: 102, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !790, file: !742, line: 130, baseType: !809, size: 64, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !742, line: 108, size: 192, elements: !811)
!811 = !{!812, !813, !814}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !810, file: !742, line: 109, baseType: !598, size: 128, align: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !810, file: !742, line: 110, baseType: !666, size: 32, offset: 128)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !810, file: !742, line: 111, baseType: !485, size: 8, offset: 160)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !790, file: !742, line: 131, baseType: !267, size: 64, offset: 256)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !742, line: 247, baseType: !817, size: 320)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !787, file: !742, line: 247, size: 320, elements: !818)
!818 = !{!819, !820, !821, !822, !823}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !817, file: !742, line: 248, baseType: !260, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !817, file: !742, line: 249, baseType: !260, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !817, file: !742, line: 250, baseType: !806, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !817, file: !742, line: 251, baseType: !809, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !817, file: !742, line: 252, baseType: !423, size: 64, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !741, file: !742, line: 260, baseType: !825, size: 256, offset: 1408)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !741, file: !742, line: 260, size: 256, elements: !826)
!826 = !{!827, !833}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !825, file: !742, line: 261, baseType: !828, size: 256)
!828 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !742, line: 134, size: 256, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !828, file: !742, line: 135, baseType: !192, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !828, file: !742, line: 136, baseType: !832, size: 256)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 256, elements: !684)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !742, line: 262, baseType: !834, size: 256)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !825, file: !742, line: 262, size: 256, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !834, file: !742, line: 264, baseType: !201, size: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !834, file: !742, line: 265, baseType: !838, size: 128, offset: 128)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !839, line: 22, size: 128, elements: !840)
!839 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!840 = !{!841, !844}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !838, file: !839, line: 23, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !839, line: 23, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !838, file: !839, line: 24, baseType: !260, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !741, file: !742, line: 280, baseType: !846, size: 64, offset: 1664)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !742, line: 176, size: 192, elements: !848)
!848 = !{!849, !858, !859}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !847, file: !742, line: 177, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !742, line: 171, baseType: !851)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!109, !740, !854, !856, !740}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !847, file: !742, line: 178, baseType: !740, size: 64, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !847, file: !742, line: 179, baseType: !806, size: 64, offset: 128)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !712, file: !713, line: 130, baseType: !740, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !712, file: !713, line: 131, baseType: !740, size: 64, offset: 896)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !712, file: !713, line: 132, baseType: !740, size: 64, offset: 960)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !712, file: !713, line: 135, baseType: !192, size: 64, offset: 1024)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !712, file: !713, line: 137, baseType: !865, size: 64, offset: 1088)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !867, line: 14, size: 1088, elements: !868)
!867 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!868 = !{!869, !870, !879, !880, !881, !882, !883, !884}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !866, file: !867, line: 15, baseType: !666, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !866, file: !867, line: 17, baseType: !871, size: 320, offset: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !872, line: 22, size: 320, elements: !873)
!872 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!873 = !{!874, !875, !876, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !871, file: !872, line: 23, baseType: !626, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !871, file: !872, line: 24, baseType: !617, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !871, file: !872, line: 26, baseType: !201, size: 128, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !871, file: !872, line: 28, baseType: !878, size: 64, offset: 256)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !866, file: !867, line: 19, baseType: !260, size: 64, offset: 384)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !866, file: !867, line: 20, baseType: !611, size: 64, offset: 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !866, file: !867, line: 23, baseType: !679, size: 128, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !866, file: !867, line: 24, baseType: !516, size: 32, offset: 640)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !866, file: !867, line: 29, baseType: !611, size: 64, offset: 704)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !866, file: !867, line: 36, baseType: !885, size: 320, offset: 768)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !886, line: 15, size: 320, elements: !887)
!886 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!887 = !{!888, !889, !890, !891, !892, !893, !894}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !885, file: !886, line: 16, baseType: !626, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !885, file: !886, line: 18, baseType: !109, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !885, file: !886, line: 19, baseType: !109, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !885, file: !886, line: 20, baseType: !109, size: 32, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !885, file: !886, line: 21, baseType: !109, size: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !885, file: !886, line: 22, baseType: !260, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !885, file: !886, line: 23, baseType: !260, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !712, file: !713, line: 138, baseType: !896, size: 64, offset: 1152)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !38, line: 901, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !712, file: !713, line: 139, baseType: !899, size: 64, offset: 1216)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !901, line: 16, flags: DIFlagFwdDecl)
!901 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!902 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !712, file: !713, line: 140, baseType: !903, size: 64, offset: 1280)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !713, line: 25, size: 64, elements: !905)
!905 = !{!906, !907, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !904, file: !713, line: 26, baseType: !381, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !904, file: !713, line: 27, baseType: !109, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !904, file: !713, line: 28, baseType: !909, offset: 64)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !524, elements: !703)
!910 = !DIDerivedType(tag: DW_TAG_member, scope: !712, file: !713, line: 142, baseType: !911, size: 128, offset: 1344)
!911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !712, file: !713, line: 142, size: 128, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !911, file: !713, line: 143, baseType: !109, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !911, file: !713, line: 144, baseType: !598, size: 128, align: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !586, file: !14, line: 1013, baseType: !916, size: 256, offset: 960)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !923}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !916, file: !14, line: 971, baseType: !260, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !916, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !916, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !916, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !916, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !916, file: !14, line: 976, baseType: !634, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !586, file: !14, line: 1014, baseType: !925, size: 128, offset: 1216)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !926, line: 8, size: 128, elements: !927)
!926 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!927 = !{!928, !4153}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !925, file: !926, line: 9, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !931, line: 70, size: 256, elements: !932)
!931 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!932 = !{!933, !4150, !4151, !4152}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !930, file: !931, line: 71, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !936, line: 82, size: 1536, elements: !937)
!936 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!937 = !{!938, !939, !949, !957, !958, !973, !4117, !4119, !4132, !4133, !4134, !4135, !4136, !4142, !4143, !4144}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !935, file: !936, line: 84, baseType: !7, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !935, file: !936, line: 85, baseType: !940, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !941, line: 275, baseType: !942)
!941 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !941, line: 275, size: 32, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !942, file: !941, line: 275, baseType: !945, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !941, line: 69, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !941, line: 64, size: 32, elements: !947)
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !946, file: !941, line: 65, baseType: !7, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !935, file: !936, line: 86, baseType: !950, size: 128, offset: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !951, line: 38, size: 128, elements: !952)
!951 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!952 = !{!953, !955}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !950, file: !951, line: 39, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !950, file: !951, line: 39, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !935, file: !936, line: 87, baseType: !934, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !935, file: !936, line: 88, baseType: !959, size: 128, offset: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !936, line: 49, size: 128, elements: !960)
!960 = !{!961, !970}
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !936, line: 50, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !936, line: 50, size: 64, elements: !963)
!963 = !{!964, !969}
!964 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !936, line: 51, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !936, line: 51, size: 64, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !965, file: !936, line: 52, baseType: !245, size: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !965, file: !936, line: 52, baseType: !245, size: 32, offset: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !962, file: !936, line: 54, baseType: !731, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !959, file: !936, line: 56, baseType: !971, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !935, file: !936, line: 89, baseType: !974, size: 64, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !976)
!976 = !{!977, !978, !979, !980, !981, !982, !983, !986, !987, !1175, !3928, !3929, !3930, !3931, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !4099, !4102, !4103, !4104, !4113, !4114, !4115, !4116}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !975, file: !14, line: 642, baseType: !347, size: 16)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !975, file: !14, line: 643, baseType: !225, size: 16, offset: 16)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !975, file: !14, line: 644, baseType: !516, size: 32, offset: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !975, file: !14, line: 645, baseType: !201, size: 128, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !975, file: !14, line: 646, baseType: !524, size: 32, offset: 192)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !975, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !975, file: !14, line: 650, baseType: !984, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !975, file: !14, line: 651, baseType: !984, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !975, file: !14, line: 654, baseType: !988, size: 64, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !991)
!991 = !{!992, !996, !1006, !1012, !1016, !1020, !1024, !1028, !1032, !1036, !1040, !1041, !1047, !1051, !1088, !1119, !1123, !1129, !1133, !1137, !1141, !1145, !1149, !1155, !1159}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !990, file: !14, line: 1967, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!934, !974, !934, !7}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !990, file: !14, line: 1968, baseType: !997, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!267, !934, !974, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1002, line: 10, size: 128, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1001, file: !1002, line: 11, baseType: !504, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1001, file: !1002, line: 12, baseType: !192, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !990, file: !14, line: 1969, baseType: !1007, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!109, !1010, !974, !109}
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !727, line: 42, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !990, file: !14, line: 1970, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!984, !974, !109, !485}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !990, file: !14, line: 1972, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!109, !934, !423, !109}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !990, file: !14, line: 1974, baseType: !1021, size: 64, offset: 320)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!109, !1010, !974, !934, !347, !485}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !990, file: !14, line: 1976, baseType: !1025, size: 64, offset: 384)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!109, !934, !974, !934}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !990, file: !14, line: 1977, baseType: !1029, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!109, !974, !934}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !990, file: !14, line: 1978, baseType: !1033, size: 64, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!109, !1010, !974, !934, !267}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !990, file: !14, line: 1980, baseType: !1037, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!109, !1010, !974, !934, !347}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !990, file: !14, line: 1982, baseType: !1029, size: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !990, file: !14, line: 1983, baseType: !1042, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!109, !1010, !974, !934, !347, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !202, line: 21, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !202, line: 18, baseType: !245)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !990, file: !14, line: 1985, baseType: !1048, size: 64, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!109, !1010, !974, !934, !974, !934, !7}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !990, file: !14, line: 1987, baseType: !1052, size: 64, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!109, !1010, !934, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1070, !1079, !1080, !1085, !1086, !1087}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1056, file: !14, line: 227, baseType: !7, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1056, file: !14, line: 228, baseType: !347, size: 16, offset: 32)
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !14, line: 241, baseType: !1061, size: 32, offset: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !14, line: 241, size: 32, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1061, file: !14, line: 242, baseType: !516, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1061, file: !14, line: 243, baseType: !1065, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1066, line: 16, baseType: !1067)
!1066 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 14, size: 32, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1067, file: !1066, line: 15, baseType: !521, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !14, line: 245, baseType: !1071, size: 32, offset: 96)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !14, line: 245, size: 32, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1071, file: !14, line: 246, baseType: !524, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1071, file: !14, line: 247, baseType: !1075, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1066, line: 20, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1066, line: 18, size: 32, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1076, file: !1066, line: 19, baseType: !528, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1056, file: !14, line: 249, baseType: !634, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1056, file: !14, line: 250, baseType: !1081, size: 128, offset: 192)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !773, line: 13, size: 128, elements: !1082)
!1082 = !{!1083, !1084}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1081, file: !773, line: 14, baseType: !772, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1081, file: !773, line: 15, baseType: !458, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1056, file: !14, line: 251, baseType: !1081, size: 128, offset: 320)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1056, file: !14, line: 252, baseType: !1081, size: 128, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1056, file: !14, line: 259, baseType: !585, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !990, file: !14, line: 1988, baseType: !1089, size: 64, offset: 896)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!109, !1010, !1092, !1094, !245, !7}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !925)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1096, line: 22, size: 1280, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1095, file: !1096, line: 23, baseType: !245, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1095, file: !1096, line: 24, baseType: !347, size: 16, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1095, file: !1096, line: 25, baseType: !7, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1095, file: !1096, line: 26, baseType: !780, size: 32, offset: 96)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1095, file: !1096, line: 27, baseType: !731, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1095, file: !1096, line: 28, baseType: !731, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1095, file: !1096, line: 41, baseType: !731, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1095, file: !1096, line: 42, baseType: !1045, size: 32, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1095, file: !1096, line: 43, baseType: !1045, size: 32, offset: 352)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1095, file: !1096, line: 44, baseType: !516, size: 32, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1095, file: !1096, line: 45, baseType: !524, size: 32, offset: 416)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1095, file: !1096, line: 46, baseType: !634, size: 64, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1095, file: !1096, line: 47, baseType: !1081, size: 128, offset: 512)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1095, file: !1096, line: 48, baseType: !1081, size: 128, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1095, file: !1096, line: 49, baseType: !1081, size: 128, offset: 768)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1095, file: !1096, line: 50, baseType: !1081, size: 128, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1095, file: !1096, line: 51, baseType: !731, size: 64, offset: 1024)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1095, file: !1096, line: 52, baseType: !731, size: 64, offset: 1088)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1095, file: !1096, line: 53, baseType: !245, size: 32, offset: 1152)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1095, file: !1096, line: 54, baseType: !245, size: 32, offset: 1184)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1095, file: !1096, line: 55, baseType: !731, size: 64, offset: 1216)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !990, file: !14, line: 1990, baseType: !1120, size: 64, offset: 960)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!454, !934, !423, !468}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !990, file: !14, line: 1991, baseType: !1124, size: 64, offset: 1024)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!109, !974, !1127, !731, !731}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !990, file: !14, line: 1993, baseType: !1130, size: 64, offset: 1088)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!109, !974, !109}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !990, file: !14, line: 1994, baseType: !1134, size: 64, offset: 1152)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!109, !974, !934, !585, !7, !347}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !990, file: !14, line: 1997, baseType: !1138, size: 64, offset: 1216)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!109, !1010, !974, !585, !347}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !990, file: !14, line: 1999, baseType: !1142, size: 64, offset: 1280)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!984, !1010, !934, !109}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !990, file: !14, line: 2001, baseType: !1146, size: 64, offset: 1344)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!109, !1010, !934, !984, !109}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !990, file: !14, line: 2003, baseType: !1150, size: 64, offset: 1408)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!109, !1010, !934, !1153}
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !990, file: !14, line: 2005, baseType: !1156, size: 64, offset: 1472)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!109, !934, !1153}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !990, file: !14, line: 2006, baseType: !1160, size: 64, offset: 1536)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!1163, !974}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !1165)
!1165 = !{!1166, !1174}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1164, file: !14, line: 3193, baseType: !1167, size: 128)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1168, line: 296, size: 128, elements: !1169)
!1168 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1169 = !{!1170, !1171, !1173}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1167, file: !1168, line: 297, baseType: !361, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1167, file: !1168, line: 299, baseType: !1172, size: 32, offset: 32)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !202, line: 154, baseType: !7)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1167, file: !1168, line: 300, baseType: !192, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1164, file: !14, line: 3194, baseType: !245, size: 32, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !975, file: !14, line: 655, baseType: !1176, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1182, !1183, !1184, !1608, !1745, !1785, !1868, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1885, !1889, !1890, !1893, !1896, !1899, !1902, !1903, !1904, !1945, !3803, !3804, !3805, !3806, !3807, !3808, !3811, !3813, !3820, !3821, !3822, !3823, !3882, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1177, file: !14, line: 1191, baseType: !201, size: 128)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1177, file: !14, line: 1192, baseType: !1045, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1177, file: !14, line: 1193, baseType: !235, size: 8, offset: 160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1177, file: !14, line: 1194, baseType: !260, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1177, file: !14, line: 1195, baseType: !634, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1177, file: !14, line: 1196, baseType: !1185, size: 64, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1196, !1200, !1204, !1208, !1596, !1597, !1598, !1600, !1601, !1602, !1604, !1605, !1606, !1607}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1186, file: !14, line: 2367, baseType: !267, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1186, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1186, file: !14, line: 2376, baseType: !1191, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!109, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !533, line: 32, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1186, file: !14, line: 2377, baseType: !1197, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1186, file: !14, line: 2378, baseType: !1201, size: 64, offset: 256)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!934, !1185, !109, !267, !192}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1186, file: !14, line: 2380, baseType: !1205, size: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{null, !1176}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1186, file: !14, line: 2381, baseType: !1209, size: 64, offset: 384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1218, !1239, !1265, !1266, !1267, !1268, !1272, !1275, !1276, !1277, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1345, !1349, !1369, !1389, !1390, !1391, !1392, !1401, !1424, !1425, !1428, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1442, !1443, !1555, !1563, !1564, !1565, !1567, !1571, !1572, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1589, !1590, !1591, !1595}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1210, file: !6, line: 403, baseType: !5, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1210, file: !6, line: 406, baseType: !201, size: 128, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1210, file: !6, line: 409, baseType: !1215, size: 448, offset: 192)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 448, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 56)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1210, file: !6, line: 417, baseType: !1219, size: 768, offset: 640)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1220)
!1220 = !{!1221, !1222, !1223, !1224, !1227}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1219, file: !6, line: 46, baseType: !349, size: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1219, file: !6, line: 47, baseType: !1209, size: 64, offset: 512)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1219, file: !6, line: 48, baseType: !348, size: 64, offset: 576)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1219, file: !6, line: 49, baseType: !1225, size: 64, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1219, file: !6, line: 50, baseType: !1228, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1230, line: 26, size: 256, elements: !1231)
!1230 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1231 = !{!1232, !1233}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1229, file: !1230, line: 27, baseType: !7, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1229, file: !1230, line: 28, baseType: !1234, size: 192, offset: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1235, line: 43, size: 192, elements: !1236)
!1235 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1234, file: !1235, line: 44, baseType: !626, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1234, file: !1235, line: 45, baseType: !201, size: 128, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1210, file: !6, line: 418, baseType: !1240, size: 64, offset: 1408)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1242)
!1242 = !{!1243, !1244, !1249, !1253, !1257, !1261}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1241, file: !6, line: 54, baseType: !460, size: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1241, file: !6, line: 55, baseType: !1245, size: 64, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!454, !1240, !1248, !423}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1241, file: !6, line: 57, baseType: !1250, size: 64, offset: 192)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!454, !1240, !1248, !267, !468}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1241, file: !6, line: 59, baseType: !1254, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !1209, !267}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1241, file: !6, line: 60, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!109, !1209}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1241, file: !6, line: 61, baseType: !1262, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{null, !1209}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1210, file: !6, line: 419, baseType: !267, size: 64, offset: 1472)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1210, file: !6, line: 420, baseType: !267, size: 64, offset: 1536)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1210, file: !6, line: 421, baseType: !348, size: 64, offset: 1600)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1210, file: !6, line: 424, baseType: !1269, size: 64, offset: 1664)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1210, file: !6, line: 425, baseType: !1273, size: 64, offset: 1728)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1210, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1210, file: !6, line: 435, baseType: !621, size: 256, offset: 1856)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1210, file: !6, line: 437, baseType: !1278, size: 64, offset: 2112)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1280, line: 69, size: 320, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1281 = !{!1282, !1283, !1284, !1301, !1303, !1307, !1308}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1279, file: !1280, line: 70, baseType: !267, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1279, file: !1280, line: 71, baseType: !1209, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1279, file: !1280, line: 72, baseType: !1285, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1280, line: 47, size: 256, elements: !1288)
!1288 = !{!1289, !1290, !1296, !1300}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1287, file: !1280, line: 49, baseType: !7, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1287, file: !1280, line: 51, baseType: !1291, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!109, !267, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1287, file: !1280, line: 53, baseType: !1297, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!109, !423, !1294}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1287, file: !1280, line: 55, baseType: !504, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1279, file: !1280, line: 73, baseType: !1302, size: 16, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1279, file: !1280, line: 74, baseType: !1304, size: 8, offset: 208)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !232, line: 16, baseType: !1305)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !234, line: 20, baseType: !1306)
!1306 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !1280, line: 75, baseType: !231, size: 8, offset: 216)
!1308 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !1280, line: 76, baseType: !1309, size: 64, offset: 256)
!1309 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1279, file: !1280, line: 76, size: 64, elements: !1310)
!1310 = !{!1311, !1312, !1319}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1309, file: !1280, line: 77, baseType: !192, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1309, file: !1280, line: 78, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1315)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1280, line: 86, size: 128, elements: !1316)
!1316 = !{!1317, !1318}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1315, file: !1280, line: 87, baseType: !7, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1315, file: !1280, line: 88, baseType: !423, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1309, file: !1280, line: 79, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1280, line: 92, size: 256, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1328, !1329}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1322, file: !1280, line: 94, baseType: !7, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1322, file: !1280, line: 95, baseType: !7, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1322, file: !1280, line: 96, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1322, file: !1280, line: 97, baseType: !1285, size: 64, offset: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1322, file: !1280, line: 98, baseType: !192, size: 64, offset: 192)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1210, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1210, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1210, file: !6, line: 442, baseType: !1269, size: 64, offset: 2240)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1210, file: !6, line: 443, baseType: !1273, size: 64, offset: 2304)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1210, file: !6, line: 444, baseType: !485, size: 8, offset: 2368)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1210, file: !6, line: 451, baseType: !485, size: 8, offset: 2376)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1210, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1210, file: !6, line: 455, baseType: !1338, size: 64, offset: 2432)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1340, line: 23, size: 96, elements: !1341)
!1340 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1339, file: !1340, line: 24, baseType: !109, size: 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1339, file: !1340, line: 24, baseType: !109, size: 32, offset: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1339, file: !1340, line: 24, baseType: !109, size: 32, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1210, file: !6, line: 458, baseType: !1346, size: 64, offset: 2496)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!109}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1210, file: !6, line: 460, baseType: !1350, size: 4032, align: 512, offset: 2560)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1351, size: 4032, elements: !1367)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1352)
!1352 = !{!1353, !1354, !1355}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1351, file: !6, line: 363, baseType: !192, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1351, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1351, file: !6, line: 367, baseType: !1356, size: 448, offset: 128)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1356, file: !6, line: 320, baseType: !1209, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1356, file: !6, line: 321, baseType: !1360, size: 384, offset: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1361, line: 40, size: 384, elements: !1362)
!1361 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1362 = !{!1363}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1360, file: !1361, line: 41, baseType: !1364, size: 384, align: 64)
!1364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 384, align: 64, elements: !1365)
!1365 = !{!1366}
!1366 = !DISubrange(count: 2)
!1367 = !{!1368}
!1368 = !DISubrange(count: 7)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1210, file: !6, line: 463, baseType: !1370, size: 192, offset: 6592)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1371, line: 8, size: 192, elements: !1372)
!1371 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1372 = !{!1373, !1374, !1376}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1370, file: !1371, line: 10, baseType: !7, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1370, file: !1371, line: 11, baseType: !1375, size: 64, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1370, file: !1371, line: 12, baseType: !1377, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1379, line: 59, size: 48, elements: !1380)
!1379 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1380 = !{!1381, !1384, !1385, !1386, !1387, !1388}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1378, file: !1379, line: 60, baseType: !1382, size: 16)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !232, line: 18, baseType: !1383)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !234, line: 23, baseType: !784)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1378, file: !1379, line: 61, baseType: !1382, size: 16, offset: 16)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1378, file: !1379, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1378, file: !1379, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1378, file: !1379, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1378, file: !1379, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1210, file: !6, line: 465, baseType: !260, size: 64, offset: 6784)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1210, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1210, file: !6, line: 470, baseType: !201, size: 128, offset: 6912)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1210, file: !6, line: 471, baseType: !1393, size: 64, offset: 7040)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1395, line: 33, size: 96, elements: !1396)
!1395 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1396 = !{!1397, !1398, !1399, !1400}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1394, file: !1395, line: 37, baseType: !109, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1394, file: !1395, line: 43, baseType: !109, size: 32, offset: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1394, file: !1395, line: 45, baseType: !225, size: 16, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1394, file: !1395, line: 47, baseType: !225, size: 16, offset: 80)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1210, file: !6, line: 476, baseType: !1402, size: 64, offset: 7104)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1404)
!1404 = !{!1405, !1421, !1422, !1423}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1403, file: !6, line: 379, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1408, line: 204, baseType: !1409)
!1408 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1408, line: 197, size: 192, elements: !1410)
!1410 = !{!1411, !1413, !1414, !1415, !1417, !1419}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1409, file: !1408, line: 198, baseType: !1412, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1408, line: 21, baseType: !246)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1409, file: !1408, line: 199, baseType: !235, size: 8, offset: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1409, file: !1408, line: 200, baseType: !235, size: 8, offset: 40)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1409, file: !1408, line: 201, baseType: !1416, size: 16, offset: 48)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1408, line: 17, baseType: !257)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1409, file: !1408, line: 202, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1408, line: 16, baseType: !732)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1409, file: !1408, line: 203, baseType: !1420, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1408, line: 22, baseType: !732)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1403, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1403, file: !6, line: 381, baseType: !423, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1403, file: !6, line: 382, baseType: !423, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1210, file: !6, line: 477, baseType: !1403, size: 256, offset: 7168)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1210, file: !6, line: 480, baseType: !1426, size: 64, offset: 7424)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1210, file: !6, line: 483, baseType: !1429, size: 64, offset: 7488)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1210, file: !6, line: 488, baseType: !423, size: 64, offset: 7552)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1210, file: !6, line: 492, baseType: !192, size: 64, offset: 7616)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1210, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1210, file: !6, line: 495, baseType: !192, size: 64, offset: 7744)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1210, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1210, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1210, file: !6, line: 500, baseType: !1438, size: 64, offset: 7872)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1440, line: 45, baseType: !1441)
!1440 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1210, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1210, file: !6, line: 504, baseType: !1444, size: 64, offset: 8000)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1447, line: 96, size: 192, elements: !1448)
!1447 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1448 = !{!1449, !1450, !1515, !1519}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1446, file: !1447, line: 97, baseType: !7, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1446, file: !1447, line: 98, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1447, line: 24, size: 3072, elements: !1453)
!1453 = !{!1454, !1456, !1457, !1458, !1459, !1473, !1474, !1475, !1476, !1488, !1500, !1501, !1512, !1513, !1514}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1452, file: !1447, line: 26, baseType: !1455, size: 128)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 128, elements: !1365)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1452, file: !1447, line: 27, baseType: !1455, size: 128, offset: 128)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1452, file: !1447, line: 28, baseType: !109, size: 32, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !1447, line: 31, baseType: !361, size: 32, align: 512, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1452, file: !1447, line: 32, baseType: !1460, size: 960, offset: 576)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1461, line: 206, size: 960, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1462 = !{!1463, !1464, !1467, !1469, !1470, !1472}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1460, file: !1461, line: 207, baseType: !601, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1460, file: !1461, line: 208, baseType: !1465, size: 256, offset: 64)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1466, size: 256, elements: !684)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1460, file: !1461, line: 209, baseType: !1468, size: 256, offset: 320)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, elements: !684)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1460, file: !1461, line: 213, baseType: !458, size: 64, offset: 576)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1460, file: !1461, line: 215, baseType: !1471, size: 256, offset: 640)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 256, elements: !684)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !1461, line: 216, baseType: !231, size: 8, offset: 896)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1452, file: !1447, line: 33, baseType: !260, size: 64, offset: 1536)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1452, file: !1447, line: 34, baseType: !260, size: 64, offset: 1600)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1452, file: !1447, line: 35, baseType: !485, size: 8, offset: 1664)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1452, file: !1447, line: 36, baseType: !1477, size: 320, offset: 1728)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1478, line: 11, size: 320, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1479 = !{!1480, !1481, !1482, !1487}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1477, file: !1478, line: 16, baseType: !679, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1477, file: !1478, line: 17, baseType: !260, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1477, file: !1478, line: 18, baseType: !1483, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1477, file: !1478, line: 19, baseType: !245, size: 32, offset: 256)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1452, file: !1447, line: 37, baseType: !1489, size: 256, offset: 2048)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1490, line: 98, size: 256, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1489, file: !1490, line: 99, baseType: !611, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1489, file: !1490, line: 100, baseType: !201, size: 128, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1489, file: !1490, line: 101, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1490, line: 21, baseType: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1452, file: !1447, line: 38, baseType: !598, size: 128, align: 64, offset: 2304)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1452, file: !1447, line: 39, baseType: !1502, size: 64, offset: 2432)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1447, line: 49, size: 768, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1503, file: !1447, line: 50, baseType: !361, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1503, file: !1447, line: 51, baseType: !1468, size: 256, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1503, file: !1447, line: 53, baseType: !1468, size: 256, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1503, file: !1447, line: 54, baseType: !260, size: 64, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1503, file: !1447, line: 55, baseType: !1502, size: 64, offset: 640)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1503, file: !1447, line: 56, baseType: !109, size: 32, offset: 704)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1503, file: !1447, line: 57, baseType: !109, size: 32, offset: 736)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1452, file: !1447, line: 40, baseType: !260, size: 64, offset: 2496)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1452, file: !1447, line: 42, baseType: !109, size: 32, offset: 2560)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1452, file: !1447, line: 43, baseType: !1445, size: 64, offset: 2624)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1446, file: !1447, line: 99, baseType: !1516, offset: 128)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1517, line: 211, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1518 = !{}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1446, file: !1447, line: 100, baseType: !1520, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1447, line: 63, size: 3008, elements: !1522)
!1522 = !{!1523, !1524, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1554}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1521, file: !1447, line: 64, baseType: !1502, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1521, file: !1447, line: 65, baseType: !1525, size: 192, offset: 64)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1502, size: 192, elements: !424)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1521, file: !1447, line: 67, baseType: !109, size: 32, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1521, file: !1447, line: 68, baseType: !621, size: 256, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1521, file: !1447, line: 69, baseType: !361, size: 32, offset: 576)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1521, file: !1447, line: 70, baseType: !621, size: 256, offset: 640)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1521, file: !1447, line: 71, baseType: !260, size: 64, offset: 896)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1521, file: !1447, line: 72, baseType: !260, size: 64, offset: 960)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1521, file: !1447, line: 73, baseType: !260, size: 64, offset: 1024)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1521, file: !1447, line: 74, baseType: !260, size: 64, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1521, file: !1447, line: 75, baseType: !260, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1521, file: !1447, line: 76, baseType: !260, size: 64, offset: 1216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1521, file: !1447, line: 77, baseType: !260, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1521, file: !1447, line: 78, baseType: !260, size: 64, offset: 1344)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1521, file: !1447, line: 79, baseType: !485, size: 8, offset: 1408)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1521, file: !1447, line: 80, baseType: !260, size: 64, offset: 1472)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1521, file: !1447, line: 81, baseType: !621, size: 256, offset: 1536)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1521, file: !1447, line: 82, baseType: !1229, size: 256, offset: 1792)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1521, file: !1447, line: 84, baseType: !381, size: 32, offset: 2048)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1521, file: !1447, line: 87, baseType: !260, size: 64, offset: 2112)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1521, file: !1447, line: 88, baseType: !260, size: 64, offset: 2176)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1521, file: !1447, line: 89, baseType: !1546, size: 704, offset: 2240)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1490, line: 111, size: 704, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1553}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1546, file: !1490, line: 112, baseType: !1489, size: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1546, file: !1490, line: 113, baseType: !1477, size: 320, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1546, file: !1490, line: 116, baseType: !1551, size: 64, offset: 576)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1490, line: 18, flags: DIFlagFwdDecl)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1546, file: !1490, line: 117, baseType: !109, size: 32, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1521, file: !1447, line: 90, baseType: !1445, size: 64, offset: 2944)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1210, file: !6, line: 515, baseType: !1556, size: 64, offset: 8064)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1558, line: 117, size: 128, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1559 = !{!1560, !1561, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1557, file: !1558, line: 118, baseType: !748, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1557, file: !1558, line: 119, baseType: !748, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1557, file: !1558, line: 120, baseType: !458, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1210, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1210, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1210, file: !6, line: 520, baseType: !1566, size: 64, offset: 8192)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1210, file: !6, line: 523, baseType: !1568, size: 64, offset: 8256)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1210, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1210, file: !6, line: 525, baseType: !1573, size: 64, offset: 8384)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1210, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1210, file: !6, line: 533, baseType: !192, size: 64, offset: 8512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1210, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1210, file: !6, line: 535, baseType: !259, size: 64, offset: 8640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1210, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1210, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1210, file: !6, line: 540, baseType: !1583, size: 64, offset: 8768)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1585, line: 32, size: 64, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1584, file: !1585, line: 33, baseType: !748, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1584, file: !1585, line: 34, baseType: !748, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1210, file: !6, line: 563, baseType: !201, size: 128, offset: 8832)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1210, file: !6, line: 565, baseType: !201, size: 128, offset: 8960)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1210, file: !6, line: 568, baseType: !1592, size: 64, offset: 9088)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1210, file: !6, line: 570, baseType: !381, size: 32, offset: 9152)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1186, file: !14, line: 2382, baseType: !1185, size: 64, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1186, file: !14, line: 2383, baseType: !675, size: 64, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1186, file: !14, line: 2385, baseType: !1599, offset: 576)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1517, line: 206, elements: !1518)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1186, file: !14, line: 2386, baseType: !1599, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1186, file: !14, line: 2387, baseType: !1599, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1186, file: !14, line: 2388, baseType: !1603, offset: 576)
!1603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1599, elements: !424)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1186, file: !14, line: 2390, baseType: !1599, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1186, file: !14, line: 2391, baseType: !1599, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1186, file: !14, line: 2392, baseType: !1599, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1186, file: !14, line: 2393, baseType: !1599, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1177, file: !14, line: 1197, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1612)
!1612 = !{!1613, !1617, !1621, !1622, !1626, !1632, !1636, !1637, !1638, !1642, !1646, !1650, !1651, !1652, !1658, !1662, !1663, !1670, !1671, !1672, !1673, !1677, !1681, !1728, !1743, !1744}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1611, file: !14, line: 2058, baseType: !1614, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!974, !1176}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1611, file: !14, line: 2059, baseType: !1618, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !974}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1611, file: !14, line: 2060, baseType: !1618, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1611, file: !14, line: 2062, baseType: !1623, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !974, !109}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1611, file: !14, line: 2063, baseType: !1627, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!109, !974, !1630}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1611, file: !14, line: 2064, baseType: !1633, size: 64, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!109, !974}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1611, file: !14, line: 2065, baseType: !1618, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1611, file: !14, line: 2066, baseType: !1205, size: 64, offset: 448)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1611, file: !14, line: 2067, baseType: !1639, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!109, !1176, !109}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1611, file: !14, line: 2068, baseType: !1643, size: 64, offset: 576)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!109, !1176, !13}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1611, file: !14, line: 2069, baseType: !1647, size: 64, offset: 640)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!109, !1176}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1611, file: !14, line: 2070, baseType: !1643, size: 64, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1611, file: !14, line: 2071, baseType: !1647, size: 64, offset: 768)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1611, file: !14, line: 2072, baseType: !1653, size: 64, offset: 832)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!109, !934, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1611, file: !14, line: 2073, baseType: !1659, size: 64, offset: 896)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!109, !1176, !1375, !423}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1611, file: !14, line: 2074, baseType: !1205, size: 64, offset: 960)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1611, file: !14, line: 2076, baseType: !1664, size: 64, offset: 1024)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!109, !1667, !934}
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1669, line: 66, flags: DIFlagFwdDecl)
!1669 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1611, file: !14, line: 2077, baseType: !1664, size: 64, offset: 1088)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1611, file: !14, line: 2078, baseType: !1664, size: 64, offset: 1152)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1611, file: !14, line: 2079, baseType: !1664, size: 64, offset: 1216)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1611, file: !14, line: 2081, baseType: !1674, size: 64, offset: 1280)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!454, !1176, !109, !423, !468, !634}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1611, file: !14, line: 2082, baseType: !1678, size: 64, offset: 1344)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!454, !1176, !109, !267, !468, !634}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1611, file: !14, line: 2083, baseType: !1682, size: 64, offset: 1408)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!1685, !974}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1713, !1714, !1715}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1687, file: !19, line: 297, baseType: !679, size: 128)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1687, file: !19, line: 298, baseType: !201, size: 128, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1687, file: !19, line: 299, baseType: !201, size: 128, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1687, file: !19, line: 300, baseType: !201, size: 128, offset: 384)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1687, file: !19, line: 301, baseType: !621, size: 256, offset: 512)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1687, file: !19, line: 302, baseType: !361, size: 32, offset: 768)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1687, file: !19, line: 303, baseType: !381, size: 32, offset: 800)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1687, file: !19, line: 304, baseType: !1176, size: 64, offset: 832)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1687, file: !19, line: 305, baseType: !1698, size: 64, offset: 896)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1699)
!1699 = !{!1700, !1712}
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1698, file: !19, line: 69, baseType: !1701, size: 32)
!1701 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1698, file: !19, line: 69, size: 32, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1701, file: !19, line: 70, baseType: !516, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1701, file: !19, line: 71, baseType: !524, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1701, file: !19, line: 72, baseType: !1706, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1707, line: 24, baseType: !1708)
!1707 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1707, line: 22, size: 32, elements: !1709)
!1709 = !{!1710}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1708, file: !1707, line: 23, baseType: !1711, size: 32)
!1711 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1707, line: 20, baseType: !522)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1698, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1687, file: !19, line: 306, baseType: !634, size: 64, offset: 960)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1687, file: !19, line: 307, baseType: !260, size: 64, offset: 1024)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1687, file: !19, line: 308, baseType: !1716, size: 576, offset: 1088)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1717)
!1717 = !{!1718, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1716, file: !19, line: 206, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !619)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1716, file: !19, line: 207, baseType: !1719, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1716, file: !19, line: 208, baseType: !1719, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1716, file: !19, line: 209, baseType: !1719, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1716, file: !19, line: 210, baseType: !1719, size: 64, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1716, file: !19, line: 211, baseType: !1719, size: 64, offset: 320)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1716, file: !19, line: 212, baseType: !1719, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1716, file: !19, line: 213, baseType: !772, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1716, file: !19, line: 214, baseType: !772, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1611, file: !14, line: 2085, baseType: !1729, size: 64, offset: 1472)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!458, !1176, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1734, line: 15, size: 256, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1735 = !{!1736, !1737, !1738, !1739, !1740}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1733, file: !1734, line: 16, baseType: !1172, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1733, file: !1734, line: 19, baseType: !109, size: 32, offset: 32)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1733, file: !1734, line: 26, baseType: !260, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1733, file: !1734, line: 33, baseType: !260, size: 64, offset: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1733, file: !1734, line: 36, baseType: !1741, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1611, file: !14, line: 2087, baseType: !1729, size: 64, offset: 1536)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1611, file: !14, line: 2089, baseType: !1205, size: 64, offset: 1600)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1177, file: !14, line: 1198, baseType: !1746, size: 64, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !1749)
!1749 = !{!1750, !1754, !1758, !1762, !1763, !1764, !1765, !1766, !1771, !1776, !1780}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1748, file: !19, line: 325, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!109, !1686}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1748, file: !19, line: 326, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!1686, !1176, !109}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1748, file: !19, line: 327, baseType: !1759, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !1686}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1748, file: !19, line: 328, baseType: !1751, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1748, file: !19, line: 329, baseType: !1751, size: 64, offset: 256)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1748, file: !19, line: 330, baseType: !1751, size: 64, offset: 320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1748, file: !19, line: 331, baseType: !1639, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1748, file: !19, line: 334, baseType: !1767, size: 64, offset: 448)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1770, !974}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1748, file: !19, line: 335, baseType: !1772, size: 64, offset: 512)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!109, !974, !1775}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1748, file: !19, line: 337, baseType: !1777, size: 64, offset: 576)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!109, !974, !1770}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1748, file: !19, line: 339, baseType: !1781, size: 64, offset: 640)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!109, !1176, !1784}
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1177, file: !14, line: 1199, baseType: !1786, size: 64, offset: 512)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !1789)
!1789 = !{!1790, !1794, !1795, !1799, !1800, !1801, !1816, !1839, !1843, !1844, !1867}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1788, file: !19, line: 431, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!109, !1176, !109, !109, !1092}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1788, file: !19, line: 432, baseType: !1639, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1788, file: !19, line: 433, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!109, !1176, !7}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1788, file: !19, line: 434, baseType: !1796, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1788, file: !19, line: 435, baseType: !1639, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1788, file: !19, line: 436, baseType: !1802, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!109, !1176, !109, !1805}
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1806, file: !19, line: 418, baseType: !109, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1806, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1806, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1806, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1806, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1806, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1806, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1806, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1788, file: !19, line: 437, baseType: !1817, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!109, !1176, !1698, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1821, file: !19, line: 346, baseType: !109, size: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1821, file: !19, line: 347, baseType: !731, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1821, file: !19, line: 348, baseType: !731, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1821, file: !19, line: 349, baseType: !731, size: 64, offset: 192)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1821, file: !19, line: 350, baseType: !731, size: 64, offset: 256)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1821, file: !19, line: 351, baseType: !731, size: 64, offset: 320)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1821, file: !19, line: 352, baseType: !731, size: 64, offset: 384)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1821, file: !19, line: 353, baseType: !617, size: 64, offset: 448)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1821, file: !19, line: 355, baseType: !617, size: 64, offset: 512)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1821, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1821, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1821, file: !19, line: 358, baseType: !731, size: 64, offset: 640)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1821, file: !19, line: 359, baseType: !731, size: 64, offset: 704)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1821, file: !19, line: 360, baseType: !731, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1821, file: !19, line: 361, baseType: !617, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1821, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1788, file: !19, line: 438, baseType: !1840, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!109, !1176, !1784, !1820}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1788, file: !19, line: 440, baseType: !1817, size: 64, offset: 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1788, file: !19, line: 441, baseType: !1845, size: 64, offset: 576)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!109, !1176, !1848}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !1850)
!1850 = !{!1851, !1852}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1849, file: !19, line: 412, baseType: !7, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1849, file: !19, line: 413, baseType: !1853, size: 1344, offset: 64)
!1853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1854, size: 1344, elements: !424)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1866}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1854, file: !19, line: 398, baseType: !7, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1854, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1854, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1854, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1854, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1854, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1854, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1854, file: !19, line: 406, baseType: !733, size: 64, offset: 256)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1854, file: !19, line: 407, baseType: !1865, size: 64, offset: 320)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !202, line: 132, baseType: !731)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1854, file: !19, line: 408, baseType: !1865, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1788, file: !19, line: 442, baseType: !1796, size: 64, offset: 640)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1177, file: !14, line: 1200, baseType: !1869, size: 64, offset: 576)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1177, file: !14, line: 1201, baseType: !260, size: 64, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1177, file: !14, line: 1202, baseType: !260, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1177, file: !14, line: 1203, baseType: !260, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1177, file: !14, line: 1204, baseType: !934, size: 64, offset: 832)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1177, file: !14, line: 1205, baseType: !756, size: 320, offset: 896)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1177, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1177, file: !14, line: 1207, baseType: !381, size: 32, offset: 1248)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1177, file: !14, line: 1209, baseType: !192, size: 64, offset: 1280)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1177, file: !14, line: 1211, baseType: !1881, size: 64, offset: 1344)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1177, file: !14, line: 1223, baseType: !1886, size: 64, offset: 1408)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !951, line: 34, size: 64, elements: !1887)
!1887 = !{!1888}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1886, file: !951, line: 35, baseType: !954, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1177, file: !14, line: 1224, baseType: !201, size: 128, offset: 1472)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1177, file: !14, line: 1225, baseType: !1891, size: 64, offset: 1600)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1177, file: !14, line: 1226, baseType: !1894, size: 64, offset: 1664)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1177, file: !14, line: 1227, baseType: !1897, size: 64, offset: 1728)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1177, file: !14, line: 1228, baseType: !1900, size: 64, offset: 1792)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1177, file: !14, line: 1229, baseType: !679, size: 128, offset: 1856)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1177, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1177, file: !14, line: 1231, baseType: !1905, size: 2496, offset: 2048)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !1906)
!1906 = !{!1907, !1908, !1909, !1911, !1943}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !19, line: 522, baseType: !7, size: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1905, file: !19, line: 523, baseType: !756, size: 320, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1905, file: !19, line: 524, baseType: !1910, size: 192, offset: 384)
!1910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !974, size: 192, elements: !424)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1905, file: !19, line: 525, baseType: !1912, size: 1728, offset: 576)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 1728, elements: !424)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1914)
!1914 = !{!1915, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1913, file: !19, line: 223, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !1918)
!1918 = !{!1919, !1920, !1933, !1934}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1917, file: !19, line: 446, baseType: !109, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1917, file: !19, line: 447, baseType: !1921, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1923)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1923, file: !19, line: 313, baseType: !1639, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1923, file: !19, line: 314, baseType: !1639, size: 64, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1923, file: !19, line: 315, baseType: !1639, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1923, file: !19, line: 316, baseType: !1639, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1923, file: !19, line: 317, baseType: !1751, size: 64, offset: 256)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1923, file: !19, line: 318, baseType: !1751, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1923, file: !19, line: 319, baseType: !1751, size: 64, offset: 384)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1923, file: !19, line: 320, baseType: !1781, size: 64, offset: 448)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1917, file: !19, line: 448, baseType: !1209, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1917, file: !19, line: 449, baseType: !1916, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1913, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1913, file: !19, line: 226, baseType: !201, size: 128, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1913, file: !19, line: 227, baseType: !260, size: 64, offset: 256)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1913, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1913, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1913, file: !19, line: 230, baseType: !1719, size: 64, offset: 384)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1913, file: !19, line: 231, baseType: !1719, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1913, file: !19, line: 232, baseType: !192, size: 64, offset: 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1905, file: !19, line: 526, baseType: !1944, size: 192, offset: 2304)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1921, size: 192, elements: !424)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1177, file: !14, line: 1233, baseType: !1946, size: 2368, offset: 4544)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1947)
!1947 = !{!1948, !1949, !1950}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1946, file: !14, line: 1185, baseType: !225, size: 16)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1946, file: !14, line: 1186, baseType: !225, size: 16, offset: 16)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1946, file: !14, line: 1187, baseType: !1951, size: 2304, offset: 64)
!1951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1952, size: 2304, elements: !424)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1953, line: 12, size: 768, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1954 = !{!1955, !1963, !1964, !3801, !3802}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1952, file: !1953, line: 13, baseType: !1956, size: 384)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1957, line: 17, size: 384, elements: !1958)
!1957 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1958 = !{!1959, !1960, !1961, !1962}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1956, file: !1957, line: 18, baseType: !109, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1956, file: !1957, line: 19, baseType: !109, size: 32, offset: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1956, file: !1957, line: 20, baseType: !688, size: 192, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1956, file: !1957, line: 22, baseType: !598, size: 128, align: 64, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1952, file: !1953, line: 14, baseType: !1327, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1952, file: !1953, line: 15, baseType: !1965, size: 64, offset: 448)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1966, line: 16, size: 64, elements: !1967)
!1966 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1967 = !{!1968}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1965, file: !1966, line: 17, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1669, line: 746, size: 58368, elements: !1971)
!1971 = !{!1972, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2052, !2063, !2155, !2159, !2162, !2193, !2194, !2195, !2196, !2207, !2209, !2210, !2211, !2212, !2213, !2214, !2225, !2226, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2243, !2244, !2251, !2252, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2484, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2532, !2538, !2539, !2540, !2541, !2542, !2546, !2549, !2556, !2561, !2564, !2567, !2570, !2573, !2711, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2749, !2750, !2751, !2760, !2768, !2769, !2770, !2771, !2772, !2777, !2778, !2779, !2782, !2783, !2786, !2789, !2792, !2800, !2803, !2804, !2890, !2891, !2892, !2893, !2894, !2900, !2901, !2902, !2903, !2906, !2907, !2910, !2913, !2914, !2917, !2918, !2919, !2922, !2923, !2924, !2927, !2928, !2929, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2961, !2964, !3457, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3469, !3541, !3543, !3544, !3545, !3546, !3547, !3548, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3576, !3577, !3578}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1970, file: !1669, line: 752, baseType: !1973, size: 192)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1974, line: 56, size: 192, elements: !1975)
!1974 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1975 = !{!1976, !1977, !1978, !1979}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1973, file: !1974, line: 57, baseType: !260, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1973, file: !1974, line: 58, baseType: !260, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1973, file: !1974, line: 59, baseType: !245, size: 32, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1973, file: !1974, line: 61, baseType: !245, size: 32, offset: 160)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1970, file: !1669, line: 754, baseType: !7, size: 32, offset: 192)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1970, file: !1669, line: 767, baseType: !192, size: 64, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1970, file: !1669, line: 768, baseType: !666, size: 32, offset: 320)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1970, file: !1669, line: 770, baseType: !7, size: 32, offset: 352)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1970, file: !1669, line: 771, baseType: !7, size: 32, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1970, file: !1669, line: 774, baseType: !109, size: 32, offset: 416)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1970, file: !1669, line: 775, baseType: !1987, size: 128, offset: 448)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1988, line: 58, size: 128, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1989 = !{!1990, !1991, !1996, !1997}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1987, file: !1988, line: 59, baseType: !592, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, scope: !1987, file: !1988, line: 60, baseType: !1992, size: 32, offset: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1987, file: !1988, line: 60, size: 32, elements: !1993)
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1992, file: !1988, line: 61, baseType: !7, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1992, file: !1988, line: 62, baseType: !381, size: 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1987, file: !1988, line: 65, baseType: !256, size: 16, offset: 96)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1987, file: !1988, line: 65, baseType: !256, size: 16, offset: 112)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1970, file: !1669, line: 776, baseType: !7, size: 32, offset: 576)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1970, file: !1669, line: 777, baseType: !260, size: 64, offset: 640)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1970, file: !1669, line: 778, baseType: !1969, size: 64, offset: 704)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1970, file: !1669, line: 787, baseType: !109, size: 32, offset: 768)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1970, file: !1669, line: 788, baseType: !109, size: 32, offset: 800)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1970, file: !1669, line: 790, baseType: !109, size: 32, offset: 832)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1970, file: !1669, line: 792, baseType: !109, size: 32, offset: 864)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1970, file: !1669, line: 793, baseType: !109, size: 32, offset: 896)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1970, file: !1669, line: 794, baseType: !109, size: 32, offset: 928)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1970, file: !1669, line: 795, baseType: !7, size: 32, offset: 960)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1970, file: !1669, line: 797, baseType: !2009, size: 2048, offset: 1024)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1669, line: 551, size: 2048, elements: !2010)
!2010 = !{!2011, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2031, !2034, !2035, !2036}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2009, file: !1669, line: 553, baseType: !2012, size: 128)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1669, line: 411, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2012, file: !1669, line: 412, baseType: !260, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2012, file: !1669, line: 413, baseType: !245, size: 32, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2009, file: !1669, line: 554, baseType: !540, size: 192, align: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2009, file: !1669, line: 555, baseType: !731, size: 64, offset: 320)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2009, file: !1669, line: 556, baseType: !731, size: 64, offset: 384)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2009, file: !1669, line: 558, baseType: !201, size: 128, offset: 448)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2009, file: !1669, line: 559, baseType: !7, size: 32, offset: 576)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2009, file: !1669, line: 561, baseType: !731, size: 64, offset: 640)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2009, file: !1669, line: 562, baseType: !731, size: 64, offset: 704)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2009, file: !1669, line: 563, baseType: !731, size: 64, offset: 768)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2009, file: !1669, line: 564, baseType: !731, size: 64, offset: 832)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2009, file: !1669, line: 565, baseType: !617, size: 64, offset: 896)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2009, file: !1669, line: 566, baseType: !731, size: 64, offset: 960)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2009, file: !1669, line: 568, baseType: !731, size: 64, offset: 1024)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2009, file: !1669, line: 571, baseType: !109, size: 32, offset: 1088)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2009, file: !1669, line: 572, baseType: !2030, size: 64, offset: 1152)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2009, file: !1669, line: 574, baseType: !2032, size: 64, offset: 1216)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1669, line: 49, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2009, file: !1669, line: 576, baseType: !2032, size: 64, offset: 1280)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2009, file: !1669, line: 578, baseType: !260, size: 64, offset: 1344)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2009, file: !1669, line: 588, baseType: !2037, size: 512, align: 512, offset: 1536)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1669, line: 497, size: 512, align: 512, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2037, file: !1669, line: 498, baseType: !731, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2037, file: !1669, line: 499, baseType: !731, size: 64, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2037, file: !1669, line: 500, baseType: !731, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2037, file: !1669, line: 501, baseType: !245, size: 32, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2037, file: !1669, line: 502, baseType: !245, size: 32, offset: 224)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2037, file: !1669, line: 503, baseType: !260, size: 64, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2037, file: !1669, line: 504, baseType: !260, size: 64, offset: 320)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2037, file: !1669, line: 505, baseType: !260, size: 64, offset: 384)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2037, file: !1669, line: 506, baseType: !2048, size: 64, align: 64, offset: 448)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1669, line: 445, size: 64, align: 64, elements: !2049)
!2049 = !{!2050, !2051}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2048, file: !1669, line: 446, baseType: !7, size: 32)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2048, file: !1669, line: 447, baseType: !7, size: 32, offset: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1970, file: !1669, line: 798, baseType: !2053, size: 384, offset: 3072)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1669, line: 592, size: 384, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058, !2059, !2060, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2053, file: !1669, line: 593, baseType: !201, size: 128)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2053, file: !1669, line: 594, baseType: !260, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2053, file: !1669, line: 595, baseType: !260, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2053, file: !1669, line: 596, baseType: !7, size: 32, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2053, file: !1669, line: 597, baseType: !225, size: 16, offset: 288)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2053, file: !1669, line: 598, baseType: !225, size: 16, offset: 304)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2053, file: !1669, line: 600, baseType: !2062, size: 64, offset: 320)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1970, file: !1669, line: 799, baseType: !2064, size: 1792, offset: 3456)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1669, line: 610, size: 1792, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2152, !2153}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2064, file: !1669, line: 611, baseType: !540, size: 192, align: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2064, file: !1669, line: 618, baseType: !731, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2064, file: !1669, line: 619, baseType: !731, size: 64, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2064, file: !1669, line: 620, baseType: !731, size: 64, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2064, file: !1669, line: 621, baseType: !731, size: 64, offset: 384)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2064, file: !1669, line: 622, baseType: !731, size: 64, offset: 448)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2064, file: !1669, line: 629, baseType: !617, size: 64, offset: 512)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2064, file: !1669, line: 630, baseType: !731, size: 64, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !1669, line: 631, baseType: !7, size: 32, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2064, file: !1669, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2064, file: !1669, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2064, file: !1669, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2064, file: !1669, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2064, file: !1669, line: 662, baseType: !2080, size: 512, offset: 704)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !2081)
!2081 = !{!2082, !2090, !2091, !2096, !2148, !2149, !2150, !2151}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2080, file: !25, line: 119, baseType: !2083, size: 256)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2084, line: 9, size: 256, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2083, file: !2084, line: 10, baseType: !540, size: 192, align: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2083, file: !2084, line: 11, baseType: !2088, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2089, line: 29, baseType: !617)
!2089 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2080, file: !25, line: 120, baseType: !2088, size: 64, offset: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2080, file: !25, line: 121, baseType: !2092, size: 64, offset: 320)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!24, !2095}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2080, file: !25, line: 122, baseType: !2097, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !2099)
!2099 = !{!2100, !2125, !2126, !2129, !2134, !2135, !2143, !2147}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2098, file: !25, line: 160, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !2103)
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2102, file: !25, line: 216, baseType: !626, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2102, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2102, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2102, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2102, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2102, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2102, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2102, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2102, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2102, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2102, file: !25, line: 227, baseType: !225, size: 16, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2102, file: !25, line: 228, baseType: !225, size: 16, offset: 208)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2102, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2102, file: !25, line: 235, baseType: !2088, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2102, file: !25, line: 236, baseType: !2095, size: 64, offset: 320)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2102, file: !25, line: 237, baseType: !2088, size: 64, offset: 384)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2102, file: !25, line: 238, baseType: !2095, size: 64, offset: 448)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2102, file: !25, line: 239, baseType: !2122, size: 4096, align: 512, offset: 512)
!2122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2098, size: 4096, align: 512, elements: !2123)
!2123 = !{!2124}
!2124 = !DISubrange(count: 8)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2098, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2098, file: !25, line: 162, baseType: !2127, size: 32, offset: 96)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !202, line: 32, baseType: !2128)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !456, line: 96, baseType: !109)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2098, file: !25, line: 163, baseType: !2130, size: 32, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !941, line: 274, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !941, line: 274, size: 32, elements: !2132)
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2131, file: !941, line: 274, baseType: !945, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2098, file: !25, line: 164, baseType: !2095, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2098, file: !25, line: 165, baseType: !2136, size: 128, offset: 256)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2084, line: 14, size: 128, elements: !2137)
!2137 = !{!2138}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2136, file: !2084, line: 15, baseType: !2139, size: 128)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !541, line: 26, size: 128, elements: !2140)
!2140 = !{!2141, !2142}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2139, file: !541, line: 27, baseType: !557, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2139, file: !541, line: 28, baseType: !545, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2098, file: !25, line: 166, baseType: !2144, size: 64, offset: 384)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!2088}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2098, file: !25, line: 167, baseType: !2088, size: 64, offset: 448)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2080, file: !25, line: 123, baseType: !231, size: 8, offset: 448)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2080, file: !25, line: 124, baseType: !231, size: 8, offset: 456)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2080, file: !25, line: 125, baseType: !231, size: 8, offset: 464)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2080, file: !25, line: 126, baseType: !231, size: 8, offset: 472)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2064, file: !1669, line: 671, baseType: !2080, size: 512, offset: 1216)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2064, file: !1669, line: 679, baseType: !2154, size: 64, offset: 1728)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1970, file: !1669, line: 800, baseType: !2156, size: 64, offset: 5248)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1669, line: 800, flags: DIFlagFwdDecl)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1970, file: !1669, line: 809, baseType: !2160, size: 64, offset: 5312)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1669, line: 70, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1970, file: !1669, line: 825, baseType: !2163, size: 2048, align: 512, offset: 5632)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1669, line: 509, size: 2048, align: 512, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2163, file: !1669, line: 511, baseType: !731, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2163, file: !1669, line: 512, baseType: !731, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2163, file: !1669, line: 513, baseType: !731, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2163, file: !1669, line: 514, baseType: !731, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2163, file: !1669, line: 515, baseType: !731, size: 64, offset: 256)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2163, file: !1669, line: 516, baseType: !731, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2163, file: !1669, line: 518, baseType: !731, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2163, file: !1669, line: 519, baseType: !731, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2163, file: !1669, line: 520, baseType: !617, size: 64, offset: 512)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2163, file: !1669, line: 522, baseType: !731, size: 64, offset: 576)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2163, file: !1669, line: 523, baseType: !731, size: 64, offset: 640)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2163, file: !1669, line: 524, baseType: !617, size: 64, offset: 704)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2163, file: !1669, line: 526, baseType: !617, size: 64, offset: 768)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2163, file: !1669, line: 527, baseType: !731, size: 64, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2163, file: !1669, line: 529, baseType: !731, size: 64, offset: 896)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2163, file: !1669, line: 530, baseType: !731, size: 64, offset: 960)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2163, file: !1669, line: 531, baseType: !731, size: 64, offset: 1024)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2163, file: !1669, line: 532, baseType: !731, size: 64, offset: 1088)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2163, file: !1669, line: 533, baseType: !731, size: 64, offset: 1152)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2163, file: !1669, line: 535, baseType: !731, size: 64, offset: 1216)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2163, file: !1669, line: 536, baseType: !731, size: 64, offset: 1280)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2163, file: !1669, line: 537, baseType: !731, size: 64, offset: 1344)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2163, file: !1669, line: 538, baseType: !731, size: 64, offset: 1408)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2163, file: !1669, line: 539, baseType: !731, size: 64, offset: 1472)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2163, file: !1669, line: 540, baseType: !731, size: 64, offset: 1536)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2163, file: !1669, line: 541, baseType: !731, size: 64, offset: 1600)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2163, file: !1669, line: 542, baseType: !731, size: 64, offset: 1664)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2163, file: !1669, line: 543, baseType: !731, size: 64, offset: 1728)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1970, file: !1669, line: 833, baseType: !7, size: 32, offset: 7680)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1970, file: !1669, line: 836, baseType: !7, size: 32, offset: 7712)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1970, file: !1669, line: 837, baseType: !109, size: 32, offset: 7744)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1970, file: !1669, line: 838, baseType: !2197, size: 64, offset: 7808)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2199)
!2199 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2200, line: 19, baseType: !2201)
!2200 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2200, line: 19, size: 64, elements: !2202)
!2202 = !{!2203}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2201, file: !2200, line: 19, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !2205)
!2205 = !{!2206}
!2206 = !DISubrange(count: 1)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1970, file: !1669, line: 839, baseType: !2208, size: 64, offset: 7872)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1970, file: !1669, line: 840, baseType: !2199, size: 64, offset: 7936)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1970, file: !1669, line: 841, baseType: !192, size: 64, offset: 8000)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1970, file: !1669, line: 843, baseType: !225, size: 16, offset: 8064)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1970, file: !1669, line: 845, baseType: !225, size: 16, offset: 8080)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1970, file: !1669, line: 848, baseType: !109, size: 32, offset: 8096)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1970, file: !1669, line: 849, baseType: !2215, size: 32, offset: 8128)
!2215 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1669, line: 718, size: 32, elements: !2216)
!2216 = !{!2217, !2224}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2215, file: !1669, line: 724, baseType: !2218, size: 32)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2215, file: !1669, line: 719, size: 32, elements: !2219)
!2219 = !{!2220, !2221, !2222, !2223}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2218, file: !1669, line: 720, baseType: !231, size: 8)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2218, file: !1669, line: 721, baseType: !231, size: 8, offset: 8)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2218, file: !1669, line: 722, baseType: !231, size: 8, offset: 16)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2218, file: !1669, line: 723, baseType: !231, size: 8, offset: 24)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2215, file: !1669, line: 725, baseType: !245, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1970, file: !1669, line: 850, baseType: !201, size: 128, offset: 8192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1970, file: !1669, line: 851, baseType: !2227, size: 64, offset: 8320)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1669, line: 60, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1970, file: !1669, line: 855, baseType: !260, size: 64, offset: 8384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1970, file: !1669, line: 856, baseType: !231, size: 8, offset: 8448)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1970, file: !1669, line: 857, baseType: !231, size: 8, offset: 8456)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1970, file: !1669, line: 858, baseType: !109, size: 32, offset: 8480)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1970, file: !1669, line: 859, baseType: !201, size: 128, offset: 8512)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1970, file: !1669, line: 860, baseType: !109, size: 32, offset: 8640)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1970, file: !1669, line: 861, baseType: !201, size: 128, offset: 8704)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1970, file: !1669, line: 873, baseType: !2237, size: 256, offset: 8832)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1669, line: 376, size: 256, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2242}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2237, file: !1669, line: 381, baseType: !260, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2237, file: !1669, line: 384, baseType: !733, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2237, file: !1669, line: 389, baseType: !733, size: 64, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2237, file: !1669, line: 392, baseType: !733, size: 64, offset: 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1970, file: !1669, line: 875, baseType: !201, size: 128, offset: 9088)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1970, file: !1669, line: 877, baseType: !2245, size: 320, offset: 9216)
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2246, line: 86, size: 320, elements: !2247)
!2246 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2247 = !{!2248, !2249, !2250}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2245, file: !2246, line: 87, baseType: !109, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2245, file: !2246, line: 88, baseType: !201, size: 128, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2245, file: !2246, line: 89, baseType: !201, size: 128, offset: 192)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1970, file: !1669, line: 878, baseType: !540, size: 192, align: 64, offset: 9536)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1970, file: !1669, line: 881, baseType: !2253, size: 64, offset: 9728)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !2255)
!2255 = !{!2256, !2403}
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !2254, file: !38, line: 734, baseType: !2257, size: 10240)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2254, file: !38, line: 734, size: 10240, elements: !2258)
!2258 = !{!2259, !2263, !2276, !2280, !2281, !2282, !2283, !2284, !2285, !2294, !2295, !2296, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2335, !2337, !2340, !2383, !2384, !2385, !2388, !2389, !2390, !2393, !2394, !2395, !2401, !2402}
!2259 = !DIDerivedType(tag: DW_TAG_member, scope: !2257, file: !38, line: 739, baseType: !2260, size: 512, align: 512)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2257, file: !38, line: 739, size: 512, align: 512, elements: !2261)
!2261 = !{!2262}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !2260, file: !38, line: 747, baseType: !381, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2257, file: !38, line: 750, baseType: !2264, size: 128, offset: 512)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !2265, line: 218, size: 128, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!2266 = !{!2267, !2274, !2275}
!2267 = !DIDerivedType(tag: DW_TAG_member, scope: !2264, file: !2265, line: 219, baseType: !2268, size: 32)
!2268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2264, file: !2265, line: 219, size: 32, elements: !2269)
!2269 = !{!2270, !2271}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !2268, file: !2265, line: 220, baseType: !361, size: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !2268, file: !2265, line: 221, baseType: !2272)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !2265, line: 197, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2265, line: 197, elements: !1518)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !2264, file: !2265, line: 223, baseType: !7, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !2264, file: !2265, line: 224, baseType: !192, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2257, file: !38, line: 752, baseType: !2277, size: 64, offset: 640)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!260, !585, !260, !260, !260, !260}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2257, file: !38, line: 756, baseType: !260, size: 64, offset: 704)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2257, file: !38, line: 757, baseType: !260, size: 64, offset: 768)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2257, file: !38, line: 760, baseType: !260, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2257, file: !38, line: 761, baseType: !260, size: 64, offset: 896)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2257, file: !38, line: 763, baseType: !260, size: 64, offset: 960)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2257, file: !38, line: 764, baseType: !2286, size: 64, offset: 1024)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2288, line: 299, baseType: !2289)
!2288 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2288, line: 299, size: 64, elements: !2290)
!2290 = !{!2291}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2289, file: !2288, line: 299, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2293, line: 18, baseType: !260)
!2293 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2257, file: !38, line: 773, baseType: !381, size: 32, offset: 1088)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2257, file: !38, line: 785, baseType: !381, size: 32, offset: 1120)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2257, file: !38, line: 795, baseType: !2297, size: 64, offset: 1152)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2299)
!2299 = !{!2300, !2301}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2298, file: !38, line: 727, baseType: !731, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2298, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2257, file: !38, line: 801, baseType: !260, size: 64, offset: 1216)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2257, file: !38, line: 804, baseType: !611, size: 64, offset: 1280)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2257, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2257, file: !38, line: 808, baseType: !361, size: 32, offset: 1376)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2257, file: !38, line: 823, baseType: !756, size: 320, offset: 1408)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2257, file: !38, line: 825, baseType: !201, size: 128, offset: 1728)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2257, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2257, file: !38, line: 849, baseType: !260, size: 64, offset: 1920)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2257, file: !38, line: 850, baseType: !260, size: 64, offset: 1984)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2257, file: !38, line: 852, baseType: !260, size: 64, offset: 2048)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2257, file: !38, line: 853, baseType: !260, size: 64, offset: 2112)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2257, file: !38, line: 854, baseType: !613, size: 64, offset: 2176)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2257, file: !38, line: 855, baseType: !260, size: 64, offset: 2240)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2257, file: !38, line: 856, baseType: !260, size: 64, offset: 2304)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2257, file: !38, line: 857, baseType: !260, size: 64, offset: 2368)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2257, file: !38, line: 858, baseType: !260, size: 64, offset: 2432)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2257, file: !38, line: 865, baseType: !945, size: 32, offset: 2496)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2257, file: !38, line: 867, baseType: !361, size: 32, offset: 2528)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2257, file: !38, line: 869, baseType: !260, size: 64, offset: 2560)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2257, file: !38, line: 869, baseType: !260, size: 64, offset: 2624)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2257, file: !38, line: 869, baseType: !260, size: 64, offset: 2688)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2257, file: !38, line: 869, baseType: !260, size: 64, offset: 2752)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2257, file: !38, line: 870, baseType: !260, size: 64, offset: 2816)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2257, file: !38, line: 870, baseType: !260, size: 64, offset: 2880)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2257, file: !38, line: 870, baseType: !260, size: 64, offset: 2944)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2257, file: !38, line: 871, baseType: !260, size: 64, offset: 3008)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2257, file: !38, line: 871, baseType: !260, size: 64, offset: 3072)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2257, file: !38, line: 871, baseType: !260, size: 64, offset: 3136)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2257, file: !38, line: 871, baseType: !260, size: 64, offset: 3200)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2257, file: !38, line: 873, baseType: !2332, size: 3328, offset: 3264)
!2332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 3328, elements: !2333)
!2333 = !{!2334}
!2334 = !DISubrange(count: 52)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2257, file: !38, line: 875, baseType: !2336, size: 1280, offset: 6592)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 1280, elements: !684)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2257, file: !38, line: 877, baseType: !2338, size: 64, offset: 7872)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2257, file: !38, line: 880, baseType: !2341, size: 1088, offset: 7936)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2342, line: 72, baseType: !2343)
!2342 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2342, line: 23, size: 1088, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2352, !2353, !2354, !2355, !2380, !2381, !2382}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2343, file: !2342, line: 28, baseType: !731, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2343, file: !2342, line: 38, baseType: !613, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2343, file: !2342, line: 40, baseType: !260, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2343, file: !2342, line: 43, baseType: !756, size: 320, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2343, file: !2342, line: 44, baseType: !2350, size: 64, offset: 512)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2342, line: 44, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2343, file: !2342, line: 48, baseType: !260, size: 64, offset: 576)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2343, file: !2342, line: 59, baseType: !621, size: 256, offset: 640)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2343, file: !2342, line: 60, baseType: !192, size: 64, offset: 896)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2343, file: !2342, line: 61, baseType: !2356, size: 64, offset: 960)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2358)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2359, line: 13, size: 1216, elements: !2360)
!2359 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2358, file: !2359, line: 14, baseType: !192, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2358, file: !2359, line: 15, baseType: !260, size: 64, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2358, file: !2359, line: 17, baseType: !260, size: 64, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2358, file: !2359, line: 17, baseType: !260, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2358, file: !2359, line: 18, baseType: !260, size: 64, offset: 256)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2358, file: !2359, line: 18, baseType: !260, size: 64, offset: 320)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2358, file: !2359, line: 19, baseType: !495, size: 64, offset: 384)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2358, file: !2359, line: 21, baseType: !458, size: 64, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2358, file: !2359, line: 23, baseType: !458, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2358, file: !2359, line: 24, baseType: !458, size: 64, offset: 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2358, file: !2359, line: 25, baseType: !458, size: 64, offset: 640)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2358, file: !2359, line: 26, baseType: !458, size: 64, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2358, file: !2359, line: 27, baseType: !458, size: 64, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2358, file: !2359, line: 28, baseType: !458, size: 64, offset: 832)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2358, file: !2359, line: 29, baseType: !458, size: 64, offset: 896)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2358, file: !2359, line: 30, baseType: !458, size: 64, offset: 960)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2358, file: !2359, line: 31, baseType: !458, size: 64, offset: 1024)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2358, file: !2359, line: 32, baseType: !458, size: 64, offset: 1088)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2358, file: !2359, line: 33, baseType: !458, size: 64, offset: 1152)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2343, file: !2342, line: 63, baseType: !381, size: 32, offset: 1024)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2343, file: !2342, line: 69, baseType: !256, size: 16, offset: 1056)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2343, file: !2342, line: 70, baseType: !1382, size: 16, offset: 1072)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !38, line: 882, baseType: !260, size: 64, offset: 9024)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2257, file: !38, line: 885, baseType: !361, size: 32, offset: 9088)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2257, file: !38, line: 886, baseType: !2386, size: 64, offset: 9152)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2257, file: !38, line: 901, baseType: !896, size: 64, offset: 9216)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2257, file: !38, line: 904, baseType: !585, size: 64, offset: 9280)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2257, file: !38, line: 906, baseType: !2391, size: 64, offset: 9344)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2257, file: !38, line: 930, baseType: !381, size: 32, offset: 9408)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2257, file: !38, line: 933, baseType: !381, size: 32, offset: 9440)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2257, file: !38, line: 935, baseType: !2396, size: 64, offset: 9472)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2397)
!2397 = !{!2398}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2396, file: !68, line: 104, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2257, file: !38, line: 940, baseType: !611, size: 64, offset: 9536)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2257, file: !38, line: 942, baseType: !1489, size: 256, offset: 9600)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2254, file: !38, line: 986, baseType: !2404, offset: 10240)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, elements: !703)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1970, file: !1669, line: 882, baseType: !2253, size: 64, offset: 9792)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1970, file: !1669, line: 884, baseType: !109, size: 32, offset: 9856)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1970, file: !1669, line: 885, baseType: !109, size: 32, offset: 9888)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1970, file: !1669, line: 886, baseType: !109, size: 32, offset: 9920)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1970, file: !1669, line: 888, baseType: !109, size: 32, offset: 9952)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1970, file: !1669, line: 890, baseType: !260, size: 64, offset: 9984)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1970, file: !1669, line: 893, baseType: !7, size: 32, offset: 10048)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1970, file: !1669, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1970, file: !1669, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1970, file: !1669, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1970, file: !1669, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1970, file: !1669, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1970, file: !1669, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1970, file: !1669, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1970, file: !1669, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1970, file: !1669, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1970, file: !1669, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1970, file: !1669, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1970, file: !1669, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1970, file: !1669, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1970, file: !1669, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1970, file: !1669, line: 969, baseType: !260, size: 64, offset: 10176)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1970, file: !1669, line: 971, baseType: !2428, size: 448, offset: 10240)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2429)
!2429 = !{!2430, !2431, !2436}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2428, file: !62, line: 26, baseType: !260, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2428, file: !62, line: 27, baseType: !2432, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!458, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, scope: !2428, file: !62, line: 28, baseType: !2437, size: 320, offset: 128)
!2437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2428, file: !62, line: 28, size: 320, elements: !2438)
!2438 = !{!2439, !2449, !2474}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2437, file: !62, line: 37, baseType: !2440, size: 320)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !62, line: 30, size: 320, elements: !2441)
!2441 = !{!2442, !2444, !2445, !2446, !2447, !2448}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2440, file: !62, line: 31, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2440, file: !62, line: 32, baseType: !245, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2440, file: !62, line: 33, baseType: !245, size: 32, offset: 96)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2440, file: !62, line: 34, baseType: !245, size: 32, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2440, file: !62, line: 35, baseType: !731, size: 64, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2440, file: !62, line: 36, baseType: !2443, size: 64, offset: 256)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2437, file: !62, line: 47, baseType: !2450, size: 192)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !62, line: 39, size: 192, elements: !2451)
!2451 = !{!2452, !2453, !2454, !2473}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2450, file: !62, line: 40, baseType: !2127, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2450, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, scope: !2450, file: !62, line: 42, baseType: !2455, size: 64, offset: 64)
!2455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2450, file: !62, line: 42, size: 64, elements: !2456)
!2456 = !{!2457, !2465}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2455, file: !62, line: 43, baseType: !2458, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2460, line: 7, size: 128, elements: !2461)
!2460 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2461 = !{!2462, !2464}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2459, file: !2460, line: 8, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !456, line: 93, baseType: !619)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2459, file: !2460, line: 9, baseType: !619, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2455, file: !62, line: 44, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2468, line: 7, size: 64, elements: !2469)
!2468 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2469 = !{!2470, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2467, file: !2468, line: 8, baseType: !2471, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2468, line: 5, baseType: !748)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2467, file: !2468, line: 9, baseType: !748, size: 32, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2450, file: !62, line: 46, baseType: !731, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2437, file: !62, line: 55, baseType: !2475, size: 256)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !62, line: 49, size: 256, elements: !2476)
!2476 = !{!2477, !2480, !2481, !2482, !2483}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2475, file: !62, line: 50, baseType: !2478, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2475, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2475, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2475, file: !62, line: 53, baseType: !260, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2475, file: !62, line: 54, baseType: !260, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1970, file: !1669, line: 973, baseType: !2485, size: 32, offset: 10688)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !202, line: 27, baseType: !2486)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !456, line: 28, baseType: !109)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1970, file: !1669, line: 974, baseType: !2485, size: 32, offset: 10720)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1970, file: !1669, line: 978, baseType: !260, size: 64, offset: 10752)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1970, file: !1669, line: 987, baseType: !1969, size: 64, offset: 10816)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1970, file: !1669, line: 990, baseType: !1969, size: 64, offset: 10880)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1970, file: !1669, line: 995, baseType: !201, size: 128, offset: 10944)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1970, file: !1669, line: 996, baseType: !201, size: 128, offset: 11072)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1970, file: !1669, line: 997, baseType: !1969, size: 64, offset: 11200)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1970, file: !1669, line: 1005, baseType: !201, size: 128, offset: 11264)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1970, file: !1669, line: 1006, baseType: !201, size: 128, offset: 11392)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1970, file: !1669, line: 1009, baseType: !662, size: 64, offset: 11520)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1970, file: !1669, line: 1010, baseType: !2498, size: 512, offset: 11584)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 512, elements: !684)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1970, file: !1669, line: 1011, baseType: !201, size: 128, offset: 12096)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1970, file: !1669, line: 1012, baseType: !201, size: 128, offset: 12224)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1970, file: !1669, line: 1014, baseType: !1228, size: 64, offset: 12352)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1970, file: !1669, line: 1017, baseType: !1375, size: 64, offset: 12416)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1970, file: !1669, line: 1020, baseType: !1375, size: 64, offset: 12480)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1970, file: !1669, line: 1023, baseType: !192, size: 64, offset: 12544)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1970, file: !1669, line: 1025, baseType: !731, size: 64, offset: 12608)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1970, file: !1669, line: 1026, baseType: !731, size: 64, offset: 12672)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1970, file: !1669, line: 1031, baseType: !731, size: 64, offset: 12736)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1970, file: !1669, line: 1032, baseType: !2509, size: 192, offset: 12800)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1669, line: 324, size: 192, elements: !2510)
!2510 = !{!2511, !2512, !2513}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2509, file: !1669, line: 326, baseType: !731, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2509, file: !1669, line: 327, baseType: !731, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2509, file: !1669, line: 328, baseType: !626, size: 32, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1970, file: !1669, line: 1041, baseType: !260, size: 64, offset: 12992)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1970, file: !1669, line: 1042, baseType: !260, size: 64, offset: 13056)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1970, file: !1669, line: 1045, baseType: !731, size: 64, offset: 13120)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1970, file: !1669, line: 1048, baseType: !731, size: 64, offset: 13184)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1970, file: !1669, line: 1051, baseType: !260, size: 64, offset: 13248)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1970, file: !1669, line: 1052, baseType: !260, size: 64, offset: 13312)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1970, file: !1669, line: 1055, baseType: !2521, size: 640, offset: 13376)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2522, line: 132, size: 640, elements: !2523)
!2522 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2523 = !{!2524, !2530, !2531}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2521, file: !2522, line: 133, baseType: !2525, size: 576)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2526, size: 576, elements: !424)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2522, line: 117, size: 192, elements: !2527)
!2527 = !{!2528, !2529}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2526, file: !2522, line: 118, baseType: !731, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2526, file: !2522, line: 119, baseType: !2136, size: 128, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2521, file: !2522, line: 134, baseType: !7, size: 32, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2521, file: !2522, line: 135, baseType: !7, size: 32, offset: 608)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1970, file: !1669, line: 1058, baseType: !2533, size: 448, offset: 14016)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2522, line: 144, size: 448, elements: !2534)
!2534 = !{!2535, !2536, !2537}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2533, file: !2522, line: 145, baseType: !598, size: 128, align: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2533, file: !2522, line: 146, baseType: !621, size: 256, offset: 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2533, file: !2522, line: 147, baseType: !7, size: 32, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1970, file: !1669, line: 1064, baseType: !710, size: 64, offset: 14464)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1970, file: !1669, line: 1067, baseType: !710, size: 64, offset: 14528)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1970, file: !1669, line: 1070, baseType: !710, size: 64, offset: 14592)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1970, file: !1669, line: 1074, baseType: !740, size: 64, offset: 14656)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1970, file: !1669, line: 1084, baseType: !2543, size: 128, offset: 14720)
!2543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 128, elements: !2544)
!2544 = !{!2545}
!2545 = !DISubrange(count: 16)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1970, file: !1669, line: 1086, baseType: !2547, size: 64, offset: 14848)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1669, line: 55, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1970, file: !1669, line: 1089, baseType: !2550, size: 64, offset: 14912)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2551, line: 12, size: 64, elements: !2552)
!2551 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2552 = !{!2553}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2550, file: !2551, line: 13, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2551, line: 8, flags: DIFlagFwdDecl)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1970, file: !1669, line: 1090, baseType: !2557, size: 128, offset: 14976)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2558, line: 13, size: 128, elements: !2559)
!2558 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2559 = !{!2560}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2557, file: !2558, line: 14, baseType: !201, size: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1970, file: !1669, line: 1097, baseType: !2562, size: 64, offset: 15104)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1669, line: 50, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1970, file: !1669, line: 1100, baseType: !2565, size: 64, offset: 15168)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1669, line: 1100, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1970, file: !1669, line: 1103, baseType: !2568, size: 64, offset: 15232)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1669, line: 53, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1970, file: !1669, line: 1107, baseType: !2571, size: 64, offset: 15296)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1669, line: 56, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1970, file: !1669, line: 1110, baseType: !2574, size: 64, offset: 15360)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2576, line: 93, size: 8768, elements: !2577)
!2576 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2577 = !{!2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2625, !2634, !2635, !2637, !2638, !2639, !2642, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2680, !2681, !2688, !2698, !2701, !2702, !2705, !2706, !2707, !2708, !2709, !2710}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2575, file: !2576, line: 94, baseType: !666, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2575, file: !2576, line: 95, baseType: !381, size: 32, offset: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2575, file: !2576, line: 96, baseType: !109, size: 32, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2575, file: !2576, line: 97, baseType: !109, size: 32, offset: 96)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2575, file: !2576, line: 98, baseType: !201, size: 128, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2575, file: !2576, line: 100, baseType: !688, size: 192, offset: 256)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2575, file: !2576, line: 103, baseType: !1969, size: 64, offset: 448)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2575, file: !2576, line: 106, baseType: !2586, size: 192, offset: 512)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !901, line: 32, size: 192, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2586, file: !901, line: 33, baseType: !201, size: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2586, file: !901, line: 34, baseType: !2590, size: 64, offset: 128)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2591, line: 25, baseType: !2592)
!2591 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2591, line: 23, size: 64, elements: !2593)
!2593 = !{!2594}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2592, file: !2591, line: 24, baseType: !2204, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2575, file: !2576, line: 109, baseType: !675, size: 64, offset: 704)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2575, file: !2576, line: 112, baseType: !109, size: 32, offset: 768)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2575, file: !2576, line: 114, baseType: !109, size: 32, offset: 800)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2575, file: !2576, line: 115, baseType: !1969, size: 64, offset: 832)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2575, file: !2576, line: 118, baseType: !109, size: 32, offset: 896)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !2576, line: 119, baseType: !7, size: 32, offset: 928)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2575, file: !2576, line: 121, baseType: !2602, size: 64, offset: 960)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2576, line: 80, size: 448, elements: !2604)
!2604 = !{!2605, !2606, !2612}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2603, file: !2576, line: 81, baseType: !381, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2603, file: !2576, line: 82, baseType: !2607, size: 128, offset: 64)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2576, line: 75, size: 128, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2607, file: !2576, line: 76, baseType: !1969, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2607, file: !2576, line: 77, baseType: !2611, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2603, file: !2576, line: 83, baseType: !1229, size: 256, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2575, file: !2576, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2575, file: !2576, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2575, file: !2576, line: 138, baseType: !7, size: 32, offset: 1056)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2575, file: !2576, line: 139, baseType: !201, size: 128, offset: 1088)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2575, file: !2576, line: 142, baseType: !2080, size: 512, offset: 1216)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2575, file: !2576, line: 143, baseType: !2088, size: 64, offset: 1728)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2575, file: !2576, line: 150, baseType: !2620, size: 256, offset: 1792)
!2620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2621, size: 256, elements: !1365)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2576, line: 38, size: 128, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2621, file: !2576, line: 39, baseType: !731, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2621, file: !2576, line: 40, baseType: !731, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2575, file: !2576, line: 156, baseType: !2626, size: 192, offset: 2048)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2576, line: 66, size: 192, elements: !2627)
!2627 = !{!2628}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2626, file: !2576, line: 67, baseType: !2629, size: 192)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2576, line: 47, size: 192, elements: !2630)
!2630 = !{!2631, !2632, !2633}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2629, file: !2576, line: 48, baseType: !613, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2629, file: !2576, line: 49, baseType: !613, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2629, file: !2576, line: 50, baseType: !613, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2575, file: !2576, line: 160, baseType: !2521, size: 640, offset: 2240)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2575, file: !2576, line: 163, baseType: !2636, size: 256, offset: 2880)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 256, elements: !684)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2575, file: !2576, line: 169, baseType: !662, size: 64, offset: 3136)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2575, file: !2576, line: 172, baseType: !109, size: 32, offset: 3200)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2575, file: !2576, line: 174, baseType: !2640, size: 64, offset: 3264)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2576, line: 174, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2575, file: !2576, line: 185, baseType: !2643, size: 64, offset: 3328)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !941, line: 860, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !941, line: 853, size: 64, elements: !2645)
!2645 = !{!2646, !2647}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2644, file: !941, line: 858, baseType: !940, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2644, file: !941, line: 859, baseType: !361, size: 32, offset: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2575, file: !2576, line: 186, baseType: !731, size: 64, offset: 3392)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2575, file: !2576, line: 186, baseType: !731, size: 64, offset: 3456)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2575, file: !2576, line: 186, baseType: !731, size: 64, offset: 3520)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2575, file: !2576, line: 186, baseType: !731, size: 64, offset: 3584)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2575, file: !2576, line: 187, baseType: !731, size: 64, offset: 3648)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2575, file: !2576, line: 188, baseType: !731, size: 64, offset: 3712)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2575, file: !2576, line: 189, baseType: !2509, size: 192, offset: 3776)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2575, file: !2576, line: 190, baseType: !260, size: 64, offset: 3968)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2575, file: !2576, line: 190, baseType: !260, size: 64, offset: 4032)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2575, file: !2576, line: 190, baseType: !260, size: 64, offset: 4096)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2575, file: !2576, line: 190, baseType: !260, size: 64, offset: 4160)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2575, file: !2576, line: 191, baseType: !260, size: 64, offset: 4224)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2575, file: !2576, line: 191, baseType: !260, size: 64, offset: 4288)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2575, file: !2576, line: 191, baseType: !260, size: 64, offset: 4352)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2575, file: !2576, line: 191, baseType: !260, size: 64, offset: 4416)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2575, file: !2576, line: 192, baseType: !260, size: 64, offset: 4480)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2575, file: !2576, line: 192, baseType: !260, size: 64, offset: 4544)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2575, file: !2576, line: 192, baseType: !260, size: 64, offset: 4608)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2575, file: !2576, line: 192, baseType: !260, size: 64, offset: 4672)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2575, file: !2576, line: 193, baseType: !260, size: 64, offset: 4736)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2575, file: !2576, line: 193, baseType: !260, size: 64, offset: 4800)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2575, file: !2576, line: 194, baseType: !2670, size: 448, offset: 4864)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2671, line: 12, size: 448, elements: !2672)
!2671 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2670, file: !2671, line: 15, baseType: !731, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2670, file: !2671, line: 17, baseType: !731, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2670, file: !2671, line: 19, baseType: !731, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2670, file: !2671, line: 21, baseType: !731, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2670, file: !2671, line: 29, baseType: !731, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2670, file: !2671, line: 35, baseType: !731, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2670, file: !2671, line: 44, baseType: !731, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2575, file: !2576, line: 202, baseType: !733, size: 64, offset: 5312)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2575, file: !2576, line: 213, baseType: !2682, size: 2048, offset: 5376)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2683, size: 2048, elements: !2544)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2684, line: 43, size: 128, elements: !2685)
!2684 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2683, file: !2684, line: 44, baseType: !470, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2683, file: !2684, line: 45, baseType: !470, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2575, file: !2576, line: 216, baseType: !2689, size: 448, offset: 7424)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2576, line: 30, size: 448, elements: !2690)
!2690 = !{!2691, !2692, !2693, !2694, !2695, !2696, !2697}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2689, file: !2576, line: 31, baseType: !109, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2689, file: !2576, line: 32, baseType: !458, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2689, file: !2576, line: 33, baseType: !260, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2689, file: !2576, line: 34, baseType: !731, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2689, file: !2576, line: 34, baseType: !731, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2689, file: !2576, line: 35, baseType: !260, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2689, file: !2576, line: 35, baseType: !260, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2575, file: !2576, line: 219, baseType: !2699, size: 64, offset: 7872)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2576, line: 219, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2575, file: !2576, line: 222, baseType: !7, size: 32, offset: 7936)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2575, file: !2576, line: 223, baseType: !2703, size: 64, offset: 8000)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2576, line: 223, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2575, file: !2576, line: 230, baseType: !485, size: 8, offset: 8064)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2575, file: !2576, line: 231, baseType: !784, size: 16, offset: 8080)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2575, file: !2576, line: 232, baseType: !784, size: 16, offset: 8096)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2575, file: !2576, line: 234, baseType: !2253, size: 64, offset: 8128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2575, file: !2576, line: 237, baseType: !621, size: 256, offset: 8192)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2575, file: !2576, line: 243, baseType: !756, size: 320, offset: 8448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1970, file: !1669, line: 1111, baseType: !2712, size: 64, offset: 15424)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2576, line: 20, size: 16640, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2713, file: !2576, line: 21, baseType: !361, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2713, file: !2576, line: 22, baseType: !666, size: 32, offset: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2713, file: !2576, line: 23, baseType: !688, size: 192, offset: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2713, file: !2576, line: 24, baseType: !2719, size: 16384, offset: 256)
!2719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2720, size: 16384, elements: !428)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !901, line: 51, size: 256, elements: !2721)
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2720, file: !901, line: 52, baseType: !2723, size: 256)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !901, line: 37, size: 256, elements: !2724)
!2724 = !{!2725, !2732, !2733, !2737}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2723, file: !901, line: 39, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2727, line: 83, baseType: !2728)
!2727 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2727, line: 82, baseType: !2730)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !109}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2723, file: !901, line: 40, baseType: !260, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2723, file: !901, line: 46, baseType: !2734, size: 64, offset: 128)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2727, line: 86, baseType: !2735)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2727, line: 85, baseType: !1593)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2723, file: !901, line: 48, baseType: !2590, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1970, file: !1669, line: 1112, baseType: !2590, size: 64, offset: 15488)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1970, file: !1669, line: 1113, baseType: !2590, size: 64, offset: 15552)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1970, file: !1669, line: 1115, baseType: !2590, size: 64, offset: 15616)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1970, file: !1669, line: 1116, baseType: !2586, size: 192, offset: 15680)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1970, file: !1669, line: 1117, baseType: !260, size: 64, offset: 15872)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1970, file: !1669, line: 1118, baseType: !468, size: 64, offset: 15936)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1970, file: !1669, line: 1119, baseType: !7, size: 32, offset: 16000)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1970, file: !1669, line: 1121, baseType: !601, size: 64, offset: 16064)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1970, file: !1669, line: 1125, baseType: !2747, size: 64, offset: 16128)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1669, line: 43, flags: DIFlagFwdDecl)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1970, file: !1669, line: 1127, baseType: !516, size: 32, offset: 16192)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1970, file: !1669, line: 1128, baseType: !7, size: 32, offset: 16224)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1970, file: !1669, line: 1130, baseType: !2752, size: 128, offset: 16256)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2753, line: 37, size: 128, elements: !2754)
!2753 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2754 = !{!2755, !2756, !2757}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2752, file: !2753, line: 38, baseType: !109, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2752, file: !2753, line: 39, baseType: !381, size: 32, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2752, file: !2753, line: 40, baseType: !2758, size: 64, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2753, line: 24, flags: DIFlagFwdDecl)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1970, file: !1669, line: 1131, baseType: !2761, size: 256, offset: 16384)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2762, line: 12, size: 256, elements: !2763)
!2762 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2763 = !{!2764, !2765, !2766, !2767}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2761, file: !2762, line: 13, baseType: !423, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2761, file: !2762, line: 14, baseType: !260, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2761, file: !2762, line: 15, baseType: !260, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2761, file: !2762, line: 16, baseType: !485, size: 8, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1970, file: !1669, line: 1134, baseType: !731, size: 64, offset: 16640)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1970, file: !1669, line: 1135, baseType: !731, size: 64, offset: 16704)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1970, file: !1669, line: 1138, baseType: !361, size: 32, offset: 16768)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1970, file: !1669, line: 1141, baseType: !626, size: 32, offset: 16800)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1970, file: !1669, line: 1143, baseType: !2773, size: 64, offset: 16832)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1669, line: 735, size: 64, elements: !2774)
!2774 = !{!2775}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2773, file: !1669, line: 736, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1970, file: !1669, line: 1147, baseType: !2139, size: 128, offset: 16896)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1970, file: !1669, line: 1149, baseType: !1969, size: 64, offset: 17024)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1970, file: !1669, line: 1151, baseType: !2780, size: 64, offset: 17088)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1669, line: 1151, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1970, file: !1669, line: 1188, baseType: !192, size: 64, offset: 17152)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1970, file: !1669, line: 1191, baseType: !2784, size: 64, offset: 17216)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1669, line: 44, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1970, file: !1669, line: 1194, baseType: !2787, size: 64, offset: 17280)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1669, line: 45, flags: DIFlagFwdDecl)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1970, file: !1669, line: 1197, baseType: !2790, size: 64, offset: 17344)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1669, line: 61, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1970, file: !1669, line: 1199, baseType: !2793, size: 64, offset: 17408)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2795, line: 99, size: 128, elements: !2796)
!2795 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2794, file: !2795, line: 100, baseType: !611, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2794, file: !2795, line: 101, baseType: !381, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2794, file: !2795, line: 103, baseType: !225, size: 16, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1970, file: !1669, line: 1202, baseType: !2801, size: 64, offset: 17472)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1669, line: 48, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1970, file: !1669, line: 1205, baseType: !260, size: 64, offset: 17536)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1970, file: !1669, line: 1206, baseType: !2805, size: 64, offset: 17600)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !901, line: 14, baseType: !2807)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !901, line: 12, size: 384, elements: !2808)
!2808 = !{!2809}
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2807, file: !901, line: 13, baseType: !2810, size: 384)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2807, file: !901, line: 13, size: 384, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2810, file: !901, line: 13, baseType: !109, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2810, file: !901, line: 13, baseType: !109, size: 32, offset: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2810, file: !901, line: 13, baseType: !109, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2810, file: !901, line: 13, baseType: !2816, size: 256, offset: 128)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2817, line: 37, size: 256, elements: !2818)
!2817 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2818 = !{!2819, !2824, !2837, !2843, !2852, !2879, !2884}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2816, file: !2817, line: 42, baseType: !2820, size: 64)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 39, size: 64, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2820, file: !2817, line: 40, baseType: !2486, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2820, file: !2817, line: 41, baseType: !522, size: 32, offset: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2816, file: !2817, line: 50, baseType: !2825, size: 192)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 45, size: 192, elements: !2826)
!2826 = !{!2827, !2829, !2830, !2836}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2825, file: !2817, line: 46, baseType: !2828, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !456, line: 95, baseType: !109)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2825, file: !2817, line: 47, baseType: !109, size: 32, offset: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2825, file: !2817, line: 48, baseType: !2831, size: 64, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2817, line: 11, baseType: !2832)
!2832 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2817, line: 8, size: 64, elements: !2833)
!2833 = !{!2834, !2835}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2832, file: !2817, line: 9, baseType: !109, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2832, file: !2817, line: 10, baseType: !192, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2825, file: !2817, line: 49, baseType: !109, size: 32, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2816, file: !2817, line: 57, baseType: !2838, size: 128)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 53, size: 128, elements: !2839)
!2839 = !{!2840, !2841, !2842}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2838, file: !2817, line: 54, baseType: !2486, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2838, file: !2817, line: 55, baseType: !522, size: 32, offset: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2838, file: !2817, line: 56, baseType: !2831, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2816, file: !2817, line: 66, baseType: !2844, size: 256)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 60, size: 256, elements: !2845)
!2845 = !{!2846, !2847, !2848, !2849, !2851}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2844, file: !2817, line: 61, baseType: !2486, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2844, file: !2817, line: 62, baseType: !522, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2844, file: !2817, line: 63, baseType: !109, size: 32, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2844, file: !2817, line: 64, baseType: !2850, size: 64, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !456, line: 94, baseType: !457)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2844, file: !2817, line: 65, baseType: !2850, size: 64, offset: 192)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2816, file: !2817, line: 105, baseType: !2853, size: 256)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 69, size: 256, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2853, file: !2817, line: 70, baseType: !192, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2853, file: !2817, line: 79, baseType: !2857, size: 192, offset: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2853, file: !2817, line: 79, size: 192, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2868, !2873}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2857, file: !2817, line: 81, baseType: !109, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2857, file: !2817, line: 86, baseType: !784, size: 16)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2857, file: !2817, line: 92, baseType: !2862, size: 192)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 88, size: 192, elements: !2863)
!2863 = !{!2864, !2866, !2867}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2862, file: !2817, line: 89, baseType: !2865, size: 64)
!2865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 64, elements: !2123)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2862, file: !2817, line: 90, baseType: !192, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2862, file: !2817, line: 91, baseType: !192, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2857, file: !2817, line: 97, baseType: !2869, size: 96)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 94, size: 96, elements: !2870)
!2870 = !{!2871, !2872}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2869, file: !2817, line: 95, baseType: !2865, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2869, file: !2817, line: 96, baseType: !246, size: 32, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2857, file: !2817, line: 103, baseType: !2874, size: 128)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !2817, line: 99, size: 128, elements: !2875)
!2875 = !{!2876, !2877, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2874, file: !2817, line: 100, baseType: !260, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2874, file: !2817, line: 101, baseType: !246, size: 32, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2874, file: !2817, line: 102, baseType: !246, size: 32, offset: 96)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2816, file: !2817, line: 111, baseType: !2880, size: 128)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 108, size: 128, elements: !2881)
!2881 = !{!2882, !2883}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2880, file: !2817, line: 109, baseType: !458, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2880, file: !2817, line: 110, baseType: !109, size: 32, offset: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2816, file: !2817, line: 118, baseType: !2885, size: 128)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2816, file: !2817, line: 114, size: 128, elements: !2886)
!2886 = !{!2887, !2888, !2889}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2885, file: !2817, line: 115, baseType: !192, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2885, file: !2817, line: 116, baseType: !109, size: 32, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2885, file: !2817, line: 117, baseType: !7, size: 32, offset: 96)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1970, file: !1669, line: 1208, baseType: !2670, size: 448, offset: 17664)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1970, file: !1669, line: 1215, baseType: !731, size: 64, offset: 18112)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1970, file: !1669, line: 1217, baseType: !731, size: 64, offset: 18176)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1970, file: !1669, line: 1219, baseType: !731, size: 64, offset: 18240)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1970, file: !1669, line: 1223, baseType: !2895, size: 64, offset: 18304)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2896, line: 99, baseType: !2897)
!2896 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2896, line: 99, size: 64, elements: !2898)
!2898 = !{!2899}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2897, file: !2896, line: 99, baseType: !2204, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1970, file: !1669, line: 1225, baseType: !940, size: 32, offset: 18368)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1970, file: !1669, line: 1226, baseType: !109, size: 32, offset: 18400)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1970, file: !1669, line: 1227, baseType: !109, size: 32, offset: 18432)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1970, file: !1669, line: 1231, baseType: !2904, size: 64, offset: 18496)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1669, line: 1231, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1970, file: !1669, line: 1233, baseType: !201, size: 128, offset: 18560)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1970, file: !1669, line: 1240, baseType: !2908, size: 64, offset: 18688)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1669, line: 62, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1970, file: !1669, line: 1242, baseType: !2911, size: 64, offset: 18752)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1669, line: 1242, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1970, file: !1669, line: 1244, baseType: !201, size: 128, offset: 18816)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1970, file: !1669, line: 1245, baseType: !2915, size: 64, offset: 18944)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1669, line: 51, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1970, file: !1669, line: 1246, baseType: !621, size: 256, offset: 19008)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1970, file: !1669, line: 1247, baseType: !7, size: 32, offset: 19264)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1970, file: !1669, line: 1250, baseType: !2920, size: 64, offset: 19328)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1669, line: 57, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1970, file: !1669, line: 1251, baseType: !621, size: 256, offset: 19392)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1970, file: !1669, line: 1252, baseType: !201, size: 128, offset: 19648)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1970, file: !1669, line: 1259, baseType: !2925, size: 64, offset: 19776)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1970, file: !1669, line: 1260, baseType: !784, size: 16, offset: 19840)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1970, file: !1669, line: 1261, baseType: !784, size: 16, offset: 19856)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1970, file: !1669, line: 1314, baseType: !2930, size: 64, offset: 19904)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2932, line: 62, size: 256, align: 256, elements: !2933)
!2932 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2933 = !{!2934, !2935, !2936, !2937, !2938, !2939, !2940}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2931, file: !2932, line: 75, baseType: !246, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2931, file: !2932, line: 90, baseType: !246, size: 32, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2931, file: !2932, line: 112, baseType: !732, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2931, file: !2932, line: 132, baseType: !246, size: 32, offset: 128)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2931, file: !2932, line: 140, baseType: !246, size: 32, offset: 160)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2931, file: !2932, line: 149, baseType: !246, size: 32, offset: 192)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2931, file: !2932, line: 154, baseType: !2941, offset: 224)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, elements: !703)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1970, file: !1669, line: 1315, baseType: !245, size: 32, offset: 19968)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1970, file: !1669, line: 1316, baseType: !245, size: 32, offset: 20000)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1970, file: !1669, line: 1321, baseType: !260, size: 64, offset: 20032)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1970, file: !1669, line: 1325, baseType: !109, size: 32, offset: 20096)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1970, file: !1669, line: 1326, baseType: !109, size: 32, offset: 20128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1970, file: !1669, line: 1327, baseType: !109, size: 32, offset: 20160)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1970, file: !1669, line: 1328, baseType: !109, size: 32, offset: 20192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1970, file: !1669, line: 1329, baseType: !598, size: 128, align: 64, offset: 20224)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1970, file: !1669, line: 1332, baseType: !2951, size: 128, offset: 20352)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2952, line: 51, size: 128, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2953 = !{!2954, !2959, !2960}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2951, file: !2952, line: 60, baseType: !2955, size: 64)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2956, line: 7, size: 64, elements: !2957)
!2956 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2957 = !{!2958}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2955, file: !2956, line: 12, baseType: !2201, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2951, file: !2952, line: 63, baseType: !485, size: 8, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2951, file: !2952, line: 70, baseType: !485, size: 8, offset: 72)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1970, file: !1669, line: 1335, baseType: !2962, size: 64, offset: 20480)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1669, line: 59, flags: DIFlagFwdDecl)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1970, file: !1669, line: 1337, baseType: !2965, size: 128, offset: 20544)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2952, line: 39, size: 128, elements: !2966)
!2966 = !{!2967, !3455, !3456}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2965, file: !2952, line: 40, baseType: !2968, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !2970)
!2970 = !{!2971, !2972, !3449, !3454}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2969, file: !38, line: 75, baseType: !260, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !2969, file: !38, line: 83, baseType: !2973, size: 320, offset: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2969, file: !38, line: 83, size: 320, elements: !2974)
!2974 = !{!2975, !3200, !3214, !3218, !3448}
!2975 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !38, line: 84, baseType: !2976, size: 320)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !38, line: 84, size: 320, elements: !2977)
!2977 = !{!2978, !2989, !3194, !3199}
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !2976, file: !38, line: 90, baseType: !2979, size: 128)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2976, file: !38, line: 90, size: 128, elements: !2980)
!2980 = !{!2981, !2982, !2987, !2988}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2979, file: !38, line: 91, baseType: !201, size: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, scope: !2979, file: !38, line: 94, baseType: !2983, size: 128)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !38, line: 94, size: 128, elements: !2984)
!2984 = !{!2985, !2986}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2983, file: !38, line: 96, baseType: !192, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2983, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2979, file: !38, line: 102, baseType: !201, size: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2979, file: !38, line: 103, baseType: !201, size: 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2976, file: !38, line: 106, baseType: !2990, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !2992)
!2992 = !{!2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3186, !3187, !3188, !3191, !3192, !3193}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !2991, file: !14, line: 473, baseType: !974, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !2991, file: !14, line: 474, baseType: !1167, size: 128, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !2991, file: !14, line: 475, baseType: !756, size: 320, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2991, file: !14, line: 476, baseType: !1172, size: 32, offset: 512)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !2991, file: !14, line: 477, baseType: !381, size: 32, offset: 544)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !2991, file: !14, line: 482, baseType: !2139, size: 128, offset: 576)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !2991, file: !14, line: 483, baseType: !260, size: 64, offset: 704)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !2991, file: !14, line: 484, baseType: !260, size: 64, offset: 768)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !2991, file: !14, line: 485, baseType: !3002, size: 64, offset: 832)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3004)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3005)
!3005 = !{!3006, !3010, !3080, !3084, !3088, !3094, !3100, !3104, !3109, !3113, !3117, !3121, !3150, !3154, !3158, !3162, !3167, !3171, !3178, !3182}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3004, file: !14, line: 405, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!109, !2968, !1630}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3004, file: !14, line: 406, baseType: !3011, size: 64, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!109, !585, !3014}
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3016)
!3016 = !{!3017, !3047, !3061}
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !3015, file: !38, line: 295, baseType: !3018, size: 512)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3015, file: !38, line: 295, size: 512, elements: !3019)
!3019 = !{!3020, !3046}
!3020 = !DIDerivedType(tag: DW_TAG_member, scope: !3018, file: !38, line: 296, baseType: !3021, size: 448)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3018, file: !38, line: 296, size: 448, elements: !3022)
!3022 = !{!3023, !3024, !3033, !3034, !3035, !3044, !3045}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3021, file: !38, line: 298, baseType: !260, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !38, line: 299, baseType: !3025, size: 128, offset: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3021, file: !38, line: 299, size: 128, elements: !3026)
!3026 = !{!3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3025, file: !38, line: 300, baseType: !201, size: 128)
!3028 = !DIDerivedType(tag: DW_TAG_member, scope: !3025, file: !38, line: 302, baseType: !3029, size: 128)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3025, file: !38, line: 302, size: 128, elements: !3030)
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3029, file: !38, line: 303, baseType: !192, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3029, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3021, file: !38, line: 310, baseType: !2990, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3021, file: !38, line: 311, baseType: !260, size: 64, offset: 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, scope: !3021, file: !38, line: 312, baseType: !3036, size: 64, offset: 320)
!3036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3021, file: !38, line: 312, size: 64, elements: !3037)
!3037 = !{!3038, !3039}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3036, file: !38, line: 313, baseType: !192, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3036, file: !38, line: 314, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3041)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3042)
!3042 = !{!3043}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3041, file: !38, line: 256, baseType: !260, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3021, file: !38, line: 316, baseType: !381, size: 32, offset: 384)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3021, file: !38, line: 317, baseType: !381, size: 32, offset: 416)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3018, file: !38, line: 323, baseType: !2969, size: 512, align: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !3015, file: !38, line: 325, baseType: !3048, size: 512, offset: 512)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3015, file: !38, line: 325, size: 512, elements: !3049)
!3049 = !{!3050, !3060}
!3050 = !DIDerivedType(tag: DW_TAG_member, scope: !3048, file: !38, line: 326, baseType: !3051, size: 320)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3048, file: !38, line: 326, size: 320, elements: !3052)
!3052 = !{!3053, !3054, !3055, !3056, !3057, !3058, !3059}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3051, file: !38, line: 327, baseType: !260, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3051, file: !38, line: 328, baseType: !260, size: 64, offset: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3051, file: !38, line: 329, baseType: !260, size: 64, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3051, file: !38, line: 331, baseType: !381, size: 32, offset: 192)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3051, file: !38, line: 332, baseType: !381, size: 32, offset: 224)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3051, file: !38, line: 333, baseType: !381, size: 32, offset: 256)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3051, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3048, file: !38, line: 339, baseType: !2969, size: 512, align: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3015, file: !38, line: 341, baseType: !3062, size: 512, offset: 1024)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3015, file: !38, line: 341, size: 512, elements: !3063)
!3063 = !{!3064, !3073, !3079}
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !38, line: 342, baseType: !3065, size: 384)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !38, line: 342, size: 384, elements: !3066)
!3066 = !{!3067, !3068, !3069, !3070, !3071, !3072}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3065, file: !38, line: 343, baseType: !260, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3065, file: !38, line: 344, baseType: !260, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3065, file: !38, line: 346, baseType: !192, size: 64, offset: 128)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3065, file: !38, line: 347, baseType: !192, size: 64, offset: 192)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3065, file: !38, line: 348, baseType: !192, size: 64, offset: 256)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3065, file: !38, line: 349, baseType: !192, size: 64, offset: 320)
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !38, line: 352, baseType: !3074, size: 256)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !38, line: 352, size: 256, elements: !3075)
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3074, file: !38, line: 353, baseType: !260, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3074, file: !38, line: 354, baseType: !260, size: 64, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3074, file: !38, line: 356, baseType: !201, size: 128, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3062, file: !38, line: 359, baseType: !2969, size: 512, align: 128)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3004, file: !14, line: 409, baseType: !3081, size: 64, offset: 128)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!109, !2990, !1630}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3004, file: !14, line: 412, baseType: !3085, size: 64, offset: 192)
!3085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3086, size: 64)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!485, !2990, !3014}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3004, file: !14, line: 414, baseType: !3089, size: 64, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !3092}
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3004, file: !14, line: 416, baseType: !3095, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!109, !585, !2990, !634, !7, !3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3004, file: !14, line: 419, baseType: !3101, size: 64, offset: 384)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!109, !585, !2990, !634, !7, !7, !2968, !192}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3004, file: !14, line: 424, baseType: !3105, size: 64, offset: 448)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!3108, !2990, !3108}
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !202, line: 131, baseType: !731)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3004, file: !14, line: 425, baseType: !3110, size: 64, offset: 512)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !3014, !468, !468}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3004, file: !14, line: 426, baseType: !3114, size: 64, offset: 576)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!485, !3014, !1172}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3004, file: !14, line: 427, baseType: !3118, size: 64, offset: 640)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3014}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3004, file: !14, line: 428, baseType: !3122, size: 64, offset: 704)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!454, !3125, !3147}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !3127)
!3127 = !{!3128, !3129, !3130, !3134, !3135, !3136, !3137}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3126, file: !14, line: 374, baseType: !585, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3126, file: !14, line: 375, baseType: !634, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3126, file: !14, line: 376, baseType: !3131, size: 64, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{null, !3125, !458}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3126, file: !14, line: 377, baseType: !192, size: 64, offset: 192)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3126, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3126, file: !14, line: 379, baseType: !256, size: 16, offset: 288)
!3137 = !DIDerivedType(tag: DW_TAG_member, scope: !3126, file: !14, line: 380, baseType: !3138, size: 64, offset: 320)
!3138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !14, line: 380, size: 64, elements: !3139)
!3139 = !{!3140, !3143}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3138, file: !14, line: 386, baseType: !3141, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3138, file: !14, line: 395, baseType: !3144, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!454, !192}
!3147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3148 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3149, line: 17, flags: DIFlagFwdDecl)
!3149 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3004, file: !14, line: 433, baseType: !3151, size: 64, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!109, !2990, !3014, !3014, !74}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3004, file: !14, line: 435, baseType: !3155, size: 64, offset: 832)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{!109, !3014}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3004, file: !14, line: 436, baseType: !3159, size: 64, offset: 896)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DISubroutineType(types: !3161)
!3161 = !{!485, !3014, !468, !468}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3004, file: !14, line: 438, baseType: !3163, size: 64, offset: 960)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DISubroutineType(types: !3165)
!3165 = !{null, !3014, !3166, !3166}
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3004, file: !14, line: 439, baseType: !3168, size: 64, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!109, !2990, !2968}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3004, file: !14, line: 442, baseType: !3172, size: 64, offset: 1088)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!109, !3175, !585, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3004, file: !14, line: 444, baseType: !3179, size: 64, offset: 1152)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{null, !585}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3004, file: !14, line: 445, baseType: !3183, size: 64, offset: 1216)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!109, !3125, !3147}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2991, file: !14, line: 486, baseType: !260, size: 64, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !2991, file: !14, line: 487, baseType: !756, size: 320, offset: 960)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !2991, file: !14, line: 488, baseType: !3189, size: 32, offset: 1280)
!3189 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3190, line: 8, baseType: !245)
!3190 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !2991, file: !14, line: 489, baseType: !361, size: 32, offset: 1312)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !2991, file: !14, line: 490, baseType: !201, size: 128, offset: 1344)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !2991, file: !14, line: 491, baseType: !192, size: 64, offset: 1472)
!3194 = !DIDerivedType(tag: DW_TAG_member, scope: !2976, file: !38, line: 107, baseType: !3195, size: 64, offset: 192)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2976, file: !38, line: 107, size: 64, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3195, file: !38, line: 108, baseType: !260, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3195, file: !38, line: 109, baseType: !260, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2976, file: !38, line: 117, baseType: !260, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !38, line: 119, baseType: !3201, size: 320)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !38, line: 119, size: 320, elements: !3202)
!3202 = !{!3203, !3204, !3207, !3208, !3209}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3201, file: !38, line: 124, baseType: !260, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3201, file: !38, line: 125, baseType: !3205, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3201, file: !38, line: 126, baseType: !260, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3201, file: !38, line: 127, baseType: !260, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !38, line: 128, baseType: !3210, size: 64, offset: 256)
!3210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3201, file: !38, line: 128, size: 64, elements: !3211)
!3211 = !{!3212, !3213}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3210, file: !38, line: 133, baseType: !260, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3210, file: !38, line: 138, baseType: !611, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !38, line: 141, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !38, line: 141, size: 64, elements: !3216)
!3216 = !{!3217}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3215, file: !38, line: 142, baseType: !260, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !38, line: 144, baseType: !3219, size: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !38, line: 144, size: 128, elements: !3220)
!3220 = !{!3221, !3447}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3219, file: !38, line: 146, baseType: !3222, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !3224)
!3224 = !{!3225, !3235, !3256, !3257, !3258, !3259, !3260, !3429, !3430, !3431}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3223, file: !54, line: 127, baseType: !3226, size: 384)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !3227)
!3227 = !{!3228, !3229, !3231, !3232, !3233, !3234}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3226, file: !54, line: 22, baseType: !260, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3226, file: !54, line: 23, baseType: !3230, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3226, file: !54, line: 24, baseType: !3230, size: 64, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3226, file: !54, line: 25, baseType: !260, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3226, file: !54, line: 26, baseType: !260, size: 64, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3226, file: !54, line: 27, baseType: !260, size: 64, offset: 320)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3223, file: !54, line: 128, baseType: !3236, size: 128, offset: 384)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3237, line: 105, size: 128, elements: !3238)
!3237 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3238 = !{!3239, !3240}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3236, file: !3237, line: 110, baseType: !260, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3236, file: !3237, line: 118, baseType: !3241, size: 64, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3237, line: 95, size: 448, elements: !3243)
!3243 = !{!3244, !3245, !3251, !3252, !3253, !3254, !3255}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3242, file: !3237, line: 96, baseType: !611, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3242, file: !3237, line: 97, baseType: !3246, size: 64, offset: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3237, line: 60, baseType: !3248)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{null, !3250}
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3242, file: !3237, line: 98, baseType: !3246, size: 64, offset: 128)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3242, file: !3237, line: 99, baseType: !485, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3242, file: !3237, line: 100, baseType: !485, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3242, file: !3237, line: 101, baseType: !598, size: 128, align: 64, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3242, file: !3237, line: 102, baseType: !3250, size: 64, offset: 384)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3223, file: !54, line: 129, baseType: !1229, size: 256, offset: 512)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3223, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3223, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3223, file: !54, line: 132, baseType: !260, size: 64, offset: 832)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3223, file: !54, line: 133, baseType: !3261, size: 64, offset: 896)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3263)
!3263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !3264)
!3264 = !{!3265, !3269, !3425}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3263, file: !54, line: 83, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{null, !2968}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3263, file: !54, line: 89, baseType: !3270, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!3273, !3274}
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3276, line: 512, size: 896, elements: !3277)
!3276 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3277 = !{!3278, !3392, !3393, !3400, !3407, !3417, !3418, !3419, !3421, !3423}
!3278 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3276, line: 513, baseType: !3279, size: 320)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3275, file: !3276, line: 513, size: 320, elements: !3280)
!3280 = !{!3281, !3388, !3389, !3390, !3391}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3279, file: !3276, line: 514, baseType: !3282, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !3284)
!3284 = !{!3285, !3294, !3295, !3301, !3308, !3309, !3314, !3315, !3320, !3321, !3324, !3381, !3382, !3383, !3384, !3385, !3386}
!3285 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !38, line: 628, baseType: !3286, size: 128)
!3286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3283, file: !38, line: 628, size: 128, elements: !3287)
!3287 = !{!3288, !3293}
!3288 = !DIDerivedType(tag: DW_TAG_member, scope: !3286, file: !38, line: 629, baseType: !3289, size: 128)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3286, file: !38, line: 629, size: 128, elements: !3290)
!3290 = !{!3291, !3292}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3289, file: !38, line: 631, baseType: !260, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3289, file: !38, line: 632, baseType: !260, size: 64, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3286, file: !38, line: 635, baseType: !598, size: 128, align: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3283, file: !38, line: 639, baseType: !2253, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3283, file: !38, line: 640, baseType: !3296, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2288, line: 297, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2288, line: 297, size: 64, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3297, file: !2288, line: 297, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2293, line: 19, baseType: !260)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3283, file: !38, line: 646, baseType: !3302, size: 64, offset: 256)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3283, file: !38, line: 646, size: 64, elements: !3303)
!3303 = !{!3304, !3307}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3302, file: !38, line: 647, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3306)
!3306 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !260)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3302, file: !38, line: 648, baseType: !3306, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3283, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3283, file: !38, line: 667, baseType: !3310, size: 64, offset: 384)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !3312)
!3312 = !{!3313}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3311, file: !38, line: 580, baseType: !756, size: 320)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3283, file: !38, line: 670, baseType: !485, size: 8, offset: 448)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3283, file: !38, line: 681, baseType: !3316, size: 256, offset: 512)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !38, line: 678, size: 256, elements: !3317)
!3317 = !{!3318, !3319}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3316, file: !38, line: 679, baseType: !540, size: 192, align: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3316, file: !38, line: 680, baseType: !260, size: 64, offset: 192)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3283, file: !38, line: 689, baseType: !201, size: 128, offset: 768)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3283, file: !38, line: 691, baseType: !3322, size: 64, offset: 896)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3283, file: !38, line: 694, baseType: !3325, size: 64, offset: 960)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3327)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3276, line: 563, size: 1024, elements: !3328)
!3328 = !{!3329, !3333, !3334, !3338, !3342, !3346, !3347, !3351, !3355, !3359, !3360, !3361, !3365, !3369, !3373, !3377}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3327, file: !3276, line: 564, baseType: !3330, size: 64)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{null, !3282}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3327, file: !3276, line: 569, baseType: !3330, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3327, file: !3276, line: 571, baseType: !3335, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!109, !3282, !260}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3327, file: !3276, line: 572, baseType: !3339, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!109, !3282}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3327, file: !3276, line: 578, baseType: !3343, size: 64, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!109, !3282, !260, !260, !260}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3327, file: !3276, line: 580, baseType: !3270, size: 64, offset: 320)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3327, file: !3276, line: 581, baseType: !3348, size: 64, offset: 384)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!3273, !3274, !7}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3327, file: !3276, line: 582, baseType: !3352, size: 64, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!3273, !3274, !260, !260}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3327, file: !3276, line: 584, baseType: !3356, size: 64, offset: 512)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!260, !3282}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3327, file: !3276, line: 588, baseType: !3270, size: 64, offset: 576)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3327, file: !3276, line: 591, baseType: !3270, size: 64, offset: 640)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3327, file: !3276, line: 597, baseType: !3362, size: 64, offset: 704)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!109, !3282, !260, !192, !109, !109}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3327, file: !3276, line: 603, baseType: !3366, size: 64, offset: 768)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!267, !3282}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3327, file: !3276, line: 613, baseType: !3370, size: 64, offset: 832)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!109, !3282, !2925}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3327, file: !3276, line: 625, baseType: !3374, size: 64, offset: 896)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!2925, !3282, !260}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3327, file: !3276, line: 633, baseType: !3378, size: 64, offset: 960)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!2968, !3282, !260}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3283, file: !38, line: 697, baseType: !260, size: 64, offset: 1024)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3283, file: !38, line: 699, baseType: !585, size: 64, offset: 1088)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3283, file: !38, line: 700, baseType: !192, size: 64, offset: 1152)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3283, file: !38, line: 711, baseType: !611, size: 64, offset: 1216)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3283, file: !38, line: 717, baseType: !2925, size: 64, offset: 1280)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3283, file: !38, line: 722, baseType: !3387, offset: 1344)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !1518)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3279, file: !3276, line: 515, baseType: !1172, size: 32, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3279, file: !3276, line: 516, baseType: !260, size: 64, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3279, file: !3276, line: 517, baseType: !260, size: 64, offset: 192)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3279, file: !3276, line: 518, baseType: !260, size: 64, offset: 256)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3275, file: !3276, line: 520, baseType: !37, size: 32, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3275, file: !3276, line: 522, baseType: !3394, size: 64, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2293, line: 22, baseType: !3396)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2293, line: 22, size: 64, elements: !3397)
!3397 = !{!3398}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3396, file: !2293, line: 22, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2293, line: 15, baseType: !260)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3275, file: !3276, line: 524, baseType: !3401, size: 64, offset: 448)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2288, line: 372, baseType: !3403)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2288, line: 372, size: 64, elements: !3404)
!3404 = !{!3405}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3403, file: !2288, line: 372, baseType: !3406, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2293, line: 16, baseType: !260)
!3407 = !DIDerivedType(tag: DW_TAG_member, scope: !3275, file: !3276, line: 527, baseType: !3408, size: 64, offset: 512)
!3408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3275, file: !3276, line: 527, size: 64, elements: !3409)
!3409 = !{!3410, !3416}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3408, file: !3276, line: 528, baseType: !3411, size: 64)
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2293, line: 21, baseType: !3412)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2293, line: 21, size: 64, elements: !3413)
!3413 = !{!3414}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3412, file: !2293, line: 21, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2293, line: 14, baseType: !260)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3408, file: !3276, line: 529, baseType: !3395, size: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3275, file: !3276, line: 534, baseType: !2968, size: 64, offset: 576)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3275, file: !3276, line: 535, baseType: !2968, size: 64, offset: 640)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3275, file: !3276, line: 541, baseType: !3420, size: 64, offset: 704)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3275, file: !3276, line: 545, baseType: !3422, size: 64, offset: 768)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3275, file: !3276, line: 549, baseType: !3424, size: 64, offset: 832)
!3424 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2288, line: 520, baseType: !2968)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3263, file: !54, line: 100, baseType: !3426, size: 64, offset: 128)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!109, !3222, !260, !260, !109}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3223, file: !54, line: 134, baseType: !192, size: 64, offset: 960)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3223, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!3431 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !54, line: 136, baseType: !3432, size: 128, offset: 1088)
!3432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3223, file: !54, line: 136, size: 128, elements: !3433)
!3433 = !{!3434, !3440}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3432, file: !54, line: 137, baseType: !3435, size: 128)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3436, line: 6, size: 128, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3435, file: !3436, line: 7, baseType: !731, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3435, file: !3436, line: 8, baseType: !731, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, scope: !3432, file: !54, line: 138, baseType: !3441)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3432, file: !54, line: 138, elements: !3442)
!3442 = !{!3443, !3445}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3441, file: !54, line: 138, baseType: !3444)
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3441, file: !54, line: 138, elements: !1518)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3441, file: !54, line: 138, baseType: !3446)
!3446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3435, elements: !703)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3219, file: !38, line: 147, baseType: !192, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2973, file: !38, line: 161, baseType: !598, size: 128, align: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !2969, file: !38, line: 164, baseType: !3450, size: 32, offset: 384)
!3450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2969, file: !38, line: 164, size: 32, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3450, file: !38, line: 169, baseType: !381, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3450, file: !38, line: 177, baseType: !7, size: 32)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2969, file: !38, line: 181, baseType: !381, size: 32, offset: 416)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2965, file: !2952, line: 42, baseType: !246, size: 32, offset: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2965, file: !2952, line: 43, baseType: !246, size: 32, offset: 96)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1970, file: !1669, line: 1340, baseType: !3458, size: 64, offset: 20672)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1669, line: 69, flags: DIFlagFwdDecl)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1970, file: !1669, line: 1351, baseType: !109, size: 32, offset: 20736)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1970, file: !1669, line: 1352, baseType: !109, size: 32, offset: 20768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1970, file: !1669, line: 1354, baseType: !260, size: 64, offset: 20800)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1970, file: !1669, line: 1364, baseType: !731, size: 64, offset: 20864)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1970, file: !1669, line: 1365, baseType: !731, size: 64, offset: 20928)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1970, file: !1669, line: 1412, baseType: !260, size: 64, offset: 20992)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1970, file: !1669, line: 1453, baseType: !3467, size: 64, offset: 21056)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1669, line: 1453, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1970, file: !1669, line: 1457, baseType: !3470, size: 64, offset: 21120)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3472)
!3472 = !{!3473, !3474, !3493, !3496, !3497, !3530, !3540}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3471, file: !68, line: 62, baseType: !67, size: 32)
!3474 = !DIDerivedType(tag: DW_TAG_member, scope: !3471, file: !68, line: 64, baseType: !3475, size: 192, offset: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3471, file: !68, line: 64, size: 192, elements: !3476)
!3476 = !{!3477, !3488}
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !68, line: 65, baseType: !3478, size: 192)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !68, line: 65, size: 192, elements: !3479)
!3479 = !{!3480, !3487}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3478, file: !68, line: 66, baseType: !3481, size: 128)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3482, line: 50, size: 128, elements: !3483)
!3482 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3483 = !{!3484, !3485, !3486}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3481, file: !3482, line: 52, baseType: !260, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3481, file: !3482, line: 54, baseType: !7, size: 32, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3481, file: !3482, line: 55, baseType: !7, size: 32, offset: 96)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3478, file: !68, line: 67, baseType: !260, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_member, scope: !3475, file: !68, line: 70, baseType: !3489, size: 192)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !68, line: 70, size: 192, elements: !3490)
!3490 = !{!3491, !3492}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3489, file: !68, line: 71, baseType: !598, size: 128, align: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3489, file: !68, line: 72, baseType: !260, size: 64, offset: 128)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3471, file: !68, line: 76, baseType: !3494, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3471, file: !68, line: 77, baseType: !260, size: 64, offset: 320)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3471, file: !68, line: 79, baseType: !3498, size: 64, offset: 384)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3482, line: 25, size: 256, elements: !3500)
!3500 = !{!3501, !3507, !3511}
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !3482, line: 26, baseType: !3502, size: 128)
!3502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !3482, line: 26, size: 128, elements: !3503)
!3503 = !{!3504, !3506}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3502, file: !3482, line: 27, baseType: !3505, size: 128)
!3505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 128, elements: !2544)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3502, file: !3482, line: 28, baseType: !3505, size: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3499, file: !3482, line: 31, baseType: !3508, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3510)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3482, line: 23, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !3482, line: 33, baseType: !3512, size: 64, offset: 192)
!3512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3499, file: !3482, line: 33, size: 64, elements: !3513)
!3513 = !{!3514, !3520, !3525}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3512, file: !3482, line: 38, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 34, size: 64, elements: !3516)
!3516 = !{!3517, !3518, !3519}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3515, file: !3482, line: 35, baseType: !748, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3515, file: !3482, line: 36, baseType: !231, size: 8, offset: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3515, file: !3482, line: 37, baseType: !231, size: 8, offset: 40)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3512, file: !3482, line: 42, baseType: !3521, size: 16)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 39, size: 16, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3521, file: !3482, line: 40, baseType: !231, size: 8)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3521, file: !3482, line: 41, baseType: !231, size: 8, offset: 8)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3512, file: !3482, line: 46, baseType: !3526, size: 16)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3512, file: !3482, line: 43, size: 16, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3526, file: !3482, line: 44, baseType: !231, size: 8)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3526, file: !3482, line: 45, baseType: !231, size: 8, offset: 8)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3471, file: !68, line: 81, baseType: !3531, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537, !3538, !3539}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3532, file: !68, line: 86, baseType: !3494, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3532, file: !68, line: 87, baseType: !260, size: 64, offset: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3532, file: !68, line: 88, baseType: !260, size: 64, offset: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3532, file: !68, line: 89, baseType: !260, size: 64, offset: 192)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3532, file: !68, line: 90, baseType: !485, size: 8, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3532, file: !68, line: 92, baseType: !3531, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3471, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1970, file: !1669, line: 1463, baseType: !3542, offset: 21184)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1669, line: 739, elements: !1518)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1970, file: !1669, line: 1470, baseType: !598, size: 128, align: 64, offset: 21184)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1970, file: !1669, line: 1471, baseType: !666, size: 32, offset: 21312)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1970, file: !1669, line: 1472, baseType: !109, size: 32, offset: 21344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1970, file: !1669, line: 1474, baseType: !1969, size: 64, offset: 21376)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1970, file: !1669, line: 1475, baseType: !1477, size: 320, offset: 21440)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1970, file: !1669, line: 1478, baseType: !3549, size: 64, offset: 21760)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3149, line: 49, size: 512, elements: !3551)
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3561}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3550, file: !3149, line: 50, baseType: !3549, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3550, file: !3149, line: 51, baseType: !192, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3550, file: !3149, line: 52, baseType: !260, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3550, file: !3149, line: 53, baseType: !260, size: 64, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3550, file: !3149, line: 54, baseType: !3098, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3550, file: !3149, line: 56, baseType: !7, size: 32, offset: 320)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3550, file: !3149, line: 58, baseType: !7, size: 32, offset: 352)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3550, file: !3149, line: 59, baseType: !3560, size: 64, offset: 384)
!3560 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !202, line: 159, baseType: !731)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3550, file: !3149, line: 60, baseType: !495, size: 64, offset: 448)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1970, file: !1669, line: 1482, baseType: !666, size: 32, offset: 21824)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1970, file: !1669, line: 1489, baseType: !192, size: 64, offset: 21888)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1970, file: !1669, line: 1504, baseType: !192, size: 64, offset: 21952)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1970, file: !1669, line: 1505, baseType: !732, size: 64, offset: 22016)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1970, file: !1669, line: 1506, baseType: !731, size: 64, offset: 22080)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1970, file: !1669, line: 1507, baseType: !732, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1970, file: !1669, line: 1508, baseType: !732, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1970, file: !1669, line: 1509, baseType: !732, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1970, file: !1669, line: 1510, baseType: !598, size: 128, align: 64, offset: 22208)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1970, file: !1669, line: 1511, baseType: !109, size: 32, offset: 22336)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1970, file: !1669, line: 1515, baseType: !3573, size: 64, offset: 22400)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !593, line: 56, size: 64, elements: !3574)
!3574 = !{!3575}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3573, file: !593, line: 57, baseType: !596, size: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1970, file: !1669, line: 1518, baseType: !3573, size: 64, offset: 22464)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1970, file: !1669, line: 1528, baseType: !598, size: 128, align: 64, offset: 22528)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1970, file: !1669, line: 1552, baseType: !3579, size: 35328, offset: 23040)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3580, line: 430, size: 35328, elements: !3581)
!3580 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3581 = !{!3582, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3611, !3612, !3613, !3614, !3615, !3616, !3619, !3620, !3621, !3622}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3579, file: !3580, line: 432, baseType: !3583, size: 192)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3584, size: 192, elements: !424)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3585, line: 16, size: 64, elements: !3586)
!3585 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3584, file: !3585, line: 17, baseType: !256, size: 16)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3584, file: !3585, line: 18, baseType: !256, size: 16, offset: 16)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3584, file: !3585, line: 19, baseType: !256, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3584, file: !3585, line: 19, baseType: !256, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3584, file: !3585, line: 19, baseType: !256, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3584, file: !3585, line: 19, baseType: !256, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3584, file: !3585, line: 19, baseType: !256, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3584, file: !3585, line: 20, baseType: !256, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3584, file: !3585, line: 20, baseType: !256, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3584, file: !3585, line: 20, baseType: !256, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3584, file: !3585, line: 20, baseType: !256, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3584, file: !3585, line: 20, baseType: !256, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3584, file: !3585, line: 20, baseType: !256, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3579, file: !3580, line: 436, baseType: !260, size: 64, offset: 192)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3579, file: !3580, line: 440, baseType: !225, size: 16, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3579, file: !3580, line: 441, baseType: !225, size: 16, offset: 272)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3579, file: !3580, line: 442, baseType: !225, size: 16, offset: 288)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3579, file: !3580, line: 443, baseType: !225, size: 16, offset: 304)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3579, file: !3580, line: 447, baseType: !260, size: 64, offset: 320)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3579, file: !3580, line: 448, baseType: !260, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3579, file: !3580, line: 459, baseType: !3608, size: 256, offset: 448)
!3608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3609, size: 256, elements: !684)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3580, line: 428, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3579, file: !3580, line: 461, baseType: !260, size: 64, offset: 704)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3579, file: !3580, line: 463, baseType: !260, size: 64, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3579, file: !3580, line: 465, baseType: !260, size: 64, offset: 832)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3579, file: !3580, line: 466, baseType: !260, size: 64, offset: 896)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3579, file: !3580, line: 467, baseType: !260, size: 64, offset: 960)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3579, file: !3580, line: 473, baseType: !3617, size: 64, offset: 1024)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3580, line: 10, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3579, file: !3580, line: 480, baseType: !260, size: 64, offset: 1088)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3579, file: !3580, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3579, file: !3580, line: 491, baseType: !245, size: 32, offset: 1184)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3579, file: !3580, line: 501, baseType: !3623, size: 33792, offset: 1536)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3624, line: 448, size: 33792, elements: !3625)
!3624 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3625 = !{!3626, !3627, !3628, !3792, !3793, !3799, !3800}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3623, file: !3624, line: 461, baseType: !7, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3623, file: !3624, line: 468, baseType: !260, size: 64, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3623, file: !3624, line: 476, baseType: !3629, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3624, line: 356, size: 33280, align: 512, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3630, file: !3624, line: 358, baseType: !7, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3630, file: !3624, line: 361, baseType: !7, size: 32, offset: 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3630, file: !3624, line: 364, baseType: !731, size: 64, offset: 64)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3630, file: !3624, line: 367, baseType: !731, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3630, file: !3624, line: 370, baseType: !731, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3630, file: !3624, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3630, file: !3624, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3630, file: !3624, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3630, file: !3624, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3630, file: !3624, line: 397, baseType: !3642, size: 32768, offset: 512)
!3642 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3624, line: 348, size: 32768, elements: !3643)
!3643 = !{!3644, !3659, !3698, !3775, !3788}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3642, file: !3624, line: 349, baseType: !3645, size: 896)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3624, line: 12, size: 896, elements: !3646)
!3646 = !{!3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3658}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3645, file: !3624, line: 13, baseType: !245, size: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3645, file: !3624, line: 14, baseType: !245, size: 32, offset: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3645, file: !3624, line: 15, baseType: !245, size: 32, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3645, file: !3624, line: 16, baseType: !245, size: 32, offset: 96)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3645, file: !3624, line: 17, baseType: !245, size: 32, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3645, file: !3624, line: 18, baseType: !245, size: 32, offset: 160)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3645, file: !3624, line: 19, baseType: !245, size: 32, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3645, file: !3624, line: 22, baseType: !3655, size: 640, offset: 224)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 640, elements: !3656)
!3656 = !{!3657}
!3657 = !DISubrange(count: 20)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3645, file: !3624, line: 25, baseType: !245, size: 32, offset: 864)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3642, file: !3624, line: 350, baseType: !3660, size: 4096, align: 128)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3624, line: 34, size: 4096, align: 128, elements: !3661)
!3661 = !{!3662, !3663, !3664, !3665, !3666, !3681, !3682, !3683, !3687, !3689, !3693}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3660, file: !3624, line: 35, baseType: !256, size: 16)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3660, file: !3624, line: 36, baseType: !256, size: 16, offset: 16)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3660, file: !3624, line: 37, baseType: !256, size: 16, offset: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3660, file: !3624, line: 38, baseType: !256, size: 16, offset: 48)
!3666 = !DIDerivedType(tag: DW_TAG_member, scope: !3660, file: !3624, line: 39, baseType: !3667, size: 128, offset: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3660, file: !3624, line: 39, size: 128, elements: !3668)
!3668 = !{!3669, !3674}
!3669 = !DIDerivedType(tag: DW_TAG_member, scope: !3667, file: !3624, line: 40, baseType: !3670, size: 128)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3667, file: !3624, line: 40, size: 128, elements: !3671)
!3671 = !{!3672, !3673}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3670, file: !3624, line: 41, baseType: !731, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3670, file: !3624, line: 42, baseType: !731, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, scope: !3667, file: !3624, line: 44, baseType: !3675, size: 128)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3667, file: !3624, line: 44, size: 128, elements: !3676)
!3676 = !{!3677, !3678, !3679, !3680}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3675, file: !3624, line: 45, baseType: !245, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3675, file: !3624, line: 46, baseType: !245, size: 32, offset: 32)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3675, file: !3624, line: 47, baseType: !245, size: 32, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3675, file: !3624, line: 48, baseType: !245, size: 32, offset: 96)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3660, file: !3624, line: 51, baseType: !245, size: 32, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3660, file: !3624, line: 52, baseType: !245, size: 32, offset: 224)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3660, file: !3624, line: 55, baseType: !3684, size: 1024, offset: 256)
!3684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 1024, elements: !3685)
!3685 = !{!3686}
!3686 = !DISubrange(count: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3660, file: !3624, line: 58, baseType: !3688, size: 2048, offset: 1280)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 2048, elements: !428)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3660, file: !3624, line: 60, baseType: !3690, size: 384, offset: 3328)
!3690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 384, elements: !3691)
!3691 = !{!3692}
!3692 = !DISubrange(count: 12)
!3693 = !DIDerivedType(tag: DW_TAG_member, scope: !3660, file: !3624, line: 62, baseType: !3694, size: 384, offset: 3712)
!3694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3660, file: !3624, line: 62, size: 384, elements: !3695)
!3695 = !{!3696, !3697}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3694, file: !3624, line: 63, baseType: !3690, size: 384)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3694, file: !3624, line: 64, baseType: !3690, size: 384)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3642, file: !3624, line: 351, baseType: !3699, size: 1088)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3624, line: 79, size: 1088, elements: !3700)
!3700 = !{!3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3774}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3699, file: !3624, line: 80, baseType: !245, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3699, file: !3624, line: 81, baseType: !245, size: 32, offset: 32)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3699, file: !3624, line: 82, baseType: !245, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3699, file: !3624, line: 83, baseType: !245, size: 32, offset: 96)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3699, file: !3624, line: 84, baseType: !245, size: 32, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3699, file: !3624, line: 85, baseType: !245, size: 32, offset: 160)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3699, file: !3624, line: 86, baseType: !245, size: 32, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3699, file: !3624, line: 88, baseType: !3655, size: 640, offset: 224)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3699, file: !3624, line: 89, baseType: !231, size: 8, offset: 864)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3699, file: !3624, line: 90, baseType: !231, size: 8, offset: 872)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3699, file: !3624, line: 91, baseType: !231, size: 8, offset: 880)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3699, file: !3624, line: 92, baseType: !231, size: 8, offset: 888)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3699, file: !3624, line: 93, baseType: !231, size: 8, offset: 896)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3699, file: !3624, line: 94, baseType: !231, size: 8, offset: 904)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3699, file: !3624, line: 95, baseType: !3716, size: 64, offset: 960)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3718, line: 11, size: 128, elements: !3719)
!3718 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3719 = !{!3720, !3721}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3717, file: !3718, line: 12, baseType: !458, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3717, file: !3718, line: 13, baseType: !3722, size: 64, offset: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3724, line: 103, size: 1344, elements: !3725)
!3724 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3725 = !{!3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3754, !3755, !3756}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3723, file: !3724, line: 109, baseType: !260, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3723, file: !3724, line: 110, baseType: !260, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3723, file: !3724, line: 111, baseType: !260, size: 64, offset: 128)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3723, file: !3724, line: 112, baseType: !260, size: 64, offset: 192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3723, file: !3724, line: 113, baseType: !260, size: 64, offset: 256)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3723, file: !3724, line: 114, baseType: !260, size: 64, offset: 320)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3723, file: !3724, line: 117, baseType: !260, size: 64, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3723, file: !3724, line: 118, baseType: !260, size: 64, offset: 448)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3723, file: !3724, line: 119, baseType: !260, size: 64, offset: 512)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3723, file: !3724, line: 120, baseType: !260, size: 64, offset: 576)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3723, file: !3724, line: 121, baseType: !260, size: 64, offset: 640)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3723, file: !3724, line: 122, baseType: !260, size: 64, offset: 704)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3723, file: !3724, line: 123, baseType: !260, size: 64, offset: 768)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3723, file: !3724, line: 124, baseType: !260, size: 64, offset: 832)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3723, file: !3724, line: 125, baseType: !260, size: 64, offset: 896)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3723, file: !3724, line: 139, baseType: !260, size: 64, offset: 960)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3723, file: !3724, line: 142, baseType: !260, size: 64, offset: 1024)
!3743 = !DIDerivedType(tag: DW_TAG_member, scope: !3723, file: !3724, line: 144, baseType: !3744, size: 64, offset: 1088)
!3744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3723, file: !3724, line: 144, size: 64, elements: !3745)
!3745 = !{!3746, !3747, !3748}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3744, file: !3724, line: 146, baseType: !256, size: 16)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3744, file: !3724, line: 148, baseType: !731, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3744, file: !3724, line: 150, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3724, line: 59, size: 64, elements: !3750)
!3750 = !{!3751, !3752, !3753}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3749, file: !3724, line: 61, baseType: !731, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3749, file: !3724, line: 63, baseType: !731, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3749, file: !3724, line: 65, baseType: !731, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3723, file: !3724, line: 153, baseType: !260, size: 64, offset: 1152)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3723, file: !3724, line: 154, baseType: !260, size: 64, offset: 1216)
!3756 = !DIDerivedType(tag: DW_TAG_member, scope: !3723, file: !3724, line: 156, baseType: !3757, size: 64, offset: 1280)
!3757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3723, file: !3724, line: 156, size: 64, elements: !3758)
!3758 = !{!3759, !3760, !3761}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3757, file: !3724, line: 158, baseType: !256, size: 16)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3757, file: !3724, line: 160, baseType: !731, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3757, file: !3724, line: 162, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3724, line: 69, size: 64, elements: !3763)
!3763 = !{!3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3762, file: !3724, line: 71, baseType: !731, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3762, file: !3724, line: 73, baseType: !731, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3762, file: !3724, line: 75, baseType: !731, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3762, file: !3724, line: 77, baseType: !731, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3762, file: !3724, line: 80, baseType: !731, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3762, file: !3724, line: 83, baseType: !731, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3762, file: !3724, line: 86, baseType: !731, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3762, file: !3724, line: 88, baseType: !731, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3762, file: !3724, line: 93, baseType: !731, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3762, file: !3724, line: 100, baseType: !731, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3699, file: !3624, line: 96, baseType: !245, size: 32, offset: 1024)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3642, file: !3624, line: 352, baseType: !3776, size: 4608, align: 512)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3624, line: 333, size: 4608, align: 512, elements: !3777)
!3777 = !{!3778, !3779, !3786}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3776, file: !3624, line: 334, baseType: !3660, size: 4096, align: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3776, file: !3624, line: 335, baseType: !3780, size: 512, offset: 4096)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3624, line: 312, size: 512, elements: !3781)
!3781 = !{!3782, !3783, !3784}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3780, file: !3624, line: 313, baseType: !731, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3780, file: !3624, line: 314, baseType: !731, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3780, file: !3624, line: 315, baseType: !3785, size: 384, offset: 128)
!3785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 384, elements: !802)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3776, file: !3624, line: 336, baseType: !3787, offset: 4608)
!3787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, elements: !703)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3642, file: !3624, line: 353, baseType: !3789, size: 32768)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 32768, elements: !3790)
!3790 = !{!3791}
!3791 = !DISubrange(count: 4096)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3623, file: !3624, line: 484, baseType: !3629, size: 64, offset: 192)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3623, file: !3624, line: 491, baseType: !3794, size: 128, offset: 256)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3624, line: 404, size: 128, elements: !3795)
!3795 = !{!3796, !3797, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3794, file: !3624, line: 424, baseType: !731, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3794, file: !3624, line: 432, baseType: !7, size: 32, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3794, file: !3624, line: 440, baseType: !7, size: 32, offset: 96)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3623, file: !3624, line: 498, baseType: !3794, size: 128, offset: 384)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3623, file: !3624, line: 508, baseType: !3630, size: 33280, align: 512, offset: 512)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1952, file: !1953, line: 16, baseType: !688, size: 192, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1952, file: !1953, line: 17, baseType: !381, size: 32, offset: 704)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1177, file: !14, line: 1240, baseType: !192, size: 64, offset: 6912)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1177, file: !14, line: 1243, baseType: !245, size: 32, offset: 6976)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1177, file: !14, line: 1245, baseType: !772, size: 64, offset: 7040)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1177, file: !14, line: 1246, baseType: !772, size: 64, offset: 7104)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1177, file: !14, line: 1248, baseType: !246, size: 32, offset: 7168)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1177, file: !14, line: 1249, baseType: !3809, size: 64, offset: 7232)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1177, file: !14, line: 1252, baseType: !3812, size: 256, offset: 7296)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 256, elements: !3685)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1177, file: !14, line: 1253, baseType: !3814, size: 128, offset: 7552)
!3814 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3815, line: 21, baseType: !3816)
!3815 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3815, line: 19, size: 128, elements: !3817)
!3817 = !{!3818}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3816, file: !3815, line: 20, baseType: !3819, size: 128)
!3819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 128, elements: !2544)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1177, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1177, file: !14, line: 1261, baseType: !621, size: 256, offset: 7744)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1177, file: !14, line: 1267, baseType: !267, size: 64, offset: 8000)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1177, file: !14, line: 1269, baseType: !3824, size: 64, offset: 8064)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3826)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !936, line: 128, size: 1024, align: 512, elements: !3827)
!3827 = !{!3828, !3832, !3833, !3840, !3846, !3850, !3854, !3858, !3859, !3863, !3867, !3872, !3876}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3826, file: !936, line: 129, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!109, !934, !7}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3826, file: !936, line: 130, baseType: !3829, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3826, file: !936, line: 131, baseType: !3834, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!109, !3837, !3839}
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3826, file: !936, line: 132, baseType: !3841, size: 64, offset: 192)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DISubroutineType(types: !3843)
!3843 = !{!109, !3837, !7, !267, !3844}
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3826, file: !936, line: 134, baseType: !3847, size: 64, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!109, !3837}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3826, file: !936, line: 135, baseType: !3851, size: 64, offset: 320)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!109, !934}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3826, file: !936, line: 136, baseType: !3855, size: 64, offset: 384)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !934}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3826, file: !936, line: 137, baseType: !3855, size: 64, offset: 448)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3826, file: !936, line: 138, baseType: !3860, size: 64, offset: 512)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{null, !934, !974}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3826, file: !936, line: 139, baseType: !3864, size: 64, offset: 576)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!423, !934, !423, !109}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3826, file: !936, line: 140, baseType: !3868, size: 64, offset: 640)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!929, !3871}
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3826, file: !936, line: 141, baseType: !3873, size: 64, offset: 704)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!109, !1092, !485}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3826, file: !936, line: 142, baseType: !3877, size: 64, offset: 768)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!934, !934, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1177, file: !14, line: 1271, baseType: !3883, size: 448, offset: 8128)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1734, line: 63, size: 448, elements: !3884)
!3884 = !{!3885, !3890, !3891, !3892, !3893, !3894, !3895}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3883, file: !1734, line: 64, baseType: !3886, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!260, !3889, !1732}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3883, file: !1734, line: 66, baseType: !3886, size: 64, offset: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3883, file: !1734, line: 69, baseType: !458, size: 64, offset: 128)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3883, file: !1734, line: 70, baseType: !109, size: 32, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3883, file: !1734, line: 71, baseType: !7, size: 32, offset: 224)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3883, file: !1734, line: 74, baseType: !201, size: 128, offset: 256)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3883, file: !1734, line: 85, baseType: !3896, size: 64, offset: 384)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1177, file: !14, line: 1274, baseType: !611, size: 64, offset: 8576)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1177, file: !14, line: 1280, baseType: !611, size: 64, offset: 8640)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1177, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1177, file: !14, line: 1286, baseType: !3189, size: 32, offset: 8736)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1177, file: !14, line: 1289, baseType: !1551, size: 64, offset: 8768)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1177, file: !14, line: 1290, baseType: !675, size: 64, offset: 8832)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1177, file: !14, line: 1297, baseType: !896, size: 64, offset: 8896)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1177, file: !14, line: 1304, baseType: !3905, size: 64, offset: 8960)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3906, line: 49, size: 64, elements: !3907)
!3906 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3907 = !{!3908}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3905, file: !3906, line: 50, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3906, line: 41, size: 512, align: 512, elements: !3911)
!3911 = !{!3912, !3913, !3918}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3910, file: !3906, line: 43, baseType: !361, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3910, file: !3906, line: 45, baseType: !3914, size: 192, offset: 64)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3906, line: 29, size: 192, elements: !3915)
!3915 = !{!3916, !3917}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3914, file: !3906, line: 30, baseType: !201, size: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3914, file: !3906, line: 32, baseType: !458, size: 64, offset: 128)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3910, file: !3906, line: 46, baseType: !458, size: 64, offset: 256)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1177, file: !14, line: 1305, baseType: !3905, size: 64, offset: 9024)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1177, file: !14, line: 1306, baseType: !598, size: 128, align: 64, offset: 9088)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1177, file: !14, line: 1307, baseType: !1489, size: 256, offset: 9216)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1177, file: !14, line: 1309, baseType: !621, size: 256, offset: 9472)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1177, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1177, file: !14, line: 1317, baseType: !361, size: 32, align: 512, offset: 10240)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1177, file: !14, line: 1318, baseType: !201, size: 128, offset: 10304)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1177, file: !14, line: 1320, baseType: !361, size: 32, offset: 10432)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1177, file: !14, line: 1321, baseType: !201, size: 128, offset: 10496)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !975, file: !14, line: 656, baseType: !2990, size: 64, offset: 512)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !975, file: !14, line: 659, baseType: !192, size: 64, offset: 576)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !975, file: !14, line: 663, baseType: !260, size: 64, offset: 640)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !14, line: 671, baseType: !3932, size: 32, offset: 704)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !14, line: 671, size: 32, elements: !3933)
!3933 = !{!3934, !3936}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3932, file: !14, line: 672, baseType: !3935, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3932, file: !14, line: 673, baseType: !7, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !975, file: !14, line: 675, baseType: !1045, size: 32, offset: 736)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !975, file: !14, line: 676, baseType: !634, size: 64, offset: 768)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !975, file: !14, line: 677, baseType: !1081, size: 128, offset: 832)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !975, file: !14, line: 678, baseType: !1081, size: 128, offset: 960)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !975, file: !14, line: 679, baseType: !1081, size: 128, offset: 1088)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !975, file: !14, line: 680, baseType: !361, size: 32, offset: 1216)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !975, file: !14, line: 681, baseType: !225, size: 16, offset: 1248)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !975, file: !14, line: 682, baseType: !231, size: 8, offset: 1264)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !975, file: !14, line: 683, baseType: !231, size: 8, offset: 1272)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !975, file: !14, line: 684, baseType: !1865, size: 64, offset: 1280)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !975, file: !14, line: 691, baseType: !260, size: 64, offset: 1344)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !975, file: !14, line: 692, baseType: !756, size: 320, offset: 1408)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !975, file: !14, line: 694, baseType: !260, size: 64, offset: 1728)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !975, file: !14, line: 695, baseType: !260, size: 64, offset: 1792)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !975, file: !14, line: 697, baseType: !679, size: 128, offset: 1856)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !975, file: !14, line: 698, baseType: !201, size: 128, offset: 1984)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !975, file: !14, line: 707, baseType: !201, size: 128, offset: 2112)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !975, file: !14, line: 708, baseType: !201, size: 128, offset: 2240)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !14, line: 709, baseType: !3956, size: 128, offset: 2368)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !14, line: 709, size: 128, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3956, file: !14, line: 710, baseType: !675, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3956, file: !14, line: 711, baseType: !598, size: 128, align: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !975, file: !14, line: 713, baseType: !613, size: 64, offset: 2496)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !975, file: !14, line: 714, baseType: !613, size: 64, offset: 2560)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !975, file: !14, line: 715, baseType: !381, size: 32, offset: 2624)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !975, file: !14, line: 716, baseType: !381, size: 32, offset: 2656)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !975, file: !14, line: 717, baseType: !381, size: 32, offset: 2688)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !975, file: !14, line: 719, baseType: !381, size: 32, offset: 2720)
!3966 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !14, line: 721, baseType: !3967, size: 64, offset: 2752)
!3967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !14, line: 721, size: 64, elements: !3968)
!3968 = !{!3969, !4098}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3967, file: !14, line: 722, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3972)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3973)
!3973 = !{!3974, !3975, !3979, !3984, !3988, !3989, !3990, !3996, !4009, !4017, !4021, !4022, !4026, !4027, !4031, !4036, !4037, !4041, !4045, !4051, !4052, !4056, !4057, !4061, !4065, !4066, !4071, !4075, !4079, !4083, !4087, !4088, !4094}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3972, file: !14, line: 1915, baseType: !1209, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3972, file: !14, line: 1916, baseType: !3976, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!634, !585, !634, !109}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3972, file: !14, line: 1917, baseType: !3980, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DISubroutineType(types: !3982)
!3982 = !{!454, !585, !423, !468, !3983}
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3972, file: !14, line: 1918, baseType: !3985, size: 64, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!454, !585, !267, !468, !3983}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3972, file: !14, line: 1919, baseType: !3122, size: 64, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3972, file: !14, line: 1920, baseType: !3122, size: 64, offset: 320)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3972, file: !14, line: 1921, baseType: !3991, size: 64, offset: 384)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!109, !3125, !3994, !7}
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3972, file: !14, line: 1923, baseType: !3997, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!109, !585, !4000}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !4002)
!4002 = !{!4003, !4008}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4001, file: !14, line: 1859, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !4005)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!485, !4000, !267, !109, !634, !731, !7}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4001, file: !14, line: 1860, baseType: !634, size: 64, offset: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3972, file: !14, line: 1924, baseType: !4010, size: 64, offset: 512)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!4013, !585, !4015}
!4013 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !4014, line: 59, baseType: !7)
!4014 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !533, line: 31, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3972, file: !14, line: 1925, baseType: !4018, size: 64, offset: 576)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!458, !585, !7, !260}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3972, file: !14, line: 1926, baseType: !4018, size: 64, offset: 640)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3972, file: !14, line: 1927, baseType: !4023, size: 64, offset: 704)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!109, !585, !3282}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3972, file: !14, line: 1928, baseType: !260, size: 64, offset: 768)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3972, file: !14, line: 1929, baseType: !4028, size: 64, offset: 832)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!109, !974, !585}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3972, file: !14, line: 1930, baseType: !4032, size: 64, offset: 896)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!109, !585, !4035}
!4035 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !192)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3972, file: !14, line: 1931, baseType: !4028, size: 64, offset: 960)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3972, file: !14, line: 1932, baseType: !4038, size: 64, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!109, !585, !634, !634, !109}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3972, file: !14, line: 1933, baseType: !4042, size: 64, offset: 1088)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!109, !109, !585, !109}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3972, file: !14, line: 1934, baseType: !4046, size: 64, offset: 1152)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!109, !585, !109, !4049}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3972, file: !14, line: 1935, baseType: !2277, size: 64, offset: 1216)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3972, file: !14, line: 1936, baseType: !4053, size: 64, offset: 1280)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!109, !109}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3972, file: !14, line: 1937, baseType: !4046, size: 64, offset: 1344)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3972, file: !14, line: 1938, baseType: !4058, size: 64, offset: 1408)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!454, !2962, !585, !3983, !468, !7}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3972, file: !14, line: 1939, baseType: !4062, size: 64, offset: 1472)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!454, !585, !3983, !2962, !468, !7}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3972, file: !14, line: 1940, baseType: !3179, size: 64, offset: 1536)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3972, file: !14, line: 1941, baseType: !4067, size: 64, offset: 1600)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!109, !585, !109, !4070, !3099}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3972, file: !14, line: 1942, baseType: !4072, size: 64, offset: 1664)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!458, !585, !109, !634, !634}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3972, file: !14, line: 1944, baseType: !4076, size: 64, offset: 1728)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !1667, !585}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3972, file: !14, line: 1948, baseType: !4080, size: 64, offset: 1792)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!454, !585, !634, !585, !634, !468, !7}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3972, file: !14, line: 1950, baseType: !4084, size: 64, offset: 1856)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!634, !585, !634, !585, !634, !634, !7}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3972, file: !14, line: 1953, baseType: !4038, size: 64, offset: 1920)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3972, file: !14, line: 1954, baseType: !4089, size: 64, offset: 1984)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!109, !4092, !7}
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3972, file: !14, line: 1955, baseType: !4095, size: 64, offset: 2048)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!109, !4092, !3994, !7}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3967, file: !14, line: 723, baseType: !1618, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !975, file: !14, line: 725, baseType: !4100, size: 64, offset: 2816)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !975, file: !14, line: 726, baseType: !2991, size: 1536, align: 64, offset: 2880)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !975, file: !14, line: 727, baseType: !201, size: 128, offset: 4416)
!4104 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !14, line: 728, baseType: !4105, size: 64, offset: 4544)
!4105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !14, line: 728, size: 64, elements: !4106)
!4106 = !{!4107, !4108, !4111, !4112}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4105, file: !14, line: 729, baseType: !2962, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4105, file: !14, line: 730, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4105, file: !14, line: 731, baseType: !423, size: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4105, file: !14, line: 732, baseType: !7, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !975, file: !14, line: 735, baseType: !246, size: 32, offset: 4608)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !975, file: !14, line: 738, baseType: !246, size: 32, offset: 4640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !975, file: !14, line: 739, baseType: !3809, size: 64, offset: 4672)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !975, file: !14, line: 750, baseType: !192, size: 64, offset: 4736)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !935, file: !936, line: 91, baseType: !4118, size: 256, offset: 448)
!4118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !3685)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !935, file: !936, line: 94, baseType: !4120, size: 64, offset: 704)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4121, line: 25, size: 64, elements: !4122)
!4121 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4122 = !{!4123}
!4123 = !DIDerivedType(tag: DW_TAG_member, scope: !4120, file: !4121, line: 26, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4120, file: !4121, line: 26, size: 64, elements: !4125)
!4125 = !{!4126, !4127}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4124, file: !4121, line: 28, baseType: !732, size: 64, align: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, scope: !4124, file: !4121, line: 30, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4124, file: !4121, line: 30, size: 64, elements: !4129)
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4128, file: !4121, line: 31, baseType: !361, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4128, file: !4121, line: 32, baseType: !109, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !935, file: !936, line: 95, baseType: !3824, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !935, file: !936, line: 96, baseType: !1176, size: 64, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !935, file: !936, line: 97, baseType: !260, size: 64, offset: 896)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !935, file: !936, line: 98, baseType: !192, size: 64, offset: 960)
!4136 = !DIDerivedType(tag: DW_TAG_member, scope: !935, file: !936, line: 100, baseType: !4137, size: 128, offset: 1024)
!4137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !936, line: 100, size: 128, elements: !4138)
!4138 = !{!4139, !4140}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4137, file: !936, line: 101, baseType: !201, size: 128)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4137, file: !936, line: 102, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !935, file: !936, line: 104, baseType: !201, size: 128, offset: 1152)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !935, file: !936, line: 105, baseType: !201, size: 128, offset: 1280)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !935, file: !936, line: 113, baseType: !4145, size: 128, offset: 1408)
!4145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !935, file: !936, line: 109, size: 128, elements: !4146)
!4146 = !{!4147, !4148, !4149}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4145, file: !936, line: 110, baseType: !679, size: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4145, file: !936, line: 111, baseType: !950, size: 128)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4145, file: !936, line: 112, baseType: !598, size: 128, align: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !930, file: !931, line: 72, baseType: !1176, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !930, file: !931, line: 73, baseType: !109, size: 32, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !930, file: !931, line: 74, baseType: !1010, size: 64, offset: 192)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !925, file: !926, line: 10, baseType: !934, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !586, file: !14, line: 1015, baseType: !974, size: 64, offset: 1344)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !586, file: !14, line: 1016, baseType: !3970, size: 64, offset: 1408)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !586, file: !14, line: 1018, baseType: !731, size: 64, offset: 1472)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !586, file: !14, line: 1020, baseType: !192, size: 64, offset: 1536)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !586, file: !14, line: 1023, baseType: !192, size: 64, offset: 1600)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !586, file: !14, line: 1027, baseType: !4160, size: 64, offset: 1664)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !586, file: !14, line: 1029, baseType: !2990, size: 64, offset: 1728)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !586, file: !14, line: 1030, baseType: !3189, size: 32, offset: 1792)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !586, file: !14, line: 1031, baseType: !3189, size: 32, offset: 1824)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !581, file: !533, line: 255, baseType: !1667, size: 64, offset: 128)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !581, file: !533, line: 256, baseType: !192, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !581, file: !533, line: 259, baseType: !621, size: 256, offset: 256)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !581, file: !533, line: 260, baseType: !621, size: 256, offset: 512)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !581, file: !533, line: 261, baseType: !109, size: 32, offset: 768)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !581, file: !533, line: 262, baseType: !201, size: 128, offset: 832)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !581, file: !533, line: 263, baseType: !423, size: 64, offset: 960)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !581, file: !533, line: 265, baseType: !468, size: 64, offset: 1024)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !581, file: !533, line: 266, baseType: !485, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !581, file: !533, line: 267, baseType: !485, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !581, file: !533, line: 268, baseType: !3325, size: 64, offset: 1152)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !574, file: !533, line: 277, baseType: !4176, size: 64, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !580}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !574, file: !533, line: 290, baseType: !4180, size: 64, offset: 128)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!109, !1667, !192}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !574, file: !533, line: 292, baseType: !4184, size: 64, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4185, size: 64)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!192, !1667, !3983}
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !574, file: !533, line: 293, baseType: !4188, size: 64, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{!192, !1667, !192, !3983}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !574, file: !533, line: 294, baseType: !4192, size: 64, offset: 320)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DISubroutineType(types: !4194)
!4194 = !{null, !1667, !192}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !574, file: !533, line: 296, baseType: !4196, size: 64, offset: 384)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{!454, !580, !423, !468, !634}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !574, file: !533, line: 306, baseType: !468, size: 64, offset: 448)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !574, file: !533, line: 313, baseType: !485, size: 8, offset: 512)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !574, file: !533, line: 314, baseType: !4196, size: 64, offset: 576)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !574, file: !533, line: 317, baseType: !4203, size: 64, offset: 640)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!4013, !580, !4015}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !574, file: !533, line: 320, baseType: !4207, size: 64, offset: 704)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!109, !580, !3282}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !569, file: !533, line: 176, baseType: !4211, size: 64, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !533, line: 35, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !569, file: !533, line: 177, baseType: !634, size: 64, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !569, file: !533, line: 178, baseType: !531, size: 64, offset: 192)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !532, file: !533, line: 215, baseType: !192, size: 64, offset: 768)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !532, file: !533, line: 221, baseType: !731, size: 64, offset: 832)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !532, file: !533, line: 223, baseType: !225, size: 16, offset: 896)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !532, file: !533, line: 224, baseType: !347, size: 16, offset: 912)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !532, file: !533, line: 225, baseType: !4220, size: 64, offset: 960)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !533, line: 36, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !532, file: !533, line: 227, baseType: !598, size: 128, align: 64, offset: 1024)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !349, file: !350, line: 71, baseType: !4224, size: 32, offset: 448)
!4224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4225, line: 19, size: 32, elements: !4226)
!4225 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4226 = !{!4227}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4224, file: !4225, line: 20, baseType: !666, size: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !349, file: !350, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !349, file: !350, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !349, file: !350, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !349, file: !350, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !349, file: !350, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !339, file: !340, line: 88, baseType: !4234, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!347, !348, !4237, !109}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !340, line: 175, size: 512, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243, !4247, !4251, !4252}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4238, file: !340, line: 176, baseType: !460, size: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4238, file: !340, line: 177, baseType: !468, size: 64, offset: 128)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4238, file: !340, line: 178, baseType: !192, size: 64, offset: 192)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !4238, file: !340, line: 179, baseType: !4244, size: 64, offset: 256)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!2990}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4238, file: !340, line: 180, baseType: !4248, size: 64, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!454, !585, !348, !4237, !423, !634, !468}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4238, file: !340, line: 182, baseType: !4248, size: 64, offset: 384)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4238, file: !340, line: 184, baseType: !4253, size: 64, offset: 448)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!109, !585, !348, !4237, !3282}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !339, file: !340, line: 90, baseType: !4257, size: 64, offset: 192)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !339, file: !340, line: 91, baseType: !4259, size: 64, offset: 256)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !263, file: !163, line: 932, baseType: !336, size: 64, offset: 896)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !263, file: !163, line: 933, baseType: !4262, size: 1152, offset: 960)
!4262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4263)
!4263 = !{!4264, !4265, !4682, !4683, !4684, !4685, !4686, !4698, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4262, file: !88, line: 97, baseType: !267, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4262, file: !88, line: 98, baseType: !4266, size: 64, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4268)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4269, line: 80, size: 1344, elements: !4270)
!4269 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4270 = !{!4271, !4272, !4273, !4274, !4275, !4276, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4672, !4673, !4674, !4675, !4676, !4677, !4681}
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4268, file: !4269, line: 81, baseType: !267, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4268, file: !4269, line: 82, baseType: !267, size: 64, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4268, file: !4269, line: 83, baseType: !336, size: 64, offset: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4268, file: !4269, line: 84, baseType: !336, size: 64, offset: 192)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4268, file: !4269, line: 85, baseType: !336, size: 64, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4268, file: !4269, line: 87, baseType: !4277, size: 64, offset: 320)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!109, !4280, !4344}
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4288, !4289, !4342, !4343, !4345, !4346, !4347, !4348, !4355, !4447, !4460, !4470, !4474, !4476, !4477, !4478, !4482, !4489, !4490, !4493, !4496, !4500, !4603, !4604, !4605, !4606, !4607, !4608, !4638, !4639, !4640, !4643, !4646, !4655, !4656, !4657, !4658, !4659, !4660}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4281, file: !94, line: 706, baseType: !349, size: 512)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4281, file: !94, line: 707, baseType: !4280, size: 64, offset: 512)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4281, file: !94, line: 709, baseType: !4286, size: 64, offset: 576)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4281, file: !94, line: 711, baseType: !267, size: 64, offset: 640)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4281, file: !94, line: 712, baseType: !4290, size: 64, offset: 704)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4292)
!4292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4293)
!4293 = !{!4294, !4295, !4296, !4302, !4307, !4311}
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4292, file: !94, line: 90, baseType: !267, size: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4292, file: !94, line: 91, baseType: !336, size: 64, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4292, file: !94, line: 92, baseType: !4297, size: 64, offset: 128)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!109, !4300, !418}
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4281)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4292, file: !94, line: 93, baseType: !4303, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!423, !4300, !4306, !515, !523}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4292, file: !94, line: 95, baseType: !4308, size: 64, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{null, !4280}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4292, file: !94, line: 97, baseType: !4312, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4315)
!4315 = !{!4316, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4314, file: !101, line: 287, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!109, !4280}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4314, file: !101, line: 288, baseType: !4308, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4314, file: !101, line: 289, baseType: !4317, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4314, file: !101, line: 290, baseType: !4317, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4314, file: !101, line: 291, baseType: !4317, size: 64, offset: 256)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4314, file: !101, line: 292, baseType: !4317, size: 64, offset: 320)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4314, file: !101, line: 293, baseType: !4317, size: 64, offset: 384)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4314, file: !101, line: 294, baseType: !4317, size: 64, offset: 448)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4314, file: !101, line: 295, baseType: !4317, size: 64, offset: 512)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4314, file: !101, line: 296, baseType: !4317, size: 64, offset: 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4314, file: !101, line: 297, baseType: !4317, size: 64, offset: 640)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4314, file: !101, line: 298, baseType: !4317, size: 64, offset: 704)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4314, file: !101, line: 299, baseType: !4317, size: 64, offset: 768)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4314, file: !101, line: 300, baseType: !4317, size: 64, offset: 832)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4314, file: !101, line: 301, baseType: !4317, size: 64, offset: 896)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4314, file: !101, line: 302, baseType: !4317, size: 64, offset: 960)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4314, file: !101, line: 303, baseType: !4317, size: 64, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4314, file: !101, line: 304, baseType: !4317, size: 64, offset: 1088)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4314, file: !101, line: 305, baseType: !4317, size: 64, offset: 1152)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4314, file: !101, line: 306, baseType: !4317, size: 64, offset: 1216)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4314, file: !101, line: 307, baseType: !4317, size: 64, offset: 1280)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4314, file: !101, line: 308, baseType: !4317, size: 64, offset: 1344)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4314, file: !101, line: 309, baseType: !4317, size: 64, offset: 1408)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4281, file: !94, line: 714, baseType: !4266, size: 64, offset: 768)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4281, file: !94, line: 715, baseType: !4344, size: 64, offset: 832)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4281, file: !94, line: 717, baseType: !192, size: 64, offset: 896)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4281, file: !94, line: 719, baseType: !192, size: 64, offset: 960)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4281, file: !94, line: 721, baseType: !621, size: 256, offset: 1024)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4281, file: !94, line: 725, baseType: !4349, size: 448, offset: 1280)
!4349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4350)
!4350 = !{!4351, !4352, !4353, !4354}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4349, file: !94, line: 518, baseType: !201, size: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4349, file: !94, line: 519, baseType: !201, size: 128, offset: 128)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4349, file: !94, line: 520, baseType: !201, size: 128, offset: 256)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4349, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4281, file: !94, line: 726, baseType: !4356, size: 2496, offset: 1728)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4357)
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4440, !4444}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4356, file: !101, line: 664, baseType: !297, size: 32)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4356, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4356, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4356, file: !101, line: 667, baseType: !485, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4356, file: !101, line: 668, baseType: !485, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4356, file: !101, line: 669, baseType: !485, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4356, file: !101, line: 670, baseType: !485, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4356, file: !101, line: 671, baseType: !485, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4356, file: !101, line: 672, baseType: !485, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4356, file: !101, line: 673, baseType: !485, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4356, file: !101, line: 674, baseType: !485, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4356, file: !101, line: 675, baseType: !245, size: 32, offset: 64)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4356, file: !101, line: 676, baseType: !361, size: 32, offset: 96)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4356, file: !101, line: 678, baseType: !201, size: 128, offset: 128)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4356, file: !101, line: 679, baseType: !1229, size: 256, offset: 256)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4356, file: !101, line: 680, baseType: !4374, size: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4376, line: 43, size: 1536, elements: !4377)
!4376 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4375, file: !4376, line: 44, baseType: !267, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4375, file: !4376, line: 45, baseType: !109, size: 32, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4375, file: !4376, line: 46, baseType: !201, size: 128, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4375, file: !4376, line: 47, baseType: !361, size: 32, offset: 256)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4375, file: !4376, line: 48, baseType: !4383, size: 64, offset: 320)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4375, file: !4376, line: 49, baseType: !1477, size: 320, offset: 384)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4375, file: !4376, line: 50, baseType: !260, size: 64, offset: 704)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4375, file: !4376, line: 51, baseType: !2088, size: 64, offset: 768)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4375, file: !4376, line: 52, baseType: !2088, size: 64, offset: 832)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4375, file: !4376, line: 53, baseType: !2088, size: 64, offset: 896)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4375, file: !4376, line: 54, baseType: !2088, size: 64, offset: 960)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4375, file: !4376, line: 55, baseType: !2088, size: 64, offset: 1024)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4375, file: !4376, line: 56, baseType: !260, size: 64, offset: 1088)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4375, file: !4376, line: 57, baseType: !260, size: 64, offset: 1152)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4375, file: !4376, line: 58, baseType: !260, size: 64, offset: 1216)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4375, file: !4376, line: 59, baseType: !260, size: 64, offset: 1280)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4375, file: !4376, line: 60, baseType: !260, size: 64, offset: 1344)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4375, file: !4376, line: 61, baseType: !4280, size: 64, offset: 1408)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4375, file: !4376, line: 62, baseType: !485, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4375, file: !4376, line: 63, baseType: !485, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4356, file: !101, line: 681, baseType: !485, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4356, file: !101, line: 682, baseType: !485, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4356, file: !101, line: 683, baseType: !485, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4356, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4356, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4356, file: !101, line: 690, baseType: !2080, size: 512, offset: 640)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4356, file: !101, line: 691, baseType: !731, size: 64, offset: 1152)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4356, file: !101, line: 692, baseType: !1489, size: 256, offset: 1216)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4356, file: !101, line: 693, baseType: !688, size: 192, offset: 1472)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4356, file: !101, line: 694, baseType: !4383, size: 64, offset: 1664)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4356, file: !101, line: 695, baseType: !381, size: 32, offset: 1728)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4356, file: !101, line: 696, baseType: !381, size: 32, offset: 1760)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4356, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4356, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4356, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4356, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4356, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4356, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4356, file: !101, line: 703, baseType: !485, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4356, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4356, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4356, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4356, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4356, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4356, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4356, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4356, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4356, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4356, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4356, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4356, file: !101, line: 715, baseType: !731, size: 64, offset: 2048)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4356, file: !101, line: 716, baseType: !731, size: 64, offset: 2112)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4356, file: !101, line: 717, baseType: !731, size: 64, offset: 2176)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4356, file: !101, line: 718, baseType: !731, size: 64, offset: 2240)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4356, file: !101, line: 720, baseType: !4435, size: 64, offset: 2304)
!4435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4437)
!4437 = !{!4438, !4439}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4436, file: !101, line: 633, baseType: !361, size: 32)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4436, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4356, file: !101, line: 721, baseType: !4441, size: 64, offset: 2368)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !4280, !748}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4356, file: !101, line: 722, baseType: !4445, size: 64, offset: 2432)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4281, file: !94, line: 727, baseType: !4448, size: 64, offset: 4224)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4450)
!4450 = !{!4451, !4452, !4453, !4457, !4458, !4459}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4449, file: !101, line: 743, baseType: !4314, size: 1472)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4449, file: !101, line: 744, baseType: !4317, size: 64, offset: 1472)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4449, file: !101, line: 745, baseType: !4454, size: 64, offset: 1536)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{null, !4280, !485}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4449, file: !101, line: 746, baseType: !4317, size: 64, offset: 1600)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4449, file: !101, line: 747, baseType: !4308, size: 64, offset: 1664)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4449, file: !101, line: 748, baseType: !4308, size: 64, offset: 1728)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4281, file: !94, line: 736, baseType: !4461, size: 128, offset: 4288)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4462)
!4462 = !{!4463, !4467}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4461, file: !94, line: 531, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4466, line: 13, flags: DIFlagFwdDecl)
!4466 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4461, file: !94, line: 532, baseType: !4468, size: 64, offset: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4281, file: !94, line: 738, baseType: !4471, size: 64, offset: 4416)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4473)
!4473 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4281, file: !94, line: 740, baseType: !4475, size: 64, offset: 4480)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4281, file: !94, line: 741, baseType: !731, size: 64, offset: 4544)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4281, file: !94, line: 746, baseType: !731, size: 64, offset: 4608)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4281, file: !94, line: 747, baseType: !4479, size: 64, offset: 4672)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4481)
!4481 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4281, file: !94, line: 749, baseType: !4483, size: 64, offset: 4736)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4485)
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4484, file: !94, line: 433, baseType: !7, size: 32)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4484, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4484, file: !94, line: 435, baseType: !260, size: 64, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4281, file: !94, line: 751, baseType: !201, size: 128, offset: 4800)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4281, file: !94, line: 762, baseType: !4491, size: 64, offset: 4928)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4281, file: !94, line: 770, baseType: !4494, offset: 4992)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4495, line: 5, elements: !1518)
!4495 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4281, file: !94, line: 772, baseType: !4497, size: 64, offset: 4992)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4499, line: 18, flags: DIFlagFwdDecl)
!4499 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4281, file: !94, line: 773, baseType: !4501, size: 64, offset: 5056)
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4503, line: 41, size: 512, elements: !4504)
!4503 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4504 = !{!4505, !4506, !4599, !4600, !4601, !4602}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4502, file: !4503, line: 42, baseType: !4501, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4502, file: !4503, line: 43, baseType: !4507, size: 64, offset: 64)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4509)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4503, line: 125, size: 1408, elements: !4510)
!4510 = !{!4511, !4515, !4519, !4525, !4529, !4530, !4534, !4538, !4542, !4546, !4550, !4551, !4555, !4559, !4563, !4574, !4575, !4576, !4577, !4587, !4591, !4595}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4509, file: !4503, line: 126, baseType: !4512, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!4501, !4501}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4509, file: !4503, line: 127, baseType: !4516, size: 64, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4517, size: 64)
!4517 = !DISubroutineType(types: !4518)
!4518 = !{null, !4501}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4509, file: !4503, line: 128, baseType: !4520, size: 64, offset: 128)
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!485, !4523}
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4502)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4509, file: !4503, line: 129, baseType: !4526, size: 64, offset: 192)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!495, !4523, !4300}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4509, file: !4503, line: 131, baseType: !4520, size: 64, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4509, file: !4503, line: 133, baseType: !4531, size: 64, offset: 320)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!141, !4523}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4509, file: !4503, line: 134, baseType: !4535, size: 64, offset: 384)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!485, !4523, !267}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4509, file: !4503, line: 136, baseType: !4539, size: 64, offset: 448)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!109, !4523, !267, !7, !192, !468}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4509, file: !4503, line: 141, baseType: !4543, size: 64, offset: 512)
!4543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4544, size: 64)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!109, !4523, !267, !1566, !468}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4509, file: !4503, line: 144, baseType: !4547, size: 64, offset: 576)
!4547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4548, size: 64)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!267, !4523}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4509, file: !4503, line: 145, baseType: !4547, size: 64, offset: 640)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4509, file: !4503, line: 146, baseType: !4552, size: 64, offset: 704)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4553, size: 64)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!4501, !4523}
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4509, file: !4503, line: 148, baseType: !4556, size: 64, offset: 768)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!4501, !4523, !4501}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4509, file: !4503, line: 151, baseType: !4560, size: 64, offset: 832)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!4501, !4523, !267}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4509, file: !4503, line: 153, baseType: !4564, size: 64, offset: 896)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!109, !4523, !267, !267, !7, !7, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4503, line: 94, size: 640, elements: !4569)
!4569 = !{!4570, !4571, !4572}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4568, file: !4503, line: 95, baseType: !4501, size: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4568, file: !4503, line: 96, baseType: !7, size: 32, offset: 64)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4568, file: !4503, line: 97, baseType: !4573, size: 512, offset: 128)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 512, elements: !2123)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4509, file: !4503, line: 158, baseType: !4556, size: 64, offset: 960)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4509, file: !4503, line: 161, baseType: !4552, size: 64, offset: 1024)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4509, file: !4503, line: 163, baseType: !4512, size: 64, offset: 1088)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4509, file: !4503, line: 164, baseType: !4578, size: 64, offset: 1152)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!109, !4523, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4503, line: 73, size: 128, elements: !4583)
!4583 = !{!4584, !4585, !4586}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4582, file: !4503, line: 74, baseType: !7, size: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4582, file: !4503, line: 75, baseType: !7, size: 32, offset: 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4582, file: !4503, line: 76, baseType: !4523, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4509, file: !4503, line: 166, baseType: !4588, size: 64, offset: 1216)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!192, !4501, !109}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4509, file: !4503, line: 167, baseType: !4592, size: 64, offset: 1280)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!109, !4523, !7}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4509, file: !4503, line: 168, baseType: !4596, size: 64, offset: 1344)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!109, !4501}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4502, file: !4503, line: 44, baseType: !4280, size: 64, offset: 128)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4502, file: !4503, line: 45, baseType: !201, size: 128, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4502, file: !4503, line: 46, baseType: !201, size: 128, offset: 320)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4502, file: !4503, line: 47, baseType: !231, size: 8, offset: 448)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4281, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4281, file: !94, line: 778, baseType: !1045, size: 32, offset: 5152)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4281, file: !94, line: 779, baseType: !245, size: 32, offset: 5184)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4281, file: !94, line: 781, baseType: !361, size: 32, offset: 5216)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4281, file: !94, line: 782, baseType: !201, size: 128, offset: 5248)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4281, file: !94, line: 784, baseType: !4609, size: 64, offset: 5376)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4611)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4612, line: 52, size: 768, elements: !4613)
!4612 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4622, !4626, !4627, !4628, !4629, !4633, !4637}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4611, file: !4612, line: 53, baseType: !267, size: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4611, file: !4612, line: 55, baseType: !336, size: 64, offset: 64)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4611, file: !4612, line: 56, baseType: !336, size: 64, offset: 128)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4611, file: !4612, line: 58, baseType: !4297, size: 64, offset: 192)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4611, file: !4612, line: 59, baseType: !4619, size: 64, offset: 256)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!423, !4300, !4306}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4611, file: !4612, line: 61, baseType: !4623, size: 64, offset: 320)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{null, !4609}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4611, file: !4612, line: 62, baseType: !4308, size: 64, offset: 384)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4611, file: !4612, line: 64, baseType: !4317, size: 64, offset: 448)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4611, file: !4612, line: 66, baseType: !476, size: 64, offset: 512)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4611, file: !4612, line: 67, baseType: !4630, size: 64, offset: 576)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!495, !4300}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4611, file: !4612, line: 69, baseType: !4634, size: 64, offset: 640)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{null, !4300, !515, !523}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4611, file: !4612, line: 71, baseType: !4312, size: 64, offset: 704)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4281, file: !94, line: 785, baseType: !336, size: 64, offset: 5440)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4281, file: !94, line: 787, baseType: !4308, size: 64, offset: 5504)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4281, file: !94, line: 788, baseType: !4641, size: 64, offset: 5568)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4281, file: !94, line: 789, baseType: !4644, size: 64, offset: 5632)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4281, file: !94, line: 791, baseType: !4647, size: 64, offset: 5696)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4648, file: !94, line: 598, baseType: !116, size: 32)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4648, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4648, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4648, file: !94, line: 601, baseType: !485, size: 8, offset: 96)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4648, file: !94, line: 602, baseType: !485, size: 8, offset: 104)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4281, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4281, file: !94, line: 795, baseType: !485, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4281, file: !94, line: 796, baseType: !485, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4281, file: !94, line: 797, baseType: !485, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4281, file: !94, line: 798, baseType: !485, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4281, file: !94, line: 799, baseType: !485, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4268, file: !4269, line: 88, baseType: !4297, size: 64, offset: 384)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4268, file: !4269, line: 89, baseType: !4317, size: 64, offset: 448)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4268, file: !4269, line: 90, baseType: !4308, size: 64, offset: 512)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4268, file: !4269, line: 91, baseType: !4308, size: 64, offset: 576)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4268, file: !4269, line: 92, baseType: !4308, size: 64, offset: 640)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4268, file: !4269, line: 94, baseType: !4317, size: 64, offset: 704)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4268, file: !4269, line: 95, baseType: !4317, size: 64, offset: 768)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4268, file: !4269, line: 97, baseType: !4669, size: 64, offset: 832)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = !DISubroutineType(types: !4671)
!4671 = !{!109, !4280, !297}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4268, file: !4269, line: 98, baseType: !4317, size: 64, offset: 896)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4268, file: !4269, line: 100, baseType: !4317, size: 64, offset: 960)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4268, file: !4269, line: 102, baseType: !4317, size: 64, offset: 1024)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4268, file: !4269, line: 103, baseType: !4308, size: 64, offset: 1088)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4268, file: !4269, line: 105, baseType: !4312, size: 64, offset: 1152)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4268, file: !4269, line: 107, baseType: !4678, size: 64, offset: 1216)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4680)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4269, line: 107, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4268, file: !4269, line: 109, baseType: !485, size: 8, offset: 1280)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4262, file: !88, line: 100, baseType: !1209, size: 64, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4262, file: !88, line: 101, baseType: !267, size: 64, offset: 192)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4262, file: !88, line: 103, baseType: !485, size: 8, offset: 256)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4262, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4262, file: !88, line: 106, baseType: !4687, size: 64, offset: 320)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4689)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !274, line: 282, size: 1600, elements: !4690)
!4690 = !{!4691, !4692, !4693, !4697}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4689, file: !274, line: 283, baseType: !3812, size: 256)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4689, file: !274, line: 284, baseType: !3812, size: 256, offset: 256)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4689, file: !274, line: 285, baseType: !4694, size: 1024, offset: 512)
!4694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 1024, elements: !4695)
!4695 = !{!4696}
!4696 = !DISubrange(count: 128)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4689, file: !274, line: 286, baseType: !495, size: 64, offset: 1536)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4262, file: !88, line: 107, baseType: !4699, size: 64, offset: 384)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4701)
!4701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !274, line: 217, size: 256, elements: !4702)
!4702 = !{!4703, !4704, !4705, !4706}
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4701, file: !274, line: 218, baseType: !3819, size: 128)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4701, file: !274, line: 219, baseType: !283, size: 64, offset: 128)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4701, file: !274, line: 220, baseType: !246, size: 32, offset: 192)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4701, file: !274, line: 221, baseType: !246, size: 32, offset: 224)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4262, file: !88, line: 109, baseType: !4317, size: 64, offset: 448)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4262, file: !88, line: 110, baseType: !4308, size: 64, offset: 512)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4262, file: !88, line: 111, baseType: !4317, size: 64, offset: 576)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4262, file: !88, line: 112, baseType: !4308, size: 64, offset: 640)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4262, file: !88, line: 113, baseType: !4669, size: 64, offset: 704)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4262, file: !88, line: 114, baseType: !4317, size: 64, offset: 768)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4262, file: !88, line: 115, baseType: !336, size: 64, offset: 832)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4262, file: !88, line: 116, baseType: !336, size: 64, offset: 896)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4262, file: !88, line: 118, baseType: !4312, size: 64, offset: 960)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4262, file: !88, line: 119, baseType: !4308, size: 64, offset: 1024)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4262, file: !88, line: 121, baseType: !4718, size: 64, offset: 1088)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !263, file: !163, line: 934, baseType: !4721, size: 192, offset: 2112)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !163, line: 801, size: 192, elements: !4722)
!4722 = !{!4723, !4724}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4721, file: !163, line: 802, baseType: !361, size: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4721, file: !163, line: 803, baseType: !201, size: 128, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !263, file: !163, line: 935, baseType: !485, size: 8, offset: 2304)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !212, file: !163, line: 358, baseType: !731, size: 64, offset: 1024)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !212, file: !163, line: 364, baseType: !4484, size: 128, offset: 1088)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !212, file: !163, line: 366, baseType: !4729, size: 32, offset: 1216)
!4729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !163, line: 171, baseType: !109)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !212, file: !163, line: 369, baseType: !231, size: 8, offset: 1248)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !212, file: !163, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !212, file: !163, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !212, file: !163, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !212, file: !163, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !212, file: !163, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !212, file: !163, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !212, file: !163, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !212, file: !163, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !212, file: !163, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !212, file: !163, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !212, file: !163, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !212, file: !163, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !212, file: !163, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !212, file: !163, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !212, file: !163, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !212, file: !163, line: 390, baseType: !7, size: 32, offset: 1280)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !212, file: !163, line: 391, baseType: !7, size: 32, offset: 1312)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !212, file: !163, line: 394, baseType: !4749, size: 64, offset: 1344)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !163, line: 316, flags: DIFlagFwdDecl)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !212, file: !163, line: 395, baseType: !256, size: 16, offset: 1408)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !212, file: !163, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !212, file: !163, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !212, file: !163, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !212, file: !163, line: 402, baseType: !325, size: 32, offset: 1440)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !212, file: !163, line: 403, baseType: !4281, size: 5824, offset: 1472)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !212, file: !163, line: 405, baseType: !109, size: 32, offset: 7296)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !212, file: !163, line: 411, baseType: !7, size: 32, offset: 7328)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !212, file: !163, line: 412, baseType: !4760, size: 5632, offset: 7360)
!4760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4761, size: 5632, elements: !4774)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4762, line: 21, size: 512, elements: !4763)
!4762 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4763 = !{!4764, !4766, !4767, !4768, !4769, !4770, !4772, !4773}
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4761, file: !4762, line: 22, baseType: !4765, size: 64)
!4765 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !202, line: 164, baseType: !3560)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4761, file: !4762, line: 23, baseType: !4765, size: 64, offset: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4761, file: !4762, line: 24, baseType: !267, size: 64, offset: 128)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4761, file: !4762, line: 25, baseType: !260, size: 64, offset: 192)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4761, file: !4762, line: 26, baseType: !260, size: 64, offset: 256)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4761, file: !4762, line: 27, baseType: !4771, size: 64, offset: 320)
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4761, file: !4762, line: 27, baseType: !4771, size: 64, offset: 384)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4761, file: !4762, line: 27, baseType: !4771, size: 64, offset: 448)
!4774 = !{!4775}
!4775 = !DISubrange(count: 11)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !212, file: !163, line: 413, baseType: !4761, size: 512, offset: 12992)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !212, file: !163, line: 415, baseType: !485, size: 8, offset: 13504)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !212, file: !163, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !212, file: !163, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !212, file: !163, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !212, file: !163, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !212, file: !163, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !212, file: !163, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !212, file: !163, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !212, file: !163, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !212, file: !163, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !212, file: !163, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !212, file: !163, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !212, file: !163, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !212, file: !163, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !212, file: !163, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !212, file: !163, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !212, file: !163, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !212, file: !163, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !212, file: !163, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !212, file: !163, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !212, file: !163, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !212, file: !163, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !212, file: !163, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !212, file: !163, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !212, file: !163, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !212, file: !163, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !212, file: !163, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !212, file: !163, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !212, file: !163, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !212, file: !163, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !212, file: !163, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !212, file: !163, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !212, file: !163, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !212, file: !163, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !212, file: !163, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !212, file: !163, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !212, file: !163, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !212, file: !163, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !212, file: !163, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !212, file: !163, line: 468, baseType: !4817, size: 16, offset: 13552)
!4817 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !163, line: 222, baseType: !225)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !212, file: !163, line: 469, baseType: !381, size: 32, offset: 13568)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !212, file: !163, line: 471, baseType: !361, size: 32, offset: 13600)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !212, file: !163, line: 472, baseType: !4821, size: 512, offset: 13632)
!4821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 512, elements: !2544)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !212, file: !163, line: 473, baseType: !675, size: 64, offset: 14144)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !212, file: !163, line: 474, baseType: !4824, size: 704, offset: 14208)
!4824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4237, size: 704, elements: !4774)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !212, file: !163, line: 475, baseType: !4824, size: 704, offset: 14912)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !212, file: !163, line: 487, baseType: !192, size: 64, offset: 15616)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !212, file: !163, line: 488, baseType: !626, size: 32, offset: 15680)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !212, file: !163, line: 490, baseType: !4829, size: 320, offset: 15744)
!4829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !163, line: 309, size: 320, elements: !4830)
!4830 = !{!4831, !4832, !4833}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4829, file: !163, line: 310, baseType: !621, size: 256)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4829, file: !163, line: 311, baseType: !7, size: 32, offset: 256)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4829, file: !163, line: 312, baseType: !231, size: 8, offset: 288)
!4834 = !DIDerivedType(tag: DW_TAG_member, scope: !212, file: !163, line: 497, baseType: !4835, size: 64, offset: 16064)
!4835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !212, file: !163, line: 497, size: 64, elements: !4836)
!4836 = !{!4837, !4864}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4835, file: !163, line: 498, baseType: !4838, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !240, line: 294, size: 1024, elements: !4840)
!4840 = !{!4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4863}
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4839, file: !240, line: 295, baseType: !109, size: 32)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4839, file: !240, line: 296, baseType: !109, size: 32, offset: 32)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4839, file: !240, line: 297, baseType: !245, size: 32, offset: 64)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4839, file: !240, line: 298, baseType: !256, size: 16, offset: 96)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4839, file: !240, line: 299, baseType: !256, size: 16, offset: 112)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4839, file: !240, line: 300, baseType: !256, size: 16, offset: 128)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4839, file: !240, line: 301, baseType: !256, size: 16, offset: 144)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4839, file: !240, line: 302, baseType: !256, size: 16, offset: 160)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4839, file: !240, line: 303, baseType: !256, size: 16, offset: 176)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4839, file: !240, line: 304, baseType: !256, size: 16, offset: 192)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4839, file: !240, line: 305, baseType: !245, size: 32, offset: 224)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4839, file: !240, line: 306, baseType: !231, size: 8, offset: 256)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4839, file: !240, line: 307, baseType: !231, size: 8, offset: 264)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4839, file: !240, line: 308, baseType: !256, size: 16, offset: 272)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4839, file: !240, line: 309, baseType: !211, size: 64, offset: 320)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4839, file: !240, line: 310, baseType: !211, size: 64, offset: 384)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4839, file: !240, line: 311, baseType: !245, size: 32, offset: 448)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4839, file: !240, line: 312, baseType: !231, size: 8, offset: 480)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4839, file: !240, line: 313, baseType: !256, size: 16, offset: 496)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4839, file: !240, line: 314, baseType: !256, size: 16, offset: 512)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4839, file: !240, line: 315, baseType: !4862, size: 384, offset: 576)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4765, size: 384, elements: !802)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4839, file: !240, line: 316, baseType: !485, size: 8, offset: 960)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4835, file: !163, line: 499, baseType: !211, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !212, file: !163, line: 501, baseType: !256, size: 16, offset: 16128)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !212, file: !163, line: 502, baseType: !231, size: 8, offset: 16144)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !212, file: !163, line: 505, baseType: !256, size: 16, offset: 16160)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !212, file: !163, line: 506, baseType: !245, size: 32, offset: 16192)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !212, file: !163, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !212, file: !163, line: 510, baseType: !256, size: 16, offset: 16240)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !212, file: !163, line: 511, baseType: !256, size: 16, offset: 16256)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !212, file: !163, line: 519, baseType: !256, size: 16, offset: 16272)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !212, file: !163, line: 520, baseType: !3560, size: 64, offset: 16320)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !212, file: !163, line: 521, baseType: !468, size: 64, offset: 16384)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !212, file: !163, line: 526, baseType: !267, size: 64, offset: 16448)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !212, file: !163, line: 528, baseType: !260, size: 64, offset: 16512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !212, file: !163, line: 531, baseType: !4878, size: 56, offset: 16576)
!4878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 56, elements: !1367)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !198, file: !163, line: 653, baseType: !201, size: 128, offset: 512)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !198, file: !163, line: 655, baseType: !4881, size: 256, offset: 640)
!4881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4771, size: 256, elements: !684)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !198, file: !163, line: 656, baseType: !201, size: 128, offset: 896)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !198, file: !163, line: 657, baseType: !4761, size: 512, offset: 1024)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !198, file: !163, line: 659, baseType: !4885, size: 64, offset: 1536)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !163, line: 773, size: 320, elements: !4887)
!4887 = !{!4888, !4892, !4896, !4900, !4904}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4886, file: !163, line: 774, baseType: !4889, size: 64)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!109, !197}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4886, file: !163, line: 775, baseType: !4893, size: 64, offset: 64)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{null, !197}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4886, file: !163, line: 776, baseType: !4897, size: 64, offset: 128)
!4897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4898, size: 64)
!4898 = !DISubroutineType(types: !4899)
!4899 = !{!192, !197, !7, !109}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4886, file: !163, line: 777, baseType: !4901, size: 64, offset: 192)
!4901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!109, !197, !7, !109, !109, !2443}
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4886, file: !163, line: 778, baseType: !4905, size: 64, offset: 256)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!109, !197, !7, !109, !109, !245}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !198, file: !163, line: 660, baseType: !192, size: 64, offset: 1600)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !198, file: !163, line: 661, baseType: !219, size: 64, offset: 1664)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !198, file: !163, line: 663, baseType: !235, size: 8, offset: 1728)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !198, file: !163, line: 664, baseType: !235, size: 8, offset: 1736)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !198, file: !163, line: 665, baseType: !235, size: 8, offset: 1744)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !198, file: !163, line: 666, baseType: !235, size: 8, offset: 1752)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !163, line: 671, baseType: !4915, size: 384, offset: 1760)
!4915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 384, elements: !4916)
!4916 = !{!4917}
!4917 = !DISubrange(count: 48)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !198, file: !163, line: 673, baseType: !225, size: 16, offset: 2144)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !198, file: !163, line: 674, baseType: !4920, size: 16, offset: 2160)
!4920 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !163, line: 255, baseType: !225)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !198, file: !163, line: 675, baseType: !4280, size: 64, offset: 2176)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !198, file: !163, line: 676, baseType: !4281, size: 5824, offset: 2240)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !198, file: !163, line: 677, baseType: !4237, size: 64, offset: 8064)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !198, file: !163, line: 678, baseType: !4237, size: 64, offset: 8128)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !198, file: !163, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !198, file: !163, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !194, file: !163, line: 78, baseType: !201, size: 128, offset: 64)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !194, file: !163, line: 79, baseType: !4929, size: 64, offset: 192)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4931, line: 58, size: 384, elements: !4932)
!4931 = !DIFile(filename: "./include/linux/pci_hotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a42d2d7f0ca70d770404ca9157ede2c9")
!4932 = !{!4933, !4963, !4964, !4965, !4966}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4930, file: !4931, line: 59, baseType: !4934, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4936)
!4936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot_ops", file: !4931, line: 38, size: 576, elements: !4937)
!4937 = !{!4938, !4942, !4943, !4947, !4951, !4956, !4957, !4958, !4959}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "enable_slot", scope: !4936, file: !4931, line: 39, baseType: !4939, size: 64)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!109, !4929}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "disable_slot", scope: !4936, file: !4931, line: 40, baseType: !4939, size: 64, offset: 64)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "set_attention_status", scope: !4936, file: !4931, line: 41, baseType: !4944, size: 64, offset: 128)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!109, !4929, !231}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_test", scope: !4936, file: !4931, line: 42, baseType: !4948, size: 64, offset: 192)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!109, !4929, !245}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "get_power_status", scope: !4936, file: !4931, line: 43, baseType: !4952, size: 64, offset: 256)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!109, !4929, !4955}
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "get_attention_status", scope: !4936, file: !4931, line: 44, baseType: !4952, size: 64, offset: 320)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "get_latch_status", scope: !4936, file: !4931, line: 45, baseType: !4952, size: 64, offset: 384)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "get_adapter_status", scope: !4936, file: !4931, line: 46, baseType: !4952, size: 64, offset: 448)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "reset_slot", scope: !4936, file: !4931, line: 47, baseType: !4960, size: 64, offset: 512)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!109, !4929, !485}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "slot_list", scope: !4930, file: !4931, line: 62, baseType: !201, size: 128, offset: 64)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "pci_slot", scope: !4930, file: !4931, line: 63, baseType: !193, size: 64, offset: 192)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4930, file: !4931, line: 64, baseType: !1209, size: 64, offset: 256)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4930, file: !4931, line: 65, baseType: !267, size: 64, offset: 320)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !194, file: !163, line: 80, baseType: !235, size: 8, offset: 256)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !194, file: !163, line: 81, baseType: !349, size: 512, offset: 320)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !205)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot_attribute", file: !240, line: 224, size: 256, elements: !4973)
!4973 = !{!4974, !4975, !4979}
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4972, file: !240, line: 225, baseType: !460, size: 128)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4972, file: !240, line: 226, baseType: !4976, size: 64, offset: 128)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!454, !193, !423}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4972, file: !240, line: 227, baseType: !4980, size: 64, offset: 192)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!454, !193, !267, !468}
!4983 = !{!4984, !4986, !4989, !4991, !4993, !4996, !4998, !5000, !5002, !0, !5004, !5009, !5011, !5013, !5015, !5018, !5020, !5023, !5025, !5027, !5030, !5032, !5037, !5039, !5042, !5044, !5046, !5048}
!4984 = !DIGlobalVariableExpression(var: !4985, expr: !DIExpression())
!4985 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_slots_kset292", scope: !2, file: !3, line: 16, type: !192, isLocal: true, isDefinition: true)
!4986 = !DIGlobalVariableExpression(var: !4987, expr: !DIExpression())
!4987 = distinct !DIGlobalVariable(scope: null, file: !3, line: 282, type: !4988, isLocal: true, isDefinition: true)
!4988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 24, elements: !424)
!4989 = !DIGlobalVariableExpression(var: !4990, expr: !DIExpression())
!4990 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_create_slot293", scope: !2, file: !3, line: 305, type: !192, isLocal: true, isDefinition: true)
!4991 = !DIGlobalVariableExpression(var: !4992, expr: !DIExpression())
!4992 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_destroy_slot294", scope: !2, file: !3, line: 324, type: !192, isLocal: true, isDefinition: true)
!4993 = !DIGlobalVariableExpression(var: !4994, expr: !DIExpression())
!4994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 346, type: !4995, isLocal: true, isDefinition: true)
!4995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 56, elements: !1367)
!4996 = !DIGlobalVariableExpression(var: !4997, expr: !DIExpression())
!4997 = distinct !DIGlobalVariable(scope: null, file: !3, line: 348, type: !3812, isLocal: true, isDefinition: true)
!4998 = !DIGlobalVariableExpression(var: !4999, expr: !DIExpression())
!4999 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_hp_create_module_link295", scope: !2, file: !3, line: 352, type: !192, isLocal: true, isDefinition: true)
!5000 = !DIGlobalVariableExpression(var: !5001, expr: !DIExpression())
!5001 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_hp_remove_module_link296", scope: !2, file: !3, line: 366, type: !192, isLocal: true, isDefinition: true)
!5002 = !DIGlobalVariableExpression(var: !5003, expr: !DIExpression())
!5003 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_slot__297_383_pci_slot_init4298", scope: !2, file: !3, line: 383, type: !192, isLocal: true, isDefinition: true)
!5004 = !DIGlobalVariableExpression(var: !5005, expr: !DIExpression())
!5005 = distinct !DIGlobalVariable(scope: null, file: !153, line: 480, type: !5006, isLocal: true, isDefinition: true)
!5006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 168, elements: !5007)
!5007 = !{!5008}
!5008 = !DISubrange(count: 21)
!5009 = !DIGlobalVariableExpression(var: !5010, expr: !DIExpression())
!5010 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !801, isLocal: true, isDefinition: true)
!5011 = !DIGlobalVariableExpression(var: !5012, expr: !DIExpression())
!5012 = distinct !DIGlobalVariable(name: "pci_slot_ktype", scope: !2, file: !3, line: 102, type: !438, isLocal: true, isDefinition: true)
!5013 = !DIGlobalVariableExpression(var: !5014, expr: !DIExpression())
!5014 = distinct !DIGlobalVariable(name: "pci_slot_sysfs_ops", scope: !2, file: !3, line: 34, type: !447, isLocal: true, isDefinition: true)
!5015 = !DIGlobalVariableExpression(var: !5016, expr: !DIExpression())
!5016 = distinct !DIGlobalVariable(name: "pci_slot_default_groups", scope: !2, file: !3, line: 100, type: !5017, isLocal: true, isDefinition: true)
!5017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 128, elements: !1365)
!5018 = !DIGlobalVariableExpression(var: !5019, expr: !DIExpression())
!5019 = distinct !DIGlobalVariable(name: "pci_slot_default_group", scope: !2, file: !3, line: 100, type: !338, isLocal: true, isDefinition: true)
!5020 = !DIGlobalVariableExpression(var: !5021, expr: !DIExpression())
!5021 = distinct !DIGlobalVariable(name: "pci_slot_default_attrs", scope: !2, file: !3, line: 94, type: !5022, isLocal: true, isDefinition: true)
!5022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 256, elements: !684)
!5023 = !DIGlobalVariableExpression(var: !5024, expr: !DIExpression())
!5024 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !2865, isLocal: true, isDefinition: true)
!5025 = !DIGlobalVariableExpression(var: !5026, expr: !DIExpression())
!5026 = distinct !DIGlobalVariable(name: "pci_slot_attr_address", scope: !2, file: !3, line: 87, type: !4972, isLocal: true, isDefinition: true)
!5027 = !DIGlobalVariableExpression(var: !5028, expr: !DIExpression())
!5028 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !5029, isLocal: true, isDefinition: true)
!5029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 88, elements: !4774)
!5030 = !DIGlobalVariableExpression(var: !5031, expr: !DIExpression())
!5031 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !2543, isLocal: true, isDefinition: true)
!5032 = !DIGlobalVariableExpression(var: !5033, expr: !DIExpression())
!5033 = distinct !DIGlobalVariable(scope: null, file: !3, line: 90, type: !5034, isLocal: true, isDefinition: true)
!5034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 112, elements: !5035)
!5035 = !{!5036}
!5036 = !DISubrange(count: 14)
!5037 = !DIGlobalVariableExpression(var: !5038, expr: !DIExpression())
!5038 = distinct !DIGlobalVariable(name: "pci_slot_attr_max_speed", scope: !2, file: !3, line: 89, type: !4972, isLocal: true, isDefinition: true)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !5041, isLocal: true, isDefinition: true)
!5041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 32, elements: !684)
!5042 = !DIGlobalVariableExpression(var: !5043, expr: !DIExpression())
!5043 = distinct !DIGlobalVariable(scope: null, file: !3, line: 92, type: !5034, isLocal: true, isDefinition: true)
!5044 = !DIGlobalVariableExpression(var: !5045, expr: !DIExpression())
!5045 = distinct !DIGlobalVariable(name: "pci_slot_attr_cur_speed", scope: !2, file: !3, line: 91, type: !4972, isLocal: true, isDefinition: true)
!5046 = !DIGlobalVariableExpression(var: !5047, expr: !DIExpression())
!5047 = distinct !DIGlobalVariable(scope: null, file: !3, line: 374, type: !801, isLocal: true, isDefinition: true)
!5048 = !DIGlobalVariableExpression(var: !5049, expr: !DIExpression())
!5049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !5050, isLocal: true, isDefinition: true)
!5050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 288, elements: !5051)
!5051 = !{!5052}
!5052 = !DISubrange(count: 36)
!5053 = !{i32 7, !"Dwarf Version", i32 5}
!5054 = !{i32 2, !"Debug Info Version", i32 3}
!5055 = !{i32 1, !"wchar_size", i32 2}
!5056 = !{i32 8, !"cf-protection-branch", i32 1}
!5057 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5058 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5059 = !{i32 1, !"Code Model", i32 2}
!5060 = !{i32 1, !"override-stack-alignment", i32 8}
!5061 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5062 = distinct !DISubprogram(name: "pci_dev_assign_slot", scope: !3, file: !3, line: 164, type: !291, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5063)
!5063 = !{!5064, !5065, !5066, !5069}
!5064 = !DILocalVariable(name: "dev", arg: 1, scope: !5062, file: !3, line: 164, type: !211)
!5065 = !DILocalVariable(name: "slot", scope: !5062, file: !3, line: 166, type: !193)
!5066 = !DILocalVariable(name: "__mptr", scope: !5067, file: !3, line: 169, type: !192)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 169, column: 2)
!5068 = distinct !DILexicalBlock(scope: !5062, file: !3, line: 169, column: 2)
!5069 = !DILocalVariable(name: "__mptr", scope: !5070, file: !3, line: 169, type: !192)
!5070 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 169, column: 2)
!5071 = distinct !DILexicalBlock(scope: !5068, file: !3, line: 169, column: 2)
!5072 = !DILocation(line: 164, column: 42, scope: !5062)
!5073 = !DILocation(line: 166, column: 2, scope: !5062)
!5074 = !DILocation(line: 166, column: 19, scope: !5062)
!5075 = !DILocation(line: 168, column: 2, scope: !5062)
!5076 = !DILocation(line: 169, column: 2, scope: !5067)
!5077 = !DILocation(line: 169, column: 2, scope: !5068)
!5078 = !DILocation(line: 169, column: 2, scope: !5071)
!5079 = !DILocation(line: 170, column: 7, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 170, column: 7)
!5081 = !DILocation(line: 170, column: 31, scope: !5080)
!5082 = !DILocation(line: 170, column: 37, scope: !5080)
!5083 = !DILocation(line: 170, column: 28, scope: !5080)
!5084 = !DILocation(line: 170, column: 7, scope: !5071)
!5085 = !DILocation(line: 171, column: 16, scope: !5080)
!5086 = !DILocation(line: 171, column: 4, scope: !5080)
!5087 = !DILocation(line: 171, column: 9, scope: !5080)
!5088 = !DILocation(line: 171, column: 14, scope: !5080)
!5089 = !DILocation(line: 169, column: 2, scope: !5070)
!5090 = distinct !{!5090, !5077, !5091, !5092, !5093}
!5091 = !DILocation(line: 171, column: 16, scope: !5068)
!5092 = !{!"llvm.loop.mustprogress"}
!5093 = !{!"llvm.loop.unroll.disable"}
!5094 = !DILocation(line: 172, column: 2, scope: !5062)
!5095 = !DILocation(line: 173, column: 1, scope: !5062)
!5096 = !DISubprogram(name: "mutex_lock", scope: !622, file: !622, line: 227, type: !5097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{null, !5099}
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!5100 = !DISubprogram(name: "mutex_unlock", scope: !622, file: !622, line: 246, type: !5097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5101 = distinct !DISubprogram(name: "pci_create_slot", scope: !3, file: !3, line: 227, type: !5102, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5104)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!193, !197, !109, !267, !4929}
!5104 = !{!5105, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5117, !5120, !5121}
!5105 = !DILocalVariable(name: "parent", arg: 1, scope: !5101, file: !3, line: 227, type: !197)
!5106 = !DILocalVariable(name: "slot_nr", arg: 2, scope: !5101, file: !3, line: 227, type: !109)
!5107 = !DILocalVariable(name: "name", arg: 3, scope: !5101, file: !3, line: 228, type: !267)
!5108 = !DILocalVariable(name: "hotplug", arg: 4, scope: !5101, file: !3, line: 229, type: !4929)
!5109 = !DILocalVariable(name: "dev", scope: !5101, file: !3, line: 231, type: !211)
!5110 = !DILocalVariable(name: "slot", scope: !5101, file: !3, line: 232, type: !193)
!5111 = !DILocalVariable(name: "err", scope: !5101, file: !3, line: 233, type: !109)
!5112 = !DILocalVariable(name: "slot_name", scope: !5101, file: !3, line: 234, type: !423)
!5113 = !DILabel(scope: !5101, name: "placeholder", file: !3, line: 258)
!5114 = !DILocalVariable(name: "__mptr", scope: !5115, file: !3, line: 289, type: !192)
!5115 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 289, column: 2)
!5116 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 289, column: 2)
!5117 = !DILocalVariable(name: "__mptr", scope: !5118, file: !3, line: 289, type: !192)
!5118 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 289, column: 2)
!5119 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 289, column: 2)
!5120 = !DILabel(scope: !5101, name: "out", file: !3, line: 297)
!5121 = !DILabel(scope: !5101, name: "err", file: !3, line: 301)
!5122 = !DILocation(line: 227, column: 50, scope: !5101)
!5123 = !DILocation(line: 227, column: 62, scope: !5101)
!5124 = !DILocation(line: 228, column: 18, scope: !5101)
!5125 = !DILocation(line: 229, column: 27, scope: !5101)
!5126 = !DILocation(line: 231, column: 2, scope: !5101)
!5127 = !DILocation(line: 231, column: 18, scope: !5101)
!5128 = !DILocation(line: 232, column: 2, scope: !5101)
!5129 = !DILocation(line: 232, column: 19, scope: !5101)
!5130 = !DILocation(line: 233, column: 2, scope: !5101)
!5131 = !DILocation(line: 233, column: 6, scope: !5101)
!5132 = !DILocation(line: 234, column: 2, scope: !5101)
!5133 = !DILocation(line: 234, column: 8, scope: !5101)
!5134 = !DILocation(line: 236, column: 2, scope: !5101)
!5135 = !DILocation(line: 238, column: 6, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 238, column: 6)
!5137 = !DILocation(line: 238, column: 14, scope: !5136)
!5138 = !DILocation(line: 238, column: 6, scope: !5101)
!5139 = !DILocation(line: 239, column: 3, scope: !5136)
!5140 = !DILocation(line: 245, column: 18, scope: !5101)
!5141 = !DILocation(line: 245, column: 26, scope: !5101)
!5142 = !DILocation(line: 245, column: 9, scope: !5101)
!5143 = !DILocation(line: 245, column: 7, scope: !5101)
!5144 = !DILocation(line: 246, column: 6, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 246, column: 6)
!5146 = !DILocation(line: 246, column: 6, scope: !5101)
!5147 = !DILocation(line: 247, column: 7, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5149, file: !3, line: 247, column: 7)
!5149 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 246, column: 12)
!5150 = !DILocation(line: 247, column: 7, scope: !5149)
!5151 = !DILocation(line: 248, column: 15, scope: !5152)
!5152 = distinct !DILexicalBlock(scope: !5153, file: !3, line: 248, column: 8)
!5153 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 247, column: 16)
!5154 = !DILocation(line: 248, column: 21, scope: !5152)
!5155 = !DILocation(line: 248, column: 13, scope: !5152)
!5156 = !DILocation(line: 249, column: 9, scope: !5152)
!5157 = !DILocation(line: 249, column: 31, scope: !5152)
!5158 = !DILocation(line: 249, column: 37, scope: !5152)
!5159 = !DILocation(line: 249, column: 19, scope: !5152)
!5160 = !DILocation(line: 249, column: 17, scope: !5152)
!5161 = !DILocation(line: 248, column: 8, scope: !5153)
!5162 = !DILocation(line: 250, column: 18, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5152, file: !3, line: 249, column: 45)
!5164 = !DILocation(line: 250, column: 24, scope: !5163)
!5165 = !DILocation(line: 250, column: 5, scope: !5163)
!5166 = !DILocation(line: 251, column: 10, scope: !5163)
!5167 = !DILocation(line: 252, column: 5, scope: !5163)
!5168 = !DILocation(line: 254, column: 3, scope: !5153)
!5169 = !DILocation(line: 255, column: 3, scope: !5149)
!5170 = !DILocation(line: 258, column: 1, scope: !5101)
!5171 = !DILocation(line: 259, column: 9, scope: !5101)
!5172 = !DILocation(line: 259, column: 7, scope: !5101)
!5173 = !DILocation(line: 260, column: 7, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 260, column: 6)
!5175 = !DILocation(line: 260, column: 6, scope: !5101)
!5176 = !DILocation(line: 261, column: 7, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 260, column: 13)
!5178 = !DILocation(line: 262, column: 3, scope: !5177)
!5179 = !DILocation(line: 265, column: 26, scope: !5101)
!5180 = !DILocation(line: 265, column: 14, scope: !5101)
!5181 = !DILocation(line: 265, column: 2, scope: !5101)
!5182 = !DILocation(line: 265, column: 8, scope: !5101)
!5183 = !DILocation(line: 265, column: 12, scope: !5101)
!5184 = !DILocation(line: 266, column: 17, scope: !5101)
!5185 = !DILocation(line: 266, column: 2, scope: !5101)
!5186 = !DILocation(line: 266, column: 8, scope: !5101)
!5187 = !DILocation(line: 266, column: 15, scope: !5101)
!5188 = !DILocation(line: 268, column: 20, scope: !5101)
!5189 = !DILocation(line: 268, column: 2, scope: !5101)
!5190 = !DILocation(line: 268, column: 8, scope: !5101)
!5191 = !DILocation(line: 268, column: 13, scope: !5101)
!5192 = !DILocation(line: 268, column: 18, scope: !5101)
!5193 = !DILocation(line: 270, column: 29, scope: !5101)
!5194 = !DILocation(line: 270, column: 14, scope: !5101)
!5195 = !DILocation(line: 270, column: 12, scope: !5101)
!5196 = !DILocation(line: 271, column: 7, scope: !5197)
!5197 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 271, column: 6)
!5198 = !DILocation(line: 271, column: 6, scope: !5101)
!5199 = !DILocation(line: 272, column: 7, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 271, column: 18)
!5201 = !DILocation(line: 273, column: 15, scope: !5200)
!5202 = !DILocation(line: 273, column: 21, scope: !5200)
!5203 = !DILocation(line: 273, column: 3, scope: !5200)
!5204 = !DILocation(line: 274, column: 9, scope: !5200)
!5205 = !DILocation(line: 274, column: 3, scope: !5200)
!5206 = !DILocation(line: 275, column: 3, scope: !5200)
!5207 = !DILocation(line: 278, column: 18, scope: !5101)
!5208 = !DILocation(line: 278, column: 24, scope: !5101)
!5209 = !DILocation(line: 278, column: 2, scope: !5101)
!5210 = !DILocation(line: 279, column: 12, scope: !5101)
!5211 = !DILocation(line: 279, column: 18, scope: !5101)
!5212 = !DILocation(line: 279, column: 25, scope: !5101)
!5213 = !DILocation(line: 279, column: 33, scope: !5101)
!5214 = !DILocation(line: 279, column: 2, scope: !5101)
!5215 = !DILocation(line: 281, column: 30, scope: !5101)
!5216 = !DILocation(line: 281, column: 36, scope: !5101)
!5217 = !DILocation(line: 282, column: 14, scope: !5101)
!5218 = !DILocation(line: 281, column: 8, scope: !5101)
!5219 = !DILocation(line: 281, column: 6, scope: !5101)
!5220 = !DILocation(line: 283, column: 6, scope: !5221)
!5221 = distinct !DILexicalBlock(scope: !5101, file: !3, line: 283, column: 6)
!5222 = !DILocation(line: 283, column: 6, scope: !5101)
!5223 = !DILocation(line: 284, column: 16, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5221, file: !3, line: 283, column: 11)
!5225 = !DILocation(line: 284, column: 22, scope: !5224)
!5226 = !DILocation(line: 284, column: 3, scope: !5224)
!5227 = !DILocation(line: 285, column: 3, scope: !5224)
!5228 = !DILocation(line: 288, column: 2, scope: !5101)
!5229 = !DILocation(line: 289, column: 2, scope: !5115)
!5230 = !DILocation(line: 289, column: 2, scope: !5116)
!5231 = !DILocation(line: 289, column: 2, scope: !5119)
!5232 = !DILocation(line: 290, column: 7, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5119, file: !3, line: 290, column: 7)
!5234 = !DILocation(line: 290, column: 31, scope: !5233)
!5235 = !DILocation(line: 290, column: 28, scope: !5233)
!5236 = !DILocation(line: 290, column: 7, scope: !5119)
!5237 = !DILocation(line: 291, column: 16, scope: !5233)
!5238 = !DILocation(line: 291, column: 4, scope: !5233)
!5239 = !DILocation(line: 291, column: 9, scope: !5233)
!5240 = !DILocation(line: 291, column: 14, scope: !5233)
!5241 = !DILocation(line: 289, column: 2, scope: !5118)
!5242 = distinct !{!5242, !5230, !5243, !5092, !5093}
!5243 = !DILocation(line: 291, column: 16, scope: !5116)
!5244 = !DILocation(line: 292, column: 2, scope: !5101)
!5245 = !DILocation(line: 294, column: 2, scope: !5101)
!5246 = !DILocation(line: 297, column: 1, scope: !5101)
!5247 = !DILocation(line: 298, column: 8, scope: !5101)
!5248 = !DILocation(line: 298, column: 2, scope: !5101)
!5249 = !DILocation(line: 299, column: 2, scope: !5101)
!5250 = !DILocation(line: 300, column: 9, scope: !5101)
!5251 = !DILocation(line: 304, column: 1, scope: !5101)
!5252 = !DILocation(line: 300, column: 2, scope: !5101)
!5253 = !DILocation(line: 301, column: 1, scope: !5101)
!5254 = !DILocation(line: 302, column: 17, scope: !5101)
!5255 = !DILocation(line: 302, column: 9, scope: !5101)
!5256 = !DILocation(line: 302, column: 7, scope: !5101)
!5257 = !DILocation(line: 303, column: 2, scope: !5101)
!5258 = distinct !DISubprogram(name: "get_slot", scope: !3, file: !3, line: 175, type: !5259, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5261)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!193, !197, !109}
!5261 = !{!5262, !5263, !5264, !5265, !5268}
!5262 = !DILocalVariable(name: "parent", arg: 1, scope: !5258, file: !3, line: 175, type: !197)
!5263 = !DILocalVariable(name: "slot_nr", arg: 2, scope: !5258, file: !3, line: 175, type: !109)
!5264 = !DILocalVariable(name: "slot", scope: !5258, file: !3, line: 177, type: !193)
!5265 = !DILocalVariable(name: "__mptr", scope: !5266, file: !3, line: 180, type: !192)
!5266 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 180, column: 2)
!5267 = distinct !DILexicalBlock(scope: !5258, file: !3, line: 180, column: 2)
!5268 = !DILocalVariable(name: "__mptr", scope: !5269, file: !3, line: 180, type: !192)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 180, column: 2)
!5270 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 180, column: 2)
!5271 = !DILocation(line: 175, column: 50, scope: !5258)
!5272 = !DILocation(line: 175, column: 62, scope: !5258)
!5273 = !DILocation(line: 177, column: 2, scope: !5258)
!5274 = !DILocation(line: 177, column: 19, scope: !5258)
!5275 = !DILocation(line: 180, column: 2, scope: !5266)
!5276 = !DILocation(line: 180, column: 2, scope: !5267)
!5277 = !DILocation(line: 180, column: 2, scope: !5270)
!5278 = !DILocation(line: 181, column: 7, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5270, file: !3, line: 181, column: 7)
!5280 = !DILocation(line: 181, column: 13, scope: !5279)
!5281 = !DILocation(line: 181, column: 23, scope: !5279)
!5282 = !DILocation(line: 181, column: 20, scope: !5279)
!5283 = !DILocation(line: 181, column: 7, scope: !5270)
!5284 = !DILocation(line: 182, column: 17, scope: !5285)
!5285 = distinct !DILexicalBlock(scope: !5279, file: !3, line: 181, column: 32)
!5286 = !DILocation(line: 182, column: 23, scope: !5285)
!5287 = !DILocation(line: 182, column: 4, scope: !5285)
!5288 = !DILocation(line: 183, column: 11, scope: !5285)
!5289 = !DILocation(line: 183, column: 4, scope: !5285)
!5290 = !DILocation(line: 180, column: 2, scope: !5269)
!5291 = distinct !{!5291, !5276, !5292, !5092, !5093}
!5292 = !DILocation(line: 184, column: 3, scope: !5267)
!5293 = !DILocation(line: 186, column: 2, scope: !5258)
!5294 = !DILocation(line: 187, column: 1, scope: !5258)
!5295 = distinct !DISubprogram(name: "rename_slot", scope: !3, file: !3, line: 146, type: !5296, scopeLine: 147, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5298)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!109, !193, !267}
!5298 = !{!5299, !5300, !5301, !5302}
!5299 = !DILocalVariable(name: "slot", arg: 1, scope: !5295, file: !3, line: 146, type: !193)
!5300 = !DILocalVariable(name: "name", arg: 2, scope: !5295, file: !3, line: 146, type: !267)
!5301 = !DILocalVariable(name: "result", scope: !5295, file: !3, line: 148, type: !109)
!5302 = !DILocalVariable(name: "slot_name", scope: !5295, file: !3, line: 149, type: !423)
!5303 = !DILocation(line: 146, column: 41, scope: !5295)
!5304 = !DILocation(line: 146, column: 59, scope: !5295)
!5305 = !DILocation(line: 148, column: 2, scope: !5295)
!5306 = !DILocation(line: 148, column: 6, scope: !5295)
!5307 = !DILocation(line: 149, column: 2, scope: !5295)
!5308 = !DILocation(line: 149, column: 8, scope: !5295)
!5309 = !DILocation(line: 151, column: 27, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 151, column: 6)
!5311 = !DILocation(line: 151, column: 13, scope: !5310)
!5312 = !DILocation(line: 151, column: 34, scope: !5310)
!5313 = !DILocation(line: 151, column: 6, scope: !5310)
!5314 = !DILocation(line: 151, column: 40, scope: !5310)
!5315 = !DILocation(line: 151, column: 6, scope: !5295)
!5316 = !DILocation(line: 152, column: 10, scope: !5310)
!5317 = !DILocation(line: 152, column: 3, scope: !5310)
!5318 = !DILocation(line: 154, column: 29, scope: !5295)
!5319 = !DILocation(line: 154, column: 14, scope: !5295)
!5320 = !DILocation(line: 154, column: 12, scope: !5295)
!5321 = !DILocation(line: 155, column: 7, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 155, column: 6)
!5323 = !DILocation(line: 155, column: 6, scope: !5295)
!5324 = !DILocation(line: 156, column: 3, scope: !5322)
!5325 = !DILocation(line: 158, column: 27, scope: !5295)
!5326 = !DILocation(line: 158, column: 33, scope: !5295)
!5327 = !DILocation(line: 158, column: 39, scope: !5295)
!5328 = !DILocation(line: 158, column: 11, scope: !5295)
!5329 = !DILocation(line: 158, column: 9, scope: !5295)
!5330 = !DILocation(line: 159, column: 8, scope: !5295)
!5331 = !DILocation(line: 159, column: 2, scope: !5295)
!5332 = !DILocation(line: 161, column: 9, scope: !5295)
!5333 = !DILocation(line: 161, column: 2, scope: !5295)
!5334 = !DILocation(line: 162, column: 1, scope: !5295)
!5335 = !DISubprogram(name: "kobject_put", scope: !350, file: !350, line: 110, type: !443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5336 = distinct !DISubprogram(name: "kzalloc", scope: !153, file: !153, line: 719, type: !5337, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5339)
!5337 = !DISubroutineType(types: !5338)
!5338 = !{!192, !468, !1172}
!5339 = !{!5340, !5341}
!5340 = !DILocalVariable(name: "size", arg: 1, scope: !5336, file: !153, line: 719, type: !468)
!5341 = !DILocalVariable(name: "flags", arg: 2, scope: !5336, file: !153, line: 719, type: !1172)
!5342 = !DILocation(line: 719, column: 52, scope: !5336)
!5343 = !DILocation(line: 719, column: 64, scope: !5336)
!5344 = !DILocation(line: 721, column: 17, scope: !5336)
!5345 = !DILocation(line: 721, column: 23, scope: !5336)
!5346 = !DILocation(line: 721, column: 29, scope: !5336)
!5347 = !DILocation(line: 721, column: 9, scope: !5336)
!5348 = !DILocation(line: 721, column: 2, scope: !5336)
!5349 = !DISubprogram(name: "pci_bus_get", scope: !240, file: !240, line: 261, type: !5350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5350 = !DISubroutineType(types: !5351)
!5351 = !{!197, !197}
!5352 = distinct !DISubprogram(name: "make_slot_name", scope: !3, file: !3, line: 108, type: !5353, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5355)
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!423, !267}
!5355 = !{!5356, !5357, !5358, !5359, !5360, !5361}
!5356 = !DILocalVariable(name: "name", arg: 1, scope: !5352, file: !3, line: 108, type: !267)
!5357 = !DILocalVariable(name: "new_name", scope: !5352, file: !3, line: 110, type: !423)
!5358 = !DILocalVariable(name: "len", scope: !5352, file: !3, line: 111, type: !109)
!5359 = !DILocalVariable(name: "max", scope: !5352, file: !3, line: 111, type: !109)
!5360 = !DILocalVariable(name: "dup", scope: !5352, file: !3, line: 111, type: !109)
!5361 = !DILocalVariable(name: "dup_slot", scope: !5362, file: !3, line: 127, type: !348)
!5362 = distinct !DILexicalBlock(scope: !5363, file: !3, line: 126, column: 11)
!5363 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 126, column: 2)
!5364 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 126, column: 2)
!5365 = !DILocation(line: 108, column: 41, scope: !5352)
!5366 = !DILocation(line: 110, column: 2, scope: !5352)
!5367 = !DILocation(line: 110, column: 8, scope: !5352)
!5368 = !DILocation(line: 111, column: 2, scope: !5352)
!5369 = !DILocation(line: 111, column: 6, scope: !5352)
!5370 = !DILocation(line: 111, column: 11, scope: !5352)
!5371 = !DILocation(line: 111, column: 16, scope: !5352)
!5372 = !DILocation(line: 113, column: 21, scope: !5352)
!5373 = !DILocation(line: 113, column: 13, scope: !5352)
!5374 = !DILocation(line: 113, column: 11, scope: !5352)
!5375 = !DILocation(line: 114, column: 7, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 114, column: 6)
!5377 = !DILocation(line: 114, column: 6, scope: !5352)
!5378 = !DILocation(line: 115, column: 3, scope: !5376)
!5379 = !DILocation(line: 122, column: 15, scope: !5352)
!5380 = !DILocation(line: 122, column: 8, scope: !5352)
!5381 = !DILocation(line: 122, column: 21, scope: !5352)
!5382 = !DILocation(line: 122, column: 6, scope: !5352)
!5383 = !DILocation(line: 123, column: 6, scope: !5352)
!5384 = !DILocation(line: 124, column: 6, scope: !5352)
!5385 = !DILocation(line: 126, column: 2, scope: !5352)
!5386 = !DILocation(line: 127, column: 3, scope: !5362)
!5387 = !DILocation(line: 127, column: 19, scope: !5362)
!5388 = !DILocation(line: 128, column: 28, scope: !5362)
!5389 = !DILocation(line: 128, column: 44, scope: !5362)
!5390 = !DILocation(line: 128, column: 14, scope: !5362)
!5391 = !DILocation(line: 128, column: 12, scope: !5362)
!5392 = !DILocation(line: 129, column: 8, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 129, column: 7)
!5394 = !DILocation(line: 129, column: 7, scope: !5362)
!5395 = !DILocation(line: 130, column: 4, scope: !5393)
!5396 = !DILocation(line: 131, column: 15, scope: !5362)
!5397 = !DILocation(line: 131, column: 3, scope: !5362)
!5398 = !DILocation(line: 132, column: 7, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 132, column: 7)
!5400 = !DILocation(line: 132, column: 14, scope: !5399)
!5401 = !DILocation(line: 132, column: 11, scope: !5399)
!5402 = !DILocation(line: 132, column: 7, scope: !5362)
!5403 = !DILocation(line: 133, column: 7, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 132, column: 19)
!5405 = !DILocation(line: 134, column: 8, scope: !5404)
!5406 = !DILocation(line: 135, column: 10, scope: !5404)
!5407 = !DILocation(line: 135, column: 4, scope: !5404)
!5408 = !DILocation(line: 136, column: 23, scope: !5404)
!5409 = !DILocation(line: 136, column: 15, scope: !5404)
!5410 = !DILocation(line: 136, column: 13, scope: !5404)
!5411 = !DILocation(line: 137, column: 9, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 137, column: 8)
!5413 = !DILocation(line: 137, column: 8, scope: !5404)
!5414 = !DILocation(line: 138, column: 5, scope: !5412)
!5415 = !DILocation(line: 139, column: 3, scope: !5404)
!5416 = !DILocation(line: 140, column: 11, scope: !5362)
!5417 = !DILocation(line: 140, column: 30, scope: !5362)
!5418 = !DILocation(line: 140, column: 39, scope: !5362)
!5419 = !DILocation(line: 140, column: 3, scope: !5362)
!5420 = !DILocation(line: 141, column: 2, scope: !5363)
!5421 = !DILocation(line: 126, column: 2, scope: !5363)
!5422 = distinct !{!5422, !5423, !5424, !5093}
!5423 = !DILocation(line: 126, column: 2, scope: !5364)
!5424 = !DILocation(line: 141, column: 2, scope: !5364)
!5425 = !DILocation(line: 143, column: 9, scope: !5352)
!5426 = !DILocation(line: 143, column: 2, scope: !5352)
!5427 = !DILocation(line: 144, column: 1, scope: !5352)
!5428 = !DISubprogram(name: "pci_bus_put", scope: !240, file: !240, line: 262, type: !4894, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5429 = !DISubprogram(name: "kfree", scope: !153, file: !153, line: 227, type: !5430, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5430 = !DISubroutineType(types: !5431)
!5431 = !{null, !495}
!5432 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5433, file: !5433, line: 35, type: !5434, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5436)
!5433 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5434 = !DISubroutineType(types: !5435)
!5435 = !{null, !205}
!5436 = !{!5437}
!5437 = !DILocalVariable(name: "list", arg: 1, scope: !5432, file: !5433, line: 35, type: !205)
!5438 = !DILocation(line: 35, column: 53, scope: !5432)
!5439 = !DILocation(line: 37, column: 2, scope: !5432)
!5440 = !DILocation(line: 37, column: 2, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5432, file: !5433, line: 37, column: 2)
!5442 = !DILocation(line: 37, column: 2, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5441, file: !5433, line: 37, column: 2)
!5444 = !DILocation(line: 37, column: 2, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5441, file: !5433, line: 37, column: 2)
!5446 = !DILocation(line: 38, column: 2, scope: !5432)
!5447 = !DILocation(line: 38, column: 2, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5432, file: !5433, line: 38, column: 2)
!5449 = !DILocation(line: 38, column: 2, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5448, file: !5433, line: 38, column: 2)
!5451 = !DILocation(line: 38, column: 2, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5448, file: !5433, line: 38, column: 2)
!5453 = !DILocation(line: 39, column: 1, scope: !5432)
!5454 = distinct !DISubprogram(name: "list_add", scope: !5433, file: !5433, line: 167, type: !5455, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5457)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{null, !205, !205}
!5457 = !{!5458, !5459}
!5458 = !DILocalVariable(name: "new", arg: 1, scope: !5454, file: !5433, line: 167, type: !205)
!5459 = !DILocalVariable(name: "head", arg: 2, scope: !5454, file: !5433, line: 167, type: !205)
!5460 = !DILocation(line: 167, column: 47, scope: !5454)
!5461 = !DILocation(line: 167, column: 70, scope: !5454)
!5462 = !DILocation(line: 169, column: 13, scope: !5454)
!5463 = !DILocation(line: 169, column: 18, scope: !5454)
!5464 = !DILocation(line: 169, column: 24, scope: !5454)
!5465 = !DILocation(line: 169, column: 30, scope: !5454)
!5466 = !DILocation(line: 169, column: 2, scope: !5454)
!5467 = !DILocation(line: 170, column: 1, scope: !5454)
!5468 = !DISubprogram(name: "kobject_init_and_add", scope: !350, file: !350, line: 96, type: !5469, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!109, !348, !437, !348, !267, null}
!5471 = !DISubprogram(name: "down_read", scope: !757, file: !757, line: 175, type: !5472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5472 = !DISubroutineType(types: !5473)
!5473 = !{null, !5474}
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!5475 = !DISubprogram(name: "up_read", scope: !757, file: !757, line: 198, type: !5472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5476 = distinct !DISubprogram(name: "ERR_PTR", scope: !5477, file: !5477, line: 39, type: !5478, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5480)
!5477 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5478 = !DISubroutineType(types: !5479)
!5479 = !{!192, !458}
!5480 = !{!5481}
!5481 = !DILocalVariable(name: "error", arg: 1, scope: !5476, file: !5477, line: 39, type: !458)
!5482 = !DILocation(line: 39, column: 48, scope: !5476)
!5483 = !DILocation(line: 41, column: 18, scope: !5476)
!5484 = !DILocation(line: 41, column: 9, scope: !5476)
!5485 = !DILocation(line: 41, column: 2, scope: !5476)
!5486 = distinct !DISubprogram(name: "pci_destroy_slot", scope: !3, file: !3, line: 315, type: !5487, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5489)
!5487 = !DISubroutineType(types: !5488)
!5488 = !{null, !193}
!5489 = !{!5490}
!5490 = !DILocalVariable(name: "slot", arg: 1, scope: !5486, file: !3, line: 315, type: !193)
!5491 = !DILocation(line: 315, column: 40, scope: !5486)
!5492 = !DILocation(line: 320, column: 2, scope: !5486)
!5493 = !DILocation(line: 321, column: 15, scope: !5486)
!5494 = !DILocation(line: 321, column: 21, scope: !5486)
!5495 = !DILocation(line: 321, column: 2, scope: !5486)
!5496 = !DILocation(line: 322, column: 2, scope: !5486)
!5497 = !DILocation(line: 323, column: 1, scope: !5486)
!5498 = distinct !DISubprogram(name: "pci_hp_create_module_link", scope: !3, file: !3, line: 335, type: !5487, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5499)
!5499 = !{!5500, !5501, !5502, !5503}
!5500 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5498, file: !3, line: 335, type: !193)
!5501 = !DILocalVariable(name: "slot", scope: !5498, file: !3, line: 337, type: !4929)
!5502 = !DILocalVariable(name: "kobj", scope: !5498, file: !3, line: 338, type: !348)
!5503 = !DILocalVariable(name: "ret", scope: !5498, file: !3, line: 339, type: !109)
!5504 = !DILocation(line: 335, column: 49, scope: !5498)
!5505 = !DILocation(line: 337, column: 2, scope: !5498)
!5506 = !DILocation(line: 337, column: 23, scope: !5498)
!5507 = !DILocation(line: 337, column: 30, scope: !5498)
!5508 = !DILocation(line: 337, column: 40, scope: !5498)
!5509 = !DILocation(line: 338, column: 2, scope: !5498)
!5510 = !DILocation(line: 338, column: 18, scope: !5498)
!5511 = !DILocation(line: 339, column: 2, scope: !5498)
!5512 = !DILocation(line: 339, column: 6, scope: !5498)
!5513 = !DILocation(line: 341, column: 7, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 341, column: 6)
!5515 = !DILocation(line: 341, column: 12, scope: !5514)
!5516 = !DILocation(line: 341, column: 16, scope: !5514)
!5517 = !DILocation(line: 341, column: 22, scope: !5514)
!5518 = !DILocation(line: 341, column: 6, scope: !5498)
!5519 = !DILocation(line: 342, column: 3, scope: !5514)
!5520 = !DILocation(line: 343, column: 23, scope: !5498)
!5521 = !DILocation(line: 343, column: 36, scope: !5498)
!5522 = !DILocation(line: 343, column: 42, scope: !5498)
!5523 = !DILocation(line: 343, column: 9, scope: !5498)
!5524 = !DILocation(line: 343, column: 7, scope: !5498)
!5525 = !DILocation(line: 344, column: 7, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 344, column: 6)
!5527 = !DILocation(line: 344, column: 6, scope: !5498)
!5528 = !DILocation(line: 345, column: 3, scope: !5526)
!5529 = !DILocation(line: 346, column: 27, scope: !5498)
!5530 = !DILocation(line: 346, column: 37, scope: !5498)
!5531 = !DILocation(line: 346, column: 43, scope: !5498)
!5532 = !DILocation(line: 346, column: 8, scope: !5498)
!5533 = !DILocation(line: 346, column: 6, scope: !5498)
!5534 = !DILocation(line: 347, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 347, column: 6)
!5536 = !DILocation(line: 347, column: 6, scope: !5498)
!5537 = !DILocation(line: 348, column: 3, scope: !5538)
!5538 = distinct !DILexicalBlock(scope: !5535, file: !3, line: 348, column: 3)
!5539 = !DILocation(line: 348, column: 3, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 348, column: 3)
!5541 = !DILocation(line: 348, column: 3, scope: !5535)
!5542 = !DILocation(line: 350, column: 14, scope: !5498)
!5543 = !DILocation(line: 350, column: 2, scope: !5498)
!5544 = !DILocation(line: 351, column: 1, scope: !5498)
!5545 = !DISubprogram(name: "kset_find_obj", scope: !350, file: !350, line: 201, type: !5546, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5546 = !DISubroutineType(types: !5547)
!5547 = !{!348, !356, !267}
!5548 = !DISubprogram(name: "sysfs_create_link", scope: !340, file: !340, line: 293, type: !5549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5549 = !DISubroutineType(types: !5550)
!5550 = !{!109, !348, !348, !267}
!5551 = !DISubprogram(name: "_dev_err", scope: !5552, file: !5552, line: 50, type: !5553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5552 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5553 = !DISubroutineType(types: !5554)
!5554 = !{null, !4300, !267, null}
!5555 = distinct !DISubprogram(name: "pci_hp_remove_module_link", scope: !3, file: !3, line: 362, type: !5487, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5556)
!5556 = !{!5557}
!5557 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5555, file: !3, line: 362, type: !193)
!5558 = !DILocation(line: 362, column: 49, scope: !5555)
!5559 = !DILocation(line: 364, column: 21, scope: !5555)
!5560 = !DILocation(line: 364, column: 31, scope: !5555)
!5561 = !DILocation(line: 364, column: 2, scope: !5555)
!5562 = !DILocation(line: 365, column: 1, scope: !5555)
!5563 = !DISubprogram(name: "sysfs_remove_link", scope: !340, file: !340, line: 298, type: !5564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5564 = !DISubroutineType(types: !5565)
!5565 = !{null, !348, !267}
!5566 = distinct !DISubprogram(name: "__initstub__kmod_slot__297_383_pci_slot_init4", scope: !3, file: !3, line: 383, type: !1347, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5567 = !DILocation(line: 383, column: 1, scope: !5566)
!5568 = distinct !DISubprogram(name: "pci_slot_init", scope: !3, file: !3, line: 369, type: !1347, scopeLine: 370, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5569)
!5569 = !{!5570}
!5570 = !DILocalVariable(name: "pci_bus_kset", scope: !5568, file: !3, line: 371, type: !356)
!5571 = !DILocation(line: 371, column: 2, scope: !5568)
!5572 = !DILocation(line: 371, column: 15, scope: !5568)
!5573 = !DILocation(line: 373, column: 17, scope: !5568)
!5574 = !DILocation(line: 373, column: 15, scope: !5568)
!5575 = !DILocation(line: 375, column: 8, scope: !5568)
!5576 = !DILocation(line: 375, column: 22, scope: !5568)
!5577 = !DILocation(line: 374, column: 19, scope: !5568)
!5578 = !DILocation(line: 374, column: 17, scope: !5568)
!5579 = !DILocation(line: 376, column: 7, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5568, file: !3, line: 376, column: 6)
!5581 = !DILocation(line: 376, column: 6, scope: !5568)
!5582 = !DILocation(line: 377, column: 3, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5584, file: !3, line: 377, column: 3)
!5584 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 376, column: 23)
!5585 = !DILocation(line: 377, column: 3, scope: !5586)
!5586 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 377, column: 3)
!5587 = !DILocation(line: 378, column: 3, scope: !5584)
!5588 = !DILocation(line: 380, column: 2, scope: !5568)
!5589 = !DILocation(line: 381, column: 1, scope: !5568)
!5590 = !DISubprogram(name: "kobject_get", scope: !350, file: !350, line: 108, type: !5591, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5591 = !DISubroutineType(types: !5592)
!5592 = !{!348, !348}
!5593 = !DISubprogram(name: "strcmp", scope: !5594, file: !5594, line: 88, type: !5595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5594 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!109, !267, !267}
!5597 = distinct !DISubprogram(name: "pci_slot_name", scope: !163, file: !163, line: 84, type: !5598, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5602)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!267, !5600}
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!5602 = !{!5603}
!5603 = !DILocalVariable(name: "slot", arg: 1, scope: !5597, file: !163, line: 84, type: !5600)
!5604 = !DILocation(line: 84, column: 64, scope: !5597)
!5605 = !DILocation(line: 86, column: 23, scope: !5597)
!5606 = !DILocation(line: 86, column: 29, scope: !5597)
!5607 = !DILocation(line: 86, column: 9, scope: !5597)
!5608 = !DILocation(line: 86, column: 2, scope: !5597)
!5609 = !DISubprogram(name: "kobject_rename", scope: !350, file: !350, line: 105, type: !5610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!109, !348, !267}
!5612 = distinct !DISubprogram(name: "kobject_name", scope: !350, file: !350, line: 87, type: !411, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5613)
!5613 = !{!5614}
!5614 = !DILocalVariable(name: "kobj", arg: 1, scope: !5612, file: !350, line: 87, type: !406)
!5615 = !DILocation(line: 87, column: 62, scope: !5612)
!5616 = !DILocation(line: 89, column: 9, scope: !5612)
!5617 = !DILocation(line: 89, column: 15, scope: !5612)
!5618 = !DILocation(line: 89, column: 2, scope: !5612)
!5619 = distinct !DISubprogram(name: "kmalloc", scope: !153, file: !153, line: 591, type: !5337, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5620)
!5620 = !{!5621, !5622, !5623}
!5621 = !DILocalVariable(name: "size", arg: 1, scope: !5619, file: !153, line: 591, type: !468)
!5622 = !DILocalVariable(name: "flags", arg: 2, scope: !5619, file: !153, line: 591, type: !1172)
!5623 = !DILocalVariable(name: "index", scope: !5624, file: !153, line: 594, type: !7)
!5624 = distinct !DILexicalBlock(scope: !5625, file: !153, line: 593, column: 42)
!5625 = distinct !DILexicalBlock(scope: !5619, file: !153, line: 593, column: 6)
!5626 = !DILocation(line: 591, column: 61, scope: !5619)
!5627 = !DILocation(line: 591, column: 73, scope: !5619)
!5628 = !DILocation(line: 593, column: 27, scope: !5625)
!5629 = !DILocation(line: 593, column: 6, scope: !5625)
!5630 = !DILocation(line: 593, column: 33, scope: !5625)
!5631 = !DILocation(line: 593, column: 36, scope: !5625)
!5632 = !DILocation(line: 593, column: 6, scope: !5619)
!5633 = !DILocation(line: 594, column: 3, scope: !5624)
!5634 = !DILocation(line: 594, column: 16, scope: !5624)
!5635 = !DILocation(line: 596, column: 7, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5624, file: !153, line: 596, column: 7)
!5637 = !DILocation(line: 596, column: 12, scope: !5636)
!5638 = !DILocation(line: 596, column: 7, scope: !5624)
!5639 = !DILocation(line: 597, column: 25, scope: !5636)
!5640 = !DILocation(line: 597, column: 31, scope: !5636)
!5641 = !DILocation(line: 597, column: 11, scope: !5636)
!5642 = !DILocation(line: 597, column: 4, scope: !5636)
!5643 = !DILocation(line: 599, column: 11, scope: !5624)
!5644 = !DILocation(line: 599, column: 9, scope: !5624)
!5645 = !DILocation(line: 601, column: 33, scope: !5624)
!5646 = !DILocation(line: 601, column: 40, scope: !5624)
!5647 = !DILocation(line: 601, column: 20, scope: !5624)
!5648 = !DILocation(line: 601, column: 5, scope: !5624)
!5649 = !DILocation(line: 601, column: 51, scope: !5624)
!5650 = !DILocation(line: 602, column: 5, scope: !5624)
!5651 = !DILocation(line: 602, column: 12, scope: !5624)
!5652 = !DILocation(line: 600, column: 10, scope: !5624)
!5653 = !DILocation(line: 600, column: 3, scope: !5624)
!5654 = !DILocation(line: 603, column: 2, scope: !5625)
!5655 = !DILocation(line: 604, column: 19, scope: !5619)
!5656 = !DILocation(line: 604, column: 25, scope: !5619)
!5657 = !DILocation(line: 604, column: 9, scope: !5619)
!5658 = !DILocation(line: 604, column: 2, scope: !5619)
!5659 = !DILocation(line: 605, column: 1, scope: !5619)
!5660 = !DISubprogram(name: "kmalloc_large", scope: !153, file: !153, line: 531, type: !5337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5661 = distinct !DISubprogram(name: "__kmalloc_index", scope: !153, file: !153, line: 444, type: !5662, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5664)
!5662 = !DISubroutineType(types: !5663)
!5663 = !{!7, !468, !485}
!5664 = !{!5665, !5666}
!5665 = !DILocalVariable(name: "size", arg: 1, scope: !5661, file: !153, line: 444, type: !468)
!5666 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5661, file: !153, line: 445, type: !485)
!5667 = !DILocation(line: 444, column: 60, scope: !5661)
!5668 = !DILocation(line: 445, column: 16, scope: !5661)
!5669 = !DILocation(line: 447, column: 7, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 447, column: 6)
!5671 = !DILocation(line: 447, column: 6, scope: !5661)
!5672 = !DILocation(line: 448, column: 3, scope: !5670)
!5673 = !DILocation(line: 450, column: 6, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 450, column: 6)
!5675 = !DILocation(line: 450, column: 11, scope: !5674)
!5676 = !DILocation(line: 450, column: 6, scope: !5661)
!5677 = !DILocation(line: 451, column: 3, scope: !5674)
!5678 = !DILocation(line: 453, column: 32, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 453, column: 6)
!5680 = !DILocation(line: 453, column: 37, scope: !5679)
!5681 = !DILocation(line: 453, column: 42, scope: !5679)
!5682 = !DILocation(line: 453, column: 45, scope: !5679)
!5683 = !DILocation(line: 453, column: 50, scope: !5679)
!5684 = !DILocation(line: 453, column: 6, scope: !5661)
!5685 = !DILocation(line: 454, column: 3, scope: !5679)
!5686 = !DILocation(line: 455, column: 32, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 455, column: 6)
!5688 = !DILocation(line: 455, column: 37, scope: !5687)
!5689 = !DILocation(line: 455, column: 43, scope: !5687)
!5690 = !DILocation(line: 455, column: 46, scope: !5687)
!5691 = !DILocation(line: 455, column: 51, scope: !5687)
!5692 = !DILocation(line: 455, column: 6, scope: !5661)
!5693 = !DILocation(line: 456, column: 3, scope: !5687)
!5694 = !DILocation(line: 457, column: 6, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 457, column: 6)
!5696 = !DILocation(line: 457, column: 11, scope: !5695)
!5697 = !DILocation(line: 457, column: 6, scope: !5661)
!5698 = !DILocation(line: 457, column: 26, scope: !5695)
!5699 = !DILocation(line: 458, column: 6, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 458, column: 6)
!5701 = !DILocation(line: 458, column: 11, scope: !5700)
!5702 = !DILocation(line: 458, column: 6, scope: !5661)
!5703 = !DILocation(line: 458, column: 26, scope: !5700)
!5704 = !DILocation(line: 459, column: 6, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 459, column: 6)
!5706 = !DILocation(line: 459, column: 11, scope: !5705)
!5707 = !DILocation(line: 459, column: 6, scope: !5661)
!5708 = !DILocation(line: 459, column: 26, scope: !5705)
!5709 = !DILocation(line: 460, column: 6, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 460, column: 6)
!5711 = !DILocation(line: 460, column: 11, scope: !5710)
!5712 = !DILocation(line: 460, column: 6, scope: !5661)
!5713 = !DILocation(line: 460, column: 26, scope: !5710)
!5714 = !DILocation(line: 461, column: 6, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 461, column: 6)
!5716 = !DILocation(line: 461, column: 11, scope: !5715)
!5717 = !DILocation(line: 461, column: 6, scope: !5661)
!5718 = !DILocation(line: 461, column: 26, scope: !5715)
!5719 = !DILocation(line: 462, column: 6, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 462, column: 6)
!5721 = !DILocation(line: 462, column: 11, scope: !5720)
!5722 = !DILocation(line: 462, column: 6, scope: !5661)
!5723 = !DILocation(line: 462, column: 26, scope: !5720)
!5724 = !DILocation(line: 463, column: 6, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 463, column: 6)
!5726 = !DILocation(line: 463, column: 11, scope: !5725)
!5727 = !DILocation(line: 463, column: 6, scope: !5661)
!5728 = !DILocation(line: 463, column: 26, scope: !5725)
!5729 = !DILocation(line: 464, column: 6, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 464, column: 6)
!5731 = !DILocation(line: 464, column: 11, scope: !5730)
!5732 = !DILocation(line: 464, column: 6, scope: !5661)
!5733 = !DILocation(line: 464, column: 26, scope: !5730)
!5734 = !DILocation(line: 465, column: 6, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 465, column: 6)
!5736 = !DILocation(line: 465, column: 11, scope: !5735)
!5737 = !DILocation(line: 465, column: 6, scope: !5661)
!5738 = !DILocation(line: 465, column: 26, scope: !5735)
!5739 = !DILocation(line: 466, column: 6, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 466, column: 6)
!5741 = !DILocation(line: 466, column: 11, scope: !5740)
!5742 = !DILocation(line: 466, column: 6, scope: !5661)
!5743 = !DILocation(line: 466, column: 26, scope: !5740)
!5744 = !DILocation(line: 467, column: 6, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 467, column: 6)
!5746 = !DILocation(line: 467, column: 11, scope: !5745)
!5747 = !DILocation(line: 467, column: 6, scope: !5661)
!5748 = !DILocation(line: 467, column: 26, scope: !5745)
!5749 = !DILocation(line: 468, column: 6, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 468, column: 6)
!5751 = !DILocation(line: 468, column: 11, scope: !5750)
!5752 = !DILocation(line: 468, column: 6, scope: !5661)
!5753 = !DILocation(line: 468, column: 26, scope: !5750)
!5754 = !DILocation(line: 469, column: 6, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 469, column: 6)
!5756 = !DILocation(line: 469, column: 11, scope: !5755)
!5757 = !DILocation(line: 469, column: 6, scope: !5661)
!5758 = !DILocation(line: 469, column: 26, scope: !5755)
!5759 = !DILocation(line: 470, column: 6, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 470, column: 6)
!5761 = !DILocation(line: 470, column: 11, scope: !5760)
!5762 = !DILocation(line: 470, column: 6, scope: !5661)
!5763 = !DILocation(line: 470, column: 26, scope: !5760)
!5764 = !DILocation(line: 471, column: 6, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 471, column: 6)
!5766 = !DILocation(line: 471, column: 11, scope: !5765)
!5767 = !DILocation(line: 471, column: 6, scope: !5661)
!5768 = !DILocation(line: 471, column: 26, scope: !5765)
!5769 = !DILocation(line: 472, column: 6, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 472, column: 6)
!5771 = !DILocation(line: 472, column: 11, scope: !5770)
!5772 = !DILocation(line: 472, column: 6, scope: !5661)
!5773 = !DILocation(line: 472, column: 26, scope: !5770)
!5774 = !DILocation(line: 473, column: 6, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 473, column: 6)
!5776 = !DILocation(line: 473, column: 11, scope: !5775)
!5777 = !DILocation(line: 473, column: 6, scope: !5661)
!5778 = !DILocation(line: 473, column: 26, scope: !5775)
!5779 = !DILocation(line: 474, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 474, column: 6)
!5781 = !DILocation(line: 474, column: 11, scope: !5780)
!5782 = !DILocation(line: 474, column: 6, scope: !5661)
!5783 = !DILocation(line: 474, column: 27, scope: !5780)
!5784 = !DILocation(line: 475, column: 6, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 475, column: 6)
!5786 = !DILocation(line: 475, column: 11, scope: !5785)
!5787 = !DILocation(line: 475, column: 6, scope: !5661)
!5788 = !DILocation(line: 475, column: 32, scope: !5785)
!5789 = !DILocation(line: 477, column: 50, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5661, file: !153, line: 477, column: 6)
!5791 = !{i8 0, i8 2}
!5792 = !DILocation(line: 477, column: 6, scope: !5661)
!5793 = !DILocation(line: 478, column: 3, scope: !5790)
!5794 = !DILocation(line: 478, column: 3, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5796, file: !153, line: 478, column: 3)
!5796 = distinct !DILexicalBlock(scope: !5790, file: !153, line: 478, column: 3)
!5797 = !{i32 -2142789445}
!5798 = !DILocation(line: 478, column: 3, scope: !5796)
!5799 = !DILocation(line: 480, column: 3, scope: !5790)
!5800 = !DILocation(line: 480, column: 3, scope: !5801)
!5801 = distinct !DILexicalBlock(scope: !5790, file: !153, line: 480, column: 3)
!5802 = !DILocation(line: 480, column: 3, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5801, file: !153, line: 480, column: 3)
!5804 = !DILocation(line: 480, column: 3, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5801, file: !153, line: 480, column: 3)
!5806 = !{i64 2152178054, i64 2152178083, i64 2152178129, i64 2152178187, i64 2152178241, i64 2152178295, i64 2152178350, i64 2152178381}
!5807 = !DILocation(line: 483, column: 2, scope: !5661)
!5808 = !DILocation(line: 484, column: 1, scope: !5661)
!5809 = !DISubprogram(name: "kmalloc_trace", scope: !153, file: !153, line: 525, type: !5810, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!192, !5812, !1172, !468}
!5812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5813, size: 64)
!5813 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5814, line: 11, flags: DIFlagFwdDecl)
!5814 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!5815 = distinct !DISubprogram(name: "kmalloc_type", scope: !153, file: !153, line: 401, type: !5816, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5818)
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!152, !1172, !260}
!5818 = !{!5819, !5820}
!5819 = !DILocalVariable(name: "flags", arg: 1, scope: !5815, file: !153, line: 401, type: !1172)
!5820 = !DILocalVariable(name: "caller", arg: 2, scope: !5815, file: !153, line: 401, type: !260)
!5821 = !DILocation(line: 401, column: 67, scope: !5815)
!5822 = !DILocation(line: 401, column: 88, scope: !5815)
!5823 = !DILocation(line: 407, column: 6, scope: !5824)
!5824 = distinct !DILexicalBlock(scope: !5815, file: !153, line: 407, column: 6)
!5825 = !DILocation(line: 407, column: 6, scope: !5815)
!5826 = !DILocation(line: 413, column: 3, scope: !5824)
!5827 = !DILocation(line: 423, column: 38, scope: !5828)
!5828 = distinct !DILexicalBlock(scope: !5815, file: !153, line: 423, column: 6)
!5829 = !DILocation(line: 423, column: 44, scope: !5828)
!5830 = !DILocation(line: 423, column: 6, scope: !5815)
!5831 = !DILocation(line: 424, column: 3, scope: !5828)
!5832 = !DILocation(line: 426, column: 3, scope: !5833)
!5833 = distinct !DILexicalBlock(scope: !5815, file: !153, line: 425, column: 6)
!5834 = !DILocation(line: 429, column: 1, scope: !5815)
!5835 = !DISubprogram(name: "__kmalloc", scope: !153, file: !153, line: 488, type: !5337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5836 = !DISubprogram(name: "__compiletime_assert_190", scope: !153, file: !153, line: 478, type: !1593, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5837 = !DISubprogram(name: "kstrdup", scope: !5594, file: !5594, line: 216, type: !5838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!423, !267, !1172}
!5840 = !DISubprogram(name: "strlen", scope: !5594, file: !5594, line: 128, type: !5841, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5841 = !DISubroutineType(types: !5842)
!5842 = !{!260, !267}
!5843 = !DISubprogram(name: "sprintf", scope: !5844, file: !5844, line: 10, type: !5845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5844 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!109, !423, !267, null}
!5847 = distinct !DISubprogram(name: "__list_add", scope: !5433, file: !5433, line: 146, type: !5848, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5850)
!5848 = !DISubroutineType(types: !5849)
!5849 = !{null, !205, !205, !205}
!5850 = !{!5851, !5852, !5853}
!5851 = !DILocalVariable(name: "new", arg: 1, scope: !5847, file: !5433, line: 146, type: !205)
!5852 = !DILocalVariable(name: "prev", arg: 2, scope: !5847, file: !5433, line: 147, type: !205)
!5853 = !DILocalVariable(name: "next", arg: 3, scope: !5847, file: !5433, line: 148, type: !205)
!5854 = !DILocation(line: 146, column: 49, scope: !5847)
!5855 = !DILocation(line: 147, column: 28, scope: !5847)
!5856 = !DILocation(line: 148, column: 28, scope: !5847)
!5857 = !DILocation(line: 150, column: 24, scope: !5858)
!5858 = distinct !DILexicalBlock(scope: !5847, file: !5433, line: 150, column: 6)
!5859 = !DILocation(line: 150, column: 29, scope: !5858)
!5860 = !DILocation(line: 150, column: 35, scope: !5858)
!5861 = !DILocation(line: 150, column: 7, scope: !5858)
!5862 = !DILocation(line: 150, column: 6, scope: !5847)
!5863 = !DILocation(line: 151, column: 3, scope: !5858)
!5864 = !DILocation(line: 153, column: 15, scope: !5847)
!5865 = !DILocation(line: 153, column: 2, scope: !5847)
!5866 = !DILocation(line: 153, column: 8, scope: !5847)
!5867 = !DILocation(line: 153, column: 13, scope: !5847)
!5868 = !DILocation(line: 154, column: 14, scope: !5847)
!5869 = !DILocation(line: 154, column: 2, scope: !5847)
!5870 = !DILocation(line: 154, column: 7, scope: !5847)
!5871 = !DILocation(line: 154, column: 12, scope: !5847)
!5872 = !DILocation(line: 155, column: 14, scope: !5847)
!5873 = !DILocation(line: 155, column: 2, scope: !5847)
!5874 = !DILocation(line: 155, column: 7, scope: !5847)
!5875 = !DILocation(line: 155, column: 12, scope: !5847)
!5876 = !DILocation(line: 156, column: 2, scope: !5847)
!5877 = !DILocation(line: 156, column: 2, scope: !5878)
!5878 = distinct !DILexicalBlock(scope: !5847, file: !5433, line: 156, column: 2)
!5879 = !DILocation(line: 156, column: 2, scope: !5880)
!5880 = distinct !DILexicalBlock(scope: !5878, file: !5433, line: 156, column: 2)
!5881 = !DILocation(line: 156, column: 2, scope: !5882)
!5882 = distinct !DILexicalBlock(scope: !5878, file: !5433, line: 156, column: 2)
!5883 = !DILocation(line: 157, column: 1, scope: !5847)
!5884 = distinct !DISubprogram(name: "__list_add_valid", scope: !5433, file: !5433, line: 128, type: !5885, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5887)
!5885 = !DISubroutineType(types: !5886)
!5886 = !{!485, !205, !205, !205}
!5887 = !{!5888, !5889, !5890}
!5888 = !DILocalVariable(name: "new", arg: 1, scope: !5884, file: !5433, line: 128, type: !205)
!5889 = !DILocalVariable(name: "prev", arg: 2, scope: !5884, file: !5433, line: 129, type: !205)
!5890 = !DILocalVariable(name: "next", arg: 3, scope: !5884, file: !5433, line: 130, type: !205)
!5891 = !DILocation(line: 128, column: 55, scope: !5884)
!5892 = !DILocation(line: 129, column: 23, scope: !5884)
!5893 = !DILocation(line: 130, column: 23, scope: !5884)
!5894 = !DILocation(line: 132, column: 2, scope: !5884)
!5895 = distinct !DISubprogram(name: "pci_slot_release", scope: !3, file: !3, line: 67, type: !443, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5896)
!5896 = !{!5897, !5898, !5899, !5900, !5902, !5905}
!5897 = !DILocalVariable(name: "kobj", arg: 1, scope: !5895, file: !3, line: 67, type: !348)
!5898 = !DILocalVariable(name: "dev", scope: !5895, file: !3, line: 69, type: !211)
!5899 = !DILocalVariable(name: "slot", scope: !5895, file: !3, line: 70, type: !193)
!5900 = !DILocalVariable(name: "__mptr", scope: !5901, file: !3, line: 70, type: !192)
!5901 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 70, column: 26)
!5902 = !DILocalVariable(name: "__mptr", scope: !5903, file: !3, line: 76, type: !192)
!5903 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 76, column: 2)
!5904 = distinct !DILexicalBlock(scope: !5895, file: !3, line: 76, column: 2)
!5905 = !DILocalVariable(name: "__mptr", scope: !5906, file: !3, line: 76, type: !192)
!5906 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 76, column: 2)
!5907 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 76, column: 2)
!5908 = !DILocation(line: 67, column: 46, scope: !5895)
!5909 = !DILocation(line: 69, column: 2, scope: !5895)
!5910 = !DILocation(line: 69, column: 18, scope: !5895)
!5911 = !DILocation(line: 70, column: 2, scope: !5895)
!5912 = !DILocation(line: 70, column: 19, scope: !5895)
!5913 = !DILocation(line: 70, column: 26, scope: !5901)
!5914 = !DILocation(line: 70, column: 26, scope: !5895)
!5915 = !DILocation(line: 75, column: 2, scope: !5895)
!5916 = !DILocation(line: 76, column: 2, scope: !5903)
!5917 = !DILocation(line: 76, column: 2, scope: !5904)
!5918 = !DILocation(line: 76, column: 2, scope: !5907)
!5919 = !DILocation(line: 77, column: 7, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 77, column: 7)
!5921 = !DILocation(line: 77, column: 31, scope: !5920)
!5922 = !DILocation(line: 77, column: 37, scope: !5920)
!5923 = !DILocation(line: 77, column: 28, scope: !5920)
!5924 = !DILocation(line: 77, column: 7, scope: !5907)
!5925 = !DILocation(line: 78, column: 4, scope: !5920)
!5926 = !DILocation(line: 78, column: 9, scope: !5920)
!5927 = !DILocation(line: 78, column: 14, scope: !5920)
!5928 = !DILocation(line: 76, column: 2, scope: !5906)
!5929 = distinct !{!5929, !5917, !5930, !5092, !5093}
!5930 = !DILocation(line: 78, column: 16, scope: !5904)
!5931 = !DILocation(line: 79, column: 2, scope: !5895)
!5932 = !DILocation(line: 81, column: 12, scope: !5895)
!5933 = !DILocation(line: 81, column: 18, scope: !5895)
!5934 = !DILocation(line: 81, column: 2, scope: !5895)
!5935 = !DILocation(line: 82, column: 14, scope: !5895)
!5936 = !DILocation(line: 82, column: 20, scope: !5895)
!5937 = !DILocation(line: 82, column: 2, scope: !5895)
!5938 = !DILocation(line: 84, column: 8, scope: !5895)
!5939 = !DILocation(line: 84, column: 2, scope: !5895)
!5940 = !DILocation(line: 85, column: 1, scope: !5895)
!5941 = distinct !DISubprogram(name: "list_del", scope: !5433, file: !5433, line: 227, type: !5434, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5942)
!5942 = !{!5943}
!5943 = !DILocalVariable(name: "entry", arg: 1, scope: !5941, file: !5433, line: 227, type: !205)
!5944 = !DILocation(line: 227, column: 47, scope: !5941)
!5945 = !DILocation(line: 229, column: 19, scope: !5941)
!5946 = !DILocation(line: 229, column: 2, scope: !5941)
!5947 = !DILocation(line: 230, column: 2, scope: !5941)
!5948 = !DILocation(line: 230, column: 9, scope: !5941)
!5949 = !DILocation(line: 230, column: 14, scope: !5941)
!5950 = !DILocation(line: 231, column: 2, scope: !5941)
!5951 = !DILocation(line: 231, column: 9, scope: !5941)
!5952 = !DILocation(line: 231, column: 14, scope: !5941)
!5953 = !DILocation(line: 232, column: 1, scope: !5941)
!5954 = distinct !DISubprogram(name: "__list_del_entry", scope: !5433, file: !5433, line: 213, type: !5434, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5955)
!5955 = !{!5956}
!5956 = !DILocalVariable(name: "entry", arg: 1, scope: !5954, file: !5433, line: 213, type: !205)
!5957 = !DILocation(line: 213, column: 55, scope: !5954)
!5958 = !DILocation(line: 215, column: 30, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5954, file: !5433, line: 215, column: 6)
!5960 = !DILocation(line: 215, column: 7, scope: !5959)
!5961 = !DILocation(line: 215, column: 6, scope: !5954)
!5962 = !DILocation(line: 216, column: 3, scope: !5959)
!5963 = !DILocation(line: 218, column: 13, scope: !5954)
!5964 = !DILocation(line: 218, column: 20, scope: !5954)
!5965 = !DILocation(line: 218, column: 26, scope: !5954)
!5966 = !DILocation(line: 218, column: 33, scope: !5954)
!5967 = !DILocation(line: 218, column: 2, scope: !5954)
!5968 = !DILocation(line: 219, column: 1, scope: !5954)
!5969 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5433, file: !5433, line: 134, type: !5970, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5972)
!5970 = !DISubroutineType(types: !5971)
!5971 = !{!485, !205}
!5972 = !{!5973}
!5973 = !DILocalVariable(name: "entry", arg: 1, scope: !5969, file: !5433, line: 134, type: !205)
!5974 = !DILocation(line: 134, column: 61, scope: !5969)
!5975 = !DILocation(line: 136, column: 2, scope: !5969)
!5976 = distinct !DISubprogram(name: "__list_del", scope: !5433, file: !5433, line: 193, type: !5455, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5977)
!5977 = !{!5978, !5979}
!5978 = !DILocalVariable(name: "prev", arg: 1, scope: !5976, file: !5433, line: 193, type: !205)
!5979 = !DILocalVariable(name: "next", arg: 2, scope: !5976, file: !5433, line: 193, type: !205)
!5980 = !DILocation(line: 193, column: 50, scope: !5976)
!5981 = !DILocation(line: 193, column: 75, scope: !5976)
!5982 = !DILocation(line: 195, column: 15, scope: !5976)
!5983 = !DILocation(line: 195, column: 2, scope: !5976)
!5984 = !DILocation(line: 195, column: 8, scope: !5976)
!5985 = !DILocation(line: 195, column: 13, scope: !5976)
!5986 = !DILocation(line: 196, column: 2, scope: !5976)
!5987 = !DILocation(line: 196, column: 2, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5976, file: !5433, line: 196, column: 2)
!5989 = !DILocation(line: 196, column: 2, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5988, file: !5433, line: 196, column: 2)
!5991 = !DILocation(line: 196, column: 2, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5988, file: !5433, line: 196, column: 2)
!5993 = !DILocation(line: 197, column: 1, scope: !5976)
!5994 = distinct !DISubprogram(name: "pci_slot_attr_show", scope: !3, file: !3, line: 18, type: !452, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5995 = !{!5996, !5997, !5998, !5999, !6000, !6002, !6003}
!5996 = !DILocalVariable(name: "kobj", arg: 1, scope: !5994, file: !3, line: 18, type: !348)
!5997 = !DILocalVariable(name: "attr", arg: 2, scope: !5994, file: !3, line: 19, type: !459)
!5998 = !DILocalVariable(name: "buf", arg: 3, scope: !5994, file: !3, line: 19, type: !423)
!5999 = !DILocalVariable(name: "slot", scope: !5994, file: !3, line: 21, type: !193)
!6000 = !DILocalVariable(name: "__mptr", scope: !6001, file: !3, line: 21, type: !192)
!6001 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 21, column: 26)
!6002 = !DILocalVariable(name: "attribute", scope: !5994, file: !3, line: 22, type: !4971)
!6003 = !DILocalVariable(name: "__mptr", scope: !6004, file: !3, line: 22, type: !192)
!6004 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 22, column: 41)
!6005 = !DILocation(line: 18, column: 51, scope: !5994)
!6006 = !DILocation(line: 19, column: 24, scope: !5994)
!6007 = !DILocation(line: 19, column: 36, scope: !5994)
!6008 = !DILocation(line: 21, column: 2, scope: !5994)
!6009 = !DILocation(line: 21, column: 19, scope: !5994)
!6010 = !DILocation(line: 21, column: 26, scope: !6001)
!6011 = !DILocation(line: 21, column: 26, scope: !5994)
!6012 = !DILocation(line: 22, column: 2, scope: !5994)
!6013 = !DILocation(line: 22, column: 29, scope: !5994)
!6014 = !DILocation(line: 22, column: 41, scope: !6004)
!6015 = !DILocation(line: 22, column: 41, scope: !5994)
!6016 = !DILocation(line: 23, column: 9, scope: !5994)
!6017 = !DILocation(line: 23, column: 20, scope: !5994)
!6018 = !DILocation(line: 23, column: 27, scope: !5994)
!6019 = !DILocation(line: 23, column: 38, scope: !5994)
!6020 = !DILocation(line: 23, column: 43, scope: !5994)
!6021 = !DILocation(line: 23, column: 49, scope: !5994)
!6022 = !DILocation(line: 24, column: 1, scope: !5994)
!6023 = !DILocation(line: 23, column: 2, scope: !5994)
!6024 = distinct !DISubprogram(name: "pci_slot_attr_store", scope: !3, file: !3, line: 26, type: !466, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6025 = !{!6026, !6027, !6028, !6029, !6030, !6031, !6033, !6034}
!6026 = !DILocalVariable(name: "kobj", arg: 1, scope: !6024, file: !3, line: 26, type: !348)
!6027 = !DILocalVariable(name: "attr", arg: 2, scope: !6024, file: !3, line: 27, type: !459)
!6028 = !DILocalVariable(name: "buf", arg: 3, scope: !6024, file: !3, line: 27, type: !267)
!6029 = !DILocalVariable(name: "len", arg: 4, scope: !6024, file: !3, line: 27, type: !468)
!6030 = !DILocalVariable(name: "slot", scope: !6024, file: !3, line: 29, type: !193)
!6031 = !DILocalVariable(name: "__mptr", scope: !6032, file: !3, line: 29, type: !192)
!6032 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 29, column: 26)
!6033 = !DILocalVariable(name: "attribute", scope: !6024, file: !3, line: 30, type: !4971)
!6034 = !DILocalVariable(name: "__mptr", scope: !6035, file: !3, line: 30, type: !192)
!6035 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 30, column: 41)
!6036 = !DILocation(line: 26, column: 52, scope: !6024)
!6037 = !DILocation(line: 27, column: 22, scope: !6024)
!6038 = !DILocation(line: 27, column: 40, scope: !6024)
!6039 = !DILocation(line: 27, column: 52, scope: !6024)
!6040 = !DILocation(line: 29, column: 2, scope: !6024)
!6041 = !DILocation(line: 29, column: 19, scope: !6024)
!6042 = !DILocation(line: 29, column: 26, scope: !6032)
!6043 = !DILocation(line: 29, column: 26, scope: !6024)
!6044 = !DILocation(line: 30, column: 2, scope: !6024)
!6045 = !DILocation(line: 30, column: 29, scope: !6024)
!6046 = !DILocation(line: 30, column: 41, scope: !6035)
!6047 = !DILocation(line: 30, column: 41, scope: !6024)
!6048 = !DILocation(line: 31, column: 9, scope: !6024)
!6049 = !DILocation(line: 31, column: 20, scope: !6024)
!6050 = !DILocation(line: 31, column: 28, scope: !6024)
!6051 = !DILocation(line: 31, column: 39, scope: !6024)
!6052 = !DILocation(line: 31, column: 45, scope: !6024)
!6053 = !DILocation(line: 31, column: 51, scope: !6024)
!6054 = !DILocation(line: 31, column: 56, scope: !6024)
!6055 = !DILocation(line: 32, column: 1, scope: !6024)
!6056 = !DILocation(line: 31, column: 2, scope: !6024)
!6057 = distinct !DISubprogram(name: "address_read_file", scope: !3, file: !3, line: 39, type: !4977, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6058)
!6058 = !{!6059, !6060}
!6059 = !DILocalVariable(name: "slot", arg: 1, scope: !6057, file: !3, line: 39, type: !193)
!6060 = !DILocalVariable(name: "buf", arg: 2, scope: !6057, file: !3, line: 39, type: !423)
!6061 = !DILocation(line: 39, column: 51, scope: !6057)
!6062 = !DILocation(line: 39, column: 63, scope: !6057)
!6063 = !DILocation(line: 41, column: 6, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6057, file: !3, line: 41, column: 6)
!6065 = !DILocation(line: 41, column: 12, scope: !6064)
!6066 = !DILocation(line: 41, column: 19, scope: !6064)
!6067 = !DILocation(line: 41, column: 6, scope: !6057)
!6068 = !DILocation(line: 42, column: 21, scope: !6064)
!6069 = !DILocation(line: 43, column: 21, scope: !6064)
!6070 = !DILocation(line: 43, column: 27, scope: !6064)
!6071 = !DILocation(line: 43, column: 7, scope: !6064)
!6072 = !DILocation(line: 44, column: 7, scope: !6064)
!6073 = !DILocation(line: 44, column: 13, scope: !6064)
!6074 = !DILocation(line: 44, column: 18, scope: !6064)
!6075 = !DILocation(line: 42, column: 10, scope: !6064)
!6076 = !DILocation(line: 42, column: 3, scope: !6064)
!6077 = !DILocation(line: 46, column: 20, scope: !6057)
!6078 = !DILocation(line: 47, column: 20, scope: !6057)
!6079 = !DILocation(line: 47, column: 26, scope: !6057)
!6080 = !DILocation(line: 47, column: 6, scope: !6057)
!6081 = !DILocation(line: 48, column: 6, scope: !6057)
!6082 = !DILocation(line: 48, column: 12, scope: !6057)
!6083 = !DILocation(line: 48, column: 17, scope: !6057)
!6084 = !DILocation(line: 49, column: 6, scope: !6057)
!6085 = !DILocation(line: 49, column: 12, scope: !6057)
!6086 = !DILocation(line: 46, column: 9, scope: !6057)
!6087 = !DILocation(line: 46, column: 2, scope: !6057)
!6088 = !DILocation(line: 50, column: 1, scope: !6057)
!6089 = !DISubprogram(name: "sysfs_emit", scope: !340, file: !340, line: 357, type: !5845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6090 = distinct !DISubprogram(name: "pci_domain_nr", scope: !6091, file: !6091, line: 44, type: !4890, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6092)
!6091 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0155599d2137220fade7406d4b759f43")
!6092 = !{!6093}
!6093 = !DILocalVariable(name: "bus", arg: 1, scope: !6090, file: !6091, line: 44, type: !197)
!6094 = !DILocation(line: 44, column: 49, scope: !6090)
!6095 = !DILocation(line: 46, column: 24, scope: !6090)
!6096 = !DILocation(line: 46, column: 9, scope: !6090)
!6097 = !DILocation(line: 46, column: 30, scope: !6090)
!6098 = !DILocation(line: 46, column: 2, scope: !6090)
!6099 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !6091, file: !6091, line: 36, type: !6100, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6371)
!6100 = !DISubroutineType(types: !6101)
!6101 = !{!6102, !6369}
!6102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6103, size: 64)
!6103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !6091, line: 15, size: 256, elements: !6104)
!6104 = !{!6105, !6106, !6107, !6367, !6368}
!6105 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !6103, file: !6091, line: 16, baseType: !109, size: 32)
!6106 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6103, file: !6091, line: 17, baseType: !109, size: 32, offset: 32)
!6107 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !6103, file: !6091, line: 19, baseType: !6108, size: 64, offset: 64)
!6108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6109, size: 64)
!6109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !6110, line: 367, size: 11200, elements: !6111)
!6110 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!6111 = !{!6112, !6113, !6114, !6117, !6118, !6119, !6120, !6129, !6147, !6222, !6252, !6276, !6297, !6301, !6310, !6342, !6356, !6360, !6361, !6362, !6363, !6364, !6365, !6366}
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !6109, file: !6110, line: 368, baseType: !245, size: 32)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !6109, file: !6110, line: 369, baseType: !109, size: 32, offset: 32)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !6109, file: !6110, line: 370, baseType: !6115, size: 64, offset: 64)
!6115 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !6116, line: 424, baseType: !192)
!6116 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6109, file: !6110, line: 371, baseType: !4502, size: 512, offset: 128)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !6109, file: !6110, line: 372, baseType: !201, size: 128, offset: 640)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !6109, file: !6110, line: 373, baseType: !201, size: 128, offset: 768)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6109, file: !6110, line: 374, baseType: !6121, size: 32, offset: 896)
!6121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !6110, line: 181, size: 32, elements: !6122)
!6122 = !{!6123, !6124, !6125, !6126, !6127, !6128}
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !6121, file: !6110, line: 182, baseType: !245, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6121, file: !6110, line: 183, baseType: !245, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6125 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !6121, file: !6110, line: 184, baseType: !245, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6126 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !6121, file: !6110, line: 185, baseType: !245, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6127 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !6121, file: !6110, line: 186, baseType: !245, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6128 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6121, file: !6110, line: 187, baseType: !245, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6109, file: !6110, line: 375, baseType: !6130, size: 32, offset: 928)
!6130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !6110, line: 192, size: 32, elements: !6131)
!6131 = !{!6132, !6133, !6134, !6135, !6136, !6137, !6138, !6139, !6140, !6141, !6142, !6143, !6144, !6145, !6146}
!6132 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !6130, file: !6110, line: 193, baseType: !245, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6133 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !6130, file: !6110, line: 194, baseType: !245, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6134 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !6130, file: !6110, line: 195, baseType: !245, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6135 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !6130, file: !6110, line: 196, baseType: !245, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6136 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !6130, file: !6110, line: 197, baseType: !245, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6137 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !6130, file: !6110, line: 198, baseType: !245, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6138 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !6130, file: !6110, line: 199, baseType: !245, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!6139 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !6130, file: !6110, line: 200, baseType: !245, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!6140 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !6130, file: !6110, line: 201, baseType: !245, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!6141 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !6130, file: !6110, line: 202, baseType: !245, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!6142 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !6130, file: !6110, line: 203, baseType: !245, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!6143 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !6130, file: !6110, line: 204, baseType: !245, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!6144 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !6130, file: !6110, line: 205, baseType: !245, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!6145 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !6130, file: !6110, line: 206, baseType: !245, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!6146 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6130, file: !6110, line: 207, baseType: !245, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!6147 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !6109, file: !6110, line: 376, baseType: !6148, size: 960, offset: 960)
!6148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !6110, line: 238, size: 960, elements: !6149)
!6149 = !{!6150, !6152, !6153, !6161, !6163, !6164, !6165, !6170, !6173}
!6150 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !6148, file: !6110, line: 239, baseType: !6151, size: 64)
!6151 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !6110, line: 220, baseType: !2865)
!6152 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !6148, file: !6110, line: 240, baseType: !109, size: 32, offset: 64)
!6153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6148, file: !6110, line: 241, baseType: !6154, size: 32, offset: 96)
!6154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !6110, line: 230, size: 32, elements: !6155)
!6155 = !{!6156, !6157, !6158, !6159, !6160}
!6156 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !6154, file: !6110, line: 231, baseType: !245, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6157 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !6154, file: !6110, line: 232, baseType: !245, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6158 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !6154, file: !6110, line: 233, baseType: !245, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6159 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !6154, file: !6110, line: 234, baseType: !245, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6160 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6154, file: !6110, line: 235, baseType: !245, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6161 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !6148, file: !6110, line: 242, baseType: !6162, size: 64, offset: 128)
!6162 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !6110, line: 221, baseType: !731)
!6163 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !6148, file: !6110, line: 243, baseType: !423, size: 64, offset: 192)
!6164 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !6148, file: !6110, line: 244, baseType: !201, size: 128, offset: 256)
!6165 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !6148, file: !6110, line: 245, baseType: !6166, size: 320, offset: 384)
!6166 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !6110, line: 222, baseType: !6167)
!6167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 320, elements: !6168)
!6168 = !{!6169}
!6169 = !DISubrange(count: 40)
!6170 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !6148, file: !6110, line: 246, baseType: !6171, size: 160, offset: 704)
!6171 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !6110, line: 223, baseType: !6172)
!6172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 160, elements: !3656)
!6173 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !6148, file: !6110, line: 247, baseType: !6174, size: 64, offset: 896)
!6174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6175, size: 64)
!6175 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !6116, line: 908, size: 192, elements: !6176)
!6176 = !{!6177, !6179, !6184, !6190, !6196, !6202, !6208, !6216}
!6177 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6175, file: !6116, line: 909, baseType: !6178, size: 32)
!6178 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !6116, line: 644, baseType: !245)
!6179 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !6175, file: !6116, line: 913, baseType: !6180, size: 128)
!6180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6175, file: !6116, line: 910, size: 128, elements: !6181)
!6181 = !{!6182, !6183}
!6182 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6180, file: !6116, line: 911, baseType: !6178, size: 32)
!6183 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !6180, file: !6116, line: 912, baseType: !731, size: 64, offset: 64)
!6184 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !6175, file: !6116, line: 919, baseType: !6185, size: 128)
!6185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6175, file: !6116, line: 915, size: 128, elements: !6186)
!6186 = !{!6187, !6188, !6189}
!6187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6185, file: !6116, line: 916, baseType: !6178, size: 32)
!6188 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6185, file: !6116, line: 917, baseType: !245, size: 32, offset: 32)
!6189 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6185, file: !6116, line: 918, baseType: !423, size: 64, offset: 64)
!6190 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6175, file: !6116, line: 925, baseType: !6191, size: 128)
!6191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6175, file: !6116, line: 921, size: 128, elements: !6192)
!6192 = !{!6193, !6194, !6195}
!6193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6191, file: !6116, line: 922, baseType: !6178, size: 32)
!6194 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !6191, file: !6116, line: 923, baseType: !245, size: 32, offset: 32)
!6195 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6191, file: !6116, line: 924, baseType: !4955, size: 64, offset: 64)
!6196 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !6175, file: !6116, line: 931, baseType: !6197, size: 128)
!6197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6175, file: !6116, line: 927, size: 128, elements: !6198)
!6198 = !{!6199, !6200, !6201}
!6199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6197, file: !6116, line: 928, baseType: !6178, size: 32)
!6200 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !6197, file: !6116, line: 929, baseType: !245, size: 32, offset: 32)
!6201 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !6197, file: !6116, line: 930, baseType: !6174, size: 64, offset: 64)
!6202 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !6175, file: !6116, line: 937, baseType: !6203, size: 128)
!6203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6175, file: !6116, line: 933, size: 128, elements: !6204)
!6204 = !{!6205, !6206, !6207}
!6205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6203, file: !6116, line: 934, baseType: !6178, size: 32)
!6206 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !6203, file: !6116, line: 935, baseType: !6178, size: 32, offset: 32)
!6207 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !6203, file: !6116, line: 936, baseType: !6115, size: 64, offset: 64)
!6208 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !6175, file: !6116, line: 944, baseType: !6209, size: 192)
!6209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6175, file: !6116, line: 939, size: 192, elements: !6210)
!6210 = !{!6211, !6212, !6213, !6215}
!6211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6209, file: !6116, line: 940, baseType: !6178, size: 32)
!6212 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !6209, file: !6116, line: 941, baseType: !245, size: 32, offset: 32)
!6213 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !6209, file: !6116, line: 942, baseType: !6214, size: 64, offset: 64)
!6214 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !6116, line: 128, baseType: !731)
!6215 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !6209, file: !6116, line: 943, baseType: !245, size: 32, offset: 128)
!6216 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !6175, file: !6116, line: 950, baseType: !6217, size: 96)
!6217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6175, file: !6116, line: 946, size: 96, elements: !6218)
!6218 = !{!6219, !6220, !6221}
!6219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6217, file: !6116, line: 947, baseType: !6178, size: 32)
!6220 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !6217, file: !6116, line: 948, baseType: !245, size: 32, offset: 32)
!6221 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !6217, file: !6116, line: 949, baseType: !245, size: 32, offset: 64)
!6222 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !6109, file: !6110, line: 377, baseType: !6223, size: 1408, offset: 1920)
!6223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !6110, line: 280, size: 1408, elements: !6224)
!6224 = !{!6225, !6226, !6236, !6251}
!6225 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6223, file: !6110, line: 281, baseType: !109, size: 32)
!6226 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6223, file: !6110, line: 282, baseType: !6227, size: 32, offset: 32)
!6227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !6110, line: 259, size: 32, elements: !6228)
!6228 = !{!6229, !6230, !6231, !6232, !6233, !6234, !6235}
!6229 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !6227, file: !6110, line: 260, baseType: !245, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6230 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !6227, file: !6110, line: 261, baseType: !245, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6231 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !6227, file: !6110, line: 262, baseType: !245, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6232 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !6227, file: !6110, line: 263, baseType: !245, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!6233 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !6227, file: !6110, line: 264, baseType: !245, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!6234 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !6227, file: !6110, line: 265, baseType: !245, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!6235 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6227, file: !6110, line: 266, baseType: !245, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!6236 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !6223, file: !6110, line: 283, baseType: !6237, size: 1280, offset: 64)
!6237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6238, size: 1280, elements: !6249)
!6238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !6110, line: 269, size: 256, elements: !6239)
!6239 = !{!6240, !6246, !6247, !6248}
!6240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6238, file: !6110, line: 274, baseType: !6241, size: 8)
!6241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6238, file: !6110, line: 270, size: 8, elements: !6242)
!6242 = !{!6243, !6244, !6245}
!6243 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6241, file: !6110, line: 271, baseType: !231, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6244 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !6241, file: !6110, line: 272, baseType: !231, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6245 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6241, file: !6110, line: 273, baseType: !231, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!6246 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !6238, file: !6110, line: 275, baseType: !109, size: 32, offset: 32)
!6247 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !6238, file: !6110, line: 276, baseType: !109, size: 32, offset: 64)
!6248 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !6238, file: !6110, line: 277, baseType: !201, size: 128, offset: 128)
!6249 = !{!6250}
!6250 = !DISubrange(count: 5)
!6251 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !6223, file: !6110, line: 284, baseType: !231, size: 8, offset: 1344)
!6252 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !6109, file: !6110, line: 378, baseType: !6253, size: 640, offset: 3328)
!6253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !6110, line: 330, size: 640, elements: !6254)
!6254 = !{!6255, !6256, !6257, !6258, !6259, !6264, !6273, !6274, !6275}
!6255 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !6253, file: !6110, line: 331, baseType: !6115, size: 64)
!6256 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !6253, file: !6110, line: 332, baseType: !731, size: 64, offset: 64)
!6257 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !6253, file: !6110, line: 333, baseType: !731, size: 64, offset: 128)
!6258 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !6253, file: !6110, line: 334, baseType: !201, size: 128, offset: 192)
!6259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6253, file: !6110, line: 335, baseType: !6260, size: 8, offset: 320)
!6260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !6110, line: 320, size: 8, elements: !6261)
!6261 = !{!6262, !6263}
!6262 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6260, file: !6110, line: 321, baseType: !231, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6263 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !6260, file: !6110, line: 322, baseType: !231, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6264 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !6253, file: !6110, line: 336, baseType: !6265, size: 128, offset: 384)
!6265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !6110, line: 325, size: 128, elements: !6266)
!6266 = !{!6267, !6272}
!6267 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !6265, file: !6110, line: 326, baseType: !6268, size: 64)
!6268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6269, size: 64)
!6269 = !DISubroutineType(types: !6270)
!6270 = !{null, !6271}
!6271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6265, size: 64)
!6272 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6265, file: !6110, line: 327, baseType: !4280, size: 64, offset: 64)
!6273 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !6253, file: !6110, line: 337, baseType: !4374, size: 64, offset: 512)
!6274 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !6253, file: !6110, line: 338, baseType: !109, size: 32, offset: 576)
!6275 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !6253, file: !6110, line: 339, baseType: !109, size: 32, offset: 608)
!6276 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !6109, file: !6110, line: 379, baseType: !6277, size: 192, offset: 3968)
!6277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !6110, line: 312, size: 192, elements: !6278)
!6278 = !{!6279, !6280, !6284, !6285}
!6279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6277, file: !6110, line: 313, baseType: !109, size: 32)
!6280 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6277, file: !6110, line: 314, baseType: !6281, size: 8, offset: 32)
!6281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !6110, line: 298, size: 8, elements: !6282)
!6282 = !{!6283}
!6283 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6281, file: !6110, line: 299, baseType: !231, size: 8, flags: DIFlagBitField, extraData: i64 0)
!6284 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !6277, file: !6110, line: 315, baseType: !109, size: 32, offset: 64)
!6285 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !6277, file: !6110, line: 316, baseType: !6286, size: 64, offset: 128)
!6286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6287, size: 64)
!6287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !6110, line: 302, size: 64, elements: !6288)
!6288 = !{!6289, !6294, !6295, !6296}
!6289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6287, file: !6110, line: 306, baseType: !6290, size: 8)
!6290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6287, file: !6110, line: 303, size: 8, elements: !6291)
!6291 = !{!6292, !6293}
!6292 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !6290, file: !6110, line: 304, baseType: !231, size: 1, flags: DIFlagBitField, extraData: i64 0)
!6293 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !6290, file: !6110, line: 305, baseType: !231, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!6294 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !6287, file: !6110, line: 307, baseType: !231, size: 8, offset: 8)
!6295 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !6287, file: !6110, line: 308, baseType: !231, size: 8, offset: 16)
!6296 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !6287, file: !6110, line: 309, baseType: !109, size: 32, offset: 32)
!6297 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !6109, file: !6110, line: 380, baseType: !6298, size: 64, offset: 4160)
!6298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !6110, line: 212, size: 64, elements: !6299)
!6299 = !{!6300}
!6300 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !6298, file: !6110, line: 213, baseType: !219, size: 64)
!6301 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !6109, file: !6110, line: 381, baseType: !6302, size: 384, offset: 4224)
!6302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !6110, line: 357, size: 384, elements: !6303)
!6303 = !{!6304, !6307, !6308, !6309}
!6304 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !6302, file: !6110, line: 358, baseType: !6305, size: 64)
!6305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6306, size: 64)
!6306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6175)
!6307 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !6302, file: !6110, line: 359, baseType: !201, size: 128, offset: 64)
!6308 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !6302, file: !6110, line: 360, baseType: !6305, size: 64, offset: 192)
!6309 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !6302, file: !6110, line: 361, baseType: !201, size: 128, offset: 256)
!6310 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !6109, file: !6110, line: 382, baseType: !6311, size: 64, offset: 4608)
!6311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6312, size: 64)
!6312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !6110, line: 124, size: 1216, elements: !6313)
!6313 = !{!6314, !6315, !6316, !6321, !6325, !6329, !6330, !6331}
!6314 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !6312, file: !6110, line: 125, baseType: !4699, size: 64)
!6315 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !6312, file: !6110, line: 126, baseType: !201, size: 128, offset: 64)
!6316 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !6312, file: !6110, line: 127, baseType: !6317, size: 64, offset: 192)
!6317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6318, size: 64)
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!485, !267, !6320}
!6320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!6321 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !6312, file: !6110, line: 128, baseType: !6322, size: 64, offset: 256)
!6322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6323, size: 64)
!6323 = !DISubroutineType(types: !6324)
!6324 = !{!109, !6108, !4699}
!6325 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !6312, file: !6110, line: 129, baseType: !6326, size: 64, offset: 320)
!6326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6327, size: 64)
!6327 = !DISubroutineType(types: !6328)
!6328 = !{null, !6108}
!6329 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !6312, file: !6110, line: 130, baseType: !4308, size: 64, offset: 384)
!6330 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !6312, file: !6110, line: 131, baseType: !4308, size: 64, offset: 448)
!6331 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !6312, file: !6110, line: 132, baseType: !6332, size: 704, offset: 512)
!6332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !6110, line: 110, size: 704, elements: !6333)
!6333 = !{!6334, !6335, !6339, !6340, !6341}
!6334 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !6332, file: !6110, line: 111, baseType: !349, size: 512)
!6335 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !6332, file: !6110, line: 112, baseType: !6336, size: 64, offset: 512)
!6336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6337, size: 64)
!6337 = !DISubroutineType(types: !6338)
!6338 = !{!109, !6108}
!6339 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !6332, file: !6110, line: 113, baseType: !6326, size: 64, offset: 576)
!6340 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6332, file: !6110, line: 114, baseType: !485, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!6341 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !6332, file: !6110, line: 115, baseType: !485, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!6342 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !6109, file: !6110, line: 383, baseType: !6343, size: 64, offset: 4672)
!6343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6344, size: 64)
!6344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !6110, line: 140, size: 256, elements: !6345)
!6345 = !{!6346, !6347, !6351, !6355}
!6346 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !6344, file: !6110, line: 141, baseType: !6108, size: 64)
!6347 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !6344, file: !6110, line: 142, baseType: !6348, size: 64, offset: 64)
!6348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6349, size: 64)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!109, !6108, !245}
!6351 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !6344, file: !6110, line: 143, baseType: !6352, size: 64, offset: 128)
!6352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6353, size: 64)
!6353 = !DISubroutineType(types: !6354)
!6354 = !{null, !6108, !245}
!6355 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !6344, file: !6110, line: 144, baseType: !6326, size: 64, offset: 192)
!6356 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !6109, file: !6110, line: 384, baseType: !6357, size: 64, offset: 4736)
!6357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6358, size: 64)
!6358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6359)
!6359 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !6110, line: 364, flags: DIFlagFwdDecl)
!6360 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !6109, file: !6110, line: 385, baseType: !192, size: 64, offset: 4800)
!6361 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6109, file: !6110, line: 386, baseType: !4281, size: 5824, offset: 4864)
!6362 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !6109, file: !6110, line: 387, baseType: !7, size: 32, offset: 10688)
!6363 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !6109, file: !6110, line: 388, baseType: !7, size: 32, offset: 10720)
!6364 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !6109, file: !6110, line: 389, baseType: !201, size: 128, offset: 10752)
!6365 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !6109, file: !6110, line: 390, baseType: !621, size: 256, offset: 10880)
!6366 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !6109, file: !6110, line: 391, baseType: !6326, size: 64, offset: 11136)
!6367 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !6103, file: !6091, line: 22, baseType: !192, size: 64, offset: 128)
!6368 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !6103, file: !6091, line: 25, baseType: !192, size: 64, offset: 192)
!6369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6370, size: 64)
!6370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!6371 = !{!6372}
!6372 = !DILocalVariable(name: "bus", arg: 1, scope: !6099, file: !6091, line: 36, type: !6369)
!6373 = !DILocation(line: 36, column: 72, scope: !6099)
!6374 = !DILocation(line: 38, column: 9, scope: !6099)
!6375 = !DILocation(line: 38, column: 14, scope: !6099)
!6376 = !DILocation(line: 38, column: 2, scope: !6099)
!6377 = distinct !DISubprogram(name: "max_speed_read_file", scope: !3, file: !3, line: 57, type: !4977, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6378)
!6378 = !{!6379, !6380}
!6379 = !DILocalVariable(name: "slot", arg: 1, scope: !6377, file: !3, line: 57, type: !193)
!6380 = !DILocalVariable(name: "buf", arg: 2, scope: !6377, file: !3, line: 57, type: !423)
!6381 = !DILocation(line: 57, column: 53, scope: !6377)
!6382 = !DILocation(line: 57, column: 65, scope: !6377)
!6383 = !DILocation(line: 59, column: 24, scope: !6377)
!6384 = !DILocation(line: 59, column: 30, scope: !6377)
!6385 = !DILocation(line: 59, column: 35, scope: !6377)
!6386 = !DILocation(line: 59, column: 50, scope: !6377)
!6387 = !DILocation(line: 59, column: 9, scope: !6377)
!6388 = !DILocation(line: 59, column: 2, scope: !6377)
!6389 = distinct !DISubprogram(name: "bus_speed_read", scope: !3, file: !3, line: 52, type: !6390, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6392)
!6390 = !DISubroutineType(types: !6391)
!6391 = !{!454, !162, !423}
!6392 = !{!6393, !6394}
!6393 = !DILocalVariable(name: "speed", arg: 1, scope: !6389, file: !3, line: 52, type: !162)
!6394 = !DILocalVariable(name: "buf", arg: 2, scope: !6389, file: !3, line: 52, type: !423)
!6395 = !DILocation(line: 52, column: 50, scope: !6389)
!6396 = !DILocation(line: 52, column: 63, scope: !6389)
!6397 = !DILocation(line: 54, column: 20, scope: !6389)
!6398 = !DILocation(line: 54, column: 50, scope: !6389)
!6399 = !DILocation(line: 54, column: 33, scope: !6389)
!6400 = !DILocation(line: 54, column: 9, scope: !6389)
!6401 = !DILocation(line: 54, column: 2, scope: !6389)
!6402 = !DISubprogram(name: "pci_speed_string", scope: !240, file: !240, line: 284, type: !6403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6403 = !DISubroutineType(types: !6404)
!6404 = !{!267, !162}
!6405 = distinct !DISubprogram(name: "cur_speed_read_file", scope: !3, file: !3, line: 62, type: !4977, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6406)
!6406 = !{!6407, !6408}
!6407 = !DILocalVariable(name: "slot", arg: 1, scope: !6405, file: !3, line: 62, type: !193)
!6408 = !DILocalVariable(name: "buf", arg: 2, scope: !6405, file: !3, line: 62, type: !423)
!6409 = !DILocation(line: 62, column: 53, scope: !6405)
!6410 = !DILocation(line: 62, column: 65, scope: !6405)
!6411 = !DILocation(line: 64, column: 24, scope: !6405)
!6412 = !DILocation(line: 64, column: 30, scope: !6405)
!6413 = !DILocation(line: 64, column: 35, scope: !6405)
!6414 = !DILocation(line: 64, column: 50, scope: !6405)
!6415 = !DILocation(line: 64, column: 9, scope: !6405)
!6416 = !DILocation(line: 64, column: 2, scope: !6405)
!6417 = !DISubprogram(name: "bus_get_kset", scope: !4269, file: !4269, line: 279, type: !6418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6418 = !DISubroutineType(types: !6419)
!6419 = !{!356, !4266}
!6420 = !DISubprogram(name: "kset_create_and_add", scope: !350, file: !350, line: 178, type: !6421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6421 = !DISubroutineType(types: !6422)
!6422 = !{!356, !267, !397, !348}
!6423 = !DISubprogram(name: "_printk", scope: !6424, file: !6424, line: 153, type: !6425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6424 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6425 = !DISubroutineType(types: !6426)
!6426 = !{!109, !267, null}
