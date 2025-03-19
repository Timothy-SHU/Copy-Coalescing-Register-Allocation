; ModuleID = 'drivers/pci/hotplug/pci_hotplug_core.c'
source_filename = "drivers/pci/hotplug/pci_hotplug_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___pci_hp_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __pci_hp_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___pci_hp_initialize: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __pci_hp_initialize ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_hp_add: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_hp_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_hp_deregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_hp_deregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_hp_del: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_hp_del ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_hp_destroy: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_hp_destroy ; .previous"
module asm ".section\09\22.initcall6.init..kmod_pci_hotplug__331_573_pci_hotplug_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pci_hotplug__331_573_pci_hotplug_init6:\09\09\09"
module asm ".long\09__initstub__kmod_pci_hotplug__331_573_pci_hotplug_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.pci_slot_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hotplug_slot_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable___pci_hp_register325 = internal global ptr @__pci_hp_register, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable___pci_hp_initialize326 = internal global ptr @__pci_hp_initialize, section ".discard.addressable", align 8, !dbg !4972
@pci_hp_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pci_hp_mutex, i64 16), ptr getelementptr (i8, ptr @pci_hp_mutex, i64 16) } }, align 8, !dbg !5087
@pci_hotplug_slot_list = internal global %struct.list_head { ptr @pci_hotplug_slot_list, ptr @pci_hotplug_slot_list }, align 8, !dbg !5089
@debug = internal global i8 0, align 1, !dbg !5017
@.str = private unnamed_addr constant [37 x i8] c"\017%s: %s: Added slot %s to the list\0A\00", align 1, !dbg !4974
@.str.1 = private unnamed_addr constant [12 x i8] c"pci_hotplug\00", align 1, !dbg !4979
@__func__.pci_hp_add = private unnamed_addr constant [11 x i8] c"pci_hp_add\00", align 1, !dbg !4982
@__UNIQUE_ID___addressable_pci_hp_add327 = internal global ptr @pci_hp_add, section ".discard.addressable", align 8, !dbg !4985
@__UNIQUE_ID___addressable_pci_hp_deregister328 = internal global ptr @pci_hp_deregister, section ".discard.addressable", align 8, !dbg !4987
@.str.2 = private unnamed_addr constant [39 x i8] c"drivers/pci/hotplug/pci_hotplug_core.c\00", align 1, !dbg !4989
@.str.3 = private unnamed_addr constant [41 x i8] c"\017%s: %s: Removed slot %s from the list\0A\00", align 1, !dbg !4994
@__func__.pci_hp_del = private unnamed_addr constant [11 x i8] c"pci_hp_del\00", align 1, !dbg !4999
@__UNIQUE_ID___addressable_pci_hp_del329 = internal global ptr @pci_hp_del, section ".discard.addressable", align 8, !dbg !5001
@__UNIQUE_ID___addressable_pci_hp_destroy330 = internal global ptr @pci_hp_destroy, section ".discard.addressable", align 8, !dbg !5003
@__UNIQUE_ID___addressable___initstub__kmod_pci_hotplug__331_573_pci_hotplug_init6332 = internal global ptr @__initstub__kmod_pci_hotplug__331_573_pci_hotplug_init6, section ".discard.addressable", align 8, !dbg !5005
@__param_str_debug = internal constant [18 x i8] c"pci_hotplug.debug\00", align 16, !dbg !5093
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.14 { ptr @debug } }, section "__param", align 8, !dbg !5007
@__UNIQUE_ID_debugtype333 = internal constant [32 x i8] c"pci_hotplug.parmtype=debug:bool\00", section ".modinfo", align 1, !dbg !5009
@__UNIQUE_ID_debug334 = internal constant [53 x i8] c"pci_hotplug.parm=debug:Debugging mode enabled or not\00", section ".modinfo", align 1, !dbg !5012
@hotplug_slot_attr_power = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.4, i16 -32348 }, ptr @power_read_file, ptr @power_write_file }, align 8, !dbg !5021
@hotplug_slot_attr_attention = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.8, i16 -32348 }, ptr @attention_read_file, ptr @attention_write_file }, align 8, !dbg !5054
@hotplug_slot_attr_latch = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.10, i16 -32476 }, ptr @latch_read_file, ptr null }, align 8, !dbg !5068
@hotplug_slot_attr_presence = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.11, i16 -32476 }, ptr @presence_read_file, ptr null }, align 8, !dbg !5072
@hotplug_slot_attr_test = internal global %struct.pci_slot_attribute { %struct.attribute { ptr @.str.12, i16 -32348 }, ptr null, ptr @test_write_file }, align 8, !dbg !5079
@.str.4 = private unnamed_addr constant [6 x i8] c"power\00", align 1, !dbg !5019
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !5034
@.str.6 = private unnamed_addr constant [22 x i8] c"\017%s: %s: power = %d\0A\00", align 1, !dbg !5037
@__func__.power_write_file = private unnamed_addr constant [17 x i8] c"power_write_file\00", align 1, !dbg !5042
@.str.7 = private unnamed_addr constant [41 x i8] c"\013%s: Illegal value specified for power\0A\00", align 1, !dbg !5047
@.str.8 = private unnamed_addr constant [10 x i8] c"attention\00", align 1, !dbg !5049
@.str.9 = private unnamed_addr constant [29 x i8] c"\017%s: %s:  - attention = %d\0A\00", align 1, !dbg !5056
@__func__.attention_write_file = private unnamed_addr constant [21 x i8] c"attention_write_file\00", align 1, !dbg !5061
@.str.10 = private unnamed_addr constant [6 x i8] c"latch\00", align 1, !dbg !5066
@.str.11 = private unnamed_addr constant [8 x i8] c"adapter\00", align 1, !dbg !5070
@.str.12 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !5074
@.str.13 = private unnamed_addr constant [21 x i8] c"\017%s: %s: test = %d\0A\00", align 1, !dbg !5081
@__func__.test_write_file = private unnamed_addr constant [16 x i8] c"test_write_file\00", align 1, !dbg !5084
@.str.14 = private unnamed_addr constant [39 x i8] c"\013%s: cpci_hotplug_init with error %d\0A\00", align 1, !dbg !5091
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable___pci_hp_register325, ptr @__UNIQUE_ID___addressable___pci_hp_initialize326, ptr @__UNIQUE_ID___addressable_pci_hp_add327, ptr @__UNIQUE_ID___addressable_pci_hp_deregister328, ptr @__UNIQUE_ID___addressable_pci_hp_del329, ptr @__UNIQUE_ID___addressable_pci_hp_destroy330, ptr @__UNIQUE_ID___addressable___initstub__kmod_pci_hotplug__331_573_pci_hotplug_init6332, ptr @__param_debug, ptr @__UNIQUE_ID_debugtype333, ptr @__UNIQUE_ID_debug334], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__pci_hp_register(ptr noundef %slot, ptr noundef %bus, i32 noundef %devnr, ptr noundef %name, ptr noundef %owner, ptr noundef %mod_name) #0 align 16 !dbg !5107 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %devnr.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %mod_name.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5111, metadata !DIExpression()), !dbg !5118
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5112, metadata !DIExpression()), !dbg !5119
  store i32 %devnr, ptr %devnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnr.addr, metadata !5113, metadata !DIExpression()), !dbg !5120
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5114, metadata !DIExpression()), !dbg !5121
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5115, metadata !DIExpression()), !dbg !5122
  store ptr %mod_name, ptr %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod_name.addr, metadata !5116, metadata !DIExpression()), !dbg !5123
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8, !dbg !5124
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5117, metadata !DIExpression()), !dbg !5125
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5126
  %1 = load ptr, ptr %bus.addr, align 8, !dbg !5127
  %2 = load i32, ptr %devnr.addr, align 4, !dbg !5128
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5129
  %4 = load ptr, ptr %owner.addr, align 8, !dbg !5130
  %5 = load ptr, ptr %mod_name.addr, align 8, !dbg !5131
  %call = call i32 @__pci_hp_initialize(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #9, !dbg !5132
  store i32 %call, ptr %result, align 4, !dbg !5133
  %6 = load i32, ptr %result, align 4, !dbg !5134
  %tobool = icmp ne i32 %6, 0, !dbg !5134
  br i1 %tobool, label %if.then, label %if.end, !dbg !5136

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %result, align 4, !dbg !5137
  store i32 %7, ptr %retval, align 4, !dbg !5138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5138

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %slot.addr, align 8, !dbg !5139
  %call1 = call i32 @pci_hp_add(ptr noundef %8) #9, !dbg !5140
  store i32 %call1, ptr %result, align 4, !dbg !5141
  %9 = load i32, ptr %result, align 4, !dbg !5142
  %tobool2 = icmp ne i32 %9, 0, !dbg !5142
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5144

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %slot.addr, align 8, !dbg !5145
  call void @pci_hp_destroy(ptr noundef %10) #9, !dbg !5146
  br label %if.end4, !dbg !5146

if.end4:                                          ; preds = %if.then3, %if.end
  %11 = load i32, ptr %result, align 4, !dbg !5147
  store i32 %11, ptr %retval, align 4, !dbg !5148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5148

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8, !dbg !5149
  %12 = load i32, ptr %retval, align 4, !dbg !5149
  ret i32 %12, !dbg !5149
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__pci_hp_initialize(ptr noundef %slot, ptr noundef %bus, i32 noundef %devnr, ptr noundef %name, ptr noundef %owner, ptr noundef %mod_name) #0 align 16 !dbg !5150 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  %bus.addr = alloca ptr, align 8
  %devnr.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %mod_name.addr = alloca ptr, align 8
  %pci_slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5152, metadata !DIExpression()), !dbg !5159
  store ptr %bus, ptr %bus.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bus.addr, metadata !5153, metadata !DIExpression()), !dbg !5160
  store i32 %devnr, ptr %devnr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %devnr.addr, metadata !5154, metadata !DIExpression()), !dbg !5161
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5155, metadata !DIExpression()), !dbg !5162
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5156, metadata !DIExpression()), !dbg !5163
  store ptr %mod_name, ptr %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod_name.addr, metadata !5157, metadata !DIExpression()), !dbg !5164
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_slot) #8, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %pci_slot, metadata !5158, metadata !DIExpression()), !dbg !5166
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5167
  %cmp = icmp eq ptr %0, null, !dbg !5169
  br i1 %cmp, label %if.then, label %if.end, !dbg !5170

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5171

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %slot.addr, align 8, !dbg !5172
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %1, i32 0, i32 0, !dbg !5174
  %2 = load ptr, ptr %ops, align 8, !dbg !5174
  %cmp1 = icmp eq ptr %2, null, !dbg !5175
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5176

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5177

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %owner.addr, align 8, !dbg !5178
  %4 = load ptr, ptr %slot.addr, align 8, !dbg !5179
  %owner4 = getelementptr inbounds %struct.hotplug_slot, ptr %4, i32 0, i32 3, !dbg !5180
  store ptr %3, ptr %owner4, align 8, !dbg !5181
  %5 = load ptr, ptr %mod_name.addr, align 8, !dbg !5182
  %6 = load ptr, ptr %slot.addr, align 8, !dbg !5183
  %mod_name5 = getelementptr inbounds %struct.hotplug_slot, ptr %6, i32 0, i32 4, !dbg !5184
  store ptr %5, ptr %mod_name5, align 8, !dbg !5185
  %7 = load ptr, ptr %bus.addr, align 8, !dbg !5186
  %8 = load i32, ptr %devnr.addr, align 4, !dbg !5187
  %9 = load ptr, ptr %name.addr, align 8, !dbg !5188
  %10 = load ptr, ptr %slot.addr, align 8, !dbg !5189
  %call = call ptr @pci_create_slot(ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10) #9, !dbg !5190
  store ptr %call, ptr %pci_slot, align 8, !dbg !5191
  %11 = load ptr, ptr %pci_slot, align 8, !dbg !5192
  %call6 = call zeroext i1 @IS_ERR(ptr noundef %11) #9, !dbg !5194
  br i1 %call6, label %if.then7, label %if.end9, !dbg !5195

if.then7:                                         ; preds = %if.end3
  %12 = load ptr, ptr %pci_slot, align 8, !dbg !5196
  %call8 = call i64 @PTR_ERR(ptr noundef %12) #9, !dbg !5197
  %conv = trunc i64 %call8 to i32, !dbg !5197
  store i32 %conv, ptr %retval, align 4, !dbg !5198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5198

if.end9:                                          ; preds = %if.end3
  %13 = load ptr, ptr %pci_slot, align 8, !dbg !5199
  %14 = load ptr, ptr %slot.addr, align 8, !dbg !5200
  %pci_slot10 = getelementptr inbounds %struct.hotplug_slot, ptr %14, i32 0, i32 2, !dbg !5201
  store ptr %13, ptr %pci_slot10, align 8, !dbg !5202
  %15 = load ptr, ptr %slot.addr, align 8, !dbg !5203
  %16 = load ptr, ptr %pci_slot, align 8, !dbg !5204
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %16, i32 0, i32 2, !dbg !5205
  store ptr %15, ptr %hotplug, align 8, !dbg !5206
  store i32 0, ptr %retval, align 4, !dbg !5207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5207

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_slot) #8, !dbg !5208
  %17 = load i32, ptr %retval, align 4, !dbg !5208
  ret i32 %17, !dbg !5208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pci_hp_add(ptr noundef %slot) #0 align 16 !dbg !5209 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  %pci_slot = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5211, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_slot) #8, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %pci_slot, metadata !5212, metadata !DIExpression()), !dbg !5216
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5217
  %pci_slot1 = getelementptr inbounds %struct.hotplug_slot, ptr %0, i32 0, i32 2, !dbg !5218
  %1 = load ptr, ptr %pci_slot1, align 8, !dbg !5218
  store ptr %1, ptr %pci_slot, align 8, !dbg !5216
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8, !dbg !5219
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5213, metadata !DIExpression()), !dbg !5220
  %2 = load ptr, ptr %pci_slot, align 8, !dbg !5221
  %call = call i32 @fs_add_slot(ptr noundef %2) #9, !dbg !5222
  store i32 %call, ptr %result, align 4, !dbg !5223
  %3 = load i32, ptr %result, align 4, !dbg !5224
  %tobool = icmp ne i32 %3, 0, !dbg !5224
  br i1 %tobool, label %if.then, label %if.end, !dbg !5226

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %result, align 4, !dbg !5227
  store i32 %4, ptr %retval, align 4, !dbg !5228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5228

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pci_slot, align 8, !dbg !5229
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %5, i32 0, i32 4, !dbg !5230
  %call2 = call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 0) #9, !dbg !5231
  call void @mutex_lock(ptr noundef @pci_hp_mutex) #9, !dbg !5232
  %6 = load ptr, ptr %slot.addr, align 8, !dbg !5233
  %slot_list = getelementptr inbounds %struct.hotplug_slot, ptr %6, i32 0, i32 1, !dbg !5234
  call void @list_add(ptr noundef %slot_list, ptr noundef @pci_hotplug_slot_list) #9, !dbg !5235
  call void @mutex_unlock(ptr noundef @pci_hp_mutex) #9, !dbg !5236
  br label %do.body, !dbg !5237

do.body:                                          ; preds = %if.end
  %7 = load i8, ptr @debug, align 1, !dbg !5238, !range !5241, !noundef !553
  %tobool3 = trunc i8 %7 to i1, !dbg !5238
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !5242

if.then4:                                         ; preds = %do.body
  br label %do.body5, !dbg !5243

do.body5:                                         ; preds = %if.then4
  br label %do.cond, !dbg !5245

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5245

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %slot.addr, align 8, !dbg !5243
  %call6 = call ptr @hotplug_slot_name(ptr noundef %8) #9, !dbg !5243
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @__func__.pci_hp_add, ptr noundef %call6) #10, !dbg !5243
  store i32 %call7, ptr %tmp, align 4, !dbg !5245
  %9 = load i32, ptr %tmp, align 4, !dbg !5243
  br label %if.end8, !dbg !5238

if.end8:                                          ; preds = %do.end, %do.body
  br label %do.cond9, !dbg !5242

do.cond9:                                         ; preds = %if.end8
  br label %do.end10, !dbg !5242

do.end10:                                         ; preds = %do.cond9
  store i32 0, ptr %retval, align 4, !dbg !5247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5247

cleanup:                                          ; preds = %do.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8, !dbg !5248
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_slot) #8, !dbg !5248
  %10 = load i32, ptr %retval, align 4, !dbg !5248
  ret i32 %10, !dbg !5248
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_hp_destroy(ptr noundef %slot) #0 align 16 !dbg !5249 {
entry:
  %slot.addr = alloca ptr, align 8
  %pci_slot = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5253, metadata !DIExpression()), !dbg !5255
  call void @llvm.lifetime.start.p0(i64 8, ptr %pci_slot) #8, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %pci_slot, metadata !5254, metadata !DIExpression()), !dbg !5257
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5258
  %pci_slot1 = getelementptr inbounds %struct.hotplug_slot, ptr %0, i32 0, i32 2, !dbg !5259
  %1 = load ptr, ptr %pci_slot1, align 8, !dbg !5259
  store ptr %1, ptr %pci_slot, align 8, !dbg !5257
  %2 = load ptr, ptr %slot.addr, align 8, !dbg !5260
  %pci_slot2 = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 2, !dbg !5261
  store ptr null, ptr %pci_slot2, align 8, !dbg !5262
  %3 = load ptr, ptr %pci_slot, align 8, !dbg !5263
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %3, i32 0, i32 2, !dbg !5264
  store ptr null, ptr %hotplug, align 8, !dbg !5265
  %4 = load ptr, ptr %pci_slot, align 8, !dbg !5266
  call void @pci_destroy_slot(ptr noundef %4) #9, !dbg !5267
  call void @llvm.lifetime.end.p0(i64 8, ptr %pci_slot) #8, !dbg !5268
  ret void, !dbg !5268
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5269 dso_local ptr @pci_create_slot(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5272 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5279
  %1 = ptrtoint ptr %0 to i64, !dbg !5279
  %2 = inttoptr i64 %1 to ptr, !dbg !5279
  %3 = ptrtoint ptr %2 to i64, !dbg !5279
  %cmp = icmp uge i64 %3, -4095, !dbg !5279
  %lnot = xor i1 %cmp, true, !dbg !5279
  %lnot1 = xor i1 %lnot, true, !dbg !5279
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5279
  %conv = sext i32 %lnot.ext to i64, !dbg !5279
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5279
  %tobool = icmp ne i64 %expval, 0, !dbg !5279
  ret i1 %tobool, !dbg !5280
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5281 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5287
  %1 = ptrtoint ptr %0 to i64, !dbg !5288
  ret i64 %1, !dbg !5289
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fs_add_slot(ptr noundef %pci_slot) #0 align 16 !dbg !5290 {
entry:
  %pci_slot.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5294, metadata !DIExpression()), !dbg !5302
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #8, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5295, metadata !DIExpression()), !dbg !5304
  store i32 0, ptr %retval1, align 4, !dbg !5304
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5305
  call void @pci_hp_create_module_link(ptr noundef %0) #9, !dbg !5306
  %1 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5307
  %call = call zeroext i1 @has_power_file(ptr noundef %1) #9, !dbg !5309
  br i1 %call, label %if.then, label %if.end4, !dbg !5310

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5311
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %2, i32 0, i32 4, !dbg !5313
  %call2 = call i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef @hotplug_slot_attr_power) #9, !dbg !5314
  store i32 %call2, ptr %retval1, align 4, !dbg !5315
  %3 = load i32, ptr %retval1, align 4, !dbg !5316
  %tobool = icmp ne i32 %3, 0, !dbg !5316
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5318

if.then3:                                         ; preds = %if.then
  br label %exit_power, !dbg !5319

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !5320

if.end4:                                          ; preds = %if.end, %entry
  %4 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5321
  %call5 = call zeroext i1 @has_attention_file(ptr noundef %4) #9, !dbg !5323
  br i1 %call5, label %if.then6, label %if.end12, !dbg !5324

if.then6:                                         ; preds = %if.end4
  %5 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5325
  %kobj7 = getelementptr inbounds %struct.pci_slot, ptr %5, i32 0, i32 4, !dbg !5327
  %call8 = call i32 @sysfs_create_file(ptr noundef %kobj7, ptr noundef @hotplug_slot_attr_attention) #9, !dbg !5328
  store i32 %call8, ptr %retval1, align 4, !dbg !5329
  %6 = load i32, ptr %retval1, align 4, !dbg !5330
  %tobool9 = icmp ne i32 %6, 0, !dbg !5330
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5332

if.then10:                                        ; preds = %if.then6
  br label %exit_attention, !dbg !5333

if.end11:                                         ; preds = %if.then6
  br label %if.end12, !dbg !5334

if.end12:                                         ; preds = %if.end11, %if.end4
  %7 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5335
  %call13 = call zeroext i1 @has_latch_file(ptr noundef %7) #9, !dbg !5337
  br i1 %call13, label %if.then14, label %if.end20, !dbg !5338

if.then14:                                        ; preds = %if.end12
  %8 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5339
  %kobj15 = getelementptr inbounds %struct.pci_slot, ptr %8, i32 0, i32 4, !dbg !5341
  %call16 = call i32 @sysfs_create_file(ptr noundef %kobj15, ptr noundef @hotplug_slot_attr_latch) #9, !dbg !5342
  store i32 %call16, ptr %retval1, align 4, !dbg !5343
  %9 = load i32, ptr %retval1, align 4, !dbg !5344
  %tobool17 = icmp ne i32 %9, 0, !dbg !5344
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5346

if.then18:                                        ; preds = %if.then14
  br label %exit_latch, !dbg !5347

if.end19:                                         ; preds = %if.then14
  br label %if.end20, !dbg !5348

if.end20:                                         ; preds = %if.end19, %if.end12
  %10 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5349
  %call21 = call zeroext i1 @has_adapter_file(ptr noundef %10) #9, !dbg !5351
  br i1 %call21, label %if.then22, label %if.end28, !dbg !5352

if.then22:                                        ; preds = %if.end20
  %11 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5353
  %kobj23 = getelementptr inbounds %struct.pci_slot, ptr %11, i32 0, i32 4, !dbg !5355
  %call24 = call i32 @sysfs_create_file(ptr noundef %kobj23, ptr noundef @hotplug_slot_attr_presence) #9, !dbg !5356
  store i32 %call24, ptr %retval1, align 4, !dbg !5357
  %12 = load i32, ptr %retval1, align 4, !dbg !5358
  %tobool25 = icmp ne i32 %12, 0, !dbg !5358
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5360

if.then26:                                        ; preds = %if.then22
  br label %exit_adapter, !dbg !5361

if.end27:                                         ; preds = %if.then22
  br label %if.end28, !dbg !5362

if.end28:                                         ; preds = %if.end27, %if.end20
  %13 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5363
  %call29 = call zeroext i1 @has_test_file(ptr noundef %13) #9, !dbg !5365
  br i1 %call29, label %if.then30, label %if.end36, !dbg !5366

if.then30:                                        ; preds = %if.end28
  %14 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5367
  %kobj31 = getelementptr inbounds %struct.pci_slot, ptr %14, i32 0, i32 4, !dbg !5369
  %call32 = call i32 @sysfs_create_file(ptr noundef %kobj31, ptr noundef @hotplug_slot_attr_test) #9, !dbg !5370
  store i32 %call32, ptr %retval1, align 4, !dbg !5371
  %15 = load i32, ptr %retval1, align 4, !dbg !5372
  %tobool33 = icmp ne i32 %15, 0, !dbg !5372
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !5374

if.then34:                                        ; preds = %if.then30
  br label %exit_test, !dbg !5375

if.end35:                                         ; preds = %if.then30
  br label %if.end36, !dbg !5376

if.end36:                                         ; preds = %if.end35, %if.end28
  br label %exit, !dbg !5377

exit_test:                                        ; preds = %if.then34
  call void @llvm.dbg.label(metadata !5296), !dbg !5378
  %16 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5379
  %call37 = call zeroext i1 @has_adapter_file(ptr noundef %16) #9, !dbg !5381
  br i1 %call37, label %if.then38, label %if.end40, !dbg !5382

if.then38:                                        ; preds = %exit_test
  %17 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5383
  %kobj39 = getelementptr inbounds %struct.pci_slot, ptr %17, i32 0, i32 4, !dbg !5384
  call void @sysfs_remove_file(ptr noundef %kobj39, ptr noundef @hotplug_slot_attr_presence) #9, !dbg !5385
  br label %if.end40, !dbg !5385

if.end40:                                         ; preds = %if.then38, %exit_test
  br label %exit_adapter, !dbg !5386

exit_adapter:                                     ; preds = %if.end40, %if.then26
  call void @llvm.dbg.label(metadata !5297), !dbg !5387
  %18 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5388
  %call41 = call zeroext i1 @has_latch_file(ptr noundef %18) #9, !dbg !5390
  br i1 %call41, label %if.then42, label %if.end44, !dbg !5391

if.then42:                                        ; preds = %exit_adapter
  %19 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5392
  %kobj43 = getelementptr inbounds %struct.pci_slot, ptr %19, i32 0, i32 4, !dbg !5393
  call void @sysfs_remove_file(ptr noundef %kobj43, ptr noundef @hotplug_slot_attr_latch) #9, !dbg !5394
  br label %if.end44, !dbg !5394

if.end44:                                         ; preds = %if.then42, %exit_adapter
  br label %exit_latch, !dbg !5395

exit_latch:                                       ; preds = %if.end44, %if.then18
  call void @llvm.dbg.label(metadata !5298), !dbg !5396
  %20 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5397
  %call45 = call zeroext i1 @has_attention_file(ptr noundef %20) #9, !dbg !5399
  br i1 %call45, label %if.then46, label %if.end48, !dbg !5400

if.then46:                                        ; preds = %exit_latch
  %21 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5401
  %kobj47 = getelementptr inbounds %struct.pci_slot, ptr %21, i32 0, i32 4, !dbg !5402
  call void @sysfs_remove_file(ptr noundef %kobj47, ptr noundef @hotplug_slot_attr_attention) #9, !dbg !5403
  br label %if.end48, !dbg !5403

if.end48:                                         ; preds = %if.then46, %exit_latch
  br label %exit_attention, !dbg !5404

exit_attention:                                   ; preds = %if.end48, %if.then10
  call void @llvm.dbg.label(metadata !5299), !dbg !5405
  %22 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5406
  %call49 = call zeroext i1 @has_power_file(ptr noundef %22) #9, !dbg !5408
  br i1 %call49, label %if.then50, label %if.end52, !dbg !5409

if.then50:                                        ; preds = %exit_attention
  %23 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5410
  %kobj51 = getelementptr inbounds %struct.pci_slot, ptr %23, i32 0, i32 4, !dbg !5411
  call void @sysfs_remove_file(ptr noundef %kobj51, ptr noundef @hotplug_slot_attr_power) #9, !dbg !5412
  br label %if.end52, !dbg !5412

if.end52:                                         ; preds = %if.then50, %exit_attention
  br label %exit_power, !dbg !5413

exit_power:                                       ; preds = %if.end52, %if.then3
  call void @llvm.dbg.label(metadata !5300), !dbg !5414
  %24 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5415
  call void @pci_hp_remove_module_link(ptr noundef %24) #9, !dbg !5416
  br label %exit, !dbg !5416

exit:                                             ; preds = %exit_power, %if.end36
  call void @llvm.dbg.label(metadata !5301), !dbg !5417
  %25 = load i32, ptr %retval1, align 4, !dbg !5418
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #8, !dbg !5419
  ret i32 %25, !dbg !5420
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5421 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5424 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !5428 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5433, metadata !DIExpression()), !dbg !5435
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5434, metadata !DIExpression()), !dbg !5436
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5437
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5438
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5439
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5440
  %3 = load ptr, ptr %next, align 8, !dbg !5440
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #9, !dbg !5441
  ret void, !dbg !5442
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5443 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5444 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @hotplug_slot_name(ptr noundef %slot) #4 align 16 !dbg !5448 {
entry:
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5456
  %pci_slot = getelementptr inbounds %struct.hotplug_slot, ptr %0, i32 0, i32 2, !dbg !5457
  %1 = load ptr, ptr %pci_slot, align 8, !dbg !5457
  %call = call ptr @pci_slot_name(ptr noundef %1) #9, !dbg !5458
  ret ptr %call, !dbg !5459
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_hp_deregister(ptr noundef %slot) #0 align 16 !dbg !5460 {
entry:
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5462, metadata !DIExpression()), !dbg !5463
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5464
  call void @pci_hp_del(ptr noundef %0) #9, !dbg !5465
  %1 = load ptr, ptr %slot.addr, align 8, !dbg !5466
  call void @pci_hp_destroy(ptr noundef %1) #9, !dbg !5467
  ret void, !dbg !5468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_hp_del(ptr noundef %slot) #0 align 16 !dbg !5469 {
entry:
  %slot.addr = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on29 = alloca i32, align 4
  %__flags45 = alloca i32, align 4
  %tmp58 = alloca i64, align 8
  %tmp75 = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5471, metadata !DIExpression()), !dbg !5485
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #8, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %temp, metadata !5472, metadata !DIExpression()), !dbg !5487
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5488
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5473, metadata !DIExpression()), !dbg !5488
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5488
  %tobool = icmp ne ptr %0, null, !dbg !5488
  %lnot = xor i1 %tobool, true, !dbg !5488
  %lnot1 = xor i1 %lnot, true, !dbg !5488
  %lnot2 = xor i1 %lnot1, true, !dbg !5488
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5488
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5488
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5489
  %tobool3 = icmp ne i32 %1, 0, !dbg !5489
  %lnot4 = xor i1 %tobool3, true, !dbg !5489
  %lnot6 = xor i1 %lnot4, true, !dbg !5489
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5489
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5489
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5489
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5489
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5488

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5489

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #8, !dbg !5490
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5476, metadata !DIExpression()), !dbg !5490
  store i32 2305, ptr %__flags, align 4, !dbg !5490
  br label %do.body9, !dbg !5490

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5491

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5491

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5490

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5493
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 523, i32 %2, i64 12) #8, !dbg !5493, !srcloc !5495
  br label %do.cond11, !dbg !5493

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5493

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5490

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5496

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5496

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #8, !dbg !5489
  br label %do.cond16, !dbg !5490

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5490

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5490

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5488
  %tobool18 = icmp ne i32 %3, 0, !dbg !5488
  %lnot19 = xor i1 %tobool18, true, !dbg !5488
  %lnot21 = xor i1 %lnot19, true, !dbg !5488
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5488
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5488
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5488
  store i64 %expval24, ptr %tmp, align 8, !dbg !5489
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #8, !dbg !5498
  %4 = load i64, ptr %tmp, align 8, !dbg !5488
  %tobool25 = icmp ne i64 %4, 0, !dbg !5498
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5499

if.then26:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5500

if.end27:                                         ; preds = %if.end
  call void @mutex_lock(ptr noundef @pci_hp_mutex) #9, !dbg !5501
  %5 = load ptr, ptr %slot.addr, align 8, !dbg !5502
  %call = call ptr @hotplug_slot_name(ptr noundef %5) #9, !dbg !5503
  %call28 = call ptr @get_slot_from_name(ptr noundef %call) #9, !dbg !5504
  store ptr %call28, ptr %temp, align 8, !dbg !5505
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on29) #8, !dbg !5506
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on29, metadata !5479, metadata !DIExpression()), !dbg !5506
  %6 = load ptr, ptr %temp, align 8, !dbg !5506
  %7 = load ptr, ptr %slot.addr, align 8, !dbg !5506
  %cmp = icmp ne ptr %6, %7, !dbg !5506
  %lnot31 = xor i1 %cmp, true, !dbg !5506
  %lnot33 = xor i1 %lnot31, true, !dbg !5506
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !5506
  store i32 %lnot.ext34, ptr %__ret_warn_on29, align 4, !dbg !5506
  %8 = load i32, ptr %__ret_warn_on29, align 4, !dbg !5507
  %tobool35 = icmp ne i32 %8, 0, !dbg !5507
  %lnot36 = xor i1 %tobool35, true, !dbg !5507
  %lnot38 = xor i1 %lnot36, true, !dbg !5507
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !5507
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !5507
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !5507
  %tobool42 = icmp ne i64 %expval41, 0, !dbg !5507
  br i1 %tobool42, label %if.then43, label %if.end57, !dbg !5506

if.then43:                                        ; preds = %if.end27
  br label %do.body44, !dbg !5507

do.body44:                                        ; preds = %if.then43
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags45) #8, !dbg !5508
  call void @llvm.dbg.declare(metadata ptr %__flags45, metadata !5482, metadata !DIExpression()), !dbg !5508
  store i32 2305, ptr %__flags45, align 4, !dbg !5508
  br label %do.body46, !dbg !5508

do.body46:                                        ; preds = %do.body44
  br label %do.cond47, !dbg !5509

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !5509

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !5508

do.body49:                                        ; preds = %do.end48
  %9 = load i32, ptr %__flags45, align 4, !dbg !5511
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 528, i32 %9, i64 12) #8, !dbg !5511, !srcloc !5513
  br label %do.cond50, !dbg !5511

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !5511

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !5508

do.body52:                                        ; preds = %do.end51
  br label %do.cond53, !dbg !5514

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !5514

do.end54:                                         ; preds = %do.cond53
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags45) #8, !dbg !5507
  br label %do.cond55, !dbg !5508

do.cond55:                                        ; preds = %do.end54
  br label %do.end56, !dbg !5508

do.end56:                                         ; preds = %do.cond55
  br label %if.end57, !dbg !5508

if.end57:                                         ; preds = %do.end56, %if.end27
  %10 = load i32, ptr %__ret_warn_on29, align 4, !dbg !5506
  %tobool59 = icmp ne i32 %10, 0, !dbg !5506
  %lnot60 = xor i1 %tobool59, true, !dbg !5506
  %lnot62 = xor i1 %lnot60, true, !dbg !5506
  %lnot.ext63 = zext i1 %lnot62 to i32, !dbg !5506
  %conv64 = sext i32 %lnot.ext63 to i64, !dbg !5506
  %expval65 = call i64 @llvm.expect.i64(i64 %conv64, i64 0), !dbg !5506
  store i64 %expval65, ptr %tmp58, align 8, !dbg !5507
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on29) #8, !dbg !5516
  %11 = load i64, ptr %tmp58, align 8, !dbg !5506
  %tobool66 = icmp ne i64 %11, 0, !dbg !5516
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !5517

if.then67:                                        ; preds = %if.end57
  call void @mutex_unlock(ptr noundef @pci_hp_mutex) #9, !dbg !5518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5520

if.end68:                                         ; preds = %if.end57
  %12 = load ptr, ptr %slot.addr, align 8, !dbg !5521
  %slot_list = getelementptr inbounds %struct.hotplug_slot, ptr %12, i32 0, i32 1, !dbg !5522
  call void @list_del(ptr noundef %slot_list) #9, !dbg !5523
  call void @mutex_unlock(ptr noundef @pci_hp_mutex) #9, !dbg !5524
  br label %do.body69, !dbg !5525

do.body69:                                        ; preds = %if.end68
  %13 = load i8, ptr @debug, align 1, !dbg !5526, !range !5241, !noundef !553
  %tobool70 = trunc i8 %13 to i1, !dbg !5526
  br i1 %tobool70, label %if.then71, label %if.end78, !dbg !5529

if.then71:                                        ; preds = %do.body69
  br label %do.body72, !dbg !5530

do.body72:                                        ; preds = %if.then71
  br label %do.cond73, !dbg !5532

do.cond73:                                        ; preds = %do.body72
  br label %do.end74, !dbg !5532

do.end74:                                         ; preds = %do.cond73
  %14 = load ptr, ptr %slot.addr, align 8, !dbg !5530
  %call76 = call ptr @hotplug_slot_name(ptr noundef %14) #9, !dbg !5530
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef @.str.1, ptr noundef @__func__.pci_hp_del, ptr noundef %call76) #10, !dbg !5530
  store i32 %call77, ptr %tmp75, align 4, !dbg !5532
  %15 = load i32, ptr %tmp75, align 4, !dbg !5530
  br label %if.end78, !dbg !5526

if.end78:                                         ; preds = %do.end74, %do.body69
  br label %do.cond79, !dbg !5529

do.cond79:                                        ; preds = %if.end78
  br label %do.end80, !dbg !5529

do.end80:                                         ; preds = %do.cond79
  %16 = load ptr, ptr %slot.addr, align 8, !dbg !5534
  %pci_slot = getelementptr inbounds %struct.hotplug_slot, ptr %16, i32 0, i32 2, !dbg !5535
  %17 = load ptr, ptr %pci_slot, align 8, !dbg !5535
  call void @fs_remove_slot(ptr noundef %17) #9, !dbg !5536
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5537
  br label %cleanup, !dbg !5537

cleanup:                                          ; preds = %do.end80, %if.then67, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #8, !dbg !5537
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5537

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_slot_from_name(ptr noundef %name) #0 align 16 !dbg !5538 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5542, metadata !DIExpression()), !dbg !5550
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !5551
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5543, metadata !DIExpression()), !dbg !5552
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #8, !dbg !5553
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5544, metadata !DIExpression()), !dbg !5553
  %0 = load ptr, ptr @pci_hotplug_slot_list, align 8, !dbg !5553
  store ptr %0, ptr %__mptr, align 8, !dbg !5553
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5553
  %add.ptr = getelementptr i8, ptr %1, i64 -8, !dbg !5553
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5553
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #8, !dbg !5554
  %2 = load ptr, ptr %tmp, align 8, !dbg !5553
  store ptr %2, ptr %slot, align 8, !dbg !5554
  br label %for.cond, !dbg !5554

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %slot, align 8, !dbg !5555
  %slot_list = getelementptr inbounds %struct.hotplug_slot, ptr %3, i32 0, i32 1, !dbg !5555
  %cmp = icmp eq ptr %slot_list, @pci_hotplug_slot_list, !dbg !5555
  %lnot = xor i1 %cmp, true, !dbg !5555
  br i1 %lnot, label %for.body, label %for.end, !dbg !5554

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %slot, align 8, !dbg !5556
  %call = call ptr @hotplug_slot_name(ptr noundef %4) #9, !dbg !5559
  %5 = load ptr, ptr %name.addr, align 8, !dbg !5560
  %call1 = call i32 @strcmp(ptr noundef %call, ptr noundef %5) #9, !dbg !5561
  %cmp2 = icmp eq i32 %call1, 0, !dbg !5562
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5563

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %slot, align 8, !dbg !5564
  store ptr %6, ptr %retval, align 8, !dbg !5565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5565

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5566

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #8, !dbg !5567
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5547, metadata !DIExpression()), !dbg !5567
  %7 = load ptr, ptr %slot, align 8, !dbg !5567
  %slot_list4 = getelementptr inbounds %struct.hotplug_slot, ptr %7, i32 0, i32 1, !dbg !5567
  %next = getelementptr inbounds %struct.list_head, ptr %slot_list4, i32 0, i32 0, !dbg !5567
  %8 = load ptr, ptr %next, align 8, !dbg !5567
  store ptr %8, ptr %__mptr3, align 8, !dbg !5567
  %9 = load ptr, ptr %__mptr3, align 8, !dbg !5567
  %add.ptr6 = getelementptr i8, ptr %9, i64 -8, !dbg !5567
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #8, !dbg !5555
  %10 = load ptr, ptr %tmp5, align 8, !dbg !5567
  store ptr %10, ptr %slot, align 8, !dbg !5555
  br label %for.cond, !dbg !5555, !llvm.loop !5568

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !5572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5572

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !5573
  %11 = load ptr, ptr %retval, align 8, !dbg !5573
  ret ptr %11, !dbg !5573
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #4 align 16 !dbg !5574 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5578, metadata !DIExpression()), !dbg !5579
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5580
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !5581
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5582
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5583
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5584
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5585
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5586
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5587
  ret void, !dbg !5588
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fs_remove_slot(ptr noundef %pci_slot) #0 align 16 !dbg !5589 {
entry:
  %pci_slot.addr = alloca ptr, align 8
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5593, metadata !DIExpression()), !dbg !5594
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5595
  %call = call zeroext i1 @has_power_file(ptr noundef %0) #9, !dbg !5597
  br i1 %call, label %if.then, label %if.end, !dbg !5598

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5599
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %1, i32 0, i32 4, !dbg !5600
  call void @sysfs_remove_file(ptr noundef %kobj, ptr noundef @hotplug_slot_attr_power) #9, !dbg !5601
  br label %if.end, !dbg !5601

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5602
  %call1 = call zeroext i1 @has_attention_file(ptr noundef %2) #9, !dbg !5604
  br i1 %call1, label %if.then2, label %if.end4, !dbg !5605

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5606
  %kobj3 = getelementptr inbounds %struct.pci_slot, ptr %3, i32 0, i32 4, !dbg !5607
  call void @sysfs_remove_file(ptr noundef %kobj3, ptr noundef @hotplug_slot_attr_attention) #9, !dbg !5608
  br label %if.end4, !dbg !5608

if.end4:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5609
  %call5 = call zeroext i1 @has_latch_file(ptr noundef %4) #9, !dbg !5611
  br i1 %call5, label %if.then6, label %if.end8, !dbg !5612

if.then6:                                         ; preds = %if.end4
  %5 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5613
  %kobj7 = getelementptr inbounds %struct.pci_slot, ptr %5, i32 0, i32 4, !dbg !5614
  call void @sysfs_remove_file(ptr noundef %kobj7, ptr noundef @hotplug_slot_attr_latch) #9, !dbg !5615
  br label %if.end8, !dbg !5615

if.end8:                                          ; preds = %if.then6, %if.end4
  %6 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5616
  %call9 = call zeroext i1 @has_adapter_file(ptr noundef %6) #9, !dbg !5618
  br i1 %call9, label %if.then10, label %if.end12, !dbg !5619

if.then10:                                        ; preds = %if.end8
  %7 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5620
  %kobj11 = getelementptr inbounds %struct.pci_slot, ptr %7, i32 0, i32 4, !dbg !5621
  call void @sysfs_remove_file(ptr noundef %kobj11, ptr noundef @hotplug_slot_attr_presence) #9, !dbg !5622
  br label %if.end12, !dbg !5622

if.end12:                                         ; preds = %if.then10, %if.end8
  %8 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5623
  %call13 = call zeroext i1 @has_test_file(ptr noundef %8) #9, !dbg !5625
  br i1 %call13, label %if.then14, label %if.end16, !dbg !5626

if.then14:                                        ; preds = %if.end12
  %9 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5627
  %kobj15 = getelementptr inbounds %struct.pci_slot, ptr %9, i32 0, i32 4, !dbg !5628
  call void @sysfs_remove_file(ptr noundef %kobj15, ptr noundef @hotplug_slot_attr_test) #9, !dbg !5629
  br label %if.end16, !dbg !5629

if.end16:                                         ; preds = %if.then14, %if.end12
  %10 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5630
  call void @pci_hp_remove_module_link(ptr noundef %10) #9, !dbg !5631
  ret void, !dbg !5632
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5633 dso_local void @pci_destroy_slot(ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pci_hotplug__331_573_pci_hotplug_init6() #7 section ".init.text" align 16 !dbg !5634 {
entry:
  %call = call i32 @pci_hotplug_init() #10, !dbg !5635
  ret i32 %call, !dbg !5635
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pci_hotplug_init() #7 section ".init.text" align 16 !dbg !5636 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #8, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %result, metadata !5638, metadata !DIExpression()), !dbg !5640
  %0 = load i8, ptr @debug, align 1, !dbg !5641, !range !5241, !noundef !553
  %tobool = trunc i8 %0 to i1, !dbg !5641
  %conv = zext i1 %tobool to i32, !dbg !5641
  %call = call i32 @cpci_hotplug_init(i32 noundef %conv) #9, !dbg !5642
  store i32 %call, ptr %result, align 4, !dbg !5643
  %1 = load i32, ptr %result, align 4, !dbg !5644
  %tobool1 = icmp ne i32 %1, 0, !dbg !5644
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5646

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5647

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5650

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5650

do.end:                                           ; preds = %do.cond
  %2 = load i32, ptr %result, align 4, !dbg !5647
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, ptr noundef @.str.1, i32 noundef %2) #10, !dbg !5647
  store i32 %call2, ptr %tmp, align 4, !dbg !5650
  %3 = load i32, ptr %tmp, align 4, !dbg !5647
  %4 = load i32, ptr %result, align 4, !dbg !5652
  store i32 %4, ptr %retval, align 4, !dbg !5653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5653

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %result, align 4, !dbg !5654
  store i32 %5, ptr %retval, align 4, !dbg !5655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5655

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #8, !dbg !5656
  %6 = load i32, ptr %retval, align 4, !dbg !5656
  ret i32 %6, !dbg !5656
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5657 dso_local void @pci_hp_create_module_link(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_power_file(ptr noundef %pci_slot) #0 align 16 !dbg !5658 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5662, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5663, metadata !DIExpression()), !dbg !5666
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5667
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5668
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5668
  store ptr %1, ptr %slot, align 8, !dbg !5666
  %2 = load ptr, ptr %slot, align 8, !dbg !5669
  %tobool = icmp ne ptr %2, null, !dbg !5669
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5671

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %slot, align 8, !dbg !5672
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %3, i32 0, i32 0, !dbg !5673
  %4 = load ptr, ptr %ops, align 8, !dbg !5673
  %tobool1 = icmp ne ptr %4, null, !dbg !5672
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5674

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !5675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5675

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %slot, align 8, !dbg !5676
  %ops2 = getelementptr inbounds %struct.hotplug_slot, ptr %5, i32 0, i32 0, !dbg !5678
  %6 = load ptr, ptr %ops2, align 8, !dbg !5678
  %enable_slot = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 0, !dbg !5679
  %7 = load ptr, ptr %enable_slot, align 8, !dbg !5679
  %tobool3 = icmp ne ptr %7, null, !dbg !5680
  br i1 %tobool3, label %if.then10, label %lor.lhs.false4, !dbg !5681

lor.lhs.false4:                                   ; preds = %if.end
  %8 = load ptr, ptr %slot, align 8, !dbg !5682
  %ops5 = getelementptr inbounds %struct.hotplug_slot, ptr %8, i32 0, i32 0, !dbg !5683
  %9 = load ptr, ptr %ops5, align 8, !dbg !5683
  %disable_slot = getelementptr inbounds %struct.hotplug_slot_ops, ptr %9, i32 0, i32 1, !dbg !5684
  %10 = load ptr, ptr %disable_slot, align 8, !dbg !5684
  %tobool6 = icmp ne ptr %10, null, !dbg !5685
  br i1 %tobool6, label %if.then10, label %lor.lhs.false7, !dbg !5686

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %11 = load ptr, ptr %slot, align 8, !dbg !5687
  %ops8 = getelementptr inbounds %struct.hotplug_slot, ptr %11, i32 0, i32 0, !dbg !5688
  %12 = load ptr, ptr %ops8, align 8, !dbg !5688
  %get_power_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %12, i32 0, i32 4, !dbg !5689
  %13 = load ptr, ptr %get_power_status, align 8, !dbg !5689
  %tobool9 = icmp ne ptr %13, null, !dbg !5690
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5691

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false4, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5692
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5692

if.end11:                                         ; preds = %lor.lhs.false7
  store i1 false, ptr %retval, align 1, !dbg !5693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5693

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !5694
  %14 = load i1, ptr %retval, align 1, !dbg !5694
  ret i1 %14, !dbg !5694
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #4 align 16 !dbg !5695 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5701, metadata !DIExpression()), !dbg !5703
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5702, metadata !DIExpression()), !dbg !5704
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5705
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !5706
  %call = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #9, !dbg !5707
  ret i32 %call, !dbg !5708
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_attention_file(ptr noundef %pci_slot) #0 align 16 !dbg !5709 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5711, metadata !DIExpression()), !dbg !5713
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !5714
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5712, metadata !DIExpression()), !dbg !5715
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5716
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5717
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5717
  store ptr %1, ptr %slot, align 8, !dbg !5715
  %2 = load ptr, ptr %slot, align 8, !dbg !5718
  %tobool = icmp ne ptr %2, null, !dbg !5718
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5720

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %slot, align 8, !dbg !5721
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %3, i32 0, i32 0, !dbg !5722
  %4 = load ptr, ptr %ops, align 8, !dbg !5722
  %tobool1 = icmp ne ptr %4, null, !dbg !5721
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5723

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !5724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5724

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %slot, align 8, !dbg !5725
  %ops2 = getelementptr inbounds %struct.hotplug_slot, ptr %5, i32 0, i32 0, !dbg !5727
  %6 = load ptr, ptr %ops2, align 8, !dbg !5727
  %set_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 2, !dbg !5728
  %7 = load ptr, ptr %set_attention_status, align 8, !dbg !5728
  %tobool3 = icmp ne ptr %7, null, !dbg !5729
  br i1 %tobool3, label %if.then7, label %lor.lhs.false4, !dbg !5730

lor.lhs.false4:                                   ; preds = %if.end
  %8 = load ptr, ptr %slot, align 8, !dbg !5731
  %ops5 = getelementptr inbounds %struct.hotplug_slot, ptr %8, i32 0, i32 0, !dbg !5732
  %9 = load ptr, ptr %ops5, align 8, !dbg !5732
  %get_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %9, i32 0, i32 5, !dbg !5733
  %10 = load ptr, ptr %get_attention_status, align 8, !dbg !5733
  %tobool6 = icmp ne ptr %10, null, !dbg !5734
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5735

if.then7:                                         ; preds = %lor.lhs.false4, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5736

if.end8:                                          ; preds = %lor.lhs.false4
  store i1 false, ptr %retval, align 1, !dbg !5737
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5737

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !5738
  %11 = load i1, ptr %retval, align 1, !dbg !5738
  ret i1 %11, !dbg !5738
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_latch_file(ptr noundef %pci_slot) #0 align 16 !dbg !5739 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5741, metadata !DIExpression()), !dbg !5743
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !5744
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5742, metadata !DIExpression()), !dbg !5745
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5746
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5747
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5747
  store ptr %1, ptr %slot, align 8, !dbg !5745
  %2 = load ptr, ptr %slot, align 8, !dbg !5748
  %tobool = icmp ne ptr %2, null, !dbg !5748
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5750

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %slot, align 8, !dbg !5751
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %3, i32 0, i32 0, !dbg !5752
  %4 = load ptr, ptr %ops, align 8, !dbg !5752
  %tobool1 = icmp ne ptr %4, null, !dbg !5751
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5753

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !5754
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5754

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %slot, align 8, !dbg !5755
  %ops2 = getelementptr inbounds %struct.hotplug_slot, ptr %5, i32 0, i32 0, !dbg !5757
  %6 = load ptr, ptr %ops2, align 8, !dbg !5757
  %get_latch_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 6, !dbg !5758
  %7 = load ptr, ptr %get_latch_status, align 8, !dbg !5758
  %tobool3 = icmp ne ptr %7, null, !dbg !5755
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5759

if.then4:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5760

if.end5:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5761

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !5762
  %8 = load i1, ptr %retval, align 1, !dbg !5762
  ret i1 %8, !dbg !5762
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_adapter_file(ptr noundef %pci_slot) #0 align 16 !dbg !5763 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5765, metadata !DIExpression()), !dbg !5767
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !5768
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5766, metadata !DIExpression()), !dbg !5769
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5770
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5771
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5771
  store ptr %1, ptr %slot, align 8, !dbg !5769
  %2 = load ptr, ptr %slot, align 8, !dbg !5772
  %tobool = icmp ne ptr %2, null, !dbg !5772
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5774

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %slot, align 8, !dbg !5775
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %3, i32 0, i32 0, !dbg !5776
  %4 = load ptr, ptr %ops, align 8, !dbg !5776
  %tobool1 = icmp ne ptr %4, null, !dbg !5775
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5777

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !5778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5778

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %slot, align 8, !dbg !5779
  %ops2 = getelementptr inbounds %struct.hotplug_slot, ptr %5, i32 0, i32 0, !dbg !5781
  %6 = load ptr, ptr %ops2, align 8, !dbg !5781
  %get_adapter_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 7, !dbg !5782
  %7 = load ptr, ptr %get_adapter_status, align 8, !dbg !5782
  %tobool3 = icmp ne ptr %7, null, !dbg !5779
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5783

if.then4:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5784
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5784

if.end5:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5785

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !5786
  %8 = load i1, ptr %retval, align 1, !dbg !5786
  ret i1 %8, !dbg !5786
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_test_file(ptr noundef %pci_slot) #0 align 16 !dbg !5787 {
entry:
  %retval = alloca i1, align 1
  %pci_slot.addr = alloca ptr, align 8
  %slot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5789, metadata !DIExpression()), !dbg !5791
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !5792
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5790, metadata !DIExpression()), !dbg !5793
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5794
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5795
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5795
  store ptr %1, ptr %slot, align 8, !dbg !5793
  %2 = load ptr, ptr %slot, align 8, !dbg !5796
  %tobool = icmp ne ptr %2, null, !dbg !5796
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5798

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %slot, align 8, !dbg !5799
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %3, i32 0, i32 0, !dbg !5800
  %4 = load ptr, ptr %ops, align 8, !dbg !5800
  %tobool1 = icmp ne ptr %4, null, !dbg !5799
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5801

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, ptr %retval, align 1, !dbg !5802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5802

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %slot, align 8, !dbg !5803
  %ops2 = getelementptr inbounds %struct.hotplug_slot, ptr %5, i32 0, i32 0, !dbg !5805
  %6 = load ptr, ptr %ops2, align 8, !dbg !5805
  %hardware_test = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 3, !dbg !5806
  %7 = load ptr, ptr %hardware_test, align 8, !dbg !5806
  %tobool3 = icmp ne ptr %7, null, !dbg !5803
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5807

if.then4:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !5808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5808

if.end5:                                          ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5809
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5809

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !5810
  %8 = load i1, ptr %retval, align 1, !dbg !5810
  ret i1 %8, !dbg !5810
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr) #4 align 16 !dbg !5811 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5815, metadata !DIExpression()), !dbg !5817
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5816, metadata !DIExpression()), !dbg !5818
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5819
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !5820
  call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #9, !dbg !5821
  ret void, !dbg !5822
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5823 dso_local void @pci_hp_remove_module_link(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5824 dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_read_file(ptr noundef %pci_slot, ptr noundef %buf) #0 align 16 !dbg !5827 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %value = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5829, metadata !DIExpression()), !dbg !5833
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5830, metadata !DIExpression()), !dbg !5834
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #8, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5831, metadata !DIExpression()), !dbg !5836
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #8, !dbg !5837
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5832, metadata !DIExpression()), !dbg !5838
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5839
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5840
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5840
  %call = call i32 @get_power_status(ptr noundef %1, ptr noundef %value) #9, !dbg !5841
  store i32 %call, ptr %retval1, align 4, !dbg !5842
  %2 = load i32, ptr %retval1, align 4, !dbg !5843
  %tobool = icmp ne i32 %2, 0, !dbg !5843
  br i1 %tobool, label %if.then, label %if.end, !dbg !5845

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %retval1, align 4, !dbg !5846
  %conv = sext i32 %3 to i64, !dbg !5846
  store i64 %conv, ptr %retval, align 8, !dbg !5847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5847

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5848
  %5 = load i8, ptr %value, align 1, !dbg !5849
  %conv2 = zext i8 %5 to i32, !dbg !5849
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.5, i32 noundef %conv2) #9, !dbg !5850
  %conv4 = sext i32 %call3 to i64, !dbg !5850
  store i64 %conv4, ptr %retval, align 8, !dbg !5851
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5851

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #8, !dbg !5852
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #8, !dbg !5852
  %6 = load i64, ptr %retval, align 8, !dbg !5852
  ret i64 %6, !dbg !5852
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @power_write_file(ptr noundef %pci_slot, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !5853 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %slot = alloca ptr, align 8
  %lpower = alloca i64, align 8
  %power = alloca i8, align 1
  %retval1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5855, metadata !DIExpression()), !dbg !5863
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5856, metadata !DIExpression()), !dbg !5864
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5857, metadata !DIExpression()), !dbg !5865
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !5866
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5858, metadata !DIExpression()), !dbg !5867
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5868
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5869
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5869
  store ptr %1, ptr %slot, align 8, !dbg !5867
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpower) #8, !dbg !5870
  call void @llvm.dbg.declare(metadata ptr %lpower, metadata !5859, metadata !DIExpression()), !dbg !5871
  call void @llvm.lifetime.start.p0(i64 1, ptr %power) #8, !dbg !5872
  call void @llvm.dbg.declare(metadata ptr %power, metadata !5860, metadata !DIExpression()), !dbg !5873
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #8, !dbg !5874
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5861, metadata !DIExpression()), !dbg !5875
  store i32 0, ptr %retval1, align 4, !dbg !5875
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5876
  %call = call i64 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 10) #9, !dbg !5877
  store i64 %call, ptr %lpower, align 8, !dbg !5878
  %3 = load i64, ptr %lpower, align 8, !dbg !5879
  %and = and i64 %3, 255, !dbg !5880
  %conv = trunc i64 %and to i8, !dbg !5881
  store i8 %conv, ptr %power, align 1, !dbg !5882
  br label %do.body, !dbg !5883

do.body:                                          ; preds = %entry
  %4 = load i8, ptr @debug, align 1, !dbg !5884, !range !5241, !noundef !553
  %tobool = trunc i8 %4 to i1, !dbg !5884
  br i1 %tobool, label %if.then, label %if.end, !dbg !5887

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !5888

do.body2:                                         ; preds = %if.then
  br label %do.cond, !dbg !5890

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5890

do.end:                                           ; preds = %do.cond
  %5 = load i8, ptr %power, align 1, !dbg !5888
  %conv3 = zext i8 %5 to i32, !dbg !5888
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef @.str.1, ptr noundef @__func__.power_write_file, i32 noundef %conv3) #10, !dbg !5888
  store i32 %call4, ptr %tmp, align 4, !dbg !5890
  %6 = load i32, ptr %tmp, align 4, !dbg !5888
  br label %if.end, !dbg !5884

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond5, !dbg !5887

do.cond5:                                         ; preds = %if.end
  br label %do.end6, !dbg !5887

do.end6:                                          ; preds = %do.cond5
  %7 = load ptr, ptr %slot, align 8, !dbg !5892
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %7, i32 0, i32 3, !dbg !5894
  %8 = load ptr, ptr %owner, align 8, !dbg !5894
  %call7 = call zeroext i1 @try_module_get(ptr noundef %8) #9, !dbg !5895
  br i1 %call7, label %if.end9, label %if.then8, !dbg !5896

if.then8:                                         ; preds = %do.end6
  store i32 -19, ptr %retval1, align 4, !dbg !5897
  br label %exit, !dbg !5899

if.end9:                                          ; preds = %do.end6
  %9 = load i8, ptr %power, align 1, !dbg !5900
  %conv10 = zext i8 %9 to i32, !dbg !5900
  switch i32 %conv10, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb17
  ], !dbg !5901

sw.bb:                                            ; preds = %if.end9
  %10 = load ptr, ptr %slot, align 8, !dbg !5902
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %10, i32 0, i32 0, !dbg !5905
  %11 = load ptr, ptr %ops, align 8, !dbg !5905
  %disable_slot = getelementptr inbounds %struct.hotplug_slot_ops, ptr %11, i32 0, i32 1, !dbg !5906
  %12 = load ptr, ptr %disable_slot, align 8, !dbg !5906
  %tobool11 = icmp ne ptr %12, null, !dbg !5902
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !5907

if.then12:                                        ; preds = %sw.bb
  %13 = load ptr, ptr %slot, align 8, !dbg !5908
  %ops13 = getelementptr inbounds %struct.hotplug_slot, ptr %13, i32 0, i32 0, !dbg !5909
  %14 = load ptr, ptr %ops13, align 8, !dbg !5909
  %disable_slot14 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %14, i32 0, i32 1, !dbg !5910
  %15 = load ptr, ptr %disable_slot14, align 8, !dbg !5910
  %16 = load ptr, ptr %slot, align 8, !dbg !5911
  %call15 = call i32 %15(ptr noundef %16) #9, !dbg !5908
  store i32 %call15, ptr %retval1, align 4, !dbg !5912
  br label %if.end16, !dbg !5913

if.end16:                                         ; preds = %if.then12, %sw.bb
  br label %sw.epilog, !dbg !5914

sw.bb17:                                          ; preds = %if.end9
  %17 = load ptr, ptr %slot, align 8, !dbg !5915
  %ops18 = getelementptr inbounds %struct.hotplug_slot, ptr %17, i32 0, i32 0, !dbg !5917
  %18 = load ptr, ptr %ops18, align 8, !dbg !5917
  %enable_slot = getelementptr inbounds %struct.hotplug_slot_ops, ptr %18, i32 0, i32 0, !dbg !5918
  %19 = load ptr, ptr %enable_slot, align 8, !dbg !5918
  %tobool19 = icmp ne ptr %19, null, !dbg !5915
  br i1 %tobool19, label %if.then20, label %if.end24, !dbg !5919

if.then20:                                        ; preds = %sw.bb17
  %20 = load ptr, ptr %slot, align 8, !dbg !5920
  %ops21 = getelementptr inbounds %struct.hotplug_slot, ptr %20, i32 0, i32 0, !dbg !5921
  %21 = load ptr, ptr %ops21, align 8, !dbg !5921
  %enable_slot22 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %21, i32 0, i32 0, !dbg !5922
  %22 = load ptr, ptr %enable_slot22, align 8, !dbg !5922
  %23 = load ptr, ptr %slot, align 8, !dbg !5923
  %call23 = call i32 %22(ptr noundef %23) #9, !dbg !5920
  store i32 %call23, ptr %retval1, align 4, !dbg !5924
  br label %if.end24, !dbg !5925

if.end24:                                         ; preds = %if.then20, %sw.bb17
  br label %sw.epilog, !dbg !5926

sw.default:                                       ; preds = %if.end9
  br label %do.body25, !dbg !5927

do.body25:                                        ; preds = %sw.default
  br label %do.cond26, !dbg !5929

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !5929

do.end27:                                         ; preds = %do.cond26
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7, ptr noundef @.str.1) #10, !dbg !5927
  store i32 %call29, ptr %tmp28, align 4, !dbg !5929
  %24 = load i32, ptr %tmp28, align 4, !dbg !5927
  store i32 -22, ptr %retval1, align 4, !dbg !5931
  br label %sw.epilog, !dbg !5932

sw.epilog:                                        ; preds = %do.end27, %if.end24, %if.end16
  %25 = load ptr, ptr %slot, align 8, !dbg !5933
  %owner30 = getelementptr inbounds %struct.hotplug_slot, ptr %25, i32 0, i32 3, !dbg !5934
  %26 = load ptr, ptr %owner30, align 8, !dbg !5934
  call void @module_put(ptr noundef %26) #9, !dbg !5935
  br label %exit, !dbg !5935

exit:                                             ; preds = %sw.epilog, %if.then8
  call void @llvm.dbg.label(metadata !5862), !dbg !5936
  %27 = load i32, ptr %retval1, align 4, !dbg !5937
  %tobool31 = icmp ne i32 %27, 0, !dbg !5937
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !5939

if.then32:                                        ; preds = %exit
  %28 = load i32, ptr %retval1, align 4, !dbg !5940
  %conv33 = sext i32 %28 to i64, !dbg !5940
  store i64 %conv33, ptr %retval, align 8, !dbg !5941
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5941

if.end34:                                         ; preds = %exit
  %29 = load i64, ptr %count.addr, align 8, !dbg !5942
  store i64 %29, ptr %retval, align 8, !dbg !5943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5943

cleanup:                                          ; preds = %if.end34, %if.then32
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #8, !dbg !5944
  call void @llvm.lifetime.end.p0(i64 1, ptr %power) #8, !dbg !5944
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpower) #8, !dbg !5944
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !5944
  %30 = load i64, ptr %retval, align 8, !dbg !5944
  ret i64 %30, !dbg !5944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_power_status(ptr noundef %slot, ptr noundef %value) #0 align 16 !dbg !5945 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !5947, metadata !DIExpression()), !dbg !5951
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !5948, metadata !DIExpression()), !dbg !5951
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #8, !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5949, metadata !DIExpression()), !dbg !5951
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !5951
  %ops1 = getelementptr inbounds %struct.hotplug_slot, ptr %0, i32 0, i32 0, !dbg !5951
  %1 = load ptr, ptr %ops1, align 8, !dbg !5951
  store ptr %1, ptr %ops, align 8, !dbg !5951
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #8, !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !5950, metadata !DIExpression()), !dbg !5951
  store i32 0, ptr %retval2, align 4, !dbg !5951
  %2 = load ptr, ptr %slot.addr, align 8, !dbg !5952
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 3, !dbg !5952
  %3 = load ptr, ptr %owner, align 8, !dbg !5952
  %call = call zeroext i1 @try_module_get(ptr noundef %3) #9, !dbg !5952
  br i1 %call, label %if.end, label %if.then, !dbg !5951

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5952
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5952

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ops, align 8, !dbg !5954
  %get_power_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %4, i32 0, i32 4, !dbg !5954
  %5 = load ptr, ptr %get_power_status, align 8, !dbg !5954
  %tobool = icmp ne ptr %5, null, !dbg !5954
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !5951

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %ops, align 8, !dbg !5954
  %get_power_status4 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 4, !dbg !5954
  %7 = load ptr, ptr %get_power_status4, align 8, !dbg !5954
  %8 = load ptr, ptr %slot.addr, align 8, !dbg !5954
  %9 = load ptr, ptr %value.addr, align 8, !dbg !5954
  %call5 = call i32 %7(ptr noundef %8, ptr noundef %9) #9, !dbg !5954
  store i32 %call5, ptr %retval2, align 4, !dbg !5954
  br label %if.end6, !dbg !5954

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %slot.addr, align 8, !dbg !5951
  %owner7 = getelementptr inbounds %struct.hotplug_slot, ptr %10, i32 0, i32 3, !dbg !5951
  %11 = load ptr, ptr %owner7, align 8, !dbg !5951
  call void @module_put(ptr noundef %11) #9, !dbg !5951
  %12 = load i32, ptr %retval2, align 4, !dbg !5951
  store i32 %12, ptr %retval, align 4, !dbg !5951
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5951

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #8, !dbg !5951
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #8, !dbg !5951
  %13 = load i32, ptr %retval, align 4, !dbg !5951
  ret i32 %13, !dbg !5951
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5956 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5959 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5962 dso_local void @module_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5963 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @attention_read_file(ptr noundef %pci_slot, ptr noundef %buf) #0 align 16 !dbg !5968 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %value = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5970, metadata !DIExpression()), !dbg !5974
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5971, metadata !DIExpression()), !dbg !5975
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #8, !dbg !5976
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5972, metadata !DIExpression()), !dbg !5977
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #8, !dbg !5978
  call void @llvm.dbg.declare(metadata ptr %value, metadata !5973, metadata !DIExpression()), !dbg !5979
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !5980
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !5981
  %1 = load ptr, ptr %hotplug, align 8, !dbg !5981
  %call = call i32 @get_attention_status(ptr noundef %1, ptr noundef %value) #9, !dbg !5982
  store i32 %call, ptr %retval1, align 4, !dbg !5983
  %2 = load i32, ptr %retval1, align 4, !dbg !5984
  %tobool = icmp ne i32 %2, 0, !dbg !5984
  br i1 %tobool, label %if.then, label %if.end, !dbg !5986

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %retval1, align 4, !dbg !5987
  %conv = sext i32 %3 to i64, !dbg !5987
  store i64 %conv, ptr %retval, align 8, !dbg !5988
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5988

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5989
  %5 = load i8, ptr %value, align 1, !dbg !5990
  %conv2 = zext i8 %5 to i32, !dbg !5990
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.5, i32 noundef %conv2) #9, !dbg !5991
  %conv4 = sext i32 %call3 to i64, !dbg !5991
  store i64 %conv4, ptr %retval, align 8, !dbg !5992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5992

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #8, !dbg !5993
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #8, !dbg !5993
  %6 = load i64, ptr %retval, align 8, !dbg !5993
  ret i64 %6, !dbg !5993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @attention_write_file(ptr noundef %pci_slot, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !5994 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %slot = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %lattention = alloca i64, align 8
  %attention = alloca i8, align 1
  %retval2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !5996, metadata !DIExpression()), !dbg !6005
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5997, metadata !DIExpression()), !dbg !6006
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5998, metadata !DIExpression()), !dbg !6007
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !6008
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !5999, metadata !DIExpression()), !dbg !6009
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !6010
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !6011
  %1 = load ptr, ptr %hotplug, align 8, !dbg !6011
  store ptr %1, ptr %slot, align 8, !dbg !6009
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #8, !dbg !6012
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6000, metadata !DIExpression()), !dbg !6013
  %2 = load ptr, ptr %slot, align 8, !dbg !6014
  %ops1 = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 0, !dbg !6015
  %3 = load ptr, ptr %ops1, align 8, !dbg !6015
  store ptr %3, ptr %ops, align 8, !dbg !6013
  call void @llvm.lifetime.start.p0(i64 8, ptr %lattention) #8, !dbg !6016
  call void @llvm.dbg.declare(metadata ptr %lattention, metadata !6001, metadata !DIExpression()), !dbg !6017
  call void @llvm.lifetime.start.p0(i64 1, ptr %attention) #8, !dbg !6018
  call void @llvm.dbg.declare(metadata ptr %attention, metadata !6002, metadata !DIExpression()), !dbg !6019
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #8, !dbg !6020
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !6003, metadata !DIExpression()), !dbg !6021
  store i32 0, ptr %retval2, align 4, !dbg !6021
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !6022
  %call = call i64 @simple_strtoul(ptr noundef %4, ptr noundef null, i32 noundef 10) #9, !dbg !6023
  store i64 %call, ptr %lattention, align 8, !dbg !6024
  %5 = load i64, ptr %lattention, align 8, !dbg !6025
  %and = and i64 %5, 255, !dbg !6026
  %conv = trunc i64 %and to i8, !dbg !6027
  store i8 %conv, ptr %attention, align 1, !dbg !6028
  br label %do.body, !dbg !6029

do.body:                                          ; preds = %entry
  %6 = load i8, ptr @debug, align 1, !dbg !6030, !range !5241, !noundef !553
  %tobool = trunc i8 %6 to i1, !dbg !6030
  br i1 %tobool, label %if.then, label %if.end, !dbg !6033

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !6034

do.body3:                                         ; preds = %if.then
  br label %do.cond, !dbg !6036

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !6036

do.end:                                           ; preds = %do.cond
  %7 = load i8, ptr %attention, align 1, !dbg !6034
  %conv4 = zext i8 %7 to i32, !dbg !6034
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.9, ptr noundef @.str.1, ptr noundef @__func__.attention_write_file, i32 noundef %conv4) #10, !dbg !6034
  store i32 %call5, ptr %tmp, align 4, !dbg !6036
  %8 = load i32, ptr %tmp, align 4, !dbg !6034
  br label %if.end, !dbg !6030

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond6, !dbg !6033

do.cond6:                                         ; preds = %if.end
  br label %do.end7, !dbg !6033

do.end7:                                          ; preds = %do.cond6
  %9 = load ptr, ptr %slot, align 8, !dbg !6038
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %9, i32 0, i32 3, !dbg !6040
  %10 = load ptr, ptr %owner, align 8, !dbg !6040
  %call8 = call zeroext i1 @try_module_get(ptr noundef %10) #9, !dbg !6041
  br i1 %call8, label %if.end10, label %if.then9, !dbg !6042

if.then9:                                         ; preds = %do.end7
  store i32 -19, ptr %retval2, align 4, !dbg !6043
  br label %exit, !dbg !6045

if.end10:                                         ; preds = %do.end7
  %11 = load ptr, ptr %ops, align 8, !dbg !6046
  %set_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %11, i32 0, i32 2, !dbg !6048
  %12 = load ptr, ptr %set_attention_status, align 8, !dbg !6048
  %tobool11 = icmp ne ptr %12, null, !dbg !6046
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !6049

if.then12:                                        ; preds = %if.end10
  %13 = load ptr, ptr %ops, align 8, !dbg !6050
  %set_attention_status13 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %13, i32 0, i32 2, !dbg !6051
  %14 = load ptr, ptr %set_attention_status13, align 8, !dbg !6051
  %15 = load ptr, ptr %slot, align 8, !dbg !6052
  %16 = load i8, ptr %attention, align 1, !dbg !6053
  %call14 = call i32 %14(ptr noundef %15, i8 noundef zeroext %16) #9, !dbg !6050
  store i32 %call14, ptr %retval2, align 4, !dbg !6054
  br label %if.end15, !dbg !6055

if.end15:                                         ; preds = %if.then12, %if.end10
  %17 = load ptr, ptr %slot, align 8, !dbg !6056
  %owner16 = getelementptr inbounds %struct.hotplug_slot, ptr %17, i32 0, i32 3, !dbg !6057
  %18 = load ptr, ptr %owner16, align 8, !dbg !6057
  call void @module_put(ptr noundef %18) #9, !dbg !6058
  br label %exit, !dbg !6058

exit:                                             ; preds = %if.end15, %if.then9
  call void @llvm.dbg.label(metadata !6004), !dbg !6059
  %19 = load i32, ptr %retval2, align 4, !dbg !6060
  %tobool17 = icmp ne i32 %19, 0, !dbg !6060
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !6062

if.then18:                                        ; preds = %exit
  %20 = load i32, ptr %retval2, align 4, !dbg !6063
  %conv19 = sext i32 %20 to i64, !dbg !6063
  store i64 %conv19, ptr %retval, align 8, !dbg !6064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6064

if.end20:                                         ; preds = %exit
  %21 = load i64, ptr %count.addr, align 8, !dbg !6065
  store i64 %21, ptr %retval, align 8, !dbg !6066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6066

cleanup:                                          ; preds = %if.end20, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #8, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 1, ptr %attention) #8, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %lattention) #8, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #8, !dbg !6067
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !6067
  %22 = load i64, ptr %retval, align 8, !dbg !6067
  ret i64 %22, !dbg !6067
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_attention_status(ptr noundef %slot, ptr noundef %value) #0 align 16 !dbg !6068 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6070, metadata !DIExpression()), !dbg !6074
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6071, metadata !DIExpression()), !dbg !6074
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #8, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6072, metadata !DIExpression()), !dbg !6074
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !6074
  %ops1 = getelementptr inbounds %struct.hotplug_slot, ptr %0, i32 0, i32 0, !dbg !6074
  %1 = load ptr, ptr %ops1, align 8, !dbg !6074
  store ptr %1, ptr %ops, align 8, !dbg !6074
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #8, !dbg !6074
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !6073, metadata !DIExpression()), !dbg !6074
  store i32 0, ptr %retval2, align 4, !dbg !6074
  %2 = load ptr, ptr %slot.addr, align 8, !dbg !6075
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 3, !dbg !6075
  %3 = load ptr, ptr %owner, align 8, !dbg !6075
  %call = call zeroext i1 @try_module_get(ptr noundef %3) #9, !dbg !6075
  br i1 %call, label %if.end, label %if.then, !dbg !6074

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6075
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6075

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ops, align 8, !dbg !6077
  %get_attention_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %4, i32 0, i32 5, !dbg !6077
  %5 = load ptr, ptr %get_attention_status, align 8, !dbg !6077
  %tobool = icmp ne ptr %5, null, !dbg !6077
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !6074

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %ops, align 8, !dbg !6077
  %get_attention_status4 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 5, !dbg !6077
  %7 = load ptr, ptr %get_attention_status4, align 8, !dbg !6077
  %8 = load ptr, ptr %slot.addr, align 8, !dbg !6077
  %9 = load ptr, ptr %value.addr, align 8, !dbg !6077
  %call5 = call i32 %7(ptr noundef %8, ptr noundef %9) #9, !dbg !6077
  store i32 %call5, ptr %retval2, align 4, !dbg !6077
  br label %if.end6, !dbg !6077

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %slot.addr, align 8, !dbg !6074
  %owner7 = getelementptr inbounds %struct.hotplug_slot, ptr %10, i32 0, i32 3, !dbg !6074
  %11 = load ptr, ptr %owner7, align 8, !dbg !6074
  call void @module_put(ptr noundef %11) #9, !dbg !6074
  %12 = load i32, ptr %retval2, align 4, !dbg !6074
  store i32 %12, ptr %retval, align 4, !dbg !6074
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6074

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #8, !dbg !6074
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #8, !dbg !6074
  %13 = load i32, ptr %retval, align 4, !dbg !6074
  ret i32 %13, !dbg !6074
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @latch_read_file(ptr noundef %pci_slot, ptr noundef %buf) #0 align 16 !dbg !6079 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %value = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !6081, metadata !DIExpression()), !dbg !6085
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6082, metadata !DIExpression()), !dbg !6086
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #8, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6083, metadata !DIExpression()), !dbg !6088
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #8, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6084, metadata !DIExpression()), !dbg !6090
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !6091
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !6092
  %1 = load ptr, ptr %hotplug, align 8, !dbg !6092
  %call = call i32 @get_latch_status(ptr noundef %1, ptr noundef %value) #9, !dbg !6093
  store i32 %call, ptr %retval1, align 4, !dbg !6094
  %2 = load i32, ptr %retval1, align 4, !dbg !6095
  %tobool = icmp ne i32 %2, 0, !dbg !6095
  br i1 %tobool, label %if.then, label %if.end, !dbg !6097

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %retval1, align 4, !dbg !6098
  %conv = sext i32 %3 to i64, !dbg !6098
  store i64 %conv, ptr %retval, align 8, !dbg !6099
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6099

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !6100
  %5 = load i8, ptr %value, align 1, !dbg !6101
  %conv2 = zext i8 %5 to i32, !dbg !6101
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.5, i32 noundef %conv2) #9, !dbg !6102
  %conv4 = sext i32 %call3 to i64, !dbg !6102
  store i64 %conv4, ptr %retval, align 8, !dbg !6103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6103

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #8, !dbg !6104
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #8, !dbg !6104
  %6 = load i64, ptr %retval, align 8, !dbg !6104
  ret i64 %6, !dbg !6104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_latch_status(ptr noundef %slot, ptr noundef %value) #0 align 16 !dbg !6105 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6107, metadata !DIExpression()), !dbg !6111
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6108, metadata !DIExpression()), !dbg !6111
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #8, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6109, metadata !DIExpression()), !dbg !6111
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !6111
  %ops1 = getelementptr inbounds %struct.hotplug_slot, ptr %0, i32 0, i32 0, !dbg !6111
  %1 = load ptr, ptr %ops1, align 8, !dbg !6111
  store ptr %1, ptr %ops, align 8, !dbg !6111
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #8, !dbg !6111
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !6110, metadata !DIExpression()), !dbg !6111
  store i32 0, ptr %retval2, align 4, !dbg !6111
  %2 = load ptr, ptr %slot.addr, align 8, !dbg !6112
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 3, !dbg !6112
  %3 = load ptr, ptr %owner, align 8, !dbg !6112
  %call = call zeroext i1 @try_module_get(ptr noundef %3) #9, !dbg !6112
  br i1 %call, label %if.end, label %if.then, !dbg !6111

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6112

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ops, align 8, !dbg !6114
  %get_latch_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %4, i32 0, i32 6, !dbg !6114
  %5 = load ptr, ptr %get_latch_status, align 8, !dbg !6114
  %tobool = icmp ne ptr %5, null, !dbg !6114
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !6111

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %ops, align 8, !dbg !6114
  %get_latch_status4 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 6, !dbg !6114
  %7 = load ptr, ptr %get_latch_status4, align 8, !dbg !6114
  %8 = load ptr, ptr %slot.addr, align 8, !dbg !6114
  %9 = load ptr, ptr %value.addr, align 8, !dbg !6114
  %call5 = call i32 %7(ptr noundef %8, ptr noundef %9) #9, !dbg !6114
  store i32 %call5, ptr %retval2, align 4, !dbg !6114
  br label %if.end6, !dbg !6114

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %slot.addr, align 8, !dbg !6111
  %owner7 = getelementptr inbounds %struct.hotplug_slot, ptr %10, i32 0, i32 3, !dbg !6111
  %11 = load ptr, ptr %owner7, align 8, !dbg !6111
  call void @module_put(ptr noundef %11) #9, !dbg !6111
  %12 = load i32, ptr %retval2, align 4, !dbg !6111
  store i32 %12, ptr %retval, align 4, !dbg !6111
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6111

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #8, !dbg !6111
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #8, !dbg !6111
  %13 = load i32, ptr %retval, align 4, !dbg !6111
  ret i32 %13, !dbg !6111
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @presence_read_file(ptr noundef %pci_slot, ptr noundef %buf) #0 align 16 !dbg !6116 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %value = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !6118, metadata !DIExpression()), !dbg !6122
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6119, metadata !DIExpression()), !dbg !6123
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #8, !dbg !6124
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6120, metadata !DIExpression()), !dbg !6125
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #8, !dbg !6126
  call void @llvm.dbg.declare(metadata ptr %value, metadata !6121, metadata !DIExpression()), !dbg !6127
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !6128
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !6129
  %1 = load ptr, ptr %hotplug, align 8, !dbg !6129
  %call = call i32 @get_adapter_status(ptr noundef %1, ptr noundef %value) #9, !dbg !6130
  store i32 %call, ptr %retval1, align 4, !dbg !6131
  %2 = load i32, ptr %retval1, align 4, !dbg !6132
  %tobool = icmp ne i32 %2, 0, !dbg !6132
  br i1 %tobool, label %if.then, label %if.end, !dbg !6134

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %retval1, align 4, !dbg !6135
  %conv = sext i32 %3 to i64, !dbg !6135
  store i64 %conv, ptr %retval, align 8, !dbg !6136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6136

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !6137
  %5 = load i8, ptr %value, align 1, !dbg !6138
  %conv2 = zext i8 %5 to i32, !dbg !6138
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.5, i32 noundef %conv2) #9, !dbg !6139
  %conv4 = sext i32 %call3 to i64, !dbg !6139
  store i64 %conv4, ptr %retval, align 8, !dbg !6140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6140

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #8, !dbg !6141
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #8, !dbg !6141
  %6 = load i64, ptr %retval, align 8, !dbg !6141
  ret i64 %6, !dbg !6141
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_adapter_status(ptr noundef %slot, ptr noundef %value) #0 align 16 !dbg !6142 {
entry:
  %retval = alloca i32, align 4
  %slot.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %retval2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6144, metadata !DIExpression()), !dbg !6148
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6145, metadata !DIExpression()), !dbg !6148
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #8, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !6146, metadata !DIExpression()), !dbg !6148
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !6148
  %ops1 = getelementptr inbounds %struct.hotplug_slot, ptr %0, i32 0, i32 0, !dbg !6148
  %1 = load ptr, ptr %ops1, align 8, !dbg !6148
  store ptr %1, ptr %ops, align 8, !dbg !6148
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval2) #8, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %retval2, metadata !6147, metadata !DIExpression()), !dbg !6148
  store i32 0, ptr %retval2, align 4, !dbg !6148
  %2 = load ptr, ptr %slot.addr, align 8, !dbg !6149
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %2, i32 0, i32 3, !dbg !6149
  %3 = load ptr, ptr %owner, align 8, !dbg !6149
  %call = call zeroext i1 @try_module_get(ptr noundef %3) #9, !dbg !6149
  br i1 %call, label %if.end, label %if.then, !dbg !6148

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !6149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6149

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ops, align 8, !dbg !6151
  %get_adapter_status = getelementptr inbounds %struct.hotplug_slot_ops, ptr %4, i32 0, i32 7, !dbg !6151
  %5 = load ptr, ptr %get_adapter_status, align 8, !dbg !6151
  %tobool = icmp ne ptr %5, null, !dbg !6151
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !6148

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %ops, align 8, !dbg !6151
  %get_adapter_status4 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %6, i32 0, i32 7, !dbg !6151
  %7 = load ptr, ptr %get_adapter_status4, align 8, !dbg !6151
  %8 = load ptr, ptr %slot.addr, align 8, !dbg !6151
  %9 = load ptr, ptr %value.addr, align 8, !dbg !6151
  %call5 = call i32 %7(ptr noundef %8, ptr noundef %9) #9, !dbg !6151
  store i32 %call5, ptr %retval2, align 4, !dbg !6151
  br label %if.end6, !dbg !6151

if.end6:                                          ; preds = %if.then3, %if.end
  %10 = load ptr, ptr %slot.addr, align 8, !dbg !6148
  %owner7 = getelementptr inbounds %struct.hotplug_slot, ptr %10, i32 0, i32 3, !dbg !6148
  %11 = load ptr, ptr %owner7, align 8, !dbg !6148
  call void @module_put(ptr noundef %11) #9, !dbg !6148
  %12 = load i32, ptr %retval2, align 4, !dbg !6148
  store i32 %12, ptr %retval, align 4, !dbg !6148
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6148

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval2) #8, !dbg !6148
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #8, !dbg !6148
  %13 = load i32, ptr %retval, align 4, !dbg !6148
  ret i32 %13, !dbg !6148
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @test_write_file(ptr noundef %pci_slot, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !6153 {
entry:
  %retval = alloca i64, align 8
  %pci_slot.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %slot = alloca ptr, align 8
  %ltest = alloca i64, align 8
  %test = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pci_slot, ptr %pci_slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pci_slot.addr, metadata !6155, metadata !DIExpression()), !dbg !6163
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6156, metadata !DIExpression()), !dbg !6164
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6157, metadata !DIExpression()), !dbg !6165
  call void @llvm.lifetime.start.p0(i64 8, ptr %slot) #8, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %slot, metadata !6158, metadata !DIExpression()), !dbg !6167
  %0 = load ptr, ptr %pci_slot.addr, align 8, !dbg !6168
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 2, !dbg !6169
  %1 = load ptr, ptr %hotplug, align 8, !dbg !6169
  store ptr %1, ptr %slot, align 8, !dbg !6167
  call void @llvm.lifetime.start.p0(i64 8, ptr %ltest) #8, !dbg !6170
  call void @llvm.dbg.declare(metadata ptr %ltest, metadata !6159, metadata !DIExpression()), !dbg !6171
  call void @llvm.lifetime.start.p0(i64 4, ptr %test) #8, !dbg !6172
  call void @llvm.dbg.declare(metadata ptr %test, metadata !6160, metadata !DIExpression()), !dbg !6173
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #8, !dbg !6174
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !6161, metadata !DIExpression()), !dbg !6175
  store i32 0, ptr %retval1, align 4, !dbg !6175
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6176
  %call = call i64 @simple_strtoul(ptr noundef %2, ptr noundef null, i32 noundef 10) #9, !dbg !6177
  store i64 %call, ptr %ltest, align 8, !dbg !6178
  %3 = load i64, ptr %ltest, align 8, !dbg !6179
  %and = and i64 %3, 4294967295, !dbg !6180
  %conv = trunc i64 %and to i32, !dbg !6181
  store i32 %conv, ptr %test, align 4, !dbg !6182
  br label %do.body, !dbg !6183

do.body:                                          ; preds = %entry
  %4 = load i8, ptr @debug, align 1, !dbg !6184, !range !5241, !noundef !553
  %tobool = trunc i8 %4 to i1, !dbg !6184
  br i1 %tobool, label %if.then, label %if.end, !dbg !6187

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !6188

do.body2:                                         ; preds = %if.then
  br label %do.cond, !dbg !6190

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !6190

do.end:                                           ; preds = %do.cond
  %5 = load i32, ptr %test, align 4, !dbg !6188
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef @.str.1, ptr noundef @__func__.test_write_file, i32 noundef %5) #10, !dbg !6188
  store i32 %call3, ptr %tmp, align 4, !dbg !6190
  %6 = load i32, ptr %tmp, align 4, !dbg !6188
  br label %if.end, !dbg !6184

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond4, !dbg !6187

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !6187

do.end5:                                          ; preds = %do.cond4
  %7 = load ptr, ptr %slot, align 8, !dbg !6192
  %owner = getelementptr inbounds %struct.hotplug_slot, ptr %7, i32 0, i32 3, !dbg !6194
  %8 = load ptr, ptr %owner, align 8, !dbg !6194
  %call6 = call zeroext i1 @try_module_get(ptr noundef %8) #9, !dbg !6195
  br i1 %call6, label %if.end8, label %if.then7, !dbg !6196

if.then7:                                         ; preds = %do.end5
  store i32 -19, ptr %retval1, align 4, !dbg !6197
  br label %exit, !dbg !6199

if.end8:                                          ; preds = %do.end5
  %9 = load ptr, ptr %slot, align 8, !dbg !6200
  %ops = getelementptr inbounds %struct.hotplug_slot, ptr %9, i32 0, i32 0, !dbg !6202
  %10 = load ptr, ptr %ops, align 8, !dbg !6202
  %hardware_test = getelementptr inbounds %struct.hotplug_slot_ops, ptr %10, i32 0, i32 3, !dbg !6203
  %11 = load ptr, ptr %hardware_test, align 8, !dbg !6203
  %tobool9 = icmp ne ptr %11, null, !dbg !6200
  br i1 %tobool9, label %if.then10, label %if.end14, !dbg !6204

if.then10:                                        ; preds = %if.end8
  %12 = load ptr, ptr %slot, align 8, !dbg !6205
  %ops11 = getelementptr inbounds %struct.hotplug_slot, ptr %12, i32 0, i32 0, !dbg !6206
  %13 = load ptr, ptr %ops11, align 8, !dbg !6206
  %hardware_test12 = getelementptr inbounds %struct.hotplug_slot_ops, ptr %13, i32 0, i32 3, !dbg !6207
  %14 = load ptr, ptr %hardware_test12, align 8, !dbg !6207
  %15 = load ptr, ptr %slot, align 8, !dbg !6208
  %16 = load i32, ptr %test, align 4, !dbg !6209
  %call13 = call i32 %14(ptr noundef %15, i32 noundef %16) #9, !dbg !6205
  store i32 %call13, ptr %retval1, align 4, !dbg !6210
  br label %if.end14, !dbg !6211

if.end14:                                         ; preds = %if.then10, %if.end8
  %17 = load ptr, ptr %slot, align 8, !dbg !6212
  %owner15 = getelementptr inbounds %struct.hotplug_slot, ptr %17, i32 0, i32 3, !dbg !6213
  %18 = load ptr, ptr %owner15, align 8, !dbg !6213
  call void @module_put(ptr noundef %18) #9, !dbg !6214
  br label %exit, !dbg !6214

exit:                                             ; preds = %if.end14, %if.then7
  call void @llvm.dbg.label(metadata !6162), !dbg !6215
  %19 = load i32, ptr %retval1, align 4, !dbg !6216
  %tobool16 = icmp ne i32 %19, 0, !dbg !6216
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !6218

if.then17:                                        ; preds = %exit
  %20 = load i32, ptr %retval1, align 4, !dbg !6219
  %conv18 = sext i32 %20 to i64, !dbg !6219
  store i64 %conv18, ptr %retval, align 8, !dbg !6220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6220

if.end19:                                         ; preds = %exit
  %21 = load i64, ptr %count.addr, align 8, !dbg !6221
  store i64 %21, ptr %retval, align 8, !dbg !6222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6222

cleanup:                                          ; preds = %if.end19, %if.then17
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #8, !dbg !6223
  call void @llvm.lifetime.end.p0(i64 4, ptr %test) #8, !dbg !6223
  call void @llvm.lifetime.end.p0(i64 8, ptr %ltest) #8, !dbg !6223
  call void @llvm.lifetime.end.p0(i64 8, ptr %slot) #8, !dbg !6223
  %22 = load i64, ptr %retval, align 8, !dbg !6223
  ret i64 %22, !dbg !6223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6224 dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6227 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6231, metadata !DIExpression()), !dbg !6234
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6232, metadata !DIExpression()), !dbg !6235
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6233, metadata !DIExpression()), !dbg !6236
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6237
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6239
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6240
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !6241
  br i1 %call, label %if.end, label %if.then, !dbg !6242

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6243

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6244
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6245
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6246
  store ptr %3, ptr %prev1, align 8, !dbg !6247
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6248
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6249
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6250
  store ptr %5, ptr %next2, align 8, !dbg !6251
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6252
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6253
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6254
  store ptr %7, ptr %prev3, align 8, !dbg !6255
  br label %do.body, !dbg !6256

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6257

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6259

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6257

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6261
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6261
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6261
  store volatile ptr %9, ptr %next6, align 8, !dbg !6261
  br label %do.end7, !dbg !6261

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6257

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6263
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6264 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6268, metadata !DIExpression()), !dbg !6271
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6269, metadata !DIExpression()), !dbg !6272
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6270, metadata !DIExpression()), !dbg !6273
  ret i1 true, !dbg !6274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pci_slot_name(ptr noundef %slot) #4 align 16 !dbg !6275 {
entry:
  %slot.addr = alloca ptr, align 8
  store ptr %slot, ptr %slot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %slot.addr, metadata !6281, metadata !DIExpression()), !dbg !6282
  %0 = load ptr, ptr %slot.addr, align 8, !dbg !6283
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %0, i32 0, i32 4, !dbg !6284
  %call = call ptr @kobject_name(ptr noundef %kobj) #9, !dbg !6285
  ret ptr %call, !dbg !6286
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #4 align 16 !dbg !6287 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6289, metadata !DIExpression()), !dbg !6290
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6291
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6292
  %1 = load ptr, ptr %name, align 8, !dbg !6292
  ret ptr %1, !dbg !6293
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6294 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6298 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6300, metadata !DIExpression()), !dbg !6301
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6302
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !6304
  br i1 %call, label %if.end, label %if.then, !dbg !6305

if.then:                                          ; preds = %entry
  br label %return, !dbg !6306

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6307
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6308
  %2 = load ptr, ptr %prev, align 8, !dbg !6308
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6309
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6310
  %4 = load ptr, ptr %next, align 8, !dbg !6310
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !6311
  br label %return, !dbg !6312

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6313 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6317, metadata !DIExpression()), !dbg !6318
  ret i1 true, !dbg !6319
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6320 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6322, metadata !DIExpression()), !dbg !6324
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6323, metadata !DIExpression()), !dbg !6325
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6326
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6327
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6328
  store ptr %0, ptr %prev1, align 8, !dbg !6329
  br label %do.body, !dbg !6330

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6331

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6333

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6331

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6335
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6335
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6335
  store volatile ptr %2, ptr %next4, align 8, !dbg !6335
  br label %do.end5, !dbg !6335

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6331

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpci_hotplug_init(i32 noundef %debug) #4 align 16 !dbg !6338 {
entry:
  %debug.addr = alloca i32, align 4
  store i32 %debug, ptr %debug.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %debug.addr, metadata !6341, metadata !DIExpression()), !dbg !6342
  ret i32 0, !dbg !6343
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105}
!llvm.ident = !{!5106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___pci_hp_register325", scope: !2, file: !3, line: 420, type: !164, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pci/hotplug/.pci_hotplug_core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pci/hotplug/pci_hotplug\22 -D KBUILD_BASENAME=\22pci_hotplug_core\22 -D KBUILD_MODNAME=\22pci_hotplug\22 -D __KBUILD_MODNAME=kmod_pci_hotplug -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pci/hotplug/pci_hotplug_core.ll drivers/pci/hotplug/pci_hotplug_core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !163, globals: !4971, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/hotplug/pci_hotplug_core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "020b8daabd47f938329ca003fca0dffb")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !64, !80, !87, !94, !102, !110, !116, !125, !130, !135, !141, !147, !158}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !13, line: 9, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !44, line: 16, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "TT_NONE", value: 0)
!47 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!48 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !50, line: 15, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!53 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!54 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !57, line: 68, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!60 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!61 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!62 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !65, line: 1325, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!66 = !{!67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!67 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!68 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!69 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!70 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!71 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!72 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!73 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!74 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!75 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!76 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!77 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!78 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!79 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !111, line: 30, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!112 = !{!113, !114, !115}
!113 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!115 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !88, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !88, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !88, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !88, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !142, line: 45, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!145 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!146 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !148, line: 53, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157}
!150 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!151 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!152 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!153 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!154 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!155 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!156 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!157 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 10, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "false", value: 0)
!162 = !DIEnumerator(name: "true", value: 1)
!163 = !{!164, !165, !319, !305, !227, !418, !4137, !4139}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !167)
!167 = !{!168, !169, !176, !181, !3813, !3839, !3840, !3841, !3842, !3846, !3849, !3850, !3851, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3918, !3922, !3940, !3957, !3958, !3959, !3960, !3969, !3992, !3993, !3996, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4010, !4011, !4097, !4105, !4106, !4107, !4109, !4113, !4114, !4118, !4119, !4120, !4121, !4123, !4124, !4125, !4132, !4133, !4134, !4136}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !166, file: !21, line: 403, baseType: !20, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !166, file: !21, line: 406, baseType: !170, size: 128, offset: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !171, line: 190, size: 128, elements: !172)
!171 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!172 = !{!173, !175}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 191, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !170, file: !171, line: 191, baseType: !174, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !21, line: 409, baseType: !177, size: 448, offset: 192)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 448, elements: !179)
!178 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !{!180}
!180 = !DISubrange(count: 56)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !166, file: !21, line: 417, baseType: !182, size: 768, offset: 640)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !183)
!183 = !{!184, !3807, !3808, !3809, !3812}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !182, file: !21, line: 46, baseType: !185, size: 512)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !148, line: 64, size: 512, elements: !186)
!186 = !{!187, !190, !191, !193, !282, !3694, !3797, !3802, !3803, !3804, !3805, !3806}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !148, line: 65, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !185, file: !148, line: 66, baseType: !170, size: 128, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !185, file: !148, line: 67, baseType: !192, size: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !185, file: !148, line: 68, baseType: !194, size: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !148, line: 168, size: 768, elements: !196)
!196 = !{!197, !198, !241, !242}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !195, file: !148, line: 169, baseType: !170, size: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !195, file: !148, line: 170, baseType: !199, size: 32, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !200, line: 29, baseType: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !200, line: 17, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !200, line: 18, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !200, line: 18, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !204, file: !200, line: 19, baseType: !207, size: 32)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !208, line: 14, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !207, file: !208, line: 15, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !212, line: 44, baseType: !213)
!212 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !212, line: 14, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, scope: !213, file: !212, line: 15, baseType: !216, size: 32)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !213, file: !212, line: 15, size: 32, elements: !217)
!217 = !{!218, !223, !233}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !212, line: 16, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !171, line: 174, baseType: !220)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 172, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !220, file: !171, line: 173, baseType: !103, size: 32)
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !212, line: 24, baseType: !224, size: 16)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !212, line: 24, size: 16, elements: !225)
!225 = !{!226, !232}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !224, file: !212, line: 25, baseType: !227, size: 8)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !228, line: 17, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!231 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !224, file: !212, line: 26, baseType: !227, size: 8, offset: 8)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !216, file: !212, line: 28, baseType: !234, size: 32)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !212, line: 28, size: 32, elements: !235)
!235 = !{!236, !240}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !234, file: !212, line: 29, baseType: !237, size: 16)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !228, line: 19, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !230, line: 24, baseType: !239)
!239 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !234, file: !212, line: 30, baseType: !237, size: 16, offset: 16)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !195, file: !148, line: 171, baseType: !185, size: 512, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !195, file: !148, line: 172, baseType: !243, size: 64, offset: 704)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !148, line: 133, size: 192, elements: !246)
!246 = !{!247, !254, !259}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !245, file: !148, line: 134, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!103, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !148, line: 135, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!188, !252}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !245, file: !148, line: 136, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!103, !252, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !148, line: 125, size: 20736, elements: !266)
!266 = !{!267, !272, !276, !277, !281}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !265, file: !148, line: 126, baseType: !268, size: 192)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 192, elements: !270)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!270 = !{!271}
!271 = !DISubrange(count: 3)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !265, file: !148, line: 127, baseType: !273, size: 4096, offset: 192)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 4096, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !265, file: !148, line: 128, baseType: !103, size: 32, offset: 4288)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !265, file: !148, line: 129, baseType: !278, size: 16384, offset: 4320)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 16384, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 2048)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !265, file: !148, line: 130, baseType: !103, size: 32, offset: 20704)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !185, file: !148, line: 69, baseType: !283, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !148, line: 116, size: 384, elements: !286)
!286 = !{!287, !291, !320, !3656, !3684, !3688}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !285, file: !148, line: 117, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !192}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !285, file: !148, line: 118, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !295, line: 254, size: 128, elements: !296)
!295 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!296 = !{!297, !312}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !294, file: !295, line: 255, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !192, !306, !269}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !171, line: 66, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !303, line: 73, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !303, line: 15, baseType: !305)
!305 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !295, line: 30, size: 128, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !295, line: 31, baseType: !188, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !307, file: !295, line: 32, baseType: !311, size: 16, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !171, line: 24, baseType: !239)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !294, file: !295, line: 256, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!301, !192, !306, !188, !316}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !171, line: 61, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !303, line: 72, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !303, line: 16, baseType: !319)
!319 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !285, file: !148, line: 119, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !295, line: 84, size: 320, elements: !325)
!325 = !{!326, !327, !331, !3652, !3654}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !295, line: 85, baseType: !188, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !324, file: !295, line: 86, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!311, !192, !306, !103}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !324, file: !295, line: 88, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!311, !192, !335, !103}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !295, line: 175, size: 512, elements: !337)
!337 = !{!338, !339, !340, !341, !3643, !3647, !3648}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !336, file: !295, line: 176, baseType: !307, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !336, file: !295, line: 177, baseType: !316, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !336, file: !295, line: 178, baseType: !164, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !336, file: !295, line: 179, baseType: !342, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !347)
!347 = !{!348, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3637, !3638, !3639, !3640, !3641, !3642}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !346, file: !28, line: 473, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !351)
!351 = !{!352, !353, !354, !362, !363, !370, !371, !374, !375, !3472, !3473, !3474, !3475, !3476, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3516, !3519, !3520, !3521, !3530, !3531, !3532, !3533}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !350, file: !28, line: 642, baseType: !311, size: 16)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !350, file: !28, line: 643, baseType: !239, size: 16, offset: 16)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !350, file: !28, line: 644, baseType: !355, size: 32, offset: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !356, line: 23, baseType: !357)
!356 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 21, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !357, file: !356, line: 22, baseType: !360, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !171, line: 37, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !303, line: 49, baseType: !7)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !350, file: !28, line: 645, baseType: !170, size: 128, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !350, file: !28, line: 646, baseType: !364, size: 32, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !356, line: 28, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 26, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !356, line: 27, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !171, line: 38, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !303, line: 50, baseType: !7)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !350, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !350, file: !28, line: 650, baseType: !372, size: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !350, file: !28, line: 651, baseType: !372, size: 64, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !350, file: !28, line: 654, baseType: !376, size: 64, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !379)
!379 = !{!380, !3297, !3310, !3314, !3318, !3322, !3326, !3330, !3334, !3338, !3342, !3343, !3347, !3351, !3388, !3417, !3421, !3427, !3431, !3435, !3439, !3443, !3447, !3453, !3457}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !378, file: !28, line: 1967, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !349, !384, !7}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !386, line: 82, size: 1536, elements: !387)
!386 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!387 = !{!388, !389, !399, !407, !408, !428, !429, !433, !446, !3280, !3281, !3282, !3283, !3289, !3290, !3291}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !385, file: !386, line: 84, baseType: !7, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !385, file: !386, line: 85, baseType: !390, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !391, line: 275, baseType: !392)
!391 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !391, line: 275, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !392, file: !391, line: 275, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !391, line: 69, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !391, line: 64, size: 32, elements: !397)
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !396, file: !391, line: 65, baseType: !7, size: 32)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !385, file: !386, line: 86, baseType: !400, size: 128, offset: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !401, line: 38, size: 128, elements: !402)
!401 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!402 = !{!403, !405}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !401, line: 39, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !400, file: !401, line: 39, baseType: !406, size: 64, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !385, file: !386, line: 87, baseType: !384, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !385, file: !386, line: 88, baseType: !409, size: 128, offset: 256)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !386, line: 49, size: 128, elements: !410)
!410 = !{!411, !425}
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !386, line: 50, baseType: !412, size: 64)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !386, line: 50, size: 64, elements: !413)
!413 = !{!414, !421}
!414 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !386, line: 51, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !412, file: !386, line: 51, size: 64, elements: !416)
!416 = !{!417, !420}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !415, file: !386, line: 52, baseType: !418, size: 32)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !228, line: 21, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !230, line: 27, baseType: !7)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !415, file: !386, line: 52, baseType: !418, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !412, file: !386, line: 54, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !228, line: 23, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !230, line: 31, baseType: !424)
!424 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !386, line: 56, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !385, file: !386, line: 89, baseType: !349, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !385, file: !386, line: 91, baseType: !430, size: 256, offset: 448)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 256, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !385, file: !386, line: 94, baseType: !434, size: 64, offset: 704)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !435, line: 25, size: 64, elements: !436)
!435 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !435, line: 26, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !435, line: 26, size: 64, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !438, file: !435, line: 28, baseType: !423, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, scope: !438, file: !435, line: 30, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !435, line: 30, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !442, file: !435, line: 31, baseType: !199, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !442, file: !435, line: 32, baseType: !103, size: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !385, file: !386, line: 95, baseType: !447, size: 64, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !386, line: 128, size: 1024, align: 512, elements: !450)
!450 = !{!451, !455, !456, !463, !469, !473, !477, !481, !482, !486, !490, !3270, !3274}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !449, file: !386, line: 129, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!103, !384, !7}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !449, file: !386, line: 130, baseType: !452, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !449, file: !386, line: 131, baseType: !457, size: 64, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!103, !460, !462}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !449, file: !386, line: 132, baseType: !464, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!103, !460, !7, !188, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !449, file: !386, line: 134, baseType: !470, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!103, !460}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !449, file: !386, line: 135, baseType: !474, size: 64, offset: 320)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!103, !384}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !449, file: !386, line: 136, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !384}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !449, file: !386, line: 137, baseType: !478, size: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !449, file: !386, line: 138, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !384, !349}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !449, file: !386, line: 139, baseType: !487, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!269, !384, !269, !103}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !449, file: !386, line: 140, baseType: !491, size: 64, offset: 640)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!494, !3269}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !496, line: 70, size: 256, elements: !497)
!496 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!497 = !{!498, !499, !3265, !3266}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !495, file: !496, line: 71, baseType: !384, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !495, file: !496, line: 72, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !502)
!502 = !{!503, !504, !507, !508, !509, !513, !562, !723, !763, !853, !857, !858, !859, !860, !861, !870, !871, !872, !873, !878, !882, !883, !886, !889, !892, !895, !896, !897, !938, !3196, !3197, !3198, !3199, !3200, !3201, !3204, !3206, !3213, !3214, !3215, !3216, !3217, !3232, !3233, !3234, !3235, !3236, !3239, !3240, !3241, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !501, file: !28, line: 1191, baseType: !170, size: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !501, file: !28, line: 1192, baseType: !505, size: 32, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !171, line: 21, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !171, line: 18, baseType: !418)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !501, file: !28, line: 1193, baseType: !231, size: 8, offset: 160)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !501, file: !28, line: 1194, baseType: !319, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !501, file: !28, line: 1195, baseType: !510, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !171, line: 52, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !303, line: 88, baseType: !512)
!512 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !501, file: !28, line: 1196, baseType: !514, size: 64, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !516)
!516 = !{!517, !518, !519, !526, !530, !534, !538, !539, !540, !550, !554, !555, !556, !558, !559, !560, !561}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !515, file: !28, line: 2367, baseType: !188, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !515, file: !28, line: 2368, baseType: !103, size: 32, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !515, file: !28, line: 2376, baseType: !520, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!103, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !525, line: 32, flags: DIFlagFwdDecl)
!525 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !515, file: !28, line: 2377, baseType: !527, size: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !515, file: !28, line: 2378, baseType: !531, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!384, !514, !103, !188, !164}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !515, file: !28, line: 2380, baseType: !535, size: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !500}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !515, file: !28, line: 2381, baseType: !165, size: 64, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !515, file: !28, line: 2382, baseType: !514, size: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !515, file: !28, line: 2383, baseType: !541, size: 64, offset: 512)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !171, line: 194, size: 64, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !541, file: !171, line: 195, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !171, line: 198, size: 128, elements: !546)
!546 = !{!547, !548}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !171, line: 199, baseType: !544, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !545, file: !171, line: 199, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !515, file: !28, line: 2385, baseType: !551, offset: 576)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !552, line: 206, elements: !553)
!552 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!553 = !{}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !515, file: !28, line: 2386, baseType: !551, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !515, file: !28, line: 2387, baseType: !551, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !515, file: !28, line: 2388, baseType: !557, offset: 576)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, elements: !270)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !515, file: !28, line: 2390, baseType: !551, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !515, file: !28, line: 2391, baseType: !551, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !515, file: !28, line: 2392, baseType: !551, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !515, file: !28, line: 2393, baseType: !551, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !501, file: !28, line: 1197, baseType: !563, size: 64, offset: 384)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !566)
!566 = !{!567, !571, !575, !576, !580, !586, !590, !591, !592, !596, !600, !604, !605, !606, !612, !617, !618, !625, !626, !627, !628, !632, !636, !705, !721, !722}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !565, file: !28, line: 2058, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!349, !500}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !565, file: !28, line: 2059, baseType: !572, size: 64, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !349}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !565, file: !28, line: 2060, baseType: !572, size: 64, offset: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !565, file: !28, line: 2062, baseType: !577, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !349, !103}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !565, file: !28, line: 2063, baseType: !581, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!103, !349, !584}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !565, file: !28, line: 2064, baseType: !587, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!103, !349}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !565, file: !28, line: 2065, baseType: !572, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !565, file: !28, line: 2066, baseType: !535, size: 64, offset: 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !565, file: !28, line: 2067, baseType: !593, size: 64, offset: 512)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DISubroutineType(types: !595)
!595 = !{!103, !500, !103}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !565, file: !28, line: 2068, baseType: !597, size: 64, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!103, !500, !27}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !565, file: !28, line: 2069, baseType: !601, size: 64, offset: 640)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!103, !500}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !565, file: !28, line: 2070, baseType: !597, size: 64, offset: 704)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !565, file: !28, line: 2071, baseType: !601, size: 64, offset: 768)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !565, file: !28, line: 2072, baseType: !607, size: 64, offset: 832)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!103, !384, !610}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !565, file: !28, line: 2073, baseType: !613, size: 64, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!103, !500, !616, !269}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !565, file: !28, line: 2074, baseType: !535, size: 64, offset: 960)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !565, file: !28, line: 2076, baseType: !619, size: 64, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!103, !622, !384}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !624, line: 66, flags: DIFlagFwdDecl)
!624 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!625 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !565, file: !28, line: 2077, baseType: !619, size: 64, offset: 1088)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !565, file: !28, line: 2078, baseType: !619, size: 64, offset: 1152)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !565, file: !28, line: 2079, baseType: !619, size: 64, offset: 1216)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !565, file: !28, line: 2081, baseType: !629, size: 64, offset: 1280)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!301, !500, !103, !269, !316, !510}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !565, file: !28, line: 2082, baseType: !633, size: 64, offset: 1344)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!301, !500, !103, !188, !316, !510}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !565, file: !28, line: 2083, baseType: !637, size: 64, offset: 1408)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!640, !349}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !643)
!643 = !{!644, !645, !646, !647, !648, !669, !670, !671, !672, !688, !689, !690}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !642, file: !33, line: 297, baseType: !545, size: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !642, file: !33, line: 298, baseType: !170, size: 128, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !642, file: !33, line: 299, baseType: !170, size: 128, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !642, file: !33, line: 300, baseType: !170, size: 128, offset: 384)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !642, file: !33, line: 301, baseType: !649, size: 256, offset: 512)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !650, line: 66, size: 256, elements: !651)
!650 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!651 = !{!652, !661, !663, !668}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !649, file: !650, line: 67, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !654, line: 13, baseType: !655)
!654 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !171, line: 181, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !171, line: 179, size: 64, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !656, file: !171, line: 180, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !228, line: 22, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !230, line: 30, baseType: !512)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !649, file: !650, line: 68, baseType: !662, size: 32, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !208, line: 23, baseType: !207)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !649, file: !650, line: 70, baseType: !664, size: 32, offset: 96)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !665, line: 15, size: 32, elements: !666)
!665 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!666 = !{!667}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !664, file: !665, line: 20, baseType: !219, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !649, file: !650, line: 72, baseType: !170, size: 128, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !642, file: !33, line: 302, baseType: !199, size: 32, offset: 768)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !642, file: !33, line: 303, baseType: !219, size: 32, offset: 800)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !642, file: !33, line: 304, baseType: !500, size: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !642, file: !33, line: 305, baseType: !673, size: 64, offset: 896)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !674)
!674 = !{!675, !687}
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !673, file: !33, line: 69, baseType: !676, size: 32)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !673, file: !33, line: 69, size: 32, elements: !677)
!677 = !{!678, !679, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !676, file: !33, line: 70, baseType: !355, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !676, file: !33, line: 71, baseType: !364, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !676, file: !33, line: 72, baseType: !681, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !682, line: 24, baseType: !683)
!682 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 22, size: 32, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !683, file: !682, line: 23, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !682, line: 20, baseType: !361)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !673, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !642, file: !33, line: 306, baseType: !510, size: 64, offset: 960)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !642, file: !33, line: 307, baseType: !319, size: 64, offset: 1024)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !642, file: !33, line: 308, baseType: !691, size: 576, offset: 1088)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !692)
!692 = !{!693, !695, !696, !697, !698, !699, !700, !701, !704}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !691, file: !33, line: 206, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !512)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !691, file: !33, line: 207, baseType: !694, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !691, file: !33, line: 208, baseType: !694, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !691, file: !33, line: 209, baseType: !694, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !691, file: !33, line: 210, baseType: !694, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !691, file: !33, line: 211, baseType: !694, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !691, file: !33, line: 212, baseType: !694, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !691, file: !33, line: 213, baseType: !702, size: 64, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !703, line: 8, baseType: !660)
!703 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !691, file: !33, line: 214, baseType: !702, size: 64, offset: 512)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !565, file: !28, line: 2085, baseType: !706, size: 64, offset: 1472)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!305, !500, !709}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !711, line: 15, size: 256, elements: !712)
!711 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!712 = !{!713, !715, !716, !717, !718}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !710, file: !711, line: 16, baseType: !714, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !171, line: 154, baseType: !7)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !710, file: !711, line: 19, baseType: !103, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !710, file: !711, line: 26, baseType: !319, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !710, file: !711, line: 33, baseType: !319, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !710, file: !711, line: 36, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !65, line: 33, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !565, file: !28, line: 2087, baseType: !706, size: 64, offset: 1536)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !565, file: !28, line: 2089, baseType: !535, size: 64, offset: 1600)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !501, file: !28, line: 1198, baseType: !724, size: 64, offset: 448)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !727)
!727 = !{!728, !732, !736, !740, !741, !742, !743, !744, !749, !754, !758}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !726, file: !33, line: 325, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!103, !641}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !726, file: !33, line: 326, baseType: !733, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!641, !500, !103}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !726, file: !33, line: 327, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !641}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !726, file: !33, line: 328, baseType: !729, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !726, file: !33, line: 329, baseType: !729, size: 64, offset: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !726, file: !33, line: 330, baseType: !729, size: 64, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !726, file: !33, line: 331, baseType: !593, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !726, file: !33, line: 334, baseType: !745, size: 64, offset: 448)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!748, !349}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !726, file: !33, line: 335, baseType: !750, size: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!103, !349, !753}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !726, file: !33, line: 337, baseType: !755, size: 64, offset: 576)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!103, !349, !748}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !726, file: !33, line: 339, baseType: !759, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!103, !500, !762}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !501, file: !28, line: 1199, baseType: !764, size: 64, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !767)
!767 = !{!768, !779, !780, !784, !785, !786, !801, !824, !828, !829, !852}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !766, file: !33, line: 431, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!103, !500, !103, !103, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !775, line: 8, size: 128, elements: !776)
!775 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !774, file: !775, line: 9, baseType: !494, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !774, file: !775, line: 10, baseType: !384, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !766, file: !33, line: 432, baseType: !593, size: 64, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !766, file: !33, line: 433, baseType: !781, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!103, !500, !7}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !766, file: !33, line: 434, baseType: !781, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !766, file: !33, line: 435, baseType: !593, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !766, file: !33, line: 436, baseType: !787, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!103, !500, !103, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !792)
!792 = !{!793, !794, !795, !796, !797, !798, !799, !800}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !791, file: !33, line: 418, baseType: !103, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !791, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !791, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !791, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !791, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !791, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !791, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !791, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !766, file: !33, line: 437, baseType: !802, size: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!103, !500, !673, !805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !807)
!807 = !{!808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !806, file: !33, line: 346, baseType: !103, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !806, file: !33, line: 347, baseType: !422, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !806, file: !33, line: 348, baseType: !422, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !806, file: !33, line: 349, baseType: !422, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !806, file: !33, line: 350, baseType: !422, size: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !806, file: !33, line: 351, baseType: !422, size: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !806, file: !33, line: 352, baseType: !422, size: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !806, file: !33, line: 353, baseType: !659, size: 64, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !806, file: !33, line: 355, baseType: !659, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !806, file: !33, line: 356, baseType: !103, size: 32, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !806, file: !33, line: 357, baseType: !103, size: 32, offset: 608)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !806, file: !33, line: 358, baseType: !422, size: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !806, file: !33, line: 359, baseType: !422, size: 64, offset: 704)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !806, file: !33, line: 360, baseType: !422, size: 64, offset: 768)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !806, file: !33, line: 361, baseType: !659, size: 64, offset: 832)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !806, file: !33, line: 362, baseType: !103, size: 32, offset: 896)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !766, file: !33, line: 438, baseType: !825, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!103, !500, !762, !805}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !766, file: !33, line: 440, baseType: !802, size: 64, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !766, file: !33, line: 441, baseType: !830, size: 64, offset: 576)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!103, !500, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !835)
!835 = !{!836, !837}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !834, file: !33, line: 412, baseType: !7, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !834, file: !33, line: 413, baseType: !838, size: 1344, offset: 64)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 1344, elements: !270)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !846, !847, !848, !849, !851}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !839, file: !33, line: 398, baseType: !7, size: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !839, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !839, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !839, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !839, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !839, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !839, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !839, file: !33, line: 406, baseType: !424, size: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !839, file: !33, line: 407, baseType: !850, size: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !171, line: 132, baseType: !422)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !839, file: !33, line: 408, baseType: !850, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !766, file: !33, line: 442, baseType: !781, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !501, file: !28, line: 1200, baseType: !854, size: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !856)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !501, file: !28, line: 1201, baseType: !319, size: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !501, file: !28, line: 1202, baseType: !319, size: 64, offset: 704)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !501, file: !28, line: 1203, baseType: !319, size: 64, offset: 768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !501, file: !28, line: 1204, baseType: !384, size: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !501, file: !28, line: 1205, baseType: !862, size: 320, offset: 896)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !863, line: 48, size: 320, elements: !864)
!863 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!864 = !{!865, !866, !867, !868, !869}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !862, file: !863, line: 49, baseType: !653, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !862, file: !863, line: 55, baseType: !653, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !862, file: !863, line: 57, baseType: !664, size: 32, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !862, file: !863, line: 59, baseType: !662, size: 32, offset: 160)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !862, file: !863, line: 60, baseType: !170, size: 128, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !501, file: !28, line: 1206, baseType: !103, size: 32, offset: 1216)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !501, file: !28, line: 1207, baseType: !219, size: 32, offset: 1248)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !501, file: !28, line: 1209, baseType: !164, size: 64, offset: 1280)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !501, file: !28, line: 1211, baseType: !874, size: 64, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !501, file: !28, line: 1223, baseType: !879, size: 64, offset: 1408)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !401, line: 34, size: 64, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !879, file: !401, line: 35, baseType: !404, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !501, file: !28, line: 1224, baseType: !170, size: 128, offset: 1472)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !501, file: !28, line: 1225, baseType: !884, size: 64, offset: 1600)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !501, file: !28, line: 1226, baseType: !887, size: 64, offset: 1664)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !501, file: !28, line: 1227, baseType: !890, size: 64, offset: 1728)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !501, file: !28, line: 1228, baseType: !893, size: 64, offset: 1792)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !501, file: !28, line: 1229, baseType: !545, size: 128, offset: 1856)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !501, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !501, file: !28, line: 1231, baseType: !898, size: 2496, offset: 2048)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !899)
!899 = !{!900, !901, !902, !904, !936}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !898, file: !33, line: 522, baseType: !7, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !898, file: !33, line: 523, baseType: !862, size: 320, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !898, file: !33, line: 524, baseType: !903, size: 192, offset: 384)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 192, elements: !270)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !898, file: !33, line: 525, baseType: !905, size: 1728, offset: 576)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 1728, elements: !270)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !907)
!907 = !{!908, !928, !929, !930, !931, !932, !933, !934, !935}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !906, file: !33, line: 223, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !911)
!911 = !{!912, !913, !926, !927}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !910, file: !33, line: 446, baseType: !103, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !910, file: !33, line: 447, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !916)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !917)
!917 = !{!918, !919, !920, !921, !922, !923, !924, !925}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !916, file: !33, line: 313, baseType: !593, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !916, file: !33, line: 314, baseType: !593, size: 64, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !916, file: !33, line: 315, baseType: !593, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !916, file: !33, line: 316, baseType: !593, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !916, file: !33, line: 317, baseType: !729, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !916, file: !33, line: 318, baseType: !729, size: 64, offset: 320)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !916, file: !33, line: 319, baseType: !729, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !916, file: !33, line: 320, baseType: !759, size: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !910, file: !33, line: 448, baseType: !165, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !910, file: !33, line: 449, baseType: !909, size: 64, offset: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !906, file: !33, line: 224, baseType: !103, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !906, file: !33, line: 226, baseType: !170, size: 128, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !906, file: !33, line: 227, baseType: !319, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !906, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !906, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !906, file: !33, line: 230, baseType: !694, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !906, file: !33, line: 231, baseType: !694, size: 64, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !906, file: !33, line: 232, baseType: !164, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !898, file: !33, line: 526, baseType: !937, size: 192, offset: 2304)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 192, elements: !270)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !501, file: !28, line: 1233, baseType: !939, size: 2368, offset: 4544)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !940)
!940 = !{!941, !942, !943}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !939, file: !28, line: 1185, baseType: !239, size: 16)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !939, file: !28, line: 1186, baseType: !239, size: 16, offset: 16)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !939, file: !28, line: 1187, baseType: !944, size: 2304, offset: 64)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !945, size: 2304, elements: !270)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !946, line: 12, size: 768, elements: !947)
!946 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!947 = !{!948, !970, !972, !3194, !3195}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !945, file: !946, line: 13, baseType: !949, size: 384)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !950, line: 17, size: 384, elements: !951)
!950 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!951 = !{!952, !953, !954, !961}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !949, file: !950, line: 18, baseType: !103, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !949, file: !950, line: 19, baseType: !103, size: 32, offset: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !949, file: !950, line: 20, baseType: !955, size: 192, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !956, line: 41, baseType: !957)
!956 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !956, line: 37, size: 192, elements: !958)
!958 = !{!959, !960}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !957, file: !956, line: 38, baseType: !199, size: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !957, file: !956, line: 39, baseType: !170, size: 128, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !949, file: !950, line: 22, baseType: !962, size: 128, align: 64, offset: 256)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !171, line: 232, size: 128, align: 64, elements: !963)
!963 = !{!964, !966}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !962, file: !171, line: 233, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !962, file: !171, line: 234, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !965}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !945, file: !946, line: 14, baseType: !971, size: 64, offset: 384)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !945, file: !946, line: 15, baseType: !973, size: 64, offset: 448)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !974, line: 16, size: 64, elements: !975)
!974 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!975 = !{!976}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !973, file: !974, line: 17, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !624, line: 746, size: 58368, elements: !979)
!979 = !{!980, !988, !989, !990, !996, !997, !998, !999, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1077, !1088, !1183, !1187, !1190, !1221, !1222, !1223, !1224, !1235, !1237, !1238, !1239, !1240, !1241, !1242, !1253, !1254, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1271, !1272, !1279, !1280, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2351, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2366, !2367, !2368, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2400, !2406, !2407, !2408, !2409, !2410, !2414, !2417, !2424, !2429, !2432, !2435, !2438, !2442, !2582, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2622, !2623, !2624, !2633, !2641, !2642, !2643, !2644, !2645, !2650, !2651, !2652, !2655, !2656, !2659, !2662, !2665, !2673, !2676, !2677, !2763, !2764, !2765, !2766, !2767, !2773, !2774, !2775, !2776, !2779, !2780, !2783, !2786, !2787, !2790, !2791, !2792, !2795, !2796, !2797, !2798, !2799, !2800, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2832, !2833, !2839, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2851, !2923, !2925, !2926, !2927, !2928, !2929, !2941, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2971, !2972, !2973}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !978, file: !624, line: 752, baseType: !981, size: 192)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !982, line: 56, size: 192, elements: !983)
!982 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!983 = !{!984, !985, !986, !987}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !982, line: 57, baseType: !319, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !981, file: !982, line: 58, baseType: !319, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !981, file: !982, line: 59, baseType: !418, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !981, file: !982, line: 61, baseType: !418, size: 32, offset: 160)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !978, file: !624, line: 754, baseType: !7, size: 32, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !978, file: !624, line: 767, baseType: !164, size: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !978, file: !624, line: 768, baseType: !991, size: 32, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !992, line: 113, baseType: !993)
!992 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !992, line: 111, size: 32, elements: !994)
!994 = !{!995}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !993, file: !992, line: 112, baseType: !219, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !978, file: !624, line: 770, baseType: !7, size: 32, offset: 352)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !978, file: !624, line: 771, baseType: !7, size: 32, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !978, file: !624, line: 774, baseType: !103, size: 32, offset: 416)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !978, file: !624, line: 775, baseType: !1000, size: 128, offset: 448)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1001, line: 58, size: 128, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1002 = !{!1003, !1009, !1014, !1015}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1000, file: !1001, line: 59, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1005, line: 60, size: 64, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1004, file: !1005, line: 61, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !1001, line: 60, baseType: !1010, size: 32, offset: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !1001, line: 60, size: 32, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1010, file: !1001, line: 61, baseType: !7, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1010, file: !1001, line: 62, baseType: !219, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1000, file: !1001, line: 65, baseType: !237, size: 16, offset: 96)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1000, file: !1001, line: 65, baseType: !237, size: 16, offset: 112)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !978, file: !624, line: 776, baseType: !7, size: 32, offset: 576)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !978, file: !624, line: 777, baseType: !319, size: 64, offset: 640)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !978, file: !624, line: 778, baseType: !977, size: 64, offset: 704)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !978, file: !624, line: 787, baseType: !103, size: 32, offset: 768)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !978, file: !624, line: 788, baseType: !103, size: 32, offset: 800)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !978, file: !624, line: 790, baseType: !103, size: 32, offset: 832)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !978, file: !624, line: 792, baseType: !103, size: 32, offset: 864)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !978, file: !624, line: 793, baseType: !103, size: 32, offset: 896)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !978, file: !624, line: 794, baseType: !103, size: 32, offset: 928)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !978, file: !624, line: 795, baseType: !7, size: 32, offset: 960)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !978, file: !624, line: 797, baseType: !1027, size: 2048, offset: 1024)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !624, line: 551, size: 2048, elements: !1028)
!1028 = !{!1029, !1034, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1056, !1059, !1060, !1061}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1027, file: !624, line: 553, baseType: !1030, size: 128)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !624, line: 411, size: 128, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1030, file: !624, line: 412, baseType: !319, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1030, file: !624, line: 413, baseType: !418, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1027, file: !624, line: 554, baseType: !1035, size: 192, align: 64, offset: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1036, line: 5, size: 192, align: 64, elements: !1037)
!1036 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1037 = !{!1038, !1039, !1041}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1035, file: !1036, line: 6, baseType: !319, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1035, file: !1036, line: 7, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1035, file: !1036, line: 8, baseType: !1040, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1027, file: !624, line: 555, baseType: !422, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1027, file: !624, line: 556, baseType: !422, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1027, file: !624, line: 558, baseType: !170, size: 128, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1027, file: !624, line: 559, baseType: !7, size: 32, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1027, file: !624, line: 561, baseType: !422, size: 64, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1027, file: !624, line: 562, baseType: !422, size: 64, offset: 704)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1027, file: !624, line: 563, baseType: !422, size: 64, offset: 768)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1027, file: !624, line: 564, baseType: !422, size: 64, offset: 832)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1027, file: !624, line: 565, baseType: !659, size: 64, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1027, file: !624, line: 566, baseType: !422, size: 64, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1027, file: !624, line: 568, baseType: !422, size: 64, offset: 1024)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1027, file: !624, line: 571, baseType: !103, size: 32, offset: 1088)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1027, file: !624, line: 572, baseType: !1055, size: 64, offset: 1152)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1027, file: !624, line: 574, baseType: !1057, size: 64, offset: 1216)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !624, line: 49, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1027, file: !624, line: 576, baseType: !1057, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1027, file: !624, line: 578, baseType: !319, size: 64, offset: 1344)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1027, file: !624, line: 588, baseType: !1062, size: 512, align: 512, offset: 1536)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !624, line: 497, size: 512, align: 512, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1062, file: !624, line: 498, baseType: !422, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1062, file: !624, line: 499, baseType: !422, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1062, file: !624, line: 500, baseType: !422, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1062, file: !624, line: 501, baseType: !418, size: 32, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1062, file: !624, line: 502, baseType: !418, size: 32, offset: 224)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1062, file: !624, line: 503, baseType: !319, size: 64, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1062, file: !624, line: 504, baseType: !319, size: 64, offset: 320)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1062, file: !624, line: 505, baseType: !319, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1062, file: !624, line: 506, baseType: !1073, size: 64, align: 64, offset: 448)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !624, line: 445, size: 64, align: 64, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1073, file: !624, line: 446, baseType: !7, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1073, file: !624, line: 447, baseType: !7, size: 32, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !978, file: !624, line: 798, baseType: !1078, size: 384, offset: 3072)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !624, line: 592, size: 384, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1078, file: !624, line: 593, baseType: !170, size: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1078, file: !624, line: 594, baseType: !319, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1078, file: !624, line: 595, baseType: !319, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1078, file: !624, line: 596, baseType: !7, size: 32, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1078, file: !624, line: 597, baseType: !239, size: 16, offset: 288)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1078, file: !624, line: 598, baseType: !239, size: 16, offset: 304)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1078, file: !624, line: 600, baseType: !1087, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !978, file: !624, line: 799, baseType: !1089, size: 1792, offset: 3456)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !624, line: 610, size: 1792, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1180, !1181}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1089, file: !624, line: 611, baseType: !1035, size: 192, align: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1089, file: !624, line: 618, baseType: !422, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1089, file: !624, line: 619, baseType: !422, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1089, file: !624, line: 620, baseType: !422, size: 64, offset: 320)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1089, file: !624, line: 621, baseType: !422, size: 64, offset: 384)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1089, file: !624, line: 622, baseType: !422, size: 64, offset: 448)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1089, file: !624, line: 629, baseType: !659, size: 64, offset: 512)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1089, file: !624, line: 630, baseType: !422, size: 64, offset: 576)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !624, line: 631, baseType: !7, size: 32, offset: 640)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1089, file: !624, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1089, file: !624, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1089, file: !624, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1089, file: !624, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1089, file: !624, line: 662, baseType: !1105, size: 512, offset: 704)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1106)
!1106 = !{!1107, !1115, !1116, !1121, !1176, !1177, !1178, !1179}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1105, file: !39, line: 119, baseType: !1108, size: 256)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1109, line: 9, size: 256, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1108, file: !1109, line: 10, baseType: !1035, size: 192, align: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1108, file: !1109, line: 11, baseType: !1113, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1114, line: 29, baseType: !659)
!1114 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1105, file: !39, line: 120, baseType: !1113, size: 64, offset: 256)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1105, file: !39, line: 121, baseType: !1117, size: 64, offset: 320)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!38, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1105, file: !39, line: 122, baseType: !1122, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1124)
!1124 = !{!1125, !1150, !1151, !1154, !1159, !1160, !1171, !1175}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1123, file: !39, line: 160, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1128)
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1127, file: !39, line: 216, baseType: !662, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1127, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1127, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1127, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1127, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1127, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1127, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1127, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1127, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1127, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1127, file: !39, line: 227, baseType: !239, size: 16, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1127, file: !39, line: 228, baseType: !239, size: 16, offset: 208)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1127, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1127, file: !39, line: 235, baseType: !1113, size: 64, offset: 256)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1127, file: !39, line: 236, baseType: !1120, size: 64, offset: 320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1127, file: !39, line: 237, baseType: !1113, size: 64, offset: 384)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1127, file: !39, line: 238, baseType: !1120, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1127, file: !39, line: 239, baseType: !1147, size: 4096, align: 512, offset: 512)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1123, size: 4096, align: 512, elements: !1148)
!1148 = !{!1149}
!1149 = !DISubrange(count: 8)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1123, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1123, file: !39, line: 162, baseType: !1152, size: 32, offset: 96)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !171, line: 32, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !303, line: 96, baseType: !103)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1123, file: !39, line: 163, baseType: !1155, size: 32, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !391, line: 274, baseType: !1156)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !391, line: 274, size: 32, elements: !1157)
!1157 = !{!1158}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1156, file: !391, line: 274, baseType: !395, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1123, file: !39, line: 164, baseType: !1120, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1123, file: !39, line: 165, baseType: !1161, size: 128, offset: 256)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1109, line: 14, size: 128, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1161, file: !1109, line: 15, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1036, line: 26, size: 128, elements: !1165)
!1165 = !{!1166, !1170}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1164, file: !1036, line: 27, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1036, line: 12, size: 64, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1167, file: !1036, line: 13, baseType: !1040, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1164, file: !1036, line: 28, baseType: !1040, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1123, file: !39, line: 166, baseType: !1172, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{!1113}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1123, file: !39, line: 167, baseType: !1113, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1105, file: !39, line: 123, baseType: !227, size: 8, offset: 448)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1105, file: !39, line: 124, baseType: !227, size: 8, offset: 456)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1105, file: !39, line: 125, baseType: !227, size: 8, offset: 464)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1105, file: !39, line: 126, baseType: !227, size: 8, offset: 472)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1089, file: !624, line: 671, baseType: !1105, size: 512, offset: 1216)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1089, file: !624, line: 679, baseType: !1182, size: 64, offset: 1728)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !978, file: !624, line: 800, baseType: !1184, size: 64, offset: 5248)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !624, line: 800, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !978, file: !624, line: 809, baseType: !1188, size: 64, offset: 5312)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !624, line: 70, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !978, file: !624, line: 825, baseType: !1191, size: 2048, align: 512, offset: 5632)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !624, line: 509, size: 2048, align: 512, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1191, file: !624, line: 511, baseType: !422, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1191, file: !624, line: 512, baseType: !422, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1191, file: !624, line: 513, baseType: !422, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1191, file: !624, line: 514, baseType: !422, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1191, file: !624, line: 515, baseType: !422, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1191, file: !624, line: 516, baseType: !422, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1191, file: !624, line: 518, baseType: !422, size: 64, offset: 384)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1191, file: !624, line: 519, baseType: !422, size: 64, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1191, file: !624, line: 520, baseType: !659, size: 64, offset: 512)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1191, file: !624, line: 522, baseType: !422, size: 64, offset: 576)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1191, file: !624, line: 523, baseType: !422, size: 64, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1191, file: !624, line: 524, baseType: !659, size: 64, offset: 704)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1191, file: !624, line: 526, baseType: !659, size: 64, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1191, file: !624, line: 527, baseType: !422, size: 64, offset: 832)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1191, file: !624, line: 529, baseType: !422, size: 64, offset: 896)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1191, file: !624, line: 530, baseType: !422, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1191, file: !624, line: 531, baseType: !422, size: 64, offset: 1024)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1191, file: !624, line: 532, baseType: !422, size: 64, offset: 1088)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1191, file: !624, line: 533, baseType: !422, size: 64, offset: 1152)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1191, file: !624, line: 535, baseType: !422, size: 64, offset: 1216)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1191, file: !624, line: 536, baseType: !422, size: 64, offset: 1280)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1191, file: !624, line: 537, baseType: !422, size: 64, offset: 1344)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1191, file: !624, line: 538, baseType: !422, size: 64, offset: 1408)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1191, file: !624, line: 539, baseType: !422, size: 64, offset: 1472)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1191, file: !624, line: 540, baseType: !422, size: 64, offset: 1536)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1191, file: !624, line: 541, baseType: !422, size: 64, offset: 1600)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1191, file: !624, line: 542, baseType: !422, size: 64, offset: 1664)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1191, file: !624, line: 543, baseType: !422, size: 64, offset: 1728)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !978, file: !624, line: 833, baseType: !7, size: 32, offset: 7680)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !978, file: !624, line: 836, baseType: !7, size: 32, offset: 7712)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !978, file: !624, line: 837, baseType: !103, size: 32, offset: 7744)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !978, file: !624, line: 838, baseType: !1225, size: 64, offset: 7808)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1228, line: 19, baseType: !1229)
!1228 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1228, line: 19, size: 64, elements: !1230)
!1230 = !{!1231}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1229, file: !1228, line: 19, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 64, elements: !1233)
!1233 = !{!1234}
!1234 = !DISubrange(count: 1)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !978, file: !624, line: 839, baseType: !1236, size: 64, offset: 7872)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !978, file: !624, line: 840, baseType: !1227, size: 64, offset: 7936)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !978, file: !624, line: 841, baseType: !164, size: 64, offset: 8000)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !978, file: !624, line: 843, baseType: !239, size: 16, offset: 8064)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !978, file: !624, line: 845, baseType: !239, size: 16, offset: 8080)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !978, file: !624, line: 848, baseType: !103, size: 32, offset: 8096)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !978, file: !624, line: 849, baseType: !1243, size: 32, offset: 8128)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !624, line: 718, size: 32, elements: !1244)
!1244 = !{!1245, !1252}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1243, file: !624, line: 724, baseType: !1246, size: 32)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !624, line: 719, size: 32, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1246, file: !624, line: 720, baseType: !227, size: 8)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1246, file: !624, line: 721, baseType: !227, size: 8, offset: 8)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1246, file: !624, line: 722, baseType: !227, size: 8, offset: 16)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1246, file: !624, line: 723, baseType: !227, size: 8, offset: 24)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1243, file: !624, line: 725, baseType: !418, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !978, file: !624, line: 850, baseType: !170, size: 128, offset: 8192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !978, file: !624, line: 851, baseType: !1255, size: 64, offset: 8320)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !624, line: 60, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !978, file: !624, line: 855, baseType: !319, size: 64, offset: 8384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !978, file: !624, line: 856, baseType: !227, size: 8, offset: 8448)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !978, file: !624, line: 857, baseType: !227, size: 8, offset: 8456)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !978, file: !624, line: 858, baseType: !103, size: 32, offset: 8480)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !978, file: !624, line: 859, baseType: !170, size: 128, offset: 8512)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !978, file: !624, line: 860, baseType: !103, size: 32, offset: 8640)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !978, file: !624, line: 861, baseType: !170, size: 128, offset: 8704)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !978, file: !624, line: 873, baseType: !1265, size: 256, offset: 8832)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !624, line: 376, size: 256, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1265, file: !624, line: 381, baseType: !319, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1265, file: !624, line: 384, baseType: !424, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1265, file: !624, line: 389, baseType: !424, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1265, file: !624, line: 392, baseType: !424, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !978, file: !624, line: 875, baseType: !170, size: 128, offset: 9088)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !978, file: !624, line: 877, baseType: !1273, size: 320, offset: 9216)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1274, line: 86, size: 320, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1273, file: !1274, line: 87, baseType: !103, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1273, file: !1274, line: 88, baseType: !170, size: 128, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1273, file: !1274, line: 89, baseType: !170, size: 128, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !978, file: !624, line: 878, baseType: !1035, size: 192, align: 64, offset: 9536)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !978, file: !624, line: 881, baseType: !1281, size: 64, offset: 9728)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !65, line: 733, size: 10240, elements: !1283)
!1283 = !{!1284, !2270}
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !65, line: 734, baseType: !1285, size: 10240)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !65, line: 734, size: 10240, elements: !1286)
!1286 = !{!1287, !1291, !1304, !2134, !2135, !2136, !2137, !2138, !2139, !2146, !2147, !2148, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2187, !2189, !2192, !2239, !2240, !2241, !2244, !2245, !2246, !2249, !2250, !2251, !2257, !2258}
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !65, line: 739, baseType: !1288, size: 512, align: 512)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1285, file: !65, line: 739, size: 512, align: 512, elements: !1289)
!1289 = !{!1290}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1288, file: !65, line: 747, baseType: !219, size: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1285, file: !65, line: 750, baseType: !1292, size: 128, offset: 512)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1293, line: 218, size: 128, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1294 = !{!1295, !1302, !1303}
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1292, file: !1293, line: 219, baseType: !1296, size: 32)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1292, file: !1293, line: 219, size: 32, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1296, file: !1293, line: 220, baseType: !199, size: 32)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1296, file: !1293, line: 221, baseType: !1300)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1293, line: 197, baseType: !1301)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1293, line: 197, elements: !553)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1292, file: !1293, line: 223, baseType: !7, size: 32, offset: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1292, file: !1293, line: 224, baseType: !164, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1285, file: !65, line: 752, baseType: !1305, size: 64, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!319, !1308, !319, !319, !319, !319}
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1310)
!1310 = !{!1311, !1317, !1318, !1320, !1321, !1322, !1323, !1324, !1376, !1571, !1580, !1581, !1582, !2124, !2125, !2126, !2127, !2129, !2130, !2133}
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1309, file: !28, line: 995, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1309, file: !28, line: 995, size: 128, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1312, file: !28, line: 996, baseType: !1004, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1312, file: !28, line: 997, baseType: !962, size: 128, align: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1312, file: !28, line: 998, baseType: !7, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1309, file: !28, line: 1005, baseType: !199, size: 32, offset: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1309, file: !28, line: 1006, baseType: !1319, size: 32, offset: 160)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !171, line: 156, baseType: !7)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1309, file: !28, line: 1007, baseType: !653, size: 64, offset: 192)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1309, file: !28, line: 1008, baseType: !649, size: 256, offset: 256)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1309, file: !28, line: 1009, baseType: !510, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1309, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1309, file: !28, line: 1011, baseType: !1325, size: 256, offset: 640)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1326)
!1326 = !{!1327, !1348, !1372, !1373, !1374, !1375}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1325, file: !28, line: 949, baseType: !1328, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1329, line: 34, baseType: !1330)
!1329 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1329, line: 25, size: 64, elements: !1331)
!1331 = !{!1332}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1330, file: !1329, line: 26, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1334, line: 27, baseType: !1335)
!1334 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1334, line: 13, size: 64, elements: !1336)
!1336 = !{!1337, !1347}
!1337 = !DIDerivedType(tag: DW_TAG_member, scope: !1335, file: !1334, line: 14, baseType: !1338, size: 32)
!1338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1335, file: !1334, line: 14, size: 32, elements: !1339)
!1339 = !{!1340, !1341}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1338, file: !1334, line: 15, baseType: !219, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1338, file: !1334, line: 16, baseType: !1342, size: 32)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1338, file: !1334, line: 16, size: 32, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1342, file: !1334, line: 18, baseType: !227, size: 8)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1342, file: !1334, line: 19, baseType: !1346, size: 24, offset: 8)
!1346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 24, elements: !270)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1335, file: !1334, line: 26, baseType: !211, size: 32, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1325, file: !28, line: 950, baseType: !1349, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1359, !1360, !1361, !1362}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1350, file: !13, line: 61, baseType: !991, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1350, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1350, file: !13, line: 63, baseType: !199, size: 32, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1350, file: !13, line: 65, baseType: !1356, size: 256, offset: 128)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 256, elements: !1357)
!1357 = !{!1358}
!1358 = !DISubrange(count: 4)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1350, file: !13, line: 66, baseType: !541, size: 64, offset: 384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1350, file: !13, line: 68, baseType: !955, size: 192, offset: 448)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1350, file: !13, line: 69, baseType: !962, size: 128, align: 64, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1350, file: !13, line: 70, baseType: !1363, offset: 768)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, elements: !1370)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1365)
!1365 = !{!1366, !1367}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1364, file: !13, line: 55, baseType: !103, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1364, file: !13, line: 56, baseType: !1368, size: 64, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1370 = !{!1371}
!1371 = !DISubrange(count: -1)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1325, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1325, file: !28, line: 952, baseType: !355, size: 32, offset: 160)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1325, file: !28, line: 952, baseType: !355, size: 32, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1325, file: !28, line: 953, baseType: !103, size: 32, offset: 224)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1309, file: !28, line: 1012, baseType: !1377, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1380, line: 110, size: 1472, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1398, !1399, !1400, !1401, !1402, !1403, !1516, !1517, !1518, !1519, !1520, !1551, !1554, !1558, !1566}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1379, file: !1380, line: 111, baseType: !653, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1379, file: !1380, line: 112, baseType: !355, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1379, file: !1380, line: 113, baseType: !364, size: 32, offset: 96)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1379, file: !1380, line: 114, baseType: !355, size: 32, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1379, file: !1380, line: 115, baseType: !364, size: 32, offset: 160)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1379, file: !1380, line: 116, baseType: !355, size: 32, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1379, file: !1380, line: 117, baseType: !364, size: 32, offset: 224)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1379, file: !1380, line: 118, baseType: !355, size: 32, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1379, file: !1380, line: 119, baseType: !364, size: 32, offset: 288)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1379, file: !1380, line: 120, baseType: !7, size: 32, offset: 320)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1379, file: !1380, line: 121, baseType: !1393, size: 64, offset: 384)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1394, line: 24, baseType: !1395)
!1394 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1394, line: 24, size: 64, elements: !1396)
!1396 = !{!1397}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1395, file: !1394, line: 24, baseType: !422, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1379, file: !1380, line: 122, baseType: !1393, size: 64, offset: 448)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1379, file: !1380, line: 123, baseType: !1393, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1379, file: !1380, line: 124, baseType: !1393, size: 64, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1379, file: !1380, line: 125, baseType: !1393, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1379, file: !1380, line: 127, baseType: !231, size: 8, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1379, file: !1380, line: 129, baseType: !1404, size: 64, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1406, line: 195, size: 1728, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1407 = !{!1408, !1409, !1414, !1419, !1420, !1423, !1424, !1429, !1430, !1431, !1432, !1435, !1436, !1437, !1439, !1440, !1480, !1501}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1405, file: !1406, line: 196, baseType: !991, size: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1405, file: !1406, line: 197, baseType: !1410, size: 32, offset: 32)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1406, line: 28, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !171, line: 104, baseType: !1412)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !228, line: 20, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !230, line: 26, baseType: !103)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 198, baseType: !1415, size: 192, offset: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 198, size: 192, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1415, file: !1406, line: 199, baseType: !170, size: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1415, file: !1406, line: 200, baseType: !1035, size: 192, align: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1405, file: !1406, line: 205, baseType: !862, size: 320, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1405, file: !1406, line: 206, baseType: !1421, size: 64, offset: 576)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1406, line: 206, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1405, file: !1406, line: 207, baseType: !164, size: 64, offset: 640)
!1424 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 208, baseType: !1425, size: 64, offset: 704)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 208, size: 64, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1425, file: !1406, line: 209, baseType: !702, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1425, file: !1406, line: 210, baseType: !702, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1405, file: !1406, line: 212, baseType: !702, size: 64, offset: 768)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1405, file: !1406, line: 213, baseType: !355, size: 32, offset: 832)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1405, file: !1406, line: 214, baseType: !364, size: 32, offset: 864)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1405, file: !1406, line: 215, baseType: !1433, size: 32, offset: 896)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1406, line: 31, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !171, line: 110, baseType: !418)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1405, file: !1406, line: 216, baseType: !239, size: 16, offset: 928)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1405, file: !1406, line: 217, baseType: !239, size: 16, offset: 944)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1405, file: !1406, line: 221, baseType: !1438, size: 16, offset: 960)
!1438 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1405, file: !1406, line: 228, baseType: !319, size: 64, offset: 1024)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 245, baseType: !1441, size: 320, offset: 1088)
!1441 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 245, size: 320, elements: !1442)
!1442 = !{!1443, !1472}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1441, file: !1406, line: 246, baseType: !1444, size: 320)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1406, line: 114, size: 320, elements: !1445)
!1445 = !{!1446, !1447, !1459, !1462, !1471}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1444, file: !1406, line: 116, baseType: !319, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1406, line: 117, baseType: !1448, size: 64, offset: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !1406, line: 117, size: 64, elements: !1449)
!1449 = !{!1450, !1458}
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1448, file: !1406, line: 118, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1448, file: !1406, line: 118, size: 64, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1451, file: !1406, line: 120, baseType: !237, size: 16)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1451, file: !1406, line: 121, baseType: !1455, size: 48, offset: 16)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 48, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 6)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1448, file: !1406, line: 127, baseType: !319, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1444, file: !1406, line: 129, baseType: !1460, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1406, line: 102, flags: DIFlagFwdDecl)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1444, file: !1406, line: 130, baseType: !1463, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1406, line: 108, size: 192, elements: !1465)
!1465 = !{!1466, !1467, !1468}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1464, file: !1406, line: 109, baseType: !962, size: 128, align: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1464, file: !1406, line: 110, baseType: !991, size: 32, offset: 128)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1464, file: !1406, line: 111, baseType: !1469, size: 8, offset: 160)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !171, line: 35, baseType: !1470)
!1470 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1444, file: !1406, line: 131, baseType: !188, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1406, line: 247, baseType: !1473, size: 320)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1441, file: !1406, line: 247, size: 320, elements: !1474)
!1474 = !{!1475, !1476, !1477, !1478, !1479}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1473, file: !1406, line: 248, baseType: !319, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1473, file: !1406, line: 249, baseType: !319, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1473, file: !1406, line: 250, baseType: !1460, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1473, file: !1406, line: 251, baseType: !1463, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1473, file: !1406, line: 252, baseType: !269, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 260, baseType: !1481, size: 256, offset: 1408)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 260, size: 256, elements: !1482)
!1482 = !{!1483, !1489}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1481, file: !1406, line: 261, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1406, line: 134, size: 256, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1484, file: !1406, line: 135, baseType: !164, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1484, file: !1406, line: 136, baseType: !1488, size: 256)
!1488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !1357)
!1489 = !DIDerivedType(tag: DW_TAG_member, scope: !1481, file: !1406, line: 262, baseType: !1490, size: 256)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1481, file: !1406, line: 262, size: 256, elements: !1491)
!1491 = !{!1492, !1493}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1490, file: !1406, line: 264, baseType: !170, size: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1490, file: !1406, line: 265, baseType: !1494, size: 128, offset: 128)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1495, line: 22, size: 128, elements: !1496)
!1495 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1496 = !{!1497, !1500}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1494, file: !1495, line: 23, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1495, line: 23, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1494, file: !1495, line: 24, baseType: !319, size: 64, offset: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1405, file: !1406, line: 280, baseType: !1502, size: 64, offset: 1664)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1406, line: 176, size: 192, elements: !1504)
!1504 = !{!1505, !1514, !1515}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1503, file: !1406, line: 177, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1406, line: 171, baseType: !1507)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!103, !1404, !1510, !1512, !1404}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1461)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1503, file: !1406, line: 178, baseType: !1404, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1503, file: !1406, line: 179, baseType: !1460, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1379, file: !1380, line: 130, baseType: !1404, size: 64, offset: 832)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1379, file: !1380, line: 131, baseType: !1404, size: 64, offset: 896)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1379, file: !1380, line: 132, baseType: !1404, size: 64, offset: 960)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1379, file: !1380, line: 135, baseType: !164, size: 64, offset: 1024)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1379, file: !1380, line: 137, baseType: !1521, size: 64, offset: 1088)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1523, line: 14, size: 1088, elements: !1524)
!1523 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1524 = !{!1525, !1526, !1535, !1536, !1537, !1538, !1539, !1540}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1522, file: !1523, line: 15, baseType: !991, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1522, file: !1523, line: 17, baseType: !1527, size: 320, offset: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1528, line: 22, size: 320, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1529 = !{!1530, !1531, !1532, !1533}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1527, file: !1528, line: 23, baseType: !662, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1527, file: !1528, line: 24, baseType: !659, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1527, file: !1528, line: 26, baseType: !170, size: 128, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1527, file: !1528, line: 28, baseType: !1534, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1522, file: !1523, line: 19, baseType: !319, size: 64, offset: 384)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1522, file: !1523, line: 20, baseType: !653, size: 64, offset: 448)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1522, file: !1523, line: 23, baseType: !545, size: 128, offset: 512)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1522, file: !1523, line: 24, baseType: !355, size: 32, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1522, file: !1523, line: 29, baseType: !653, size: 64, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1522, file: !1523, line: 36, baseType: !1541, size: 320, offset: 768)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1542, line: 15, size: 320, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1541, file: !1542, line: 16, baseType: !662, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1541, file: !1542, line: 18, baseType: !103, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1541, file: !1542, line: 19, baseType: !103, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1541, file: !1542, line: 20, baseType: !103, size: 32, offset: 96)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1541, file: !1542, line: 21, baseType: !103, size: 32, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1541, file: !1542, line: 22, baseType: !319, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1541, file: !1542, line: 23, baseType: !319, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1379, file: !1380, line: 138, baseType: !1552, size: 64, offset: 1152)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !356, line: 18, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1379, file: !1380, line: 139, baseType: !1555, size: 64, offset: 1216)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1557, line: 16, flags: DIFlagFwdDecl)
!1557 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1379, file: !1380, line: 140, baseType: !1559, size: 64, offset: 1280)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1380, line: 25, size: 64, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1560, file: !1380, line: 26, baseType: !219, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1560, file: !1380, line: 27, baseType: !103, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1560, file: !1380, line: 28, baseType: !1565, offset: 64)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, elements: !1370)
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1379, file: !1380, line: 142, baseType: !1567, size: 128, offset: 1344)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1379, file: !1380, line: 142, size: 128, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1567, file: !1380, line: 143, baseType: !103, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1567, file: !1380, line: 144, baseType: !962, size: 128, align: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1309, file: !28, line: 1013, baseType: !1572, size: 256, offset: 960)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1573)
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1579}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1572, file: !28, line: 971, baseType: !319, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1572, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1572, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1572, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1572, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1572, file: !28, line: 976, baseType: !510, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1309, file: !28, line: 1014, baseType: !774, size: 128, offset: 1216)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1309, file: !28, line: 1015, baseType: !349, size: 64, offset: 1344)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1309, file: !28, line: 1016, baseType: !1583, size: 64, offset: 1408)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !1586)
!1586 = !{!1587, !1588, !1592, !1597, !1601, !2009, !2010, !2016, !2029, !2037, !2041, !2042, !2046, !2047, !2051, !2056, !2057, !2061, !2065, !2071, !2072, !2076, !2077, !2083, !2087, !2091, !2097, !2101, !2105, !2109, !2113, !2114, !2120}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1585, file: !28, line: 1915, baseType: !165, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1585, file: !28, line: 1916, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!510, !1308, !510, !103}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1585, file: !28, line: 1917, baseType: !1593, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!301, !1308, !269, !316, !1596}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1585, file: !28, line: 1918, baseType: !1598, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!301, !1308, !188, !316, !1596}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1585, file: !28, line: 1919, baseType: !1602, size: 64, offset: 256)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!301, !1605, !2007}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !1607)
!1607 = !{!1608, !1609, !1610, !1614, !1615, !1616, !1617}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1606, file: !28, line: 374, baseType: !1308, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1606, file: !28, line: 375, baseType: !510, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1606, file: !28, line: 376, baseType: !1611, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1605, !305}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1606, file: !28, line: 377, baseType: !164, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1606, file: !28, line: 378, baseType: !103, size: 32, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1606, file: !28, line: 379, baseType: !237, size: 16, offset: 288)
!1617 = !DIDerivedType(tag: DW_TAG_member, scope: !1606, file: !28, line: 380, baseType: !1618, size: 64, offset: 320)
!1618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1606, file: !28, line: 380, size: 64, elements: !1619)
!1619 = !{!1620, !2003}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1618, file: !28, line: 386, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1623, line: 998, size: 448, elements: !1624)
!1623 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1624 = !{!1625, !1989, !1990}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1622, file: !1623, line: 999, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !65, line: 293, size: 1536, elements: !1628)
!1628 = !{!1629, !1956, !1970}
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !65, line: 295, baseType: !1630, size: 512)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !65, line: 295, size: 512, elements: !1631)
!1631 = !{!1632, !1658}
!1632 = !DIDerivedType(tag: DW_TAG_member, scope: !1630, file: !65, line: 296, baseType: !1633, size: 448)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1630, file: !65, line: 296, size: 448, elements: !1634)
!1634 = !{!1635, !1636, !1645, !1646, !1647, !1656, !1657}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1633, file: !65, line: 298, baseType: !319, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !65, line: 299, baseType: !1637, size: 128, offset: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !65, line: 299, size: 128, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1637, file: !65, line: 300, baseType: !170, size: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !65, line: 302, baseType: !1641, size: 128)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !65, line: 302, size: 128, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1641, file: !65, line: 303, baseType: !164, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1641, file: !65, line: 305, baseType: !7, size: 32, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1633, file: !65, line: 310, baseType: !345, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1633, file: !65, line: 311, baseType: !319, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1633, file: !65, line: 312, baseType: !1648, size: 64, offset: 320)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1633, file: !65, line: 312, size: 64, elements: !1649)
!1649 = !{!1650, !1651}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1648, file: !65, line: 313, baseType: !164, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1648, file: !65, line: 314, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !65, line: 257, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 255, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1653, file: !65, line: 256, baseType: !319, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1633, file: !65, line: 316, baseType: !219, size: 32, offset: 384)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1633, file: !65, line: 317, baseType: !219, size: 32, offset: 416)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1630, file: !65, line: 323, baseType: !1659, size: 512, align: 128)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !65, line: 74, size: 512, align: 128, elements: !1660)
!1660 = !{!1661, !1662, !1950, !1955}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !65, line: 75, baseType: !319, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !65, line: 83, baseType: !1663, size: 320, offset: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !65, line: 83, size: 320, elements: !1664)
!1664 = !{!1665, !1686, !1700, !1704, !1949}
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !65, line: 84, baseType: !1666, size: 320)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !65, line: 84, size: 320, elements: !1667)
!1667 = !{!1668, !1679, !1680, !1685}
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !65, line: 90, baseType: !1669, size: 128)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !65, line: 90, size: 128, elements: !1670)
!1670 = !{!1671, !1672, !1677, !1678}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1669, file: !65, line: 91, baseType: !170, size: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !65, line: 94, baseType: !1673, size: 128)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1669, file: !65, line: 94, size: 128, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1673, file: !65, line: 96, baseType: !164, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1673, file: !65, line: 98, baseType: !7, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1669, file: !65, line: 102, baseType: !170, size: 128)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1669, file: !65, line: 103, baseType: !170, size: 128)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1666, file: !65, line: 106, baseType: !345, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !65, line: 107, baseType: !1681, size: 64, offset: 192)
!1681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !65, line: 107, size: 64, elements: !1682)
!1682 = !{!1683, !1684}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1681, file: !65, line: 108, baseType: !319, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1681, file: !65, line: 109, baseType: !319, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1666, file: !65, line: 117, baseType: !319, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !65, line: 119, baseType: !1687, size: 320)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !65, line: 119, size: 320, elements: !1688)
!1688 = !{!1689, !1690, !1693, !1694, !1695}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1687, file: !65, line: 124, baseType: !319, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1687, file: !65, line: 125, baseType: !1691, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !65, line: 125, flags: DIFlagFwdDecl)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1687, file: !65, line: 126, baseType: !319, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1687, file: !65, line: 127, baseType: !319, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !65, line: 128, baseType: !1696, size: 64, offset: 256)
!1696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1687, file: !65, line: 128, size: 64, elements: !1697)
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1696, file: !65, line: 133, baseType: !319, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1696, file: !65, line: 138, baseType: !653, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !65, line: 141, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !65, line: 141, size: 64, elements: !1702)
!1702 = !{!1703}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1701, file: !65, line: 142, baseType: !319, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1663, file: !65, line: 144, baseType: !1705, size: 128)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !65, line: 144, size: 128, elements: !1706)
!1706 = !{!1707, !1948}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1705, file: !65, line: 146, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !57, line: 126, size: 1216, elements: !1710)
!1710 = !{!1711, !1721, !1742, !1753, !1754, !1755, !1756, !1930, !1931, !1932}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1709, file: !57, line: 127, baseType: !1712, size: 384)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !57, line: 21, size: 384, elements: !1713)
!1713 = !{!1714, !1715, !1717, !1718, !1719, !1720}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1712, file: !57, line: 22, baseType: !319, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1712, file: !57, line: 23, baseType: !1716, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1712, file: !57, line: 24, baseType: !1716, size: 64, offset: 128)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1712, file: !57, line: 25, baseType: !319, size: 64, offset: 192)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1712, file: !57, line: 26, baseType: !319, size: 64, offset: 256)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1712, file: !57, line: 27, baseType: !319, size: 64, offset: 320)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1709, file: !57, line: 128, baseType: !1722, size: 128, offset: 384)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1723, line: 105, size: 128, elements: !1724)
!1723 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1724 = !{!1725, !1726}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1722, file: !1723, line: 110, baseType: !319, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1722, file: !1723, line: 118, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1723, line: 95, size: 448, elements: !1729)
!1729 = !{!1730, !1731, !1737, !1738, !1739, !1740, !1741}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1728, file: !1723, line: 96, baseType: !653, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1728, file: !1723, line: 97, baseType: !1732, size: 64, offset: 64)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1723, line: 60, baseType: !1734)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1736}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1728, file: !1723, line: 98, baseType: !1732, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1728, file: !1723, line: 99, baseType: !1469, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1728, file: !1723, line: 100, baseType: !1469, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1728, file: !1723, line: 101, baseType: !962, size: 128, align: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1728, file: !1723, line: 102, baseType: !1736, size: 64, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1709, file: !57, line: 129, baseType: !1743, size: 256, offset: 512)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1744, line: 26, size: 256, elements: !1745)
!1744 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1745 = !{!1746, !1747}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1743, file: !1744, line: 27, baseType: !7, size: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1743, file: !1744, line: 28, baseType: !1748, size: 192, offset: 64)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1749, line: 43, size: 192, elements: !1750)
!1749 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1748, file: !1749, line: 44, baseType: !662, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1748, file: !1749, line: 45, baseType: !170, size: 128, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1709, file: !57, line: 130, baseType: !56, size: 32, offset: 768)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1709, file: !57, line: 131, baseType: !7, size: 32, offset: 800)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1709, file: !57, line: 132, baseType: !319, size: 64, offset: 832)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1709, file: !57, line: 133, baseType: !1757, size: 64, offset: 896)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !57, line: 77, size: 192, elements: !1760)
!1760 = !{!1761, !1766, !1926}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1759, file: !57, line: 83, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{null, !1765}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1759, file: !57, line: 89, baseType: !1767, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !65, line: 1184, baseType: !7)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1773, line: 512, size: 896, elements: !1774)
!1773 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1774 = !{!1775, !1893, !1894, !1901, !1908, !1918, !1919, !1920, !1922, !1924}
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1773, line: 513, baseType: !1776, size: 320)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1772, file: !1773, line: 513, size: 320, elements: !1777)
!1777 = !{!1778, !1889, !1890, !1891, !1892}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1776, file: !1773, line: 514, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !65, line: 625, size: 1344, elements: !1781)
!1781 = !{!1782, !1791, !1792, !1800, !1807, !1808, !1813, !1814, !1819, !1820, !1823, !1882, !1883, !1884, !1885, !1886, !1887}
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !65, line: 628, baseType: !1783, size: 128)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !65, line: 628, size: 128, elements: !1784)
!1784 = !{!1785, !1790}
!1785 = !DIDerivedType(tag: DW_TAG_member, scope: !1783, file: !65, line: 629, baseType: !1786, size: 128)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !65, line: 629, size: 128, elements: !1787)
!1787 = !{!1788, !1789}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1786, file: !65, line: 631, baseType: !319, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1786, file: !65, line: 632, baseType: !319, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1783, file: !65, line: 635, baseType: !962, size: 128, align: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1780, file: !65, line: 639, baseType: !1281, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1780, file: !65, line: 640, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1794, line: 297, baseType: !1795)
!1794 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1794, line: 297, size: 64, elements: !1796)
!1796 = !{!1797}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1795, file: !1794, line: 297, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1799, line: 19, baseType: !319)
!1799 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1780, file: !65, line: 646, baseType: !1801, size: 64, offset: 256)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1780, file: !65, line: 646, size: 64, elements: !1802)
!1802 = !{!1803, !1806}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1801, file: !65, line: 647, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !65, line: 542, baseType: !319)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1801, file: !65, line: 648, baseType: !1805, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1780, file: !65, line: 666, baseType: !103, size: 32, offset: 320)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1780, file: !65, line: 667, baseType: !1809, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !65, line: 579, size: 320, elements: !1811)
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1810, file: !65, line: 580, baseType: !862, size: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1780, file: !65, line: 670, baseType: !1469, size: 8, offset: 448)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1780, file: !65, line: 681, baseType: !1815, size: 256, offset: 512)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1780, file: !65, line: 678, size: 256, elements: !1816)
!1816 = !{!1817, !1818}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1815, file: !65, line: 679, baseType: !1035, size: 192, align: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1815, file: !65, line: 680, baseType: !319, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1780, file: !65, line: 689, baseType: !170, size: 128, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1780, file: !65, line: 691, baseType: !1821, size: 64, offset: 896)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !65, line: 691, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1780, file: !65, line: 694, baseType: !1824, size: 64, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1773, line: 563, size: 1024, elements: !1827)
!1827 = !{!1828, !1832, !1833, !1837, !1841, !1845, !1846, !1850, !1854, !1858, !1859, !1860, !1864, !1868, !1874, !1878}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1826, file: !1773, line: 564, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{null, !1779}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1826, file: !1773, line: 569, baseType: !1829, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1826, file: !1773, line: 571, baseType: !1834, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!103, !1779, !319}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1826, file: !1773, line: 572, baseType: !1838, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!103, !1779}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1826, file: !1773, line: 578, baseType: !1842, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!103, !1779, !319, !319, !319}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1826, file: !1773, line: 580, baseType: !1767, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1826, file: !1773, line: 581, baseType: !1847, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!1770, !1771, !7}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1826, file: !1773, line: 582, baseType: !1851, size: 64, offset: 448)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!1770, !1771, !319, !319}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1826, file: !1773, line: 584, baseType: !1855, size: 64, offset: 512)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!319, !1779}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1826, file: !1773, line: 588, baseType: !1767, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1826, file: !1773, line: 591, baseType: !1767, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1826, file: !1773, line: 597, baseType: !1861, size: 64, offset: 704)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!103, !1779, !319, !164, !103, !103}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1826, file: !1773, line: 603, baseType: !1865, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!188, !1779}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1826, file: !1773, line: 613, baseType: !1869, size: 64, offset: 832)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!103, !1779, !1872}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !65, line: 717, flags: DIFlagFwdDecl)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1826, file: !1773, line: 625, baseType: !1875, size: 64, offset: 896)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!1872, !1779, !319}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1826, file: !1773, line: 633, baseType: !1879, size: 64, offset: 960)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1765, !1779, !319}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1780, file: !65, line: 697, baseType: !319, size: 64, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1780, file: !65, line: 699, baseType: !1308, size: 64, offset: 1088)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1780, file: !65, line: 700, baseType: !164, size: 64, offset: 1152)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1780, file: !65, line: 711, baseType: !653, size: 64, offset: 1216)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1780, file: !65, line: 717, baseType: !1872, size: 64, offset: 1280)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1780, file: !65, line: 722, baseType: !1888, offset: 1344)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !65, line: 570, elements: !553)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1776, file: !1773, line: 515, baseType: !714, size: 32, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1776, file: !1773, line: 516, baseType: !319, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1776, file: !1773, line: 517, baseType: !319, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1776, file: !1773, line: 518, baseType: !319, size: 64, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1772, file: !1773, line: 520, baseType: !64, size: 32, offset: 320)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1772, file: !1773, line: 522, baseType: !1895, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1799, line: 22, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1799, line: 22, size: 64, elements: !1898)
!1898 = !{!1899}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1897, file: !1799, line: 22, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1799, line: 15, baseType: !319)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1772, file: !1773, line: 524, baseType: !1902, size: 64, offset: 448)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1794, line: 372, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1794, line: 372, size: 64, elements: !1905)
!1905 = !{!1906}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1904, file: !1794, line: 372, baseType: !1907, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1799, line: 16, baseType: !319)
!1908 = !DIDerivedType(tag: DW_TAG_member, scope: !1772, file: !1773, line: 527, baseType: !1909, size: 64, offset: 512)
!1909 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1772, file: !1773, line: 527, size: 64, elements: !1910)
!1910 = !{!1911, !1917}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1909, file: !1773, line: 528, baseType: !1912, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1799, line: 21, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1799, line: 21, size: 64, elements: !1914)
!1914 = !{!1915}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1913, file: !1799, line: 21, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1799, line: 14, baseType: !319)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1909, file: !1773, line: 529, baseType: !1896, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1772, file: !1773, line: 534, baseType: !1765, size: 64, offset: 576)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1772, file: !1773, line: 535, baseType: !1765, size: 64, offset: 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1772, file: !1773, line: 541, baseType: !1921, size: 64, offset: 704)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1772, file: !1773, line: 545, baseType: !1923, size: 64, offset: 768)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1772, file: !1773, line: 549, baseType: !1925, size: 64, offset: 832)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1794, line: 520, baseType: !1765)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1759, file: !57, line: 100, baseType: !1927, size: 64, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!103, !1708, !319, !319, !103}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1709, file: !57, line: 134, baseType: !164, size: 64, offset: 960)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1709, file: !57, line: 135, baseType: !103, size: 32, offset: 1024)
!1932 = !DIDerivedType(tag: DW_TAG_member, scope: !1709, file: !57, line: 136, baseType: !1933, size: 128, offset: 1088)
!1933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1709, file: !57, line: 136, size: 128, elements: !1934)
!1934 = !{!1935, !1941}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1933, file: !57, line: 137, baseType: !1936, size: 128)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1937, line: 6, size: 128, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1936, file: !1937, line: 7, baseType: !422, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1936, file: !1937, line: 8, baseType: !422, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, scope: !1933, file: !57, line: 138, baseType: !1942)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1933, file: !57, line: 138, elements: !1943)
!1943 = !{!1944, !1946}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1942, file: !57, line: 138, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1942, file: !57, line: 138, elements: !553)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1942, file: !57, line: 138, baseType: !1947)
!1947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1936, elements: !1370)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1705, file: !65, line: 147, baseType: !164, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1663, file: !65, line: 161, baseType: !962, size: 128, align: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !65, line: 164, baseType: !1951, size: 32, offset: 384)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !65, line: 164, size: 32, elements: !1952)
!1952 = !{!1953, !1954}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1951, file: !65, line: 169, baseType: !219, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1951, file: !65, line: 177, baseType: !7, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1659, file: !65, line: 181, baseType: !219, size: 32, offset: 416)
!1956 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !65, line: 325, baseType: !1957, size: 512, offset: 512)
!1957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !65, line: 325, size: 512, elements: !1958)
!1958 = !{!1959, !1969}
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1957, file: !65, line: 326, baseType: !1960, size: 320)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1957, file: !65, line: 326, size: 320, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965, !1966, !1967, !1968}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1960, file: !65, line: 327, baseType: !319, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1960, file: !65, line: 328, baseType: !319, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1960, file: !65, line: 329, baseType: !319, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1960, file: !65, line: 331, baseType: !219, size: 32, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1960, file: !65, line: 332, baseType: !219, size: 32, offset: 224)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1960, file: !65, line: 333, baseType: !219, size: 32, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1960, file: !65, line: 335, baseType: !7, size: 32, offset: 288)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1957, file: !65, line: 339, baseType: !1659, size: 512, align: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, scope: !1627, file: !65, line: 341, baseType: !1971, size: 512, offset: 1024)
!1971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1627, file: !65, line: 341, size: 512, elements: !1972)
!1972 = !{!1973, !1982, !1988}
!1973 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !65, line: 342, baseType: !1974, size: 384)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1971, file: !65, line: 342, size: 384, elements: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1981}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1974, file: !65, line: 343, baseType: !319, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1974, file: !65, line: 344, baseType: !319, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1974, file: !65, line: 346, baseType: !164, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1974, file: !65, line: 347, baseType: !164, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1974, file: !65, line: 348, baseType: !164, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1974, file: !65, line: 349, baseType: !164, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_member, scope: !1971, file: !65, line: 352, baseType: !1983, size: 256)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1971, file: !65, line: 352, size: 256, elements: !1984)
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1983, file: !65, line: 353, baseType: !319, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1983, file: !65, line: 354, baseType: !319, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1983, file: !65, line: 356, baseType: !170, size: 128, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1971, file: !65, line: 359, baseType: !1659, size: 512, align: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1622, file: !1623, line: 1000, baseType: !103, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1622, file: !1623, line: 1001, baseType: !1991, size: 320, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !956, line: 14, baseType: !1992)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !956, line: 30, size: 320, elements: !1993)
!1993 = !{!1994, !1995, !1996, !2002}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1992, file: !956, line: 31, baseType: !7, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1992, file: !956, line: 32, baseType: !164, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1992, file: !956, line: 33, baseType: !1997, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !956, line: 16, baseType: !1998)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!103, !2001, !7, !103, !164}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1992, file: !956, line: 34, baseType: !170, size: 128, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1618, file: !28, line: 395, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!301, !164}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1585, file: !28, line: 1920, baseType: !1602, size: 64, offset: 320)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1585, file: !28, line: 1921, baseType: !2011, size: 64, offset: 384)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!103, !1605, !2014, !7}
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1585, file: !28, line: 1923, baseType: !2017, size: 64, offset: 448)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!103, !1308, !2020}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !2022)
!2022 = !{!2023, !2028}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2021, file: !28, line: 1859, baseType: !2024, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !2025)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!1469, !2020, !188, !103, !510, !422, !7}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2021, file: !28, line: 1860, baseType: !510, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1585, file: !28, line: 1924, baseType: !2030, size: 64, offset: 512)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!2033, !1308, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2034, line: 59, baseType: !7)
!2034 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !525, line: 31, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1585, file: !28, line: 1925, baseType: !2038, size: 64, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!305, !1308, !7, !319}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1585, file: !28, line: 1926, baseType: !2038, size: 64, offset: 640)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1585, file: !28, line: 1927, baseType: !2043, size: 64, offset: 704)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!103, !1308, !1779}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1585, file: !28, line: 1928, baseType: !319, size: 64, offset: 768)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1585, file: !28, line: 1929, baseType: !2048, size: 64, offset: 832)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!103, !349, !1308}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1585, file: !28, line: 1930, baseType: !2052, size: 64, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!103, !1308, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !164)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1585, file: !28, line: 1931, baseType: !2048, size: 64, offset: 960)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1585, file: !28, line: 1932, baseType: !2058, size: 64, offset: 1024)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{!103, !1308, !510, !510, !103}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1585, file: !28, line: 1933, baseType: !2062, size: 64, offset: 1088)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!103, !103, !1308, !103}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1585, file: !28, line: 1934, baseType: !2066, size: 64, offset: 1152)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!103, !1308, !103, !2069}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1585, file: !28, line: 1935, baseType: !1305, size: 64, offset: 1216)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1585, file: !28, line: 1936, baseType: !2073, size: 64, offset: 1280)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!103, !103}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1585, file: !28, line: 1937, baseType: !2066, size: 64, offset: 1344)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1585, file: !28, line: 1938, baseType: !2078, size: 64, offset: 1408)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!301, !2081, !1308, !1596, !316, !7}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !624, line: 59, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1585, file: !28, line: 1939, baseType: !2084, size: 64, offset: 1472)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!301, !1308, !1596, !2081, !316, !7}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1585, file: !28, line: 1940, baseType: !2088, size: 64, offset: 1536)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{null, !1308}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1585, file: !28, line: 1941, baseType: !2092, size: 64, offset: 1600)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!103, !1308, !103, !2095, !2096}
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1585, file: !28, line: 1942, baseType: !2098, size: 64, offset: 1664)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!305, !1308, !103, !510, !510}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1585, file: !28, line: 1944, baseType: !2102, size: 64, offset: 1728)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{null, !622, !1308}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1585, file: !28, line: 1948, baseType: !2106, size: 64, offset: 1792)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!301, !1308, !510, !1308, !510, !316, !7}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1585, file: !28, line: 1950, baseType: !2110, size: 64, offset: 1856)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!510, !1308, !510, !1308, !510, !510, !7}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1585, file: !28, line: 1953, baseType: !2058, size: 64, offset: 1920)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1585, file: !28, line: 1954, baseType: !2115, size: 64, offset: 1984)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!103, !2118, !7}
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1585, file: !28, line: 1955, baseType: !2121, size: 64, offset: 2048)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!103, !2118, !2014, !7}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1309, file: !28, line: 1018, baseType: !422, size: 64, offset: 1472)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1309, file: !28, line: 1020, baseType: !164, size: 64, offset: 1536)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1309, file: !28, line: 1023, baseType: !164, size: 64, offset: 1600)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1309, file: !28, line: 1027, baseType: !2128, size: 64, offset: 1664)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1309, file: !28, line: 1029, baseType: !345, size: 64, offset: 1728)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1309, file: !28, line: 1030, baseType: !2131, size: 32, offset: 1792)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2132, line: 8, baseType: !418)
!2132 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1309, file: !28, line: 1031, baseType: !2131, size: 32, offset: 1824)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1285, file: !65, line: 756, baseType: !319, size: 64, offset: 704)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1285, file: !65, line: 757, baseType: !319, size: 64, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1285, file: !65, line: 760, baseType: !319, size: 64, offset: 832)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1285, file: !65, line: 761, baseType: !319, size: 64, offset: 896)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1285, file: !65, line: 763, baseType: !319, size: 64, offset: 960)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1285, file: !65, line: 764, baseType: !2140, size: 64, offset: 1024)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1794, line: 299, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1794, line: 299, size: 64, elements: !2143)
!2143 = !{!2144}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2142, file: !1794, line: 299, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1799, line: 18, baseType: !319)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1285, file: !65, line: 773, baseType: !219, size: 32, offset: 1088)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1285, file: !65, line: 785, baseType: !219, size: 32, offset: 1120)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1285, file: !65, line: 795, baseType: !2149, size: 64, offset: 1152)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !65, line: 726, size: 128, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2150, file: !65, line: 727, baseType: !422, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2150, file: !65, line: 728, baseType: !103, size: 32, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1285, file: !65, line: 801, baseType: !319, size: 64, offset: 1216)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1285, file: !65, line: 804, baseType: !653, size: 64, offset: 1280)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1285, file: !65, line: 806, baseType: !103, size: 32, offset: 1344)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1285, file: !65, line: 808, baseType: !199, size: 32, offset: 1376)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1285, file: !65, line: 823, baseType: !862, size: 320, offset: 1408)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1285, file: !65, line: 825, baseType: !170, size: 128, offset: 1728)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1285, file: !65, line: 845, baseType: !103, size: 32, offset: 1856)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1285, file: !65, line: 849, baseType: !319, size: 64, offset: 1920)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1285, file: !65, line: 850, baseType: !319, size: 64, offset: 1984)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1285, file: !65, line: 852, baseType: !319, size: 64, offset: 2048)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1285, file: !65, line: 853, baseType: !319, size: 64, offset: 2112)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1285, file: !65, line: 854, baseType: !655, size: 64, offset: 2176)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1285, file: !65, line: 855, baseType: !319, size: 64, offset: 2240)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1285, file: !65, line: 856, baseType: !319, size: 64, offset: 2304)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1285, file: !65, line: 857, baseType: !319, size: 64, offset: 2368)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1285, file: !65, line: 858, baseType: !319, size: 64, offset: 2432)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1285, file: !65, line: 865, baseType: !395, size: 32, offset: 2496)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1285, file: !65, line: 867, baseType: !199, size: 32, offset: 2528)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1285, file: !65, line: 869, baseType: !319, size: 64, offset: 2560)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1285, file: !65, line: 869, baseType: !319, size: 64, offset: 2624)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1285, file: !65, line: 869, baseType: !319, size: 64, offset: 2688)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1285, file: !65, line: 869, baseType: !319, size: 64, offset: 2752)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1285, file: !65, line: 870, baseType: !319, size: 64, offset: 2816)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1285, file: !65, line: 870, baseType: !319, size: 64, offset: 2880)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1285, file: !65, line: 870, baseType: !319, size: 64, offset: 2944)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1285, file: !65, line: 871, baseType: !319, size: 64, offset: 3008)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1285, file: !65, line: 871, baseType: !319, size: 64, offset: 3072)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1285, file: !65, line: 871, baseType: !319, size: 64, offset: 3136)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1285, file: !65, line: 871, baseType: !319, size: 64, offset: 3200)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1285, file: !65, line: 873, baseType: !2184, size: 3328, offset: 3264)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 3328, elements: !2185)
!2185 = !{!2186}
!2186 = !DISubrange(count: 52)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1285, file: !65, line: 875, baseType: !2188, size: 1280, offset: 6592)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1527, size: 1280, elements: !1357)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1285, file: !65, line: 877, baseType: !2190, size: 64, offset: 7872)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !65, line: 877, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1285, file: !65, line: 880, baseType: !2193, size: 1088, offset: 7936)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2194, line: 72, baseType: !2195)
!2194 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2194, line: 23, size: 1088, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200, !2201, !2204, !2205, !2206, !2207, !2234, !2235, !2236}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2195, file: !2194, line: 28, baseType: !422, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2195, file: !2194, line: 38, baseType: !655, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2195, file: !2194, line: 40, baseType: !319, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2195, file: !2194, line: 43, baseType: !862, size: 320, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2195, file: !2194, line: 44, baseType: !2202, size: 64, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2194, line: 44, flags: DIFlagFwdDecl)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2195, file: !2194, line: 48, baseType: !319, size: 64, offset: 576)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2195, file: !2194, line: 59, baseType: !649, size: 256, offset: 640)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2195, file: !2194, line: 60, baseType: !164, size: 64, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2195, file: !2194, line: 61, baseType: !2208, size: 64, offset: 960)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2210)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2211, line: 13, size: 1216, elements: !2212)
!2211 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2212 = !{!2213, !2214, !2215, !2216, !2217, !2218, !2219, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2210, file: !2211, line: 14, baseType: !164, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2210, file: !2211, line: 15, baseType: !319, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2210, file: !2211, line: 17, baseType: !319, size: 64, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2210, file: !2211, line: 17, baseType: !319, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2210, file: !2211, line: 18, baseType: !319, size: 64, offset: 256)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2210, file: !2211, line: 18, baseType: !319, size: 64, offset: 320)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2210, file: !2211, line: 19, baseType: !2220, size: 64, offset: 384)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2210, file: !2211, line: 21, baseType: !305, size: 64, offset: 448)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2210, file: !2211, line: 23, baseType: !305, size: 64, offset: 512)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2210, file: !2211, line: 24, baseType: !305, size: 64, offset: 576)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2210, file: !2211, line: 25, baseType: !305, size: 64, offset: 640)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2210, file: !2211, line: 26, baseType: !305, size: 64, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2210, file: !2211, line: 27, baseType: !305, size: 64, offset: 768)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2210, file: !2211, line: 28, baseType: !305, size: 64, offset: 832)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2210, file: !2211, line: 29, baseType: !305, size: 64, offset: 896)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2210, file: !2211, line: 30, baseType: !305, size: 64, offset: 960)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2210, file: !2211, line: 31, baseType: !305, size: 64, offset: 1024)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2210, file: !2211, line: 32, baseType: !305, size: 64, offset: 1088)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2210, file: !2211, line: 33, baseType: !305, size: 64, offset: 1152)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2195, file: !2194, line: 63, baseType: !219, size: 32, offset: 1024)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2195, file: !2194, line: 69, baseType: !237, size: 16, offset: 1056)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2195, file: !2194, line: 70, baseType: !2237, size: 16, offset: 1072)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !228, line: 18, baseType: !2238)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !230, line: 23, baseType: !1438)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1285, file: !65, line: 882, baseType: !319, size: 64, offset: 9024)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1285, file: !65, line: 885, baseType: !199, size: 32, offset: 9088)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1285, file: !65, line: 886, baseType: !2242, size: 64, offset: 9152)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !65, line: 732, flags: DIFlagFwdDecl)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1285, file: !65, line: 901, baseType: !1552, size: 64, offset: 9216)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1285, file: !65, line: 904, baseType: !1308, size: 64, offset: 9280)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1285, file: !65, line: 906, baseType: !2247, size: 64, offset: 9344)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !65, line: 906, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1285, file: !65, line: 930, baseType: !219, size: 32, offset: 9408)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1285, file: !65, line: 933, baseType: !219, size: 32, offset: 9440)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1285, file: !65, line: 935, baseType: !2252, size: 64, offset: 9472)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !2253)
!2253 = !{!2254}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2252, file: !81, line: 104, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1285, file: !65, line: 940, baseType: !653, size: 64, offset: 9536)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1285, file: !65, line: 942, baseType: !2259, size: 256, offset: 9600)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2260, line: 98, size: 256, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2261 = !{!2262, !2263, !2264}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2259, file: !2260, line: 99, baseType: !653, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2259, file: !2260, line: 100, baseType: !170, size: 128, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2259, file: !2260, line: 101, baseType: !2265, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2260, line: 21, baseType: !2266)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !2269}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1282, file: !65, line: 986, baseType: !2271, offset: 10240)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, elements: !1370)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !978, file: !624, line: 882, baseType: !1281, size: 64, offset: 9792)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !978, file: !624, line: 884, baseType: !103, size: 32, offset: 9856)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !978, file: !624, line: 885, baseType: !103, size: 32, offset: 9888)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !978, file: !624, line: 886, baseType: !103, size: 32, offset: 9920)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !978, file: !624, line: 888, baseType: !103, size: 32, offset: 9952)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !978, file: !624, line: 890, baseType: !319, size: 64, offset: 9984)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !978, file: !624, line: 893, baseType: !7, size: 32, offset: 10048)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !978, file: !624, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !978, file: !624, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !978, file: !624, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !978, file: !624, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !978, file: !624, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !978, file: !624, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !978, file: !624, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !978, file: !624, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !978, file: !624, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !978, file: !624, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !978, file: !624, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !978, file: !624, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !978, file: !624, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !978, file: !624, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !978, file: !624, line: 969, baseType: !319, size: 64, offset: 10176)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !978, file: !624, line: 971, baseType: !2295, size: 448, offset: 10240)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2296)
!2296 = !{!2297, !2298, !2303}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2295, file: !44, line: 26, baseType: !319, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2295, file: !44, line: 27, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!305, !2302}
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, scope: !2295, file: !44, line: 28, baseType: !2304, size: 320, offset: 128)
!2304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2295, file: !44, line: 28, size: 320, elements: !2305)
!2305 = !{!2306, !2316, !2341}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2304, file: !44, line: 37, baseType: !2307, size: 320)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2304, file: !44, line: 30, size: 320, elements: !2308)
!2308 = !{!2309, !2311, !2312, !2313, !2314, !2315}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2307, file: !44, line: 31, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2307, file: !44, line: 32, baseType: !418, size: 32, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !44, line: 33, baseType: !418, size: 32, offset: 96)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2307, file: !44, line: 34, baseType: !418, size: 32, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2307, file: !44, line: 35, baseType: !422, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2307, file: !44, line: 36, baseType: !2310, size: 64, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2304, file: !44, line: 47, baseType: !2317, size: 192)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2304, file: !44, line: 39, size: 192, elements: !2318)
!2318 = !{!2319, !2320, !2321, !2340}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2317, file: !44, line: 40, baseType: !1152, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2317, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !44, line: 42, baseType: !2322, size: 64, offset: 64)
!2322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !44, line: 42, size: 64, elements: !2323)
!2323 = !{!2324, !2332}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2322, file: !44, line: 43, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2327, line: 7, size: 128, elements: !2328)
!2327 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2328 = !{!2329, !2331}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2326, file: !2327, line: 8, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !303, line: 93, baseType: !512)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2326, file: !2327, line: 9, baseType: !512, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2322, file: !44, line: 44, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2335, line: 7, size: 64, elements: !2336)
!2335 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2336 = !{!2337, !2339}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2334, file: !2335, line: 8, baseType: !2338, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2335, line: 5, baseType: !1412)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2334, file: !2335, line: 9, baseType: !1412, size: 32, offset: 32)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2317, file: !44, line: 46, baseType: !422, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2304, file: !44, line: 55, baseType: !2342, size: 256)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2304, file: !44, line: 49, size: 256, elements: !2343)
!2343 = !{!2344, !2347, !2348, !2349, !2350}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2342, file: !44, line: 50, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !44, line: 14, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2342, file: !44, line: 51, baseType: !103, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2342, file: !44, line: 52, baseType: !103, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2342, file: !44, line: 53, baseType: !319, size: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2342, file: !44, line: 54, baseType: !319, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !978, file: !624, line: 973, baseType: !2352, size: 32, offset: 10688)
!2352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !171, line: 27, baseType: !2353)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !303, line: 28, baseType: !103)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !978, file: !624, line: 974, baseType: !2352, size: 32, offset: 10720)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !978, file: !624, line: 978, baseType: !319, size: 64, offset: 10752)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !978, file: !624, line: 987, baseType: !977, size: 64, offset: 10816)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !978, file: !624, line: 990, baseType: !977, size: 64, offset: 10880)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !978, file: !624, line: 995, baseType: !170, size: 128, offset: 10944)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !978, file: !624, line: 996, baseType: !170, size: 128, offset: 11072)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !978, file: !624, line: 997, baseType: !977, size: 64, offset: 11200)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !978, file: !624, line: 1005, baseType: !170, size: 128, offset: 11264)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !978, file: !624, line: 1006, baseType: !170, size: 128, offset: 11392)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !978, file: !624, line: 1009, baseType: !1349, size: 64, offset: 11520)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !978, file: !624, line: 1010, baseType: !2365, size: 512, offset: 11584)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, size: 512, elements: !1357)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !978, file: !624, line: 1011, baseType: !170, size: 128, offset: 12096)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !978, file: !624, line: 1012, baseType: !170, size: 128, offset: 12224)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !978, file: !624, line: 1014, baseType: !2369, size: 64, offset: 12352)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !978, file: !624, line: 1017, baseType: !616, size: 64, offset: 12416)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !978, file: !624, line: 1020, baseType: !616, size: 64, offset: 12480)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !978, file: !624, line: 1023, baseType: !164, size: 64, offset: 12544)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !978, file: !624, line: 1025, baseType: !422, size: 64, offset: 12608)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !978, file: !624, line: 1026, baseType: !422, size: 64, offset: 12672)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !978, file: !624, line: 1031, baseType: !422, size: 64, offset: 12736)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !978, file: !624, line: 1032, baseType: !2377, size: 192, offset: 12800)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !624, line: 324, size: 192, elements: !2378)
!2378 = !{!2379, !2380, !2381}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2377, file: !624, line: 326, baseType: !422, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2377, file: !624, line: 327, baseType: !422, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2377, file: !624, line: 328, baseType: !662, size: 32, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !978, file: !624, line: 1041, baseType: !319, size: 64, offset: 12992)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !978, file: !624, line: 1042, baseType: !319, size: 64, offset: 13056)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !978, file: !624, line: 1045, baseType: !422, size: 64, offset: 13120)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !978, file: !624, line: 1048, baseType: !422, size: 64, offset: 13184)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !978, file: !624, line: 1051, baseType: !319, size: 64, offset: 13248)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !978, file: !624, line: 1052, baseType: !319, size: 64, offset: 13312)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !978, file: !624, line: 1055, baseType: !2389, size: 640, offset: 13376)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2390, line: 132, size: 640, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2391 = !{!2392, !2398, !2399}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2389, file: !2390, line: 133, baseType: !2393, size: 576)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2394, size: 576, elements: !270)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2390, line: 117, size: 192, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2394, file: !2390, line: 118, baseType: !422, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2394, file: !2390, line: 119, baseType: !1161, size: 128, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2389, file: !2390, line: 134, baseType: !7, size: 32, offset: 576)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2389, file: !2390, line: 135, baseType: !7, size: 32, offset: 608)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !978, file: !624, line: 1058, baseType: !2401, size: 448, offset: 14016)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2390, line: 144, size: 448, elements: !2402)
!2402 = !{!2403, !2404, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2401, file: !2390, line: 145, baseType: !962, size: 128, align: 64)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2401, file: !2390, line: 146, baseType: !649, size: 256, offset: 128)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2401, file: !2390, line: 147, baseType: !7, size: 32, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !978, file: !624, line: 1064, baseType: !1377, size: 64, offset: 14464)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !978, file: !624, line: 1067, baseType: !1377, size: 64, offset: 14528)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !978, file: !624, line: 1070, baseType: !1377, size: 64, offset: 14592)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !978, file: !624, line: 1074, baseType: !1404, size: 64, offset: 14656)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !978, file: !624, line: 1084, baseType: !2411, size: 128, offset: 14720)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 128, elements: !2412)
!2412 = !{!2413}
!2413 = !DISubrange(count: 16)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !978, file: !624, line: 1086, baseType: !2415, size: 64, offset: 14848)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !624, line: 55, flags: DIFlagFwdDecl)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !978, file: !624, line: 1089, baseType: !2418, size: 64, offset: 14912)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2419, line: 12, size: 64, elements: !2420)
!2419 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2420 = !{!2421}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2418, file: !2419, line: 13, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2419, line: 8, flags: DIFlagFwdDecl)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !978, file: !624, line: 1090, baseType: !2425, size: 128, offset: 14976)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2426, line: 13, size: 128, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2427 = !{!2428}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2425, file: !2426, line: 14, baseType: !170, size: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !978, file: !624, line: 1097, baseType: !2430, size: 64, offset: 15104)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !624, line: 50, flags: DIFlagFwdDecl)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !978, file: !624, line: 1100, baseType: !2433, size: 64, offset: 15168)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !624, line: 1100, flags: DIFlagFwdDecl)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !978, file: !624, line: 1103, baseType: !2436, size: 64, offset: 15232)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !624, line: 53, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !978, file: !624, line: 1107, baseType: !2439, size: 64, offset: 15296)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2441, line: 35, flags: DIFlagFwdDecl)
!2441 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !978, file: !624, line: 1110, baseType: !2443, size: 64, offset: 15360)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2445, line: 93, size: 8768, elements: !2446)
!2445 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2446 = !{!2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2496, !2505, !2506, !2508, !2509, !2510, !2513, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2551, !2552, !2559, !2569, !2572, !2573, !2576, !2577, !2578, !2579, !2580, !2581}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2444, file: !2445, line: 94, baseType: !991, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2444, file: !2445, line: 95, baseType: !219, size: 32, offset: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2444, file: !2445, line: 96, baseType: !103, size: 32, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2444, file: !2445, line: 97, baseType: !103, size: 32, offset: 96)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2444, file: !2445, line: 98, baseType: !170, size: 128, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2444, file: !2445, line: 100, baseType: !955, size: 192, offset: 256)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2444, file: !2445, line: 103, baseType: !977, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2444, file: !2445, line: 106, baseType: !2455, size: 192, offset: 512)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1557, line: 32, size: 192, elements: !2456)
!2456 = !{!2457, !2458}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2455, file: !1557, line: 33, baseType: !170, size: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2455, file: !1557, line: 34, baseType: !2459, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2460, line: 25, baseType: !2461)
!2460 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2460, line: 23, size: 64, elements: !2462)
!2462 = !{!2463}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2461, file: !2460, line: 24, baseType: !1232, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2444, file: !2445, line: 109, baseType: !541, size: 64, offset: 704)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2444, file: !2445, line: 112, baseType: !103, size: 32, offset: 768)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2444, file: !2445, line: 114, baseType: !103, size: 32, offset: 800)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2444, file: !2445, line: 115, baseType: !977, size: 64, offset: 832)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2444, file: !2445, line: 118, baseType: !103, size: 32, offset: 896)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2444, file: !2445, line: 119, baseType: !7, size: 32, offset: 928)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2444, file: !2445, line: 121, baseType: !2471, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2445, line: 80, size: 448, elements: !2473)
!2473 = !{!2474, !2475, !2481}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2472, file: !2445, line: 81, baseType: !219, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2472, file: !2445, line: 82, baseType: !2476, size: 128, offset: 64)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2445, line: 75, size: 128, elements: !2477)
!2477 = !{!2478, !2479}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2476, file: !2445, line: 76, baseType: !977, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2476, file: !2445, line: 77, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2472, file: !2445, line: 83, baseType: !1743, size: 256, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2444, file: !2445, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2444, file: !2445, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2444, file: !2445, line: 138, baseType: !7, size: 32, offset: 1056)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2444, file: !2445, line: 139, baseType: !170, size: 128, offset: 1088)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2444, file: !2445, line: 142, baseType: !1105, size: 512, offset: 1216)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2444, file: !2445, line: 143, baseType: !1113, size: 64, offset: 1728)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2444, file: !2445, line: 150, baseType: !2489, size: 256, offset: 1792)
!2489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2490, size: 256, elements: !2494)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2445, line: 38, size: 128, elements: !2491)
!2491 = !{!2492, !2493}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2490, file: !2445, line: 39, baseType: !422, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2490, file: !2445, line: 40, baseType: !422, size: 64, offset: 64)
!2494 = !{!2495}
!2495 = !DISubrange(count: 2)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2444, file: !2445, line: 156, baseType: !2497, size: 192, offset: 2048)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2445, line: 66, size: 192, elements: !2498)
!2498 = !{!2499}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2497, file: !2445, line: 67, baseType: !2500, size: 192)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2445, line: 47, size: 192, elements: !2501)
!2501 = !{!2502, !2503, !2504}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2500, file: !2445, line: 48, baseType: !655, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2500, file: !2445, line: 49, baseType: !655, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2500, file: !2445, line: 50, baseType: !655, size: 64, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2444, file: !2445, line: 160, baseType: !2389, size: 640, offset: 2240)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2444, file: !2445, line: 163, baseType: !2507, size: 256, offset: 2880)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1349, size: 256, elements: !1357)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2444, file: !2445, line: 169, baseType: !1349, size: 64, offset: 3136)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2444, file: !2445, line: 172, baseType: !103, size: 32, offset: 3200)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2444, file: !2445, line: 174, baseType: !2511, size: 64, offset: 3264)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2445, line: 174, flags: DIFlagFwdDecl)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2444, file: !2445, line: 185, baseType: !2514, size: 64, offset: 3328)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !391, line: 860, baseType: !2515)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 853, size: 64, elements: !2516)
!2516 = !{!2517, !2518}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2515, file: !391, line: 858, baseType: !390, size: 32)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2515, file: !391, line: 859, baseType: !199, size: 32, offset: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2444, file: !2445, line: 186, baseType: !422, size: 64, offset: 3392)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2444, file: !2445, line: 186, baseType: !422, size: 64, offset: 3456)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2444, file: !2445, line: 186, baseType: !422, size: 64, offset: 3520)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2444, file: !2445, line: 186, baseType: !422, size: 64, offset: 3584)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2444, file: !2445, line: 187, baseType: !422, size: 64, offset: 3648)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2444, file: !2445, line: 188, baseType: !422, size: 64, offset: 3712)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2444, file: !2445, line: 189, baseType: !2377, size: 192, offset: 3776)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2444, file: !2445, line: 190, baseType: !319, size: 64, offset: 3968)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2444, file: !2445, line: 190, baseType: !319, size: 64, offset: 4032)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2444, file: !2445, line: 190, baseType: !319, size: 64, offset: 4096)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2444, file: !2445, line: 190, baseType: !319, size: 64, offset: 4160)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2444, file: !2445, line: 191, baseType: !319, size: 64, offset: 4224)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2444, file: !2445, line: 191, baseType: !319, size: 64, offset: 4288)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2444, file: !2445, line: 191, baseType: !319, size: 64, offset: 4352)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2444, file: !2445, line: 191, baseType: !319, size: 64, offset: 4416)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2444, file: !2445, line: 192, baseType: !319, size: 64, offset: 4480)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2444, file: !2445, line: 192, baseType: !319, size: 64, offset: 4544)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2444, file: !2445, line: 192, baseType: !319, size: 64, offset: 4608)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2444, file: !2445, line: 192, baseType: !319, size: 64, offset: 4672)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2444, file: !2445, line: 193, baseType: !319, size: 64, offset: 4736)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2444, file: !2445, line: 193, baseType: !319, size: 64, offset: 4800)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2444, file: !2445, line: 194, baseType: !2541, size: 448, offset: 4864)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2542, line: 12, size: 448, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2541, file: !2542, line: 15, baseType: !422, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2541, file: !2542, line: 17, baseType: !422, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2541, file: !2542, line: 19, baseType: !422, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2541, file: !2542, line: 21, baseType: !422, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2541, file: !2542, line: 29, baseType: !422, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2541, file: !2542, line: 35, baseType: !422, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2541, file: !2542, line: 44, baseType: !422, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2444, file: !2445, line: 202, baseType: !424, size: 64, offset: 5312)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2444, file: !2445, line: 213, baseType: !2553, size: 2048, offset: 5376)
!2553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2554, size: 2048, elements: !2412)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2555, line: 43, size: 128, elements: !2556)
!2555 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2554, file: !2555, line: 44, baseType: !318, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2554, file: !2555, line: 45, baseType: !318, size: 64, offset: 64)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2444, file: !2445, line: 216, baseType: !2560, size: 448, offset: 7424)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2445, line: 30, size: 448, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2560, file: !2445, line: 31, baseType: !103, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2560, file: !2445, line: 32, baseType: !305, size: 64, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2560, file: !2445, line: 33, baseType: !319, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2560, file: !2445, line: 34, baseType: !422, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2560, file: !2445, line: 34, baseType: !422, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2560, file: !2445, line: 35, baseType: !319, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2560, file: !2445, line: 35, baseType: !319, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2444, file: !2445, line: 219, baseType: !2570, size: 64, offset: 7872)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2445, line: 219, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2444, file: !2445, line: 222, baseType: !7, size: 32, offset: 7936)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2444, file: !2445, line: 223, baseType: !2574, size: 64, offset: 8000)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2445, line: 223, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2444, file: !2445, line: 230, baseType: !1469, size: 8, offset: 8064)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2444, file: !2445, line: 231, baseType: !1438, size: 16, offset: 8080)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2444, file: !2445, line: 232, baseType: !1438, size: 16, offset: 8096)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2444, file: !2445, line: 234, baseType: !1281, size: 64, offset: 8128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2444, file: !2445, line: 237, baseType: !649, size: 256, offset: 8192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2444, file: !2445, line: 243, baseType: !862, size: 320, offset: 8448)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !978, file: !624, line: 1111, baseType: !2583, size: 64, offset: 15424)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2445, line: 20, size: 16640, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2584, file: !2445, line: 21, baseType: !199, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2584, file: !2445, line: 22, baseType: !991, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2584, file: !2445, line: 23, baseType: !955, size: 192, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2584, file: !2445, line: 24, baseType: !2590, size: 16384, offset: 256)
!2590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2591, size: 16384, elements: !274)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1557, line: 51, size: 256, elements: !2592)
!2592 = !{!2593}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2591, file: !1557, line: 52, baseType: !2594, size: 256)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1557, line: 37, size: 256, elements: !2595)
!2595 = !{!2596, !2603, !2604, !2610}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2594, file: !1557, line: 39, baseType: !2597, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2598, line: 83, baseType: !2599)
!2598 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2598, line: 82, baseType: !2601)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !103}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2594, file: !1557, line: 40, baseType: !319, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2594, file: !1557, line: 46, baseType: !2605, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2598, line: 86, baseType: !2606)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2598, line: 85, baseType: !2608)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{null}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2594, file: !1557, line: 48, baseType: !2459, size: 64, offset: 192)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !978, file: !624, line: 1112, baseType: !2459, size: 64, offset: 15488)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !978, file: !624, line: 1113, baseType: !2459, size: 64, offset: 15552)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !978, file: !624, line: 1115, baseType: !2459, size: 64, offset: 15616)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !978, file: !624, line: 1116, baseType: !2455, size: 192, offset: 15680)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !978, file: !624, line: 1117, baseType: !319, size: 64, offset: 15872)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !978, file: !624, line: 1118, baseType: !316, size: 64, offset: 15936)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !978, file: !624, line: 1119, baseType: !7, size: 32, offset: 16000)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !978, file: !624, line: 1121, baseType: !965, size: 64, offset: 16064)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !978, file: !624, line: 1125, baseType: !2620, size: 64, offset: 16128)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !624, line: 43, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !978, file: !624, line: 1127, baseType: !355, size: 32, offset: 16192)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !978, file: !624, line: 1128, baseType: !7, size: 32, offset: 16224)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !978, file: !624, line: 1130, baseType: !2625, size: 128, offset: 16256)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2626, line: 37, size: 128, elements: !2627)
!2626 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2627 = !{!2628, !2629, !2630}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2625, file: !2626, line: 38, baseType: !103, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2625, file: !2626, line: 39, baseType: !219, size: 32, offset: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2625, file: !2626, line: 40, baseType: !2631, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2626, line: 24, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !978, file: !624, line: 1131, baseType: !2634, size: 256, offset: 16384)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2635, line: 12, size: 256, elements: !2636)
!2635 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2636 = !{!2637, !2638, !2639, !2640}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2634, file: !2635, line: 13, baseType: !269, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2634, file: !2635, line: 14, baseType: !319, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2634, file: !2635, line: 15, baseType: !319, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2634, file: !2635, line: 16, baseType: !1469, size: 8, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !978, file: !624, line: 1134, baseType: !422, size: 64, offset: 16640)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !978, file: !624, line: 1135, baseType: !422, size: 64, offset: 16704)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !978, file: !624, line: 1138, baseType: !199, size: 32, offset: 16768)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !978, file: !624, line: 1141, baseType: !662, size: 32, offset: 16800)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !978, file: !624, line: 1143, baseType: !2646, size: 64, offset: 16832)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !624, line: 735, size: 64, elements: !2647)
!2647 = !{!2648}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2646, file: !624, line: 736, baseType: !2649, size: 64)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !978, file: !624, line: 1147, baseType: !1164, size: 128, offset: 16896)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !978, file: !624, line: 1149, baseType: !977, size: 64, offset: 17024)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !978, file: !624, line: 1151, baseType: !2653, size: 64, offset: 17088)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !624, line: 1151, flags: DIFlagFwdDecl)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !978, file: !624, line: 1188, baseType: !164, size: 64, offset: 17152)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !978, file: !624, line: 1191, baseType: !2657, size: 64, offset: 17216)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !624, line: 44, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !978, file: !624, line: 1194, baseType: !2660, size: 64, offset: 17280)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !624, line: 45, flags: DIFlagFwdDecl)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !978, file: !624, line: 1197, baseType: !2663, size: 64, offset: 17344)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !624, line: 61, flags: DIFlagFwdDecl)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !978, file: !624, line: 1199, baseType: !2666, size: 64, offset: 17408)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2668, line: 99, size: 128, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2669 = !{!2670, !2671, !2672}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2667, file: !2668, line: 100, baseType: !653, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2667, file: !2668, line: 101, baseType: !219, size: 32, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2667, file: !2668, line: 103, baseType: !239, size: 16, offset: 96)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !978, file: !624, line: 1202, baseType: !2674, size: 64, offset: 17472)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !624, line: 48, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !978, file: !624, line: 1205, baseType: !319, size: 64, offset: 17536)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !978, file: !624, line: 1206, baseType: !2678, size: 64, offset: 17600)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1557, line: 14, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1557, line: 12, size: 384, elements: !2681)
!2681 = !{!2682}
!2682 = !DIDerivedType(tag: DW_TAG_member, scope: !2680, file: !1557, line: 13, baseType: !2683, size: 384)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2680, file: !1557, line: 13, size: 384, elements: !2684)
!2684 = !{!2685, !2686, !2687, !2688}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2683, file: !1557, line: 13, baseType: !103, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2683, file: !1557, line: 13, baseType: !103, size: 32, offset: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2683, file: !1557, line: 13, baseType: !103, size: 32, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2683, file: !1557, line: 13, baseType: !2689, size: 256, offset: 128)
!2689 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2690, line: 37, size: 256, elements: !2691)
!2690 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2691 = !{!2692, !2697, !2710, !2716, !2725, !2752, !2757}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2689, file: !2690, line: 42, baseType: !2693, size: 64)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2690, line: 39, size: 64, elements: !2694)
!2694 = !{!2695, !2696}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2693, file: !2690, line: 40, baseType: !2353, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2693, file: !2690, line: 41, baseType: !361, size: 32, offset: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2689, file: !2690, line: 50, baseType: !2698, size: 192)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2690, line: 45, size: 192, elements: !2699)
!2699 = !{!2700, !2702, !2703, !2709}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2698, file: !2690, line: 46, baseType: !2701, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !303, line: 95, baseType: !103)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2698, file: !2690, line: 47, baseType: !103, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2698, file: !2690, line: 48, baseType: !2704, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2690, line: 11, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2690, line: 8, size: 64, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2705, file: !2690, line: 9, baseType: !103, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2705, file: !2690, line: 10, baseType: !164, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2698, file: !2690, line: 49, baseType: !103, size: 32, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2689, file: !2690, line: 57, baseType: !2711, size: 128)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2690, line: 53, size: 128, elements: !2712)
!2712 = !{!2713, !2714, !2715}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2711, file: !2690, line: 54, baseType: !2353, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2711, file: !2690, line: 55, baseType: !361, size: 32, offset: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2711, file: !2690, line: 56, baseType: !2704, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2689, file: !2690, line: 66, baseType: !2717, size: 256)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2690, line: 60, size: 256, elements: !2718)
!2718 = !{!2719, !2720, !2721, !2722, !2724}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2717, file: !2690, line: 61, baseType: !2353, size: 32)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2717, file: !2690, line: 62, baseType: !361, size: 32, offset: 32)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2717, file: !2690, line: 63, baseType: !103, size: 32, offset: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2717, file: !2690, line: 64, baseType: !2723, size: 64, offset: 128)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !303, line: 94, baseType: !304)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2717, file: !2690, line: 65, baseType: !2723, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2689, file: !2690, line: 105, baseType: !2726, size: 256)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2690, line: 69, size: 256, elements: !2727)
!2727 = !{!2728, !2729}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2726, file: !2690, line: 70, baseType: !164, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, scope: !2726, file: !2690, line: 79, baseType: !2730, size: 192, offset: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2726, file: !2690, line: 79, size: 192, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2741, !2746}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2730, file: !2690, line: 81, baseType: !103, size: 32)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2730, file: !2690, line: 86, baseType: !1438, size: 16)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2730, file: !2690, line: 92, baseType: !2735, size: 192)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2730, file: !2690, line: 88, size: 192, elements: !2736)
!2736 = !{!2737, !2739, !2740}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2735, file: !2690, line: 89, baseType: !2738, size: 64)
!2738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 64, elements: !1148)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2735, file: !2690, line: 90, baseType: !164, size: 64, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2735, file: !2690, line: 91, baseType: !164, size: 64, offset: 128)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2730, file: !2690, line: 97, baseType: !2742, size: 96)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2730, file: !2690, line: 94, size: 96, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2742, file: !2690, line: 95, baseType: !2738, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2742, file: !2690, line: 96, baseType: !419, size: 32, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2730, file: !2690, line: 103, baseType: !2747, size: 128)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2730, file: !2690, line: 99, size: 128, elements: !2748)
!2748 = !{!2749, !2750, !2751}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2747, file: !2690, line: 100, baseType: !319, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2747, file: !2690, line: 101, baseType: !419, size: 32, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2747, file: !2690, line: 102, baseType: !419, size: 32, offset: 96)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2689, file: !2690, line: 111, baseType: !2753, size: 128)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2690, line: 108, size: 128, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2753, file: !2690, line: 109, baseType: !305, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2753, file: !2690, line: 110, baseType: !103, size: 32, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2689, file: !2690, line: 118, baseType: !2758, size: 128)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2689, file: !2690, line: 114, size: 128, elements: !2759)
!2759 = !{!2760, !2761, !2762}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2758, file: !2690, line: 115, baseType: !164, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2758, file: !2690, line: 116, baseType: !103, size: 32, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2758, file: !2690, line: 117, baseType: !7, size: 32, offset: 96)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !978, file: !624, line: 1208, baseType: !2541, size: 448, offset: 17664)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !978, file: !624, line: 1215, baseType: !422, size: 64, offset: 18112)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !978, file: !624, line: 1217, baseType: !422, size: 64, offset: 18176)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !978, file: !624, line: 1219, baseType: !422, size: 64, offset: 18240)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !978, file: !624, line: 1223, baseType: !2768, size: 64, offset: 18304)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2769, line: 99, baseType: !2770)
!2769 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2769, line: 99, size: 64, elements: !2771)
!2771 = !{!2772}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2770, file: !2769, line: 99, baseType: !1232, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !978, file: !624, line: 1225, baseType: !390, size: 32, offset: 18368)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !978, file: !624, line: 1226, baseType: !103, size: 32, offset: 18400)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !978, file: !624, line: 1227, baseType: !103, size: 32, offset: 18432)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !978, file: !624, line: 1231, baseType: !2777, size: 64, offset: 18496)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !624, line: 1231, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !978, file: !624, line: 1233, baseType: !170, size: 128, offset: 18560)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !978, file: !624, line: 1240, baseType: !2781, size: 64, offset: 18688)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !624, line: 62, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !978, file: !624, line: 1242, baseType: !2784, size: 64, offset: 18752)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !624, line: 1242, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !978, file: !624, line: 1244, baseType: !170, size: 128, offset: 18816)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !978, file: !624, line: 1245, baseType: !2788, size: 64, offset: 18944)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !624, line: 51, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !978, file: !624, line: 1246, baseType: !649, size: 256, offset: 19008)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !978, file: !624, line: 1247, baseType: !7, size: 32, offset: 19264)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !978, file: !624, line: 1250, baseType: !2793, size: 64, offset: 19328)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !624, line: 57, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !978, file: !624, line: 1251, baseType: !649, size: 256, offset: 19392)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !978, file: !624, line: 1252, baseType: !170, size: 128, offset: 19648)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !978, file: !624, line: 1259, baseType: !1872, size: 64, offset: 19776)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !978, file: !624, line: 1260, baseType: !1438, size: 16, offset: 19840)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !978, file: !624, line: 1261, baseType: !1438, size: 16, offset: 19856)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !978, file: !624, line: 1314, baseType: !2801, size: 64, offset: 19904)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2803, line: 62, size: 256, align: 256, elements: !2804)
!2803 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2802, file: !2803, line: 75, baseType: !419, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2802, file: !2803, line: 90, baseType: !419, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2802, file: !2803, line: 112, baseType: !423, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2802, file: !2803, line: 132, baseType: !419, size: 32, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2802, file: !2803, line: 140, baseType: !419, size: 32, offset: 160)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2802, file: !2803, line: 149, baseType: !419, size: 32, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2802, file: !2803, line: 154, baseType: !2812, offset: 224)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, elements: !1370)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !978, file: !624, line: 1315, baseType: !418, size: 32, offset: 19968)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !978, file: !624, line: 1316, baseType: !418, size: 32, offset: 20000)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !978, file: !624, line: 1321, baseType: !319, size: 64, offset: 20032)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !978, file: !624, line: 1325, baseType: !103, size: 32, offset: 20096)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !978, file: !624, line: 1326, baseType: !103, size: 32, offset: 20128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !978, file: !624, line: 1327, baseType: !103, size: 32, offset: 20160)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !978, file: !624, line: 1328, baseType: !103, size: 32, offset: 20192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !978, file: !624, line: 1329, baseType: !962, size: 128, align: 64, offset: 20224)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !978, file: !624, line: 1332, baseType: !2822, size: 128, offset: 20352)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2823, line: 51, size: 128, elements: !2824)
!2823 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2824 = !{!2825, !2830, !2831}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2822, file: !2823, line: 60, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2827, line: 7, size: 64, elements: !2828)
!2827 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2828 = !{!2829}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2826, file: !2827, line: 12, baseType: !1229, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2822, file: !2823, line: 63, baseType: !1469, size: 8, offset: 64)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2822, file: !2823, line: 70, baseType: !1469, size: 8, offset: 72)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !978, file: !624, line: 1335, baseType: !2081, size: 64, offset: 20480)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !978, file: !624, line: 1337, baseType: !2834, size: 128, offset: 20544)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2823, line: 39, size: 128, elements: !2835)
!2835 = !{!2836, !2837, !2838}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2834, file: !2823, line: 40, baseType: !1765, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2834, file: !2823, line: 42, baseType: !419, size: 32, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2834, file: !2823, line: 43, baseType: !419, size: 32, offset: 96)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !978, file: !624, line: 1340, baseType: !2840, size: 64, offset: 20672)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !624, line: 69, flags: DIFlagFwdDecl)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !978, file: !624, line: 1351, baseType: !103, size: 32, offset: 20736)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !978, file: !624, line: 1352, baseType: !103, size: 32, offset: 20768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !978, file: !624, line: 1354, baseType: !319, size: 64, offset: 20800)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !978, file: !624, line: 1364, baseType: !422, size: 64, offset: 20864)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !978, file: !624, line: 1365, baseType: !422, size: 64, offset: 20928)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !978, file: !624, line: 1412, baseType: !319, size: 64, offset: 20992)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !978, file: !624, line: 1453, baseType: !2849, size: 64, offset: 21056)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !624, line: 1453, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !978, file: !624, line: 1457, baseType: !2852, size: 64, offset: 21120)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !2854)
!2854 = !{!2855, !2856, !2875, !2878, !2879, !2912, !2922}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2853, file: !81, line: 62, baseType: !80, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, scope: !2853, file: !81, line: 64, baseType: !2857, size: 192, offset: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2853, file: !81, line: 64, size: 192, elements: !2858)
!2858 = !{!2859, !2870}
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !2857, file: !81, line: 65, baseType: !2860, size: 192)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !81, line: 65, size: 192, elements: !2861)
!2861 = !{!2862, !2869}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2860, file: !81, line: 66, baseType: !2863, size: 128)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2864, line: 50, size: 128, elements: !2865)
!2864 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2865 = !{!2866, !2867, !2868}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2863, file: !2864, line: 52, baseType: !319, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2863, file: !2864, line: 54, baseType: !7, size: 32, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2863, file: !2864, line: 55, baseType: !7, size: 32, offset: 96)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2860, file: !81, line: 67, baseType: !319, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, scope: !2857, file: !81, line: 70, baseType: !2871, size: 192)
!2871 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2857, file: !81, line: 70, size: 192, elements: !2872)
!2872 = !{!2873, !2874}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2871, file: !81, line: 71, baseType: !962, size: 128, align: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2871, file: !81, line: 72, baseType: !319, size: 64, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2853, file: !81, line: 76, baseType: !2876, size: 64, offset: 256)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2853, file: !81, line: 77, baseType: !319, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2853, file: !81, line: 79, baseType: !2880, size: 64, offset: 384)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2864, line: 25, size: 256, elements: !2882)
!2882 = !{!2883, !2889, !2893}
!2883 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2864, line: 26, baseType: !2884, size: 128)
!2884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2864, line: 26, size: 128, elements: !2885)
!2885 = !{!2886, !2888}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2884, file: !2864, line: 27, baseType: !2887, size: 128)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 128, elements: !2412)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2884, file: !2864, line: 28, baseType: !2887, size: 128)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2881, file: !2864, line: 31, baseType: !2890, size: 64, offset: 128)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2892)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2864, line: 23, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2864, line: 33, baseType: !2894, size: 64, offset: 192)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2864, line: 33, size: 64, elements: !2895)
!2895 = !{!2896, !2902, !2907}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2894, file: !2864, line: 38, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2864, line: 34, size: 64, elements: !2898)
!2898 = !{!2899, !2900, !2901}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2897, file: !2864, line: 35, baseType: !1412, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2897, file: !2864, line: 36, baseType: !227, size: 8, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2897, file: !2864, line: 37, baseType: !227, size: 8, offset: 40)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2894, file: !2864, line: 42, baseType: !2903, size: 16)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2864, line: 39, size: 16, elements: !2904)
!2904 = !{!2905, !2906}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2903, file: !2864, line: 40, baseType: !227, size: 8)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2903, file: !2864, line: 41, baseType: !227, size: 8, offset: 8)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2894, file: !2864, line: 46, baseType: !2908, size: 16)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2864, line: 43, size: 16, elements: !2909)
!2909 = !{!2910, !2911}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2908, file: !2864, line: 44, baseType: !227, size: 8)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2908, file: !2864, line: 45, baseType: !227, size: 8, offset: 8)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2853, file: !81, line: 81, baseType: !2913, size: 64, offset: 448)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !2915)
!2915 = !{!2916, !2917, !2918, !2919, !2920, !2921}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2914, file: !81, line: 86, baseType: !2876, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2914, file: !81, line: 87, baseType: !319, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2914, file: !81, line: 88, baseType: !319, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2914, file: !81, line: 89, baseType: !319, size: 64, offset: 192)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2914, file: !81, line: 90, baseType: !1469, size: 8, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2914, file: !81, line: 92, baseType: !2913, size: 64, offset: 320)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2853, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !978, file: !624, line: 1463, baseType: !2924, offset: 21184)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !624, line: 739, elements: !553)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !978, file: !624, line: 1470, baseType: !962, size: 128, align: 64, offset: 21184)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !978, file: !624, line: 1471, baseType: !991, size: 32, offset: 21312)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !978, file: !624, line: 1472, baseType: !103, size: 32, offset: 21344)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !978, file: !624, line: 1474, baseType: !977, size: 64, offset: 21376)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !978, file: !624, line: 1475, baseType: !2930, size: 320, offset: 21440)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2931, line: 11, size: 320, elements: !2932)
!2931 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2932 = !{!2933, !2934, !2935, !2940}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2930, file: !2931, line: 16, baseType: !545, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2930, file: !2931, line: 17, baseType: !319, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2930, file: !2931, line: 18, baseType: !2936, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{null, !2939}
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2930, file: !2931, line: 19, baseType: !418, size: 32, offset: 256)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !978, file: !624, line: 1478, baseType: !2942, size: 64, offset: 21760)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2944, line: 49, size: 512, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2945 = !{!2946, !2947, !2948, !2949, !2950, !2952, !2953, !2954, !2956}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2943, file: !2944, line: 50, baseType: !2942, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2943, file: !2944, line: 51, baseType: !164, size: 64, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2943, file: !2944, line: 52, baseType: !319, size: 64, offset: 128)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2943, file: !2944, line: 53, baseType: !319, size: 64, offset: 192)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2943, file: !2944, line: 54, baseType: !2951, size: 64, offset: 256)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2943, file: !2944, line: 56, baseType: !7, size: 32, offset: 320)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2943, file: !2944, line: 58, baseType: !7, size: 32, offset: 352)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2943, file: !2944, line: 59, baseType: !2955, size: 64, offset: 384)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !171, line: 159, baseType: !422)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2943, file: !2944, line: 60, baseType: !2220, size: 64, offset: 448)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !978, file: !624, line: 1482, baseType: !991, size: 32, offset: 21824)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !978, file: !624, line: 1489, baseType: !164, size: 64, offset: 21888)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !978, file: !624, line: 1504, baseType: !164, size: 64, offset: 21952)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !978, file: !624, line: 1505, baseType: !423, size: 64, offset: 22016)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !978, file: !624, line: 1506, baseType: !422, size: 64, offset: 22080)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !978, file: !624, line: 1507, baseType: !423, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !978, file: !624, line: 1508, baseType: !423, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !978, file: !624, line: 1509, baseType: !423, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !978, file: !624, line: 1510, baseType: !962, size: 128, align: 64, offset: 22208)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !978, file: !624, line: 1511, baseType: !103, size: 32, offset: 22336)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !978, file: !624, line: 1515, baseType: !2968, size: 64, offset: 22400)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1005, line: 56, size: 64, elements: !2969)
!2969 = !{!2970}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2968, file: !1005, line: 57, baseType: !1008, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !978, file: !624, line: 1518, baseType: !2968, size: 64, offset: 22464)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !978, file: !624, line: 1528, baseType: !962, size: 128, align: 64, offset: 22528)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !978, file: !624, line: 1552, baseType: !2974, size: 35328, offset: 23040)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2975, line: 430, size: 35328, elements: !2976)
!2975 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2976 = !{!2977, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3006, !3007, !3008, !3009, !3010, !3011, !3014, !3015, !3016, !3017}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2974, file: !2975, line: 432, baseType: !2978, size: 192)
!2978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2979, size: 192, elements: !270)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2980, line: 16, size: 64, elements: !2981)
!2980 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2979, file: !2980, line: 17, baseType: !237, size: 16)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2979, file: !2980, line: 18, baseType: !237, size: 16, offset: 16)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2979, file: !2980, line: 19, baseType: !237, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2979, file: !2980, line: 19, baseType: !237, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2979, file: !2980, line: 19, baseType: !237, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2979, file: !2980, line: 19, baseType: !237, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2979, file: !2980, line: 19, baseType: !237, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2979, file: !2980, line: 20, baseType: !237, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2979, file: !2980, line: 20, baseType: !237, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2979, file: !2980, line: 20, baseType: !237, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2979, file: !2980, line: 20, baseType: !237, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2979, file: !2980, line: 20, baseType: !237, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2979, file: !2980, line: 20, baseType: !237, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2974, file: !2975, line: 436, baseType: !319, size: 64, offset: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2974, file: !2975, line: 440, baseType: !239, size: 16, offset: 256)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2974, file: !2975, line: 441, baseType: !239, size: 16, offset: 272)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2974, file: !2975, line: 442, baseType: !239, size: 16, offset: 288)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2974, file: !2975, line: 443, baseType: !239, size: 16, offset: 304)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2974, file: !2975, line: 447, baseType: !319, size: 64, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2974, file: !2975, line: 448, baseType: !319, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2974, file: !2975, line: 459, baseType: !3003, size: 256, offset: 448)
!3003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3004, size: 256, elements: !1357)
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2975, line: 428, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2974, file: !2975, line: 461, baseType: !319, size: 64, offset: 704)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2974, file: !2975, line: 463, baseType: !319, size: 64, offset: 768)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2974, file: !2975, line: 465, baseType: !319, size: 64, offset: 832)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2974, file: !2975, line: 466, baseType: !319, size: 64, offset: 896)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2974, file: !2975, line: 467, baseType: !319, size: 64, offset: 960)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2974, file: !2975, line: 473, baseType: !3012, size: 64, offset: 1024)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2975, line: 10, flags: DIFlagFwdDecl)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2974, file: !2975, line: 480, baseType: !319, size: 64, offset: 1088)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2974, file: !2975, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2974, file: !2975, line: 491, baseType: !418, size: 32, offset: 1184)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2974, file: !2975, line: 501, baseType: !3018, size: 33792, offset: 1536)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3019, line: 448, size: 33792, elements: !3020)
!3019 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3020 = !{!3021, !3022, !3023, !3185, !3186, !3192, !3193}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3018, file: !3019, line: 461, baseType: !7, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3018, file: !3019, line: 468, baseType: !319, size: 64, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3018, file: !3019, line: 476, baseType: !3024, size: 64, offset: 128)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3019, line: 356, size: 33280, align: 512, elements: !3026)
!3026 = !{!3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3025, file: !3019, line: 358, baseType: !7, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3025, file: !3019, line: 361, baseType: !7, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3025, file: !3019, line: 364, baseType: !422, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3025, file: !3019, line: 367, baseType: !422, size: 64, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3025, file: !3019, line: 370, baseType: !422, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3025, file: !3019, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3025, file: !3019, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3025, file: !3019, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3025, file: !3019, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3025, file: !3019, line: 397, baseType: !3037, size: 32768, offset: 512)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3019, line: 348, size: 32768, elements: !3038)
!3038 = !{!3039, !3054, !3091, !3168, !3181}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3037, file: !3019, line: 349, baseType: !3040, size: 896)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3019, line: 12, size: 896, elements: !3041)
!3041 = !{!3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3053}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3040, file: !3019, line: 13, baseType: !418, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3040, file: !3019, line: 14, baseType: !418, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3040, file: !3019, line: 15, baseType: !418, size: 32, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3040, file: !3019, line: 16, baseType: !418, size: 32, offset: 96)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3040, file: !3019, line: 17, baseType: !418, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3040, file: !3019, line: 18, baseType: !418, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3040, file: !3019, line: 19, baseType: !418, size: 32, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3040, file: !3019, line: 22, baseType: !3050, size: 640, offset: 224)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 640, elements: !3051)
!3051 = !{!3052}
!3052 = !DISubrange(count: 20)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3040, file: !3019, line: 25, baseType: !418, size: 32, offset: 864)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3037, file: !3019, line: 350, baseType: !3055, size: 4096, align: 128)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3019, line: 34, size: 4096, align: 128, elements: !3056)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3076, !3077, !3078, !3080, !3082, !3086}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3055, file: !3019, line: 35, baseType: !237, size: 16)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3055, file: !3019, line: 36, baseType: !237, size: 16, offset: 16)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3055, file: !3019, line: 37, baseType: !237, size: 16, offset: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3055, file: !3019, line: 38, baseType: !237, size: 16, offset: 48)
!3061 = !DIDerivedType(tag: DW_TAG_member, scope: !3055, file: !3019, line: 39, baseType: !3062, size: 128, offset: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3055, file: !3019, line: 39, size: 128, elements: !3063)
!3063 = !{!3064, !3069}
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !3019, line: 40, baseType: !3065, size: 128)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3019, line: 40, size: 128, elements: !3066)
!3066 = !{!3067, !3068}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3065, file: !3019, line: 41, baseType: !422, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3065, file: !3019, line: 42, baseType: !422, size: 64, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, scope: !3062, file: !3019, line: 44, baseType: !3070, size: 128)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3062, file: !3019, line: 44, size: 128, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3070, file: !3019, line: 45, baseType: !418, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3070, file: !3019, line: 46, baseType: !418, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3070, file: !3019, line: 47, baseType: !418, size: 32, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3070, file: !3019, line: 48, baseType: !418, size: 32, offset: 96)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3055, file: !3019, line: 51, baseType: !418, size: 32, offset: 192)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3055, file: !3019, line: 52, baseType: !418, size: 32, offset: 224)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3055, file: !3019, line: 55, baseType: !3079, size: 1024, offset: 256)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 1024, elements: !431)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3055, file: !3019, line: 58, baseType: !3081, size: 2048, offset: 1280)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 2048, elements: !274)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3055, file: !3019, line: 60, baseType: !3083, size: 384, offset: 3328)
!3083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 384, elements: !3084)
!3084 = !{!3085}
!3085 = !DISubrange(count: 12)
!3086 = !DIDerivedType(tag: DW_TAG_member, scope: !3055, file: !3019, line: 62, baseType: !3087, size: 384, offset: 3712)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3055, file: !3019, line: 62, size: 384, elements: !3088)
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3087, file: !3019, line: 63, baseType: !3083, size: 384)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3087, file: !3019, line: 64, baseType: !3083, size: 384)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3037, file: !3019, line: 351, baseType: !3092, size: 1088)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3019, line: 79, size: 1088, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3167}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3092, file: !3019, line: 80, baseType: !418, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3092, file: !3019, line: 81, baseType: !418, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3092, file: !3019, line: 82, baseType: !418, size: 32, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3092, file: !3019, line: 83, baseType: !418, size: 32, offset: 96)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3092, file: !3019, line: 84, baseType: !418, size: 32, offset: 128)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3092, file: !3019, line: 85, baseType: !418, size: 32, offset: 160)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3092, file: !3019, line: 86, baseType: !418, size: 32, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3092, file: !3019, line: 88, baseType: !3050, size: 640, offset: 224)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3092, file: !3019, line: 89, baseType: !227, size: 8, offset: 864)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3092, file: !3019, line: 90, baseType: !227, size: 8, offset: 872)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3092, file: !3019, line: 91, baseType: !227, size: 8, offset: 880)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3092, file: !3019, line: 92, baseType: !227, size: 8, offset: 888)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3092, file: !3019, line: 93, baseType: !227, size: 8, offset: 896)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3092, file: !3019, line: 94, baseType: !227, size: 8, offset: 904)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3092, file: !3019, line: 95, baseType: !3109, size: 64, offset: 960)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3111, line: 11, size: 128, elements: !3112)
!3111 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3110, file: !3111, line: 12, baseType: !305, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3110, file: !3111, line: 13, baseType: !3115, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3117, line: 103, size: 1344, elements: !3118)
!3117 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3118 = !{!3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3147, !3148, !3149}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3116, file: !3117, line: 109, baseType: !319, size: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3116, file: !3117, line: 110, baseType: !319, size: 64, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3116, file: !3117, line: 111, baseType: !319, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3116, file: !3117, line: 112, baseType: !319, size: 64, offset: 192)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3116, file: !3117, line: 113, baseType: !319, size: 64, offset: 256)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3116, file: !3117, line: 114, baseType: !319, size: 64, offset: 320)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3116, file: !3117, line: 117, baseType: !319, size: 64, offset: 384)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3116, file: !3117, line: 118, baseType: !319, size: 64, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3116, file: !3117, line: 119, baseType: !319, size: 64, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3116, file: !3117, line: 120, baseType: !319, size: 64, offset: 576)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3116, file: !3117, line: 121, baseType: !319, size: 64, offset: 640)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3116, file: !3117, line: 122, baseType: !319, size: 64, offset: 704)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3116, file: !3117, line: 123, baseType: !319, size: 64, offset: 768)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3116, file: !3117, line: 124, baseType: !319, size: 64, offset: 832)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3116, file: !3117, line: 125, baseType: !319, size: 64, offset: 896)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3116, file: !3117, line: 139, baseType: !319, size: 64, offset: 960)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3116, file: !3117, line: 142, baseType: !319, size: 64, offset: 1024)
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3117, line: 144, baseType: !3137, size: 64, offset: 1088)
!3137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !3117, line: 144, size: 64, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3137, file: !3117, line: 146, baseType: !237, size: 16)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3137, file: !3117, line: 148, baseType: !422, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3137, file: !3117, line: 150, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3117, line: 59, size: 64, elements: !3143)
!3143 = !{!3144, !3145, !3146}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3142, file: !3117, line: 61, baseType: !422, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3142, file: !3117, line: 63, baseType: !422, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3142, file: !3117, line: 65, baseType: !422, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3116, file: !3117, line: 153, baseType: !319, size: 64, offset: 1152)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3116, file: !3117, line: 154, baseType: !319, size: 64, offset: 1216)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !3116, file: !3117, line: 156, baseType: !3150, size: 64, offset: 1280)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !3117, line: 156, size: 64, elements: !3151)
!3151 = !{!3152, !3153, !3154}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3150, file: !3117, line: 158, baseType: !237, size: 16)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3150, file: !3117, line: 160, baseType: !422, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3150, file: !3117, line: 162, baseType: !3155, size: 64)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3117, line: 69, size: 64, elements: !3156)
!3156 = !{!3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3155, file: !3117, line: 71, baseType: !422, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3155, file: !3117, line: 73, baseType: !422, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3155, file: !3117, line: 75, baseType: !422, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3155, file: !3117, line: 77, baseType: !422, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3155, file: !3117, line: 80, baseType: !422, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3155, file: !3117, line: 83, baseType: !422, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3155, file: !3117, line: 86, baseType: !422, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3155, file: !3117, line: 88, baseType: !422, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3155, file: !3117, line: 93, baseType: !422, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3155, file: !3117, line: 100, baseType: !422, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3092, file: !3019, line: 96, baseType: !418, size: 32, offset: 1024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3037, file: !3019, line: 352, baseType: !3169, size: 4608, align: 512)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3019, line: 333, size: 4608, align: 512, elements: !3170)
!3170 = !{!3171, !3172, !3179}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3169, file: !3019, line: 334, baseType: !3055, size: 4096, align: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3169, file: !3019, line: 335, baseType: !3173, size: 512, offset: 4096)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3019, line: 312, size: 512, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3173, file: !3019, line: 313, baseType: !422, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3173, file: !3019, line: 314, baseType: !422, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3173, file: !3019, line: 315, baseType: !3178, size: 384, offset: 128)
!3178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 384, elements: !1456)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3169, file: !3019, line: 336, baseType: !3180, offset: 4608)
!3180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, elements: !1370)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3037, file: !3019, line: 353, baseType: !3182, size: 32768)
!3182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 32768, elements: !3183)
!3183 = !{!3184}
!3184 = !DISubrange(count: 4096)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3018, file: !3019, line: 484, baseType: !3024, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3018, file: !3019, line: 491, baseType: !3187, size: 128, offset: 256)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3019, line: 404, size: 128, elements: !3188)
!3188 = !{!3189, !3190, !3191}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3187, file: !3019, line: 424, baseType: !422, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3187, file: !3019, line: 432, baseType: !7, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3187, file: !3019, line: 440, baseType: !7, size: 32, offset: 96)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3018, file: !3019, line: 498, baseType: !3187, size: 128, offset: 384)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3018, file: !3019, line: 508, baseType: !3025, size: 33280, align: 512, offset: 512)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !945, file: !946, line: 16, baseType: !955, size: 192, offset: 512)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !945, file: !946, line: 17, baseType: !219, size: 32, offset: 704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !501, file: !28, line: 1240, baseType: !164, size: 64, offset: 6912)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !501, file: !28, line: 1243, baseType: !418, size: 32, offset: 6976)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !501, file: !28, line: 1245, baseType: !702, size: 64, offset: 7040)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !501, file: !28, line: 1246, baseType: !702, size: 64, offset: 7104)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !501, file: !28, line: 1248, baseType: !419, size: 32, offset: 7168)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !501, file: !28, line: 1249, baseType: !3202, size: 64, offset: 7232)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3203, size: 64)
!3203 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !501, file: !28, line: 1252, baseType: !3205, size: 256, offset: 7296)
!3205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !431)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !501, file: !28, line: 1253, baseType: !3207, size: 128, offset: 7552)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3208, line: 21, baseType: !3209)
!3208 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3208, line: 19, size: 128, elements: !3210)
!3210 = !{!3211}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3209, file: !3208, line: 20, baseType: !3212, size: 128)
!3212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, elements: !2412)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !501, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !501, file: !28, line: 1261, baseType: !649, size: 256, offset: 7744)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !501, file: !28, line: 1267, baseType: !188, size: 64, offset: 8000)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !501, file: !28, line: 1269, baseType: !447, size: 64, offset: 8064)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !501, file: !28, line: 1271, baseType: !3218, size: 448, offset: 8128)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !711, line: 63, size: 448, elements: !3219)
!3219 = !{!3220, !3225, !3226, !3227, !3228, !3229, !3230}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3218, file: !711, line: 64, baseType: !3221, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!319, !3224, !709}
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3218, file: !711, line: 66, baseType: !3221, size: 64, offset: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3218, file: !711, line: 69, baseType: !305, size: 64, offset: 128)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3218, file: !711, line: 70, baseType: !103, size: 32, offset: 192)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3218, file: !711, line: 71, baseType: !7, size: 32, offset: 224)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3218, file: !711, line: 74, baseType: !170, size: 128, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3218, file: !711, line: 85, baseType: !3231, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !501, file: !28, line: 1274, baseType: !653, size: 64, offset: 8576)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !501, file: !28, line: 1280, baseType: !653, size: 64, offset: 8640)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !501, file: !28, line: 1283, baseType: !103, size: 32, offset: 8704)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !501, file: !28, line: 1286, baseType: !2131, size: 32, offset: 8736)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !501, file: !28, line: 1289, baseType: !3237, size: 64, offset: 8768)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2260, line: 18, flags: DIFlagFwdDecl)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !501, file: !28, line: 1290, baseType: !541, size: 64, offset: 8832)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !501, file: !28, line: 1297, baseType: !1552, size: 64, offset: 8896)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !501, file: !28, line: 1304, baseType: !3242, size: 64, offset: 8960)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3243, line: 49, size: 64, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3244 = !{!3245}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3242, file: !3243, line: 50, baseType: !3246, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3243, line: 41, size: 512, align: 512, elements: !3248)
!3248 = !{!3249, !3250, !3255}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3247, file: !3243, line: 43, baseType: !199, size: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3247, file: !3243, line: 45, baseType: !3251, size: 192, offset: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3243, line: 29, size: 192, elements: !3252)
!3252 = !{!3253, !3254}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3251, file: !3243, line: 30, baseType: !170, size: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3251, file: !3243, line: 32, baseType: !305, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3247, file: !3243, line: 46, baseType: !305, size: 64, offset: 256)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !501, file: !28, line: 1305, baseType: !3242, size: 64, offset: 9024)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !501, file: !28, line: 1306, baseType: !962, size: 128, align: 64, offset: 9088)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !501, file: !28, line: 1307, baseType: !2259, size: 256, offset: 9216)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !501, file: !28, line: 1309, baseType: !649, size: 256, offset: 9472)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !501, file: !28, line: 1314, baseType: !103, size: 32, offset: 9728)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !501, file: !28, line: 1317, baseType: !199, size: 32, align: 512, offset: 10240)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !501, file: !28, line: 1318, baseType: !170, size: 128, offset: 10304)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !501, file: !28, line: 1320, baseType: !199, size: 32, offset: 10432)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !501, file: !28, line: 1321, baseType: !170, size: 128, offset: 10496)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !495, file: !496, line: 73, baseType: !103, size: 32, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !495, file: !496, line: 74, baseType: !3267, size: 64, offset: 192)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1394, line: 42, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !449, file: !386, line: 141, baseType: !3271, size: 64, offset: 704)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!103, !772, !1469}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !449, file: !386, line: 142, baseType: !3275, size: 64, offset: 768)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!384, !384, !3278}
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !385, file: !386, line: 96, baseType: !500, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !385, file: !386, line: 97, baseType: !319, size: 64, offset: 896)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !385, file: !386, line: 98, baseType: !164, size: 64, offset: 960)
!3283 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !386, line: 100, baseType: !3284, size: 128, offset: 1024)
!3284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !386, line: 100, size: 128, elements: !3285)
!3285 = !{!3286, !3287}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3284, file: !386, line: 101, baseType: !170, size: 128)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3284, file: !386, line: 102, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !385, file: !386, line: 104, baseType: !170, size: 128, offset: 1152)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !385, file: !386, line: 105, baseType: !170, size: 128, offset: 1280)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !385, file: !386, line: 113, baseType: !3292, size: 128, offset: 1408)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !385, file: !386, line: 109, size: 128, elements: !3293)
!3293 = !{!3294, !3295, !3296}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3292, file: !386, line: 110, baseType: !545, size: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3292, file: !386, line: 111, baseType: !400, size: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3292, file: !386, line: 112, baseType: !962, size: 128, align: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !378, file: !28, line: 1968, baseType: !3298, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!188, !384, !349, !3301}
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3303, line: 10, size: 128, elements: !3304)
!3303 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3304 = !{!3305, !3309}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3302, file: !3303, line: 11, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !164}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3302, file: !3303, line: 12, baseType: !164, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !378, file: !28, line: 1969, baseType: !3311, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!103, !3267, !349, !103}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !378, file: !28, line: 1970, baseType: !3315, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!372, !349, !103, !1469}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !378, file: !28, line: 1972, baseType: !3319, size: 64, offset: 256)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!103, !384, !269, !103}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !378, file: !28, line: 1974, baseType: !3323, size: 64, offset: 320)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!103, !3267, !349, !384, !311, !1469}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !378, file: !28, line: 1976, baseType: !3327, size: 64, offset: 384)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{!103, !384, !349, !384}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !378, file: !28, line: 1977, baseType: !3331, size: 64, offset: 448)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!103, !349, !384}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !378, file: !28, line: 1978, baseType: !3335, size: 64, offset: 512)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!103, !3267, !349, !384, !188}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !378, file: !28, line: 1980, baseType: !3339, size: 64, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!103, !3267, !349, !384, !311}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !378, file: !28, line: 1982, baseType: !3331, size: 64, offset: 640)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !378, file: !28, line: 1983, baseType: !3344, size: 64, offset: 704)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!103, !3267, !349, !384, !311, !505}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !378, file: !28, line: 1985, baseType: !3348, size: 64, offset: 768)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!103, !3267, !349, !384, !349, !384, !7}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !378, file: !28, line: 1987, baseType: !3352, size: 64, offset: 832)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!103, !3267, !384, !3355}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3370, !3379, !3380, !3385, !3386, !3387}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3356, file: !28, line: 227, baseType: !7, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3356, file: !28, line: 228, baseType: !311, size: 16, offset: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !28, line: 241, baseType: !3361, size: 32, offset: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3356, file: !28, line: 241, size: 32, elements: !3362)
!3362 = !{!3363, !3364}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3361, file: !28, line: 242, baseType: !355, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3361, file: !28, line: 243, baseType: !3365, size: 32)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3366, line: 16, baseType: !3367)
!3366 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3366, line: 14, size: 32, elements: !3368)
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3367, file: !3366, line: 15, baseType: !360, size: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, scope: !3356, file: !28, line: 245, baseType: !3371, size: 32, offset: 96)
!3371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3356, file: !28, line: 245, size: 32, elements: !3372)
!3372 = !{!3373, !3374}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3371, file: !28, line: 246, baseType: !364, size: 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3371, file: !28, line: 247, baseType: !3375, size: 32)
!3375 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3366, line: 20, baseType: !3376)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3366, line: 18, size: 32, elements: !3377)
!3377 = !{!3378}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3376, file: !3366, line: 19, baseType: !368, size: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3356, file: !28, line: 249, baseType: !510, size: 64, offset: 128)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3356, file: !28, line: 250, baseType: !3381, size: 128, offset: 192)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !703, line: 13, size: 128, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3381, file: !703, line: 14, baseType: !702, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3381, file: !703, line: 15, baseType: !305, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3356, file: !28, line: 251, baseType: !3381, size: 128, offset: 320)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3356, file: !28, line: 252, baseType: !3381, size: 128, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3356, file: !28, line: 259, baseType: !1308, size: 64, offset: 576)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !378, file: !28, line: 1988, baseType: !3389, size: 64, offset: 896)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!103, !3267, !772, !3392, !418, !7}
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3394, line: 22, size: 1280, elements: !3395)
!3394 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3395 = !{!3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3393, file: !3394, line: 23, baseType: !418, size: 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3393, file: !3394, line: 24, baseType: !311, size: 16, offset: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3393, file: !3394, line: 25, baseType: !7, size: 32, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3393, file: !3394, line: 26, baseType: !1434, size: 32, offset: 96)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3393, file: !3394, line: 27, baseType: !422, size: 64, offset: 128)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3393, file: !3394, line: 28, baseType: !422, size: 64, offset: 192)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3393, file: !3394, line: 41, baseType: !422, size: 64, offset: 256)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3393, file: !3394, line: 42, baseType: !505, size: 32, offset: 320)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3393, file: !3394, line: 43, baseType: !505, size: 32, offset: 352)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3393, file: !3394, line: 44, baseType: !355, size: 32, offset: 384)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3393, file: !3394, line: 45, baseType: !364, size: 32, offset: 416)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3393, file: !3394, line: 46, baseType: !510, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3393, file: !3394, line: 47, baseType: !3381, size: 128, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3393, file: !3394, line: 48, baseType: !3381, size: 128, offset: 640)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3393, file: !3394, line: 49, baseType: !3381, size: 128, offset: 768)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3393, file: !3394, line: 50, baseType: !3381, size: 128, offset: 896)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3393, file: !3394, line: 51, baseType: !422, size: 64, offset: 1024)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3393, file: !3394, line: 52, baseType: !422, size: 64, offset: 1088)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3393, file: !3394, line: 53, baseType: !418, size: 32, offset: 1152)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3393, file: !3394, line: 54, baseType: !418, size: 32, offset: 1184)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3393, file: !3394, line: 55, baseType: !422, size: 64, offset: 1216)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !378, file: !28, line: 1990, baseType: !3418, size: 64, offset: 960)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!301, !384, !269, !316}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !378, file: !28, line: 1991, baseType: !3422, size: 64, offset: 1024)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!103, !349, !3425, !422, !422}
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !378, file: !28, line: 1993, baseType: !3428, size: 64, offset: 1088)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!103, !349, !103}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !378, file: !28, line: 1994, baseType: !3432, size: 64, offset: 1152)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!103, !349, !384, !1308, !7, !311}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !378, file: !28, line: 1997, baseType: !3436, size: 64, offset: 1216)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!103, !3267, !349, !1308, !311}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !378, file: !28, line: 1999, baseType: !3440, size: 64, offset: 1280)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!372, !3267, !384, !103}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !378, file: !28, line: 2001, baseType: !3444, size: 64, offset: 1344)
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!103, !3267, !384, !372, !103}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !378, file: !28, line: 2003, baseType: !3448, size: 64, offset: 1408)
!3448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3449 = !DISubroutineType(types: !3450)
!3450 = !{!103, !3267, !384, !3451}
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !378, file: !28, line: 2005, baseType: !3454, size: 64, offset: 1472)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!103, !384, !3451}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !378, file: !28, line: 2006, baseType: !3458, size: 64, offset: 1536)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!3461, !349}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3463)
!3463 = !{!3464, !3471}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3462, file: !28, line: 3193, baseType: !3465, size: 128)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3466, line: 296, size: 128, elements: !3467)
!3466 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3467 = !{!3468, !3469, !3470}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3465, file: !3466, line: 297, baseType: !199, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3465, file: !3466, line: 299, baseType: !714, size: 32, offset: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3465, file: !3466, line: 300, baseType: !164, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3462, file: !28, line: 3194, baseType: !418, size: 32, offset: 128)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !350, file: !28, line: 655, baseType: !500, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !350, file: !28, line: 656, baseType: !345, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !350, file: !28, line: 659, baseType: !164, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !350, file: !28, line: 663, baseType: !319, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !28, line: 671, baseType: !3477, size: 32, offset: 704)
!3477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !28, line: 671, size: 32, elements: !3478)
!3478 = !{!3479, !3481}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3477, file: !28, line: 672, baseType: !3480, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3477, file: !28, line: 673, baseType: !7, size: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !350, file: !28, line: 675, baseType: !505, size: 32, offset: 736)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !350, file: !28, line: 676, baseType: !510, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !350, file: !28, line: 677, baseType: !3381, size: 128, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !350, file: !28, line: 678, baseType: !3381, size: 128, offset: 960)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !350, file: !28, line: 679, baseType: !3381, size: 128, offset: 1088)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !350, file: !28, line: 680, baseType: !199, size: 32, offset: 1216)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !350, file: !28, line: 681, baseType: !239, size: 16, offset: 1248)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !350, file: !28, line: 682, baseType: !227, size: 8, offset: 1264)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !350, file: !28, line: 683, baseType: !227, size: 8, offset: 1272)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !350, file: !28, line: 684, baseType: !850, size: 64, offset: 1280)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !350, file: !28, line: 691, baseType: !319, size: 64, offset: 1344)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !350, file: !28, line: 692, baseType: !862, size: 320, offset: 1408)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !350, file: !28, line: 694, baseType: !319, size: 64, offset: 1728)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !350, file: !28, line: 695, baseType: !319, size: 64, offset: 1792)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !350, file: !28, line: 697, baseType: !545, size: 128, offset: 1856)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !350, file: !28, line: 698, baseType: !170, size: 128, offset: 1984)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !350, file: !28, line: 707, baseType: !170, size: 128, offset: 2112)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !350, file: !28, line: 708, baseType: !170, size: 128, offset: 2240)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !28, line: 709, baseType: !3501, size: 128, offset: 2368)
!3501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !28, line: 709, size: 128, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3501, file: !28, line: 710, baseType: !541, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3501, file: !28, line: 711, baseType: !962, size: 128, align: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !350, file: !28, line: 713, baseType: !655, size: 64, offset: 2496)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !350, file: !28, line: 714, baseType: !655, size: 64, offset: 2560)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !350, file: !28, line: 715, baseType: !219, size: 32, offset: 2624)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !350, file: !28, line: 716, baseType: !219, size: 32, offset: 2656)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !350, file: !28, line: 717, baseType: !219, size: 32, offset: 2688)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !350, file: !28, line: 719, baseType: !219, size: 32, offset: 2720)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !28, line: 721, baseType: !3512, size: 64, offset: 2752)
!3512 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !28, line: 721, size: 64, elements: !3513)
!3513 = !{!3514, !3515}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3512, file: !28, line: 722, baseType: !1583, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3512, file: !28, line: 723, baseType: !572, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !350, file: !28, line: 725, baseType: !3517, size: 64, offset: 2816)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !350, file: !28, line: 726, baseType: !346, size: 1536, align: 64, offset: 2880)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !350, file: !28, line: 727, baseType: !170, size: 128, offset: 4416)
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !350, file: !28, line: 728, baseType: !3522, size: 64, offset: 4544)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !28, line: 728, size: 64, elements: !3523)
!3523 = !{!3524, !3525, !3528, !3529}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3522, file: !28, line: 729, baseType: !2081, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3522, file: !28, line: 730, baseType: !3526, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !28, line: 730, flags: DIFlagFwdDecl)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3522, file: !28, line: 731, baseType: !269, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3522, file: !28, line: 732, baseType: !7, size: 32)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !350, file: !28, line: 735, baseType: !419, size: 32, offset: 4608)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !350, file: !28, line: 738, baseType: !419, size: 32, offset: 4640)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !350, file: !28, line: 739, baseType: !3202, size: 64, offset: 4672)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !350, file: !28, line: 750, baseType: !164, size: 64, offset: 4736)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !346, file: !28, line: 474, baseType: !3465, size: 128, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !346, file: !28, line: 475, baseType: !862, size: 320, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !346, file: !28, line: 476, baseType: !714, size: 32, offset: 512)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !346, file: !28, line: 477, baseType: !219, size: 32, offset: 544)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !346, file: !28, line: 482, baseType: !1164, size: 128, offset: 576)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !346, file: !28, line: 483, baseType: !319, size: 64, offset: 704)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !346, file: !28, line: 484, baseType: !319, size: 64, offset: 768)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !346, file: !28, line: 485, baseType: !3542, size: 64, offset: 832)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3544)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3545)
!3545 = !{!3546, !3550, !3554, !3558, !3562, !3578, !3582, !3586, !3591, !3595, !3599, !3603, !3604, !3608, !3612, !3616, !3621, !3625, !3632, !3633}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3544, file: !28, line: 405, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!103, !1765, !584}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3544, file: !28, line: 406, baseType: !3551, size: 64, offset: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!103, !1308, !1626}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3544, file: !28, line: 409, baseType: !3555, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!103, !345, !584}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3544, file: !28, line: 412, baseType: !3559, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!1469, !345, !1626}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3544, file: !28, line: 414, baseType: !3563, size: 64, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1623, line: 1276, size: 448, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3573, !3574, !3575, !3576, !3577}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3567, file: !1623, line: 1277, baseType: !1308, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3567, file: !1623, line: 1278, baseType: !345, size: 64, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !3567, file: !1623, line: 1279, baseType: !3572, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3567, file: !1623, line: 1281, baseType: !319, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3567, file: !1623, line: 1282, baseType: !7, size: 32, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3567, file: !1623, line: 1283, baseType: !7, size: 32, offset: 288)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !3567, file: !1623, line: 1284, baseType: !1469, size: 8, offset: 320)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !3567, file: !1623, line: 1285, baseType: !319, size: 64, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3544, file: !28, line: 416, baseType: !3579, size: 64, offset: 320)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!103, !1308, !345, !510, !7, !2951, !2096}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3544, file: !28, line: 419, baseType: !3583, size: 64, offset: 384)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!103, !1308, !345, !510, !7, !7, !1765, !164}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3544, file: !28, line: 424, baseType: !3587, size: 64, offset: 448)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!3590, !345, !3590}
!3590 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !171, line: 131, baseType: !422)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3544, file: !28, line: 425, baseType: !3592, size: 64, offset: 512)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{null, !1626, !316, !316}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3544, file: !28, line: 426, baseType: !3596, size: 64, offset: 576)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!1469, !1626, !714}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3544, file: !28, line: 427, baseType: !3600, size: 64, offset: 640)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{null, !1626}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3544, file: !28, line: 428, baseType: !1602, size: 64, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3544, file: !28, line: 433, baseType: !3605, size: 64, offset: 768)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!103, !345, !1626, !1626, !49}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3544, file: !28, line: 435, baseType: !3609, size: 64, offset: 832)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!103, !1626}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3544, file: !28, line: 436, baseType: !3613, size: 64, offset: 896)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DISubroutineType(types: !3615)
!3615 = !{!1469, !1626, !316, !316}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3544, file: !28, line: 438, baseType: !3617, size: 64, offset: 960)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DISubroutineType(types: !3619)
!3619 = !{null, !1626, !3620, !3620}
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3544, file: !28, line: 439, baseType: !3622, size: 64, offset: 1024)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!103, !345, !1765}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3544, file: !28, line: 442, baseType: !3626, size: 64, offset: 1088)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!103, !3629, !1308, !3631}
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3544, file: !28, line: 444, baseType: !2088, size: 64, offset: 1152)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3544, file: !28, line: 445, baseType: !3634, size: 64, offset: 1216)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!103, !1605, !2007}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !28, line: 486, baseType: !319, size: 64, offset: 896)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !346, file: !28, line: 487, baseType: !862, size: 320, offset: 960)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !346, file: !28, line: 488, baseType: !2131, size: 32, offset: 1280)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !346, file: !28, line: 489, baseType: !199, size: 32, offset: 1312)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !346, file: !28, line: 490, baseType: !170, size: 128, offset: 1344)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !346, file: !28, line: 491, baseType: !164, size: 64, offset: 1472)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !336, file: !295, line: 180, baseType: !3644, size: 64, offset: 320)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!301, !1308, !192, !335, !269, !510, !316}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !336, file: !295, line: 182, baseType: !3644, size: 64, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !336, file: !295, line: 184, baseType: !3649, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{!103, !1308, !192, !335, !1779}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !324, file: !295, line: 90, baseType: !3653, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !324, file: !295, line: 91, baseType: !3655, size: 64, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !285, file: !148, line: 120, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!3660, !252}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3663)
!3663 = !{!3664, !3665, !3669, !3673, !3679, !3683}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3662, file: !6, line: 40, baseType: !5, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3662, file: !6, line: 41, baseType: !3666, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!1469}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3662, file: !6, line: 42, baseType: !3670, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!164}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3662, file: !6, line: 43, baseType: !3674, size: 64, offset: 192)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!2220, !3677}
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3662, file: !6, line: 44, baseType: !3680, size: 64, offset: 256)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!2220}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3662, file: !6, line: 45, baseType: !3306, size: 64, offset: 320)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !285, file: !148, line: 121, baseType: !3685, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!2220, !252}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !285, file: !148, line: 122, baseType: !3689, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{null, !252, !3692, !3693}
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !185, file: !148, line: 70, baseType: !3695, size: 64, offset: 384)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !525, line: 190, size: 1152, elements: !3697)
!3697 = !{!3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3789, !3790, !3791, !3792, !3793, !3796}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3696, file: !525, line: 191, baseType: !219, size: 32)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3696, file: !525, line: 192, baseType: !219, size: 32, offset: 32)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3696, file: !525, line: 202, baseType: !3695, size: 64, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3696, file: !525, line: 203, baseType: !188, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3696, file: !525, line: 205, baseType: !1035, size: 192, align: 64, offset: 192)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3696, file: !525, line: 207, baseType: !2220, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3696, file: !525, line: 208, baseType: !7, size: 32, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_member, scope: !3696, file: !525, line: 209, baseType: !3706, size: 256, offset: 512)
!3706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3696, file: !525, line: 209, size: 256, elements: !3707)
!3707 = !{!3708, !3717, !3721}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3706, file: !525, line: 210, baseType: !3709, size: 256)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !525, line: 153, size: 256, elements: !3710)
!3710 = !{!3711, !3712, !3713, !3716}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3709, file: !525, line: 154, baseType: !319, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3709, file: !525, line: 156, baseType: !1167, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3709, file: !525, line: 162, baseType: !3714, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !525, line: 162, flags: DIFlagFwdDecl)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3709, file: !525, line: 167, baseType: !319, size: 64, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3706, file: !525, line: 211, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !525, line: 170, size: 64, elements: !3719)
!3719 = !{!3720}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3718, file: !525, line: 171, baseType: !3695, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3706, file: !525, line: 212, baseType: !3722, size: 256)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !525, line: 174, size: 256, elements: !3723)
!3723 = !{!3724, !3784, !3787, !3788}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3722, file: !525, line: 175, baseType: !3725, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3727)
!3727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !525, line: 271, size: 768, elements: !3728)
!3728 = !{!3729, !3749, !3753, !3757, !3761, !3765, !3769, !3773, !3774, !3775, !3776, !3780}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3727, file: !525, line: 276, baseType: !3730, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!103, !3733}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !525, line: 251, size: 1216, elements: !3735)
!3735 = !{!3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3734, file: !525, line: 253, baseType: !3695, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3734, file: !525, line: 254, baseType: !1308, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3734, file: !525, line: 255, baseType: !622, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3734, file: !525, line: 256, baseType: !164, size: 64, offset: 192)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3734, file: !525, line: 259, baseType: !649, size: 256, offset: 256)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3734, file: !525, line: 260, baseType: !649, size: 256, offset: 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3734, file: !525, line: 261, baseType: !103, size: 32, offset: 768)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3734, file: !525, line: 262, baseType: !170, size: 128, offset: 832)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3734, file: !525, line: 263, baseType: !269, size: 64, offset: 960)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3734, file: !525, line: 265, baseType: !316, size: 64, offset: 1024)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3734, file: !525, line: 266, baseType: !1469, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3734, file: !525, line: 267, baseType: !1469, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3734, file: !525, line: 268, baseType: !1824, size: 64, offset: 1152)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3727, file: !525, line: 277, baseType: !3750, size: 64, offset: 64)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !3733}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3727, file: !525, line: 290, baseType: !3754, size: 64, offset: 128)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!103, !622, !164}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3727, file: !525, line: 292, baseType: !3758, size: 64, offset: 192)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!164, !622, !1596}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3727, file: !525, line: 293, baseType: !3762, size: 64, offset: 256)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!164, !622, !164, !1596}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3727, file: !525, line: 294, baseType: !3766, size: 64, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !622, !164}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3727, file: !525, line: 296, baseType: !3770, size: 64, offset: 384)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!301, !3733, !269, !316, !510}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3727, file: !525, line: 306, baseType: !316, size: 64, offset: 448)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3727, file: !525, line: 313, baseType: !1469, size: 8, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3727, file: !525, line: 314, baseType: !3770, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3727, file: !525, line: 317, baseType: !3777, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!2033, !3733, !2035}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3727, file: !525, line: 320, baseType: !3781, size: 64, offset: 704)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!103, !3733, !1779}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3722, file: !525, line: 176, baseType: !3785, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !525, line: 35, flags: DIFlagFwdDecl)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3722, file: !525, line: 177, baseType: !510, size: 64, offset: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3722, file: !525, line: 178, baseType: !3695, size: 64, offset: 192)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3696, file: !525, line: 215, baseType: !164, size: 64, offset: 768)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3696, file: !525, line: 221, baseType: !422, size: 64, offset: 832)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3696, file: !525, line: 223, baseType: !239, size: 16, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3696, file: !525, line: 224, baseType: !311, size: 16, offset: 912)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3696, file: !525, line: 225, baseType: !3794, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !525, line: 36, flags: DIFlagFwdDecl)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3696, file: !525, line: 227, baseType: !962, size: 128, align: 64, offset: 1024)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !185, file: !148, line: 71, baseType: !3798, size: 32, offset: 448)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3799, line: 19, size: 32, elements: !3800)
!3799 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3800 = !{!3801}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3798, file: !3799, line: 20, baseType: !991, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !185, file: !148, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !185, file: !148, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !185, file: !148, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !185, file: !148, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !185, file: !148, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !182, file: !21, line: 47, baseType: !165, size: 64, offset: 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !182, file: !21, line: 48, baseType: !192, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !182, file: !21, line: 49, baseType: !3810, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !182, file: !21, line: 50, baseType: !2369, size: 64, offset: 704)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !166, file: !21, line: 418, baseType: !3814, size: 64, offset: 1408)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !3816)
!3816 = !{!3817, !3818, !3823, !3827, !3831, !3835}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3815, file: !21, line: 54, baseType: !307, size: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3815, file: !21, line: 55, baseType: !3819, size: 64, offset: 128)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = !DISubroutineType(types: !3821)
!3821 = !{!301, !3814, !3822, !269}
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3815, file: !21, line: 57, baseType: !3824, size: 64, offset: 192)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!301, !3814, !3822, !188, !316}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3815, file: !21, line: 59, baseType: !3828, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{null, !165, !188}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3815, file: !21, line: 60, baseType: !3832, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!103, !165}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3815, file: !21, line: 61, baseType: !3836, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !165}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !166, file: !21, line: 419, baseType: !188, size: 64, offset: 1472)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !166, file: !21, line: 420, baseType: !188, size: 64, offset: 1536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !166, file: !21, line: 421, baseType: !192, size: 64, offset: 1600)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !166, file: !21, line: 424, baseType: !3843, size: 64, offset: 1664)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3845)
!3845 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !166, file: !21, line: 425, baseType: !3847, size: 64, offset: 1728)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !166, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !166, file: !21, line: 435, baseType: !649, size: 256, offset: 1856)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !166, file: !21, line: 437, baseType: !3852, size: 64, offset: 2112)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3854, line: 69, size: 320, elements: !3855)
!3854 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3855 = !{!3856, !3857, !3858, !3875, !3877, !3881, !3882}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3853, file: !3854, line: 70, baseType: !188, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3853, file: !3854, line: 71, baseType: !165, size: 64, offset: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3853, file: !3854, line: 72, baseType: !3859, size: 64, offset: 128)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3861)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3854, line: 47, size: 256, elements: !3862)
!3862 = !{!3863, !3864, !3870, !3874}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3861, file: !3854, line: 49, baseType: !7, size: 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3861, file: !3854, line: 51, baseType: !3865, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!103, !188, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3853)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3861, file: !3854, line: 53, baseType: !3871, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!103, !269, !3868}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3861, file: !3854, line: 55, baseType: !3306, size: 64, offset: 192)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3853, file: !3854, line: 73, baseType: !3876, size: 16, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3853, file: !3854, line: 74, baseType: !3878, size: 8, offset: 208)
!3878 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !228, line: 16, baseType: !3879)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !230, line: 20, baseType: !3880)
!3880 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3853, file: !3854, line: 75, baseType: !227, size: 8, offset: 216)
!3882 = !DIDerivedType(tag: DW_TAG_member, scope: !3853, file: !3854, line: 76, baseType: !3883, size: 64, offset: 256)
!3883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3853, file: !3854, line: 76, size: 64, elements: !3884)
!3884 = !{!3885, !3886, !3893}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3883, file: !3854, line: 77, baseType: !164, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3883, file: !3854, line: 78, baseType: !3887, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3889)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3854, line: 86, size: 128, elements: !3890)
!3890 = !{!3891, !3892}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3889, file: !3854, line: 87, baseType: !7, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3889, file: !3854, line: 88, baseType: !269, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3883, file: !3854, line: 79, baseType: !3894, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3896)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3854, line: 92, size: 256, elements: !3897)
!3897 = !{!3898, !3899, !3900, !3901, !3902}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3896, file: !3854, line: 94, baseType: !7, size: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3896, file: !3854, line: 95, baseType: !7, size: 32, offset: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3896, file: !3854, line: 96, baseType: !971, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3896, file: !3854, line: 97, baseType: !3859, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3896, file: !3854, line: 98, baseType: !164, size: 64, offset: 192)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !166, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !166, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !166, file: !21, line: 442, baseType: !3843, size: 64, offset: 2240)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !166, file: !21, line: 443, baseType: !3847, size: 64, offset: 2304)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !166, file: !21, line: 444, baseType: !1469, size: 8, offset: 2368)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !166, file: !21, line: 451, baseType: !1469, size: 8, offset: 2376)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !166, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !166, file: !21, line: 455, baseType: !3911, size: 64, offset: 2432)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3913, line: 23, size: 96, elements: !3914)
!3913 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3914 = !{!3915, !3916, !3917}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3912, file: !3913, line: 24, baseType: !103, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3912, file: !3913, line: 24, baseType: !103, size: 32, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3912, file: !3913, line: 24, baseType: !103, size: 32, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !166, file: !21, line: 458, baseType: !3919, size: 64, offset: 2496)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!103}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !166, file: !21, line: 460, baseType: !3923, size: 4032, align: 512, offset: 2560)
!3923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3924, size: 4032, elements: !3938)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !3925)
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3924, file: !21, line: 363, baseType: !164, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3924, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3924, file: !21, line: 367, baseType: !3929, size: 448, offset: 128)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !3930)
!3930 = !{!3931, !3932}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3929, file: !21, line: 320, baseType: !165, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3929, file: !21, line: 321, baseType: !3933, size: 384, offset: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3934, line: 40, size: 384, elements: !3935)
!3934 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3935 = !{!3936}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3933, file: !3934, line: 41, baseType: !3937, size: 384, align: 64)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 384, align: 64, elements: !2494)
!3938 = !{!3939}
!3939 = !DISubrange(count: 7)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !166, file: !21, line: 463, baseType: !3941, size: 192, offset: 6592)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3942, line: 8, size: 192, elements: !3943)
!3942 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3943 = !{!3944, !3945, !3946}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3941, file: !3942, line: 10, baseType: !7, size: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3941, file: !3942, line: 11, baseType: !616, size: 64, offset: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3941, file: !3942, line: 12, baseType: !3947, size: 64, offset: 128)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3949, line: 59, size: 48, elements: !3950)
!3949 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3950 = !{!3951, !3952, !3953, !3954, !3955, !3956}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3948, file: !3949, line: 60, baseType: !2237, size: 16)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3948, file: !3949, line: 61, baseType: !2237, size: 16, offset: 16)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3948, file: !3949, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3948, file: !3949, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3948, file: !3949, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3948, file: !3949, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !166, file: !21, line: 465, baseType: !319, size: 64, offset: 6784)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !166, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !166, file: !21, line: 470, baseType: !170, size: 128, offset: 6912)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !166, file: !21, line: 471, baseType: !3961, size: 64, offset: 7040)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3963, line: 33, size: 96, elements: !3964)
!3963 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3964 = !{!3965, !3966, !3967, !3968}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3962, file: !3963, line: 37, baseType: !103, size: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3962, file: !3963, line: 43, baseType: !103, size: 32, offset: 32)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3962, file: !3963, line: 45, baseType: !239, size: 16, offset: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3962, file: !3963, line: 47, baseType: !239, size: 16, offset: 80)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !166, file: !21, line: 476, baseType: !3970, size: 64, offset: 7104)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !3972)
!3972 = !{!3973, !3989, !3990, !3991}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3971, file: !21, line: 379, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3976, line: 204, baseType: !3977)
!3976 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3976, line: 197, size: 192, elements: !3978)
!3978 = !{!3979, !3981, !3982, !3983, !3985, !3987}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3977, file: !3976, line: 198, baseType: !3980, size: 32)
!3980 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3976, line: 21, baseType: !419)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3977, file: !3976, line: 199, baseType: !231, size: 8, offset: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3977, file: !3976, line: 200, baseType: !231, size: 8, offset: 40)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3977, file: !3976, line: 201, baseType: !3984, size: 16, offset: 48)
!3984 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3976, line: 17, baseType: !238)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3977, file: !3976, line: 202, baseType: !3986, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3976, line: 16, baseType: !423)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3977, file: !3976, line: 203, baseType: !3988, size: 64, offset: 128)
!3988 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3976, line: 22, baseType: !423)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3971, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3971, file: !21, line: 381, baseType: !269, size: 64, offset: 128)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3971, file: !21, line: 382, baseType: !269, size: 64, offset: 192)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !166, file: !21, line: 477, baseType: !3971, size: 256, offset: 7168)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !166, file: !21, line: 480, baseType: !3994, size: 64, offset: 7424)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !166, file: !21, line: 483, baseType: !3997, size: 64, offset: 7488)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !166, file: !21, line: 488, baseType: !269, size: 64, offset: 7552)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !166, file: !21, line: 492, baseType: !164, size: 64, offset: 7616)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !166, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !166, file: !21, line: 495, baseType: !164, size: 64, offset: 7744)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !166, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !166, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !166, file: !21, line: 500, baseType: !4006, size: 64, offset: 7872)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4008, line: 45, baseType: !4009)
!4008 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !166, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !166, file: !21, line: 504, baseType: !4012, size: 64, offset: 8000)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !4015, line: 96, size: 192, elements: !4016)
!4015 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!4016 = !{!4017, !4018, !4061, !4063}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !4014, file: !4015, line: 97, baseType: !7, size: 32)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !4014, file: !4015, line: 98, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !4015, line: 24, size: 3072, elements: !4021)
!4021 = !{!4022, !4024, !4025, !4026, !4027, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4058, !4059, !4060}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !4020, file: !4015, line: 26, baseType: !4023, size: 128)
!4023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 128, elements: !2494)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !4020, file: !4015, line: 27, baseType: !4023, size: 128, offset: 128)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !4020, file: !4015, line: 28, baseType: !103, size: 32, offset: 256)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4020, file: !4015, line: 31, baseType: !199, size: 32, align: 512, offset: 512)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !4020, file: !4015, line: 32, baseType: !4028, size: 960, offset: 576)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !4029, line: 206, size: 960, elements: !4030)
!4029 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!4030 = !{!4031, !4032, !4035, !4037, !4038, !4040}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4028, file: !4029, line: 207, baseType: !965, size: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !4028, file: !4029, line: 208, baseType: !4033, size: 256, offset: 64)
!4033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4034, size: 256, elements: !1357)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !4028, file: !4029, line: 209, baseType: !4036, size: 256, offset: 320)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !319, size: 256, elements: !1357)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4028, file: !4029, line: 213, baseType: !305, size: 64, offset: 576)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !4028, file: !4029, line: 215, baseType: !4039, size: 256, offset: 640)
!4039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 256, elements: !1357)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4028, file: !4029, line: 216, baseType: !227, size: 8, offset: 896)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4020, file: !4015, line: 33, baseType: !319, size: 64, offset: 1536)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4020, file: !4015, line: 34, baseType: !319, size: 64, offset: 1600)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !4020, file: !4015, line: 35, baseType: !1469, size: 8, offset: 1664)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !4020, file: !4015, line: 36, baseType: !2930, size: 320, offset: 1728)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4020, file: !4015, line: 37, baseType: !2259, size: 256, offset: 2048)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !4020, file: !4015, line: 38, baseType: !962, size: 128, align: 64, offset: 2304)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !4020, file: !4015, line: 39, baseType: !4048, size: 64, offset: 2432)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !4015, line: 49, size: 768, elements: !4050)
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4049, file: !4015, line: 50, baseType: !199, size: 32)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4049, file: !4015, line: 51, baseType: !4036, size: 256, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4049, file: !4015, line: 53, baseType: !4036, size: 256, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4049, file: !4015, line: 54, baseType: !319, size: 64, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4049, file: !4015, line: 55, baseType: !4048, size: 64, offset: 640)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4049, file: !4015, line: 56, baseType: !103, size: 32, offset: 704)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4049, file: !4015, line: 57, baseType: !103, size: 32, offset: 736)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !4020, file: !4015, line: 40, baseType: !319, size: 64, offset: 2496)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4020, file: !4015, line: 42, baseType: !103, size: 32, offset: 2560)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !4020, file: !4015, line: 43, baseType: !4013, size: 64, offset: 2624)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !4014, file: !4015, line: 99, baseType: !4062, offset: 128)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !552, line: 211, elements: !553)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !4014, file: !4015, line: 100, baseType: !4064, size: 64, offset: 128)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !4015, line: 63, size: 3008, elements: !4066)
!4066 = !{!4067, !4068, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4096}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4065, file: !4015, line: 64, baseType: !4048, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4065, file: !4015, line: 65, baseType: !4069, size: 192, offset: 64)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4048, size: 192, elements: !270)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4065, file: !4015, line: 67, baseType: !103, size: 32, offset: 256)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4065, file: !4015, line: 68, baseType: !649, size: 256, offset: 320)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4065, file: !4015, line: 69, baseType: !199, size: 32, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4065, file: !4015, line: 70, baseType: !649, size: 256, offset: 640)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4065, file: !4015, line: 71, baseType: !319, size: 64, offset: 896)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4065, file: !4015, line: 72, baseType: !319, size: 64, offset: 960)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4065, file: !4015, line: 73, baseType: !319, size: 64, offset: 1024)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4065, file: !4015, line: 74, baseType: !319, size: 64, offset: 1088)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4065, file: !4015, line: 75, baseType: !319, size: 64, offset: 1152)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4065, file: !4015, line: 76, baseType: !319, size: 64, offset: 1216)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4065, file: !4015, line: 77, baseType: !319, size: 64, offset: 1280)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4065, file: !4015, line: 78, baseType: !319, size: 64, offset: 1344)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4065, file: !4015, line: 79, baseType: !1469, size: 8, offset: 1408)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4065, file: !4015, line: 80, baseType: !319, size: 64, offset: 1472)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4065, file: !4015, line: 81, baseType: !649, size: 256, offset: 1536)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4065, file: !4015, line: 82, baseType: !1743, size: 256, offset: 1792)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4065, file: !4015, line: 84, baseType: !219, size: 32, offset: 2048)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4065, file: !4015, line: 87, baseType: !319, size: 64, offset: 2112)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4065, file: !4015, line: 88, baseType: !319, size: 64, offset: 2176)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4065, file: !4015, line: 89, baseType: !4090, size: 704, offset: 2240)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2260, line: 111, size: 704, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4090, file: !2260, line: 112, baseType: !2259, size: 256)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4090, file: !2260, line: 113, baseType: !2930, size: 320, offset: 256)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4090, file: !2260, line: 116, baseType: !3237, size: 64, offset: 576)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4090, file: !2260, line: 117, baseType: !103, size: 32, offset: 640)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4065, file: !4015, line: 90, baseType: !4013, size: 64, offset: 2944)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !166, file: !21, line: 515, baseType: !4098, size: 64, offset: 8064)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4100, line: 117, size: 128, elements: !4101)
!4100 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4099, file: !4100, line: 118, baseType: !1412, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4099, file: !4100, line: 119, baseType: !1412, size: 32, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4099, file: !4100, line: 120, baseType: !305, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !166, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !166, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !166, file: !21, line: 520, baseType: !4108, size: 64, offset: 8192)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !166, file: !21, line: 523, baseType: !4110, size: 64, offset: 8256)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !166, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !166, file: !21, line: 525, baseType: !4115, size: 64, offset: 8384)
!4115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !166, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !166, file: !21, line: 533, baseType: !164, size: 64, offset: 8512)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !166, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !166, file: !21, line: 535, baseType: !4122, size: 64, offset: 8640)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !166, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !166, file: !21, line: 539, baseType: !103, size: 32, offset: 8736)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !166, file: !21, line: 540, baseType: !4126, size: 64, offset: 8768)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4128, line: 32, size: 64, elements: !4129)
!4128 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4129 = !{!4130, !4131}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4127, file: !4128, line: 33, baseType: !1412, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4127, file: !4128, line: 34, baseType: !1412, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !166, file: !21, line: 563, baseType: !170, size: 128, offset: 8832)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !166, file: !21, line: 565, baseType: !170, size: 128, offset: 8960)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !166, file: !21, line: 568, baseType: !4135, size: 64, offset: 9088)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !166, file: !21, line: 570, baseType: !219, size: 32, offset: 9152)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !174)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4141, line: 58, size: 384, elements: !4142)
!4141 = !DIFile(filename: "./include/linux/pci_hotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a42d2d7f0ca70d770404ca9157ede2c9")
!4142 = !{!4143, !4173, !4174, !4969, !4970}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4140, file: !4141, line: 59, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4146)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot_ops", file: !4141, line: 38, size: 576, elements: !4147)
!4147 = !{!4148, !4152, !4153, !4157, !4161, !4166, !4167, !4168, !4169}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "enable_slot", scope: !4146, file: !4141, line: 39, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!103, !4139}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "disable_slot", scope: !4146, file: !4141, line: 40, baseType: !4149, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "set_attention_status", scope: !4146, file: !4141, line: 41, baseType: !4154, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!103, !4139, !227}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_test", scope: !4146, file: !4141, line: 42, baseType: !4158, size: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!103, !4139, !418}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "get_power_status", scope: !4146, file: !4141, line: 43, baseType: !4162, size: 64, offset: 256)
!4162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4163, size: 64)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{!103, !4139, !4165}
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "get_attention_status", scope: !4146, file: !4141, line: 44, baseType: !4162, size: 64, offset: 320)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "get_latch_status", scope: !4146, file: !4141, line: 45, baseType: !4162, size: 64, offset: 384)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "get_adapter_status", scope: !4146, file: !4141, line: 46, baseType: !4162, size: 64, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "reset_slot", scope: !4146, file: !4141, line: 47, baseType: !4170, size: 64, offset: 512)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!103, !4139, !1469}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "slot_list", scope: !4140, file: !4141, line: 62, baseType: !170, size: 128, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "pci_slot", scope: !4140, file: !4141, line: 63, baseType: !4175, size: 64, offset: 192)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4177, line: 76, size: 832, elements: !4178)
!4177 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4178 = !{!4179, !4965, !4966, !4967, !4968}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4176, file: !4177, line: 77, baseType: !4180, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4177, line: 647, size: 8256, elements: !4182)
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4917, !4918, !4920, !4921, !4922, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4956, !4957, !4959, !4960, !4961, !4962, !4963, !4964}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4181, file: !4177, line: 648, baseType: !170, size: 128)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4181, file: !4177, line: 649, baseType: !4180, size: 64, offset: 128)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4181, file: !4177, line: 650, baseType: !170, size: 128, offset: 192)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4181, file: !4177, line: 651, baseType: !170, size: 128, offset: 320)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4181, file: !4177, line: 652, baseType: !4188, size: 64, offset: 448)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4177, line: 322, size: 16640, elements: !4190)
!4190 = !{!4191, !4192, !4193, !4194, !4195, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4764, !4765, !4766, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4854, !4856, !4857, !4858, !4860, !4861, !4863, !4864, !4865, !4866, !4872, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4189, file: !4177, line: 323, baseType: !170, size: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4189, file: !4177, line: 324, baseType: !4180, size: 64, offset: 128)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4189, file: !4177, line: 325, baseType: !4180, size: 64, offset: 192)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4189, file: !4177, line: 327, baseType: !164, size: 64, offset: 256)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4189, file: !4177, line: 328, baseType: !4196, size: 64, offset: 320)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4198, line: 131, flags: DIFlagFwdDecl)
!4198 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4189, file: !4177, line: 329, baseType: !4175, size: 64, offset: 384)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4189, file: !4177, line: 331, baseType: !7, size: 32, offset: 448)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4189, file: !4177, line: 332, baseType: !239, size: 16, offset: 480)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4189, file: !4177, line: 333, baseType: !239, size: 16, offset: 496)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4189, file: !4177, line: 334, baseType: !239, size: 16, offset: 512)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4189, file: !4177, line: 335, baseType: !239, size: 16, offset: 528)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4189, file: !4177, line: 336, baseType: !7, size: 32, offset: 544)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4189, file: !4177, line: 337, baseType: !227, size: 8, offset: 576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4189, file: !4177, line: 338, baseType: !227, size: 8, offset: 584)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4189, file: !4177, line: 344, baseType: !4209, size: 64, offset: 640)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4211, line: 415, size: 64, elements: !4212)
!4211 = !DIFile(filename: "drivers/pci/hotplug/../pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed2acac6ca913a041bbe6982427e7edc")
!4212 = !{!4213, !4214, !4215}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "nextbusn", scope: !4210, file: !4211, line: 416, baseType: !227, size: 8)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "lastbusn", scope: !4210, file: !4211, line: 417, baseType: !227, size: 8, offset: 8)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap", scope: !4210, file: !4211, line: 418, baseType: !418, size: 32, offset: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4189, file: !4177, line: 345, baseType: !4188, size: 64, offset: 704)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4189, file: !4177, line: 347, baseType: !418, size: 32, offset: 768)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4189, file: !4177, line: 348, baseType: !227, size: 8, offset: 800)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4189, file: !4177, line: 349, baseType: !227, size: 8, offset: 808)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4189, file: !4177, line: 350, baseType: !227, size: 8, offset: 816)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4189, file: !4177, line: 351, baseType: !227, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4189, file: !4177, line: 352, baseType: !227, size: 8, offset: 832)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4189, file: !4177, line: 353, baseType: !227, size: 8, offset: 840)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4189, file: !4177, line: 354, baseType: !237, size: 16, offset: 848)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4189, file: !4177, line: 355, baseType: !4122, size: 64, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4189, file: !4177, line: 357, baseType: !4227, size: 64, offset: 960)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4177, line: 918, size: 2368, elements: !4229)
!4229 = !{!4230, !4231, !4232, !4247, !4251, !4255, !4263, !4267, !4268, !4272, !4273, !4277, !4297, !4298, !4299, !4758, !4763}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4228, file: !4177, line: 919, baseType: !170, size: 128)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4228, file: !4177, line: 920, baseType: !188, size: 64, offset: 128)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4228, file: !4177, line: 921, baseType: !4233, size: 64, offset: 192)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4235)
!4235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4236, line: 44, size: 320, elements: !4237)
!4236 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243, !4244, !4246}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4235, file: !4236, line: 45, baseType: !419, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4235, file: !4236, line: 45, baseType: !419, size: 32, offset: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4235, file: !4236, line: 46, baseType: !419, size: 32, offset: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4235, file: !4236, line: 46, baseType: !419, size: 32, offset: 96)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4235, file: !4236, line: 47, baseType: !419, size: 32, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4235, file: !4236, line: 47, baseType: !419, size: 32, offset: 160)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4235, file: !4236, line: 48, baseType: !4245, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4236, line: 15, baseType: !319)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4235, file: !4236, line: 49, baseType: !419, size: 32, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4228, file: !4177, line: 922, baseType: !4248, size: 64, offset: 256)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!103, !4188, !4233}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4228, file: !4177, line: 923, baseType: !4252, size: 64, offset: 320)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{null, !4188}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4228, file: !4177, line: 924, baseType: !4256, size: 64, offset: 384)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!103, !4188, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !95, line: 60, baseType: !4260)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !95, line: 58, size: 32, elements: !4261)
!4261 = !{!4262}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4260, file: !95, line: 59, baseType: !103, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4228, file: !4177, line: 925, baseType: !4264, size: 64, offset: 448)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DISubroutineType(types: !4266)
!4266 = !{!103, !4188}
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4228, file: !4177, line: 926, baseType: !4252, size: 64, offset: 512)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4228, file: !4177, line: 927, baseType: !4269, size: 64, offset: 576)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!103, !4188, !103}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4228, file: !4177, line: 928, baseType: !4269, size: 64, offset: 640)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4228, file: !4177, line: 929, baseType: !4274, size: 64, offset: 704)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!418, !4188}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4228, file: !4177, line: 930, baseType: !4278, size: 64, offset: 768)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4280)
!4280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4177, line: 837, size: 448, elements: !4281)
!4281 = !{!4282, !4288, !4292, !4293, !4294, !4295, !4296}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4280, file: !4177, line: 839, baseType: !4283, size: 64)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!4286, !4188, !4287}
!4286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4177, line: 814, baseType: !7)
!4287 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4177, line: 196, baseType: !7)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4280, file: !4177, line: 843, baseType: !4289, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!4286, !4188}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4280, file: !4177, line: 846, baseType: !4289, size: 64, offset: 128)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4280, file: !4177, line: 849, baseType: !4252, size: 64, offset: 192)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4280, file: !4177, line: 850, baseType: !4252, size: 64, offset: 256)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4280, file: !4177, line: 853, baseType: !4252, size: 64, offset: 320)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4280, file: !4177, line: 856, baseType: !4252, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4228, file: !4177, line: 931, baseType: !321, size: 64, offset: 832)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4228, file: !4177, line: 932, baseType: !321, size: 64, offset: 896)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4228, file: !4177, line: 933, baseType: !4300, size: 1152, offset: 960)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !142, line: 96, size: 1152, elements: !4301)
!4301 = !{!4302, !4303, !4720, !4721, !4722, !4723, !4724, !4736, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4300, file: !142, line: 97, baseType: !188, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4300, file: !142, line: 98, baseType: !4304, size: 64, offset: 64)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4307, line: 80, size: 1344, elements: !4308)
!4307 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4710, !4711, !4712, !4713, !4714, !4715, !4719}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4306, file: !4307, line: 81, baseType: !188, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4306, file: !4307, line: 82, baseType: !188, size: 64, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4306, file: !4307, line: 83, baseType: !321, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4306, file: !4307, line: 84, baseType: !321, size: 64, offset: 192)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4306, file: !4307, line: 85, baseType: !321, size: 64, offset: 256)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4306, file: !4307, line: 87, baseType: !4315, size: 64, offset: 320)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DISubroutineType(types: !4317)
!4317 = !{!103, !4318, !4382}
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !88, line: 705, size: 5824, elements: !4320)
!4320 = !{!4321, !4322, !4323, !4326, !4327, !4380, !4381, !4383, !4384, !4385, !4386, !4393, !4485, !4498, !4508, !4512, !4514, !4515, !4516, !4520, !4527, !4528, !4531, !4534, !4538, !4641, !4642, !4643, !4644, !4645, !4646, !4676, !4677, !4678, !4681, !4684, !4693, !4694, !4695, !4696, !4697, !4698}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4319, file: !88, line: 706, baseType: !185, size: 512)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4319, file: !88, line: 707, baseType: !4318, size: 64, offset: 512)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4319, file: !88, line: 709, baseType: !4324, size: 64, offset: 576)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4325, size: 64)
!4325 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !88, line: 37, flags: DIFlagFwdDecl)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4319, file: !88, line: 711, baseType: !188, size: 64, offset: 640)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4319, file: !88, line: 712, baseType: !4328, size: 64, offset: 704)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4330)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !88, line: 89, size: 384, elements: !4331)
!4331 = !{!4332, !4333, !4334, !4340, !4345, !4349}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4330, file: !88, line: 90, baseType: !188, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4330, file: !88, line: 91, baseType: !321, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4330, file: !88, line: 92, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!103, !4338, !264}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4319)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4330, file: !88, line: 93, baseType: !4341, size: 64, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!269, !4338, !4344, !3692, !3693}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4330, file: !88, line: 95, baseType: !4346, size: 64, offset: 256)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{null, !4318}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4330, file: !88, line: 97, baseType: !4350, size: 64, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4352)
!4352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !95, line: 286, size: 1472, elements: !4353)
!4353 = !{!4354, !4358, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378, !4379}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4352, file: !95, line: 287, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!103, !4318}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4352, file: !95, line: 288, baseType: !4346, size: 64, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4352, file: !95, line: 289, baseType: !4355, size: 64, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4352, file: !95, line: 290, baseType: !4355, size: 64, offset: 192)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4352, file: !95, line: 291, baseType: !4355, size: 64, offset: 256)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4352, file: !95, line: 292, baseType: !4355, size: 64, offset: 320)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4352, file: !95, line: 293, baseType: !4355, size: 64, offset: 384)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4352, file: !95, line: 294, baseType: !4355, size: 64, offset: 448)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4352, file: !95, line: 295, baseType: !4355, size: 64, offset: 512)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4352, file: !95, line: 296, baseType: !4355, size: 64, offset: 576)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4352, file: !95, line: 297, baseType: !4355, size: 64, offset: 640)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4352, file: !95, line: 298, baseType: !4355, size: 64, offset: 704)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4352, file: !95, line: 299, baseType: !4355, size: 64, offset: 768)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4352, file: !95, line: 300, baseType: !4355, size: 64, offset: 832)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4352, file: !95, line: 301, baseType: !4355, size: 64, offset: 896)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4352, file: !95, line: 302, baseType: !4355, size: 64, offset: 960)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4352, file: !95, line: 303, baseType: !4355, size: 64, offset: 1024)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4352, file: !95, line: 304, baseType: !4355, size: 64, offset: 1088)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4352, file: !95, line: 305, baseType: !4355, size: 64, offset: 1152)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4352, file: !95, line: 306, baseType: !4355, size: 64, offset: 1216)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4352, file: !95, line: 307, baseType: !4355, size: 64, offset: 1280)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4352, file: !95, line: 308, baseType: !4355, size: 64, offset: 1344)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4352, file: !95, line: 309, baseType: !4355, size: 64, offset: 1408)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4319, file: !88, line: 714, baseType: !4304, size: 64, offset: 768)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4319, file: !88, line: 715, baseType: !4382, size: 64, offset: 832)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4300, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4319, file: !88, line: 717, baseType: !164, size: 64, offset: 896)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4319, file: !88, line: 719, baseType: !164, size: 64, offset: 960)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4319, file: !88, line: 721, baseType: !649, size: 256, offset: 1024)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4319, file: !88, line: 725, baseType: !4387, size: 448, offset: 1280)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !88, line: 517, size: 448, elements: !4388)
!4388 = !{!4389, !4390, !4391, !4392}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4387, file: !88, line: 518, baseType: !170, size: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4387, file: !88, line: 519, baseType: !170, size: 128, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4387, file: !88, line: 520, baseType: !170, size: 128, offset: 256)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4387, file: !88, line: 521, baseType: !87, size: 32, offset: 384)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4319, file: !88, line: 726, baseType: !4394, size: 2496, offset: 1728)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !95, line: 663, size: 2496, elements: !4395)
!4395 = !{!4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4478, !4482}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4394, file: !95, line: 664, baseType: !4259, size: 32)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4394, file: !95, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4394, file: !95, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4394, file: !95, line: 667, baseType: !1469, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4394, file: !95, line: 668, baseType: !1469, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4394, file: !95, line: 669, baseType: !1469, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4394, file: !95, line: 670, baseType: !1469, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4394, file: !95, line: 671, baseType: !1469, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4394, file: !95, line: 672, baseType: !1469, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4394, file: !95, line: 673, baseType: !1469, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4394, file: !95, line: 674, baseType: !1469, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4394, file: !95, line: 675, baseType: !418, size: 32, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4394, file: !95, line: 676, baseType: !199, size: 32, offset: 96)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4394, file: !95, line: 678, baseType: !170, size: 128, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4394, file: !95, line: 679, baseType: !1743, size: 256, offset: 256)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4394, file: !95, line: 680, baseType: !4412, size: 64, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4414, line: 43, size: 1536, elements: !4415)
!4414 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4415 = !{!4416, !4417, !4418, !4419, !4420, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4413, file: !4414, line: 44, baseType: !188, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4413, file: !4414, line: 45, baseType: !103, size: 32, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4413, file: !4414, line: 46, baseType: !170, size: 128, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4413, file: !4414, line: 47, baseType: !199, size: 32, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4413, file: !4414, line: 48, baseType: !4421, size: 64, offset: 320)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !95, line: 629, flags: DIFlagFwdDecl)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4413, file: !4414, line: 49, baseType: !2930, size: 320, offset: 384)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4413, file: !4414, line: 50, baseType: !319, size: 64, offset: 704)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4413, file: !4414, line: 51, baseType: !1113, size: 64, offset: 768)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4413, file: !4414, line: 52, baseType: !1113, size: 64, offset: 832)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4413, file: !4414, line: 53, baseType: !1113, size: 64, offset: 896)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4413, file: !4414, line: 54, baseType: !1113, size: 64, offset: 960)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4413, file: !4414, line: 55, baseType: !1113, size: 64, offset: 1024)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4413, file: !4414, line: 56, baseType: !319, size: 64, offset: 1088)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4413, file: !4414, line: 57, baseType: !319, size: 64, offset: 1152)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4413, file: !4414, line: 58, baseType: !319, size: 64, offset: 1216)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4413, file: !4414, line: 59, baseType: !319, size: 64, offset: 1280)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4413, file: !4414, line: 60, baseType: !319, size: 64, offset: 1344)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4413, file: !4414, line: 61, baseType: !4318, size: 64, offset: 1408)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4413, file: !4414, line: 62, baseType: !1469, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4413, file: !4414, line: 63, baseType: !1469, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4394, file: !95, line: 681, baseType: !1469, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4394, file: !95, line: 682, baseType: !1469, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4394, file: !95, line: 683, baseType: !1469, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4394, file: !95, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4394, file: !95, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4394, file: !95, line: 690, baseType: !1105, size: 512, offset: 640)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4394, file: !95, line: 691, baseType: !422, size: 64, offset: 1152)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4394, file: !95, line: 692, baseType: !2259, size: 256, offset: 1216)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4394, file: !95, line: 693, baseType: !955, size: 192, offset: 1472)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4394, file: !95, line: 694, baseType: !4421, size: 64, offset: 1664)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4394, file: !95, line: 695, baseType: !219, size: 32, offset: 1728)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4394, file: !95, line: 696, baseType: !219, size: 32, offset: 1760)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4394, file: !95, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4394, file: !95, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4394, file: !95, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4394, file: !95, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4394, file: !95, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4394, file: !95, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4394, file: !95, line: 703, baseType: !1469, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4394, file: !95, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4394, file: !95, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4394, file: !95, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4394, file: !95, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4394, file: !95, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4394, file: !95, line: 709, baseType: !7, size: 32, offset: 1824)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4394, file: !95, line: 710, baseType: !94, size: 32, offset: 1856)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4394, file: !95, line: 711, baseType: !102, size: 32, offset: 1888)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4394, file: !95, line: 712, baseType: !102, size: 32, offset: 1920)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4394, file: !95, line: 713, baseType: !103, size: 32, offset: 1952)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4394, file: !95, line: 714, baseType: !103, size: 32, offset: 1984)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4394, file: !95, line: 715, baseType: !422, size: 64, offset: 2048)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4394, file: !95, line: 716, baseType: !422, size: 64, offset: 2112)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4394, file: !95, line: 717, baseType: !422, size: 64, offset: 2176)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4394, file: !95, line: 718, baseType: !422, size: 64, offset: 2240)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4394, file: !95, line: 720, baseType: !4473, size: 64, offset: 2304)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !95, line: 632, size: 64, elements: !4475)
!4475 = !{!4476, !4477}
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4474, file: !95, line: 633, baseType: !199, size: 32)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4474, file: !95, line: 634, baseType: !7, size: 32, offset: 32)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4394, file: !95, line: 721, baseType: !4479, size: 64, offset: 2368)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !4318, !1412}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4394, file: !95, line: 722, baseType: !4483, size: 64, offset: 2432)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !95, line: 722, flags: DIFlagFwdDecl)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4319, file: !88, line: 727, baseType: !4486, size: 64, offset: 4224)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !95, line: 742, size: 1792, elements: !4488)
!4488 = !{!4489, !4490, !4491, !4495, !4496, !4497}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4487, file: !95, line: 743, baseType: !4352, size: 1472)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4487, file: !95, line: 744, baseType: !4355, size: 64, offset: 1472)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4487, file: !95, line: 745, baseType: !4492, size: 64, offset: 1536)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{null, !4318, !1469}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4487, file: !95, line: 746, baseType: !4355, size: 64, offset: 1600)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4487, file: !95, line: 747, baseType: !4346, size: 64, offset: 1664)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4487, file: !95, line: 748, baseType: !4346, size: 64, offset: 1728)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4319, file: !88, line: 736, baseType: !4499, size: 128, offset: 4288)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !88, line: 529, size: 128, elements: !4500)
!4500 = !{!4501, !4505}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4499, file: !88, line: 531, baseType: !4502, size: 64)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4504, line: 13, flags: DIFlagFwdDecl)
!4504 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4499, file: !88, line: 532, baseType: !4506, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !88, line: 49, flags: DIFlagFwdDecl)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4319, file: !88, line: 738, baseType: !4509, size: 64, offset: 4416)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4511)
!4511 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !88, line: 738, flags: DIFlagFwdDecl)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4319, file: !88, line: 740, baseType: !4513, size: 64, offset: 4480)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4319, file: !88, line: 741, baseType: !422, size: 64, offset: 4544)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4319, file: !88, line: 746, baseType: !422, size: 64, offset: 4608)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4319, file: !88, line: 747, baseType: !4517, size: 64, offset: 4672)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4519)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !88, line: 747, flags: DIFlagFwdDecl)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4319, file: !88, line: 749, baseType: !4521, size: 64, offset: 4736)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !88, line: 428, size: 128, elements: !4523)
!4523 = !{!4524, !4525, !4526}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4522, file: !88, line: 433, baseType: !7, size: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4522, file: !88, line: 434, baseType: !7, size: 32, offset: 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4522, file: !88, line: 435, baseType: !319, size: 64, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4319, file: !88, line: 751, baseType: !170, size: 128, offset: 4800)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4319, file: !88, line: 762, baseType: !4529, size: 64, offset: 4928)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !88, line: 762, flags: DIFlagFwdDecl)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4319, file: !88, line: 770, baseType: !4532, offset: 4992)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4533, line: 5, elements: !553)
!4533 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4319, file: !88, line: 772, baseType: !4535, size: 64, offset: 4992)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4537, line: 18, flags: DIFlagFwdDecl)
!4537 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4319, file: !88, line: 773, baseType: !4539, size: 64, offset: 5056)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4541, line: 41, size: 512, elements: !4542)
!4541 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4542 = !{!4543, !4544, !4637, !4638, !4639, !4640}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4540, file: !4541, line: 42, baseType: !4539, size: 64)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4540, file: !4541, line: 43, baseType: !4545, size: 64, offset: 64)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4547)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4541, line: 125, size: 1408, elements: !4548)
!4548 = !{!4549, !4553, !4557, !4563, !4567, !4568, !4572, !4576, !4580, !4584, !4588, !4589, !4593, !4597, !4601, !4612, !4613, !4614, !4615, !4625, !4629, !4633}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4547, file: !4541, line: 126, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4551 = !DISubroutineType(types: !4552)
!4552 = !{!4539, !4539}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4547, file: !4541, line: 127, baseType: !4554, size: 64, offset: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{null, !4539}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4547, file: !4541, line: 128, baseType: !4558, size: 64, offset: 128)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!1469, !4561}
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4540)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4547, file: !4541, line: 129, baseType: !4564, size: 64, offset: 192)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!2220, !4561, !4338}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4547, file: !4541, line: 131, baseType: !4558, size: 64, offset: 256)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4547, file: !4541, line: 133, baseType: !4569, size: 64, offset: 320)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!110, !4561}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4547, file: !4541, line: 134, baseType: !4573, size: 64, offset: 384)
!4573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4574, size: 64)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!1469, !4561, !188}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4547, file: !4541, line: 136, baseType: !4577, size: 64, offset: 448)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DISubroutineType(types: !4579)
!4579 = !{!103, !4561, !188, !7, !164, !316}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4547, file: !4541, line: 141, baseType: !4581, size: 64, offset: 512)
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!103, !4561, !188, !4108, !316}
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4547, file: !4541, line: 144, baseType: !4585, size: 64, offset: 576)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!188, !4561}
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4547, file: !4541, line: 145, baseType: !4585, size: 64, offset: 640)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4547, file: !4541, line: 146, baseType: !4590, size: 64, offset: 704)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!4539, !4561}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4547, file: !4541, line: 148, baseType: !4594, size: 64, offset: 768)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!4539, !4561, !4539}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4547, file: !4541, line: 151, baseType: !4598, size: 64, offset: 832)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!4539, !4561, !188}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4547, file: !4541, line: 153, baseType: !4602, size: 64, offset: 896)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!103, !4561, !188, !188, !7, !7, !4605}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4541, line: 94, size: 640, elements: !4607)
!4607 = !{!4608, !4609, !4610}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4606, file: !4541, line: 95, baseType: !4539, size: 64)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4606, file: !4541, line: 96, baseType: !7, size: 32, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4606, file: !4541, line: 97, baseType: !4611, size: 512, offset: 128)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 512, elements: !1148)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4547, file: !4541, line: 158, baseType: !4594, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4547, file: !4541, line: 161, baseType: !4590, size: 64, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4547, file: !4541, line: 163, baseType: !4550, size: 64, offset: 1088)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4547, file: !4541, line: 164, baseType: !4616, size: 64, offset: 1152)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!103, !4561, !4619}
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4541, line: 73, size: 128, elements: !4621)
!4621 = !{!4622, !4623, !4624}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4620, file: !4541, line: 74, baseType: !7, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4620, file: !4541, line: 75, baseType: !7, size: 32, offset: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4620, file: !4541, line: 76, baseType: !4561, size: 64, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4547, file: !4541, line: 166, baseType: !4626, size: 64, offset: 1216)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{!164, !4539, !103}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4547, file: !4541, line: 167, baseType: !4630, size: 64, offset: 1280)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!103, !4561, !7}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4547, file: !4541, line: 168, baseType: !4634, size: 64, offset: 1344)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!103, !4539}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4540, file: !4541, line: 44, baseType: !4318, size: 64, offset: 128)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4540, file: !4541, line: 45, baseType: !170, size: 128, offset: 192)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4540, file: !4541, line: 46, baseType: !170, size: 128, offset: 320)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4540, file: !4541, line: 47, baseType: !227, size: 8, offset: 448)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4319, file: !88, line: 776, baseType: !103, size: 32, offset: 5120)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4319, file: !88, line: 778, baseType: !505, size: 32, offset: 5152)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4319, file: !88, line: 779, baseType: !418, size: 32, offset: 5184)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4319, file: !88, line: 781, baseType: !199, size: 32, offset: 5216)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4319, file: !88, line: 782, baseType: !170, size: 128, offset: 5248)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4319, file: !88, line: 784, baseType: !4647, size: 64, offset: 5376)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4649)
!4649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4650, line: 52, size: 768, elements: !4651)
!4650 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4651 = !{!4652, !4653, !4654, !4655, !4656, !4660, !4664, !4665, !4666, !4667, !4671, !4675}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4649, file: !4650, line: 53, baseType: !188, size: 64)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4649, file: !4650, line: 55, baseType: !321, size: 64, offset: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4649, file: !4650, line: 56, baseType: !321, size: 64, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4649, file: !4650, line: 58, baseType: !4335, size: 64, offset: 192)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4649, file: !4650, line: 59, baseType: !4657, size: 64, offset: 256)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!269, !4338, !4344}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4649, file: !4650, line: 61, baseType: !4661, size: 64, offset: 320)
!4661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4662, size: 64)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !4647}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4649, file: !4650, line: 62, baseType: !4346, size: 64, offset: 384)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4649, file: !4650, line: 64, baseType: !4355, size: 64, offset: 448)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4649, file: !4650, line: 66, baseType: !3660, size: 64, offset: 512)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4649, file: !4650, line: 67, baseType: !4668, size: 64, offset: 576)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DISubroutineType(types: !4670)
!4670 = !{!2220, !4338}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4649, file: !4650, line: 69, baseType: !4672, size: 64, offset: 640)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DISubroutineType(types: !4674)
!4674 = !{null, !4338, !3692, !3693}
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4649, file: !4650, line: 71, baseType: !4350, size: 64, offset: 704)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4319, file: !88, line: 785, baseType: !321, size: 64, offset: 5440)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4319, file: !88, line: 787, baseType: !4346, size: 64, offset: 5504)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4319, file: !88, line: 788, baseType: !4679, size: 64, offset: 5568)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !88, line: 46, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4319, file: !88, line: 789, baseType: !4682, size: 64, offset: 5632)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !88, line: 48, flags: DIFlagFwdDecl)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4319, file: !88, line: 791, baseType: !4685, size: 64, offset: 5696)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !88, line: 597, size: 128, elements: !4687)
!4687 = !{!4688, !4689, !4690, !4691, !4692}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4686, file: !88, line: 598, baseType: !116, size: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4686, file: !88, line: 599, baseType: !125, size: 32, offset: 32)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4686, file: !88, line: 600, baseType: !130, size: 32, offset: 64)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4686, file: !88, line: 601, baseType: !1469, size: 8, offset: 96)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4686, file: !88, line: 602, baseType: !1469, size: 8, offset: 104)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4319, file: !88, line: 793, baseType: !135, size: 32, offset: 5760)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4319, file: !88, line: 795, baseType: !1469, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4319, file: !88, line: 796, baseType: !1469, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4319, file: !88, line: 797, baseType: !1469, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4319, file: !88, line: 798, baseType: !1469, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4319, file: !88, line: 799, baseType: !1469, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4306, file: !4307, line: 88, baseType: !4335, size: 64, offset: 384)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4306, file: !4307, line: 89, baseType: !4355, size: 64, offset: 448)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4306, file: !4307, line: 90, baseType: !4346, size: 64, offset: 512)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4306, file: !4307, line: 91, baseType: !4346, size: 64, offset: 576)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4306, file: !4307, line: 92, baseType: !4346, size: 64, offset: 640)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4306, file: !4307, line: 94, baseType: !4355, size: 64, offset: 704)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4306, file: !4307, line: 95, baseType: !4355, size: 64, offset: 768)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4306, file: !4307, line: 97, baseType: !4707, size: 64, offset: 832)
!4707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4708, size: 64)
!4708 = !DISubroutineType(types: !4709)
!4709 = !{!103, !4318, !4259}
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4306, file: !4307, line: 98, baseType: !4355, size: 64, offset: 896)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4306, file: !4307, line: 100, baseType: !4355, size: 64, offset: 960)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4306, file: !4307, line: 102, baseType: !4355, size: 64, offset: 1024)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4306, file: !4307, line: 103, baseType: !4346, size: 64, offset: 1088)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4306, file: !4307, line: 105, baseType: !4350, size: 64, offset: 1152)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4306, file: !4307, line: 107, baseType: !4716, size: 64, offset: 1216)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4718)
!4718 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4307, line: 107, flags: DIFlagFwdDecl)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4306, file: !4307, line: 109, baseType: !1469, size: 8, offset: 1280)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4300, file: !142, line: 100, baseType: !165, size: 64, offset: 128)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4300, file: !142, line: 101, baseType: !188, size: 64, offset: 192)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4300, file: !142, line: 103, baseType: !1469, size: 8, offset: 256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4300, file: !142, line: 104, baseType: !141, size: 32, offset: 288)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4300, file: !142, line: 106, baseType: !4725, size: 64, offset: 320)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4727)
!4727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4236, line: 282, size: 1600, elements: !4728)
!4728 = !{!4729, !4730, !4731, !4735}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4727, file: !4236, line: 283, baseType: !3205, size: 256)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4727, file: !4236, line: 284, baseType: !3205, size: 256, offset: 256)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4727, file: !4236, line: 285, baseType: !4732, size: 1024, offset: 512)
!4732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 1024, elements: !4733)
!4733 = !{!4734}
!4734 = !DISubrange(count: 128)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4727, file: !4236, line: 286, baseType: !2220, size: 64, offset: 1536)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4300, file: !142, line: 107, baseType: !4737, size: 64, offset: 384)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4739)
!4739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4236, line: 217, size: 256, elements: !4740)
!4740 = !{!4741, !4742, !4743, !4744}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4739, file: !4236, line: 218, baseType: !3212, size: 128)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4739, file: !4236, line: 219, baseType: !4245, size: 64, offset: 128)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4739, file: !4236, line: 220, baseType: !419, size: 32, offset: 192)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4739, file: !4236, line: 221, baseType: !419, size: 32, offset: 224)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4300, file: !142, line: 109, baseType: !4355, size: 64, offset: 448)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4300, file: !142, line: 110, baseType: !4346, size: 64, offset: 512)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4300, file: !142, line: 111, baseType: !4355, size: 64, offset: 576)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4300, file: !142, line: 112, baseType: !4346, size: 64, offset: 640)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4300, file: !142, line: 113, baseType: !4707, size: 64, offset: 704)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4300, file: !142, line: 114, baseType: !4355, size: 64, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4300, file: !142, line: 115, baseType: !321, size: 64, offset: 832)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4300, file: !142, line: 116, baseType: !321, size: 64, offset: 896)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4300, file: !142, line: 118, baseType: !4350, size: 64, offset: 960)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4300, file: !142, line: 119, baseType: !4346, size: 64, offset: 1024)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4300, file: !142, line: 121, baseType: !4756, size: 64, offset: 1088)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !142, line: 121, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4228, file: !4177, line: 934, baseType: !4759, size: 192, offset: 2112)
!4759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4177, line: 801, size: 192, elements: !4760)
!4760 = !{!4761, !4762}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4759, file: !4177, line: 802, baseType: !199, size: 32)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4759, file: !4177, line: 803, baseType: !170, size: 128, offset: 64)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4228, file: !4177, line: 935, baseType: !1469, size: 8, offset: 2304)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4189, file: !4177, line: 358, baseType: !422, size: 64, offset: 1024)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4189, file: !4177, line: 364, baseType: !4522, size: 128, offset: 1088)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4189, file: !4177, line: 366, baseType: !4767, size: 32, offset: 1216)
!4767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4177, line: 171, baseType: !103)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4189, file: !4177, line: 369, baseType: !227, size: 8, offset: 1248)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4189, file: !4177, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4189, file: !4177, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4189, file: !4177, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4189, file: !4177, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4189, file: !4177, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4189, file: !4177, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4189, file: !4177, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4189, file: !4177, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4189, file: !4177, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4189, file: !4177, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4189, file: !4177, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4189, file: !4177, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4189, file: !4177, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4189, file: !4177, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4189, file: !4177, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4189, file: !4177, line: 390, baseType: !7, size: 32, offset: 1280)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4189, file: !4177, line: 391, baseType: !7, size: 32, offset: 1312)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4189, file: !4177, line: 394, baseType: !4787, size: 64, offset: 1344)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4177, line: 316, flags: DIFlagFwdDecl)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4189, file: !4177, line: 395, baseType: !237, size: 16, offset: 1408)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4189, file: !4177, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4189, file: !4177, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4189, file: !4177, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4189, file: !4177, line: 402, baseType: !4287, size: 32, offset: 1440)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4189, file: !4177, line: 403, baseType: !4319, size: 5824, offset: 1472)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4189, file: !4177, line: 405, baseType: !103, size: 32, offset: 7296)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4189, file: !4177, line: 411, baseType: !7, size: 32, offset: 7328)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4189, file: !4177, line: 412, baseType: !4798, size: 5632, offset: 7360)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4799, size: 5632, elements: !4812)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4800, line: 21, size: 512, elements: !4801)
!4800 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4801 = !{!4802, !4804, !4805, !4806, !4807, !4808, !4810, !4811}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4799, file: !4800, line: 22, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !171, line: 164, baseType: !2955)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4799, file: !4800, line: 23, baseType: !4803, size: 64, offset: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4799, file: !4800, line: 24, baseType: !188, size: 64, offset: 128)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4799, file: !4800, line: 25, baseType: !319, size: 64, offset: 192)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4799, file: !4800, line: 26, baseType: !319, size: 64, offset: 256)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4799, file: !4800, line: 27, baseType: !4809, size: 64, offset: 320)
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4799, file: !4800, line: 27, baseType: !4809, size: 64, offset: 384)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4799, file: !4800, line: 27, baseType: !4809, size: 64, offset: 448)
!4812 = !{!4813}
!4813 = !DISubrange(count: 11)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4189, file: !4177, line: 413, baseType: !4799, size: 512, offset: 12992)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4189, file: !4177, line: 415, baseType: !1469, size: 8, offset: 13504)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4189, file: !4177, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4189, file: !4177, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4189, file: !4177, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4189, file: !4177, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4189, file: !4177, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4189, file: !4177, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4189, file: !4177, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4189, file: !4177, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4189, file: !4177, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4189, file: !4177, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4189, file: !4177, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4189, file: !4177, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4189, file: !4177, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4189, file: !4177, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4189, file: !4177, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4189, file: !4177, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4189, file: !4177, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4189, file: !4177, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4189, file: !4177, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4189, file: !4177, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4189, file: !4177, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4189, file: !4177, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4189, file: !4177, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4189, file: !4177, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4189, file: !4177, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4189, file: !4177, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4189, file: !4177, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4189, file: !4177, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4189, file: !4177, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4189, file: !4177, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4189, file: !4177, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4189, file: !4177, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4189, file: !4177, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4189, file: !4177, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4189, file: !4177, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4189, file: !4177, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4189, file: !4177, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4189, file: !4177, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4189, file: !4177, line: 468, baseType: !4855, size: 16, offset: 13552)
!4855 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4177, line: 222, baseType: !239)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4189, file: !4177, line: 469, baseType: !219, size: 32, offset: 13568)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4189, file: !4177, line: 471, baseType: !199, size: 32, offset: 13600)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4189, file: !4177, line: 472, baseType: !4859, size: 512, offset: 13632)
!4859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 512, elements: !2412)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4189, file: !4177, line: 473, baseType: !541, size: 64, offset: 14144)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4189, file: !4177, line: 474, baseType: !4862, size: 704, offset: 14208)
!4862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 704, elements: !4812)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4189, file: !4177, line: 475, baseType: !4862, size: 704, offset: 14912)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4189, file: !4177, line: 487, baseType: !164, size: 64, offset: 15616)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4189, file: !4177, line: 488, baseType: !662, size: 32, offset: 15680)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4189, file: !4177, line: 490, baseType: !4867, size: 320, offset: 15744)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4177, line: 309, size: 320, elements: !4868)
!4868 = !{!4869, !4870, !4871}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4867, file: !4177, line: 310, baseType: !649, size: 256)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4867, file: !4177, line: 311, baseType: !7, size: 32, offset: 256)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4867, file: !4177, line: 312, baseType: !227, size: 8, offset: 288)
!4872 = !DIDerivedType(tag: DW_TAG_member, scope: !4189, file: !4177, line: 497, baseType: !4873, size: 64, offset: 16064)
!4873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4189, file: !4177, line: 497, size: 64, elements: !4874)
!4874 = !{!4875, !4902}
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4873, file: !4177, line: 498, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4211, line: 294, size: 1024, elements: !4878)
!4878 = !{!4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4901}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4877, file: !4211, line: 295, baseType: !103, size: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4877, file: !4211, line: 296, baseType: !103, size: 32, offset: 32)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4877, file: !4211, line: 297, baseType: !418, size: 32, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4877, file: !4211, line: 298, baseType: !237, size: 16, offset: 96)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4877, file: !4211, line: 299, baseType: !237, size: 16, offset: 112)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4877, file: !4211, line: 300, baseType: !237, size: 16, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4877, file: !4211, line: 301, baseType: !237, size: 16, offset: 144)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4877, file: !4211, line: 302, baseType: !237, size: 16, offset: 160)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4877, file: !4211, line: 303, baseType: !237, size: 16, offset: 176)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4877, file: !4211, line: 304, baseType: !237, size: 16, offset: 192)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4877, file: !4211, line: 305, baseType: !418, size: 32, offset: 224)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4877, file: !4211, line: 306, baseType: !227, size: 8, offset: 256)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4877, file: !4211, line: 307, baseType: !227, size: 8, offset: 264)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4877, file: !4211, line: 308, baseType: !237, size: 16, offset: 272)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4877, file: !4211, line: 309, baseType: !4188, size: 64, offset: 320)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4877, file: !4211, line: 310, baseType: !4188, size: 64, offset: 384)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4877, file: !4211, line: 311, baseType: !418, size: 32, offset: 448)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4877, file: !4211, line: 312, baseType: !227, size: 8, offset: 480)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4877, file: !4211, line: 313, baseType: !237, size: 16, offset: 496)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4877, file: !4211, line: 314, baseType: !237, size: 16, offset: 512)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4877, file: !4211, line: 315, baseType: !4900, size: 384, offset: 576)
!4900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4803, size: 384, elements: !1456)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4877, file: !4211, line: 316, baseType: !1469, size: 8, offset: 960)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4873, file: !4177, line: 499, baseType: !4188, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4189, file: !4177, line: 501, baseType: !237, size: 16, offset: 16128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4189, file: !4177, line: 502, baseType: !227, size: 8, offset: 16144)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4189, file: !4177, line: 505, baseType: !237, size: 16, offset: 16160)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4189, file: !4177, line: 506, baseType: !418, size: 32, offset: 16192)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4189, file: !4177, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4189, file: !4177, line: 510, baseType: !237, size: 16, offset: 16240)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4189, file: !4177, line: 511, baseType: !237, size: 16, offset: 16256)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4189, file: !4177, line: 519, baseType: !237, size: 16, offset: 16272)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4189, file: !4177, line: 520, baseType: !2955, size: 64, offset: 16320)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4189, file: !4177, line: 521, baseType: !316, size: 64, offset: 16384)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4189, file: !4177, line: 526, baseType: !188, size: 64, offset: 16448)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4189, file: !4177, line: 528, baseType: !319, size: 64, offset: 16512)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4189, file: !4177, line: 531, baseType: !4916, size: 56, offset: 16576)
!4916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 56, elements: !3938)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4181, file: !4177, line: 653, baseType: !170, size: 128, offset: 512)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4181, file: !4177, line: 655, baseType: !4919, size: 256, offset: 640)
!4919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4809, size: 256, elements: !1357)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4181, file: !4177, line: 656, baseType: !170, size: 128, offset: 896)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4181, file: !4177, line: 657, baseType: !4799, size: 512, offset: 1024)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4181, file: !4177, line: 659, baseType: !4923, size: 64, offset: 1536)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4177, line: 773, size: 320, elements: !4925)
!4925 = !{!4926, !4930, !4934, !4938, !4942}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4924, file: !4177, line: 774, baseType: !4927, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!103, !4180}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4924, file: !4177, line: 775, baseType: !4931, size: 64, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{null, !4180}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4924, file: !4177, line: 776, baseType: !4935, size: 64, offset: 128)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!164, !4180, !7, !103}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4924, file: !4177, line: 777, baseType: !4939, size: 64, offset: 192)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!103, !4180, !7, !103, !103, !2310}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4924, file: !4177, line: 778, baseType: !4943, size: 64, offset: 256)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DISubroutineType(types: !4945)
!4945 = !{!103, !4180, !7, !103, !103, !418}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4181, file: !4177, line: 660, baseType: !164, size: 64, offset: 1600)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4181, file: !4177, line: 661, baseType: !4196, size: 64, offset: 1664)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4181, file: !4177, line: 663, baseType: !231, size: 8, offset: 1728)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4181, file: !4177, line: 664, baseType: !231, size: 8, offset: 1736)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4181, file: !4177, line: 665, baseType: !231, size: 8, offset: 1744)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4181, file: !4177, line: 666, baseType: !231, size: 8, offset: 1752)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4181, file: !4177, line: 671, baseType: !4953, size: 384, offset: 1760)
!4953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 384, elements: !4954)
!4954 = !{!4955}
!4955 = !DISubrange(count: 48)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4181, file: !4177, line: 673, baseType: !239, size: 16, offset: 2144)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4181, file: !4177, line: 674, baseType: !4958, size: 16, offset: 2160)
!4958 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4177, line: 255, baseType: !239)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4181, file: !4177, line: 675, baseType: !4318, size: 64, offset: 2176)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4181, file: !4177, line: 676, baseType: !4319, size: 5824, offset: 2240)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4181, file: !4177, line: 677, baseType: !335, size: 64, offset: 8064)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4181, file: !4177, line: 678, baseType: !335, size: 64, offset: 8128)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4181, file: !4177, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4181, file: !4177, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4176, file: !4177, line: 78, baseType: !170, size: 128, offset: 64)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4176, file: !4177, line: 79, baseType: !4139, size: 64, offset: 192)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4176, file: !4177, line: 80, baseType: !231, size: 8, offset: 256)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4176, file: !4177, line: 81, baseType: !185, size: 512, offset: 320)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4140, file: !4141, line: 64, baseType: !165, size: 64, offset: 256)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4140, file: !4141, line: 65, baseType: !188, size: 64, offset: 320)
!4971 = !{!0, !4972, !4974, !4979, !4982, !4985, !4987, !4989, !4994, !4999, !5001, !5003, !5005, !5007, !5009, !5012, !5017, !5019, !5021, !5034, !5037, !5042, !5047, !5049, !5054, !5056, !5061, !5066, !5068, !5070, !5072, !5074, !5079, !5081, !5084, !5087, !5089, !5091, !5093}
!4972 = !DIGlobalVariableExpression(var: !4973, expr: !DIExpression())
!4973 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___pci_hp_initialize326", scope: !2, file: !3, line: 465, type: !164, isLocal: true, isDefinition: true)
!4974 = !DIGlobalVariableExpression(var: !4975, expr: !DIExpression())
!4975 = distinct !DIGlobalVariable(scope: null, file: !3, line: 490, type: !4976, isLocal: true, isDefinition: true)
!4976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 296, elements: !4977)
!4977 = !{!4978}
!4978 = !DISubrange(count: 37)
!4979 = !DIGlobalVariableExpression(var: !4980, expr: !DIExpression())
!4980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 490, type: !4981, isLocal: true, isDefinition: true)
!4981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 96, elements: !3084)
!4982 = !DIGlobalVariableExpression(var: !4983, expr: !DIExpression())
!4983 = distinct !DIGlobalVariable(scope: null, file: !3, line: 490, type: !4984, isLocal: true, isDefinition: true)
!4984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 88, elements: !4812)
!4985 = !DIGlobalVariableExpression(var: !4986, expr: !DIExpression())
!4986 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_hp_add327", scope: !2, file: !3, line: 493, type: !164, isLocal: true, isDefinition: true)
!4987 = !DIGlobalVariableExpression(var: !4988, expr: !DIExpression())
!4988 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_hp_deregister328", scope: !2, file: !3, line: 509, type: !164, isLocal: true, isDefinition: true)
!4989 = !DIGlobalVariableExpression(var: !4990, expr: !DIExpression())
!4990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 523, type: !4991, isLocal: true, isDefinition: true)
!4991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 312, elements: !4992)
!4992 = !{!4993}
!4993 = !DISubrange(count: 39)
!4994 = !DIGlobalVariableExpression(var: !4995, expr: !DIExpression())
!4995 = distinct !DIGlobalVariable(scope: null, file: !3, line: 535, type: !4996, isLocal: true, isDefinition: true)
!4996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 328, elements: !4997)
!4997 = !{!4998}
!4998 = !DISubrange(count: 41)
!4999 = !DIGlobalVariableExpression(var: !5000, expr: !DIExpression())
!5000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 535, type: !4984, isLocal: true, isDefinition: true)
!5001 = !DIGlobalVariableExpression(var: !5002, expr: !DIExpression())
!5002 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_hp_del329", scope: !2, file: !3, line: 538, type: !164, isLocal: true, isDefinition: true)
!5003 = !DIGlobalVariableExpression(var: !5004, expr: !DIExpression())
!5004 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_hp_destroy330", scope: !2, file: !3, line: 559, type: !164, isLocal: true, isDefinition: true)
!5005 = !DIGlobalVariableExpression(var: !5006, expr: !DIExpression())
!5006 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pci_hotplug__331_573_pci_hotplug_init6332", scope: !2, file: !3, line: 573, type: !164, isLocal: true, isDefinition: true)
!5007 = !DIGlobalVariableExpression(var: !5008, expr: !DIExpression())
!5008 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 579, type: !3869, isLocal: true, isDefinition: true, align: 64)
!5009 = !DIGlobalVariableExpression(var: !5010, expr: !DIExpression())
!5010 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype333", scope: !2, file: !3, line: 579, type: !5011, isLocal: true, isDefinition: true, align: 8)
!5011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 256, elements: !431)
!5012 = !DIGlobalVariableExpression(var: !5013, expr: !DIExpression())
!5013 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug334", scope: !2, file: !3, line: 580, type: !5014, isLocal: true, isDefinition: true, align: 8)
!5014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 424, elements: !5015)
!5015 = !{!5016}
!5016 = !DISubrange(count: 53)
!5017 = !DIGlobalVariableExpression(var: !5018, expr: !DIExpression())
!5018 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 43, type: !1469, isLocal: true, isDefinition: true)
!5019 = !DIGlobalVariableExpression(var: !5020, expr: !DIExpression())
!5020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !1455, isLocal: true, isDefinition: true)
!5021 = !DIGlobalVariableExpression(var: !5022, expr: !DIExpression())
!5022 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_power", scope: !2, file: !3, line: 118, type: !5023, isLocal: true, isDefinition: true)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot_attribute", file: !4211, line: 224, size: 256, elements: !5024)
!5024 = !{!5025, !5026, !5030}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5023, file: !4211, line: 225, baseType: !307, size: 128)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5023, file: !4211, line: 226, baseType: !5027, size: 64, offset: 128)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{!301, !4175, !269}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5023, file: !4211, line: 227, baseType: !5031, size: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!301, !4175, !188, !316}
!5034 = !DIGlobalVariableExpression(var: !5035, expr: !DIExpression())
!5035 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !5036, isLocal: true, isDefinition: true)
!5036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 32, elements: !1357)
!5037 = !DIGlobalVariableExpression(var: !5038, expr: !DIExpression())
!5038 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !5039, isLocal: true, isDefinition: true)
!5039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 176, elements: !5040)
!5040 = !{!5041}
!5041 = !DISubrange(count: 22)
!5042 = !DIGlobalVariableExpression(var: !5043, expr: !DIExpression())
!5043 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !5044, isLocal: true, isDefinition: true)
!5044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 136, elements: !5045)
!5045 = !{!5046}
!5046 = !DISubrange(count: 17)
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !4996, isLocal: true, isDefinition: true)
!5049 = !DIGlobalVariableExpression(var: !5050, expr: !DIExpression())
!5050 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !5051, isLocal: true, isDefinition: true)
!5051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 80, elements: !5052)
!5052 = !{!5053}
!5053 = !DISubrange(count: 10)
!5054 = !DIGlobalVariableExpression(var: !5055, expr: !DIExpression())
!5055 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_attention", scope: !2, file: !3, line: 163, type: !5023, isLocal: true, isDefinition: true)
!5056 = !DIGlobalVariableExpression(var: !5057, expr: !DIExpression())
!5057 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !5058, isLocal: true, isDefinition: true)
!5058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 232, elements: !5059)
!5059 = !{!5060}
!5060 = !DISubrange(count: 29)
!5061 = !DIGlobalVariableExpression(var: !5062, expr: !DIExpression())
!5062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !5063, isLocal: true, isDefinition: true)
!5063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 168, elements: !5064)
!5064 = !{!5065}
!5065 = !DISubrange(count: 21)
!5066 = !DIGlobalVariableExpression(var: !5067, expr: !DIExpression())
!5067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !1455, isLocal: true, isDefinition: true)
!5068 = !DIGlobalVariableExpression(var: !5069, expr: !DIExpression())
!5069 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_latch", scope: !2, file: !3, line: 181, type: !5023, isLocal: true, isDefinition: true)
!5070 = !DIGlobalVariableExpression(var: !5071, expr: !DIExpression())
!5071 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !2738, isLocal: true, isDefinition: true)
!5072 = !DIGlobalVariableExpression(var: !5073, expr: !DIExpression())
!5073 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_presence", scope: !2, file: !3, line: 198, type: !5023, isLocal: true, isDefinition: true)
!5074 = !DIGlobalVariableExpression(var: !5075, expr: !DIExpression())
!5075 = distinct !DIGlobalVariable(scope: null, file: !3, line: 230, type: !5076, isLocal: true, isDefinition: true)
!5076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 40, elements: !5077)
!5077 = !{!5078}
!5078 = !DISubrange(count: 5)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(name: "hotplug_slot_attr_test", scope: !2, file: !3, line: 229, type: !5023, isLocal: true, isDefinition: true)
!5081 = !DIGlobalVariableExpression(var: !5082, expr: !DIExpression())
!5082 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !5083, isLocal: true, isDefinition: true)
!5083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 168, elements: !5064)
!5084 = !DIGlobalVariableExpression(var: !5085, expr: !DIExpression())
!5085 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !5086, isLocal: true, isDefinition: true)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 128, elements: !2412)
!5087 = !DIGlobalVariableExpression(var: !5088, expr: !DIExpression())
!5088 = distinct !DIGlobalVariable(name: "pci_hp_mutex", scope: !2, file: !3, line: 46, type: !649, isLocal: true, isDefinition: true)
!5089 = !DIGlobalVariableExpression(var: !5090, expr: !DIExpression())
!5090 = distinct !DIGlobalVariable(name: "pci_hotplug_slot_list", scope: !2, file: !3, line: 45, type: !170, isLocal: true, isDefinition: true)
!5091 = !DIGlobalVariableExpression(var: !5092, expr: !DIExpression())
!5092 = distinct !DIGlobalVariable(scope: null, file: !3, line: 567, type: !4991, isLocal: true, isDefinition: true)
!5093 = !DIGlobalVariableExpression(var: !5094, expr: !DIExpression())
!5094 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 579, type: !5095, isLocal: true, isDefinition: true)
!5095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 144, elements: !5096)
!5096 = !{!5097}
!5097 = !DISubrange(count: 18)
!5098 = !{i32 7, !"Dwarf Version", i32 5}
!5099 = !{i32 2, !"Debug Info Version", i32 3}
!5100 = !{i32 1, !"wchar_size", i32 2}
!5101 = !{i32 8, !"cf-protection-branch", i32 1}
!5102 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5103 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5104 = !{i32 1, !"Code Model", i32 2}
!5105 = !{i32 1, !"override-stack-alignment", i32 8}
!5106 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5107 = distinct !DISubprogram(name: "__pci_hp_register", scope: !3, file: !3, line: 404, type: !5108, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5110)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!103, !4139, !4180, !103, !188, !165, !188}
!5110 = !{!5111, !5112, !5113, !5114, !5115, !5116, !5117}
!5111 = !DILocalVariable(name: "slot", arg: 1, scope: !5107, file: !3, line: 404, type: !4139)
!5112 = !DILocalVariable(name: "bus", arg: 2, scope: !5107, file: !3, line: 404, type: !4180)
!5113 = !DILocalVariable(name: "devnr", arg: 3, scope: !5107, file: !3, line: 405, type: !103)
!5114 = !DILocalVariable(name: "name", arg: 4, scope: !5107, file: !3, line: 405, type: !188)
!5115 = !DILocalVariable(name: "owner", arg: 5, scope: !5107, file: !3, line: 406, type: !165)
!5116 = !DILocalVariable(name: "mod_name", arg: 6, scope: !5107, file: !3, line: 406, type: !188)
!5117 = !DILocalVariable(name: "result", scope: !5107, file: !3, line: 408, type: !103)
!5118 = !DILocation(line: 404, column: 44, scope: !5107)
!5119 = !DILocation(line: 404, column: 66, scope: !5107)
!5120 = !DILocation(line: 405, column: 13, scope: !5107)
!5121 = !DILocation(line: 405, column: 32, scope: !5107)
!5122 = !DILocation(line: 406, column: 24, scope: !5107)
!5123 = !DILocation(line: 406, column: 43, scope: !5107)
!5124 = !DILocation(line: 408, column: 2, scope: !5107)
!5125 = !DILocation(line: 408, column: 6, scope: !5107)
!5126 = !DILocation(line: 410, column: 31, scope: !5107)
!5127 = !DILocation(line: 410, column: 37, scope: !5107)
!5128 = !DILocation(line: 410, column: 42, scope: !5107)
!5129 = !DILocation(line: 410, column: 49, scope: !5107)
!5130 = !DILocation(line: 410, column: 55, scope: !5107)
!5131 = !DILocation(line: 410, column: 62, scope: !5107)
!5132 = !DILocation(line: 410, column: 11, scope: !5107)
!5133 = !DILocation(line: 410, column: 9, scope: !5107)
!5134 = !DILocation(line: 411, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 411, column: 6)
!5136 = !DILocation(line: 411, column: 6, scope: !5107)
!5137 = !DILocation(line: 412, column: 10, scope: !5135)
!5138 = !DILocation(line: 412, column: 3, scope: !5135)
!5139 = !DILocation(line: 414, column: 22, scope: !5107)
!5140 = !DILocation(line: 414, column: 11, scope: !5107)
!5141 = !DILocation(line: 414, column: 9, scope: !5107)
!5142 = !DILocation(line: 415, column: 6, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5107, file: !3, line: 415, column: 6)
!5144 = !DILocation(line: 415, column: 6, scope: !5107)
!5145 = !DILocation(line: 416, column: 18, scope: !5143)
!5146 = !DILocation(line: 416, column: 3, scope: !5143)
!5147 = !DILocation(line: 418, column: 9, scope: !5107)
!5148 = !DILocation(line: 418, column: 2, scope: !5107)
!5149 = !DILocation(line: 419, column: 1, scope: !5107)
!5150 = distinct !DISubprogram(name: "__pci_hp_initialize", scope: !3, file: !3, line: 438, type: !5108, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5151)
!5151 = !{!5152, !5153, !5154, !5155, !5156, !5157, !5158}
!5152 = !DILocalVariable(name: "slot", arg: 1, scope: !5150, file: !3, line: 438, type: !4139)
!5153 = !DILocalVariable(name: "bus", arg: 2, scope: !5150, file: !3, line: 438, type: !4180)
!5154 = !DILocalVariable(name: "devnr", arg: 3, scope: !5150, file: !3, line: 439, type: !103)
!5155 = !DILocalVariable(name: "name", arg: 4, scope: !5150, file: !3, line: 439, type: !188)
!5156 = !DILocalVariable(name: "owner", arg: 5, scope: !5150, file: !3, line: 439, type: !165)
!5157 = !DILocalVariable(name: "mod_name", arg: 6, scope: !5150, file: !3, line: 440, type: !188)
!5158 = !DILocalVariable(name: "pci_slot", scope: !5150, file: !3, line: 442, type: !4175)
!5159 = !DILocation(line: 438, column: 46, scope: !5150)
!5160 = !DILocation(line: 438, column: 68, scope: !5150)
!5161 = !DILocation(line: 439, column: 8, scope: !5150)
!5162 = !DILocation(line: 439, column: 27, scope: !5150)
!5163 = !DILocation(line: 439, column: 48, scope: !5150)
!5164 = !DILocation(line: 440, column: 16, scope: !5150)
!5165 = !DILocation(line: 442, column: 2, scope: !5150)
!5166 = !DILocation(line: 442, column: 19, scope: !5150)
!5167 = !DILocation(line: 444, column: 6, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 444, column: 6)
!5169 = !DILocation(line: 444, column: 11, scope: !5168)
!5170 = !DILocation(line: 444, column: 6, scope: !5150)
!5171 = !DILocation(line: 445, column: 3, scope: !5168)
!5172 = !DILocation(line: 446, column: 6, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 446, column: 6)
!5174 = !DILocation(line: 446, column: 12, scope: !5173)
!5175 = !DILocation(line: 446, column: 16, scope: !5173)
!5176 = !DILocation(line: 446, column: 6, scope: !5150)
!5177 = !DILocation(line: 447, column: 3, scope: !5173)
!5178 = !DILocation(line: 449, column: 16, scope: !5150)
!5179 = !DILocation(line: 449, column: 2, scope: !5150)
!5180 = !DILocation(line: 449, column: 8, scope: !5150)
!5181 = !DILocation(line: 449, column: 14, scope: !5150)
!5182 = !DILocation(line: 450, column: 19, scope: !5150)
!5183 = !DILocation(line: 450, column: 2, scope: !5150)
!5184 = !DILocation(line: 450, column: 8, scope: !5150)
!5185 = !DILocation(line: 450, column: 17, scope: !5150)
!5186 = !DILocation(line: 457, column: 29, scope: !5150)
!5187 = !DILocation(line: 457, column: 34, scope: !5150)
!5188 = !DILocation(line: 457, column: 41, scope: !5150)
!5189 = !DILocation(line: 457, column: 47, scope: !5150)
!5190 = !DILocation(line: 457, column: 13, scope: !5150)
!5191 = !DILocation(line: 457, column: 11, scope: !5150)
!5192 = !DILocation(line: 458, column: 13, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5150, file: !3, line: 458, column: 6)
!5194 = !DILocation(line: 458, column: 6, scope: !5193)
!5195 = !DILocation(line: 458, column: 6, scope: !5150)
!5196 = !DILocation(line: 459, column: 18, scope: !5193)
!5197 = !DILocation(line: 459, column: 10, scope: !5193)
!5198 = !DILocation(line: 459, column: 3, scope: !5193)
!5199 = !DILocation(line: 461, column: 19, scope: !5150)
!5200 = !DILocation(line: 461, column: 2, scope: !5150)
!5201 = !DILocation(line: 461, column: 8, scope: !5150)
!5202 = !DILocation(line: 461, column: 17, scope: !5150)
!5203 = !DILocation(line: 462, column: 22, scope: !5150)
!5204 = !DILocation(line: 462, column: 2, scope: !5150)
!5205 = !DILocation(line: 462, column: 12, scope: !5150)
!5206 = !DILocation(line: 462, column: 20, scope: !5150)
!5207 = !DILocation(line: 463, column: 2, scope: !5150)
!5208 = !DILocation(line: 464, column: 1, scope: !5150)
!5209 = distinct !DISubprogram(name: "pci_hp_add", scope: !3, file: !3, line: 477, type: !4150, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5210)
!5210 = !{!5211, !5212, !5213}
!5211 = !DILocalVariable(name: "slot", arg: 1, scope: !5209, file: !3, line: 477, type: !4139)
!5212 = !DILocalVariable(name: "pci_slot", scope: !5209, file: !3, line: 479, type: !4175)
!5213 = !DILocalVariable(name: "result", scope: !5209, file: !3, line: 480, type: !103)
!5214 = !DILocation(line: 477, column: 37, scope: !5209)
!5215 = !DILocation(line: 479, column: 2, scope: !5209)
!5216 = !DILocation(line: 479, column: 19, scope: !5209)
!5217 = !DILocation(line: 479, column: 30, scope: !5209)
!5218 = !DILocation(line: 479, column: 36, scope: !5209)
!5219 = !DILocation(line: 480, column: 2, scope: !5209)
!5220 = !DILocation(line: 480, column: 6, scope: !5209)
!5221 = !DILocation(line: 482, column: 23, scope: !5209)
!5222 = !DILocation(line: 482, column: 11, scope: !5209)
!5223 = !DILocation(line: 482, column: 9, scope: !5209)
!5224 = !DILocation(line: 483, column: 6, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 483, column: 6)
!5226 = !DILocation(line: 483, column: 6, scope: !5209)
!5227 = !DILocation(line: 484, column: 10, scope: !5225)
!5228 = !DILocation(line: 484, column: 3, scope: !5225)
!5229 = !DILocation(line: 486, column: 18, scope: !5209)
!5230 = !DILocation(line: 486, column: 28, scope: !5209)
!5231 = !DILocation(line: 486, column: 2, scope: !5209)
!5232 = !DILocation(line: 487, column: 2, scope: !5209)
!5233 = !DILocation(line: 488, column: 12, scope: !5209)
!5234 = !DILocation(line: 488, column: 18, scope: !5209)
!5235 = !DILocation(line: 488, column: 2, scope: !5209)
!5236 = !DILocation(line: 489, column: 2, scope: !5209)
!5237 = !DILocation(line: 490, column: 2, scope: !5209)
!5238 = !DILocation(line: 490, column: 2, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 490, column: 2)
!5240 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 490, column: 2)
!5241 = !{i8 0, i8 2}
!5242 = !DILocation(line: 490, column: 2, scope: !5240)
!5243 = !DILocation(line: 490, column: 2, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 490, column: 2)
!5245 = !DILocation(line: 490, column: 2, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 490, column: 2)
!5247 = !DILocation(line: 491, column: 2, scope: !5209)
!5248 = !DILocation(line: 492, column: 1, scope: !5209)
!5249 = distinct !DISubprogram(name: "pci_hp_destroy", scope: !3, file: !3, line: 551, type: !5250, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5252)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{null, !4139}
!5252 = !{!5253, !5254}
!5253 = !DILocalVariable(name: "slot", arg: 1, scope: !5249, file: !3, line: 551, type: !4139)
!5254 = !DILocalVariable(name: "pci_slot", scope: !5249, file: !3, line: 553, type: !4175)
!5255 = !DILocation(line: 551, column: 42, scope: !5249)
!5256 = !DILocation(line: 553, column: 2, scope: !5249)
!5257 = !DILocation(line: 553, column: 19, scope: !5249)
!5258 = !DILocation(line: 553, column: 30, scope: !5249)
!5259 = !DILocation(line: 553, column: 36, scope: !5249)
!5260 = !DILocation(line: 555, column: 2, scope: !5249)
!5261 = !DILocation(line: 555, column: 8, scope: !5249)
!5262 = !DILocation(line: 555, column: 17, scope: !5249)
!5263 = !DILocation(line: 556, column: 2, scope: !5249)
!5264 = !DILocation(line: 556, column: 12, scope: !5249)
!5265 = !DILocation(line: 556, column: 20, scope: !5249)
!5266 = !DILocation(line: 557, column: 19, scope: !5249)
!5267 = !DILocation(line: 557, column: 2, scope: !5249)
!5268 = !DILocation(line: 558, column: 1, scope: !5249)
!5269 = !DISubprogram(name: "pci_create_slot", scope: !4177, file: !4177, line: 1127, type: !5270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5270 = !DISubroutineType(types: !5271)
!5271 = !{!4175, !4180, !103, !188, !4139}
!5272 = distinct !DISubprogram(name: "IS_ERR", scope: !5273, file: !5273, line: 59, type: !5274, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5276)
!5273 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5274 = !DISubroutineType(types: !5275)
!5275 = !{!1469, !2220}
!5276 = !{!5277}
!5277 = !DILocalVariable(name: "ptr", arg: 1, scope: !5272, file: !5273, line: 59, type: !2220)
!5278 = !DILocation(line: 59, column: 60, scope: !5272)
!5279 = !DILocation(line: 61, column: 9, scope: !5272)
!5280 = !DILocation(line: 61, column: 2, scope: !5272)
!5281 = distinct !DISubprogram(name: "PTR_ERR", scope: !5273, file: !5273, line: 49, type: !5282, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5284)
!5282 = !DISubroutineType(types: !5283)
!5283 = !{!305, !2220}
!5284 = !{!5285}
!5285 = !DILocalVariable(name: "ptr", arg: 1, scope: !5281, file: !5273, line: 49, type: !2220)
!5286 = !DILocation(line: 49, column: 61, scope: !5281)
!5287 = !DILocation(line: 51, column: 16, scope: !5281)
!5288 = !DILocation(line: 51, column: 9, scope: !5281)
!5289 = !DILocation(line: 51, column: 2, scope: !5281)
!5290 = distinct !DISubprogram(name: "fs_add_slot", scope: !3, file: !3, line: 292, type: !5291, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5293)
!5291 = !DISubroutineType(types: !5292)
!5292 = !{!103, !4175}
!5293 = !{!5294, !5295, !5296, !5297, !5298, !5299, !5300, !5301}
!5294 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5290, file: !3, line: 292, type: !4175)
!5295 = !DILocalVariable(name: "retval", scope: !5290, file: !3, line: 294, type: !103)
!5296 = !DILabel(scope: !5290, name: "exit_test", file: !3, line: 336)
!5297 = !DILabel(scope: !5290, name: "exit_adapter", file: !3, line: 340)
!5298 = !DILabel(scope: !5290, name: "exit_latch", file: !3, line: 343)
!5299 = !DILabel(scope: !5290, name: "exit_attention", file: !3, line: 347)
!5300 = !DILabel(scope: !5290, name: "exit_power", file: !3, line: 350)
!5301 = !DILabel(scope: !5290, name: "exit", file: !3, line: 352)
!5302 = !DILocation(line: 292, column: 41, scope: !5290)
!5303 = !DILocation(line: 294, column: 2, scope: !5290)
!5304 = !DILocation(line: 294, column: 6, scope: !5290)
!5305 = !DILocation(line: 297, column: 28, scope: !5290)
!5306 = !DILocation(line: 297, column: 2, scope: !5290)
!5307 = !DILocation(line: 299, column: 21, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 299, column: 6)
!5309 = !DILocation(line: 299, column: 6, scope: !5308)
!5310 = !DILocation(line: 299, column: 6, scope: !5290)
!5311 = !DILocation(line: 300, column: 31, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 299, column: 32)
!5313 = !DILocation(line: 300, column: 41, scope: !5312)
!5314 = !DILocation(line: 300, column: 12, scope: !5312)
!5315 = !DILocation(line: 300, column: 10, scope: !5312)
!5316 = !DILocation(line: 302, column: 7, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 302, column: 7)
!5318 = !DILocation(line: 302, column: 7, scope: !5312)
!5319 = !DILocation(line: 303, column: 4, scope: !5317)
!5320 = !DILocation(line: 304, column: 2, scope: !5312)
!5321 = !DILocation(line: 306, column: 25, scope: !5322)
!5322 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 306, column: 6)
!5323 = !DILocation(line: 306, column: 6, scope: !5322)
!5324 = !DILocation(line: 306, column: 6, scope: !5290)
!5325 = !DILocation(line: 307, column: 31, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 306, column: 36)
!5327 = !DILocation(line: 307, column: 41, scope: !5326)
!5328 = !DILocation(line: 307, column: 12, scope: !5326)
!5329 = !DILocation(line: 307, column: 10, scope: !5326)
!5330 = !DILocation(line: 309, column: 7, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 309, column: 7)
!5332 = !DILocation(line: 309, column: 7, scope: !5326)
!5333 = !DILocation(line: 310, column: 4, scope: !5331)
!5334 = !DILocation(line: 311, column: 2, scope: !5326)
!5335 = !DILocation(line: 313, column: 21, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 313, column: 6)
!5337 = !DILocation(line: 313, column: 6, scope: !5336)
!5338 = !DILocation(line: 313, column: 6, scope: !5290)
!5339 = !DILocation(line: 314, column: 31, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 313, column: 32)
!5341 = !DILocation(line: 314, column: 41, scope: !5340)
!5342 = !DILocation(line: 314, column: 12, scope: !5340)
!5343 = !DILocation(line: 314, column: 10, scope: !5340)
!5344 = !DILocation(line: 316, column: 7, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5340, file: !3, line: 316, column: 7)
!5346 = !DILocation(line: 316, column: 7, scope: !5340)
!5347 = !DILocation(line: 317, column: 4, scope: !5345)
!5348 = !DILocation(line: 318, column: 2, scope: !5340)
!5349 = !DILocation(line: 320, column: 23, scope: !5350)
!5350 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 320, column: 6)
!5351 = !DILocation(line: 320, column: 6, scope: !5350)
!5352 = !DILocation(line: 320, column: 6, scope: !5290)
!5353 = !DILocation(line: 321, column: 31, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 320, column: 34)
!5355 = !DILocation(line: 321, column: 41, scope: !5354)
!5356 = !DILocation(line: 321, column: 12, scope: !5354)
!5357 = !DILocation(line: 321, column: 10, scope: !5354)
!5358 = !DILocation(line: 323, column: 7, scope: !5359)
!5359 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 323, column: 7)
!5360 = !DILocation(line: 323, column: 7, scope: !5354)
!5361 = !DILocation(line: 324, column: 4, scope: !5359)
!5362 = !DILocation(line: 325, column: 2, scope: !5354)
!5363 = !DILocation(line: 327, column: 20, scope: !5364)
!5364 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 327, column: 6)
!5365 = !DILocation(line: 327, column: 6, scope: !5364)
!5366 = !DILocation(line: 327, column: 6, scope: !5290)
!5367 = !DILocation(line: 328, column: 31, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5364, file: !3, line: 327, column: 31)
!5369 = !DILocation(line: 328, column: 41, scope: !5368)
!5370 = !DILocation(line: 328, column: 12, scope: !5368)
!5371 = !DILocation(line: 328, column: 10, scope: !5368)
!5372 = !DILocation(line: 330, column: 7, scope: !5373)
!5373 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 330, column: 7)
!5374 = !DILocation(line: 330, column: 7, scope: !5368)
!5375 = !DILocation(line: 331, column: 4, scope: !5373)
!5376 = !DILocation(line: 332, column: 2, scope: !5368)
!5377 = !DILocation(line: 334, column: 2, scope: !5290)
!5378 = !DILocation(line: 336, column: 1, scope: !5290)
!5379 = !DILocation(line: 337, column: 23, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 337, column: 6)
!5381 = !DILocation(line: 337, column: 6, scope: !5380)
!5382 = !DILocation(line: 337, column: 6, scope: !5290)
!5383 = !DILocation(line: 338, column: 22, scope: !5380)
!5384 = !DILocation(line: 338, column: 32, scope: !5380)
!5385 = !DILocation(line: 338, column: 3, scope: !5380)
!5386 = !DILocation(line: 337, column: 31, scope: !5380)
!5387 = !DILocation(line: 340, column: 1, scope: !5290)
!5388 = !DILocation(line: 341, column: 21, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 341, column: 6)
!5390 = !DILocation(line: 341, column: 6, scope: !5389)
!5391 = !DILocation(line: 341, column: 6, scope: !5290)
!5392 = !DILocation(line: 342, column: 22, scope: !5389)
!5393 = !DILocation(line: 342, column: 32, scope: !5389)
!5394 = !DILocation(line: 342, column: 3, scope: !5389)
!5395 = !DILocation(line: 341, column: 29, scope: !5389)
!5396 = !DILocation(line: 343, column: 1, scope: !5290)
!5397 = !DILocation(line: 344, column: 25, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 344, column: 6)
!5399 = !DILocation(line: 344, column: 6, scope: !5398)
!5400 = !DILocation(line: 344, column: 6, scope: !5290)
!5401 = !DILocation(line: 345, column: 22, scope: !5398)
!5402 = !DILocation(line: 345, column: 32, scope: !5398)
!5403 = !DILocation(line: 345, column: 3, scope: !5398)
!5404 = !DILocation(line: 344, column: 33, scope: !5398)
!5405 = !DILocation(line: 347, column: 1, scope: !5290)
!5406 = !DILocation(line: 348, column: 21, scope: !5407)
!5407 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 348, column: 6)
!5408 = !DILocation(line: 348, column: 6, scope: !5407)
!5409 = !DILocation(line: 348, column: 6, scope: !5290)
!5410 = !DILocation(line: 349, column: 22, scope: !5407)
!5411 = !DILocation(line: 349, column: 32, scope: !5407)
!5412 = !DILocation(line: 349, column: 3, scope: !5407)
!5413 = !DILocation(line: 348, column: 29, scope: !5407)
!5414 = !DILocation(line: 350, column: 1, scope: !5290)
!5415 = !DILocation(line: 351, column: 28, scope: !5290)
!5416 = !DILocation(line: 351, column: 2, scope: !5290)
!5417 = !DILocation(line: 352, column: 1, scope: !5290)
!5418 = !DILocation(line: 353, column: 9, scope: !5290)
!5419 = !DILocation(line: 354, column: 1, scope: !5290)
!5420 = !DILocation(line: 353, column: 2, scope: !5290)
!5421 = !DISubprogram(name: "kobject_uevent", scope: !148, file: !148, line: 214, type: !5422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5422 = !DISubroutineType(types: !5423)
!5423 = !{!103, !192, !147}
!5424 = !DISubprogram(name: "mutex_lock", scope: !650, file: !650, line: 227, type: !5425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{null, !5427}
!5427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!5428 = distinct !DISubprogram(name: "list_add", scope: !5429, file: !5429, line: 167, type: !5430, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5432)
!5429 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5430 = !DISubroutineType(types: !5431)
!5431 = !{null, !174, !174}
!5432 = !{!5433, !5434}
!5433 = !DILocalVariable(name: "new", arg: 1, scope: !5428, file: !5429, line: 167, type: !174)
!5434 = !DILocalVariable(name: "head", arg: 2, scope: !5428, file: !5429, line: 167, type: !174)
!5435 = !DILocation(line: 167, column: 47, scope: !5428)
!5436 = !DILocation(line: 167, column: 70, scope: !5428)
!5437 = !DILocation(line: 169, column: 13, scope: !5428)
!5438 = !DILocation(line: 169, column: 18, scope: !5428)
!5439 = !DILocation(line: 169, column: 24, scope: !5428)
!5440 = !DILocation(line: 169, column: 30, scope: !5428)
!5441 = !DILocation(line: 169, column: 2, scope: !5428)
!5442 = !DILocation(line: 170, column: 1, scope: !5428)
!5443 = !DISubprogram(name: "mutex_unlock", scope: !650, file: !650, line: 246, type: !5425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5444 = !DISubprogram(name: "_printk", scope: !5445, file: !5445, line: 153, type: !5446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5445 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5446 = !DISubroutineType(types: !5447)
!5447 = !{!103, !188, null}
!5448 = distinct !DISubprogram(name: "hotplug_slot_name", scope: !4141, file: !4141, line: 68, type: !5449, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5453)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!188, !5451}
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4140)
!5453 = !{!5454}
!5454 = !DILocalVariable(name: "slot", arg: 1, scope: !5448, file: !4141, line: 68, type: !5451)
!5455 = !DILocation(line: 68, column: 72, scope: !5448)
!5456 = !DILocation(line: 70, column: 23, scope: !5448)
!5457 = !DILocation(line: 70, column: 29, scope: !5448)
!5458 = !DILocation(line: 70, column: 9, scope: !5448)
!5459 = !DILocation(line: 70, column: 2, scope: !5448)
!5460 = distinct !DISubprogram(name: "pci_hp_deregister", scope: !3, file: !3, line: 504, type: !5250, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5461)
!5461 = !{!5462}
!5462 = !DILocalVariable(name: "slot", arg: 1, scope: !5460, file: !3, line: 504, type: !4139)
!5463 = !DILocation(line: 504, column: 45, scope: !5460)
!5464 = !DILocation(line: 506, column: 13, scope: !5460)
!5465 = !DILocation(line: 506, column: 2, scope: !5460)
!5466 = !DILocation(line: 507, column: 17, scope: !5460)
!5467 = !DILocation(line: 507, column: 2, scope: !5460)
!5468 = !DILocation(line: 508, column: 1, scope: !5460)
!5469 = distinct !DISubprogram(name: "pci_hp_del", scope: !3, file: !3, line: 519, type: !5250, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5470)
!5470 = !{!5471, !5472, !5473, !5476, !5479, !5482}
!5471 = !DILocalVariable(name: "slot", arg: 1, scope: !5469, file: !3, line: 519, type: !4139)
!5472 = !DILocalVariable(name: "temp", scope: !5469, file: !3, line: 521, type: !4139)
!5473 = !DILocalVariable(name: "__ret_warn_on", scope: !5474, file: !3, line: 523, type: !103)
!5474 = distinct !DILexicalBlock(scope: !5475, file: !3, line: 523, column: 6)
!5475 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 523, column: 6)
!5476 = !DILocalVariable(name: "__flags", scope: !5477, file: !3, line: 523, type: !103)
!5477 = distinct !DILexicalBlock(scope: !5478, file: !3, line: 523, column: 6)
!5478 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 523, column: 6)
!5479 = !DILocalVariable(name: "__ret_warn_on", scope: !5480, file: !3, line: 528, type: !103)
!5480 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 528, column: 6)
!5481 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 528, column: 6)
!5482 = !DILocalVariable(name: "__flags", scope: !5483, file: !3, line: 528, type: !103)
!5483 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 528, column: 6)
!5484 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 528, column: 6)
!5485 = !DILocation(line: 519, column: 38, scope: !5469)
!5486 = !DILocation(line: 521, column: 2, scope: !5469)
!5487 = !DILocation(line: 521, column: 23, scope: !5469)
!5488 = !DILocation(line: 523, column: 6, scope: !5474)
!5489 = !DILocation(line: 523, column: 6, scope: !5478)
!5490 = !DILocation(line: 523, column: 6, scope: !5477)
!5491 = !DILocation(line: 523, column: 6, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 523, column: 6)
!5493 = !DILocation(line: 523, column: 6, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 523, column: 6)
!5495 = !{i64 2155950017, i64 2155950046, i64 2155950092, i64 2155950150, i64 2155950204, i64 2155950258, i64 2155950313, i64 2155950344, i64 2155950652, i64 2155950658, i64 2155950705, i64 2155950728, i64 2155950754}
!5496 = !DILocation(line: 523, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 523, column: 6)
!5498 = !DILocation(line: 523, column: 6, scope: !5475)
!5499 = !DILocation(line: 523, column: 6, scope: !5469)
!5500 = !DILocation(line: 524, column: 3, scope: !5475)
!5501 = !DILocation(line: 526, column: 2, scope: !5469)
!5502 = !DILocation(line: 527, column: 46, scope: !5469)
!5503 = !DILocation(line: 527, column: 28, scope: !5469)
!5504 = !DILocation(line: 527, column: 9, scope: !5469)
!5505 = !DILocation(line: 527, column: 7, scope: !5469)
!5506 = !DILocation(line: 528, column: 6, scope: !5480)
!5507 = !DILocation(line: 528, column: 6, scope: !5484)
!5508 = !DILocation(line: 528, column: 6, scope: !5483)
!5509 = !DILocation(line: 528, column: 6, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 528, column: 6)
!5511 = !DILocation(line: 528, column: 6, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 528, column: 6)
!5513 = !{i64 2155951531, i64 2155951560, i64 2155951606, i64 2155951664, i64 2155951718, i64 2155951772, i64 2155951827, i64 2155951858, i64 2155952166, i64 2155952172, i64 2155952219, i64 2155952242, i64 2155952268}
!5514 = !DILocation(line: 528, column: 6, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 528, column: 6)
!5516 = !DILocation(line: 528, column: 6, scope: !5481)
!5517 = !DILocation(line: 528, column: 6, scope: !5469)
!5518 = !DILocation(line: 529, column: 3, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5481, file: !3, line: 528, column: 29)
!5520 = !DILocation(line: 530, column: 3, scope: !5519)
!5521 = !DILocation(line: 533, column: 12, scope: !5469)
!5522 = !DILocation(line: 533, column: 18, scope: !5469)
!5523 = !DILocation(line: 533, column: 2, scope: !5469)
!5524 = !DILocation(line: 534, column: 2, scope: !5469)
!5525 = !DILocation(line: 535, column: 2, scope: !5469)
!5526 = !DILocation(line: 535, column: 2, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5528, file: !3, line: 535, column: 2)
!5528 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 535, column: 2)
!5529 = !DILocation(line: 535, column: 2, scope: !5528)
!5530 = !DILocation(line: 535, column: 2, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 535, column: 2)
!5532 = !DILocation(line: 535, column: 2, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 535, column: 2)
!5534 = !DILocation(line: 536, column: 17, scope: !5469)
!5535 = !DILocation(line: 536, column: 23, scope: !5469)
!5536 = !DILocation(line: 536, column: 2, scope: !5469)
!5537 = !DILocation(line: 537, column: 1, scope: !5469)
!5538 = distinct !DISubprogram(name: "get_slot_from_name", scope: !3, file: !3, line: 378, type: !5539, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5541)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!4139, !188}
!5541 = !{!5542, !5543, !5544, !5547}
!5542 = !DILocalVariable(name: "name", arg: 1, scope: !5538, file: !3, line: 378, type: !188)
!5543 = !DILocalVariable(name: "slot", scope: !5538, file: !3, line: 380, type: !4139)
!5544 = !DILocalVariable(name: "__mptr", scope: !5545, file: !3, line: 382, type: !164)
!5545 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 382, column: 2)
!5546 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 382, column: 2)
!5547 = !DILocalVariable(name: "__mptr", scope: !5548, file: !3, line: 382, type: !164)
!5548 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 382, column: 2)
!5549 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 382, column: 2)
!5550 = !DILocation(line: 378, column: 60, scope: !5538)
!5551 = !DILocation(line: 380, column: 2, scope: !5538)
!5552 = !DILocation(line: 380, column: 23, scope: !5538)
!5553 = !DILocation(line: 382, column: 2, scope: !5545)
!5554 = !DILocation(line: 382, column: 2, scope: !5546)
!5555 = !DILocation(line: 382, column: 2, scope: !5549)
!5556 = !DILocation(line: 383, column: 32, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 383, column: 7)
!5558 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 382, column: 63)
!5559 = !DILocation(line: 383, column: 14, scope: !5557)
!5560 = !DILocation(line: 383, column: 39, scope: !5557)
!5561 = !DILocation(line: 383, column: 7, scope: !5557)
!5562 = !DILocation(line: 383, column: 45, scope: !5557)
!5563 = !DILocation(line: 383, column: 7, scope: !5558)
!5564 = !DILocation(line: 384, column: 11, scope: !5557)
!5565 = !DILocation(line: 384, column: 4, scope: !5557)
!5566 = !DILocation(line: 385, column: 2, scope: !5558)
!5567 = !DILocation(line: 382, column: 2, scope: !5548)
!5568 = distinct !{!5568, !5554, !5569, !5570, !5571}
!5569 = !DILocation(line: 385, column: 2, scope: !5546)
!5570 = !{!"llvm.loop.mustprogress"}
!5571 = !{!"llvm.loop.unroll.disable"}
!5572 = !DILocation(line: 386, column: 2, scope: !5538)
!5573 = !DILocation(line: 387, column: 1, scope: !5538)
!5574 = distinct !DISubprogram(name: "list_del", scope: !5429, file: !5429, line: 227, type: !5575, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5577)
!5575 = !DISubroutineType(types: !5576)
!5576 = !{null, !174}
!5577 = !{!5578}
!5578 = !DILocalVariable(name: "entry", arg: 1, scope: !5574, file: !5429, line: 227, type: !174)
!5579 = !DILocation(line: 227, column: 47, scope: !5574)
!5580 = !DILocation(line: 229, column: 19, scope: !5574)
!5581 = !DILocation(line: 229, column: 2, scope: !5574)
!5582 = !DILocation(line: 230, column: 2, scope: !5574)
!5583 = !DILocation(line: 230, column: 9, scope: !5574)
!5584 = !DILocation(line: 230, column: 14, scope: !5574)
!5585 = !DILocation(line: 231, column: 2, scope: !5574)
!5586 = !DILocation(line: 231, column: 9, scope: !5574)
!5587 = !DILocation(line: 231, column: 14, scope: !5574)
!5588 = !DILocation(line: 232, column: 1, scope: !5574)
!5589 = distinct !DISubprogram(name: "fs_remove_slot", scope: !3, file: !3, line: 356, type: !5590, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5592)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{null, !4175}
!5592 = !{!5593}
!5593 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5589, file: !3, line: 356, type: !4175)
!5594 = !DILocation(line: 356, column: 45, scope: !5589)
!5595 = !DILocation(line: 358, column: 21, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 358, column: 6)
!5597 = !DILocation(line: 358, column: 6, scope: !5596)
!5598 = !DILocation(line: 358, column: 6, scope: !5589)
!5599 = !DILocation(line: 359, column: 22, scope: !5596)
!5600 = !DILocation(line: 359, column: 32, scope: !5596)
!5601 = !DILocation(line: 359, column: 3, scope: !5596)
!5602 = !DILocation(line: 361, column: 25, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 361, column: 6)
!5604 = !DILocation(line: 361, column: 6, scope: !5603)
!5605 = !DILocation(line: 361, column: 6, scope: !5589)
!5606 = !DILocation(line: 362, column: 22, scope: !5603)
!5607 = !DILocation(line: 362, column: 32, scope: !5603)
!5608 = !DILocation(line: 362, column: 3, scope: !5603)
!5609 = !DILocation(line: 365, column: 21, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 365, column: 6)
!5611 = !DILocation(line: 365, column: 6, scope: !5610)
!5612 = !DILocation(line: 365, column: 6, scope: !5589)
!5613 = !DILocation(line: 366, column: 22, scope: !5610)
!5614 = !DILocation(line: 366, column: 32, scope: !5610)
!5615 = !DILocation(line: 366, column: 3, scope: !5610)
!5616 = !DILocation(line: 368, column: 23, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 368, column: 6)
!5618 = !DILocation(line: 368, column: 6, scope: !5617)
!5619 = !DILocation(line: 368, column: 6, scope: !5589)
!5620 = !DILocation(line: 369, column: 22, scope: !5617)
!5621 = !DILocation(line: 369, column: 32, scope: !5617)
!5622 = !DILocation(line: 369, column: 3, scope: !5617)
!5623 = !DILocation(line: 372, column: 20, scope: !5624)
!5624 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 372, column: 6)
!5625 = !DILocation(line: 372, column: 6, scope: !5624)
!5626 = !DILocation(line: 372, column: 6, scope: !5589)
!5627 = !DILocation(line: 373, column: 22, scope: !5624)
!5628 = !DILocation(line: 373, column: 32, scope: !5624)
!5629 = !DILocation(line: 373, column: 3, scope: !5624)
!5630 = !DILocation(line: 375, column: 28, scope: !5589)
!5631 = !DILocation(line: 375, column: 2, scope: !5589)
!5632 = !DILocation(line: 376, column: 1, scope: !5589)
!5633 = !DISubprogram(name: "pci_destroy_slot", scope: !4177, file: !4177, line: 1130, type: !5590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5634 = distinct !DISubprogram(name: "__initstub__kmod_pci_hotplug__331_573_pci_hotplug_init6", scope: !3, file: !3, line: 573, type: !3920, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5635 = !DILocation(line: 573, column: 1, scope: !5634)
!5636 = distinct !DISubprogram(name: "pci_hotplug_init", scope: !3, file: !3, line: 561, type: !3920, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5637)
!5637 = !{!5638}
!5638 = !DILocalVariable(name: "result", scope: !5636, file: !3, line: 563, type: !103)
!5639 = !DILocation(line: 563, column: 2, scope: !5636)
!5640 = !DILocation(line: 563, column: 6, scope: !5636)
!5641 = !DILocation(line: 565, column: 29, scope: !5636)
!5642 = !DILocation(line: 565, column: 11, scope: !5636)
!5643 = !DILocation(line: 565, column: 9, scope: !5636)
!5644 = !DILocation(line: 566, column: 6, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 566, column: 6)
!5646 = !DILocation(line: 566, column: 6, scope: !5636)
!5647 = !DILocation(line: 567, column: 3, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5649, file: !3, line: 567, column: 3)
!5649 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 566, column: 14)
!5650 = !DILocation(line: 567, column: 3, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 567, column: 3)
!5652 = !DILocation(line: 568, column: 10, scope: !5649)
!5653 = !DILocation(line: 568, column: 3, scope: !5649)
!5654 = !DILocation(line: 571, column: 9, scope: !5636)
!5655 = !DILocation(line: 571, column: 2, scope: !5636)
!5656 = !DILocation(line: 572, column: 1, scope: !5636)
!5657 = !DISubprogram(name: "pci_hp_create_module_link", scope: !4177, file: !4177, line: 2398, type: !5590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5658 = distinct !DISubprogram(name: "has_power_file", scope: !3, file: !3, line: 234, type: !5659, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5661)
!5659 = !DISubroutineType(types: !5660)
!5660 = !{!1469, !4175}
!5661 = !{!5662, !5663}
!5662 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5658, file: !3, line: 234, type: !4175)
!5663 = !DILocalVariable(name: "slot", scope: !5658, file: !3, line: 236, type: !4139)
!5664 = !DILocation(line: 234, column: 45, scope: !5658)
!5665 = !DILocation(line: 236, column: 2, scope: !5658)
!5666 = !DILocation(line: 236, column: 23, scope: !5658)
!5667 = !DILocation(line: 236, column: 30, scope: !5658)
!5668 = !DILocation(line: 236, column: 40, scope: !5658)
!5669 = !DILocation(line: 238, column: 8, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 238, column: 6)
!5671 = !DILocation(line: 238, column: 14, scope: !5670)
!5672 = !DILocation(line: 238, column: 19, scope: !5670)
!5673 = !DILocation(line: 238, column: 25, scope: !5670)
!5674 = !DILocation(line: 238, column: 6, scope: !5658)
!5675 = !DILocation(line: 239, column: 3, scope: !5670)
!5676 = !DILocation(line: 240, column: 7, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 240, column: 6)
!5678 = !DILocation(line: 240, column: 13, scope: !5677)
!5679 = !DILocation(line: 240, column: 18, scope: !5677)
!5680 = !DILocation(line: 240, column: 6, scope: !5677)
!5681 = !DILocation(line: 240, column: 31, scope: !5677)
!5682 = !DILocation(line: 241, column: 7, scope: !5677)
!5683 = !DILocation(line: 241, column: 13, scope: !5677)
!5684 = !DILocation(line: 241, column: 18, scope: !5677)
!5685 = !DILocation(line: 241, column: 6, scope: !5677)
!5686 = !DILocation(line: 241, column: 32, scope: !5677)
!5687 = !DILocation(line: 242, column: 7, scope: !5677)
!5688 = !DILocation(line: 242, column: 13, scope: !5677)
!5689 = !DILocation(line: 242, column: 18, scope: !5677)
!5690 = !DILocation(line: 242, column: 6, scope: !5677)
!5691 = !DILocation(line: 240, column: 6, scope: !5658)
!5692 = !DILocation(line: 243, column: 3, scope: !5677)
!5693 = !DILocation(line: 244, column: 2, scope: !5658)
!5694 = !DILocation(line: 245, column: 1, scope: !5658)
!5695 = distinct !DISubprogram(name: "sysfs_create_file", scope: !295, file: !295, line: 620, type: !5696, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5700)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!103, !192, !5698}
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!5700 = !{!5701, !5702}
!5701 = !DILocalVariable(name: "kobj", arg: 1, scope: !5695, file: !295, line: 620, type: !192)
!5702 = !DILocalVariable(name: "attr", arg: 2, scope: !5695, file: !295, line: 621, type: !5698)
!5703 = !DILocation(line: 620, column: 66, scope: !5695)
!5704 = !DILocation(line: 621, column: 32, scope: !5695)
!5705 = !DILocation(line: 623, column: 30, scope: !5695)
!5706 = !DILocation(line: 623, column: 36, scope: !5695)
!5707 = !DILocation(line: 623, column: 9, scope: !5695)
!5708 = !DILocation(line: 623, column: 2, scope: !5695)
!5709 = distinct !DISubprogram(name: "has_attention_file", scope: !3, file: !3, line: 247, type: !5659, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5710)
!5710 = !{!5711, !5712}
!5711 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5709, file: !3, line: 247, type: !4175)
!5712 = !DILocalVariable(name: "slot", scope: !5709, file: !3, line: 249, type: !4139)
!5713 = !DILocation(line: 247, column: 49, scope: !5709)
!5714 = !DILocation(line: 249, column: 2, scope: !5709)
!5715 = !DILocation(line: 249, column: 23, scope: !5709)
!5716 = !DILocation(line: 249, column: 30, scope: !5709)
!5717 = !DILocation(line: 249, column: 40, scope: !5709)
!5718 = !DILocation(line: 251, column: 8, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 251, column: 6)
!5720 = !DILocation(line: 251, column: 14, scope: !5719)
!5721 = !DILocation(line: 251, column: 19, scope: !5719)
!5722 = !DILocation(line: 251, column: 25, scope: !5719)
!5723 = !DILocation(line: 251, column: 6, scope: !5709)
!5724 = !DILocation(line: 252, column: 3, scope: !5719)
!5725 = !DILocation(line: 253, column: 7, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 253, column: 6)
!5727 = !DILocation(line: 253, column: 13, scope: !5726)
!5728 = !DILocation(line: 253, column: 18, scope: !5726)
!5729 = !DILocation(line: 253, column: 6, scope: !5726)
!5730 = !DILocation(line: 253, column: 40, scope: !5726)
!5731 = !DILocation(line: 254, column: 7, scope: !5726)
!5732 = !DILocation(line: 254, column: 13, scope: !5726)
!5733 = !DILocation(line: 254, column: 18, scope: !5726)
!5734 = !DILocation(line: 254, column: 6, scope: !5726)
!5735 = !DILocation(line: 253, column: 6, scope: !5709)
!5736 = !DILocation(line: 255, column: 3, scope: !5726)
!5737 = !DILocation(line: 256, column: 2, scope: !5709)
!5738 = !DILocation(line: 257, column: 1, scope: !5709)
!5739 = distinct !DISubprogram(name: "has_latch_file", scope: !3, file: !3, line: 259, type: !5659, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5740)
!5740 = !{!5741, !5742}
!5741 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5739, file: !3, line: 259, type: !4175)
!5742 = !DILocalVariable(name: "slot", scope: !5739, file: !3, line: 261, type: !4139)
!5743 = !DILocation(line: 259, column: 45, scope: !5739)
!5744 = !DILocation(line: 261, column: 2, scope: !5739)
!5745 = !DILocation(line: 261, column: 23, scope: !5739)
!5746 = !DILocation(line: 261, column: 30, scope: !5739)
!5747 = !DILocation(line: 261, column: 40, scope: !5739)
!5748 = !DILocation(line: 263, column: 8, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 263, column: 6)
!5750 = !DILocation(line: 263, column: 14, scope: !5749)
!5751 = !DILocation(line: 263, column: 19, scope: !5749)
!5752 = !DILocation(line: 263, column: 25, scope: !5749)
!5753 = !DILocation(line: 263, column: 6, scope: !5739)
!5754 = !DILocation(line: 264, column: 3, scope: !5749)
!5755 = !DILocation(line: 265, column: 6, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5739, file: !3, line: 265, column: 6)
!5757 = !DILocation(line: 265, column: 12, scope: !5756)
!5758 = !DILocation(line: 265, column: 17, scope: !5756)
!5759 = !DILocation(line: 265, column: 6, scope: !5739)
!5760 = !DILocation(line: 266, column: 3, scope: !5756)
!5761 = !DILocation(line: 267, column: 2, scope: !5739)
!5762 = !DILocation(line: 268, column: 1, scope: !5739)
!5763 = distinct !DISubprogram(name: "has_adapter_file", scope: !3, file: !3, line: 270, type: !5659, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5764)
!5764 = !{!5765, !5766}
!5765 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5763, file: !3, line: 270, type: !4175)
!5766 = !DILocalVariable(name: "slot", scope: !5763, file: !3, line: 272, type: !4139)
!5767 = !DILocation(line: 270, column: 47, scope: !5763)
!5768 = !DILocation(line: 272, column: 2, scope: !5763)
!5769 = !DILocation(line: 272, column: 23, scope: !5763)
!5770 = !DILocation(line: 272, column: 30, scope: !5763)
!5771 = !DILocation(line: 272, column: 40, scope: !5763)
!5772 = !DILocation(line: 274, column: 8, scope: !5773)
!5773 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 274, column: 6)
!5774 = !DILocation(line: 274, column: 14, scope: !5773)
!5775 = !DILocation(line: 274, column: 19, scope: !5773)
!5776 = !DILocation(line: 274, column: 25, scope: !5773)
!5777 = !DILocation(line: 274, column: 6, scope: !5763)
!5778 = !DILocation(line: 275, column: 3, scope: !5773)
!5779 = !DILocation(line: 276, column: 6, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 276, column: 6)
!5781 = !DILocation(line: 276, column: 12, scope: !5780)
!5782 = !DILocation(line: 276, column: 17, scope: !5780)
!5783 = !DILocation(line: 276, column: 6, scope: !5763)
!5784 = !DILocation(line: 277, column: 3, scope: !5780)
!5785 = !DILocation(line: 278, column: 2, scope: !5763)
!5786 = !DILocation(line: 279, column: 1, scope: !5763)
!5787 = distinct !DISubprogram(name: "has_test_file", scope: !3, file: !3, line: 281, type: !5659, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5788)
!5788 = !{!5789, !5790}
!5789 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5787, file: !3, line: 281, type: !4175)
!5790 = !DILocalVariable(name: "slot", scope: !5787, file: !3, line: 283, type: !4139)
!5791 = !DILocation(line: 281, column: 44, scope: !5787)
!5792 = !DILocation(line: 283, column: 2, scope: !5787)
!5793 = !DILocation(line: 283, column: 23, scope: !5787)
!5794 = !DILocation(line: 283, column: 30, scope: !5787)
!5795 = !DILocation(line: 283, column: 40, scope: !5787)
!5796 = !DILocation(line: 285, column: 8, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 285, column: 6)
!5798 = !DILocation(line: 285, column: 14, scope: !5797)
!5799 = !DILocation(line: 285, column: 19, scope: !5797)
!5800 = !DILocation(line: 285, column: 25, scope: !5797)
!5801 = !DILocation(line: 285, column: 6, scope: !5787)
!5802 = !DILocation(line: 286, column: 3, scope: !5797)
!5803 = !DILocation(line: 287, column: 6, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 287, column: 6)
!5805 = !DILocation(line: 287, column: 12, scope: !5804)
!5806 = !DILocation(line: 287, column: 17, scope: !5804)
!5807 = !DILocation(line: 287, column: 6, scope: !5787)
!5808 = !DILocation(line: 288, column: 3, scope: !5804)
!5809 = !DILocation(line: 289, column: 2, scope: !5787)
!5810 = !DILocation(line: 290, column: 1, scope: !5787)
!5811 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !295, file: !295, line: 626, type: !5812, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5814)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{null, !192, !5698}
!5814 = !{!5815, !5816}
!5815 = !DILocalVariable(name: "kobj", arg: 1, scope: !5811, file: !295, line: 626, type: !192)
!5816 = !DILocalVariable(name: "attr", arg: 2, scope: !5811, file: !295, line: 627, type: !5698)
!5817 = !DILocation(line: 626, column: 54, scope: !5811)
!5818 = !DILocation(line: 627, column: 34, scope: !5811)
!5819 = !DILocation(line: 629, column: 23, scope: !5811)
!5820 = !DILocation(line: 629, column: 29, scope: !5811)
!5821 = !DILocation(line: 629, column: 2, scope: !5811)
!5822 = !DILocation(line: 630, column: 1, scope: !5811)
!5823 = !DISubprogram(name: "pci_hp_remove_module_link", scope: !4177, file: !4177, line: 2399, type: !5590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5824 = !DISubprogram(name: "sysfs_create_file_ns", scope: !295, file: !295, line: 273, type: !5825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5825 = !DISubroutineType(types: !5826)
!5826 = !{!103, !192, !5698, !2220}
!5827 = distinct !DISubprogram(name: "power_read_file", scope: !3, file: !3, line: 67, type: !5028, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5828)
!5828 = !{!5829, !5830, !5831, !5832}
!5829 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5827, file: !3, line: 67, type: !4175)
!5830 = !DILocalVariable(name: "buf", arg: 2, scope: !5827, file: !3, line: 67, type: !269)
!5831 = !DILocalVariable(name: "retval", scope: !5827, file: !3, line: 69, type: !103)
!5832 = !DILocalVariable(name: "value", scope: !5827, file: !3, line: 70, type: !227)
!5833 = !DILocation(line: 67, column: 49, scope: !5827)
!5834 = !DILocation(line: 67, column: 65, scope: !5827)
!5835 = !DILocation(line: 69, column: 2, scope: !5827)
!5836 = !DILocation(line: 69, column: 6, scope: !5827)
!5837 = !DILocation(line: 70, column: 2, scope: !5827)
!5838 = !DILocation(line: 70, column: 5, scope: !5827)
!5839 = !DILocation(line: 72, column: 28, scope: !5827)
!5840 = !DILocation(line: 72, column: 38, scope: !5827)
!5841 = !DILocation(line: 72, column: 11, scope: !5827)
!5842 = !DILocation(line: 72, column: 9, scope: !5827)
!5843 = !DILocation(line: 73, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5827, file: !3, line: 73, column: 6)
!5845 = !DILocation(line: 73, column: 6, scope: !5827)
!5846 = !DILocation(line: 74, column: 10, scope: !5844)
!5847 = !DILocation(line: 74, column: 3, scope: !5844)
!5848 = !DILocation(line: 76, column: 20, scope: !5827)
!5849 = !DILocation(line: 76, column: 33, scope: !5827)
!5850 = !DILocation(line: 76, column: 9, scope: !5827)
!5851 = !DILocation(line: 76, column: 2, scope: !5827)
!5852 = !DILocation(line: 77, column: 1, scope: !5827)
!5853 = distinct !DISubprogram(name: "power_write_file", scope: !3, file: !3, line: 79, type: !5032, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5854)
!5854 = !{!5855, !5856, !5857, !5858, !5859, !5860, !5861, !5862}
!5855 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5853, file: !3, line: 79, type: !4175)
!5856 = !DILocalVariable(name: "buf", arg: 2, scope: !5853, file: !3, line: 79, type: !188)
!5857 = !DILocalVariable(name: "count", arg: 3, scope: !5853, file: !3, line: 80, type: !316)
!5858 = !DILocalVariable(name: "slot", scope: !5853, file: !3, line: 82, type: !4139)
!5859 = !DILocalVariable(name: "lpower", scope: !5853, file: !3, line: 83, type: !319)
!5860 = !DILocalVariable(name: "power", scope: !5853, file: !3, line: 84, type: !227)
!5861 = !DILocalVariable(name: "retval", scope: !5853, file: !3, line: 85, type: !103)
!5862 = !DILabel(scope: !5853, name: "exit", file: !3, line: 112)
!5863 = !DILocation(line: 79, column: 50, scope: !5853)
!5864 = !DILocation(line: 79, column: 72, scope: !5853)
!5865 = !DILocation(line: 80, column: 12, scope: !5853)
!5866 = !DILocation(line: 82, column: 2, scope: !5853)
!5867 = !DILocation(line: 82, column: 23, scope: !5853)
!5868 = !DILocation(line: 82, column: 30, scope: !5853)
!5869 = !DILocation(line: 82, column: 40, scope: !5853)
!5870 = !DILocation(line: 83, column: 2, scope: !5853)
!5871 = !DILocation(line: 83, column: 16, scope: !5853)
!5872 = !DILocation(line: 84, column: 2, scope: !5853)
!5873 = !DILocation(line: 84, column: 5, scope: !5853)
!5874 = !DILocation(line: 85, column: 2, scope: !5853)
!5875 = !DILocation(line: 85, column: 6, scope: !5853)
!5876 = !DILocation(line: 87, column: 26, scope: !5853)
!5877 = !DILocation(line: 87, column: 11, scope: !5853)
!5878 = !DILocation(line: 87, column: 9, scope: !5853)
!5879 = !DILocation(line: 88, column: 15, scope: !5853)
!5880 = !DILocation(line: 88, column: 22, scope: !5853)
!5881 = !DILocation(line: 88, column: 10, scope: !5853)
!5882 = !DILocation(line: 88, column: 8, scope: !5853)
!5883 = !DILocation(line: 89, column: 2, scope: !5853)
!5884 = !DILocation(line: 89, column: 2, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5886, file: !3, line: 89, column: 2)
!5886 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 89, column: 2)
!5887 = !DILocation(line: 89, column: 2, scope: !5886)
!5888 = !DILocation(line: 89, column: 2, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 89, column: 2)
!5890 = !DILocation(line: 89, column: 2, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5889, file: !3, line: 89, column: 2)
!5892 = !DILocation(line: 91, column: 22, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 91, column: 6)
!5894 = !DILocation(line: 91, column: 28, scope: !5893)
!5895 = !DILocation(line: 91, column: 7, scope: !5893)
!5896 = !DILocation(line: 91, column: 6, scope: !5853)
!5897 = !DILocation(line: 92, column: 10, scope: !5898)
!5898 = distinct !DILexicalBlock(scope: !5893, file: !3, line: 91, column: 36)
!5899 = !DILocation(line: 93, column: 3, scope: !5898)
!5900 = !DILocation(line: 95, column: 10, scope: !5853)
!5901 = !DILocation(line: 95, column: 2, scope: !5853)
!5902 = !DILocation(line: 97, column: 7, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 97, column: 7)
!5904 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 95, column: 17)
!5905 = !DILocation(line: 97, column: 13, scope: !5903)
!5906 = !DILocation(line: 97, column: 18, scope: !5903)
!5907 = !DILocation(line: 97, column: 7, scope: !5904)
!5908 = !DILocation(line: 98, column: 13, scope: !5903)
!5909 = !DILocation(line: 98, column: 19, scope: !5903)
!5910 = !DILocation(line: 98, column: 24, scope: !5903)
!5911 = !DILocation(line: 98, column: 37, scope: !5903)
!5912 = !DILocation(line: 98, column: 11, scope: !5903)
!5913 = !DILocation(line: 98, column: 4, scope: !5903)
!5914 = !DILocation(line: 99, column: 3, scope: !5904)
!5915 = !DILocation(line: 102, column: 7, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 102, column: 7)
!5917 = !DILocation(line: 102, column: 13, scope: !5916)
!5918 = !DILocation(line: 102, column: 18, scope: !5916)
!5919 = !DILocation(line: 102, column: 7, scope: !5904)
!5920 = !DILocation(line: 103, column: 13, scope: !5916)
!5921 = !DILocation(line: 103, column: 19, scope: !5916)
!5922 = !DILocation(line: 103, column: 24, scope: !5916)
!5923 = !DILocation(line: 103, column: 36, scope: !5916)
!5924 = !DILocation(line: 103, column: 11, scope: !5916)
!5925 = !DILocation(line: 103, column: 4, scope: !5916)
!5926 = !DILocation(line: 104, column: 3, scope: !5904)
!5927 = !DILocation(line: 107, column: 3, scope: !5928)
!5928 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 107, column: 3)
!5929 = !DILocation(line: 107, column: 3, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5928, file: !3, line: 107, column: 3)
!5931 = !DILocation(line: 108, column: 10, scope: !5904)
!5932 = !DILocation(line: 109, column: 2, scope: !5904)
!5933 = !DILocation(line: 110, column: 13, scope: !5853)
!5934 = !DILocation(line: 110, column: 19, scope: !5853)
!5935 = !DILocation(line: 110, column: 2, scope: !5853)
!5936 = !DILocation(line: 112, column: 1, scope: !5853)
!5937 = !DILocation(line: 113, column: 6, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5853, file: !3, line: 113, column: 6)
!5939 = !DILocation(line: 113, column: 6, scope: !5853)
!5940 = !DILocation(line: 114, column: 10, scope: !5938)
!5941 = !DILocation(line: 114, column: 3, scope: !5938)
!5942 = !DILocation(line: 115, column: 9, scope: !5853)
!5943 = !DILocation(line: 115, column: 2, scope: !5853)
!5944 = !DILocation(line: 116, column: 1, scope: !5853)
!5945 = distinct !DISubprogram(name: "get_power_status", scope: !3, file: !3, line: 62, type: !4163, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5946)
!5946 = !{!5947, !5948, !5949, !5950}
!5947 = !DILocalVariable(name: "slot", arg: 1, scope: !5945, file: !3, line: 62, type: !4139)
!5948 = !DILocalVariable(name: "value", arg: 2, scope: !5945, file: !3, line: 62, type: !4165)
!5949 = !DILocalVariable(name: "ops", scope: !5945, file: !3, line: 62, type: !4144)
!5950 = !DILocalVariable(name: "retval", scope: !5945, file: !3, line: 62, type: !103)
!5951 = !DILocation(line: 62, column: 1, scope: !5945)
!5952 = !DILocation(line: 62, column: 1, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 62, column: 1)
!5954 = !DILocation(line: 62, column: 1, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 62, column: 1)
!5956 = !DISubprogram(name: "sysfs_emit", scope: !295, file: !295, line: 357, type: !5957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!103, !269, !188, null}
!5959 = !DISubprogram(name: "try_module_get", scope: !21, file: !21, line: 696, type: !5960, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5960 = !DISubroutineType(types: !5961)
!5961 = !{!1469, !165}
!5962 = !DISubprogram(name: "module_put", scope: !21, file: !21, line: 706, type: !3837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5963 = !DISubprogram(name: "simple_strtoul", scope: !5964, file: !5964, line: 145, type: !5965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5964 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!319, !188, !5967, !7}
!5967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!5968 = distinct !DISubprogram(name: "attention_read_file", scope: !3, file: !3, line: 124, type: !5028, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5969)
!5969 = !{!5970, !5971, !5972, !5973}
!5970 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5968, file: !3, line: 124, type: !4175)
!5971 = !DILocalVariable(name: "buf", arg: 2, scope: !5968, file: !3, line: 124, type: !269)
!5972 = !DILocalVariable(name: "retval", scope: !5968, file: !3, line: 126, type: !103)
!5973 = !DILocalVariable(name: "value", scope: !5968, file: !3, line: 127, type: !227)
!5974 = !DILocation(line: 124, column: 53, scope: !5968)
!5975 = !DILocation(line: 124, column: 69, scope: !5968)
!5976 = !DILocation(line: 126, column: 2, scope: !5968)
!5977 = !DILocation(line: 126, column: 6, scope: !5968)
!5978 = !DILocation(line: 127, column: 2, scope: !5968)
!5979 = !DILocation(line: 127, column: 5, scope: !5968)
!5980 = !DILocation(line: 129, column: 32, scope: !5968)
!5981 = !DILocation(line: 129, column: 42, scope: !5968)
!5982 = !DILocation(line: 129, column: 11, scope: !5968)
!5983 = !DILocation(line: 129, column: 9, scope: !5968)
!5984 = !DILocation(line: 130, column: 6, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 130, column: 6)
!5986 = !DILocation(line: 130, column: 6, scope: !5968)
!5987 = !DILocation(line: 131, column: 10, scope: !5985)
!5988 = !DILocation(line: 131, column: 3, scope: !5985)
!5989 = !DILocation(line: 133, column: 20, scope: !5968)
!5990 = !DILocation(line: 133, column: 33, scope: !5968)
!5991 = !DILocation(line: 133, column: 9, scope: !5968)
!5992 = !DILocation(line: 133, column: 2, scope: !5968)
!5993 = !DILocation(line: 134, column: 1, scope: !5968)
!5994 = distinct !DISubprogram(name: "attention_write_file", scope: !3, file: !3, line: 136, type: !5032, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5995)
!5995 = !{!5996, !5997, !5998, !5999, !6000, !6001, !6002, !6003, !6004}
!5996 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !5994, file: !3, line: 136, type: !4175)
!5997 = !DILocalVariable(name: "buf", arg: 2, scope: !5994, file: !3, line: 136, type: !188)
!5998 = !DILocalVariable(name: "count", arg: 3, scope: !5994, file: !3, line: 137, type: !316)
!5999 = !DILocalVariable(name: "slot", scope: !5994, file: !3, line: 139, type: !4139)
!6000 = !DILocalVariable(name: "ops", scope: !5994, file: !3, line: 140, type: !4144)
!6001 = !DILocalVariable(name: "lattention", scope: !5994, file: !3, line: 141, type: !319)
!6002 = !DILocalVariable(name: "attention", scope: !5994, file: !3, line: 142, type: !227)
!6003 = !DILocalVariable(name: "retval", scope: !5994, file: !3, line: 143, type: !103)
!6004 = !DILabel(scope: !5994, name: "exit", file: !3, line: 157)
!6005 = !DILocation(line: 136, column: 54, scope: !5994)
!6006 = !DILocation(line: 136, column: 76, scope: !5994)
!6007 = !DILocation(line: 137, column: 16, scope: !5994)
!6008 = !DILocation(line: 139, column: 2, scope: !5994)
!6009 = !DILocation(line: 139, column: 23, scope: !5994)
!6010 = !DILocation(line: 139, column: 30, scope: !5994)
!6011 = !DILocation(line: 139, column: 40, scope: !5994)
!6012 = !DILocation(line: 140, column: 2, scope: !5994)
!6013 = !DILocation(line: 140, column: 33, scope: !5994)
!6014 = !DILocation(line: 140, column: 39, scope: !5994)
!6015 = !DILocation(line: 140, column: 45, scope: !5994)
!6016 = !DILocation(line: 141, column: 2, scope: !5994)
!6017 = !DILocation(line: 141, column: 16, scope: !5994)
!6018 = !DILocation(line: 142, column: 2, scope: !5994)
!6019 = !DILocation(line: 142, column: 5, scope: !5994)
!6020 = !DILocation(line: 143, column: 2, scope: !5994)
!6021 = !DILocation(line: 143, column: 6, scope: !5994)
!6022 = !DILocation(line: 145, column: 30, scope: !5994)
!6023 = !DILocation(line: 145, column: 15, scope: !5994)
!6024 = !DILocation(line: 145, column: 13, scope: !5994)
!6025 = !DILocation(line: 146, column: 19, scope: !5994)
!6026 = !DILocation(line: 146, column: 30, scope: !5994)
!6027 = !DILocation(line: 146, column: 14, scope: !5994)
!6028 = !DILocation(line: 146, column: 12, scope: !5994)
!6029 = !DILocation(line: 147, column: 2, scope: !5994)
!6030 = !DILocation(line: 147, column: 2, scope: !6031)
!6031 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 147, column: 2)
!6032 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 147, column: 2)
!6033 = !DILocation(line: 147, column: 2, scope: !6032)
!6034 = !DILocation(line: 147, column: 2, scope: !6035)
!6035 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 147, column: 2)
!6036 = !DILocation(line: 147, column: 2, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 147, column: 2)
!6038 = !DILocation(line: 149, column: 22, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 149, column: 6)
!6040 = !DILocation(line: 149, column: 28, scope: !6039)
!6041 = !DILocation(line: 149, column: 7, scope: !6039)
!6042 = !DILocation(line: 149, column: 6, scope: !5994)
!6043 = !DILocation(line: 150, column: 10, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 149, column: 36)
!6045 = !DILocation(line: 151, column: 3, scope: !6044)
!6046 = !DILocation(line: 153, column: 6, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 153, column: 6)
!6048 = !DILocation(line: 153, column: 11, scope: !6047)
!6049 = !DILocation(line: 153, column: 6, scope: !5994)
!6050 = !DILocation(line: 154, column: 12, scope: !6047)
!6051 = !DILocation(line: 154, column: 17, scope: !6047)
!6052 = !DILocation(line: 154, column: 38, scope: !6047)
!6053 = !DILocation(line: 154, column: 44, scope: !6047)
!6054 = !DILocation(line: 154, column: 10, scope: !6047)
!6055 = !DILocation(line: 154, column: 3, scope: !6047)
!6056 = !DILocation(line: 155, column: 13, scope: !5994)
!6057 = !DILocation(line: 155, column: 19, scope: !5994)
!6058 = !DILocation(line: 155, column: 2, scope: !5994)
!6059 = !DILocation(line: 157, column: 1, scope: !5994)
!6060 = !DILocation(line: 158, column: 6, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !5994, file: !3, line: 158, column: 6)
!6062 = !DILocation(line: 158, column: 6, scope: !5994)
!6063 = !DILocation(line: 159, column: 10, scope: !6061)
!6064 = !DILocation(line: 159, column: 3, scope: !6061)
!6065 = !DILocation(line: 160, column: 9, scope: !5994)
!6066 = !DILocation(line: 160, column: 2, scope: !5994)
!6067 = !DILocation(line: 161, column: 1, scope: !5994)
!6068 = distinct !DISubprogram(name: "get_attention_status", scope: !3, file: !3, line: 63, type: !4163, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6069)
!6069 = !{!6070, !6071, !6072, !6073}
!6070 = !DILocalVariable(name: "slot", arg: 1, scope: !6068, file: !3, line: 63, type: !4139)
!6071 = !DILocalVariable(name: "value", arg: 2, scope: !6068, file: !3, line: 63, type: !4165)
!6072 = !DILocalVariable(name: "ops", scope: !6068, file: !3, line: 63, type: !4144)
!6073 = !DILocalVariable(name: "retval", scope: !6068, file: !3, line: 63, type: !103)
!6074 = !DILocation(line: 63, column: 1, scope: !6068)
!6075 = !DILocation(line: 63, column: 1, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 63, column: 1)
!6077 = !DILocation(line: 63, column: 1, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6068, file: !3, line: 63, column: 1)
!6079 = distinct !DISubprogram(name: "latch_read_file", scope: !3, file: !3, line: 169, type: !5028, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6080)
!6080 = !{!6081, !6082, !6083, !6084}
!6081 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !6079, file: !3, line: 169, type: !4175)
!6082 = !DILocalVariable(name: "buf", arg: 2, scope: !6079, file: !3, line: 169, type: !269)
!6083 = !DILocalVariable(name: "retval", scope: !6079, file: !3, line: 171, type: !103)
!6084 = !DILocalVariable(name: "value", scope: !6079, file: !3, line: 172, type: !227)
!6085 = !DILocation(line: 169, column: 49, scope: !6079)
!6086 = !DILocation(line: 169, column: 65, scope: !6079)
!6087 = !DILocation(line: 171, column: 2, scope: !6079)
!6088 = !DILocation(line: 171, column: 6, scope: !6079)
!6089 = !DILocation(line: 172, column: 2, scope: !6079)
!6090 = !DILocation(line: 172, column: 5, scope: !6079)
!6091 = !DILocation(line: 174, column: 28, scope: !6079)
!6092 = !DILocation(line: 174, column: 38, scope: !6079)
!6093 = !DILocation(line: 174, column: 11, scope: !6079)
!6094 = !DILocation(line: 174, column: 9, scope: !6079)
!6095 = !DILocation(line: 175, column: 6, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 175, column: 6)
!6097 = !DILocation(line: 175, column: 6, scope: !6079)
!6098 = !DILocation(line: 176, column: 10, scope: !6096)
!6099 = !DILocation(line: 176, column: 3, scope: !6096)
!6100 = !DILocation(line: 178, column: 20, scope: !6079)
!6101 = !DILocation(line: 178, column: 33, scope: !6079)
!6102 = !DILocation(line: 178, column: 9, scope: !6079)
!6103 = !DILocation(line: 178, column: 2, scope: !6079)
!6104 = !DILocation(line: 179, column: 1, scope: !6079)
!6105 = distinct !DISubprogram(name: "get_latch_status", scope: !3, file: !3, line: 64, type: !4163, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6106)
!6106 = !{!6107, !6108, !6109, !6110}
!6107 = !DILocalVariable(name: "slot", arg: 1, scope: !6105, file: !3, line: 64, type: !4139)
!6108 = !DILocalVariable(name: "value", arg: 2, scope: !6105, file: !3, line: 64, type: !4165)
!6109 = !DILocalVariable(name: "ops", scope: !6105, file: !3, line: 64, type: !4144)
!6110 = !DILocalVariable(name: "retval", scope: !6105, file: !3, line: 64, type: !103)
!6111 = !DILocation(line: 64, column: 1, scope: !6105)
!6112 = !DILocation(line: 64, column: 1, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 64, column: 1)
!6114 = !DILocation(line: 64, column: 1, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6105, file: !3, line: 64, column: 1)
!6116 = distinct !DISubprogram(name: "presence_read_file", scope: !3, file: !3, line: 186, type: !5028, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6117)
!6117 = !{!6118, !6119, !6120, !6121}
!6118 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !6116, file: !3, line: 186, type: !4175)
!6119 = !DILocalVariable(name: "buf", arg: 2, scope: !6116, file: !3, line: 186, type: !269)
!6120 = !DILocalVariable(name: "retval", scope: !6116, file: !3, line: 188, type: !103)
!6121 = !DILocalVariable(name: "value", scope: !6116, file: !3, line: 189, type: !227)
!6122 = !DILocation(line: 186, column: 52, scope: !6116)
!6123 = !DILocation(line: 186, column: 68, scope: !6116)
!6124 = !DILocation(line: 188, column: 2, scope: !6116)
!6125 = !DILocation(line: 188, column: 6, scope: !6116)
!6126 = !DILocation(line: 189, column: 2, scope: !6116)
!6127 = !DILocation(line: 189, column: 5, scope: !6116)
!6128 = !DILocation(line: 191, column: 30, scope: !6116)
!6129 = !DILocation(line: 191, column: 40, scope: !6116)
!6130 = !DILocation(line: 191, column: 11, scope: !6116)
!6131 = !DILocation(line: 191, column: 9, scope: !6116)
!6132 = !DILocation(line: 192, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6116, file: !3, line: 192, column: 6)
!6134 = !DILocation(line: 192, column: 6, scope: !6116)
!6135 = !DILocation(line: 193, column: 10, scope: !6133)
!6136 = !DILocation(line: 193, column: 3, scope: !6133)
!6137 = !DILocation(line: 195, column: 20, scope: !6116)
!6138 = !DILocation(line: 195, column: 33, scope: !6116)
!6139 = !DILocation(line: 195, column: 9, scope: !6116)
!6140 = !DILocation(line: 195, column: 2, scope: !6116)
!6141 = !DILocation(line: 196, column: 1, scope: !6116)
!6142 = distinct !DISubprogram(name: "get_adapter_status", scope: !3, file: !3, line: 65, type: !4163, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6143)
!6143 = !{!6144, !6145, !6146, !6147}
!6144 = !DILocalVariable(name: "slot", arg: 1, scope: !6142, file: !3, line: 65, type: !4139)
!6145 = !DILocalVariable(name: "value", arg: 2, scope: !6142, file: !3, line: 65, type: !4165)
!6146 = !DILocalVariable(name: "ops", scope: !6142, file: !3, line: 65, type: !4144)
!6147 = !DILocalVariable(name: "retval", scope: !6142, file: !3, line: 65, type: !103)
!6148 = !DILocation(line: 65, column: 1, scope: !6142)
!6149 = !DILocation(line: 65, column: 1, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 65, column: 1)
!6151 = !DILocation(line: 65, column: 1, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 65, column: 1)
!6153 = distinct !DISubprogram(name: "test_write_file", scope: !3, file: !3, line: 203, type: !5032, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6154)
!6154 = !{!6155, !6156, !6157, !6158, !6159, !6160, !6161, !6162}
!6155 = !DILocalVariable(name: "pci_slot", arg: 1, scope: !6153, file: !3, line: 203, type: !4175)
!6156 = !DILocalVariable(name: "buf", arg: 2, scope: !6153, file: !3, line: 203, type: !188)
!6157 = !DILocalVariable(name: "count", arg: 3, scope: !6153, file: !3, line: 204, type: !316)
!6158 = !DILocalVariable(name: "slot", scope: !6153, file: !3, line: 206, type: !4139)
!6159 = !DILocalVariable(name: "ltest", scope: !6153, file: !3, line: 207, type: !319)
!6160 = !DILocalVariable(name: "test", scope: !6153, file: !3, line: 208, type: !418)
!6161 = !DILocalVariable(name: "retval", scope: !6153, file: !3, line: 209, type: !103)
!6162 = !DILabel(scope: !6153, name: "exit", file: !3, line: 223)
!6163 = !DILocation(line: 203, column: 49, scope: !6153)
!6164 = !DILocation(line: 203, column: 71, scope: !6153)
!6165 = !DILocation(line: 204, column: 18, scope: !6153)
!6166 = !DILocation(line: 206, column: 2, scope: !6153)
!6167 = !DILocation(line: 206, column: 23, scope: !6153)
!6168 = !DILocation(line: 206, column: 30, scope: !6153)
!6169 = !DILocation(line: 206, column: 40, scope: !6153)
!6170 = !DILocation(line: 207, column: 2, scope: !6153)
!6171 = !DILocation(line: 207, column: 16, scope: !6153)
!6172 = !DILocation(line: 208, column: 2, scope: !6153)
!6173 = !DILocation(line: 208, column: 6, scope: !6153)
!6174 = !DILocation(line: 209, column: 2, scope: !6153)
!6175 = !DILocation(line: 209, column: 6, scope: !6153)
!6176 = !DILocation(line: 211, column: 25, scope: !6153)
!6177 = !DILocation(line: 211, column: 10, scope: !6153)
!6178 = !DILocation(line: 211, column: 8, scope: !6153)
!6179 = !DILocation(line: 212, column: 15, scope: !6153)
!6180 = !DILocation(line: 212, column: 21, scope: !6153)
!6181 = !DILocation(line: 212, column: 9, scope: !6153)
!6182 = !DILocation(line: 212, column: 7, scope: !6153)
!6183 = !DILocation(line: 213, column: 2, scope: !6153)
!6184 = !DILocation(line: 213, column: 2, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6186, file: !3, line: 213, column: 2)
!6186 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 213, column: 2)
!6187 = !DILocation(line: 213, column: 2, scope: !6186)
!6188 = !DILocation(line: 213, column: 2, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !6185, file: !3, line: 213, column: 2)
!6190 = !DILocation(line: 213, column: 2, scope: !6191)
!6191 = distinct !DILexicalBlock(scope: !6189, file: !3, line: 213, column: 2)
!6192 = !DILocation(line: 215, column: 22, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 215, column: 6)
!6194 = !DILocation(line: 215, column: 28, scope: !6193)
!6195 = !DILocation(line: 215, column: 7, scope: !6193)
!6196 = !DILocation(line: 215, column: 6, scope: !6153)
!6197 = !DILocation(line: 216, column: 10, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6193, file: !3, line: 215, column: 36)
!6199 = !DILocation(line: 217, column: 3, scope: !6198)
!6200 = !DILocation(line: 219, column: 6, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 219, column: 6)
!6202 = !DILocation(line: 219, column: 12, scope: !6201)
!6203 = !DILocation(line: 219, column: 17, scope: !6201)
!6204 = !DILocation(line: 219, column: 6, scope: !6153)
!6205 = !DILocation(line: 220, column: 12, scope: !6201)
!6206 = !DILocation(line: 220, column: 18, scope: !6201)
!6207 = !DILocation(line: 220, column: 23, scope: !6201)
!6208 = !DILocation(line: 220, column: 37, scope: !6201)
!6209 = !DILocation(line: 220, column: 43, scope: !6201)
!6210 = !DILocation(line: 220, column: 10, scope: !6201)
!6211 = !DILocation(line: 220, column: 3, scope: !6201)
!6212 = !DILocation(line: 221, column: 13, scope: !6153)
!6213 = !DILocation(line: 221, column: 19, scope: !6153)
!6214 = !DILocation(line: 221, column: 2, scope: !6153)
!6215 = !DILocation(line: 223, column: 1, scope: !6153)
!6216 = !DILocation(line: 224, column: 6, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 224, column: 6)
!6218 = !DILocation(line: 224, column: 6, scope: !6153)
!6219 = !DILocation(line: 225, column: 10, scope: !6217)
!6220 = !DILocation(line: 225, column: 3, scope: !6217)
!6221 = !DILocation(line: 226, column: 9, scope: !6153)
!6222 = !DILocation(line: 226, column: 2, scope: !6153)
!6223 = !DILocation(line: 227, column: 1, scope: !6153)
!6224 = !DISubprogram(name: "sysfs_remove_file_ns", scope: !295, file: !295, line: 283, type: !6225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6225 = !DISubroutineType(types: !6226)
!6226 = !{null, !192, !5698, !2220}
!6227 = distinct !DISubprogram(name: "__list_add", scope: !5429, file: !5429, line: 146, type: !6228, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6230)
!6228 = !DISubroutineType(types: !6229)
!6229 = !{null, !174, !174, !174}
!6230 = !{!6231, !6232, !6233}
!6231 = !DILocalVariable(name: "new", arg: 1, scope: !6227, file: !5429, line: 146, type: !174)
!6232 = !DILocalVariable(name: "prev", arg: 2, scope: !6227, file: !5429, line: 147, type: !174)
!6233 = !DILocalVariable(name: "next", arg: 3, scope: !6227, file: !5429, line: 148, type: !174)
!6234 = !DILocation(line: 146, column: 49, scope: !6227)
!6235 = !DILocation(line: 147, column: 28, scope: !6227)
!6236 = !DILocation(line: 148, column: 28, scope: !6227)
!6237 = !DILocation(line: 150, column: 24, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6227, file: !5429, line: 150, column: 6)
!6239 = !DILocation(line: 150, column: 29, scope: !6238)
!6240 = !DILocation(line: 150, column: 35, scope: !6238)
!6241 = !DILocation(line: 150, column: 7, scope: !6238)
!6242 = !DILocation(line: 150, column: 6, scope: !6227)
!6243 = !DILocation(line: 151, column: 3, scope: !6238)
!6244 = !DILocation(line: 153, column: 15, scope: !6227)
!6245 = !DILocation(line: 153, column: 2, scope: !6227)
!6246 = !DILocation(line: 153, column: 8, scope: !6227)
!6247 = !DILocation(line: 153, column: 13, scope: !6227)
!6248 = !DILocation(line: 154, column: 14, scope: !6227)
!6249 = !DILocation(line: 154, column: 2, scope: !6227)
!6250 = !DILocation(line: 154, column: 7, scope: !6227)
!6251 = !DILocation(line: 154, column: 12, scope: !6227)
!6252 = !DILocation(line: 155, column: 14, scope: !6227)
!6253 = !DILocation(line: 155, column: 2, scope: !6227)
!6254 = !DILocation(line: 155, column: 7, scope: !6227)
!6255 = !DILocation(line: 155, column: 12, scope: !6227)
!6256 = !DILocation(line: 156, column: 2, scope: !6227)
!6257 = !DILocation(line: 156, column: 2, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6227, file: !5429, line: 156, column: 2)
!6259 = !DILocation(line: 156, column: 2, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6258, file: !5429, line: 156, column: 2)
!6261 = !DILocation(line: 156, column: 2, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6258, file: !5429, line: 156, column: 2)
!6263 = !DILocation(line: 157, column: 1, scope: !6227)
!6264 = distinct !DISubprogram(name: "__list_add_valid", scope: !5429, file: !5429, line: 128, type: !6265, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6267)
!6265 = !DISubroutineType(types: !6266)
!6266 = !{!1469, !174, !174, !174}
!6267 = !{!6268, !6269, !6270}
!6268 = !DILocalVariable(name: "new", arg: 1, scope: !6264, file: !5429, line: 128, type: !174)
!6269 = !DILocalVariable(name: "prev", arg: 2, scope: !6264, file: !5429, line: 129, type: !174)
!6270 = !DILocalVariable(name: "next", arg: 3, scope: !6264, file: !5429, line: 130, type: !174)
!6271 = !DILocation(line: 128, column: 55, scope: !6264)
!6272 = !DILocation(line: 129, column: 23, scope: !6264)
!6273 = !DILocation(line: 130, column: 23, scope: !6264)
!6274 = !DILocation(line: 132, column: 2, scope: !6264)
!6275 = distinct !DISubprogram(name: "pci_slot_name", scope: !4177, file: !4177, line: 84, type: !6276, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6280)
!6276 = !DISubroutineType(types: !6277)
!6277 = !{!188, !6278}
!6278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6279, size: 64)
!6279 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4176)
!6280 = !{!6281}
!6281 = !DILocalVariable(name: "slot", arg: 1, scope: !6275, file: !4177, line: 84, type: !6278)
!6282 = !DILocation(line: 84, column: 64, scope: !6275)
!6283 = !DILocation(line: 86, column: 23, scope: !6275)
!6284 = !DILocation(line: 86, column: 29, scope: !6275)
!6285 = !DILocation(line: 86, column: 9, scope: !6275)
!6286 = !DILocation(line: 86, column: 2, scope: !6275)
!6287 = distinct !DISubprogram(name: "kobject_name", scope: !148, file: !148, line: 87, type: !257, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6288)
!6288 = !{!6289}
!6289 = !DILocalVariable(name: "kobj", arg: 1, scope: !6287, file: !148, line: 87, type: !252)
!6290 = !DILocation(line: 87, column: 62, scope: !6287)
!6291 = !DILocation(line: 89, column: 9, scope: !6287)
!6292 = !DILocation(line: 89, column: 15, scope: !6287)
!6293 = !DILocation(line: 89, column: 2, scope: !6287)
!6294 = !DISubprogram(name: "strcmp", scope: !6295, file: !6295, line: 88, type: !6296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6295 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6296 = !DISubroutineType(types: !6297)
!6297 = !{!103, !188, !188}
!6298 = distinct !DISubprogram(name: "__list_del_entry", scope: !5429, file: !5429, line: 213, type: !5575, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6299)
!6299 = !{!6300}
!6300 = !DILocalVariable(name: "entry", arg: 1, scope: !6298, file: !5429, line: 213, type: !174)
!6301 = !DILocation(line: 213, column: 55, scope: !6298)
!6302 = !DILocation(line: 215, column: 30, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6298, file: !5429, line: 215, column: 6)
!6304 = !DILocation(line: 215, column: 7, scope: !6303)
!6305 = !DILocation(line: 215, column: 6, scope: !6298)
!6306 = !DILocation(line: 216, column: 3, scope: !6303)
!6307 = !DILocation(line: 218, column: 13, scope: !6298)
!6308 = !DILocation(line: 218, column: 20, scope: !6298)
!6309 = !DILocation(line: 218, column: 26, scope: !6298)
!6310 = !DILocation(line: 218, column: 33, scope: !6298)
!6311 = !DILocation(line: 218, column: 2, scope: !6298)
!6312 = !DILocation(line: 219, column: 1, scope: !6298)
!6313 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5429, file: !5429, line: 134, type: !6314, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6316)
!6314 = !DISubroutineType(types: !6315)
!6315 = !{!1469, !174}
!6316 = !{!6317}
!6317 = !DILocalVariable(name: "entry", arg: 1, scope: !6313, file: !5429, line: 134, type: !174)
!6318 = !DILocation(line: 134, column: 61, scope: !6313)
!6319 = !DILocation(line: 136, column: 2, scope: !6313)
!6320 = distinct !DISubprogram(name: "__list_del", scope: !5429, file: !5429, line: 193, type: !5430, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6321)
!6321 = !{!6322, !6323}
!6322 = !DILocalVariable(name: "prev", arg: 1, scope: !6320, file: !5429, line: 193, type: !174)
!6323 = !DILocalVariable(name: "next", arg: 2, scope: !6320, file: !5429, line: 193, type: !174)
!6324 = !DILocation(line: 193, column: 50, scope: !6320)
!6325 = !DILocation(line: 193, column: 75, scope: !6320)
!6326 = !DILocation(line: 195, column: 15, scope: !6320)
!6327 = !DILocation(line: 195, column: 2, scope: !6320)
!6328 = !DILocation(line: 195, column: 8, scope: !6320)
!6329 = !DILocation(line: 195, column: 13, scope: !6320)
!6330 = !DILocation(line: 196, column: 2, scope: !6320)
!6331 = !DILocation(line: 196, column: 2, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6320, file: !5429, line: 196, column: 2)
!6333 = !DILocation(line: 196, column: 2, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6332, file: !5429, line: 196, column: 2)
!6335 = !DILocation(line: 196, column: 2, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6332, file: !5429, line: 196, column: 2)
!6337 = !DILocation(line: 197, column: 1, scope: !6320)
!6338 = distinct !DISubprogram(name: "cpci_hotplug_init", scope: !6339, file: !6339, line: 99, type: !2074, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6340)
!6339 = !DIFile(filename: "drivers/pci/hotplug/cpci_hotplug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0fd34399048fd68f7b7ad8b128ddf20f")
!6340 = !{!6341}
!6341 = !DILocalVariable(name: "debug", arg: 1, scope: !6338, file: !6339, line: 99, type: !103)
!6342 = !DILocation(line: 99, column: 41, scope: !6338)
!6343 = !DILocation(line: 99, column: 50, scope: !6338)
