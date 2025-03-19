; ModuleID = 'drivers/pcmcia/rsrc_nonstatic.c'
source_filename = "drivers/pcmcia/rsrc_nonstatic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pccard_nonstatic_ops: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pccard_nonstatic_ops ; .previous"
module asm ".section\09\22.initcall6.init..kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init6:\09\09\09"
module asm ".long\09__initstub__kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.pccard_resource_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i64, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.pccard_mem_map = type { i8, i8, i16, i64, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.socket_data = type { %struct.resource_map, %struct.resource_map, %struct.resource_map }
%struct.resource_map = type { i64, i64, ptr }
%struct.pcmcia_align_data = type { i64, i64, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.14, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.14 = type { ptr }
%struct.pcmcia_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pccard_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }

@__param_str_probe_mem = internal constant [22 x i8] c"pcmcia_rsrc.probe_mem\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@probe_mem = internal global i32 1, align 4, !dbg !5047
@__param_probe_mem = internal constant %struct.kernel_param { ptr @__param_str_probe_mem, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.13 { ptr @probe_mem } }, section "__param", align 8, !dbg !4107
@__UNIQUE_ID_probe_memtype292 = internal constant [35 x i8] c"pcmcia_rsrc.parmtype=probe_mem:int\00", section ".modinfo", align 1, !dbg !4109
@pccard_nonstatic_ops = hidden global %struct.pccard_resource_ops { ptr @pcmcia_nonstatic_validate_mem, ptr @nonstatic_find_io, ptr @nonstatic_find_mem_region, ptr @nonstatic_init, ptr @nonstatic_release_resource_db }, align 8, !dbg !4114
@__UNIQUE_ID___addressable_pccard_nonstatic_ops295 = internal global ptr @pccard_nonstatic_ops, section ".discard.addressable", align 8, !dbg !5039
@pccard_rsrc_interface = internal global %struct.class_interface { %struct.list_head zeroinitializer, ptr @pcmcia_socket_class, ptr @pccard_sysfs_add_rsrc, ptr @pccard_sysfs_remove_rsrc }, section ".ref.data", align 8, !dbg !5089
@__UNIQUE_ID___addressable___initstub__kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init6297 = internal global ptr @__initstub__kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init6, section ".discard.addressable", align 8, !dbg !5041
@__exitcall_nonstatic_sysfs_exit = internal global ptr @nonstatic_sysfs_exit, section ".exitcall.exit", align 8, !dbg !5043
@.str = private unnamed_addr constant [34 x i8] c"cs: memory probe 0x%06lx-0x%06lx:\00", align 1, !dbg !5049
@.str.1 = private unnamed_addr constant [13 x i8] c"\01c excluding\00", align 1, !dbg !5054
@.str.2 = private unnamed_addr constant [17 x i8] c"\01c %#05lx-%#05lx\00", align 1, !dbg !5059
@.str.3 = private unnamed_addr constant [6 x i8] c"\01c%s\0A\00", align 1, !dbg !5064
@.str.4 = private unnamed_addr constant [7 x i8] c" clean\00", align 1, !dbg !5066
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5069
@.str.6 = private unnamed_addr constant [16 x i8] c"PCMCIA memprobe\00", align 1, !dbg !5072
@iomem_resource = external dso_local global %struct.resource, align 8
@ioport_resource = external dso_local global %struct.resource, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"\014out of memory to update resources\0A\00", align 1, !dbg !5074
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5079
@.str.9 = private unnamed_addr constant [39 x i8] c"pcmcia: parent PCI bridge window: %pR\0A\00", align 1, !dbg !5084
@pcmcia_socket_class = external dso_local global %struct.class, align 8
@rsrc_attributes = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pccard_rsrc_attributes, ptr null }, align 8, !dbg !5097
@pccard_rsrc_attributes = internal global [3 x ptr] [ptr @dev_attr_available_resources_io, ptr @dev_attr_available_resources_mem, ptr null], align 16, !dbg !5099
@dev_attr_available_resources_io = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 384 }, ptr @show_io_db, ptr @store_io_db }, align 8, !dbg !5107
@dev_attr_available_resources_mem = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 384 }, ptr @show_mem_db, ptr @store_mem_db }, align 8, !dbg !5140
@.str.10 = private unnamed_addr constant [23 x i8] c"available_resources_io\00", align 1, !dbg !5102
@.str.11 = private unnamed_addr constant [19 x i8] c"0x%08lx - 0x%08lx\0A\00", align 1, !dbg !5121
@.str.12 = private unnamed_addr constant [16 x i8] c"+ 0x%lx - 0x%lx\00", align 1, !dbg !5126
@.str.13 = private unnamed_addr constant [16 x i8] c"- 0x%lx - 0x%lx\00", align 1, !dbg !5128
@.str.14 = private unnamed_addr constant [14 x i8] c"0x%lx - 0x%lx\00", align 1, !dbg !5130
@.str.15 = private unnamed_addr constant [24 x i8] c"available_resources_mem\00", align 1, !dbg !5135
@llvm.compiler.used = appending global [6 x ptr] [ptr @__param_probe_mem, ptr @__UNIQUE_ID_probe_memtype292, ptr @__UNIQUE_ID___addressable_pccard_nonstatic_ops295, ptr @nonstatic_sysfs_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init6297, ptr @__exitcall_nonstatic_sysfs_exit], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pcmcia_nonstatic_validate_mem(ptr noundef %s) #0 align 16 !dbg !5154 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %s_data = alloca ptr, align 8
  %probe_mask = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5156, metadata !DIExpression()), !dbg !5173
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_data) #16, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %s_data, metadata !5157, metadata !DIExpression()), !dbg !5175
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5176
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 25, !dbg !5177
  %1 = load ptr, ptr %resource_data, align 8, !dbg !5177
  store ptr %1, ptr %s_data, align 8, !dbg !5175
  call void @llvm.lifetime.start.p0(i64 4, ptr %probe_mask) #16, !dbg !5178
  call void @llvm.dbg.declare(metadata ptr %probe_mask, metadata !5171, metadata !DIExpression()), !dbg !5179
  store i32 1, ptr %probe_mask, align 4, !dbg !5179
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5180
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5172, metadata !DIExpression()), !dbg !5181
  %2 = load i32, ptr @probe_mem, align 4, !dbg !5182
  %tobool = icmp ne i32 %2, 0, !dbg !5182
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5184

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !5185
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 2, !dbg !5186
  %4 = load i32, ptr %state, align 4, !dbg !5186
  %and = and i32 %4, 8, !dbg !5187
  %tobool1 = icmp ne i32 %and, 0, !dbg !5187
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5188

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !5189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5189

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %s.addr, align 8, !dbg !5190
  %features = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 16, !dbg !5192
  %6 = load i32, ptr %features, align 4, !dbg !5192
  %and2 = and i32 %6, 1, !dbg !5193
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5193
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5194

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %probe_mask, align 4, !dbg !5195
  br label %if.end5, !dbg !5196

if.end5:                                          ; preds = %if.then4, %if.end
  %7 = load ptr, ptr %s.addr, align 8, !dbg !5197
  %8 = load i32, ptr %probe_mask, align 4, !dbg !5198
  %call = call i32 @validate_mem(ptr noundef %7, i32 noundef %8) #17, !dbg !5199
  store i32 %call, ptr %ret, align 4, !dbg !5200
  %9 = load ptr, ptr %s_data, align 8, !dbg !5201
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %9, i32 0, i32 1, !dbg !5203
  %next = getelementptr inbounds %struct.resource_map, ptr %mem_db_valid, i32 0, i32 2, !dbg !5204
  %10 = load ptr, ptr %next, align 8, !dbg !5204
  %11 = load ptr, ptr %s_data, align 8, !dbg !5205
  %mem_db_valid6 = getelementptr inbounds %struct.socket_data, ptr %11, i32 0, i32 1, !dbg !5206
  %cmp = icmp ne ptr %10, %mem_db_valid6, !dbg !5207
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !5208

if.then7:                                         ; preds = %if.end5
  store i32 0, ptr %retval, align 4, !dbg !5209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5209

if.end8:                                          ; preds = %if.end5
  %12 = load i32, ptr %ret, align 4, !dbg !5210
  store i32 %12, ptr %retval, align 4, !dbg !5211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5211

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 4, ptr %probe_mask) #16, !dbg !5212
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_data) #16, !dbg !5212
  %13 = load i32, ptr %retval, align 4, !dbg !5212
  ret i32 %13, !dbg !5212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nonstatic_find_io(ptr noundef %s, i32 noundef %attr, ptr noundef %base, i32 noundef %num, i32 noundef %align, ptr noundef %parent) #0 align 16 !dbg !5213 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %attr.addr = alloca i32, align 4
  %base.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %align.addr = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %res17 = alloca ptr, align 8
  %try = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5215, metadata !DIExpression()), !dbg !5228
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5216, metadata !DIExpression()), !dbg !5229
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5217, metadata !DIExpression()), !dbg !5230
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5218, metadata !DIExpression()), !dbg !5231
  store i32 %align, ptr %align.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5219, metadata !DIExpression()), !dbg !5232
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5220, metadata !DIExpression()), !dbg !5233
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5221, metadata !DIExpression()), !dbg !5235
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5234
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5222, metadata !DIExpression()), !dbg !5236
  store i32 0, ptr %ret, align 4, !dbg !5236
  store i32 0, ptr %i, align 4, !dbg !5237
  br label %for.cond, !dbg !5239

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5240
  %cmp = icmp slt i32 %0, 2, !dbg !5242
  br i1 %cmp, label %for.body, label %for.end, !dbg !5243

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %s.addr, align 8, !dbg !5244
  %io = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 8, !dbg !5247
  %2 = load i32, ptr %i, align 4, !dbg !5248
  %idxprom = sext i32 %2 to i64, !dbg !5244
  %arrayidx = getelementptr [2 x %struct.io_window_t], ptr %io, i64 0, i64 %idxprom, !dbg !5244
  %res = getelementptr inbounds %struct.io_window_t, ptr %arrayidx, i32 0, i32 2, !dbg !5249
  %3 = load ptr, ptr %res, align 8, !dbg !5249
  %tobool = icmp ne ptr %3, null, !dbg !5244
  br i1 %tobool, label %if.end, label %if.then, !dbg !5250

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5251

if.end:                                           ; preds = %for.body
  %4 = load ptr, ptr %base.addr, align 8, !dbg !5252
  %5 = load i32, ptr %4, align 4, !dbg !5254
  %tobool1 = icmp ne i32 %5, 0, !dbg !5254
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5255

if.then2:                                         ; preds = %if.end
  br label %for.inc, !dbg !5256

if.end3:                                          ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !5257
  %io4 = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 8, !dbg !5259
  %7 = load i32, ptr %i, align 4, !dbg !5260
  %idxprom5 = sext i32 %7 to i64, !dbg !5257
  %arrayidx6 = getelementptr [2 x %struct.io_window_t], ptr %io4, i64 0, i64 %idxprom5, !dbg !5257
  %res7 = getelementptr inbounds %struct.io_window_t, ptr %arrayidx6, i32 0, i32 2, !dbg !5261
  %8 = load ptr, ptr %res7, align 8, !dbg !5261
  %start = getelementptr inbounds %struct.resource, ptr %8, i32 0, i32 0, !dbg !5262
  %9 = load i64, ptr %start, align 8, !dbg !5262
  %10 = load i32, ptr %align.addr, align 4, !dbg !5263
  %sub = sub i32 %10, 1, !dbg !5264
  %conv = zext i32 %sub to i64, !dbg !5265
  %and = and i64 %9, %conv, !dbg !5266
  %11 = load ptr, ptr %base.addr, align 8, !dbg !5267
  %12 = load i32, ptr %11, align 4, !dbg !5268
  %conv8 = zext i32 %12 to i64, !dbg !5268
  %cmp9 = icmp eq i64 %and, %conv8, !dbg !5269
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5270

if.then11:                                        ; preds = %if.end3
  store i32 -16, ptr %retval, align 4, !dbg !5271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup134, !dbg !5271

if.end12:                                         ; preds = %if.end3
  br label %for.inc, !dbg !5272

for.inc:                                          ; preds = %if.end12, %if.then2, %if.then
  %13 = load i32, ptr %i, align 4, !dbg !5273
  %inc = add i32 %13, 1, !dbg !5273
  store i32 %inc, ptr %i, align 4, !dbg !5273
  br label %for.cond, !dbg !5274, !llvm.loop !5275

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !5279
  br label %for.cond13, !dbg !5280

for.cond13:                                       ; preds = %for.inc131, %for.end
  %14 = load i32, ptr %i, align 4, !dbg !5281
  %cmp14 = icmp slt i32 %14, 2, !dbg !5282
  br i1 %cmp14, label %for.body16, label %for.end133, !dbg !5283

for.body16:                                       ; preds = %for.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %res17) #16, !dbg !5284
  call void @llvm.dbg.declare(metadata ptr %res17, metadata !5223, metadata !DIExpression()), !dbg !5285
  %15 = load ptr, ptr %s.addr, align 8, !dbg !5286
  %io18 = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 8, !dbg !5287
  %16 = load i32, ptr %i, align 4, !dbg !5288
  %idxprom19 = sext i32 %16 to i64, !dbg !5286
  %arrayidx20 = getelementptr [2 x %struct.io_window_t], ptr %io18, i64 0, i64 %idxprom19, !dbg !5286
  %res21 = getelementptr inbounds %struct.io_window_t, ptr %arrayidx20, i32 0, i32 2, !dbg !5289
  %17 = load ptr, ptr %res21, align 8, !dbg !5289
  store ptr %17, ptr %res17, align 8, !dbg !5285
  call void @llvm.lifetime.start.p0(i64 4, ptr %try) #16, !dbg !5290
  call void @llvm.dbg.declare(metadata ptr %try, metadata !5227, metadata !DIExpression()), !dbg !5291
  %18 = load ptr, ptr %res17, align 8, !dbg !5292
  %tobool22 = icmp ne ptr %18, null, !dbg !5292
  br i1 %tobool22, label %land.lhs.true, label %if.end29, !dbg !5294

land.lhs.true:                                    ; preds = %for.body16
  %19 = load ptr, ptr %res17, align 8, !dbg !5295
  %flags = getelementptr inbounds %struct.resource, ptr %19, i32 0, i32 3, !dbg !5296
  %20 = load i64, ptr %flags, align 8, !dbg !5296
  %and23 = and i64 %20, 255, !dbg !5297
  %21 = load i32, ptr %attr.addr, align 4, !dbg !5298
  %and24 = and i32 %21, 255, !dbg !5299
  %conv25 = zext i32 %and24 to i64, !dbg !5300
  %cmp26 = icmp ne i64 %and23, %conv25, !dbg !5301
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5302

if.then28:                                        ; preds = %land.lhs.true
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5303

if.end29:                                         ; preds = %land.lhs.true, %for.body16
  %22 = load ptr, ptr %res17, align 8, !dbg !5304
  %tobool30 = icmp ne ptr %22, null, !dbg !5304
  br i1 %tobool30, label %if.end59, label %if.then31, !dbg !5306

if.then31:                                        ; preds = %if.end29
  %23 = load i32, ptr %align.addr, align 4, !dbg !5307
  %cmp32 = icmp eq i32 %23, 0, !dbg !5310
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !5311

if.then34:                                        ; preds = %if.then31
  store i32 65536, ptr %align.addr, align 4, !dbg !5312
  br label %if.end35, !dbg !5313

if.end35:                                         ; preds = %if.then34, %if.then31
  %24 = load ptr, ptr %s.addr, align 8, !dbg !5314
  %25 = load ptr, ptr %base.addr, align 8, !dbg !5315
  %26 = load i32, ptr %25, align 4, !dbg !5316
  %conv36 = zext i32 %26 to i64, !dbg !5316
  %27 = load i32, ptr %num.addr, align 4, !dbg !5317
  %28 = load i32, ptr %align.addr, align 4, !dbg !5318
  %conv37 = zext i32 %28 to i64, !dbg !5318
  %call = call ptr @__nonstatic_find_io_region(ptr noundef %24, i64 noundef %conv36, i32 noundef %27, i64 noundef %conv37) #17, !dbg !5319
  %29 = load ptr, ptr %s.addr, align 8, !dbg !5320
  %io38 = getelementptr inbounds %struct.pcmcia_socket, ptr %29, i32 0, i32 8, !dbg !5321
  %30 = load i32, ptr %i, align 4, !dbg !5322
  %idxprom39 = sext i32 %30 to i64, !dbg !5320
  %arrayidx40 = getelementptr [2 x %struct.io_window_t], ptr %io38, i64 0, i64 %idxprom39, !dbg !5320
  %res41 = getelementptr inbounds %struct.io_window_t, ptr %arrayidx40, i32 0, i32 2, !dbg !5323
  store ptr %call, ptr %res41, align 8, !dbg !5324
  store ptr %call, ptr %res17, align 8, !dbg !5325
  %31 = load ptr, ptr %res17, align 8, !dbg !5326
  %tobool42 = icmp ne ptr %31, null, !dbg !5326
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !5328

if.then43:                                        ; preds = %if.end35
  store i32 -22, ptr %retval, align 4, !dbg !5329
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5329

if.end44:                                         ; preds = %if.end35
  %32 = load ptr, ptr %res17, align 8, !dbg !5330
  %start45 = getelementptr inbounds %struct.resource, ptr %32, i32 0, i32 0, !dbg !5331
  %33 = load i64, ptr %start45, align 8, !dbg !5331
  %conv46 = trunc i64 %33 to i32, !dbg !5330
  %34 = load ptr, ptr %base.addr, align 8, !dbg !5332
  store i32 %conv46, ptr %34, align 4, !dbg !5333
  %35 = load ptr, ptr %res17, align 8, !dbg !5334
  %flags47 = getelementptr inbounds %struct.resource, ptr %35, i32 0, i32 3, !dbg !5335
  %36 = load i64, ptr %flags47, align 8, !dbg !5335
  %and48 = and i64 %36, -256, !dbg !5336
  %37 = load i32, ptr %attr.addr, align 4, !dbg !5337
  %and49 = and i32 %37, 255, !dbg !5338
  %conv50 = zext i32 %and49 to i64, !dbg !5339
  %or = or i64 %and48, %conv50, !dbg !5340
  %38 = load ptr, ptr %s.addr, align 8, !dbg !5341
  %io51 = getelementptr inbounds %struct.pcmcia_socket, ptr %38, i32 0, i32 8, !dbg !5342
  %39 = load i32, ptr %i, align 4, !dbg !5343
  %idxprom52 = sext i32 %39 to i64, !dbg !5341
  %arrayidx53 = getelementptr [2 x %struct.io_window_t], ptr %io51, i64 0, i64 %idxprom52, !dbg !5341
  %res54 = getelementptr inbounds %struct.io_window_t, ptr %arrayidx53, i32 0, i32 2, !dbg !5344
  %40 = load ptr, ptr %res54, align 8, !dbg !5344
  %flags55 = getelementptr inbounds %struct.resource, ptr %40, i32 0, i32 3, !dbg !5345
  store i64 %or, ptr %flags55, align 8, !dbg !5346
  %41 = load i32, ptr %num.addr, align 4, !dbg !5347
  %42 = load ptr, ptr %s.addr, align 8, !dbg !5348
  %io56 = getelementptr inbounds %struct.pcmcia_socket, ptr %42, i32 0, i32 8, !dbg !5349
  %43 = load i32, ptr %i, align 4, !dbg !5350
  %idxprom57 = sext i32 %43 to i64, !dbg !5348
  %arrayidx58 = getelementptr [2 x %struct.io_window_t], ptr %io56, i64 0, i64 %idxprom57, !dbg !5348
  %InUse = getelementptr inbounds %struct.io_window_t, ptr %arrayidx58, i32 0, i32 0, !dbg !5351
  store i32 %41, ptr %InUse, align 8, !dbg !5352
  %44 = load ptr, ptr %res17, align 8, !dbg !5353
  %45 = load ptr, ptr %parent.addr, align 8, !dbg !5354
  store ptr %44, ptr %45, align 8, !dbg !5355
  store i32 0, ptr %retval, align 4, !dbg !5356
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5356

if.end59:                                         ; preds = %if.end29
  %46 = load ptr, ptr %res17, align 8, !dbg !5357
  %end = getelementptr inbounds %struct.resource, ptr %46, i32 0, i32 1, !dbg !5358
  %47 = load i64, ptr %end, align 8, !dbg !5358
  %add = add i64 %47, 1, !dbg !5359
  %conv60 = trunc i64 %add to i32, !dbg !5357
  store i32 %conv60, ptr %try, align 4, !dbg !5360
  %48 = load ptr, ptr %base.addr, align 8, !dbg !5361
  %49 = load i32, ptr %48, align 4, !dbg !5363
  %cmp61 = icmp eq i32 %49, 0, !dbg !5364
  br i1 %cmp61, label %if.then65, label %lor.lhs.false, !dbg !5365

lor.lhs.false:                                    ; preds = %if.end59
  %50 = load ptr, ptr %base.addr, align 8, !dbg !5366
  %51 = load i32, ptr %50, align 4, !dbg !5367
  %52 = load i32, ptr %try, align 4, !dbg !5368
  %cmp63 = icmp eq i32 %51, %52, !dbg !5369
  br i1 %cmp63, label %if.then65, label %if.end91, !dbg !5370

if.then65:                                        ; preds = %lor.lhs.false, %if.end59
  %53 = load ptr, ptr %s.addr, align 8, !dbg !5371
  %54 = load ptr, ptr %res17, align 8, !dbg !5373
  %start66 = getelementptr inbounds %struct.resource, ptr %54, i32 0, i32 0, !dbg !5374
  %55 = load i64, ptr %start66, align 8, !dbg !5374
  %56 = load ptr, ptr %res17, align 8, !dbg !5375
  %end67 = getelementptr inbounds %struct.resource, ptr %56, i32 0, i32 1, !dbg !5376
  %57 = load i64, ptr %end67, align 8, !dbg !5376
  %58 = load i32, ptr %num.addr, align 4, !dbg !5377
  %conv68 = zext i32 %58 to i64, !dbg !5377
  %add69 = add i64 %57, %conv68, !dbg !5378
  %call70 = call i32 @__nonstatic_adjust_io_region(ptr noundef %53, i64 noundef %55, i64 noundef %add69) #17, !dbg !5379
  store i32 %call70, ptr %ret, align 4, !dbg !5380
  %59 = load i32, ptr %ret, align 4, !dbg !5381
  %tobool71 = icmp ne i32 %59, 0, !dbg !5381
  br i1 %tobool71, label %if.end90, label %if.then72, !dbg !5383

if.then72:                                        ; preds = %if.then65
  %60 = load ptr, ptr %s.addr, align 8, !dbg !5384
  %io73 = getelementptr inbounds %struct.pcmcia_socket, ptr %60, i32 0, i32 8, !dbg !5386
  %61 = load i32, ptr %i, align 4, !dbg !5387
  %idxprom74 = sext i32 %61 to i64, !dbg !5384
  %arrayidx75 = getelementptr [2 x %struct.io_window_t], ptr %io73, i64 0, i64 %idxprom74, !dbg !5384
  %res76 = getelementptr inbounds %struct.io_window_t, ptr %arrayidx75, i32 0, i32 2, !dbg !5388
  %62 = load ptr, ptr %res76, align 8, !dbg !5388
  %63 = load ptr, ptr %res17, align 8, !dbg !5389
  %start77 = getelementptr inbounds %struct.resource, ptr %63, i32 0, i32 0, !dbg !5390
  %64 = load i64, ptr %start77, align 8, !dbg !5390
  %65 = load ptr, ptr %res17, align 8, !dbg !5391
  %call78 = call i64 @resource_size(ptr noundef %65) #17, !dbg !5392
  %66 = load i32, ptr %num.addr, align 4, !dbg !5393
  %conv79 = zext i32 %66 to i64, !dbg !5393
  %add80 = add i64 %call78, %conv79, !dbg !5394
  %call81 = call i32 @adjust_resource(ptr noundef %62, i64 noundef %64, i64 noundef %add80) #17, !dbg !5395
  store i32 %call81, ptr %ret, align 4, !dbg !5396
  %67 = load i32, ptr %ret, align 4, !dbg !5397
  %tobool82 = icmp ne i32 %67, 0, !dbg !5397
  br i1 %tobool82, label %if.then83, label %if.end84, !dbg !5399

if.then83:                                        ; preds = %if.then72
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5400

if.end84:                                         ; preds = %if.then72
  %68 = load i32, ptr %try, align 4, !dbg !5401
  %69 = load ptr, ptr %base.addr, align 8, !dbg !5402
  store i32 %68, ptr %69, align 4, !dbg !5403
  %70 = load i32, ptr %num.addr, align 4, !dbg !5404
  %71 = load ptr, ptr %s.addr, align 8, !dbg !5405
  %io85 = getelementptr inbounds %struct.pcmcia_socket, ptr %71, i32 0, i32 8, !dbg !5406
  %72 = load i32, ptr %i, align 4, !dbg !5407
  %idxprom86 = sext i32 %72 to i64, !dbg !5405
  %arrayidx87 = getelementptr [2 x %struct.io_window_t], ptr %io85, i64 0, i64 %idxprom86, !dbg !5405
  %InUse88 = getelementptr inbounds %struct.io_window_t, ptr %arrayidx87, i32 0, i32 0, !dbg !5408
  %73 = load i32, ptr %InUse88, align 8, !dbg !5409
  %add89 = add i32 %73, %70, !dbg !5409
  store i32 %add89, ptr %InUse88, align 8, !dbg !5409
  %74 = load ptr, ptr %res17, align 8, !dbg !5410
  %75 = load ptr, ptr %parent.addr, align 8, !dbg !5411
  store ptr %74, ptr %75, align 8, !dbg !5412
  store i32 0, ptr %retval, align 4, !dbg !5413
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5413

if.end90:                                         ; preds = %if.then65
  br label %if.end91, !dbg !5414

if.end91:                                         ; preds = %if.end90, %lor.lhs.false
  %76 = load ptr, ptr %res17, align 8, !dbg !5415
  %start92 = getelementptr inbounds %struct.resource, ptr %76, i32 0, i32 0, !dbg !5416
  %77 = load i64, ptr %start92, align 8, !dbg !5416
  %78 = load i32, ptr %num.addr, align 4, !dbg !5417
  %conv93 = zext i32 %78 to i64, !dbg !5417
  %sub94 = sub i64 %77, %conv93, !dbg !5418
  %conv95 = trunc i64 %sub94 to i32, !dbg !5415
  store i32 %conv95, ptr %try, align 4, !dbg !5419
  %79 = load ptr, ptr %base.addr, align 8, !dbg !5420
  %80 = load i32, ptr %79, align 4, !dbg !5422
  %cmp96 = icmp eq i32 %80, 0, !dbg !5423
  br i1 %cmp96, label %if.then101, label %lor.lhs.false98, !dbg !5424

lor.lhs.false98:                                  ; preds = %if.end91
  %81 = load ptr, ptr %base.addr, align 8, !dbg !5425
  %82 = load i32, ptr %81, align 4, !dbg !5426
  %83 = load i32, ptr %try, align 4, !dbg !5427
  %cmp99 = icmp eq i32 %82, %83, !dbg !5428
  br i1 %cmp99, label %if.then101, label %if.end129, !dbg !5429

if.then101:                                       ; preds = %lor.lhs.false98, %if.end91
  %84 = load ptr, ptr %s.addr, align 8, !dbg !5430
  %85 = load ptr, ptr %res17, align 8, !dbg !5432
  %start102 = getelementptr inbounds %struct.resource, ptr %85, i32 0, i32 0, !dbg !5433
  %86 = load i64, ptr %start102, align 8, !dbg !5433
  %87 = load i32, ptr %num.addr, align 4, !dbg !5434
  %conv103 = zext i32 %87 to i64, !dbg !5434
  %sub104 = sub i64 %86, %conv103, !dbg !5435
  %88 = load ptr, ptr %res17, align 8, !dbg !5436
  %end105 = getelementptr inbounds %struct.resource, ptr %88, i32 0, i32 1, !dbg !5437
  %89 = load i64, ptr %end105, align 8, !dbg !5437
  %call106 = call i32 @__nonstatic_adjust_io_region(ptr noundef %84, i64 noundef %sub104, i64 noundef %89) #17, !dbg !5438
  store i32 %call106, ptr %ret, align 4, !dbg !5439
  %90 = load i32, ptr %ret, align 4, !dbg !5440
  %tobool107 = icmp ne i32 %90, 0, !dbg !5440
  br i1 %tobool107, label %if.end128, label %if.then108, !dbg !5442

if.then108:                                       ; preds = %if.then101
  %91 = load ptr, ptr %s.addr, align 8, !dbg !5443
  %io109 = getelementptr inbounds %struct.pcmcia_socket, ptr %91, i32 0, i32 8, !dbg !5445
  %92 = load i32, ptr %i, align 4, !dbg !5446
  %idxprom110 = sext i32 %92 to i64, !dbg !5443
  %arrayidx111 = getelementptr [2 x %struct.io_window_t], ptr %io109, i64 0, i64 %idxprom110, !dbg !5443
  %res112 = getelementptr inbounds %struct.io_window_t, ptr %arrayidx111, i32 0, i32 2, !dbg !5447
  %93 = load ptr, ptr %res112, align 8, !dbg !5447
  %94 = load ptr, ptr %res17, align 8, !dbg !5448
  %start113 = getelementptr inbounds %struct.resource, ptr %94, i32 0, i32 0, !dbg !5449
  %95 = load i64, ptr %start113, align 8, !dbg !5449
  %96 = load i32, ptr %num.addr, align 4, !dbg !5450
  %conv114 = zext i32 %96 to i64, !dbg !5450
  %sub115 = sub i64 %95, %conv114, !dbg !5451
  %97 = load ptr, ptr %res17, align 8, !dbg !5452
  %call116 = call i64 @resource_size(ptr noundef %97) #17, !dbg !5453
  %98 = load i32, ptr %num.addr, align 4, !dbg !5454
  %conv117 = zext i32 %98 to i64, !dbg !5454
  %add118 = add i64 %call116, %conv117, !dbg !5455
  %call119 = call i32 @adjust_resource(ptr noundef %93, i64 noundef %sub115, i64 noundef %add118) #17, !dbg !5456
  store i32 %call119, ptr %ret, align 4, !dbg !5457
  %99 = load i32, ptr %ret, align 4, !dbg !5458
  %tobool120 = icmp ne i32 %99, 0, !dbg !5458
  br i1 %tobool120, label %if.then121, label %if.end122, !dbg !5460

if.then121:                                       ; preds = %if.then108
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5461

if.end122:                                        ; preds = %if.then108
  %100 = load i32, ptr %try, align 4, !dbg !5462
  %101 = load ptr, ptr %base.addr, align 8, !dbg !5463
  store i32 %100, ptr %101, align 4, !dbg !5464
  %102 = load i32, ptr %num.addr, align 4, !dbg !5465
  %103 = load ptr, ptr %s.addr, align 8, !dbg !5466
  %io123 = getelementptr inbounds %struct.pcmcia_socket, ptr %103, i32 0, i32 8, !dbg !5467
  %104 = load i32, ptr %i, align 4, !dbg !5468
  %idxprom124 = sext i32 %104 to i64, !dbg !5466
  %arrayidx125 = getelementptr [2 x %struct.io_window_t], ptr %io123, i64 0, i64 %idxprom124, !dbg !5466
  %InUse126 = getelementptr inbounds %struct.io_window_t, ptr %arrayidx125, i32 0, i32 0, !dbg !5469
  %105 = load i32, ptr %InUse126, align 8, !dbg !5470
  %add127 = add i32 %105, %102, !dbg !5470
  store i32 %add127, ptr %InUse126, align 8, !dbg !5470
  %106 = load ptr, ptr %res17, align 8, !dbg !5471
  %107 = load ptr, ptr %parent.addr, align 8, !dbg !5472
  store ptr %106, ptr %107, align 8, !dbg !5473
  store i32 0, ptr %retval, align 4, !dbg !5474
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5474

if.end128:                                        ; preds = %if.then101
  br label %if.end129, !dbg !5475

if.end129:                                        ; preds = %if.end128, %lor.lhs.false98
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5476
  br label %cleanup, !dbg !5476

cleanup:                                          ; preds = %if.end129, %if.end122, %if.then121, %if.end84, %if.then83, %if.end44, %if.then43, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %try) #16, !dbg !5476
  call void @llvm.lifetime.end.p0(i64 8, ptr %res17) #16, !dbg !5476
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup134 [
    i32 0, label %cleanup.cont
    i32 7, label %for.inc131
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc131, !dbg !5477

for.inc131:                                       ; preds = %cleanup.cont, %cleanup
  %108 = load i32, ptr %i, align 4, !dbg !5478
  %inc132 = add i32 %108, 1, !dbg !5478
  store i32 %inc132, ptr %i, align 4, !dbg !5478
  br label %for.cond13, !dbg !5479, !llvm.loop !5480

for.end133:                                       ; preds = %for.cond13
  store i32 -22, ptr %retval, align 4, !dbg !5482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup134, !dbg !5482

cleanup134:                                       ; preds = %for.end133, %cleanup, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5483
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5483
  %109 = load i32, ptr %retval, align 4, !dbg !5483
  ret i32 %109, !dbg !5483
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nonstatic_find_mem_region(i64 noundef %base, i64 noundef %num, i64 noundef %align, i32 noundef %low, ptr noundef %s) #0 align 16 !dbg !5484 {
entry:
  %retval = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %low.addr = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %s_data = alloca ptr, align 8
  %data = alloca %struct.pcmcia_align_data, align 8
  %min = alloca i64, align 8
  %max = alloca i64, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5488, metadata !DIExpression()), !dbg !5506
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5489, metadata !DIExpression()), !dbg !5507
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !5490, metadata !DIExpression()), !dbg !5508
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !5491, metadata !DIExpression()), !dbg !5509
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5492, metadata !DIExpression()), !dbg !5510
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !5511
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5493, metadata !DIExpression()), !dbg !5512
  %0 = load i64, ptr %num.addr, align 8, !dbg !5513
  %1 = load ptr, ptr %s.addr, align 8, !dbg !5514
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 42, !dbg !5515
  %call = call ptr @dev_name(ptr noundef %dev) #17, !dbg !5516
  %call1 = call ptr @pcmcia_make_resource(i64 noundef 0, i64 noundef %0, i64 noundef 512, ptr noundef %call) #17, !dbg !5517
  store ptr %call1, ptr %res, align 8, !dbg !5512
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_data) #16, !dbg !5518
  call void @llvm.dbg.declare(metadata ptr %s_data, metadata !5494, metadata !DIExpression()), !dbg !5519
  %2 = load ptr, ptr %s.addr, align 8, !dbg !5520
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 25, !dbg !5521
  %3 = load ptr, ptr %resource_data, align 8, !dbg !5521
  store ptr %3, ptr %s_data, align 8, !dbg !5519
  call void @llvm.lifetime.start.p0(i64 24, ptr %data) #16, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5495, metadata !DIExpression()), !dbg !5523
  call void @llvm.lifetime.start.p0(i64 8, ptr %min) #16, !dbg !5524
  call void @llvm.dbg.declare(metadata ptr %min, metadata !5501, metadata !DIExpression()), !dbg !5525
  call void @llvm.lifetime.start.p0(i64 8, ptr %max) #16, !dbg !5524
  call void @llvm.dbg.declare(metadata ptr %max, metadata !5502, metadata !DIExpression()), !dbg !5526
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5503, metadata !DIExpression()), !dbg !5528
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5504, metadata !DIExpression()), !dbg !5529
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #16, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5505, metadata !DIExpression()), !dbg !5530
  %4 = load ptr, ptr %res, align 8, !dbg !5531
  %tobool = icmp ne ptr %4, null, !dbg !5531
  br i1 %tobool, label %if.end, label %if.then, !dbg !5533

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5534

if.end:                                           ; preds = %entry
  %5 = load i32, ptr %low.addr, align 4, !dbg !5535
  %tobool2 = icmp ne i32 %5, 0, !dbg !5535
  br i1 %tobool2, label %lor.end, label %lor.rhs, !dbg !5536

lor.rhs:                                          ; preds = %if.end
  %6 = load ptr, ptr %s.addr, align 8, !dbg !5537
  %features = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 16, !dbg !5538
  %7 = load i32, ptr %features, align 4, !dbg !5538
  %and = and i32 %7, 1, !dbg !5539
  %tobool3 = icmp ne i32 %and, 0, !dbg !5540
  %lnot = xor i1 %tobool3, true, !dbg !5540
  br label %lor.end, !dbg !5536

lor.end:                                          ; preds = %lor.rhs, %if.end
  %8 = phi i1 [ true, %if.end ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32, !dbg !5536
  store i32 %lor.ext, ptr %low.addr, align 4, !dbg !5541
  %9 = load i64, ptr %align.addr, align 8, !dbg !5542
  %sub = sub i64 %9, 1, !dbg !5543
  %mask = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 0, !dbg !5544
  store i64 %sub, ptr %mask, align 8, !dbg !5545
  %10 = load i64, ptr %base.addr, align 8, !dbg !5546
  %mask4 = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 0, !dbg !5547
  %11 = load i64, ptr %mask4, align 8, !dbg !5547
  %and5 = and i64 %10, %11, !dbg !5548
  %offset = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 1, !dbg !5549
  store i64 %and5, ptr %offset, align 8, !dbg !5550
  store i32 0, ptr %i, align 4, !dbg !5551
  br label %for.cond, !dbg !5553

for.cond:                                         ; preds = %for.inc28, %lor.end
  %12 = load i32, ptr %i, align 4, !dbg !5554
  %cmp = icmp slt i32 %12, 2, !dbg !5556
  br i1 %cmp, label %for.body, label %for.end30, !dbg !5557

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %s_data, align 8, !dbg !5558
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %13, i32 0, i32 1, !dbg !5560
  %map = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 2, !dbg !5561
  store ptr %mem_db_valid, ptr %map, align 8, !dbg !5562
  %14 = load i32, ptr %low.addr, align 4, !dbg !5563
  %tobool6 = icmp ne i32 %14, 0, !dbg !5563
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !5565

if.then7:                                         ; preds = %for.body
  store i64 1048576, ptr %max, align 8, !dbg !5566
  %15 = load i64, ptr %base.addr, align 8, !dbg !5568
  %16 = load i64, ptr %max, align 8, !dbg !5569
  %cmp8 = icmp ult i64 %15, %16, !dbg !5570
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !5568

cond.true:                                        ; preds = %if.then7
  %17 = load i64, ptr %base.addr, align 8, !dbg !5571
  br label %cond.end, !dbg !5568

cond.false:                                       ; preds = %if.then7
  br label %cond.end, !dbg !5568

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %17, %cond.true ], [ 0, %cond.false ], !dbg !5568
  store i64 %cond, ptr %min, align 8, !dbg !5572
  br label %if.end9, !dbg !5573

if.else:                                          ; preds = %for.body
  store i64 -1, ptr %max, align 8, !dbg !5574
  %18 = load i64, ptr %base.addr, align 8, !dbg !5576
  %add = add i64 1048576, %18, !dbg !5577
  store i64 %add, ptr %min, align 8, !dbg !5578
  br label %if.end9

if.end9:                                          ; preds = %if.else, %cond.end
  store i32 0, ptr %j, align 4, !dbg !5579
  br label %for.cond10, !dbg !5581

for.cond10:                                       ; preds = %for.inc, %if.end9
  %19 = load i32, ptr %j, align 4, !dbg !5582
  %cmp11 = icmp slt i32 %19, 2, !dbg !5584
  br i1 %cmp11, label %for.body12, label %for.end, !dbg !5585

for.body12:                                       ; preds = %for.cond10
  %20 = load ptr, ptr %s.addr, align 8, !dbg !5586
  %cb_dev = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 21, !dbg !5589
  %21 = load ptr, ptr %cb_dev, align 8, !dbg !5589
  %tobool13 = icmp ne ptr %21, null, !dbg !5586
  br i1 %tobool13, label %if.then14, label %if.else17, !dbg !5590

if.then14:                                        ; preds = %for.body12
  %22 = load ptr, ptr %s.addr, align 8, !dbg !5591
  %cb_dev15 = getelementptr inbounds %struct.pcmcia_socket, ptr %22, i32 0, i32 21, !dbg !5593
  %23 = load ptr, ptr %cb_dev15, align 8, !dbg !5593
  %bus = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 1, !dbg !5594
  %24 = load ptr, ptr %bus, align 8, !dbg !5594
  %25 = load ptr, ptr %res, align 8, !dbg !5595
  %26 = load i64, ptr %num.addr, align 8, !dbg !5596
  %27 = load i64, ptr %min, align 8, !dbg !5597
  %call16 = call i32 @pci_bus_alloc_resource(ptr noundef %24, ptr noundef %25, i64 noundef %26, i64 noundef 1, i64 noundef %27, i64 noundef 0, ptr noundef @pcmcia_align, ptr noundef %data) #17, !dbg !5598
  store i32 %call16, ptr %ret, align 4, !dbg !5599
  br label %if.end19, !dbg !5600

if.else17:                                        ; preds = %for.body12
  %28 = load ptr, ptr %res, align 8, !dbg !5601
  %29 = load i64, ptr %num.addr, align 8, !dbg !5603
  %30 = load i64, ptr %min, align 8, !dbg !5604
  %31 = load i64, ptr %max, align 8, !dbg !5605
  %call18 = call i32 @allocate_resource(ptr noundef @iomem_resource, ptr noundef %28, i64 noundef %29, i64 noundef %30, i64 noundef %31, i64 noundef 1, ptr noundef @pcmcia_align, ptr noundef %data) #17, !dbg !5606
  store i32 %call18, ptr %ret, align 4, !dbg !5607
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then14
  %32 = load i32, ptr %ret, align 4, !dbg !5608
  %cmp20 = icmp eq i32 %32, 0, !dbg !5610
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !5611

if.then21:                                        ; preds = %if.end19
  br label %for.end, !dbg !5612

if.end22:                                         ; preds = %if.end19
  %33 = load ptr, ptr %s_data, align 8, !dbg !5613
  %mem_db = getelementptr inbounds %struct.socket_data, ptr %33, i32 0, i32 0, !dbg !5614
  %map23 = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 2, !dbg !5615
  store ptr %mem_db, ptr %map23, align 8, !dbg !5616
  br label %for.inc, !dbg !5617

for.inc:                                          ; preds = %if.end22
  %34 = load i32, ptr %j, align 4, !dbg !5618
  %inc = add i32 %34, 1, !dbg !5618
  store i32 %inc, ptr %j, align 4, !dbg !5618
  br label %for.cond10, !dbg !5619, !llvm.loop !5620

for.end:                                          ; preds = %if.then21, %for.cond10
  %35 = load i32, ptr %ret, align 4, !dbg !5622
  %cmp24 = icmp eq i32 %35, 0, !dbg !5624
  br i1 %cmp24, label %if.then26, label %lor.lhs.false, !dbg !5625

lor.lhs.false:                                    ; preds = %for.end
  %36 = load i32, ptr %low.addr, align 4, !dbg !5626
  %tobool25 = icmp ne i32 %36, 0, !dbg !5626
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5627

if.then26:                                        ; preds = %lor.lhs.false, %for.end
  br label %for.end30, !dbg !5628

if.end27:                                         ; preds = %lor.lhs.false
  store i32 1, ptr %low.addr, align 4, !dbg !5629
  br label %for.inc28, !dbg !5630

for.inc28:                                        ; preds = %if.end27
  %37 = load i32, ptr %i, align 4, !dbg !5631
  %inc29 = add i32 %37, 1, !dbg !5631
  store i32 %inc29, ptr %i, align 4, !dbg !5631
  br label %for.cond, !dbg !5632, !llvm.loop !5633

for.end30:                                        ; preds = %if.then26, %for.cond
  %38 = load i32, ptr %ret, align 4, !dbg !5635
  %cmp31 = icmp ne i32 %38, 0, !dbg !5637
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !5638

if.then32:                                        ; preds = %for.end30
  %39 = load ptr, ptr %res, align 8, !dbg !5639
  call void @kfree(ptr noundef %39) #17, !dbg !5641
  store ptr null, ptr %res, align 8, !dbg !5642
  br label %if.end33, !dbg !5643

if.end33:                                         ; preds = %if.then32, %for.end30
  %40 = load ptr, ptr %res, align 8, !dbg !5644
  store ptr %40, ptr %retval, align 8, !dbg !5645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5645

cleanup:                                          ; preds = %if.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %max) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %min) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 24, ptr %data) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_data) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !5646
  %41 = load ptr, ptr %retval, align 8, !dbg !5646
  ret ptr %41, !dbg !5646
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nonstatic_init(ptr noundef %s) #0 align 16 !dbg !5647 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5649, metadata !DIExpression()), !dbg !5651
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !5652
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5650, metadata !DIExpression()), !dbg !5653
  %call = call noalias ptr @kzalloc(i64 noundef 72, i32 noundef 3264) #18, !dbg !5654
  store ptr %call, ptr %data, align 8, !dbg !5655
  %0 = load ptr, ptr %data, align 8, !dbg !5656
  %tobool = icmp ne ptr %0, null, !dbg !5656
  br i1 %tobool, label %if.end, label %if.then, !dbg !5658

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5659

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %data, align 8, !dbg !5660
  %mem_db = getelementptr inbounds %struct.socket_data, ptr %1, i32 0, i32 0, !dbg !5661
  %2 = load ptr, ptr %data, align 8, !dbg !5662
  %mem_db1 = getelementptr inbounds %struct.socket_data, ptr %2, i32 0, i32 0, !dbg !5663
  %next = getelementptr inbounds %struct.resource_map, ptr %mem_db1, i32 0, i32 2, !dbg !5664
  store ptr %mem_db, ptr %next, align 8, !dbg !5665
  %3 = load ptr, ptr %data, align 8, !dbg !5666
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %3, i32 0, i32 1, !dbg !5667
  %4 = load ptr, ptr %data, align 8, !dbg !5668
  %mem_db_valid2 = getelementptr inbounds %struct.socket_data, ptr %4, i32 0, i32 1, !dbg !5669
  %next3 = getelementptr inbounds %struct.resource_map, ptr %mem_db_valid2, i32 0, i32 2, !dbg !5670
  store ptr %mem_db_valid, ptr %next3, align 8, !dbg !5671
  %5 = load ptr, ptr %data, align 8, !dbg !5672
  %io_db = getelementptr inbounds %struct.socket_data, ptr %5, i32 0, i32 2, !dbg !5673
  %6 = load ptr, ptr %data, align 8, !dbg !5674
  %io_db4 = getelementptr inbounds %struct.socket_data, ptr %6, i32 0, i32 2, !dbg !5675
  %next5 = getelementptr inbounds %struct.resource_map, ptr %io_db4, i32 0, i32 2, !dbg !5676
  store ptr %io_db, ptr %next5, align 8, !dbg !5677
  %7 = load ptr, ptr %data, align 8, !dbg !5678
  %8 = load ptr, ptr %s.addr, align 8, !dbg !5679
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %8, i32 0, i32 25, !dbg !5680
  store ptr %7, ptr %resource_data, align 8, !dbg !5681
  %9 = load ptr, ptr %s.addr, align 8, !dbg !5682
  %call6 = call i32 @nonstatic_autoadd_resources(ptr noundef %9) #17, !dbg !5683
  store i32 0, ptr %retval, align 4, !dbg !5684
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5684

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5685
  %10 = load i32, ptr %retval, align 4, !dbg !5685
  ret i32 %10, !dbg !5685
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nonstatic_release_resource_db(ptr noundef %s) #0 align 16 !dbg !5686 {
entry:
  %s.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5688, metadata !DIExpression()), !dbg !5692
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !5693
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5689, metadata !DIExpression()), !dbg !5694
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5695
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 25, !dbg !5696
  %1 = load ptr, ptr %resource_data, align 8, !dbg !5696
  store ptr %1, ptr %data, align 8, !dbg !5694
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5690, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #16, !dbg !5697
  call void @llvm.dbg.declare(metadata ptr %q, metadata !5691, metadata !DIExpression()), !dbg !5699
  %2 = load ptr, ptr %data, align 8, !dbg !5700
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %2, i32 0, i32 1, !dbg !5702
  %next = getelementptr inbounds %struct.resource_map, ptr %mem_db_valid, i32 0, i32 2, !dbg !5703
  %3 = load ptr, ptr %next, align 8, !dbg !5703
  store ptr %3, ptr %p, align 8, !dbg !5704
  br label %for.cond, !dbg !5705

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %p, align 8, !dbg !5706
  %5 = load ptr, ptr %data, align 8, !dbg !5708
  %mem_db_valid1 = getelementptr inbounds %struct.socket_data, ptr %5, i32 0, i32 1, !dbg !5709
  %cmp = icmp ne ptr %4, %mem_db_valid1, !dbg !5710
  br i1 %cmp, label %for.body, label %for.end, !dbg !5711

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8, !dbg !5712
  %next2 = getelementptr inbounds %struct.resource_map, ptr %6, i32 0, i32 2, !dbg !5714
  %7 = load ptr, ptr %next2, align 8, !dbg !5714
  store ptr %7, ptr %q, align 8, !dbg !5715
  %8 = load ptr, ptr %p, align 8, !dbg !5716
  call void @kfree(ptr noundef %8) #17, !dbg !5717
  br label %for.inc, !dbg !5718

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %q, align 8, !dbg !5719
  store ptr %9, ptr %p, align 8, !dbg !5720
  br label %for.cond, !dbg !5721, !llvm.loop !5722

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %data, align 8, !dbg !5724
  %mem_db = getelementptr inbounds %struct.socket_data, ptr %10, i32 0, i32 0, !dbg !5726
  %next3 = getelementptr inbounds %struct.resource_map, ptr %mem_db, i32 0, i32 2, !dbg !5727
  %11 = load ptr, ptr %next3, align 8, !dbg !5727
  store ptr %11, ptr %p, align 8, !dbg !5728
  br label %for.cond4, !dbg !5729

for.cond4:                                        ; preds = %for.inc9, %for.end
  %12 = load ptr, ptr %p, align 8, !dbg !5730
  %13 = load ptr, ptr %data, align 8, !dbg !5732
  %mem_db5 = getelementptr inbounds %struct.socket_data, ptr %13, i32 0, i32 0, !dbg !5733
  %cmp6 = icmp ne ptr %12, %mem_db5, !dbg !5734
  br i1 %cmp6, label %for.body7, label %for.end10, !dbg !5735

for.body7:                                        ; preds = %for.cond4
  %14 = load ptr, ptr %p, align 8, !dbg !5736
  %next8 = getelementptr inbounds %struct.resource_map, ptr %14, i32 0, i32 2, !dbg !5738
  %15 = load ptr, ptr %next8, align 8, !dbg !5738
  store ptr %15, ptr %q, align 8, !dbg !5739
  %16 = load ptr, ptr %p, align 8, !dbg !5740
  call void @kfree(ptr noundef %16) #17, !dbg !5741
  br label %for.inc9, !dbg !5742

for.inc9:                                         ; preds = %for.body7
  %17 = load ptr, ptr %q, align 8, !dbg !5743
  store ptr %17, ptr %p, align 8, !dbg !5744
  br label %for.cond4, !dbg !5745, !llvm.loop !5746

for.end10:                                        ; preds = %for.cond4
  %18 = load ptr, ptr %data, align 8, !dbg !5748
  %io_db = getelementptr inbounds %struct.socket_data, ptr %18, i32 0, i32 2, !dbg !5750
  %next11 = getelementptr inbounds %struct.resource_map, ptr %io_db, i32 0, i32 2, !dbg !5751
  %19 = load ptr, ptr %next11, align 8, !dbg !5751
  store ptr %19, ptr %p, align 8, !dbg !5752
  br label %for.cond12, !dbg !5753

for.cond12:                                       ; preds = %for.inc17, %for.end10
  %20 = load ptr, ptr %p, align 8, !dbg !5754
  %21 = load ptr, ptr %data, align 8, !dbg !5756
  %io_db13 = getelementptr inbounds %struct.socket_data, ptr %21, i32 0, i32 2, !dbg !5757
  %cmp14 = icmp ne ptr %20, %io_db13, !dbg !5758
  br i1 %cmp14, label %for.body15, label %for.end18, !dbg !5759

for.body15:                                       ; preds = %for.cond12
  %22 = load ptr, ptr %p, align 8, !dbg !5760
  %next16 = getelementptr inbounds %struct.resource_map, ptr %22, i32 0, i32 2, !dbg !5762
  %23 = load ptr, ptr %next16, align 8, !dbg !5762
  store ptr %23, ptr %q, align 8, !dbg !5763
  %24 = load ptr, ptr %p, align 8, !dbg !5764
  call void @kfree(ptr noundef %24) #17, !dbg !5765
  br label %for.inc17, !dbg !5766

for.inc17:                                        ; preds = %for.body15
  %25 = load ptr, ptr %q, align 8, !dbg !5767
  store ptr %25, ptr %p, align 8, !dbg !5768
  br label %for.cond12, !dbg !5769, !llvm.loop !5770

for.end18:                                        ; preds = %for.cond12
  %26 = load ptr, ptr %data, align 8, !dbg !5772
  call void @kfree(ptr noundef %26) #17, !dbg !5773
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #16, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5774
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5774
  ret void, !dbg !5774
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @nonstatic_sysfs_exit() #1 section ".exit.text" align 16 !dbg !5775 {
entry:
  call void @class_interface_unregister(ptr noundef @pccard_rsrc_interface) #17, !dbg !5776
  ret void, !dbg !5777
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5778 dso_local void @class_interface_unregister(ptr noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init6() #1 section ".init.text" align 16 !dbg !5782 {
entry:
  %call = call i32 @nonstatic_sysfs_init() #19, !dbg !5783
  ret i32 %call, !dbg !5783
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @nonstatic_sysfs_init() #1 section ".init.text" align 16 !dbg !5784 {
entry:
  %call = call i32 @class_interface_register(ptr noundef @pccard_rsrc_interface) #17, !dbg !5785
  ret i32 %call, !dbg !5786
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @validate_mem(ptr noundef %s, i32 noundef %probe_mask) #0 align 16 !dbg !5787 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %probe_mask.addr = alloca i32, align 4
  %m = alloca ptr, align 8
  %mm = alloca %struct.resource_map, align 8
  %s_data = alloca ptr, align 8
  %ok = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5791, metadata !DIExpression()), !dbg !5797
  store i32 %probe_mask, ptr %probe_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %probe_mask.addr, metadata !5792, metadata !DIExpression()), !dbg !5798
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #16, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %m, metadata !5793, metadata !DIExpression()), !dbg !5800
  call void @llvm.lifetime.start.p0(i64 24, ptr %mm) #16, !dbg !5799
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5794, metadata !DIExpression()), !dbg !5801
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_data) #16, !dbg !5802
  call void @llvm.dbg.declare(metadata ptr %s_data, metadata !5795, metadata !DIExpression()), !dbg !5803
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5804
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 25, !dbg !5805
  %1 = load ptr, ptr %resource_data, align 8, !dbg !5805
  store ptr %1, ptr %s_data, align 8, !dbg !5803
  call void @llvm.lifetime.start.p0(i64 8, ptr %ok) #16, !dbg !5806
  call void @llvm.dbg.declare(metadata ptr %ok, metadata !5796, metadata !DIExpression()), !dbg !5807
  store i64 0, ptr %ok, align 8, !dbg !5807
  %2 = load ptr, ptr %s_data, align 8, !dbg !5808
  %mem_db = getelementptr inbounds %struct.socket_data, ptr %2, i32 0, i32 0, !dbg !5810
  %next = getelementptr inbounds %struct.resource_map, ptr %mem_db, i32 0, i32 2, !dbg !5811
  %3 = load ptr, ptr %next, align 8, !dbg !5811
  store ptr %3, ptr %m, align 8, !dbg !5812
  br label %for.cond, !dbg !5813

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %m, align 8, !dbg !5814
  %5 = load ptr, ptr %s_data, align 8, !dbg !5816
  %mem_db1 = getelementptr inbounds %struct.socket_data, ptr %5, i32 0, i32 0, !dbg !5817
  %cmp = icmp ne ptr %4, %mem_db1, !dbg !5818
  br i1 %cmp, label %for.body, label %for.end, !dbg !5819

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %m, align 8, !dbg !5820
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %mm, ptr align 8 %6, i64 24, i1 false), !dbg !5822
  %7 = load ptr, ptr %s.addr, align 8, !dbg !5823
  %base = getelementptr inbounds %struct.resource_map, ptr %mm, i32 0, i32 0, !dbg !5824
  %8 = load i64, ptr %base, align 8, !dbg !5824
  %num = getelementptr inbounds %struct.resource_map, ptr %mm, i32 0, i32 1, !dbg !5825
  %9 = load i64, ptr %num, align 8, !dbg !5825
  %call = call i32 @do_mem_probe(ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef @readable, ptr noundef @checksum) #17, !dbg !5826
  %conv = sext i32 %call to i64, !dbg !5826
  %10 = load i64, ptr %ok, align 8, !dbg !5827
  %add = add i64 %10, %conv, !dbg !5827
  store i64 %add, ptr %ok, align 8, !dbg !5827
  br label %for.inc, !dbg !5828

for.inc:                                          ; preds = %for.body
  %next2 = getelementptr inbounds %struct.resource_map, ptr %mm, i32 0, i32 2, !dbg !5829
  %11 = load ptr, ptr %next2, align 8, !dbg !5829
  store ptr %11, ptr %m, align 8, !dbg !5830
  br label %for.cond, !dbg !5831, !llvm.loop !5832

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %ok, align 8, !dbg !5834
  %cmp3 = icmp ugt i64 %12, 0, !dbg !5836
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5837

if.then:                                          ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end:                                           ; preds = %for.end
  store i32 -19, ptr %retval, align 4, !dbg !5839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5839

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ok) #16, !dbg !5840
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_data) #16, !dbg !5840
  call void @llvm.lifetime.end.p0(i64 24, ptr %mm) #16, !dbg !5840
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #16, !dbg !5840
  %13 = load i32, ptr %retval, align 4, !dbg !5840
  ret i32 %13, !dbg !5840
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_mem_probe(ptr noundef %s, i64 noundef %base, i64 noundef %num, ptr noundef %validate, ptr noundef %fallback) #0 align 16 !dbg !5841 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %validate.addr = alloca ptr, align 8
  %fallback.addr = alloca ptr, align 8
  %s_data = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %bad = alloca i64, align 8
  %fail = alloca i64, align 8
  %step = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %tmp72 = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5848, metadata !DIExpression()), !dbg !5859
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5849, metadata !DIExpression()), !dbg !5860
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5850, metadata !DIExpression()), !dbg !5861
  store ptr %validate, ptr %validate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !5851, metadata !DIExpression()), !dbg !5862
  store ptr %fallback, ptr %fallback.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fallback.addr, metadata !5852, metadata !DIExpression()), !dbg !5863
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_data) #16, !dbg !5864
  call void @llvm.dbg.declare(metadata ptr %s_data, metadata !5853, metadata !DIExpression()), !dbg !5865
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5866
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 25, !dbg !5867
  %1 = load ptr, ptr %resource_data, align 8, !dbg !5867
  store ptr %1, ptr %s_data, align 8, !dbg !5865
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #16, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5854, metadata !DIExpression()), !dbg !5869
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #16, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %j, metadata !5855, metadata !DIExpression()), !dbg !5870
  call void @llvm.lifetime.start.p0(i64 8, ptr %bad) #16, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %bad, metadata !5856, metadata !DIExpression()), !dbg !5871
  call void @llvm.lifetime.start.p0(i64 8, ptr %fail) #16, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %fail, metadata !5857, metadata !DIExpression()), !dbg !5872
  call void @llvm.lifetime.start.p0(i64 8, ptr %step) #16, !dbg !5868
  call void @llvm.dbg.declare(metadata ptr %step, metadata !5858, metadata !DIExpression()), !dbg !5873
  br label %do.body, !dbg !5874

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5876

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5876

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %s.addr, align 8, !dbg !5874
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 42, !dbg !5874
  %3 = load i64, ptr %base.addr, align 8, !dbg !5874
  %4 = load i64, ptr %base.addr, align 8, !dbg !5874
  %5 = load i64, ptr %num.addr, align 8, !dbg !5874
  %add = add i64 %4, %5, !dbg !5874
  %sub = sub i64 %add, 1, !dbg !5874
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str, i64 noundef %3, i64 noundef %sub) #19, !dbg !5874
  store i64 0, ptr %fail, align 8, !dbg !5878
  store i64 0, ptr %bad, align 8, !dbg !5879
  %6 = load i64, ptr %num.addr, align 8, !dbg !5880
  %cmp = icmp ult i64 %6, 131072, !dbg !5881
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5882

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !5882

cond.false:                                       ; preds = %do.end
  %7 = load i64, ptr %num.addr, align 8, !dbg !5883
  %shr = lshr i64 %7, 4, !dbg !5884
  %and = and i64 %shr, -8192, !dbg !5885
  br label %cond.end, !dbg !5882

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8192, %cond.true ], [ %and, %cond.false ], !dbg !5882
  store i64 %cond, ptr %step, align 8, !dbg !5886
  %8 = load i64, ptr %step, align 8, !dbg !5887
  %cmp1 = icmp ugt i64 %8, 8388608, !dbg !5889
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5890

if.then:                                          ; preds = %cond.end
  store i64 8388608, ptr %step, align 8, !dbg !5891
  br label %if.end, !dbg !5892

if.end:                                           ; preds = %if.then, %cond.end
  %9 = load i64, ptr %step, align 8, !dbg !5893
  %10 = load ptr, ptr %s.addr, align 8, !dbg !5895
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 18, !dbg !5896
  %11 = load i32, ptr %map_size, align 4, !dbg !5896
  %mul = mul i32 2, %11, !dbg !5897
  %conv = zext i32 %mul to i64, !dbg !5898
  %cmp2 = icmp ult i64 %9, %conv, !dbg !5899
  br i1 %cmp2, label %if.then4, label %if.end8, !dbg !5900

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %s.addr, align 8, !dbg !5901
  %map_size5 = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 18, !dbg !5902
  %13 = load i32, ptr %map_size5, align 4, !dbg !5902
  %mul6 = mul i32 2, %13, !dbg !5903
  %conv7 = zext i32 %mul6 to i64, !dbg !5904
  store i64 %conv7, ptr %step, align 8, !dbg !5905
  br label %if.end8, !dbg !5906

if.end8:                                          ; preds = %if.then4, %if.end
  %14 = load i64, ptr %base.addr, align 8, !dbg !5907
  store i64 %14, ptr %j, align 8, !dbg !5909
  store i64 %14, ptr %i, align 8, !dbg !5910
  br label %for.cond, !dbg !5911

for.cond:                                         ; preds = %for.inc66, %if.end8
  %15 = load i64, ptr %i, align 8, !dbg !5912
  %16 = load i64, ptr %base.addr, align 8, !dbg !5914
  %17 = load i64, ptr %num.addr, align 8, !dbg !5915
  %add9 = add i64 %16, %17, !dbg !5916
  %cmp10 = icmp ult i64 %15, %add9, !dbg !5917
  br i1 %cmp10, label %for.body, label %for.end68, !dbg !5918

for.body:                                         ; preds = %for.cond
  %18 = load i64, ptr %fail, align 8, !dbg !5919
  %tobool = icmp ne i64 %18, 0, !dbg !5919
  br i1 %tobool, label %if.end28, label %if.then12, !dbg !5922

if.then12:                                        ; preds = %for.body
  %19 = load i64, ptr %i, align 8, !dbg !5923
  store i64 %19, ptr %j, align 8, !dbg !5926
  br label %for.cond13, !dbg !5927

for.cond13:                                       ; preds = %for.inc, %if.then12
  %20 = load i64, ptr %j, align 8, !dbg !5928
  %21 = load i64, ptr %base.addr, align 8, !dbg !5930
  %22 = load i64, ptr %num.addr, align 8, !dbg !5931
  %add14 = add i64 %21, %22, !dbg !5932
  %cmp15 = icmp ult i64 %20, %add14, !dbg !5933
  br i1 %cmp15, label %for.body17, label %for.end, !dbg !5934

for.body17:                                       ; preds = %for.cond13
  %23 = load ptr, ptr %s.addr, align 8, !dbg !5935
  %24 = load i64, ptr %j, align 8, !dbg !5938
  %25 = load i64, ptr %step, align 8, !dbg !5939
  %26 = load ptr, ptr %validate.addr, align 8, !dbg !5940
  %call = call i32 @do_validate_mem(ptr noundef %23, i64 noundef %24, i64 noundef %25, ptr noundef %26) #17, !dbg !5941
  %tobool18 = icmp ne i32 %call, 0, !dbg !5941
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !5942

if.then19:                                        ; preds = %for.body17
  br label %for.end, !dbg !5943

if.end20:                                         ; preds = %for.body17
  br label %for.inc, !dbg !5944

for.inc:                                          ; preds = %if.end20
  %27 = load i64, ptr %step, align 8, !dbg !5945
  %28 = load i64, ptr %j, align 8, !dbg !5946
  %add21 = add i64 %28, %27, !dbg !5946
  store i64 %add21, ptr %j, align 8, !dbg !5946
  br label %for.cond13, !dbg !5947, !llvm.loop !5948

for.end:                                          ; preds = %if.then19, %for.cond13
  %29 = load i64, ptr %i, align 8, !dbg !5950
  %30 = load i64, ptr %base.addr, align 8, !dbg !5951
  %cmp22 = icmp eq i64 %29, %30, !dbg !5952
  br i1 %cmp22, label %land.rhs, label %land.end, !dbg !5953

land.rhs:                                         ; preds = %for.end
  %31 = load i64, ptr %j, align 8, !dbg !5954
  %32 = load i64, ptr %base.addr, align 8, !dbg !5955
  %33 = load i64, ptr %num.addr, align 8, !dbg !5956
  %add24 = add i64 %32, %33, !dbg !5957
  %cmp25 = icmp eq i64 %31, %add24, !dbg !5958
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.end
  %34 = phi i1 [ false, %for.end ], [ %cmp25, %land.rhs ], !dbg !5959
  %land.ext = zext i1 %34 to i32, !dbg !5953
  %conv27 = sext i32 %land.ext to i64, !dbg !5960
  store i64 %conv27, ptr %fail, align 8, !dbg !5961
  br label %if.end28, !dbg !5962

if.end28:                                         ; preds = %land.end, %for.body
  %35 = load i64, ptr %fail, align 8, !dbg !5963
  %tobool29 = icmp ne i64 %35, 0, !dbg !5965
  br i1 %tobool29, label %land.lhs.true, label %if.end44, !dbg !5966

land.lhs.true:                                    ; preds = %if.end28
  %36 = load ptr, ptr %fallback.addr, align 8, !dbg !5967
  %tobool30 = icmp ne ptr %36, null, !dbg !5968
  br i1 %tobool30, label %if.then31, label %if.end44, !dbg !5969

if.then31:                                        ; preds = %land.lhs.true
  %37 = load i64, ptr %i, align 8, !dbg !5970
  store i64 %37, ptr %j, align 8, !dbg !5973
  br label %for.cond32, !dbg !5974

for.cond32:                                       ; preds = %for.inc41, %if.then31
  %38 = load i64, ptr %j, align 8, !dbg !5975
  %39 = load i64, ptr %base.addr, align 8, !dbg !5977
  %40 = load i64, ptr %num.addr, align 8, !dbg !5978
  %add33 = add i64 %39, %40, !dbg !5979
  %cmp34 = icmp ult i64 %38, %add33, !dbg !5980
  br i1 %cmp34, label %for.body36, label %for.end43, !dbg !5981

for.body36:                                       ; preds = %for.cond32
  %41 = load ptr, ptr %s.addr, align 8, !dbg !5982
  %42 = load i64, ptr %j, align 8, !dbg !5984
  %43 = load i64, ptr %step, align 8, !dbg !5985
  %44 = load ptr, ptr %fallback.addr, align 8, !dbg !5986
  %call37 = call i32 @do_validate_mem(ptr noundef %41, i64 noundef %42, i64 noundef %43, ptr noundef %44) #17, !dbg !5987
  %tobool38 = icmp ne i32 %call37, 0, !dbg !5987
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !5988

if.then39:                                        ; preds = %for.body36
  br label %for.end43, !dbg !5989

if.end40:                                         ; preds = %for.body36
  br label %for.inc41, !dbg !5990

for.inc41:                                        ; preds = %if.end40
  %45 = load i64, ptr %step, align 8, !dbg !5991
  %46 = load i64, ptr %j, align 8, !dbg !5992
  %add42 = add i64 %46, %45, !dbg !5992
  store i64 %add42, ptr %j, align 8, !dbg !5992
  br label %for.cond32, !dbg !5993, !llvm.loop !5994

for.end43:                                        ; preds = %if.then39, %for.cond32
  br label %if.end44, !dbg !5996

if.end44:                                         ; preds = %for.end43, %land.lhs.true, %if.end28
  %47 = load i64, ptr %i, align 8, !dbg !5997
  %48 = load i64, ptr %j, align 8, !dbg !5999
  %cmp45 = icmp ne i64 %47, %48, !dbg !6000
  br i1 %cmp45, label %if.then47, label %if.end65, !dbg !6001

if.then47:                                        ; preds = %if.end44
  %49 = load i64, ptr %bad, align 8, !dbg !6002
  %tobool48 = icmp ne i64 %49, 0, !dbg !6002
  br i1 %tobool48, label %if.end54, label %if.then49, !dbg !6005

if.then49:                                        ; preds = %if.then47
  br label %do.body50, !dbg !6006

do.body50:                                        ; preds = %if.then49
  br label %do.cond51, !dbg !6008

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !6008

do.end52:                                         ; preds = %do.cond51
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #19, !dbg !6006
  store i32 %call53, ptr %tmp, align 4, !dbg !6008
  %50 = load i32, ptr %tmp, align 4, !dbg !6006
  br label %if.end54, !dbg !6010

if.end54:                                         ; preds = %do.end52, %if.then47
  br label %do.body55, !dbg !6011

do.body55:                                        ; preds = %if.end54
  br label %do.cond56, !dbg !6013

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6013

do.end57:                                         ; preds = %do.cond56
  %51 = load i64, ptr %i, align 8, !dbg !6011
  %52 = load i64, ptr %j, align 8, !dbg !6011
  %sub59 = sub i64 %52, 1, !dbg !6011
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i64 noundef %51, i64 noundef %sub59) #19, !dbg !6011
  store i32 %call60, ptr %tmp58, align 4, !dbg !6013
  %53 = load i32, ptr %tmp58, align 4, !dbg !6011
  %54 = load ptr, ptr %s_data, align 8, !dbg !6015
  %mem_db = getelementptr inbounds %struct.socket_data, ptr %54, i32 0, i32 0, !dbg !6016
  %55 = load i64, ptr %i, align 8, !dbg !6017
  %56 = load i64, ptr %j, align 8, !dbg !6018
  %57 = load i64, ptr %i, align 8, !dbg !6019
  %sub61 = sub i64 %56, %57, !dbg !6020
  %call62 = call i32 @sub_interval(ptr noundef %mem_db, i64 noundef %55, i64 noundef %sub61) #17, !dbg !6021
  %58 = load i64, ptr %j, align 8, !dbg !6022
  %59 = load i64, ptr %i, align 8, !dbg !6023
  %sub63 = sub i64 %58, %59, !dbg !6024
  %60 = load i64, ptr %bad, align 8, !dbg !6025
  %add64 = add i64 %60, %sub63, !dbg !6025
  store i64 %add64, ptr %bad, align 8, !dbg !6025
  br label %if.end65, !dbg !6026

if.end65:                                         ; preds = %do.end57, %if.end44
  br label %for.inc66, !dbg !6027

for.inc66:                                        ; preds = %if.end65
  %61 = load i64, ptr %j, align 8, !dbg !6028
  %62 = load i64, ptr %step, align 8, !dbg !6029
  %add67 = add i64 %61, %62, !dbg !6030
  store i64 %add67, ptr %i, align 8, !dbg !6031
  br label %for.cond, !dbg !6032, !llvm.loop !6033

for.end68:                                        ; preds = %for.cond
  br label %do.body69, !dbg !6035

do.body69:                                        ; preds = %for.end68
  br label %do.cond70, !dbg !6037

do.cond70:                                        ; preds = %do.body69
  br label %do.end71, !dbg !6037

do.end71:                                         ; preds = %do.cond70
  %63 = load i64, ptr %bad, align 8, !dbg !6035
  %tobool73 = icmp ne i64 %63, 0, !dbg !6035
  %lnot = xor i1 %tobool73, true, !dbg !6035
  %64 = zext i1 %lnot to i64, !dbg !6035
  %cond74 = select i1 %lnot, ptr @.str.4, ptr @.str.5, !dbg !6035
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %cond74) #19, !dbg !6035
  store i32 %call75, ptr %tmp72, align 4, !dbg !6037
  %65 = load i32, ptr %tmp72, align 4, !dbg !6035
  %66 = load i64, ptr %num.addr, align 8, !dbg !6039
  %67 = load i64, ptr %bad, align 8, !dbg !6040
  %sub76 = sub i64 %66, %67, !dbg !6041
  %conv77 = trunc i64 %sub76 to i32, !dbg !6039
  call void @llvm.lifetime.end.p0(i64 8, ptr %step) #16, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 8, ptr %fail) #16, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 8, ptr %bad) #16, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #16, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #16, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_data) #16, !dbg !6042
  ret i32 %conv77, !dbg !6043
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readable(ptr noundef %s, ptr noundef %res, ptr noundef %count) #0 align 16 !dbg !6044 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %count.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6046, metadata !DIExpression()), !dbg !6050
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6047, metadata !DIExpression()), !dbg !6051
  store ptr %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6048, metadata !DIExpression()), !dbg !6052
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6053
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6049, metadata !DIExpression()), !dbg !6054
  store i32 -22, ptr %ret, align 4, !dbg !6054
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6055
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 12, !dbg !6057
  %1 = load ptr, ptr %fake_cis, align 8, !dbg !6057
  %tobool = icmp ne ptr %1, null, !dbg !6055
  br i1 %tobool, label %if.then, label %if.end, !dbg !6058

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6059
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6059

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6061
  %3 = load ptr, ptr %s.addr, align 8, !dbg !6062
  %cis_mem = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 6, !dbg !6063
  %res1 = getelementptr inbounds %struct.pccard_mem_map, ptr %cis_mem, i32 0, i32 5, !dbg !6064
  store ptr %2, ptr %res1, align 8, !dbg !6065
  %4 = load ptr, ptr %res.addr, align 8, !dbg !6066
  %start = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 0, !dbg !6067
  %5 = load i64, ptr %start, align 8, !dbg !6067
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6068
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 18, !dbg !6069
  %7 = load i32, ptr %map_size, align 4, !dbg !6069
  %conv = zext i32 %7 to i64, !dbg !6068
  %call = call ptr @ioremap(i64 noundef %5, i64 noundef %conv) #17, !dbg !6070
  %8 = load ptr, ptr %s.addr, align 8, !dbg !6071
  %cis_virt = getelementptr inbounds %struct.pcmcia_socket, ptr %8, i32 0, i32 7, !dbg !6072
  store ptr %call, ptr %cis_virt, align 8, !dbg !6073
  %9 = load ptr, ptr %s.addr, align 8, !dbg !6074
  %cis_virt2 = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 7, !dbg !6076
  %10 = load ptr, ptr %cis_virt2, align 8, !dbg !6076
  %tobool3 = icmp ne ptr %10, null, !dbg !6074
  br i1 %tobool3, label %if.then4, label %if.end14, !dbg !6077

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %s.addr, align 8, !dbg !6078
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %11, i32 0, i32 34, !dbg !6080
  call void @mutex_unlock(ptr noundef %ops_mutex) #17, !dbg !6081
  %12 = load ptr, ptr %s.addr, align 8, !dbg !6082
  %callback = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 36, !dbg !6084
  %13 = load ptr, ptr %callback, align 8, !dbg !6084
  %validate = getelementptr inbounds %struct.pcmcia_callback, ptr %13, i32 0, i32 4, !dbg !6085
  %14 = load ptr, ptr %validate, align 8, !dbg !6085
  %tobool5 = icmp ne ptr %14, null, !dbg !6082
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !6086

if.then6:                                         ; preds = %if.then4
  %15 = load ptr, ptr %s.addr, align 8, !dbg !6087
  %callback7 = getelementptr inbounds %struct.pcmcia_socket, ptr %15, i32 0, i32 36, !dbg !6088
  %16 = load ptr, ptr %callback7, align 8, !dbg !6088
  %validate8 = getelementptr inbounds %struct.pcmcia_callback, ptr %16, i32 0, i32 4, !dbg !6089
  %17 = load ptr, ptr %validate8, align 8, !dbg !6089
  %18 = load ptr, ptr %s.addr, align 8, !dbg !6090
  %19 = load ptr, ptr %count.addr, align 8, !dbg !6091
  %call9 = call i32 %17(ptr noundef %18, ptr noundef %19) #17, !dbg !6087
  store i32 %call9, ptr %ret, align 4, !dbg !6092
  br label %if.end10, !dbg !6093

if.end10:                                         ; preds = %if.then6, %if.then4
  %20 = load ptr, ptr %s.addr, align 8, !dbg !6094
  %ops_mutex11 = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 34, !dbg !6095
  call void @mutex_lock(ptr noundef %ops_mutex11) #17, !dbg !6096
  %21 = load ptr, ptr %s.addr, align 8, !dbg !6097
  %cis_virt12 = getelementptr inbounds %struct.pcmcia_socket, ptr %21, i32 0, i32 7, !dbg !6098
  %22 = load ptr, ptr %cis_virt12, align 8, !dbg !6098
  call void @iounmap(ptr noundef %22) #17, !dbg !6099
  %23 = load ptr, ptr %s.addr, align 8, !dbg !6100
  %cis_virt13 = getelementptr inbounds %struct.pcmcia_socket, ptr %23, i32 0, i32 7, !dbg !6101
  store ptr null, ptr %cis_virt13, align 8, !dbg !6102
  br label %if.end14, !dbg !6103

if.end14:                                         ; preds = %if.end10, %if.end
  %24 = load ptr, ptr %s.addr, align 8, !dbg !6104
  %cis_mem15 = getelementptr inbounds %struct.pcmcia_socket, ptr %24, i32 0, i32 6, !dbg !6105
  %res16 = getelementptr inbounds %struct.pccard_mem_map, ptr %cis_mem15, i32 0, i32 5, !dbg !6106
  store ptr null, ptr %res16, align 8, !dbg !6107
  %25 = load i32, ptr %ret, align 4, !dbg !6108
  %tobool17 = icmp ne i32 %25, 0, !dbg !6110
  br i1 %tobool17, label %if.then19, label %lor.lhs.false, !dbg !6111

lor.lhs.false:                                    ; preds = %if.end14
  %26 = load ptr, ptr %count.addr, align 8, !dbg !6112
  %27 = load i32, ptr %26, align 4, !dbg !6113
  %cmp = icmp eq i32 %27, 0, !dbg !6114
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !6115

if.then19:                                        ; preds = %lor.lhs.false, %if.end14
  store i32 -22, ptr %retval, align 4, !dbg !6116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6116

if.end20:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !6117
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6117

cleanup:                                          ; preds = %if.end20, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6118
  %28 = load i32, ptr %retval, align 4, !dbg !6118
  ret i32 %28, !dbg !6118
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @checksum(ptr noundef %s, ptr noundef %res, ptr noundef %value) #0 align 16 !dbg !6119 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %map = alloca %struct.pccard_mem_map, align 8
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %d = alloca i32, align 4
  %virt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6121, metadata !DIExpression()), !dbg !6130
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6122, metadata !DIExpression()), !dbg !6131
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !6123, metadata !DIExpression()), !dbg !6132
  call void @llvm.lifetime.start.p0(i64 32, ptr %map) #16, !dbg !6133
  call void @llvm.dbg.declare(metadata ptr %map, metadata !6124, metadata !DIExpression()), !dbg !6134
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6125, metadata !DIExpression()), !dbg !6136
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #16, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %a, metadata !6126, metadata !DIExpression()), !dbg !6137
  store i32 0, ptr %a, align 4, !dbg !6137
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #16, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %b, metadata !6127, metadata !DIExpression()), !dbg !6138
  store i32 -1, ptr %b, align 4, !dbg !6138
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #16, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %d, metadata !6128, metadata !DIExpression()), !dbg !6139
  call void @llvm.lifetime.start.p0(i64 8, ptr %virt) #16, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %virt, metadata !6129, metadata !DIExpression()), !dbg !6141
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6142
  %start = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 0, !dbg !6143
  %1 = load i64, ptr %start, align 8, !dbg !6143
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6144
  %map_size = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 18, !dbg !6145
  %3 = load i32, ptr %map_size, align 4, !dbg !6145
  %conv = zext i32 %3 to i64, !dbg !6144
  %call = call ptr @ioremap(i64 noundef %1, i64 noundef %conv) #17, !dbg !6146
  store ptr %call, ptr %virt, align 8, !dbg !6147
  %4 = load ptr, ptr %virt, align 8, !dbg !6148
  %tobool = icmp ne ptr %4, null, !dbg !6148
  br i1 %tobool, label %if.then, label %if.end, !dbg !6150

if.then:                                          ; preds = %entry
  %map1 = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 0, !dbg !6151
  store i8 0, ptr %map1, align 8, !dbg !6153
  %flags = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 1, !dbg !6154
  store i8 1, ptr %flags, align 1, !dbg !6155
  %speed = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 2, !dbg !6156
  store i16 0, ptr %speed, align 2, !dbg !6157
  %5 = load ptr, ptr %res.addr, align 8, !dbg !6158
  %res2 = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 5, !dbg !6159
  store ptr %5, ptr %res2, align 8, !dbg !6160
  %card_start = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 4, !dbg !6161
  store i32 0, ptr %card_start, align 8, !dbg !6162
  %6 = load ptr, ptr %s.addr, align 8, !dbg !6163
  %ops = getelementptr inbounds %struct.pcmcia_socket, ptr %6, i32 0, i32 23, !dbg !6164
  %7 = load ptr, ptr %ops, align 8, !dbg !6164
  %set_mem_map = getelementptr inbounds %struct.pccard_operations, ptr %7, i32 0, i32 5, !dbg !6165
  %8 = load ptr, ptr %set_mem_map, align 8, !dbg !6165
  %9 = load ptr, ptr %s.addr, align 8, !dbg !6166
  %call3 = call i32 %8(ptr noundef %9, ptr noundef %map) #17, !dbg !6163
  store i32 0, ptr %i, align 4, !dbg !6167
  br label %for.cond, !dbg !6169

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, ptr %i, align 4, !dbg !6170
  %11 = load ptr, ptr %s.addr, align 8, !dbg !6172
  %map_size4 = getelementptr inbounds %struct.pcmcia_socket, ptr %11, i32 0, i32 18, !dbg !6173
  %12 = load i32, ptr %map_size4, align 4, !dbg !6173
  %cmp = icmp ult i32 %10, %12, !dbg !6174
  br i1 %cmp, label %for.body, label %for.end, !dbg !6175

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %virt, align 8, !dbg !6176
  %14 = load i32, ptr %i, align 4, !dbg !6178
  %idx.ext = sext i32 %14 to i64, !dbg !6179
  %add.ptr = getelementptr i8, ptr %13, i64 %idx.ext, !dbg !6179
  %call6 = call i32 @readl(ptr noundef %add.ptr) #17, !dbg !6180
  store i32 %call6, ptr %d, align 4, !dbg !6181
  %15 = load i32, ptr %d, align 4, !dbg !6182
  %16 = load i32, ptr %a, align 4, !dbg !6183
  %add = add i32 %16, %15, !dbg !6183
  store i32 %add, ptr %a, align 4, !dbg !6183
  %17 = load i32, ptr %d, align 4, !dbg !6184
  %18 = load i32, ptr %b, align 4, !dbg !6185
  %and = and i32 %18, %17, !dbg !6185
  store i32 %and, ptr %b, align 4, !dbg !6185
  br label %for.inc, !dbg !6186

for.inc:                                          ; preds = %for.body
  %19 = load i32, ptr %i, align 4, !dbg !6187
  %add7 = add i32 %19, 44, !dbg !6187
  store i32 %add7, ptr %i, align 4, !dbg !6187
  br label %for.cond, !dbg !6188, !llvm.loop !6189

for.end:                                          ; preds = %for.cond
  %flags8 = getelementptr inbounds %struct.pccard_mem_map, ptr %map, i32 0, i32 1, !dbg !6191
  store i8 0, ptr %flags8, align 1, !dbg !6192
  %20 = load ptr, ptr %s.addr, align 8, !dbg !6193
  %ops9 = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 23, !dbg !6194
  %21 = load ptr, ptr %ops9, align 8, !dbg !6194
  %set_mem_map10 = getelementptr inbounds %struct.pccard_operations, ptr %21, i32 0, i32 5, !dbg !6195
  %22 = load ptr, ptr %set_mem_map10, align 8, !dbg !6195
  %23 = load ptr, ptr %s.addr, align 8, !dbg !6196
  %call11 = call i32 %22(ptr noundef %23, ptr noundef %map) #17, !dbg !6193
  %24 = load ptr, ptr %virt, align 8, !dbg !6197
  call void @iounmap(ptr noundef %24) #17, !dbg !6198
  br label %if.end, !dbg !6199

if.end:                                           ; preds = %for.end, %entry
  %25 = load i32, ptr %b, align 4, !dbg !6200
  %cmp12 = icmp eq i32 %25, -1, !dbg !6202
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6203

if.then14:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6204

if.end15:                                         ; preds = %if.end
  %26 = load i32, ptr %a, align 4, !dbg !6205
  %27 = load ptr, ptr %value.addr, align 8, !dbg !6206
  store i32 %26, ptr %27, align 4, !dbg !6207
  store i32 0, ptr %retval, align 4, !dbg !6208
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6208

cleanup:                                          ; preds = %if.end15, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %virt) #16, !dbg !6209
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #16, !dbg !6209
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #16, !dbg !6209
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #16, !dbg !6209
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6209
  call void @llvm.lifetime.end.p0(i64 32, ptr %map) #16, !dbg !6209
  %28 = load i32, ptr %retval, align 4, !dbg !6209
  ret i32 %28, !dbg !6209
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6210 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_validate_mem(ptr noundef %s, i64 noundef %base, i64 noundef %size, ptr noundef %validate) #0 align 16 !dbg !6214 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %validate.addr = alloca ptr, align 8
  %s_data = alloca ptr, align 8
  %res1 = alloca ptr, align 8
  %res2 = alloca ptr, align 8
  %info1 = alloca i32, align 4
  %info2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6218, metadata !DIExpression()), !dbg !6228
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6219, metadata !DIExpression()), !dbg !6229
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6220, metadata !DIExpression()), !dbg !6230
  store ptr %validate, ptr %validate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %validate.addr, metadata !6221, metadata !DIExpression()), !dbg !6231
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_data) #16, !dbg !6232
  call void @llvm.dbg.declare(metadata ptr %s_data, metadata !6222, metadata !DIExpression()), !dbg !6233
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6234
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 25, !dbg !6235
  %1 = load ptr, ptr %resource_data, align 8, !dbg !6235
  store ptr %1, ptr %s_data, align 8, !dbg !6233
  call void @llvm.lifetime.start.p0(i64 8, ptr %res1) #16, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %res1, metadata !6223, metadata !DIExpression()), !dbg !6237
  call void @llvm.lifetime.start.p0(i64 8, ptr %res2) #16, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %res2, metadata !6224, metadata !DIExpression()), !dbg !6238
  call void @llvm.lifetime.start.p0(i64 4, ptr %info1) #16, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %info1, metadata !6225, metadata !DIExpression()), !dbg !6240
  store i32 1, ptr %info1, align 4, !dbg !6240
  call void @llvm.lifetime.start.p0(i64 4, ptr %info2) #16, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %info2, metadata !6226, metadata !DIExpression()), !dbg !6241
  store i32 1, ptr %info2, align 4, !dbg !6241
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6242
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6227, metadata !DIExpression()), !dbg !6243
  store i32 -22, ptr %ret, align 4, !dbg !6243
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6244
  %3 = load i64, ptr %base.addr, align 8, !dbg !6245
  %4 = load i64, ptr %size.addr, align 8, !dbg !6246
  %div = udiv i64 %4, 2, !dbg !6247
  %call = call ptr @claim_region(ptr noundef %2, i64 noundef %3, i64 noundef %div, i32 noundef 512, ptr noundef @.str.6) #17, !dbg !6248
  store ptr %call, ptr %res1, align 8, !dbg !6249
  %5 = load ptr, ptr %s.addr, align 8, !dbg !6250
  %6 = load i64, ptr %base.addr, align 8, !dbg !6251
  %7 = load i64, ptr %size.addr, align 8, !dbg !6252
  %div1 = udiv i64 %7, 2, !dbg !6253
  %add = add i64 %6, %div1, !dbg !6254
  %8 = load i64, ptr %size.addr, align 8, !dbg !6255
  %div2 = udiv i64 %8, 2, !dbg !6256
  %call3 = call ptr @claim_region(ptr noundef %5, i64 noundef %add, i64 noundef %div2, i32 noundef 512, ptr noundef @.str.6) #17, !dbg !6257
  store ptr %call3, ptr %res2, align 8, !dbg !6258
  %9 = load ptr, ptr %res1, align 8, !dbg !6259
  %tobool = icmp ne ptr %9, null, !dbg !6259
  br i1 %tobool, label %land.lhs.true, label %if.end10, !dbg !6261

land.lhs.true:                                    ; preds = %entry
  %10 = load ptr, ptr %res2, align 8, !dbg !6262
  %tobool4 = icmp ne ptr %10, null, !dbg !6262
  br i1 %tobool4, label %if.then, label %if.end10, !dbg !6263

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %ret, align 4, !dbg !6264
  %11 = load ptr, ptr %validate.addr, align 8, !dbg !6266
  %tobool5 = icmp ne ptr %11, null, !dbg !6266
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !6268

if.then6:                                         ; preds = %if.then
  %12 = load ptr, ptr %validate.addr, align 8, !dbg !6269
  %13 = load ptr, ptr %s.addr, align 8, !dbg !6271
  %14 = load ptr, ptr %res1, align 8, !dbg !6272
  %call7 = call i32 %12(ptr noundef %13, ptr noundef %14, ptr noundef %info1) #17, !dbg !6269
  store i32 %call7, ptr %ret, align 4, !dbg !6273
  %15 = load ptr, ptr %validate.addr, align 8, !dbg !6274
  %16 = load ptr, ptr %s.addr, align 8, !dbg !6275
  %17 = load ptr, ptr %res2, align 8, !dbg !6276
  %call8 = call i32 %15(ptr noundef %16, ptr noundef %17, ptr noundef %info2) #17, !dbg !6274
  %18 = load i32, ptr %ret, align 4, !dbg !6277
  %add9 = add i32 %18, %call8, !dbg !6277
  store i32 %add9, ptr %ret, align 4, !dbg !6277
  br label %if.end, !dbg !6278

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end10, !dbg !6279

if.end10:                                         ; preds = %if.end, %land.lhs.true, %entry
  %19 = load ptr, ptr %res2, align 8, !dbg !6280
  call void @free_region(ptr noundef %19) #17, !dbg !6281
  %20 = load ptr, ptr %res1, align 8, !dbg !6282
  call void @free_region(ptr noundef %20) #17, !dbg !6283
  %21 = load i32, ptr %ret, align 4, !dbg !6284
  %tobool11 = icmp ne i32 %21, 0, !dbg !6286
  br i1 %tobool11, label %if.then14, label %lor.lhs.false, !dbg !6287

lor.lhs.false:                                    ; preds = %if.end10
  %22 = load i32, ptr %info1, align 4, !dbg !6288
  %23 = load i32, ptr %info2, align 4, !dbg !6289
  %cmp = icmp ne i32 %22, %23, !dbg !6290
  br i1 %cmp, label %if.then14, label %lor.lhs.false12, !dbg !6291

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %24 = load i32, ptr %info1, align 4, !dbg !6292
  %cmp13 = icmp eq i32 %24, 0, !dbg !6293
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !6294

if.then14:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %if.end10
  store i32 -22, ptr %retval, align 4, !dbg !6295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6295

if.end15:                                         ; preds = %lor.lhs.false12
  %25 = load ptr, ptr %validate.addr, align 8, !dbg !6296
  %tobool16 = icmp ne ptr %25, null, !dbg !6296
  br i1 %tobool16, label %land.lhs.true17, label %if.end22, !dbg !6298

land.lhs.true17:                                  ; preds = %if.end15
  %26 = load ptr, ptr %s.addr, align 8, !dbg !6299
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %26, i32 0, i32 12, !dbg !6300
  %27 = load ptr, ptr %fake_cis, align 8, !dbg !6300
  %tobool18 = icmp ne ptr %27, null, !dbg !6299
  br i1 %tobool18, label %if.end22, label %if.then19, !dbg !6301

if.then19:                                        ; preds = %land.lhs.true17
  %28 = load ptr, ptr %s_data, align 8, !dbg !6302
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %28, i32 0, i32 1, !dbg !6304
  %29 = load i64, ptr %base.addr, align 8, !dbg !6305
  %30 = load i64, ptr %size.addr, align 8, !dbg !6306
  %call20 = call i32 @add_interval(ptr noundef %mem_db_valid, i64 noundef %29, i64 noundef %30) #17, !dbg !6307
  %31 = load ptr, ptr %s_data, align 8, !dbg !6308
  %mem_db = getelementptr inbounds %struct.socket_data, ptr %31, i32 0, i32 0, !dbg !6309
  %32 = load i64, ptr %base.addr, align 8, !dbg !6310
  %33 = load i64, ptr %size.addr, align 8, !dbg !6311
  %call21 = call i32 @sub_interval(ptr noundef %mem_db, i64 noundef %32, i64 noundef %33) #17, !dbg !6312
  br label %if.end22, !dbg !6313

if.end22:                                         ; preds = %if.then19, %land.lhs.true17, %if.end15
  store i32 0, ptr %retval, align 4, !dbg !6314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6314

cleanup:                                          ; preds = %if.end22, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6315
  call void @llvm.lifetime.end.p0(i64 4, ptr %info2) #16, !dbg !6315
  call void @llvm.lifetime.end.p0(i64 4, ptr %info1) #16, !dbg !6315
  call void @llvm.lifetime.end.p0(i64 8, ptr %res2) #16, !dbg !6315
  call void @llvm.lifetime.end.p0(i64 8, ptr %res1) #16, !dbg !6315
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_data) #16, !dbg !6315
  %34 = load i32, ptr %retval, align 4, !dbg !6315
  ret i32 %34, !dbg !6315
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6316 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sub_interval(ptr noundef %map, i64 noundef %base, i64 noundef %num) #0 align 16 !dbg !6320 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6324, metadata !DIExpression()), !dbg !6329
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6325, metadata !DIExpression()), !dbg !6330
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !6326, metadata !DIExpression()), !dbg !6331
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6332
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6327, metadata !DIExpression()), !dbg !6333
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #16, !dbg !6332
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6328, metadata !DIExpression()), !dbg !6334
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6335
  store ptr %0, ptr %p, align 8, !dbg !6337
  br label %for.cond, !dbg !6338

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !6339
  %next = getelementptr inbounds %struct.resource_map, ptr %1, i32 0, i32 2, !dbg !6342
  %2 = load ptr, ptr %next, align 8, !dbg !6342
  store ptr %2, ptr %q, align 8, !dbg !6343
  %3 = load ptr, ptr %q, align 8, !dbg !6344
  %4 = load ptr, ptr %map.addr, align 8, !dbg !6346
  %cmp = icmp eq ptr %3, %4, !dbg !6347
  br i1 %cmp, label %if.then, label %if.end, !dbg !6348

if.then:                                          ; preds = %for.cond
  br label %for.end, !dbg !6349

if.end:                                           ; preds = %for.cond
  %5 = load ptr, ptr %q, align 8, !dbg !6350
  %base1 = getelementptr inbounds %struct.resource_map, ptr %5, i32 0, i32 0, !dbg !6352
  %6 = load i64, ptr %base1, align 8, !dbg !6352
  %7 = load ptr, ptr %q, align 8, !dbg !6353
  %num2 = getelementptr inbounds %struct.resource_map, ptr %7, i32 0, i32 1, !dbg !6354
  %8 = load i64, ptr %num2, align 8, !dbg !6354
  %add = add i64 %6, %8, !dbg !6355
  %9 = load i64, ptr %base.addr, align 8, !dbg !6356
  %cmp3 = icmp ugt i64 %add, %9, !dbg !6357
  br i1 %cmp3, label %land.lhs.true, label %if.end57, !dbg !6358

land.lhs.true:                                    ; preds = %if.end
  %10 = load i64, ptr %base.addr, align 8, !dbg !6359
  %11 = load i64, ptr %num.addr, align 8, !dbg !6360
  %add4 = add i64 %10, %11, !dbg !6361
  %12 = load ptr, ptr %q, align 8, !dbg !6362
  %base5 = getelementptr inbounds %struct.resource_map, ptr %12, i32 0, i32 0, !dbg !6363
  %13 = load i64, ptr %base5, align 8, !dbg !6363
  %cmp6 = icmp ugt i64 %add4, %13, !dbg !6364
  br i1 %cmp6, label %if.then7, label %if.end57, !dbg !6365

if.then7:                                         ; preds = %land.lhs.true
  %14 = load ptr, ptr %q, align 8, !dbg !6366
  %base8 = getelementptr inbounds %struct.resource_map, ptr %14, i32 0, i32 0, !dbg !6369
  %15 = load i64, ptr %base8, align 8, !dbg !6369
  %16 = load i64, ptr %base.addr, align 8, !dbg !6370
  %cmp9 = icmp uge i64 %15, %16, !dbg !6371
  br i1 %cmp9, label %if.then10, label %if.else27, !dbg !6372

if.then10:                                        ; preds = %if.then7
  %17 = load ptr, ptr %q, align 8, !dbg !6373
  %base11 = getelementptr inbounds %struct.resource_map, ptr %17, i32 0, i32 0, !dbg !6376
  %18 = load i64, ptr %base11, align 8, !dbg !6376
  %19 = load ptr, ptr %q, align 8, !dbg !6377
  %num12 = getelementptr inbounds %struct.resource_map, ptr %19, i32 0, i32 1, !dbg !6378
  %20 = load i64, ptr %num12, align 8, !dbg !6378
  %add13 = add i64 %18, %20, !dbg !6379
  %21 = load i64, ptr %base.addr, align 8, !dbg !6380
  %22 = load i64, ptr %num.addr, align 8, !dbg !6381
  %add14 = add i64 %21, %22, !dbg !6382
  %cmp15 = icmp ule i64 %add13, %add14, !dbg !6383
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !6384

if.then16:                                        ; preds = %if.then10
  %23 = load ptr, ptr %q, align 8, !dbg !6385
  %next17 = getelementptr inbounds %struct.resource_map, ptr %23, i32 0, i32 2, !dbg !6387
  %24 = load ptr, ptr %next17, align 8, !dbg !6387
  %25 = load ptr, ptr %p, align 8, !dbg !6388
  %next18 = getelementptr inbounds %struct.resource_map, ptr %25, i32 0, i32 2, !dbg !6389
  store ptr %24, ptr %next18, align 8, !dbg !6390
  %26 = load ptr, ptr %q, align 8, !dbg !6391
  call void @kfree(ptr noundef %26) #17, !dbg !6392
  %27 = load ptr, ptr %p, align 8, !dbg !6393
  store ptr %27, ptr %q, align 8, !dbg !6394
  br label %if.end26, !dbg !6395

if.else:                                          ; preds = %if.then10
  %28 = load ptr, ptr %q, align 8, !dbg !6396
  %base19 = getelementptr inbounds %struct.resource_map, ptr %28, i32 0, i32 0, !dbg !6398
  %29 = load i64, ptr %base19, align 8, !dbg !6398
  %30 = load ptr, ptr %q, align 8, !dbg !6399
  %num20 = getelementptr inbounds %struct.resource_map, ptr %30, i32 0, i32 1, !dbg !6400
  %31 = load i64, ptr %num20, align 8, !dbg !6400
  %add21 = add i64 %29, %31, !dbg !6401
  %32 = load i64, ptr %base.addr, align 8, !dbg !6402
  %sub = sub i64 %add21, %32, !dbg !6403
  %33 = load i64, ptr %num.addr, align 8, !dbg !6404
  %sub22 = sub i64 %sub, %33, !dbg !6405
  %34 = load ptr, ptr %q, align 8, !dbg !6406
  %num23 = getelementptr inbounds %struct.resource_map, ptr %34, i32 0, i32 1, !dbg !6407
  store i64 %sub22, ptr %num23, align 8, !dbg !6408
  %35 = load i64, ptr %base.addr, align 8, !dbg !6409
  %36 = load i64, ptr %num.addr, align 8, !dbg !6410
  %add24 = add i64 %35, %36, !dbg !6411
  %37 = load ptr, ptr %q, align 8, !dbg !6412
  %base25 = getelementptr inbounds %struct.resource_map, ptr %37, i32 0, i32 0, !dbg !6413
  store i64 %add24, ptr %base25, align 8, !dbg !6414
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then16
  br label %if.end56, !dbg !6415

if.else27:                                        ; preds = %if.then7
  %38 = load ptr, ptr %q, align 8, !dbg !6416
  %base28 = getelementptr inbounds %struct.resource_map, ptr %38, i32 0, i32 0, !dbg !6418
  %39 = load i64, ptr %base28, align 8, !dbg !6418
  %40 = load ptr, ptr %q, align 8, !dbg !6419
  %num29 = getelementptr inbounds %struct.resource_map, ptr %40, i32 0, i32 1, !dbg !6420
  %41 = load i64, ptr %num29, align 8, !dbg !6420
  %add30 = add i64 %39, %41, !dbg !6421
  %42 = load i64, ptr %base.addr, align 8, !dbg !6422
  %43 = load i64, ptr %num.addr, align 8, !dbg !6423
  %add31 = add i64 %42, %43, !dbg !6424
  %cmp32 = icmp ule i64 %add30, %add31, !dbg !6425
  br i1 %cmp32, label %if.then33, label %if.else37, !dbg !6426

if.then33:                                        ; preds = %if.else27
  %44 = load i64, ptr %base.addr, align 8, !dbg !6427
  %45 = load ptr, ptr %q, align 8, !dbg !6429
  %base34 = getelementptr inbounds %struct.resource_map, ptr %45, i32 0, i32 0, !dbg !6430
  %46 = load i64, ptr %base34, align 8, !dbg !6430
  %sub35 = sub i64 %44, %46, !dbg !6431
  %47 = load ptr, ptr %q, align 8, !dbg !6432
  %num36 = getelementptr inbounds %struct.resource_map, ptr %47, i32 0, i32 1, !dbg !6433
  store i64 %sub35, ptr %num36, align 8, !dbg !6434
  br label %if.end55, !dbg !6435

if.else37:                                        ; preds = %if.else27
  %call = call noalias ptr @kmalloc(i64 noundef 24, i32 noundef 3264) #18, !dbg !6436
  store ptr %call, ptr %p, align 8, !dbg !6438
  %48 = load ptr, ptr %p, align 8, !dbg !6439
  %tobool = icmp ne ptr %48, null, !dbg !6439
  br i1 %tobool, label %if.end40, label %if.then38, !dbg !6441

if.then38:                                        ; preds = %if.else37
  br label %do.body, !dbg !6442

do.body:                                          ; preds = %if.then38
  br label %do.cond, !dbg !6445

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6445

do.end:                                           ; preds = %do.cond
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #19, !dbg !6442
  store i32 %call39, ptr %tmp, align 4, !dbg !6445
  %49 = load i32, ptr %tmp, align 4, !dbg !6442
  store i32 -12, ptr %retval, align 4, !dbg !6447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6447

if.end40:                                         ; preds = %if.else37
  %50 = load i64, ptr %base.addr, align 8, !dbg !6448
  %51 = load i64, ptr %num.addr, align 8, !dbg !6449
  %add41 = add i64 %50, %51, !dbg !6450
  %52 = load ptr, ptr %p, align 8, !dbg !6451
  %base42 = getelementptr inbounds %struct.resource_map, ptr %52, i32 0, i32 0, !dbg !6452
  store i64 %add41, ptr %base42, align 8, !dbg !6453
  %53 = load ptr, ptr %q, align 8, !dbg !6454
  %base43 = getelementptr inbounds %struct.resource_map, ptr %53, i32 0, i32 0, !dbg !6455
  %54 = load i64, ptr %base43, align 8, !dbg !6455
  %55 = load ptr, ptr %q, align 8, !dbg !6456
  %num44 = getelementptr inbounds %struct.resource_map, ptr %55, i32 0, i32 1, !dbg !6457
  %56 = load i64, ptr %num44, align 8, !dbg !6457
  %add45 = add i64 %54, %56, !dbg !6458
  %57 = load ptr, ptr %p, align 8, !dbg !6459
  %base46 = getelementptr inbounds %struct.resource_map, ptr %57, i32 0, i32 0, !dbg !6460
  %58 = load i64, ptr %base46, align 8, !dbg !6460
  %sub47 = sub i64 %add45, %58, !dbg !6461
  %59 = load ptr, ptr %p, align 8, !dbg !6462
  %num48 = getelementptr inbounds %struct.resource_map, ptr %59, i32 0, i32 1, !dbg !6463
  store i64 %sub47, ptr %num48, align 8, !dbg !6464
  %60 = load i64, ptr %base.addr, align 8, !dbg !6465
  %61 = load ptr, ptr %q, align 8, !dbg !6466
  %base49 = getelementptr inbounds %struct.resource_map, ptr %61, i32 0, i32 0, !dbg !6467
  %62 = load i64, ptr %base49, align 8, !dbg !6467
  %sub50 = sub i64 %60, %62, !dbg !6468
  %63 = load ptr, ptr %q, align 8, !dbg !6469
  %num51 = getelementptr inbounds %struct.resource_map, ptr %63, i32 0, i32 1, !dbg !6470
  store i64 %sub50, ptr %num51, align 8, !dbg !6471
  %64 = load ptr, ptr %q, align 8, !dbg !6472
  %next52 = getelementptr inbounds %struct.resource_map, ptr %64, i32 0, i32 2, !dbg !6473
  %65 = load ptr, ptr %next52, align 8, !dbg !6473
  %66 = load ptr, ptr %p, align 8, !dbg !6474
  %next53 = getelementptr inbounds %struct.resource_map, ptr %66, i32 0, i32 2, !dbg !6475
  store ptr %65, ptr %next53, align 8, !dbg !6476
  %67 = load ptr, ptr %p, align 8, !dbg !6477
  %68 = load ptr, ptr %q, align 8, !dbg !6478
  %next54 = getelementptr inbounds %struct.resource_map, ptr %68, i32 0, i32 2, !dbg !6479
  store ptr %67, ptr %next54, align 8, !dbg !6480
  br label %if.end55

if.end55:                                         ; preds = %if.end40, %if.then33
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end26
  br label %if.end57, !dbg !6481

if.end57:                                         ; preds = %if.end56, %land.lhs.true, %if.end
  br label %for.inc, !dbg !6482

for.inc:                                          ; preds = %if.end57
  %69 = load ptr, ptr %q, align 8, !dbg !6483
  store ptr %69, ptr %p, align 8, !dbg !6484
  br label %for.cond, !dbg !6485, !llvm.loop !6486

for.end:                                          ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !6489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6489

cleanup:                                          ; preds = %for.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #16, !dbg !6490
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6490
  %70 = load i32, ptr %retval, align 4, !dbg !6490
  ret i32 %70, !dbg !6490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @claim_region(ptr noundef %s, i64 noundef %base, i64 noundef %size, i32 noundef %type, ptr noundef %name) #0 align 16 !dbg !6491 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6495, metadata !DIExpression()), !dbg !6502
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6496, metadata !DIExpression()), !dbg !6503
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6497, metadata !DIExpression()), !dbg !6504
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6498, metadata !DIExpression()), !dbg !6505
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6499, metadata !DIExpression()), !dbg !6506
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6500, metadata !DIExpression()), !dbg !6508
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !6507
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6501, metadata !DIExpression()), !dbg !6509
  %0 = load i32, ptr %type.addr, align 4, !dbg !6510
  %and = and i32 %0, 512, !dbg !6511
  %tobool = icmp ne i32 %and, 0, !dbg !6510
  %1 = zext i1 %tobool to i64, !dbg !6510
  %cond = select i1 %tobool, ptr @iomem_resource, ptr @ioport_resource, !dbg !6510
  store ptr %cond, ptr %parent, align 8, !dbg !6512
  %2 = load i64, ptr %base.addr, align 8, !dbg !6513
  %3 = load i64, ptr %size.addr, align 8, !dbg !6514
  %4 = load i32, ptr %type.addr, align 4, !dbg !6515
  %or = or i32 %4, -2147483648, !dbg !6516
  %conv = zext i32 %or to i64, !dbg !6515
  %5 = load ptr, ptr %name.addr, align 8, !dbg !6517
  %call = call ptr @pcmcia_make_resource(i64 noundef %2, i64 noundef %3, i64 noundef %conv, ptr noundef %5) #17, !dbg !6518
  store ptr %call, ptr %res, align 8, !dbg !6519
  %6 = load ptr, ptr %res, align 8, !dbg !6520
  %tobool1 = icmp ne ptr %6, null, !dbg !6520
  br i1 %tobool1, label %if.then, label %if.end12, !dbg !6522

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %s.addr, align 8, !dbg !6523
  %tobool2 = icmp ne ptr %7, null, !dbg !6523
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !6526

land.lhs.true:                                    ; preds = %if.then
  %8 = load ptr, ptr %s.addr, align 8, !dbg !6527
  %cb_dev = getelementptr inbounds %struct.pcmcia_socket, ptr %8, i32 0, i32 21, !dbg !6528
  %9 = load ptr, ptr %cb_dev, align 8, !dbg !6528
  %tobool3 = icmp ne ptr %9, null, !dbg !6527
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !6529

if.then4:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %s.addr, align 8, !dbg !6530
  %cb_dev5 = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 21, !dbg !6531
  %11 = load ptr, ptr %cb_dev5, align 8, !dbg !6531
  %12 = load ptr, ptr %res, align 8, !dbg !6532
  %call6 = call ptr @pci_find_parent_resource(ptr noundef %11, ptr noundef %12) #17, !dbg !6533
  store ptr %call6, ptr %parent, align 8, !dbg !6534
  br label %if.end, !dbg !6535

if.end:                                           ; preds = %if.then4, %land.lhs.true, %if.then
  %13 = load ptr, ptr %parent, align 8, !dbg !6536
  %tobool7 = icmp ne ptr %13, null, !dbg !6536
  br i1 %tobool7, label %lor.lhs.false, label %if.then10, !dbg !6538

lor.lhs.false:                                    ; preds = %if.end
  %14 = load ptr, ptr %parent, align 8, !dbg !6539
  %15 = load ptr, ptr %res, align 8, !dbg !6540
  %call8 = call i32 @request_resource(ptr noundef %14, ptr noundef %15) #17, !dbg !6541
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6541
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6542

if.then10:                                        ; preds = %lor.lhs.false, %if.end
  %16 = load ptr, ptr %res, align 8, !dbg !6543
  call void @kfree(ptr noundef %16) #17, !dbg !6545
  store ptr null, ptr %res, align 8, !dbg !6546
  br label %if.end11, !dbg !6547

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  br label %if.end12, !dbg !6548

if.end12:                                         ; preds = %if.end11, %entry
  %17 = load ptr, ptr %res, align 8, !dbg !6549
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !6550
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !6550
  ret ptr %17, !dbg !6551
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_region(ptr noundef %res) #0 align 16 !dbg !6552 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6556, metadata !DIExpression()), !dbg !6557
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6558
  %tobool = icmp ne ptr %0, null, !dbg !6558
  br i1 %tobool, label %if.then, label %if.end, !dbg !6560

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %res.addr, align 8, !dbg !6561
  %call = call i32 @release_resource(ptr noundef %1) #17, !dbg !6563
  %2 = load ptr, ptr %res.addr, align 8, !dbg !6564
  call void @kfree(ptr noundef %2) #17, !dbg !6565
  br label %if.end, !dbg !6566

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6567
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_interval(ptr noundef %map, i64 noundef %base, i64 noundef %num) #0 align 16 !dbg !6568 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %num.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %q = alloca ptr, align 8
  %__UNIQUE_ID___x293 = alloca i64, align 8
  %__UNIQUE_ID___y294 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  store ptr %map, ptr %map.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %map.addr, metadata !6570, metadata !DIExpression()), !dbg !6583
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6571, metadata !DIExpression()), !dbg !6584
  store i64 %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !6572, metadata !DIExpression()), !dbg !6585
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6586
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6573, metadata !DIExpression()), !dbg !6587
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #16, !dbg !6586
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6574, metadata !DIExpression()), !dbg !6588
  %0 = load ptr, ptr %map.addr, align 8, !dbg !6589
  store ptr %0, ptr %p, align 8, !dbg !6590
  br label %for.cond, !dbg !6591

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %p, align 8, !dbg !6592
  %2 = load ptr, ptr %map.addr, align 8, !dbg !6593
  %cmp = icmp ne ptr %1, %2, !dbg !6594
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6595

land.lhs.true:                                    ; preds = %for.cond
  %3 = load ptr, ptr %p, align 8, !dbg !6596
  %base1 = getelementptr inbounds %struct.resource_map, ptr %3, i32 0, i32 0, !dbg !6597
  %4 = load i64, ptr %base1, align 8, !dbg !6597
  %5 = load ptr, ptr %p, align 8, !dbg !6598
  %num2 = getelementptr inbounds %struct.resource_map, ptr %5, i32 0, i32 1, !dbg !6599
  %6 = load i64, ptr %num2, align 8, !dbg !6599
  %add = add i64 %4, %6, !dbg !6600
  %7 = load i64, ptr %base.addr, align 8, !dbg !6601
  %cmp3 = icmp uge i64 %add, %7, !dbg !6602
  br i1 %cmp3, label %if.then, label %if.end, !dbg !6603

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x293) #16, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x293, metadata !6575, metadata !DIExpression()), !dbg !6604
  %8 = load i64, ptr %num.addr, align 8, !dbg !6604
  %9 = load i64, ptr %base.addr, align 8, !dbg !6604
  %add4 = add i64 %8, %9, !dbg !6604
  %10 = load ptr, ptr %p, align 8, !dbg !6604
  %base5 = getelementptr inbounds %struct.resource_map, ptr %10, i32 0, i32 0, !dbg !6604
  %11 = load i64, ptr %base5, align 8, !dbg !6604
  %sub = sub i64 %add4, %11, !dbg !6604
  store i64 %sub, ptr %__UNIQUE_ID___x293, align 8, !dbg !6604
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y294) #16, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y294, metadata !6582, metadata !DIExpression()), !dbg !6604
  %12 = load ptr, ptr %p, align 8, !dbg !6604
  %num6 = getelementptr inbounds %struct.resource_map, ptr %12, i32 0, i32 1, !dbg !6604
  %13 = load i64, ptr %num6, align 8, !dbg !6604
  store i64 %13, ptr %__UNIQUE_ID___y294, align 8, !dbg !6604
  %14 = load i64, ptr %__UNIQUE_ID___x293, align 8, !dbg !6604
  %15 = load i64, ptr %__UNIQUE_ID___y294, align 8, !dbg !6604
  %cmp7 = icmp ugt i64 %14, %15, !dbg !6604
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !6604

cond.true:                                        ; preds = %if.then
  %16 = load i64, ptr %__UNIQUE_ID___x293, align 8, !dbg !6604
  br label %cond.end, !dbg !6604

cond.false:                                       ; preds = %if.then
  %17 = load i64, ptr %__UNIQUE_ID___y294, align 8, !dbg !6604
  br label %cond.end, !dbg !6604

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !6604
  store i64 %cond, ptr %tmp, align 8, !dbg !6604
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y294) #16, !dbg !6605
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x293) #16, !dbg !6605
  %18 = load i64, ptr %tmp, align 8, !dbg !6604
  %19 = load ptr, ptr %p, align 8, !dbg !6606
  %num8 = getelementptr inbounds %struct.resource_map, ptr %19, i32 0, i32 1, !dbg !6607
  store i64 %18, ptr %num8, align 8, !dbg !6608
  store i32 0, ptr %retval, align 4, !dbg !6609
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6609

if.end:                                           ; preds = %land.lhs.true, %for.cond
  %20 = load ptr, ptr %p, align 8, !dbg !6610
  %next = getelementptr inbounds %struct.resource_map, ptr %20, i32 0, i32 2, !dbg !6612
  %21 = load ptr, ptr %next, align 8, !dbg !6612
  %22 = load ptr, ptr %map.addr, align 8, !dbg !6613
  %cmp9 = icmp eq ptr %21, %22, !dbg !6614
  br i1 %cmp9, label %if.then15, label %lor.lhs.false, !dbg !6615

lor.lhs.false:                                    ; preds = %if.end
  %23 = load ptr, ptr %p, align 8, !dbg !6616
  %next10 = getelementptr inbounds %struct.resource_map, ptr %23, i32 0, i32 2, !dbg !6617
  %24 = load ptr, ptr %next10, align 8, !dbg !6617
  %base11 = getelementptr inbounds %struct.resource_map, ptr %24, i32 0, i32 0, !dbg !6618
  %25 = load i64, ptr %base11, align 8, !dbg !6618
  %26 = load i64, ptr %base.addr, align 8, !dbg !6619
  %27 = load i64, ptr %num.addr, align 8, !dbg !6620
  %add12 = add i64 %26, %27, !dbg !6621
  %sub13 = sub i64 %add12, 1, !dbg !6622
  %cmp14 = icmp ugt i64 %25, %sub13, !dbg !6623
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6624

if.then15:                                        ; preds = %lor.lhs.false, %if.end
  br label %for.end, !dbg !6625

if.end16:                                         ; preds = %lor.lhs.false
  br label %for.inc, !dbg !6626

for.inc:                                          ; preds = %if.end16
  %28 = load ptr, ptr %p, align 8, !dbg !6627
  %next17 = getelementptr inbounds %struct.resource_map, ptr %28, i32 0, i32 2, !dbg !6628
  %29 = load ptr, ptr %next17, align 8, !dbg !6628
  store ptr %29, ptr %p, align 8, !dbg !6629
  br label %for.cond, !dbg !6630, !llvm.loop !6631

for.end:                                          ; preds = %if.then15
  %call = call noalias ptr @kmalloc(i64 noundef 24, i32 noundef 3264) #18, !dbg !6634
  store ptr %call, ptr %q, align 8, !dbg !6635
  %30 = load ptr, ptr %q, align 8, !dbg !6636
  %tobool = icmp ne ptr %30, null, !dbg !6636
  br i1 %tobool, label %if.end21, label %if.then18, !dbg !6638

if.then18:                                        ; preds = %for.end
  br label %do.body, !dbg !6639

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !6642

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6642

do.end:                                           ; preds = %do.cond
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef @.str.7) #19, !dbg !6639
  store i32 %call20, ptr %tmp19, align 4, !dbg !6642
  %31 = load i32, ptr %tmp19, align 4, !dbg !6639
  store i32 -12, ptr %retval, align 4, !dbg !6644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6644

if.end21:                                         ; preds = %for.end
  %32 = load i64, ptr %base.addr, align 8, !dbg !6645
  %33 = load ptr, ptr %q, align 8, !dbg !6646
  %base22 = getelementptr inbounds %struct.resource_map, ptr %33, i32 0, i32 0, !dbg !6647
  store i64 %32, ptr %base22, align 8, !dbg !6648
  %34 = load i64, ptr %num.addr, align 8, !dbg !6649
  %35 = load ptr, ptr %q, align 8, !dbg !6650
  %num23 = getelementptr inbounds %struct.resource_map, ptr %35, i32 0, i32 1, !dbg !6651
  store i64 %34, ptr %num23, align 8, !dbg !6652
  %36 = load ptr, ptr %p, align 8, !dbg !6653
  %next24 = getelementptr inbounds %struct.resource_map, ptr %36, i32 0, i32 2, !dbg !6654
  %37 = load ptr, ptr %next24, align 8, !dbg !6654
  %38 = load ptr, ptr %q, align 8, !dbg !6655
  %next25 = getelementptr inbounds %struct.resource_map, ptr %38, i32 0, i32 2, !dbg !6656
  store ptr %37, ptr %next25, align 8, !dbg !6657
  %39 = load ptr, ptr %q, align 8, !dbg !6658
  %40 = load ptr, ptr %p, align 8, !dbg !6659
  %next26 = getelementptr inbounds %struct.resource_map, ptr %40, i32 0, i32 2, !dbg !6660
  store ptr %39, ptr %next26, align 8, !dbg !6661
  store i32 0, ptr %retval, align 4, !dbg !6662
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6662

cleanup:                                          ; preds = %if.end21, %do.end, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #16, !dbg !6663
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6663
  %41 = load i32, ptr %retval, align 4, !dbg !6663
  ret i32 %41, !dbg !6663
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6664 dso_local ptr @pcmcia_make_resource(i64 noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6667 dso_local ptr @pci_find_parent_resource(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6672 dso_local i32 @request_resource(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6675 dso_local void @kfree(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6678 dso_local i32 @release_resource(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6681 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6685, metadata !DIExpression()), !dbg !6690
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6686, metadata !DIExpression()), !dbg !6691
  %0 = load i64, ptr %size.addr, align 8, !dbg !6692
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6693
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6694

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6695
  %tobool = icmp ne i64 %2, 0, !dbg !6695
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6696

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6697
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6687, metadata !DIExpression()), !dbg !6698
  %3 = load i64, ptr %size.addr, align 8, !dbg !6699
  %cmp = icmp ugt i64 %3, 8192, !dbg !6701
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6702

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6703
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6704
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6705
  store ptr %call, ptr %retval, align 8, !dbg !6706
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6706

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6707
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6707
  store i32 %call2, ptr %index, align 4, !dbg !6708
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6709
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6710
  %9 = ptrtoint ptr %8 to i64, !dbg !6710
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6711
  %idxprom = zext i32 %call3 to i64, !dbg !6712
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6712
  %10 = load i32, ptr %index, align 4, !dbg !6713
  %idxprom4 = zext i32 %10 to i64, !dbg !6712
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6712
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6712
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6714
  %13 = load i64, ptr %size.addr, align 8, !dbg !6715
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6716
  store ptr %call6, ptr %retval, align 8, !dbg !6717
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6717

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6718
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6719
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6720
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6721
  store ptr %call8, ptr %retval, align 8, !dbg !6722
  br label %return, !dbg !6722

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6723
  ret ptr %16, !dbg !6723
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6724 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6725 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6729, metadata !DIExpression()), !dbg !6731
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6730, metadata !DIExpression()), !dbg !6732
  %0 = load i64, ptr %size.addr, align 8, !dbg !6733
  %tobool = icmp ne i64 %0, 0, !dbg !6733
  br i1 %tobool, label %if.end, label %if.then, !dbg !6735

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6736
  br label %return, !dbg !6736

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6737
  %cmp = icmp ule i64 %1, 8, !dbg !6739
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6740

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6741
  br label %return, !dbg !6741

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6742
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6744
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6745

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6746
  %cmp4 = icmp ule i64 %3, 96, !dbg !6747
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6748

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6749
  br label %return, !dbg !6749

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6750
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6752
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6753

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6754
  %cmp9 = icmp ule i64 %5, 192, !dbg !6755
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6756

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6757
  br label %return, !dbg !6757

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6758
  %cmp12 = icmp ule i64 %6, 8, !dbg !6760
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6761

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6762
  br label %return, !dbg !6762

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6763
  %cmp15 = icmp ule i64 %7, 16, !dbg !6765
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6766

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6767
  br label %return, !dbg !6767

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6768
  %cmp18 = icmp ule i64 %8, 32, !dbg !6770
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6771

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6772
  br label %return, !dbg !6772

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6773
  %cmp21 = icmp ule i64 %9, 64, !dbg !6775
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6776

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6777
  br label %return, !dbg !6777

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6778
  %cmp24 = icmp ule i64 %10, 128, !dbg !6780
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6781

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6782
  br label %return, !dbg !6782

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6783
  %cmp27 = icmp ule i64 %11, 256, !dbg !6785
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6786

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6787
  br label %return, !dbg !6787

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6788
  %cmp30 = icmp ule i64 %12, 512, !dbg !6790
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6791

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6792
  br label %return, !dbg !6792

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6793
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6795
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6796

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6797
  br label %return, !dbg !6797

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6798
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6800
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6801

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6802
  br label %return, !dbg !6802

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6803
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6805
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6806

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6807
  br label %return, !dbg !6807

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6808
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6810
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6811

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6812
  br label %return, !dbg !6812

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6813
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6815
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6816

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6817
  br label %return, !dbg !6817

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6818
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6820
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6821

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6822
  br label %return, !dbg !6822

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6823
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6825
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6826

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6827
  br label %return, !dbg !6827

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6828
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6830
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6831

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6832
  br label %return, !dbg !6832

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6833
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6835
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6836

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6837
  br label %return, !dbg !6837

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6838
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6840
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6841

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6842
  br label %return, !dbg !6842

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6843
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6845
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6846

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6847
  br label %return, !dbg !6847

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6848
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6850
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6851

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6852
  br label %return, !dbg !6852

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6853, !range !6855, !noundef !547
  %tobool69 = trunc i8 %25 to i1, !dbg !6853
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6856

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6857

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #21, !dbg !6858, !srcloc !6861
  unreachable, !dbg !6858

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6862

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6863

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6864

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6866

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6864

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 480, i32 0, i64 12) #16, !dbg !6868, !srcloc !6870
  br label %do.end75, !dbg !6868

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6864

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6871
  br label %return, !dbg !6871

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6872
  ret i32 %26, !dbg !6872
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6873 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !6879 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6883, metadata !DIExpression()), !dbg !6885
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6884, metadata !DIExpression()), !dbg !6886
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6887
  %and = and i32 %0, 17, !dbg !6887
  %cmp = icmp eq i32 %and, 0, !dbg !6887
  %lnot = xor i1 %cmp, true, !dbg !6887
  %lnot1 = xor i1 %lnot, true, !dbg !6887
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6887
  %conv = sext i32 %lnot.ext to i64, !dbg !6887
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6887
  %tobool = icmp ne i64 %expval, 0, !dbg !6887
  br i1 %tobool, label %if.then, label %if.end, !dbg !6889

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6890
  br label %return, !dbg !6890

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6891
  %and2 = and i32 %1, 1, !dbg !6893
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6893
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6894

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6895
  br label %return, !dbg !6895

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6896
  br label %return, !dbg !6896

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6898
  ret i32 %2, !dbg !6898
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6899 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6900 dso_local void @__compiletime_assert_196() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6901 dso_local ptr @ioremap(i64 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6905 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6909 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6910 dso_local void @iounmap(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #14 align 16 !dbg !6915 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6921, metadata !DIExpression()), !dbg !6923
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6923
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6922, metadata !DIExpression()), !dbg !6923
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6923
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #16, !dbg !6923, !srcloc !6924
  store i32 %1, ptr %ret, align 4, !dbg !6923
  %2 = load i32, ptr %ret, align 4, !dbg !6923
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6923
  ret i32 %2, !dbg !6923
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__nonstatic_find_io_region(ptr noundef %s, i64 noundef %base, i32 noundef %num, i64 noundef %align) #0 align 16 !dbg !6925 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i64, align 8
  %num.addr = alloca i32, align 4
  %align.addr = alloca i64, align 8
  %res = alloca ptr, align 8
  %s_data = alloca ptr, align 8
  %data = alloca %struct.pcmcia_align_data, align 8
  %min = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6929, metadata !DIExpression()), !dbg !6938
  store i64 %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !6930, metadata !DIExpression()), !dbg !6939
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !6931, metadata !DIExpression()), !dbg !6940
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !6932, metadata !DIExpression()), !dbg !6941
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !6942
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6933, metadata !DIExpression()), !dbg !6943
  %0 = load i32, ptr %num.addr, align 4, !dbg !6944
  %conv = sext i32 %0 to i64, !dbg !6944
  %1 = load ptr, ptr %s.addr, align 8, !dbg !6945
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 42, !dbg !6946
  %call = call ptr @dev_name(ptr noundef %dev) #17, !dbg !6947
  %call1 = call ptr @pcmcia_make_resource(i64 noundef 0, i64 noundef %conv, i64 noundef 256, ptr noundef %call) #17, !dbg !6948
  store ptr %call1, ptr %res, align 8, !dbg !6943
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_data) #16, !dbg !6949
  call void @llvm.dbg.declare(metadata ptr %s_data, metadata !6934, metadata !DIExpression()), !dbg !6950
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6951
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 25, !dbg !6952
  %3 = load ptr, ptr %resource_data, align 8, !dbg !6952
  store ptr %3, ptr %s_data, align 8, !dbg !6950
  call void @llvm.lifetime.start.p0(i64 24, ptr %data) #16, !dbg !6953
  call void @llvm.dbg.declare(metadata ptr %data, metadata !6935, metadata !DIExpression()), !dbg !6954
  call void @llvm.lifetime.start.p0(i64 8, ptr %min) #16, !dbg !6955
  call void @llvm.dbg.declare(metadata ptr %min, metadata !6936, metadata !DIExpression()), !dbg !6956
  %4 = load i64, ptr %base.addr, align 8, !dbg !6957
  store i64 %4, ptr %min, align 8, !dbg !6956
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6958
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6937, metadata !DIExpression()), !dbg !6959
  %5 = load ptr, ptr %res, align 8, !dbg !6960
  %tobool = icmp ne ptr %5, null, !dbg !6960
  br i1 %tobool, label %if.end, label %if.then, !dbg !6962

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6963

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %align.addr, align 8, !dbg !6964
  %sub = sub i64 %6, 1, !dbg !6965
  %mask = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 0, !dbg !6966
  store i64 %sub, ptr %mask, align 8, !dbg !6967
  %7 = load i64, ptr %base.addr, align 8, !dbg !6968
  %mask2 = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 0, !dbg !6969
  %8 = load i64, ptr %mask2, align 8, !dbg !6969
  %and = and i64 %7, %8, !dbg !6970
  %offset = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 1, !dbg !6971
  store i64 %and, ptr %offset, align 8, !dbg !6972
  %9 = load ptr, ptr %s_data, align 8, !dbg !6973
  %io_db = getelementptr inbounds %struct.socket_data, ptr %9, i32 0, i32 2, !dbg !6974
  %map = getelementptr inbounds %struct.pcmcia_align_data, ptr %data, i32 0, i32 2, !dbg !6975
  store ptr %io_db, ptr %map, align 8, !dbg !6976
  %10 = load ptr, ptr %s.addr, align 8, !dbg !6977
  %cb_dev = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 21, !dbg !6979
  %11 = load ptr, ptr %cb_dev, align 8, !dbg !6979
  %tobool3 = icmp ne ptr %11, null, !dbg !6977
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !6980

if.then4:                                         ; preds = %if.end
  %12 = load ptr, ptr %s.addr, align 8, !dbg !6981
  %cb_dev5 = getelementptr inbounds %struct.pcmcia_socket, ptr %12, i32 0, i32 21, !dbg !6983
  %13 = load ptr, ptr %cb_dev5, align 8, !dbg !6983
  %bus = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 1, !dbg !6984
  %14 = load ptr, ptr %bus, align 8, !dbg !6984
  %15 = load ptr, ptr %res, align 8, !dbg !6985
  %16 = load i32, ptr %num.addr, align 4, !dbg !6986
  %conv6 = sext i32 %16 to i64, !dbg !6986
  %17 = load i64, ptr %min, align 8, !dbg !6987
  %call7 = call i32 @pci_bus_alloc_resource(ptr noundef %14, ptr noundef %15, i64 noundef %conv6, i64 noundef 1, i64 noundef %17, i64 noundef 0, ptr noundef @pcmcia_align, ptr noundef %data) #17, !dbg !6988
  store i32 %call7, ptr %ret, align 4, !dbg !6989
  br label %if.end10, !dbg !6990

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %res, align 8, !dbg !6991
  %19 = load i32, ptr %num.addr, align 4, !dbg !6992
  %conv8 = sext i32 %19 to i64, !dbg !6992
  %20 = load i64, ptr %min, align 8, !dbg !6993
  %call9 = call i32 @allocate_resource(ptr noundef @ioport_resource, ptr noundef %18, i64 noundef %conv8, i64 noundef %20, i64 noundef -1, i64 noundef 1, ptr noundef @pcmcia_align, ptr noundef %data) #17, !dbg !6994
  store i32 %call9, ptr %ret, align 4, !dbg !6995
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then4
  %21 = load i32, ptr %ret, align 4, !dbg !6996
  %cmp = icmp ne i32 %21, 0, !dbg !6998
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !6999

if.then12:                                        ; preds = %if.end10
  %22 = load ptr, ptr %res, align 8, !dbg !7000
  call void @kfree(ptr noundef %22) #17, !dbg !7002
  store ptr null, ptr %res, align 8, !dbg !7003
  br label %if.end13, !dbg !7004

if.end13:                                         ; preds = %if.then12, %if.end10
  %23 = load ptr, ptr %res, align 8, !dbg !7005
  store ptr %23, ptr %retval, align 8, !dbg !7006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7006

cleanup:                                          ; preds = %if.end13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !7007
  call void @llvm.lifetime.end.p0(i64 8, ptr %min) #16, !dbg !7007
  call void @llvm.lifetime.end.p0(i64 24, ptr %data) #16, !dbg !7007
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_data) #16, !dbg !7007
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !7007
  %24 = load ptr, ptr %retval, align 8, !dbg !7007
  ret ptr %24, !dbg !7007
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__nonstatic_adjust_io_region(ptr noundef %s, i64 noundef %r_start, i64 noundef %r_end) #0 align 16 !dbg !7008 {
entry:
  %s.addr = alloca ptr, align 8
  %r_start.addr = alloca i64, align 8
  %r_end.addr = alloca i64, align 8
  %m = alloca ptr, align 8
  %s_data = alloca ptr, align 8
  %ret = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7012, metadata !DIExpression()), !dbg !7023
  store i64 %r_start, ptr %r_start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r_start.addr, metadata !7013, metadata !DIExpression()), !dbg !7024
  store i64 %r_end, ptr %r_end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r_end.addr, metadata !7014, metadata !DIExpression()), !dbg !7025
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #16, !dbg !7026
  call void @llvm.dbg.declare(metadata ptr %m, metadata !7015, metadata !DIExpression()), !dbg !7027
  call void @llvm.lifetime.start.p0(i64 8, ptr %s_data) #16, !dbg !7028
  call void @llvm.dbg.declare(metadata ptr %s_data, metadata !7016, metadata !DIExpression()), !dbg !7029
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7030
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 25, !dbg !7031
  %1 = load ptr, ptr %resource_data, align 8, !dbg !7031
  store ptr %1, ptr %s_data, align 8, !dbg !7029
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !7032
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7017, metadata !DIExpression()), !dbg !7033
  store i32 -12, ptr %ret, align 4, !dbg !7033
  %2 = load ptr, ptr %s_data, align 8, !dbg !7034
  %io_db = getelementptr inbounds %struct.socket_data, ptr %2, i32 0, i32 2, !dbg !7035
  %next = getelementptr inbounds %struct.resource_map, ptr %io_db, i32 0, i32 2, !dbg !7036
  %3 = load ptr, ptr %next, align 8, !dbg !7036
  store ptr %3, ptr %m, align 8, !dbg !7037
  br label %for.cond, !dbg !7038

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %m, align 8, !dbg !7039
  %5 = load ptr, ptr %s_data, align 8, !dbg !7040
  %io_db1 = getelementptr inbounds %struct.socket_data, ptr %5, i32 0, i32 2, !dbg !7041
  %cmp = icmp ne ptr %4, %io_db1, !dbg !7042
  br i1 %cmp, label %for.body, label %for.end, !dbg !7043

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !7044
  call void @llvm.dbg.declare(metadata ptr %start, metadata !7018, metadata !DIExpression()), !dbg !7045
  %6 = load ptr, ptr %m, align 8, !dbg !7046
  %base = getelementptr inbounds %struct.resource_map, ptr %6, i32 0, i32 0, !dbg !7047
  %7 = load i64, ptr %base, align 8, !dbg !7047
  store i64 %7, ptr %start, align 8, !dbg !7045
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #16, !dbg !7048
  call void @llvm.dbg.declare(metadata ptr %end, metadata !7022, metadata !DIExpression()), !dbg !7049
  %8 = load ptr, ptr %m, align 8, !dbg !7050
  %base2 = getelementptr inbounds %struct.resource_map, ptr %8, i32 0, i32 0, !dbg !7051
  %9 = load i64, ptr %base2, align 8, !dbg !7051
  %10 = load ptr, ptr %m, align 8, !dbg !7052
  %num = getelementptr inbounds %struct.resource_map, ptr %10, i32 0, i32 1, !dbg !7053
  %11 = load i64, ptr %num, align 8, !dbg !7053
  %add = add i64 %9, %11, !dbg !7054
  %sub = sub i64 %add, 1, !dbg !7055
  store i64 %sub, ptr %end, align 8, !dbg !7049
  %12 = load i64, ptr %start, align 8, !dbg !7056
  %13 = load i64, ptr %r_start.addr, align 8, !dbg !7058
  %cmp3 = icmp ugt i64 %12, %13, !dbg !7059
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !7060

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i64, ptr %r_end.addr, align 8, !dbg !7061
  %15 = load i64, ptr %end, align 8, !dbg !7062
  %cmp4 = icmp ugt i64 %14, %15, !dbg !7063
  br i1 %cmp4, label %if.then, label %if.end, !dbg !7064

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7065

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %ret, align 4, !dbg !7066
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7067
  br label %cleanup, !dbg !7067

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #16, !dbg !7067
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !7067
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !7068

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %16 = load ptr, ptr %m, align 8, !dbg !7069
  %next6 = getelementptr inbounds %struct.resource_map, ptr %16, i32 0, i32 2, !dbg !7070
  %17 = load ptr, ptr %next6, align 8, !dbg !7070
  store ptr %17, ptr %m, align 8, !dbg !7071
  br label %for.cond, !dbg !7072, !llvm.loop !7073

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %ret, align 4, !dbg !7075
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !7076
  call void @llvm.lifetime.end.p0(i64 8, ptr %s_data) #16, !dbg !7076
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #16, !dbg !7076
  ret i32 %18, !dbg !7077

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7078 dso_local i32 @adjust_resource(ptr noundef, i64 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_size(ptr noundef %res) #14 align 16 !dbg !7081 {
entry:
  %res.addr = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !7087, metadata !DIExpression()), !dbg !7088
  %0 = load ptr, ptr %res.addr, align 8, !dbg !7089
  %end = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1, !dbg !7090
  %1 = load i64, ptr %end, align 8, !dbg !7090
  %2 = load ptr, ptr %res.addr, align 8, !dbg !7091
  %start = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !7092
  %3 = load i64, ptr %start, align 8, !dbg !7092
  %sub = sub i64 %1, %3, !dbg !7093
  %add = add i64 %sub, 1, !dbg !7094
  ret i64 %add, !dbg !7095
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #14 align 16 !dbg !7096 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7100, metadata !DIExpression()), !dbg !7101
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7102
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !7104
  %1 = load ptr, ptr %init_name, align 8, !dbg !7104
  %tobool = icmp ne ptr %1, null, !dbg !7102
  br i1 %tobool, label %if.then, label %if.end, !dbg !7105

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !7106
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !7107
  %3 = load ptr, ptr %init_name1, align 8, !dbg !7107
  store ptr %3, ptr %retval, align 8, !dbg !7108
  br label %return, !dbg !7108

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !7109
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !7110
  %call = call ptr @kobject_name(ptr noundef %kobj) #17, !dbg !7111
  store ptr %call, ptr %retval, align 8, !dbg !7112
  br label %return, !dbg !7112

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !7113
  ret ptr %5, !dbg !7113
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7114 dso_local i32 @pci_bus_alloc_resource(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pcmcia_align(ptr noundef %align_data, ptr noundef %res, i64 noundef %size, i64 noundef %align) #0 align 16 !dbg !7120 {
entry:
  %align_data.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %align.addr = alloca i64, align 8
  %data = alloca ptr, align 8
  %m = alloca ptr, align 8
  %start = alloca i64, align 8
  %map_start = alloca i64, align 8
  %map_end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %align_data, ptr %align_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align_data.addr, metadata !7122, metadata !DIExpression()), !dbg !7135
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !7123, metadata !DIExpression()), !dbg !7136
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7124, metadata !DIExpression()), !dbg !7137
  store i64 %align, ptr %align.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align.addr, metadata !7125, metadata !DIExpression()), !dbg !7138
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !7139
  call void @llvm.dbg.declare(metadata ptr %data, metadata !7126, metadata !DIExpression()), !dbg !7140
  %0 = load ptr, ptr %align_data.addr, align 8, !dbg !7141
  store ptr %0, ptr %data, align 8, !dbg !7140
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #16, !dbg !7142
  call void @llvm.dbg.declare(metadata ptr %m, metadata !7128, metadata !DIExpression()), !dbg !7143
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #16, !dbg !7144
  call void @llvm.dbg.declare(metadata ptr %start, metadata !7129, metadata !DIExpression()), !dbg !7145
  %1 = load ptr, ptr %data, align 8, !dbg !7146
  %2 = load ptr, ptr %res.addr, align 8, !dbg !7147
  %start1 = getelementptr inbounds %struct.resource, ptr %2, i32 0, i32 0, !dbg !7148
  %3 = load i64, ptr %start1, align 8, !dbg !7148
  %call = call i64 @pcmcia_common_align(ptr noundef %1, i64 noundef %3) #17, !dbg !7149
  store i64 %call, ptr %start, align 8, !dbg !7150
  %4 = load ptr, ptr %data, align 8, !dbg !7151
  %map = getelementptr inbounds %struct.pcmcia_align_data, ptr %4, i32 0, i32 2, !dbg !7152
  %5 = load ptr, ptr %map, align 8, !dbg !7152
  %next = getelementptr inbounds %struct.resource_map, ptr %5, i32 0, i32 2, !dbg !7153
  %6 = load ptr, ptr %next, align 8, !dbg !7153
  store ptr %6, ptr %m, align 8, !dbg !7154
  br label %for.cond, !dbg !7155

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %m, align 8, !dbg !7156
  %8 = load ptr, ptr %data, align 8, !dbg !7157
  %map2 = getelementptr inbounds %struct.pcmcia_align_data, ptr %8, i32 0, i32 2, !dbg !7158
  %9 = load ptr, ptr %map2, align 8, !dbg !7158
  %cmp = icmp ne ptr %7, %9, !dbg !7159
  br i1 %cmp, label %for.body, label %for.end, !dbg !7160

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_start) #16, !dbg !7161
  call void @llvm.dbg.declare(metadata ptr %map_start, metadata !7130, metadata !DIExpression()), !dbg !7162
  %10 = load ptr, ptr %m, align 8, !dbg !7163
  %base = getelementptr inbounds %struct.resource_map, ptr %10, i32 0, i32 0, !dbg !7164
  %11 = load i64, ptr %base, align 8, !dbg !7164
  store i64 %11, ptr %map_start, align 8, !dbg !7162
  call void @llvm.lifetime.start.p0(i64 8, ptr %map_end) #16, !dbg !7165
  call void @llvm.dbg.declare(metadata ptr %map_end, metadata !7134, metadata !DIExpression()), !dbg !7166
  %12 = load ptr, ptr %m, align 8, !dbg !7167
  %base3 = getelementptr inbounds %struct.resource_map, ptr %12, i32 0, i32 0, !dbg !7168
  %13 = load i64, ptr %base3, align 8, !dbg !7168
  %14 = load ptr, ptr %m, align 8, !dbg !7169
  %num = getelementptr inbounds %struct.resource_map, ptr %14, i32 0, i32 1, !dbg !7170
  %15 = load i64, ptr %num, align 8, !dbg !7170
  %add = add i64 %13, %15, !dbg !7171
  %sub = sub i64 %add, 1, !dbg !7172
  store i64 %sub, ptr %map_end, align 8, !dbg !7166
  %16 = load i64, ptr %start, align 8, !dbg !7173
  %17 = load i64, ptr %map_start, align 8, !dbg !7175
  %cmp4 = icmp ult i64 %16, %17, !dbg !7176
  br i1 %cmp4, label %if.then, label %if.end, !dbg !7177

if.then:                                          ; preds = %for.body
  %18 = load ptr, ptr %data, align 8, !dbg !7178
  %19 = load i64, ptr %map_start, align 8, !dbg !7179
  %call5 = call i64 @pcmcia_common_align(ptr noundef %18, i64 noundef %19) #17, !dbg !7180
  store i64 %call5, ptr %start, align 8, !dbg !7181
  br label %if.end, !dbg !7182

if.end:                                           ; preds = %if.then, %for.body
  %20 = load i64, ptr %start, align 8, !dbg !7183
  %21 = load ptr, ptr %res.addr, align 8, !dbg !7185
  %end = getelementptr inbounds %struct.resource, ptr %21, i32 0, i32 1, !dbg !7186
  %22 = load i64, ptr %end, align 8, !dbg !7186
  %cmp6 = icmp uge i64 %20, %22, !dbg !7187
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !7188

if.then7:                                         ; preds = %if.end
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7189

if.end8:                                          ; preds = %if.end
  %23 = load i64, ptr %start, align 8, !dbg !7190
  %24 = load i64, ptr %size.addr, align 8, !dbg !7192
  %add9 = add i64 %23, %24, !dbg !7193
  %sub10 = sub i64 %add9, 1, !dbg !7194
  %25 = load i64, ptr %map_end, align 8, !dbg !7195
  %cmp11 = icmp ule i64 %sub10, %25, !dbg !7196
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !7197

if.then12:                                        ; preds = %if.end8
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7198

if.end13:                                         ; preds = %if.end8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7199
  br label %cleanup, !dbg !7199

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_end) #16, !dbg !7199
  call void @llvm.lifetime.end.p0(i64 8, ptr %map_start) #16, !dbg !7199
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !7200

for.inc:                                          ; preds = %cleanup.cont
  %26 = load ptr, ptr %m, align 8, !dbg !7201
  %next15 = getelementptr inbounds %struct.resource_map, ptr %26, i32 0, i32 2, !dbg !7202
  %27 = load ptr, ptr %next15, align 8, !dbg !7202
  store ptr %27, ptr %m, align 8, !dbg !7203
  br label %for.cond, !dbg !7204, !llvm.loop !7205

for.end:                                          ; preds = %cleanup, %for.cond
  %28 = load ptr, ptr %m, align 8, !dbg !7207
  %29 = load ptr, ptr %data, align 8, !dbg !7209
  %map16 = getelementptr inbounds %struct.pcmcia_align_data, ptr %29, i32 0, i32 2, !dbg !7210
  %30 = load ptr, ptr %map16, align 8, !dbg !7210
  %cmp17 = icmp eq ptr %28, %30, !dbg !7211
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !7212

if.then18:                                        ; preds = %for.end
  %31 = load ptr, ptr %res.addr, align 8, !dbg !7213
  %end19 = getelementptr inbounds %struct.resource, ptr %31, i32 0, i32 1, !dbg !7214
  %32 = load i64, ptr %end19, align 8, !dbg !7214
  store i64 %32, ptr %start, align 8, !dbg !7215
  br label %if.end20, !dbg !7216

if.end20:                                         ; preds = %if.then18, %for.end
  %33 = load i64, ptr %start, align 8, !dbg !7217
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #16, !dbg !7218
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #16, !dbg !7218
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !7218
  ret i64 %33, !dbg !7219

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7220 dso_local i32 @allocate_resource(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #14 align 16 !dbg !7223 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !7225, metadata !DIExpression()), !dbg !7226
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !7227
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !7228
  %1 = load ptr, ptr %name, align 8, !dbg !7228
  ret ptr %1, !dbg !7229
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pcmcia_common_align(ptr noundef %align_data, i64 noundef %start) #0 align 16 !dbg !7230 {
entry:
  %align_data.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %ret = alloca i64, align 8
  store ptr %align_data, ptr %align_data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %align_data.addr, metadata !7234, metadata !DIExpression()), !dbg !7237
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7235, metadata !DIExpression()), !dbg !7238
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !7239
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7236, metadata !DIExpression()), !dbg !7240
  %0 = load i64, ptr %start.addr, align 8, !dbg !7241
  %1 = load ptr, ptr %align_data.addr, align 8, !dbg !7242
  %mask = getelementptr inbounds %struct.pcmcia_align_data, ptr %1, i32 0, i32 0, !dbg !7243
  %2 = load i64, ptr %mask, align 8, !dbg !7243
  %not = xor i64 %2, -1, !dbg !7244
  %and = and i64 %0, %not, !dbg !7245
  %3 = load ptr, ptr %align_data.addr, align 8, !dbg !7246
  %offset = getelementptr inbounds %struct.pcmcia_align_data, ptr %3, i32 0, i32 1, !dbg !7247
  %4 = load i64, ptr %offset, align 8, !dbg !7247
  %add = add i64 %and, %4, !dbg !7248
  store i64 %add, ptr %ret, align 8, !dbg !7249
  %5 = load i64, ptr %ret, align 8, !dbg !7250
  %6 = load i64, ptr %start.addr, align 8, !dbg !7252
  %cmp = icmp ult i64 %5, %6, !dbg !7253
  br i1 %cmp, label %if.then, label %if.end, !dbg !7254

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %align_data.addr, align 8, !dbg !7255
  %mask1 = getelementptr inbounds %struct.pcmcia_align_data, ptr %7, i32 0, i32 0, !dbg !7256
  %8 = load i64, ptr %mask1, align 8, !dbg !7256
  %add2 = add i64 %8, 1, !dbg !7257
  %9 = load i64, ptr %ret, align 8, !dbg !7258
  %add3 = add i64 %9, %add2, !dbg !7258
  store i64 %add3, ptr %ret, align 8, !dbg !7258
  br label %if.end, !dbg !7259

if.end:                                           ; preds = %if.then, %entry
  %10 = load i64, ptr %ret, align 8, !dbg !7260
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !7261
  ret i64 %10, !dbg !7262
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !7263 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7265, metadata !DIExpression()), !dbg !7267
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !7266, metadata !DIExpression()), !dbg !7268
  %0 = load i64, ptr %size.addr, align 8, !dbg !7269
  %1 = load i32, ptr %flags.addr, align 4, !dbg !7270
  %or = or i32 %1, 256, !dbg !7271
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !7272
  ret ptr %call, !dbg !7273
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nonstatic_autoadd_resources(ptr noundef %s) #0 align 16 !dbg !7274 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %res = alloca ptr, align 8
  %i = alloca i32, align 4
  %done = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7276, metadata !DIExpression()), !dbg !7280
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !7281
  call void @llvm.dbg.declare(metadata ptr %res, metadata !7277, metadata !DIExpression()), !dbg !7282
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !7283
  call void @llvm.dbg.declare(metadata ptr %i, metadata !7278, metadata !DIExpression()), !dbg !7284
  call void @llvm.lifetime.start.p0(i64 4, ptr %done) #16, !dbg !7283
  call void @llvm.dbg.declare(metadata ptr %done, metadata !7279, metadata !DIExpression()), !dbg !7285
  store i32 0, ptr %done, align 4, !dbg !7285
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7286
  %cb_dev = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 21, !dbg !7288
  %1 = load ptr, ptr %cb_dev, align 8, !dbg !7288
  %tobool = icmp ne ptr %1, null, !dbg !7286
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !7289

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !7290
  %cb_dev1 = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 21, !dbg !7291
  %3 = load ptr, ptr %cb_dev1, align 8, !dbg !7291
  %bus = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 1, !dbg !7292
  %4 = load ptr, ptr %bus, align 8, !dbg !7292
  %tobool2 = icmp ne ptr %4, null, !dbg !7290
  br i1 %tobool2, label %if.end, label %if.then, !dbg !7293

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -19, ptr %retval, align 4, !dbg !7294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7294

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %s.addr, align 8, !dbg !7295
  %cb_dev3 = getelementptr inbounds %struct.pcmcia_socket, ptr %5, i32 0, i32 21, !dbg !7297
  %6 = load ptr, ptr %cb_dev3, align 8, !dbg !7297
  %bus4 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 1, !dbg !7298
  %7 = load ptr, ptr %bus4, align 8, !dbg !7298
  %number = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12, !dbg !7299
  %8 = load i8, ptr %number, align 8, !dbg !7299
  %conv = zext i8 %8 to i32, !dbg !7295
  %cmp = icmp eq i32 %conv, 0, !dbg !7300
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !7301

if.then6:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !7302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7302

if.end7:                                          ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !7303
  br label %for.cond, !dbg !7305

for.cond:                                         ; preds = %for.inc, %if.end7
  %9 = load i32, ptr %i, align 4, !dbg !7306
  %cmp8 = icmp slt i32 %9, 4, !dbg !7308
  br i1 %cmp8, label %for.body, label %for.end, !dbg !7309

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %s.addr, align 8, !dbg !7310
  %cb_dev10 = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 21, !dbg !7312
  %11 = load ptr, ptr %cb_dev10, align 8, !dbg !7312
  %bus11 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 1, !dbg !7313
  %12 = load ptr, ptr %bus11, align 8, !dbg !7313
  %resource = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 6, !dbg !7314
  %13 = load i32, ptr %i, align 4, !dbg !7315
  %idxprom = sext i32 %13 to i64, !dbg !7310
  %arrayidx = getelementptr [4 x ptr], ptr %resource, i64 0, i64 %idxprom, !dbg !7310
  %14 = load ptr, ptr %arrayidx, align 8, !dbg !7310
  store ptr %14, ptr %res, align 8, !dbg !7316
  %15 = load ptr, ptr %res, align 8, !dbg !7317
  %tobool12 = icmp ne ptr %15, null, !dbg !7317
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !7319

if.then13:                                        ; preds = %for.body
  br label %for.inc, !dbg !7320

if.end14:                                         ; preds = %for.body
  %16 = load ptr, ptr %res, align 8, !dbg !7321
  %flags = getelementptr inbounds %struct.resource, ptr %16, i32 0, i32 3, !dbg !7323
  %17 = load i64, ptr %flags, align 8, !dbg !7323
  %and = and i64 %17, 256, !dbg !7324
  %tobool15 = icmp ne i64 %and, 0, !dbg !7324
  br i1 %tobool15, label %if.then16, label %if.end25, !dbg !7325

if.then16:                                        ; preds = %if.end14
  %18 = load ptr, ptr %res, align 8, !dbg !7326
  %cmp17 = icmp eq ptr %18, @ioport_resource, !dbg !7329
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !7330

if.then19:                                        ; preds = %if.then16
  br label %for.inc, !dbg !7331

if.end20:                                         ; preds = %if.then16
  br label %do.body, !dbg !7332

do.body:                                          ; preds = %if.end20
  br label %do.cond, !dbg !7334

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7334

do.end:                                           ; preds = %do.cond
  %19 = load ptr, ptr %s.addr, align 8, !dbg !7332
  %cb_dev21 = getelementptr inbounds %struct.pcmcia_socket, ptr %19, i32 0, i32 21, !dbg !7332
  %20 = load ptr, ptr %cb_dev21, align 8, !dbg !7332
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 37, !dbg !7332
  %21 = load ptr, ptr %res, align 8, !dbg !7332
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef @.str.9, ptr noundef %21) #19, !dbg !7332
  %22 = load ptr, ptr %s.addr, align 8, !dbg !7336
  %23 = load ptr, ptr %res, align 8, !dbg !7338
  %start = getelementptr inbounds %struct.resource, ptr %23, i32 0, i32 0, !dbg !7339
  %24 = load i64, ptr %start, align 8, !dbg !7339
  %25 = load ptr, ptr %res, align 8, !dbg !7340
  %end = getelementptr inbounds %struct.resource, ptr %25, i32 0, i32 1, !dbg !7341
  %26 = load i64, ptr %end, align 8, !dbg !7341
  %call = call i32 @adjust_io(ptr noundef %22, i32 noundef 2, i64 noundef %24, i64 noundef %26) #17, !dbg !7342
  %tobool22 = icmp ne i32 %call, 0, !dbg !7342
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !7343

if.then23:                                        ; preds = %do.end
  %27 = load i32, ptr %done, align 4, !dbg !7344
  %or = or i32 %27, 256, !dbg !7344
  store i32 %or, ptr %done, align 4, !dbg !7344
  br label %if.end24, !dbg !7345

if.end24:                                         ; preds = %if.then23, %do.end
  br label %if.end25, !dbg !7346

if.end25:                                         ; preds = %if.end24, %if.end14
  %28 = load ptr, ptr %res, align 8, !dbg !7347
  %flags26 = getelementptr inbounds %struct.resource, ptr %28, i32 0, i32 3, !dbg !7349
  %29 = load i64, ptr %flags26, align 8, !dbg !7349
  %and27 = and i64 %29, 512, !dbg !7350
  %tobool28 = icmp ne i64 %and27, 0, !dbg !7350
  br i1 %tobool28, label %if.then29, label %if.end46, !dbg !7351

if.then29:                                        ; preds = %if.end25
  %30 = load ptr, ptr %res, align 8, !dbg !7352
  %cmp30 = icmp eq ptr %30, @iomem_resource, !dbg !7355
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !7356

if.then32:                                        ; preds = %if.then29
  br label %for.inc, !dbg !7357

if.end33:                                         ; preds = %if.then29
  br label %do.body34, !dbg !7358

do.body34:                                        ; preds = %if.end33
  br label %do.cond35, !dbg !7360

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !7360

do.end36:                                         ; preds = %do.cond35
  %31 = load ptr, ptr %s.addr, align 8, !dbg !7358
  %cb_dev37 = getelementptr inbounds %struct.pcmcia_socket, ptr %31, i32 0, i32 21, !dbg !7358
  %32 = load ptr, ptr %cb_dev37, align 8, !dbg !7358
  %dev38 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 37, !dbg !7358
  %33 = load ptr, ptr %res, align 8, !dbg !7358
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef @.str.9, ptr noundef %33) #19, !dbg !7358
  %34 = load ptr, ptr %s.addr, align 8, !dbg !7362
  %35 = load ptr, ptr %res, align 8, !dbg !7364
  %start39 = getelementptr inbounds %struct.resource, ptr %35, i32 0, i32 0, !dbg !7365
  %36 = load i64, ptr %start39, align 8, !dbg !7365
  %37 = load ptr, ptr %res, align 8, !dbg !7366
  %end40 = getelementptr inbounds %struct.resource, ptr %37, i32 0, i32 1, !dbg !7367
  %38 = load i64, ptr %end40, align 8, !dbg !7367
  %call41 = call i32 @adjust_memory(ptr noundef %34, i32 noundef 2, i64 noundef %36, i64 noundef %38) #17, !dbg !7368
  %tobool42 = icmp ne i32 %call41, 0, !dbg !7368
  br i1 %tobool42, label %if.end45, label %if.then43, !dbg !7369

if.then43:                                        ; preds = %do.end36
  %39 = load i32, ptr %done, align 4, !dbg !7370
  %or44 = or i32 %39, 512, !dbg !7370
  store i32 %or44, ptr %done, align 4, !dbg !7370
  br label %if.end45, !dbg !7371

if.end45:                                         ; preds = %if.then43, %do.end36
  br label %if.end46, !dbg !7372

if.end46:                                         ; preds = %if.end45, %if.end25
  br label %for.inc, !dbg !7373

for.inc:                                          ; preds = %if.end46, %if.then32, %if.then19, %if.then13
  %40 = load i32, ptr %i, align 4, !dbg !7374
  %inc = add i32 %40, 1, !dbg !7374
  store i32 %inc, ptr %i, align 4, !dbg !7374
  br label %for.cond, !dbg !7375, !llvm.loop !7376

for.end:                                          ; preds = %for.cond
  %41 = load i32, ptr %done, align 4, !dbg !7378
  %cmp47 = icmp eq i32 %41, 768, !dbg !7380
  br i1 %cmp47, label %if.then49, label %if.end50, !dbg !7381

if.then49:                                        ; preds = %for.end
  %42 = load ptr, ptr %s.addr, align 8, !dbg !7382
  %resource_setup_done = getelementptr inbounds %struct.pcmcia_socket, ptr %42, i32 0, i32 22, !dbg !7383
  store i8 1, ptr %resource_setup_done, align 8, !dbg !7384
  br label %if.end50, !dbg !7382

if.end50:                                         ; preds = %if.then49, %for.end
  store i32 0, ptr %retval, align 4, !dbg !7385
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7385

cleanup:                                          ; preds = %if.end50, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %done) #16, !dbg !7386
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !7386
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !7386
  %43 = load i32, ptr %retval, align 4, !dbg !7386
  ret i32 %43, !dbg !7386
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @adjust_io(ptr noundef %s, i32 noundef %action, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !7387 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %action.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %data = alloca ptr, align 8
  %size = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7391, metadata !DIExpression()), !dbg !7398
  store i32 %action, ptr %action.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !7392, metadata !DIExpression()), !dbg !7399
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7393, metadata !DIExpression()), !dbg !7400
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !7394, metadata !DIExpression()), !dbg !7401
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !7402
  call void @llvm.dbg.declare(metadata ptr %data, metadata !7395, metadata !DIExpression()), !dbg !7403
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7404
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 25, !dbg !7405
  %1 = load ptr, ptr %resource_data, align 8, !dbg !7405
  store ptr %1, ptr %data, align 8, !dbg !7403
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !7406
  call void @llvm.dbg.declare(metadata ptr %size, metadata !7396, metadata !DIExpression()), !dbg !7407
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !7408
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7397, metadata !DIExpression()), !dbg !7409
  store i32 0, ptr %ret, align 4, !dbg !7409
  %2 = load i64, ptr %start.addr, align 8, !dbg !7410
  %cmp = icmp ult i64 %2, 256, !dbg !7412
  br i1 %cmp, label %if.then, label %if.end, !dbg !7413

if.then:                                          ; preds = %entry
  store i64 256, ptr %start.addr, align 8, !dbg !7414
  br label %if.end, !dbg !7415

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %end.addr, align 8, !dbg !7416
  %4 = load i64, ptr %start.addr, align 8, !dbg !7417
  %sub = sub i64 %3, %4, !dbg !7418
  %add = add i64 %sub, 1, !dbg !7419
  store i64 %add, ptr %size, align 8, !dbg !7420
  %5 = load i64, ptr %end.addr, align 8, !dbg !7421
  %6 = load i64, ptr %start.addr, align 8, !dbg !7423
  %cmp1 = icmp ult i64 %5, %6, !dbg !7424
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !7425

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !7426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7426

if.end3:                                          ; preds = %if.end
  %7 = load i64, ptr %end.addr, align 8, !dbg !7427
  %cmp4 = icmp ugt i64 %7, 65535, !dbg !7429
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !7430

if.then5:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !7431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7431

if.end6:                                          ; preds = %if.end3
  %8 = load i32, ptr %action.addr, align 4, !dbg !7432
  switch i32 %8, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb10
  ], !dbg !7433

sw.bb:                                            ; preds = %if.end6
  %9 = load ptr, ptr %data, align 8, !dbg !7434
  %io_db = getelementptr inbounds %struct.socket_data, ptr %9, i32 0, i32 2, !dbg !7437
  %10 = load i64, ptr %start.addr, align 8, !dbg !7438
  %11 = load i64, ptr %size, align 8, !dbg !7439
  %call = call i32 @add_interval(ptr noundef %io_db, i64 noundef %10, i64 noundef %11) #17, !dbg !7440
  %cmp7 = icmp ne i32 %call, 0, !dbg !7441
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !7442

if.then8:                                         ; preds = %sw.bb
  store i32 -16, ptr %ret, align 4, !dbg !7443
  br label %sw.epilog, !dbg !7445

if.end9:                                          ; preds = %sw.bb
  br label %sw.epilog, !dbg !7446

sw.bb10:                                          ; preds = %if.end6
  %12 = load ptr, ptr %data, align 8, !dbg !7447
  %io_db11 = getelementptr inbounds %struct.socket_data, ptr %12, i32 0, i32 2, !dbg !7448
  %13 = load i64, ptr %start.addr, align 8, !dbg !7449
  %14 = load i64, ptr %size, align 8, !dbg !7450
  %call12 = call i32 @sub_interval(ptr noundef %io_db11, i64 noundef %13, i64 noundef %14) #17, !dbg !7451
  br label %sw.epilog, !dbg !7452

sw.default:                                       ; preds = %if.end6
  store i32 -22, ptr %ret, align 4, !dbg !7453
  br label %sw.epilog, !dbg !7454

sw.epilog:                                        ; preds = %sw.default, %sw.bb10, %if.end9, %if.then8
  %15 = load i32, ptr %ret, align 4, !dbg !7455
  store i32 %15, ptr %retval, align 4, !dbg !7456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7456

cleanup:                                          ; preds = %sw.epilog, %if.then5, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !7457
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !7457
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !7457
  %16 = load i32, ptr %retval, align 4, !dbg !7457
  ret i32 %16, !dbg !7457
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @adjust_memory(ptr noundef %s, i32 noundef %action, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !7458 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %action.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %data = alloca ptr, align 8
  %size = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7460, metadata !DIExpression()), !dbg !7467
  store i32 %action, ptr %action.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !7461, metadata !DIExpression()), !dbg !7468
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7462, metadata !DIExpression()), !dbg !7469
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !7463, metadata !DIExpression()), !dbg !7470
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !7471
  call void @llvm.dbg.declare(metadata ptr %data, metadata !7464, metadata !DIExpression()), !dbg !7472
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7473
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %0, i32 0, i32 25, !dbg !7474
  %1 = load ptr, ptr %resource_data, align 8, !dbg !7474
  store ptr %1, ptr %data, align 8, !dbg !7472
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !7475
  call void @llvm.dbg.declare(metadata ptr %size, metadata !7465, metadata !DIExpression()), !dbg !7476
  %2 = load i64, ptr %end.addr, align 8, !dbg !7477
  %3 = load i64, ptr %start.addr, align 8, !dbg !7478
  %sub = sub i64 %2, %3, !dbg !7479
  %add = add i64 %sub, 1, !dbg !7480
  store i64 %add, ptr %size, align 8, !dbg !7476
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !7481
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7466, metadata !DIExpression()), !dbg !7482
  store i32 0, ptr %ret, align 4, !dbg !7482
  %4 = load i64, ptr %end.addr, align 8, !dbg !7483
  %5 = load i64, ptr %start.addr, align 8, !dbg !7485
  %cmp = icmp ult i64 %4, %5, !dbg !7486
  br i1 %cmp, label %if.then, label %if.end, !dbg !7487

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !7488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7488

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %action.addr, align 4, !dbg !7489
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !7490

sw.bb:                                            ; preds = %if.end
  %7 = load ptr, ptr %data, align 8, !dbg !7491
  %mem_db = getelementptr inbounds %struct.socket_data, ptr %7, i32 0, i32 0, !dbg !7493
  %8 = load i64, ptr %start.addr, align 8, !dbg !7494
  %9 = load i64, ptr %size, align 8, !dbg !7495
  %call = call i32 @add_interval(ptr noundef %mem_db, i64 noundef %8, i64 noundef %9) #17, !dbg !7496
  store i32 %call, ptr %ret, align 4, !dbg !7497
  %10 = load i32, ptr %ret, align 4, !dbg !7498
  %tobool = icmp ne i32 %10, 0, !dbg !7498
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !7500

if.then1:                                         ; preds = %sw.bb
  %11 = load ptr, ptr %s.addr, align 8, !dbg !7501
  %12 = load i64, ptr %start.addr, align 8, !dbg !7502
  %13 = load i64, ptr %size, align 8, !dbg !7503
  %call2 = call i32 @do_mem_probe(ptr noundef %11, i64 noundef %12, i64 noundef %13, ptr noundef null, ptr noundef null) #17, !dbg !7504
  br label %if.end3, !dbg !7504

if.end3:                                          ; preds = %if.then1, %sw.bb
  br label %sw.epilog, !dbg !7505

sw.bb4:                                           ; preds = %if.end
  %14 = load ptr, ptr %data, align 8, !dbg !7506
  %mem_db5 = getelementptr inbounds %struct.socket_data, ptr %14, i32 0, i32 0, !dbg !7507
  %15 = load i64, ptr %start.addr, align 8, !dbg !7508
  %16 = load i64, ptr %size, align 8, !dbg !7509
  %call6 = call i32 @sub_interval(ptr noundef %mem_db5, i64 noundef %15, i64 noundef %16) #17, !dbg !7510
  store i32 %call6, ptr %ret, align 4, !dbg !7511
  br label %sw.epilog, !dbg !7512

sw.default:                                       ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !7513
  br label %sw.epilog, !dbg !7514

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %if.end3
  %17 = load i32, ptr %ret, align 4, !dbg !7515
  store i32 %17, ptr %retval, align 4, !dbg !7516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7516

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !7517
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !7517
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !7517
  %18 = load i32, ptr %retval, align 4, !dbg !7517
  ret i32 %18, !dbg !7517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pccard_sysfs_add_rsrc(ptr noundef %dev) #0 align 16 !dbg !7518 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7520, metadata !DIExpression()), !dbg !7522
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !7523
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7521, metadata !DIExpression()), !dbg !7524
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7525
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !7526
  store ptr %call, ptr %s, align 8, !dbg !7524
  %1 = load ptr, ptr %s, align 8, !dbg !7527
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 24, !dbg !7529
  %2 = load ptr, ptr %resource_ops, align 8, !dbg !7529
  %cmp = icmp ne ptr %2, @pccard_nonstatic_ops, !dbg !7530
  br i1 %cmp, label %if.then, label %if.end, !dbg !7531

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !7532
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7532

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7533
  %kobj = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 0, !dbg !7534
  %call1 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef @rsrc_attributes) #17, !dbg !7535
  store i32 %call1, ptr %retval, align 4, !dbg !7536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7536

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !7537
  %4 = load i32, ptr %retval, align 4, !dbg !7537
  ret i32 %4, !dbg !7537
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pccard_sysfs_remove_rsrc(ptr noundef %dev) #0 align 16 !dbg !7538 {
entry:
  %dev.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7540, metadata !DIExpression()), !dbg !7542
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !7543
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7541, metadata !DIExpression()), !dbg !7544
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7545
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !7546
  store ptr %call, ptr %s, align 8, !dbg !7544
  %1 = load ptr, ptr %s, align 8, !dbg !7547
  %resource_ops = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 24, !dbg !7549
  %2 = load ptr, ptr %resource_ops, align 8, !dbg !7549
  %cmp = icmp ne ptr %2, @pccard_nonstatic_ops, !dbg !7550
  br i1 %cmp, label %if.then, label %if.end, !dbg !7551

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7552

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !7553
  %kobj = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 0, !dbg !7554
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef @rsrc_attributes) #17, !dbg !7555
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7556
  br label %cleanup, !dbg !7556

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !7556
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7556

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #14 align 16 !dbg !7557 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7561, metadata !DIExpression()), !dbg !7562
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7563
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !7564
  %1 = load ptr, ptr %driver_data, align 8, !dbg !7564
  ret ptr %1, !dbg !7565
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7566 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_io_db(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7569 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %data = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7571, metadata !DIExpression()), !dbg !7578
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7572, metadata !DIExpression()), !dbg !7579
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7573, metadata !DIExpression()), !dbg !7580
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !7581
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7574, metadata !DIExpression()), !dbg !7582
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7583
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !7584
  store ptr %call, ptr %s, align 8, !dbg !7582
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !7585
  call void @llvm.dbg.declare(metadata ptr %data, metadata !7575, metadata !DIExpression()), !dbg !7586
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !7587
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7576, metadata !DIExpression()), !dbg !7588
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !7589
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7577, metadata !DIExpression()), !dbg !7590
  store i64 0, ptr %ret, align 8, !dbg !7590
  %1 = load ptr, ptr %s, align 8, !dbg !7591
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34, !dbg !7592
  call void @mutex_lock(ptr noundef %ops_mutex) #17, !dbg !7593
  %2 = load ptr, ptr %s, align 8, !dbg !7594
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 25, !dbg !7595
  %3 = load ptr, ptr %resource_data, align 8, !dbg !7595
  store ptr %3, ptr %data, align 8, !dbg !7596
  %4 = load ptr, ptr %data, align 8, !dbg !7597
  %io_db = getelementptr inbounds %struct.socket_data, ptr %4, i32 0, i32 2, !dbg !7599
  %next = getelementptr inbounds %struct.resource_map, ptr %io_db, i32 0, i32 2, !dbg !7600
  %5 = load ptr, ptr %next, align 8, !dbg !7600
  store ptr %5, ptr %p, align 8, !dbg !7601
  br label %for.cond, !dbg !7602

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %p, align 8, !dbg !7603
  %7 = load ptr, ptr %data, align 8, !dbg !7605
  %io_db1 = getelementptr inbounds %struct.socket_data, ptr %7, i32 0, i32 2, !dbg !7606
  %cmp = icmp ne ptr %6, %io_db1, !dbg !7607
  br i1 %cmp, label %for.body, label %for.end, !dbg !7608

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %ret, align 8, !dbg !7609
  %cmp2 = icmp ugt i64 %8, 4086, !dbg !7612
  br i1 %cmp2, label %if.then, label %if.end, !dbg !7613

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !7614

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !7615
  %10 = load i64, ptr %ret, align 8, !dbg !7616
  %conv = trunc i64 %10 to i32, !dbg !7616
  %11 = load ptr, ptr %p, align 8, !dbg !7617
  %base = getelementptr inbounds %struct.resource_map, ptr %11, i32 0, i32 0, !dbg !7618
  %12 = load i64, ptr %base, align 8, !dbg !7618
  %13 = load ptr, ptr %p, align 8, !dbg !7619
  %base3 = getelementptr inbounds %struct.resource_map, ptr %13, i32 0, i32 0, !dbg !7620
  %14 = load i64, ptr %base3, align 8, !dbg !7620
  %15 = load ptr, ptr %p, align 8, !dbg !7621
  %num = getelementptr inbounds %struct.resource_map, ptr %15, i32 0, i32 1, !dbg !7622
  %16 = load i64, ptr %num, align 8, !dbg !7622
  %add = add i64 %14, %16, !dbg !7623
  %sub = sub i64 %add, 1, !dbg !7624
  %call4 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %9, i32 noundef %conv, ptr noundef @.str.11, i64 noundef %12, i64 noundef %sub) #17, !dbg !7625
  %conv5 = sext i32 %call4 to i64, !dbg !7625
  %17 = load i64, ptr %ret, align 8, !dbg !7626
  %add6 = add i64 %17, %conv5, !dbg !7626
  store i64 %add6, ptr %ret, align 8, !dbg !7626
  br label %for.inc, !dbg !7627

for.inc:                                          ; preds = %if.end, %if.then
  %18 = load ptr, ptr %p, align 8, !dbg !7628
  %next7 = getelementptr inbounds %struct.resource_map, ptr %18, i32 0, i32 2, !dbg !7629
  %19 = load ptr, ptr %next7, align 8, !dbg !7629
  store ptr %19, ptr %p, align 8, !dbg !7630
  br label %for.cond, !dbg !7631, !llvm.loop !7632

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %s, align 8, !dbg !7634
  %ops_mutex8 = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 34, !dbg !7635
  call void @mutex_unlock(ptr noundef %ops_mutex8) #17, !dbg !7636
  %21 = load i64, ptr %ret, align 8, !dbg !7637
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !7638
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !7638
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !7638
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !7638
  ret i64 %21, !dbg !7639
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @store_io_db(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !7640 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  %start_addr = alloca i64, align 8
  %end_addr = alloca i64, align 8
  %add = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7642, metadata !DIExpression()), !dbg !7651
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7643, metadata !DIExpression()), !dbg !7652
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7644, metadata !DIExpression()), !dbg !7653
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7645, metadata !DIExpression()), !dbg !7654
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !7655
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7646, metadata !DIExpression()), !dbg !7656
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7657
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !7658
  store ptr %call, ptr %s, align 8, !dbg !7656
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_addr) #16, !dbg !7659
  call void @llvm.dbg.declare(metadata ptr %start_addr, metadata !7647, metadata !DIExpression()), !dbg !7660
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_addr) #16, !dbg !7659
  call void @llvm.dbg.declare(metadata ptr %end_addr, metadata !7648, metadata !DIExpression()), !dbg !7661
  call void @llvm.lifetime.start.p0(i64 4, ptr %add) #16, !dbg !7662
  call void @llvm.dbg.declare(metadata ptr %add, metadata !7649, metadata !DIExpression()), !dbg !7663
  store i32 2, ptr %add, align 4, !dbg !7663
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !7664
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7650, metadata !DIExpression()), !dbg !7665
  store i64 0, ptr %ret, align 8, !dbg !7665
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !7666
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.12, ptr noundef %start_addr, ptr noundef %end_addr) #17, !dbg !7667
  %conv = sext i32 %call1 to i64, !dbg !7667
  store i64 %conv, ptr %ret, align 8, !dbg !7668
  %2 = load i64, ptr %ret, align 8, !dbg !7669
  %cmp = icmp ne i64 %2, 2, !dbg !7671
  br i1 %cmp, label %if.then, label %if.end14, !dbg !7672

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7673
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef @.str.13, ptr noundef %start_addr, ptr noundef %end_addr) #17, !dbg !7675
  %conv4 = sext i32 %call3 to i64, !dbg !7675
  store i64 %conv4, ptr %ret, align 8, !dbg !7676
  store i32 1, ptr %add, align 4, !dbg !7677
  %4 = load i64, ptr %ret, align 8, !dbg !7678
  %cmp5 = icmp ne i64 %4, 2, !dbg !7680
  br i1 %cmp5, label %if.then7, label %if.end13, !dbg !7681

if.then7:                                         ; preds = %if.then
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !7682
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %5, ptr noundef @.str.14, ptr noundef %start_addr, ptr noundef %end_addr) #17, !dbg !7684
  %conv9 = sext i32 %call8 to i64, !dbg !7684
  store i64 %conv9, ptr %ret, align 8, !dbg !7685
  store i32 2, ptr %add, align 4, !dbg !7686
  %6 = load i64, ptr %ret, align 8, !dbg !7687
  %cmp10 = icmp ne i64 %6, 2, !dbg !7689
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !7690

if.then12:                                        ; preds = %if.then7
  store i64 -22, ptr %retval, align 8, !dbg !7691
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7691

if.end:                                           ; preds = %if.then7
  br label %if.end13, !dbg !7692

if.end13:                                         ; preds = %if.end, %if.then
  br label %if.end14, !dbg !7693

if.end14:                                         ; preds = %if.end13, %entry
  %7 = load i64, ptr %end_addr, align 8, !dbg !7694
  %8 = load i64, ptr %start_addr, align 8, !dbg !7696
  %cmp15 = icmp ult i64 %7, %8, !dbg !7697
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !7698

if.then17:                                        ; preds = %if.end14
  store i64 -22, ptr %retval, align 8, !dbg !7699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7699

if.end18:                                         ; preds = %if.end14
  %9 = load ptr, ptr %s, align 8, !dbg !7700
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 34, !dbg !7701
  call void @mutex_lock(ptr noundef %ops_mutex) #17, !dbg !7702
  %10 = load ptr, ptr %s, align 8, !dbg !7703
  %11 = load i32, ptr %add, align 4, !dbg !7704
  %12 = load i64, ptr %start_addr, align 8, !dbg !7705
  %13 = load i64, ptr %end_addr, align 8, !dbg !7706
  %call19 = call i32 @adjust_io(ptr noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13) #17, !dbg !7707
  %conv20 = sext i32 %call19 to i64, !dbg !7707
  store i64 %conv20, ptr %ret, align 8, !dbg !7708
  %14 = load ptr, ptr %s, align 8, !dbg !7709
  %ops_mutex21 = getelementptr inbounds %struct.pcmcia_socket, ptr %14, i32 0, i32 34, !dbg !7710
  call void @mutex_unlock(ptr noundef %ops_mutex21) #17, !dbg !7711
  %15 = load i64, ptr %ret, align 8, !dbg !7712
  %tobool = icmp ne i64 %15, 0, !dbg !7712
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7712

cond.true:                                        ; preds = %if.end18
  %16 = load i64, ptr %ret, align 8, !dbg !7713
  br label %cond.end, !dbg !7712

cond.false:                                       ; preds = %if.end18
  %17 = load i64, ptr %count.addr, align 8, !dbg !7714
  br label %cond.end, !dbg !7712

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !7712
  store i64 %cond, ptr %retval, align 8, !dbg !7715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7715

cleanup:                                          ; preds = %cond.end, %if.then17, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !7716
  call void @llvm.lifetime.end.p0(i64 4, ptr %add) #16, !dbg !7716
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_addr) #16, !dbg !7716
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_addr) #16, !dbg !7716
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !7716
  %18 = load i64, ptr %retval, align 8, !dbg !7716
  ret i64 %18, !dbg !7716
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7717 dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7720 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_mem_db(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !7724 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %data = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7726, metadata !DIExpression()), !dbg !7733
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7727, metadata !DIExpression()), !dbg !7734
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7728, metadata !DIExpression()), !dbg !7735
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !7736
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7729, metadata !DIExpression()), !dbg !7737
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7738
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !7739
  store ptr %call, ptr %s, align 8, !dbg !7737
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !7740
  call void @llvm.dbg.declare(metadata ptr %data, metadata !7730, metadata !DIExpression()), !dbg !7741
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !7742
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7731, metadata !DIExpression()), !dbg !7743
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !7744
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7732, metadata !DIExpression()), !dbg !7745
  store i64 0, ptr %ret, align 8, !dbg !7745
  %1 = load ptr, ptr %s, align 8, !dbg !7746
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34, !dbg !7747
  call void @mutex_lock(ptr noundef %ops_mutex) #17, !dbg !7748
  %2 = load ptr, ptr %s, align 8, !dbg !7749
  %resource_data = getelementptr inbounds %struct.pcmcia_socket, ptr %2, i32 0, i32 25, !dbg !7750
  %3 = load ptr, ptr %resource_data, align 8, !dbg !7750
  store ptr %3, ptr %data, align 8, !dbg !7751
  %4 = load ptr, ptr %data, align 8, !dbg !7752
  %mem_db_valid = getelementptr inbounds %struct.socket_data, ptr %4, i32 0, i32 1, !dbg !7754
  %next = getelementptr inbounds %struct.resource_map, ptr %mem_db_valid, i32 0, i32 2, !dbg !7755
  %5 = load ptr, ptr %next, align 8, !dbg !7755
  store ptr %5, ptr %p, align 8, !dbg !7756
  br label %for.cond, !dbg !7757

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %p, align 8, !dbg !7758
  %7 = load ptr, ptr %data, align 8, !dbg !7760
  %mem_db_valid1 = getelementptr inbounds %struct.socket_data, ptr %7, i32 0, i32 1, !dbg !7761
  %cmp = icmp ne ptr %6, %mem_db_valid1, !dbg !7762
  br i1 %cmp, label %for.body, label %for.end, !dbg !7763

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %ret, align 8, !dbg !7764
  %cmp2 = icmp ugt i64 %8, 4086, !dbg !7767
  br i1 %cmp2, label %if.then, label %if.end, !dbg !7768

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !7769

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !7770
  %10 = load i64, ptr %ret, align 8, !dbg !7771
  %conv = trunc i64 %10 to i32, !dbg !7771
  %11 = load ptr, ptr %p, align 8, !dbg !7772
  %base = getelementptr inbounds %struct.resource_map, ptr %11, i32 0, i32 0, !dbg !7773
  %12 = load i64, ptr %base, align 8, !dbg !7773
  %13 = load ptr, ptr %p, align 8, !dbg !7774
  %base3 = getelementptr inbounds %struct.resource_map, ptr %13, i32 0, i32 0, !dbg !7775
  %14 = load i64, ptr %base3, align 8, !dbg !7775
  %15 = load ptr, ptr %p, align 8, !dbg !7776
  %num = getelementptr inbounds %struct.resource_map, ptr %15, i32 0, i32 1, !dbg !7777
  %16 = load i64, ptr %num, align 8, !dbg !7777
  %add = add i64 %14, %16, !dbg !7778
  %sub = sub i64 %add, 1, !dbg !7779
  %call4 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %9, i32 noundef %conv, ptr noundef @.str.11, i64 noundef %12, i64 noundef %sub) #17, !dbg !7780
  %conv5 = sext i32 %call4 to i64, !dbg !7780
  %17 = load i64, ptr %ret, align 8, !dbg !7781
  %add6 = add i64 %17, %conv5, !dbg !7781
  store i64 %add6, ptr %ret, align 8, !dbg !7781
  br label %for.inc, !dbg !7782

for.inc:                                          ; preds = %if.end, %if.then
  %18 = load ptr, ptr %p, align 8, !dbg !7783
  %next7 = getelementptr inbounds %struct.resource_map, ptr %18, i32 0, i32 2, !dbg !7784
  %19 = load ptr, ptr %next7, align 8, !dbg !7784
  store ptr %19, ptr %p, align 8, !dbg !7785
  br label %for.cond, !dbg !7786, !llvm.loop !7787

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %data, align 8, !dbg !7789
  %mem_db = getelementptr inbounds %struct.socket_data, ptr %20, i32 0, i32 0, !dbg !7791
  %next8 = getelementptr inbounds %struct.resource_map, ptr %mem_db, i32 0, i32 2, !dbg !7792
  %21 = load ptr, ptr %next8, align 8, !dbg !7792
  store ptr %21, ptr %p, align 8, !dbg !7793
  br label %for.cond9, !dbg !7794

for.cond9:                                        ; preds = %for.inc27, %for.end
  %22 = load ptr, ptr %p, align 8, !dbg !7795
  %23 = load ptr, ptr %data, align 8, !dbg !7797
  %mem_db10 = getelementptr inbounds %struct.socket_data, ptr %23, i32 0, i32 0, !dbg !7798
  %cmp11 = icmp ne ptr %22, %mem_db10, !dbg !7799
  br i1 %cmp11, label %for.body13, label %for.end29, !dbg !7800

for.body13:                                       ; preds = %for.cond9
  %24 = load i64, ptr %ret, align 8, !dbg !7801
  %cmp14 = icmp ugt i64 %24, 4086, !dbg !7804
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !7805

if.then16:                                        ; preds = %for.body13
  br label %for.inc27, !dbg !7806

if.end17:                                         ; preds = %for.body13
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !7807
  %26 = load i64, ptr %ret, align 8, !dbg !7808
  %conv18 = trunc i64 %26 to i32, !dbg !7808
  %27 = load ptr, ptr %p, align 8, !dbg !7809
  %base19 = getelementptr inbounds %struct.resource_map, ptr %27, i32 0, i32 0, !dbg !7810
  %28 = load i64, ptr %base19, align 8, !dbg !7810
  %29 = load ptr, ptr %p, align 8, !dbg !7811
  %base20 = getelementptr inbounds %struct.resource_map, ptr %29, i32 0, i32 0, !dbg !7812
  %30 = load i64, ptr %base20, align 8, !dbg !7812
  %31 = load ptr, ptr %p, align 8, !dbg !7813
  %num21 = getelementptr inbounds %struct.resource_map, ptr %31, i32 0, i32 1, !dbg !7814
  %32 = load i64, ptr %num21, align 8, !dbg !7814
  %add22 = add i64 %30, %32, !dbg !7815
  %sub23 = sub i64 %add22, 1, !dbg !7816
  %call24 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %25, i32 noundef %conv18, ptr noundef @.str.11, i64 noundef %28, i64 noundef %sub23) #17, !dbg !7817
  %conv25 = sext i32 %call24 to i64, !dbg !7817
  %33 = load i64, ptr %ret, align 8, !dbg !7818
  %add26 = add i64 %33, %conv25, !dbg !7818
  store i64 %add26, ptr %ret, align 8, !dbg !7818
  br label %for.inc27, !dbg !7819

for.inc27:                                        ; preds = %if.end17, %if.then16
  %34 = load ptr, ptr %p, align 8, !dbg !7820
  %next28 = getelementptr inbounds %struct.resource_map, ptr %34, i32 0, i32 2, !dbg !7821
  %35 = load ptr, ptr %next28, align 8, !dbg !7821
  store ptr %35, ptr %p, align 8, !dbg !7822
  br label %for.cond9, !dbg !7823, !llvm.loop !7824

for.end29:                                        ; preds = %for.cond9
  %36 = load ptr, ptr %s, align 8, !dbg !7826
  %ops_mutex30 = getelementptr inbounds %struct.pcmcia_socket, ptr %36, i32 0, i32 34, !dbg !7827
  call void @mutex_unlock(ptr noundef %ops_mutex30) #17, !dbg !7828
  %37 = load i64, ptr %ret, align 8, !dbg !7829
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !7830
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !7830
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !7830
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !7830
  ret i64 %37, !dbg !7831
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @store_mem_db(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !7832 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %s = alloca ptr, align 8
  %start_addr = alloca i64, align 8
  %end_addr = alloca i64, align 8
  %add = alloca i32, align 4
  %ret = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !7834, metadata !DIExpression()), !dbg !7843
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !7835, metadata !DIExpression()), !dbg !7844
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !7836, metadata !DIExpression()), !dbg !7845
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !7837, metadata !DIExpression()), !dbg !7846
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #16, !dbg !7847
  call void @llvm.dbg.declare(metadata ptr %s, metadata !7838, metadata !DIExpression()), !dbg !7848
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !7849
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #17, !dbg !7850
  store ptr %call, ptr %s, align 8, !dbg !7848
  call void @llvm.lifetime.start.p0(i64 8, ptr %start_addr) #16, !dbg !7851
  call void @llvm.dbg.declare(metadata ptr %start_addr, metadata !7839, metadata !DIExpression()), !dbg !7852
  call void @llvm.lifetime.start.p0(i64 8, ptr %end_addr) #16, !dbg !7851
  call void @llvm.dbg.declare(metadata ptr %end_addr, metadata !7840, metadata !DIExpression()), !dbg !7853
  call void @llvm.lifetime.start.p0(i64 4, ptr %add) #16, !dbg !7854
  call void @llvm.dbg.declare(metadata ptr %add, metadata !7841, metadata !DIExpression()), !dbg !7855
  store i32 2, ptr %add, align 4, !dbg !7855
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #16, !dbg !7856
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !7842, metadata !DIExpression()), !dbg !7857
  store i64 0, ptr %ret, align 8, !dbg !7857
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !7858
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef @.str.12, ptr noundef %start_addr, ptr noundef %end_addr) #17, !dbg !7859
  %conv = sext i32 %call1 to i64, !dbg !7859
  store i64 %conv, ptr %ret, align 8, !dbg !7860
  %2 = load i64, ptr %ret, align 8, !dbg !7861
  %cmp = icmp ne i64 %2, 2, !dbg !7863
  br i1 %cmp, label %if.then, label %if.end14, !dbg !7864

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !7865
  %call3 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef @.str.13, ptr noundef %start_addr, ptr noundef %end_addr) #17, !dbg !7867
  %conv4 = sext i32 %call3 to i64, !dbg !7867
  store i64 %conv4, ptr %ret, align 8, !dbg !7868
  store i32 1, ptr %add, align 4, !dbg !7869
  %4 = load i64, ptr %ret, align 8, !dbg !7870
  %cmp5 = icmp ne i64 %4, 2, !dbg !7872
  br i1 %cmp5, label %if.then7, label %if.end13, !dbg !7873

if.then7:                                         ; preds = %if.then
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !7874
  %call8 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %5, ptr noundef @.str.14, ptr noundef %start_addr, ptr noundef %end_addr) #17, !dbg !7876
  %conv9 = sext i32 %call8 to i64, !dbg !7876
  store i64 %conv9, ptr %ret, align 8, !dbg !7877
  store i32 2, ptr %add, align 4, !dbg !7878
  %6 = load i64, ptr %ret, align 8, !dbg !7879
  %cmp10 = icmp ne i64 %6, 2, !dbg !7881
  br i1 %cmp10, label %if.then12, label %if.end, !dbg !7882

if.then12:                                        ; preds = %if.then7
  store i64 -22, ptr %retval, align 8, !dbg !7883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7883

if.end:                                           ; preds = %if.then7
  br label %if.end13, !dbg !7884

if.end13:                                         ; preds = %if.end, %if.then
  br label %if.end14, !dbg !7885

if.end14:                                         ; preds = %if.end13, %entry
  %7 = load i64, ptr %end_addr, align 8, !dbg !7886
  %8 = load i64, ptr %start_addr, align 8, !dbg !7888
  %cmp15 = icmp ult i64 %7, %8, !dbg !7889
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !7890

if.then17:                                        ; preds = %if.end14
  store i64 -22, ptr %retval, align 8, !dbg !7891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7891

if.end18:                                         ; preds = %if.end14
  %9 = load ptr, ptr %s, align 8, !dbg !7892
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 34, !dbg !7893
  call void @mutex_lock(ptr noundef %ops_mutex) #17, !dbg !7894
  %10 = load ptr, ptr %s, align 8, !dbg !7895
  %11 = load i32, ptr %add, align 4, !dbg !7896
  %12 = load i64, ptr %start_addr, align 8, !dbg !7897
  %13 = load i64, ptr %end_addr, align 8, !dbg !7898
  %call19 = call i32 @adjust_memory(ptr noundef %10, i32 noundef %11, i64 noundef %12, i64 noundef %13) #17, !dbg !7899
  %conv20 = sext i32 %call19 to i64, !dbg !7899
  store i64 %conv20, ptr %ret, align 8, !dbg !7900
  %14 = load ptr, ptr %s, align 8, !dbg !7901
  %ops_mutex21 = getelementptr inbounds %struct.pcmcia_socket, ptr %14, i32 0, i32 34, !dbg !7902
  call void @mutex_unlock(ptr noundef %ops_mutex21) #17, !dbg !7903
  %15 = load i64, ptr %ret, align 8, !dbg !7904
  %tobool = icmp ne i64 %15, 0, !dbg !7904
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !7904

cond.true:                                        ; preds = %if.end18
  %16 = load i64, ptr %ret, align 8, !dbg !7905
  br label %cond.end, !dbg !7904

cond.false:                                       ; preds = %if.end18
  %17 = load i64, ptr %count.addr, align 8, !dbg !7906
  br label %cond.end, !dbg !7904

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !7904
  store i64 %cond, ptr %retval, align 8, !dbg !7907
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7907

cleanup:                                          ; preds = %cond.end, %if.then17, %if.then12
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #16, !dbg !7908
  call void @llvm.lifetime.end.p0(i64 4, ptr %add) #16, !dbg !7908
  call void @llvm.lifetime.end.p0(i64 8, ptr %end_addr) #16, !dbg !7908
  call void @llvm.lifetime.end.p0(i64 8, ptr %start_addr) #16, !dbg !7908
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #16, !dbg !7908
  %18 = load i64, ptr %retval, align 8, !dbg !7908
  ret i64 %18, !dbg !7908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7909 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7912 dso_local i32 @class_interface_register(ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5145, !5146, !5147, !5148, !5149, !5150, !5151, !5152}
!llvm.ident = !{!5153}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_probe_mem", scope: !2, file: !3, line: 41, type: !5142, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pcmcia/.rsrc_nonstatic.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pcmcia/pcmcia_rsrc\22 -D KBUILD_BASENAME=\22rsrc_nonstatic\22 -D KBUILD_MODNAME=\22pcmcia_rsrc\22 -D __KBUILD_MODNAME=kmod_pcmcia_rsrc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pcmcia/rsrc_nonstatic.ll drivers/pcmcia/rsrc_nonstatic.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !156, globals: !4106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pcmcia/rsrc_nonstatic.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c49302c0581543a51a3b50d1c24a1c05")
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
!156 = !{!157, !334, !708, !312, !4104}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !159)
!159 = !{!160, !161, !168, !173, !3780, !3806, !3807, !3808, !3809, !3813, !3816, !3817, !3818, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3885, !3889, !3907, !3924, !3925, !3926, !3927, !3936, !3959, !3960, !3963, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3977, !3978, !4064, !4072, !4073, !4074, !4076, !4080, !4081, !4085, !4086, !4087, !4088, !4090, !4091, !4092, !4099, !4100, !4101, !4103}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !158, file: !6, line: 403, baseType: !5, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !158, file: !6, line: 406, baseType: !162, size: 128, offset: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !163, line: 190, size: 128, elements: !164)
!163 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!164 = !{!165, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !162, file: !163, line: 191, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !162, file: !163, line: 191, baseType: !166, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !6, line: 409, baseType: !169, size: 448, offset: 192)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 448, elements: !171)
!170 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!171 = !{!172}
!172 = !DISubrange(count: 56)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !158, file: !6, line: 417, baseType: !174, size: 768, offset: 640)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !175)
!175 = !{!176, !3774, !3775, !3776, !3779}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !174, file: !6, line: 46, baseType: !177, size: 512)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !178, line: 64, size: 512, elements: !179)
!178 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!179 = !{!180, !183, !184, !186, !275, !3661, !3764, !3769, !3770, !3771, !3772, !3773}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !178, line: 65, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !177, file: !178, line: 66, baseType: !162, size: 128, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !177, file: !178, line: 67, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !177, file: !178, line: 68, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !178, line: 168, size: 768, elements: !189)
!189 = !{!190, !191, !234, !235}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !188, file: !178, line: 169, baseType: !162, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !188, file: !178, line: 170, baseType: !192, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !193, line: 29, baseType: !194)
!193 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !193, line: 17, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 18, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 18, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !197, file: !193, line: 19, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !201, line: 14, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !200, file: !201, line: 15, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !205, line: 44, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !205, line: 14, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 15, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 15, size: 32, elements: !210)
!210 = !{!211, !216, !226}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !209, file: !205, line: 16, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !163, line: 174, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 172, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !213, file: !163, line: 173, baseType: !109, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 24, baseType: !217, size: 16)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 24, size: 16, elements: !218)
!218 = !{!219, !225}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !217, file: !205, line: 25, baseType: !220, size: 8)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !221, line: 17, baseType: !222)
!221 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !223, line: 21, baseType: !224)
!223 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!224 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !217, file: !205, line: 26, baseType: !220, size: 8, offset: 8)
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 28, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 28, size: 32, elements: !228)
!228 = !{!229, !233}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !227, file: !205, line: 29, baseType: !230, size: 16)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !221, line: 19, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !223, line: 24, baseType: !232)
!232 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !227, file: !205, line: 30, baseType: !230, size: 16, offset: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !178, line: 171, baseType: !177, size: 512, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !188, file: !178, line: 172, baseType: !236, size: 64, offset: 704)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !178, line: 133, size: 192, elements: !239)
!239 = !{!240, !247, !252}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !238, file: !178, line: 134, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!109, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !178, line: 135, baseType: !248, size: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!181, !245}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !238, file: !178, line: 136, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!109, !245, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !178, line: 125, size: 20736, elements: !259)
!259 = !{!260, !265, !269, !270, !274}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !258, file: !178, line: 126, baseType: !261, size: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 192, elements: !263)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!263 = !{!264}
!264 = !DISubrange(count: 3)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !258, file: !178, line: 127, baseType: !266, size: 4096, offset: 192)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 4096, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !258, file: !178, line: 128, baseType: !109, size: 32, offset: 4288)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !258, file: !178, line: 129, baseType: !271, size: 16384, offset: 4320)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 16384, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 2048)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !258, file: !178, line: 130, baseType: !109, size: 32, offset: 20704)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !177, file: !178, line: 69, baseType: !276, size: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !178, line: 116, size: 384, elements: !279)
!279 = !{!280, !284, !313, !3623, !3651, !3655}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !278, file: !178, line: 117, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !185}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !278, file: !178, line: 118, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !288, line: 254, size: 128, elements: !289)
!288 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!289 = !{!290, !305}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !287, file: !288, line: 255, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !185, !299, !262}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !163, line: 66, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !296, line: 73, baseType: !297)
!296 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !296, line: 15, baseType: !298)
!298 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !288, line: 30, size: 128, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !288, line: 31, baseType: !181, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !300, file: !288, line: 32, baseType: !304, size: 16, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !163, line: 24, baseType: !232)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !287, file: !288, line: 256, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!294, !185, !299, !181, !309}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !163, line: 61, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !296, line: 72, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !296, line: 16, baseType: !312)
!312 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !278, file: !178, line: 119, baseType: !314, size: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !288, line: 84, size: 320, elements: !318)
!318 = !{!319, !320, !324, !3619, !3621}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !288, line: 85, baseType: !181, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !317, file: !288, line: 86, baseType: !321, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!304, !185, !299, !109}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !317, file: !288, line: 88, baseType: !325, size: 64, offset: 128)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!304, !185, !328, !109}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !288, line: 175, size: 512, elements: !330)
!330 = !{!331, !332, !333, !335, !3610, !3614, !3615}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !329, file: !288, line: 176, baseType: !300, size: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !329, file: !288, line: 177, baseType: !309, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !329, file: !288, line: 178, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !329, file: !288, line: 179, baseType: !336, size: 64, offset: 256)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !341)
!341 = !{!342, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3604, !3605, !3606, !3607, !3608, !3609}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !340, file: !14, line: 473, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !345)
!345 = !{!346, !347, !348, !356, !357, !364, !365, !368, !369, !3383, !3384, !3385, !3386, !3387, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3427, !3430, !3431, !3432, !3441, !3442, !3443, !3444}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !344, file: !14, line: 642, baseType: !304, size: 16)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !344, file: !14, line: 643, baseType: !232, size: 16, offset: 16)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !344, file: !14, line: 644, baseType: !349, size: 32, offset: 32)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !350, line: 23, baseType: !351)
!350 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 21, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !351, file: !350, line: 22, baseType: !354, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !163, line: 37, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !296, line: 49, baseType: !7)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !344, file: !14, line: 645, baseType: !162, size: 128, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !344, file: !14, line: 646, baseType: !358, size: 32, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !350, line: 28, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !350, line: 26, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !359, file: !350, line: 27, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !163, line: 38, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !296, line: 50, baseType: !7)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !344, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !344, file: !14, line: 650, baseType: !366, size: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !344, file: !14, line: 651, baseType: !366, size: 64, offset: 320)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !344, file: !14, line: 654, baseType: !370, size: 64, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !373)
!373 = !{!374, !3208, !3221, !3225, !3229, !3233, !3237, !3241, !3245, !3249, !3253, !3254, !3258, !3262, !3299, !3328, !3332, !3338, !3342, !3346, !3350, !3354, !3358, !3364, !3368}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !372, file: !14, line: 1967, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !343, !378, !7}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !380, line: 82, size: 1536, elements: !381)
!380 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!381 = !{!382, !383, !393, !401, !402, !422, !423, !427, !440, !3191, !3192, !3193, !3194, !3200, !3201, !3202}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !379, file: !380, line: 84, baseType: !7, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !379, file: !380, line: 85, baseType: !384, size: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !385, line: 275, baseType: !386)
!385 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !385, line: 275, size: 32, elements: !387)
!387 = !{!388}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !386, file: !385, line: 275, baseType: !389, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !385, line: 69, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !385, line: 64, size: 32, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !390, file: !385, line: 65, baseType: !7, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !379, file: !380, line: 86, baseType: !394, size: 128, offset: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !395, line: 38, size: 128, elements: !396)
!395 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !395, line: 39, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !394, file: !395, line: 39, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !379, file: !380, line: 87, baseType: !378, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !379, file: !380, line: 88, baseType: !403, size: 128, offset: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !380, line: 49, size: 128, elements: !404)
!404 = !{!405, !419}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !380, line: 50, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !403, file: !380, line: 50, size: 64, elements: !407)
!407 = !{!408, !415}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !380, line: 51, baseType: !409, size: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !380, line: 51, size: 64, elements: !410)
!410 = !{!411, !414}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !409, file: !380, line: 52, baseType: !412, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !221, line: 21, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !223, line: 27, baseType: !7)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !409, file: !380, line: 52, baseType: !412, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !406, file: !380, line: 54, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !221, line: 23, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !223, line: 31, baseType: !418)
!418 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !403, file: !380, line: 56, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !379, file: !380, line: 89, baseType: !343, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !379, file: !380, line: 91, baseType: !424, size: 256, offset: 448)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !379, file: !380, line: 94, baseType: !428, size: 64, offset: 704)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !429, line: 25, size: 64, elements: !430)
!429 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!430 = !{!431}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 26, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 26, size: 64, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !432, file: !429, line: 28, baseType: !417, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !429, line: 30, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !432, file: !429, line: 30, size: 64, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !436, file: !429, line: 31, baseType: !192, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !436, file: !429, line: 32, baseType: !109, size: 32, offset: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !379, file: !380, line: 95, baseType: !441, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !380, line: 128, size: 1024, align: 512, elements: !444)
!444 = !{!445, !449, !450, !457, !463, !467, !471, !475, !476, !480, !484, !3181, !3185}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !443, file: !380, line: 129, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!109, !378, !7}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !443, file: !380, line: 130, baseType: !446, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !443, file: !380, line: 131, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!109, !454, !456}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !443, file: !380, line: 132, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!109, !454, !7, !181, !461}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !403)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !443, file: !380, line: 134, baseType: !464, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!109, !454}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !443, file: !380, line: 135, baseType: !468, size: 64, offset: 320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!109, !378}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !443, file: !380, line: 136, baseType: !472, size: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !378}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !443, file: !380, line: 137, baseType: !472, size: 64, offset: 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !443, file: !380, line: 138, baseType: !477, size: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !378, !343}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !443, file: !380, line: 139, baseType: !481, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!262, !378, !262, !109}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !443, file: !380, line: 140, baseType: !485, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !3180}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !490, line: 70, size: 256, elements: !491)
!490 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!491 = !{!492, !493, !3176, !3177}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !489, file: !490, line: 71, baseType: !378, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !489, file: !490, line: 72, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !496)
!496 = !{!497, !498, !501, !502, !503, !507, !556, !717, !757, !847, !851, !852, !853, !854, !855, !864, !865, !866, !867, !872, !876, !877, !880, !883, !886, !889, !890, !891, !932, !3107, !3108, !3109, !3110, !3111, !3112, !3115, !3117, !3124, !3125, !3126, !3127, !3128, !3143, !3144, !3145, !3146, !3147, !3150, !3151, !3152, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !495, file: !14, line: 1191, baseType: !162, size: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !495, file: !14, line: 1192, baseType: !499, size: 32, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !163, line: 21, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !163, line: 18, baseType: !412)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !495, file: !14, line: 1193, baseType: !224, size: 8, offset: 160)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !495, file: !14, line: 1194, baseType: !312, size: 64, offset: 192)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !495, file: !14, line: 1195, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !163, line: 52, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !296, line: 88, baseType: !506)
!506 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !495, file: !14, line: 1196, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !510)
!510 = !{!511, !512, !513, !520, !524, !528, !532, !533, !534, !544, !548, !549, !550, !552, !553, !554, !555}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !509, file: !14, line: 2367, baseType: !181, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !509, file: !14, line: 2368, baseType: !109, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !509, file: !14, line: 2376, baseType: !514, size: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!109, !517}
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !519, line: 32, flags: DIFlagFwdDecl)
!519 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !509, file: !14, line: 2377, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !523)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !509, file: !14, line: 2378, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!378, !508, !109, !181, !334}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !509, file: !14, line: 2380, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !494}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !509, file: !14, line: 2381, baseType: !157, size: 64, offset: 384)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !509, file: !14, line: 2382, baseType: !508, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !509, file: !14, line: 2383, baseType: !535, size: 64, offset: 512)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !163, line: 194, size: 64, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !535, file: !163, line: 195, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !163, line: 198, size: 128, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !539, file: !163, line: 199, baseType: !538, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !539, file: !163, line: 199, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !509, file: !14, line: 2385, baseType: !545, offset: 576)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !546, line: 206, elements: !547)
!546 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!547 = !{}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !509, file: !14, line: 2386, baseType: !545, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !509, file: !14, line: 2387, baseType: !545, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !509, file: !14, line: 2388, baseType: !551, offset: 576)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !545, elements: !263)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !509, file: !14, line: 2390, baseType: !545, offset: 576)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !509, file: !14, line: 2391, baseType: !545, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !509, file: !14, line: 2392, baseType: !545, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !509, file: !14, line: 2393, baseType: !545, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !495, file: !14, line: 1197, baseType: !557, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !559)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !560)
!560 = !{!561, !565, !569, !570, !574, !580, !584, !585, !586, !590, !594, !598, !599, !600, !606, !611, !612, !619, !620, !621, !622, !626, !630, !699, !715, !716}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !559, file: !14, line: 2058, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!343, !494}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !559, file: !14, line: 2059, baseType: !566, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !343}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !559, file: !14, line: 2060, baseType: !566, size: 64, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !559, file: !14, line: 2062, baseType: !571, size: 64, offset: 192)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !343, !109}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !559, file: !14, line: 2063, baseType: !575, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!109, !343, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !559, file: !14, line: 2064, baseType: !581, size: 64, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!109, !343}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !559, file: !14, line: 2065, baseType: !566, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !559, file: !14, line: 2066, baseType: !529, size: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !559, file: !14, line: 2067, baseType: !587, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!109, !494, !109}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !559, file: !14, line: 2068, baseType: !591, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!109, !494, !13}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !559, file: !14, line: 2069, baseType: !595, size: 64, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!109, !494}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !559, file: !14, line: 2070, baseType: !591, size: 64, offset: 704)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !559, file: !14, line: 2071, baseType: !595, size: 64, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !559, file: !14, line: 2072, baseType: !601, size: 64, offset: 832)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!109, !378, !604}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !559, file: !14, line: 2073, baseType: !607, size: 64, offset: 896)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!109, !494, !610, !262}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !559, file: !14, line: 2074, baseType: !529, size: 64, offset: 960)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !559, file: !14, line: 2076, baseType: !613, size: 64, offset: 1024)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!109, !616, !378}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !618, line: 66, flags: DIFlagFwdDecl)
!618 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!619 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !559, file: !14, line: 2077, baseType: !613, size: 64, offset: 1088)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !559, file: !14, line: 2078, baseType: !613, size: 64, offset: 1152)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !559, file: !14, line: 2079, baseType: !613, size: 64, offset: 1216)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !559, file: !14, line: 2081, baseType: !623, size: 64, offset: 1280)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!294, !494, !109, !262, !309, !504}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !559, file: !14, line: 2082, baseType: !627, size: 64, offset: 1344)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!294, !494, !109, !181, !309, !504}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !559, file: !14, line: 2083, baseType: !631, size: 64, offset: 1408)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!634, !343}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !637)
!637 = !{!638, !639, !640, !641, !642, !663, !664, !665, !666, !682, !683, !684}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !636, file: !19, line: 297, baseType: !539, size: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !636, file: !19, line: 298, baseType: !162, size: 128, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !636, file: !19, line: 299, baseType: !162, size: 128, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !636, file: !19, line: 300, baseType: !162, size: 128, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !636, file: !19, line: 301, baseType: !643, size: 256, offset: 512)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !644, line: 66, size: 256, elements: !645)
!644 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!645 = !{!646, !655, !657, !662}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !643, file: !644, line: 67, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !648, line: 13, baseType: !649)
!648 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !163, line: 181, baseType: !650)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !163, line: 179, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !650, file: !163, line: 180, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !221, line: 22, baseType: !654)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !223, line: 30, baseType: !506)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !643, file: !644, line: 68, baseType: !656, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !201, line: 23, baseType: !200)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !643, file: !644, line: 70, baseType: !658, size: 32, offset: 96)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !659, line: 15, size: 32, elements: !660)
!659 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!660 = !{!661}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !658, file: !659, line: 20, baseType: !212, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !643, file: !644, line: 72, baseType: !162, size: 128, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !636, file: !19, line: 302, baseType: !192, size: 32, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !636, file: !19, line: 303, baseType: !212, size: 32, offset: 800)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !636, file: !19, line: 304, baseType: !494, size: 64, offset: 832)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !636, file: !19, line: 305, baseType: !667, size: 64, offset: 896)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !668)
!668 = !{!669, !681}
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !19, line: 69, baseType: !670, size: 32)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !19, line: 69, size: 32, elements: !671)
!671 = !{!672, !673, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !670, file: !19, line: 70, baseType: !349, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !670, file: !19, line: 71, baseType: !358, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !670, file: !19, line: 72, baseType: !675, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !676, line: 24, baseType: !677)
!676 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 22, size: 32, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !677, file: !676, line: 23, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !676, line: 20, baseType: !355)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !667, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !636, file: !19, line: 306, baseType: !504, size: 64, offset: 960)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !636, file: !19, line: 307, baseType: !312, size: 64, offset: 1024)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !636, file: !19, line: 308, baseType: !685, size: 576, offset: 1088)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !686)
!686 = !{!687, !689, !690, !691, !692, !693, !694, !695, !698}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !685, file: !19, line: 206, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !506)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !685, file: !19, line: 207, baseType: !688, size: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !685, file: !19, line: 208, baseType: !688, size: 64, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !685, file: !19, line: 209, baseType: !688, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !685, file: !19, line: 210, baseType: !688, size: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !685, file: !19, line: 211, baseType: !688, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !685, file: !19, line: 212, baseType: !688, size: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !685, file: !19, line: 213, baseType: !696, size: 64, offset: 448)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !697, line: 8, baseType: !654)
!697 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !685, file: !19, line: 214, baseType: !696, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !559, file: !14, line: 2085, baseType: !700, size: 64, offset: 1472)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!298, !494, !703}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !705, line: 15, size: 256, elements: !706)
!705 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!706 = !{!707, !709, !710, !711, !712}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !704, file: !705, line: 16, baseType: !708, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !163, line: 154, baseType: !7)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !704, file: !705, line: 19, baseType: !109, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !704, file: !705, line: 26, baseType: !312, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !704, file: !705, line: 33, baseType: !312, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !704, file: !705, line: 36, baseType: !713, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !38, line: 33, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !559, file: !14, line: 2087, baseType: !700, size: 64, offset: 1536)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !559, file: !14, line: 2089, baseType: !529, size: 64, offset: 1600)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !495, file: !14, line: 1198, baseType: !718, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !721)
!721 = !{!722, !726, !730, !734, !735, !736, !737, !738, !743, !748, !752}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !720, file: !19, line: 325, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!109, !635}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !720, file: !19, line: 326, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!635, !494, !109}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !720, file: !19, line: 327, baseType: !731, size: 64, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !635}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !720, file: !19, line: 328, baseType: !723, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !720, file: !19, line: 329, baseType: !723, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !720, file: !19, line: 330, baseType: !723, size: 64, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !720, file: !19, line: 331, baseType: !587, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !720, file: !19, line: 334, baseType: !739, size: 64, offset: 448)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!742, !343}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !720, file: !19, line: 335, baseType: !744, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!109, !343, !747}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !720, file: !19, line: 337, baseType: !749, size: 64, offset: 576)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!109, !343, !742}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !720, file: !19, line: 339, baseType: !753, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!109, !494, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !495, file: !14, line: 1199, baseType: !758, size: 64, offset: 512)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !761)
!761 = !{!762, !773, !774, !778, !779, !780, !795, !818, !822, !823, !846}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !760, file: !19, line: 431, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!109, !494, !109, !109, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !769, line: 8, size: 128, elements: !770)
!769 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!770 = !{!771, !772}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !768, file: !769, line: 9, baseType: !488, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !768, file: !769, line: 10, baseType: !378, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !760, file: !19, line: 432, baseType: !587, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !760, file: !19, line: 433, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!109, !494, !7}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !760, file: !19, line: 434, baseType: !775, size: 64, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !760, file: !19, line: 435, baseType: !587, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !760, file: !19, line: 436, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!109, !494, !109, !784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !785, file: !19, line: 418, baseType: !109, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !785, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !785, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !785, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !785, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !785, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !785, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !785, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !760, file: !19, line: 437, baseType: !796, size: 64, offset: 384)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!109, !494, !667, !799}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !800, file: !19, line: 346, baseType: !109, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !800, file: !19, line: 347, baseType: !416, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !800, file: !19, line: 348, baseType: !416, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !800, file: !19, line: 349, baseType: !416, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !800, file: !19, line: 350, baseType: !416, size: 64, offset: 256)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !800, file: !19, line: 351, baseType: !416, size: 64, offset: 320)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !800, file: !19, line: 352, baseType: !416, size: 64, offset: 384)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !800, file: !19, line: 353, baseType: !653, size: 64, offset: 448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !800, file: !19, line: 355, baseType: !653, size: 64, offset: 512)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !800, file: !19, line: 356, baseType: !109, size: 32, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !800, file: !19, line: 357, baseType: !109, size: 32, offset: 608)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !800, file: !19, line: 358, baseType: !416, size: 64, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !800, file: !19, line: 359, baseType: !416, size: 64, offset: 704)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !800, file: !19, line: 360, baseType: !416, size: 64, offset: 768)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !800, file: !19, line: 361, baseType: !653, size: 64, offset: 832)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !800, file: !19, line: 362, baseType: !109, size: 32, offset: 896)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !760, file: !19, line: 438, baseType: !819, size: 64, offset: 448)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!109, !494, !756, !799}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !760, file: !19, line: 440, baseType: !796, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !760, file: !19, line: 441, baseType: !824, size: 64, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!109, !494, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !829)
!829 = !{!830, !831}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !828, file: !19, line: 412, baseType: !7, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !828, file: !19, line: 413, baseType: !832, size: 1344, offset: 64)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !833, size: 1344, elements: !263)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !845}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !19, line: 398, baseType: !7, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !833, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !833, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !833, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !833, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !833, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !833, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !833, file: !19, line: 406, baseType: !418, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !833, file: !19, line: 407, baseType: !844, size: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !163, line: 132, baseType: !416)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !833, file: !19, line: 408, baseType: !844, size: 64, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !760, file: !19, line: 442, baseType: !775, size: 64, offset: 640)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !495, file: !14, line: 1200, baseType: !848, size: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !495, file: !14, line: 1201, baseType: !312, size: 64, offset: 640)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !495, file: !14, line: 1202, baseType: !312, size: 64, offset: 704)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !495, file: !14, line: 1203, baseType: !312, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !495, file: !14, line: 1204, baseType: !378, size: 64, offset: 832)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !495, file: !14, line: 1205, baseType: !856, size: 320, offset: 896)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !857, line: 48, size: 320, elements: !858)
!857 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!858 = !{!859, !860, !861, !862, !863}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !856, file: !857, line: 49, baseType: !647, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !856, file: !857, line: 55, baseType: !647, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !856, file: !857, line: 57, baseType: !658, size: 32, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !856, file: !857, line: 59, baseType: !656, size: 32, offset: 160)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !856, file: !857, line: 60, baseType: !162, size: 128, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !495, file: !14, line: 1206, baseType: !109, size: 32, offset: 1216)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !495, file: !14, line: 1207, baseType: !212, size: 32, offset: 1248)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !495, file: !14, line: 1209, baseType: !334, size: 64, offset: 1280)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !495, file: !14, line: 1211, baseType: !868, size: 64, offset: 1344)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !871)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !495, file: !14, line: 1223, baseType: !873, size: 64, offset: 1408)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !395, line: 34, size: 64, elements: !874)
!874 = !{!875}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !873, file: !395, line: 35, baseType: !398, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !495, file: !14, line: 1224, baseType: !162, size: 128, offset: 1472)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !495, file: !14, line: 1225, baseType: !878, size: 64, offset: 1600)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !495, file: !14, line: 1226, baseType: !881, size: 64, offset: 1664)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !495, file: !14, line: 1227, baseType: !884, size: 64, offset: 1728)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !495, file: !14, line: 1228, baseType: !887, size: 64, offset: 1792)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !495, file: !14, line: 1229, baseType: !539, size: 128, offset: 1856)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !495, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !495, file: !14, line: 1231, baseType: !892, size: 2496, offset: 2048)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !893)
!893 = !{!894, !895, !896, !898, !930}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !892, file: !19, line: 522, baseType: !7, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !892, file: !19, line: 523, baseType: !856, size: 320, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !892, file: !19, line: 524, baseType: !897, size: 192, offset: 384)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 192, elements: !263)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !892, file: !19, line: 525, baseType: !899, size: 1728, offset: 576)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 1728, elements: !263)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !901)
!901 = !{!902, !922, !923, !924, !925, !926, !927, !928, !929}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !900, file: !19, line: 223, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !905)
!905 = !{!906, !907, !920, !921}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !904, file: !19, line: 446, baseType: !109, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !904, file: !19, line: 447, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !911)
!911 = !{!912, !913, !914, !915, !916, !917, !918, !919}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !910, file: !19, line: 313, baseType: !587, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !910, file: !19, line: 314, baseType: !587, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !910, file: !19, line: 315, baseType: !587, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !910, file: !19, line: 316, baseType: !587, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !910, file: !19, line: 317, baseType: !723, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !910, file: !19, line: 318, baseType: !723, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !910, file: !19, line: 319, baseType: !723, size: 64, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !910, file: !19, line: 320, baseType: !753, size: 64, offset: 448)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !904, file: !19, line: 448, baseType: !157, size: 64, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !904, file: !19, line: 449, baseType: !903, size: 64, offset: 192)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !900, file: !19, line: 224, baseType: !109, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !900, file: !19, line: 226, baseType: !162, size: 128, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !900, file: !19, line: 227, baseType: !312, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !900, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !900, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !900, file: !19, line: 230, baseType: !688, size: 64, offset: 384)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !900, file: !19, line: 231, baseType: !688, size: 64, offset: 448)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !900, file: !19, line: 232, baseType: !334, size: 64, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !892, file: !19, line: 526, baseType: !931, size: 192, offset: 2304)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 192, elements: !263)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !495, file: !14, line: 1233, baseType: !933, size: 2368, offset: 4544)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !933, file: !14, line: 1185, baseType: !232, size: 16)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !933, file: !14, line: 1186, baseType: !232, size: 16, offset: 16)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !933, file: !14, line: 1187, baseType: !938, size: 2304, offset: 64)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 2304, elements: !263)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !940, line: 12, size: 768, elements: !941)
!940 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!941 = !{!942, !964, !966, !3105, !3106}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !939, file: !940, line: 13, baseType: !943, size: 384)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !944, line: 17, size: 384, elements: !945)
!944 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!945 = !{!946, !947, !948, !955}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !943, file: !944, line: 18, baseType: !109, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !943, file: !944, line: 19, baseType: !109, size: 32, offset: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !943, file: !944, line: 20, baseType: !949, size: 192, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !950, line: 41, baseType: !951)
!950 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !950, line: 37, size: 192, elements: !952)
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !951, file: !950, line: 38, baseType: !192, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !951, file: !950, line: 39, baseType: !162, size: 128, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !943, file: !944, line: 22, baseType: !956, size: 128, align: 64, offset: 256)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !163, line: 232, size: 128, align: 64, elements: !957)
!957 = !{!958, !960}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !956, file: !163, line: 233, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !956, file: !163, line: 234, baseType: !961, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !959}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !939, file: !940, line: 14, baseType: !965, size: 64, offset: 384)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !939, file: !940, line: 15, baseType: !967, size: 64, offset: 448)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !968, line: 16, size: 64, elements: !969)
!968 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!969 = !{!970}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !967, file: !968, line: 17, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !618, line: 746, size: 58368, elements: !973)
!973 = !{!974, !982, !983, !984, !990, !991, !992, !993, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1071, !1082, !1177, !1181, !1184, !1215, !1216, !1217, !1218, !1229, !1231, !1232, !1233, !1234, !1235, !1236, !1247, !1248, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1265, !1266, !1273, !1274, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2263, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2278, !2279, !2280, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2312, !2318, !2319, !2320, !2321, !2322, !2326, !2329, !2336, !2341, !2344, !2347, !2350, !2354, !2494, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2534, !2535, !2536, !2545, !2553, !2554, !2555, !2556, !2557, !2562, !2563, !2564, !2567, !2568, !2571, !2574, !2577, !2585, !2588, !2589, !2675, !2676, !2677, !2678, !2679, !2685, !2686, !2687, !2688, !2691, !2692, !2695, !2698, !2699, !2702, !2703, !2704, !2707, !2708, !2709, !2710, !2711, !2712, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2744, !2745, !2751, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2763, !2835, !2837, !2838, !2839, !2840, !2841, !2853, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2882, !2883, !2884}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !972, file: !618, line: 752, baseType: !975, size: 192)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !976, line: 56, size: 192, elements: !977)
!976 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!977 = !{!978, !979, !980, !981}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !976, line: 57, baseType: !312, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !975, file: !976, line: 58, baseType: !312, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !975, file: !976, line: 59, baseType: !412, size: 32, offset: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !975, file: !976, line: 61, baseType: !412, size: 32, offset: 160)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !972, file: !618, line: 754, baseType: !7, size: 32, offset: 192)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !972, file: !618, line: 767, baseType: !334, size: 64, offset: 256)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !972, file: !618, line: 768, baseType: !985, size: 32, offset: 320)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !986, line: 113, baseType: !987)
!986 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !986, line: 111, size: 32, elements: !988)
!988 = !{!989}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !987, file: !986, line: 112, baseType: !212, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !618, line: 770, baseType: !7, size: 32, offset: 352)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !972, file: !618, line: 771, baseType: !7, size: 32, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !972, file: !618, line: 774, baseType: !109, size: 32, offset: 416)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !972, file: !618, line: 775, baseType: !994, size: 128, offset: 448)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !995, line: 58, size: 128, elements: !996)
!995 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!996 = !{!997, !1003, !1008, !1009}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !994, file: !995, line: 59, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !999, line: 60, size: 64, elements: !1000)
!999 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1000 = !{!1001}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !998, file: !999, line: 61, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, scope: !994, file: !995, line: 60, baseType: !1004, size: 32, offset: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !995, line: 60, size: 32, elements: !1005)
!1005 = !{!1006, !1007}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1004, file: !995, line: 61, baseType: !7, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1004, file: !995, line: 62, baseType: !212, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !994, file: !995, line: 65, baseType: !230, size: 16, offset: 96)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !994, file: !995, line: 65, baseType: !230, size: 16, offset: 112)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !972, file: !618, line: 776, baseType: !7, size: 32, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !972, file: !618, line: 777, baseType: !312, size: 64, offset: 640)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !972, file: !618, line: 778, baseType: !971, size: 64, offset: 704)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !972, file: !618, line: 787, baseType: !109, size: 32, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !972, file: !618, line: 788, baseType: !109, size: 32, offset: 800)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !972, file: !618, line: 790, baseType: !109, size: 32, offset: 832)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !972, file: !618, line: 792, baseType: !109, size: 32, offset: 864)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !972, file: !618, line: 793, baseType: !109, size: 32, offset: 896)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !972, file: !618, line: 794, baseType: !109, size: 32, offset: 928)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !972, file: !618, line: 795, baseType: !7, size: 32, offset: 960)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !972, file: !618, line: 797, baseType: !1021, size: 2048, offset: 1024)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !618, line: 551, size: 2048, elements: !1022)
!1022 = !{!1023, !1028, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1050, !1053, !1054, !1055}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1021, file: !618, line: 553, baseType: !1024, size: 128)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !618, line: 411, size: 128, elements: !1025)
!1025 = !{!1026, !1027}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1024, file: !618, line: 412, baseType: !312, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1024, file: !618, line: 413, baseType: !412, size: 32, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1021, file: !618, line: 554, baseType: !1029, size: 192, align: 64, offset: 128)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1030, line: 5, size: 192, align: 64, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1031 = !{!1032, !1033, !1035}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1029, file: !1030, line: 6, baseType: !312, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1029, file: !1030, line: 7, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1029, file: !1030, line: 8, baseType: !1034, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1021, file: !618, line: 555, baseType: !416, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1021, file: !618, line: 556, baseType: !416, size: 64, offset: 384)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1021, file: !618, line: 558, baseType: !162, size: 128, offset: 448)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1021, file: !618, line: 559, baseType: !7, size: 32, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1021, file: !618, line: 561, baseType: !416, size: 64, offset: 640)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1021, file: !618, line: 562, baseType: !416, size: 64, offset: 704)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1021, file: !618, line: 563, baseType: !416, size: 64, offset: 768)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1021, file: !618, line: 564, baseType: !416, size: 64, offset: 832)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1021, file: !618, line: 565, baseType: !653, size: 64, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1021, file: !618, line: 566, baseType: !416, size: 64, offset: 960)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1021, file: !618, line: 568, baseType: !416, size: 64, offset: 1024)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1021, file: !618, line: 571, baseType: !109, size: 32, offset: 1088)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1021, file: !618, line: 572, baseType: !1049, size: 64, offset: 1152)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1021, file: !618, line: 574, baseType: !1051, size: 64, offset: 1216)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !618, line: 49, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1021, file: !618, line: 576, baseType: !1051, size: 64, offset: 1280)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1021, file: !618, line: 578, baseType: !312, size: 64, offset: 1344)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1021, file: !618, line: 588, baseType: !1056, size: 512, align: 512, offset: 1536)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !618, line: 497, size: 512, align: 512, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1056, file: !618, line: 498, baseType: !416, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1056, file: !618, line: 499, baseType: !416, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1056, file: !618, line: 500, baseType: !416, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1056, file: !618, line: 501, baseType: !412, size: 32, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1056, file: !618, line: 502, baseType: !412, size: 32, offset: 224)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1056, file: !618, line: 503, baseType: !312, size: 64, offset: 256)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1056, file: !618, line: 504, baseType: !312, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1056, file: !618, line: 505, baseType: !312, size: 64, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1056, file: !618, line: 506, baseType: !1067, size: 64, align: 64, offset: 448)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !618, line: 445, size: 64, align: 64, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1067, file: !618, line: 446, baseType: !7, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1067, file: !618, line: 447, baseType: !7, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !972, file: !618, line: 798, baseType: !1072, size: 384, offset: 3072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !618, line: 592, size: 384, elements: !1073)
!1073 = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1072, file: !618, line: 593, baseType: !162, size: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1072, file: !618, line: 594, baseType: !312, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1072, file: !618, line: 595, baseType: !312, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1072, file: !618, line: 596, baseType: !7, size: 32, offset: 256)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1072, file: !618, line: 597, baseType: !232, size: 16, offset: 288)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1072, file: !618, line: 598, baseType: !232, size: 16, offset: 304)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1072, file: !618, line: 600, baseType: !1081, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !972, file: !618, line: 799, baseType: !1083, size: 1792, offset: 3456)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !618, line: 610, size: 1792, elements: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1174, !1175}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1083, file: !618, line: 611, baseType: !1029, size: 192, align: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1083, file: !618, line: 618, baseType: !416, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1083, file: !618, line: 619, baseType: !416, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1083, file: !618, line: 620, baseType: !416, size: 64, offset: 320)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1083, file: !618, line: 621, baseType: !416, size: 64, offset: 384)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1083, file: !618, line: 622, baseType: !416, size: 64, offset: 448)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1083, file: !618, line: 629, baseType: !653, size: 64, offset: 512)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1083, file: !618, line: 630, baseType: !416, size: 64, offset: 576)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1083, file: !618, line: 631, baseType: !7, size: 32, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1083, file: !618, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1083, file: !618, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1083, file: !618, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1083, file: !618, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1083, file: !618, line: 662, baseType: !1099, size: 512, offset: 704)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1100)
!1100 = !{!1101, !1109, !1110, !1115, !1170, !1171, !1172, !1173}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1099, file: !25, line: 119, baseType: !1102, size: 256)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1103, line: 9, size: 256, elements: !1104)
!1103 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1102, file: !1103, line: 10, baseType: !1029, size: 192, align: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1102, file: !1103, line: 11, baseType: !1107, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1108, line: 29, baseType: !653)
!1108 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1099, file: !25, line: 120, baseType: !1107, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1099, file: !25, line: 121, baseType: !1111, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!24, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1099, file: !25, line: 122, baseType: !1116, size: 64, offset: 384)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1118)
!1118 = !{!1119, !1144, !1145, !1148, !1153, !1154, !1165, !1169}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1117, file: !25, line: 160, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1122)
!1122 = !{!1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1121, file: !25, line: 216, baseType: !656, size: 32)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1121, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1121, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1121, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1121, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1121, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1121, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1121, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1121, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1121, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1121, file: !25, line: 227, baseType: !232, size: 16, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1121, file: !25, line: 228, baseType: !232, size: 16, offset: 208)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1121, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1121, file: !25, line: 235, baseType: !1107, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1121, file: !25, line: 236, baseType: !1114, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1121, file: !25, line: 237, baseType: !1107, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1121, file: !25, line: 238, baseType: !1114, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1121, file: !25, line: 239, baseType: !1141, size: 4096, align: 512, offset: 512)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1117, size: 4096, align: 512, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 8)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1117, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1117, file: !25, line: 162, baseType: !1146, size: 32, offset: 96)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !163, line: 32, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !296, line: 96, baseType: !109)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1117, file: !25, line: 163, baseType: !1149, size: 32, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !385, line: 274, baseType: !1150)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !385, line: 274, size: 32, elements: !1151)
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1150, file: !385, line: 274, baseType: !389, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1117, file: !25, line: 164, baseType: !1114, size: 64, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1117, file: !25, line: 165, baseType: !1155, size: 128, offset: 256)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1103, line: 14, size: 128, elements: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1155, file: !1103, line: 15, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1030, line: 26, size: 128, elements: !1159)
!1159 = !{!1160, !1164}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1158, file: !1030, line: 27, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1030, line: 12, size: 64, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1161, file: !1030, line: 13, baseType: !1034, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1158, file: !1030, line: 28, baseType: !1034, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1117, file: !25, line: 166, baseType: !1166, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!1107}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1117, file: !25, line: 167, baseType: !1107, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1099, file: !25, line: 123, baseType: !220, size: 8, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1099, file: !25, line: 124, baseType: !220, size: 8, offset: 456)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1099, file: !25, line: 125, baseType: !220, size: 8, offset: 464)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1099, file: !25, line: 126, baseType: !220, size: 8, offset: 472)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1083, file: !618, line: 671, baseType: !1099, size: 512, offset: 1216)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1083, file: !618, line: 679, baseType: !1176, size: 64, offset: 1728)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !972, file: !618, line: 800, baseType: !1178, size: 64, offset: 5248)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !618, line: 800, flags: DIFlagFwdDecl)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !972, file: !618, line: 809, baseType: !1182, size: 64, offset: 5312)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !618, line: 70, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !972, file: !618, line: 825, baseType: !1185, size: 2048, align: 512, offset: 5632)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !618, line: 509, size: 2048, align: 512, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1185, file: !618, line: 511, baseType: !416, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1185, file: !618, line: 512, baseType: !416, size: 64, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1185, file: !618, line: 513, baseType: !416, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1185, file: !618, line: 514, baseType: !416, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1185, file: !618, line: 515, baseType: !416, size: 64, offset: 256)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1185, file: !618, line: 516, baseType: !416, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1185, file: !618, line: 518, baseType: !416, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1185, file: !618, line: 519, baseType: !416, size: 64, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1185, file: !618, line: 520, baseType: !653, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1185, file: !618, line: 522, baseType: !416, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1185, file: !618, line: 523, baseType: !416, size: 64, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1185, file: !618, line: 524, baseType: !653, size: 64, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1185, file: !618, line: 526, baseType: !653, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1185, file: !618, line: 527, baseType: !416, size: 64, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1185, file: !618, line: 529, baseType: !416, size: 64, offset: 896)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1185, file: !618, line: 530, baseType: !416, size: 64, offset: 960)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1185, file: !618, line: 531, baseType: !416, size: 64, offset: 1024)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1185, file: !618, line: 532, baseType: !416, size: 64, offset: 1088)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1185, file: !618, line: 533, baseType: !416, size: 64, offset: 1152)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1185, file: !618, line: 535, baseType: !416, size: 64, offset: 1216)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1185, file: !618, line: 536, baseType: !416, size: 64, offset: 1280)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1185, file: !618, line: 537, baseType: !416, size: 64, offset: 1344)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1185, file: !618, line: 538, baseType: !416, size: 64, offset: 1408)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1185, file: !618, line: 539, baseType: !416, size: 64, offset: 1472)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1185, file: !618, line: 540, baseType: !416, size: 64, offset: 1536)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1185, file: !618, line: 541, baseType: !416, size: 64, offset: 1600)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1185, file: !618, line: 542, baseType: !416, size: 64, offset: 1664)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1185, file: !618, line: 543, baseType: !416, size: 64, offset: 1728)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !972, file: !618, line: 833, baseType: !7, size: 32, offset: 7680)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !972, file: !618, line: 836, baseType: !7, size: 32, offset: 7712)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !972, file: !618, line: 837, baseType: !109, size: 32, offset: 7744)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !972, file: !618, line: 838, baseType: !1219, size: 64, offset: 7808)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1222, line: 19, baseType: !1223)
!1222 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1222, line: 19, size: 64, elements: !1224)
!1224 = !{!1225}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1223, file: !1222, line: 19, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 64, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 1)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !972, file: !618, line: 839, baseType: !1230, size: 64, offset: 7872)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !972, file: !618, line: 840, baseType: !1221, size: 64, offset: 7936)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !972, file: !618, line: 841, baseType: !334, size: 64, offset: 8000)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !972, file: !618, line: 843, baseType: !232, size: 16, offset: 8064)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !972, file: !618, line: 845, baseType: !232, size: 16, offset: 8080)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !972, file: !618, line: 848, baseType: !109, size: 32, offset: 8096)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !972, file: !618, line: 849, baseType: !1237, size: 32, offset: 8128)
!1237 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !618, line: 718, size: 32, elements: !1238)
!1238 = !{!1239, !1246}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1237, file: !618, line: 724, baseType: !1240, size: 32)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1237, file: !618, line: 719, size: 32, elements: !1241)
!1241 = !{!1242, !1243, !1244, !1245}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1240, file: !618, line: 720, baseType: !220, size: 8)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1240, file: !618, line: 721, baseType: !220, size: 8, offset: 8)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1240, file: !618, line: 722, baseType: !220, size: 8, offset: 16)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1240, file: !618, line: 723, baseType: !220, size: 8, offset: 24)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1237, file: !618, line: 725, baseType: !412, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !972, file: !618, line: 850, baseType: !162, size: 128, offset: 8192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !972, file: !618, line: 851, baseType: !1249, size: 64, offset: 8320)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !618, line: 60, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !972, file: !618, line: 855, baseType: !312, size: 64, offset: 8384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !972, file: !618, line: 856, baseType: !220, size: 8, offset: 8448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !972, file: !618, line: 857, baseType: !220, size: 8, offset: 8456)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !972, file: !618, line: 858, baseType: !109, size: 32, offset: 8480)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !972, file: !618, line: 859, baseType: !162, size: 128, offset: 8512)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !972, file: !618, line: 860, baseType: !109, size: 32, offset: 8640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !972, file: !618, line: 861, baseType: !162, size: 128, offset: 8704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !972, file: !618, line: 873, baseType: !1259, size: 256, offset: 8832)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !618, line: 376, size: 256, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1259, file: !618, line: 381, baseType: !312, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1259, file: !618, line: 384, baseType: !418, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1259, file: !618, line: 389, baseType: !418, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1259, file: !618, line: 392, baseType: !418, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !972, file: !618, line: 875, baseType: !162, size: 128, offset: 9088)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !972, file: !618, line: 877, baseType: !1267, size: 320, offset: 9216)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1268, line: 86, size: 320, elements: !1269)
!1268 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1269 = !{!1270, !1271, !1272}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1267, file: !1268, line: 87, baseType: !109, size: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1267, file: !1268, line: 88, baseType: !162, size: 128, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1267, file: !1268, line: 89, baseType: !162, size: 128, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !972, file: !618, line: 878, baseType: !1029, size: 192, align: 64, offset: 9536)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !972, file: !618, line: 881, baseType: !1275, size: 64, offset: 9728)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !38, line: 733, size: 10240, elements: !1277)
!1277 = !{!1278, !2182}
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !38, line: 734, baseType: !1279, size: 10240)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1276, file: !38, line: 734, size: 10240, elements: !1280)
!1280 = !{!1281, !1285, !1298, !2046, !2047, !2048, !2049, !2050, !2051, !2058, !2059, !2060, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2099, !2101, !2104, !2151, !2152, !2153, !2156, !2157, !2158, !2161, !2162, !2163, !2169, !2170}
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1279, file: !38, line: 739, baseType: !1282, size: 512, align: 512)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1279, file: !38, line: 739, size: 512, align: 512, elements: !1283)
!1283 = !{!1284}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1282, file: !38, line: 747, baseType: !212, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1279, file: !38, line: 750, baseType: !1286, size: 128, offset: 512)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1287, line: 218, size: 128, elements: !1288)
!1287 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1288 = !{!1289, !1296, !1297}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !1287, line: 219, baseType: !1290, size: 32)
!1290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1286, file: !1287, line: 219, size: 32, elements: !1291)
!1291 = !{!1292, !1293}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1290, file: !1287, line: 220, baseType: !192, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1290, file: !1287, line: 221, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1287, line: 197, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1287, line: 197, elements: !547)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1286, file: !1287, line: 223, baseType: !7, size: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1286, file: !1287, line: 224, baseType: !334, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1279, file: !38, line: 752, baseType: !1299, size: 64, offset: 640)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!312, !1302, !312, !312, !312, !312}
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1304)
!1304 = !{!1305, !1311, !1312, !1314, !1315, !1316, !1317, !1318, !1370, !1565, !1574, !1575, !1576, !2036, !2037, !2038, !2039, !2041, !2042, !2045}
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1303, file: !14, line: 995, baseType: !1306, size: 128)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1303, file: !14, line: 995, size: 128, elements: !1307)
!1307 = !{!1308, !1309, !1310}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1306, file: !14, line: 996, baseType: !998, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1306, file: !14, line: 997, baseType: !956, size: 128, align: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1306, file: !14, line: 998, baseType: !7, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1303, file: !14, line: 1005, baseType: !192, size: 32, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1303, file: !14, line: 1006, baseType: !1313, size: 32, offset: 160)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !163, line: 156, baseType: !7)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1303, file: !14, line: 1007, baseType: !647, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1303, file: !14, line: 1008, baseType: !643, size: 256, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1303, file: !14, line: 1009, baseType: !504, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1303, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1303, file: !14, line: 1011, baseType: !1319, size: 256, offset: 640)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1320)
!1320 = !{!1321, !1342, !1366, !1367, !1368, !1369}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1319, file: !14, line: 949, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1323, line: 34, baseType: !1324)
!1323 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1323, line: 25, size: 64, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1324, file: !1323, line: 26, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1328, line: 27, baseType: !1329)
!1328 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1328, line: 13, size: 64, elements: !1330)
!1330 = !{!1331, !1341}
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1329, file: !1328, line: 14, baseType: !1332, size: 32)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1329, file: !1328, line: 14, size: 32, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1332, file: !1328, line: 15, baseType: !212, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, scope: !1332, file: !1328, line: 16, baseType: !1336, size: 32)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1332, file: !1328, line: 16, size: 32, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1336, file: !1328, line: 18, baseType: !220, size: 8)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1336, file: !1328, line: 19, baseType: !1340, size: 24, offset: 8)
!1340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 24, elements: !263)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1329, file: !1328, line: 26, baseType: !204, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1319, file: !14, line: 950, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1353, !1354, !1355, !1356}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1344, file: !30, line: 61, baseType: !985, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1344, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1344, file: !30, line: 63, baseType: !192, size: 32, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1344, file: !30, line: 65, baseType: !1350, size: 256, offset: 128)
!1350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 256, elements: !1351)
!1351 = !{!1352}
!1352 = !DISubrange(count: 4)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1344, file: !30, line: 66, baseType: !535, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1344, file: !30, line: 68, baseType: !949, size: 192, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1344, file: !30, line: 69, baseType: !956, size: 128, align: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1344, file: !30, line: 70, baseType: !1357, offset: 768)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1358, elements: !1364)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1359)
!1359 = !{!1360, !1361}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1358, file: !30, line: 55, baseType: !109, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1358, file: !30, line: 56, baseType: !1362, size: 64, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1364 = !{!1365}
!1365 = !DISubrange(count: -1)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1319, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1319, file: !14, line: 952, baseType: !349, size: 32, offset: 160)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1319, file: !14, line: 952, baseType: !349, size: 32, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1319, file: !14, line: 953, baseType: !109, size: 32, offset: 224)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1303, file: !14, line: 1012, baseType: !1371, size: 64, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1374, line: 110, size: 1472, elements: !1375)
!1374 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1392, !1393, !1394, !1395, !1396, !1397, !1510, !1511, !1512, !1513, !1514, !1545, !1548, !1552, !1560}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1373, file: !1374, line: 111, baseType: !647, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1373, file: !1374, line: 112, baseType: !349, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1373, file: !1374, line: 113, baseType: !358, size: 32, offset: 96)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1373, file: !1374, line: 114, baseType: !349, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1373, file: !1374, line: 115, baseType: !358, size: 32, offset: 160)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1373, file: !1374, line: 116, baseType: !349, size: 32, offset: 192)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1373, file: !1374, line: 117, baseType: !358, size: 32, offset: 224)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1373, file: !1374, line: 118, baseType: !349, size: 32, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1373, file: !1374, line: 119, baseType: !358, size: 32, offset: 288)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1373, file: !1374, line: 120, baseType: !7, size: 32, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1373, file: !1374, line: 121, baseType: !1387, size: 64, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1388, line: 24, baseType: !1389)
!1388 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1388, line: 24, size: 64, elements: !1390)
!1390 = !{!1391}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1389, file: !1388, line: 24, baseType: !416, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1373, file: !1374, line: 122, baseType: !1387, size: 64, offset: 448)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1373, file: !1374, line: 123, baseType: !1387, size: 64, offset: 512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1373, file: !1374, line: 124, baseType: !1387, size: 64, offset: 576)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1373, file: !1374, line: 125, baseType: !1387, size: 64, offset: 640)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1373, file: !1374, line: 127, baseType: !224, size: 8, offset: 704)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1373, file: !1374, line: 129, baseType: !1398, size: 64, offset: 768)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1400, line: 195, size: 1728, elements: !1401)
!1400 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1401 = !{!1402, !1403, !1408, !1413, !1414, !1417, !1418, !1423, !1424, !1425, !1426, !1429, !1430, !1431, !1433, !1434, !1474, !1495}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1399, file: !1400, line: 196, baseType: !985, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1399, file: !1400, line: 197, baseType: !1404, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1400, line: 28, baseType: !1405)
!1405 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !163, line: 104, baseType: !1406)
!1406 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !221, line: 20, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !223, line: 26, baseType: !109)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1400, line: 198, baseType: !1409, size: 192, offset: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !1400, line: 198, size: 192, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1409, file: !1400, line: 199, baseType: !162, size: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1409, file: !1400, line: 200, baseType: !1029, size: 192, align: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1399, file: !1400, line: 205, baseType: !856, size: 320, offset: 256)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1399, file: !1400, line: 206, baseType: !1415, size: 64, offset: 576)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1400, line: 206, flags: DIFlagFwdDecl)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1399, file: !1400, line: 207, baseType: !334, size: 64, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1400, line: 208, baseType: !1419, size: 64, offset: 704)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !1400, line: 208, size: 64, elements: !1420)
!1420 = !{!1421, !1422}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1419, file: !1400, line: 209, baseType: !696, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1419, file: !1400, line: 210, baseType: !696, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1399, file: !1400, line: 212, baseType: !696, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1399, file: !1400, line: 213, baseType: !349, size: 32, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1399, file: !1400, line: 214, baseType: !358, size: 32, offset: 864)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1399, file: !1400, line: 215, baseType: !1427, size: 32, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1400, line: 31, baseType: !1428)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !163, line: 110, baseType: !412)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1399, file: !1400, line: 216, baseType: !232, size: 16, offset: 928)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1399, file: !1400, line: 217, baseType: !232, size: 16, offset: 944)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1399, file: !1400, line: 221, baseType: !1432, size: 16, offset: 960)
!1432 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1399, file: !1400, line: 228, baseType: !312, size: 64, offset: 1024)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1400, line: 245, baseType: !1435, size: 320, offset: 1088)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !1400, line: 245, size: 320, elements: !1436)
!1436 = !{!1437, !1466}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1435, file: !1400, line: 246, baseType: !1438, size: 320)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1400, line: 114, size: 320, elements: !1439)
!1439 = !{!1440, !1441, !1453, !1456, !1465}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1438, file: !1400, line: 116, baseType: !312, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1438, file: !1400, line: 117, baseType: !1442, size: 64, offset: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1438, file: !1400, line: 117, size: 64, elements: !1443)
!1443 = !{!1444, !1452}
!1444 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1400, line: 118, baseType: !1445, size: 64)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !1400, line: 118, size: 64, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1445, file: !1400, line: 120, baseType: !230, size: 16)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1445, file: !1400, line: 121, baseType: !1449, size: 48, offset: 16)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 48, elements: !1450)
!1450 = !{!1451}
!1451 = !DISubrange(count: 6)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1442, file: !1400, line: 127, baseType: !312, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1438, file: !1400, line: 129, baseType: !1454, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1400, line: 102, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1438, file: !1400, line: 130, baseType: !1457, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1400, line: 108, size: 192, elements: !1459)
!1459 = !{!1460, !1461, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1458, file: !1400, line: 109, baseType: !956, size: 128, align: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1458, file: !1400, line: 110, baseType: !985, size: 32, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1458, file: !1400, line: 111, baseType: !1463, size: 8, offset: 160)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !163, line: 35, baseType: !1464)
!1464 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1438, file: !1400, line: 131, baseType: !181, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1400, line: 247, baseType: !1467, size: 320)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1435, file: !1400, line: 247, size: 320, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1467, file: !1400, line: 248, baseType: !312, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1467, file: !1400, line: 249, baseType: !312, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1467, file: !1400, line: 250, baseType: !1454, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1467, file: !1400, line: 251, baseType: !1457, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1467, file: !1400, line: 252, baseType: !262, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1399, file: !1400, line: 260, baseType: !1475, size: 256, offset: 1408)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1399, file: !1400, line: 260, size: 256, elements: !1476)
!1476 = !{!1477, !1483}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1475, file: !1400, line: 261, baseType: !1478, size: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1400, line: 134, size: 256, elements: !1479)
!1479 = !{!1480, !1481}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1478, file: !1400, line: 135, baseType: !334, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1478, file: !1400, line: 136, baseType: !1482, size: 256)
!1482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !334, size: 256, elements: !1351)
!1483 = !DIDerivedType(tag: DW_TAG_member, scope: !1475, file: !1400, line: 262, baseType: !1484, size: 256)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1475, file: !1400, line: 262, size: 256, elements: !1485)
!1485 = !{!1486, !1487}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1484, file: !1400, line: 264, baseType: !162, size: 128)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1484, file: !1400, line: 265, baseType: !1488, size: 128, offset: 128)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1489, line: 22, size: 128, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1490 = !{!1491, !1494}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1488, file: !1489, line: 23, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1489, line: 23, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1488, file: !1489, line: 24, baseType: !312, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1399, file: !1400, line: 280, baseType: !1496, size: 64, offset: 1664)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1400, line: 176, size: 192, elements: !1498)
!1498 = !{!1499, !1508, !1509}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1497, file: !1400, line: 177, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1400, line: 171, baseType: !1501)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!109, !1398, !1504, !1506, !1398}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1455)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1478)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1497, file: !1400, line: 178, baseType: !1398, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1497, file: !1400, line: 179, baseType: !1454, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1373, file: !1374, line: 130, baseType: !1398, size: 64, offset: 832)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1373, file: !1374, line: 131, baseType: !1398, size: 64, offset: 896)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1373, file: !1374, line: 132, baseType: !1398, size: 64, offset: 960)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1373, file: !1374, line: 135, baseType: !334, size: 64, offset: 1024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1373, file: !1374, line: 137, baseType: !1515, size: 64, offset: 1088)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1517, line: 14, size: 1088, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1518 = !{!1519, !1520, !1529, !1530, !1531, !1532, !1533, !1534}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1516, file: !1517, line: 15, baseType: !985, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1516, file: !1517, line: 17, baseType: !1521, size: 320, offset: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1522, line: 22, size: 320, elements: !1523)
!1522 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1523 = !{!1524, !1525, !1526, !1527}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1521, file: !1522, line: 23, baseType: !656, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1521, file: !1522, line: 24, baseType: !653, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1521, file: !1522, line: 26, baseType: !162, size: 128, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1521, file: !1522, line: 28, baseType: !1528, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1516, file: !1517, line: 19, baseType: !312, size: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1516, file: !1517, line: 20, baseType: !647, size: 64, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1516, file: !1517, line: 23, baseType: !539, size: 128, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1516, file: !1517, line: 24, baseType: !349, size: 32, offset: 640)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1516, file: !1517, line: 29, baseType: !647, size: 64, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1516, file: !1517, line: 36, baseType: !1535, size: 320, offset: 768)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1536, line: 15, size: 320, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1535, file: !1536, line: 16, baseType: !656, size: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1535, file: !1536, line: 18, baseType: !109, size: 32, offset: 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1535, file: !1536, line: 19, baseType: !109, size: 32, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1535, file: !1536, line: 20, baseType: !109, size: 32, offset: 96)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1535, file: !1536, line: 21, baseType: !109, size: 32, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1535, file: !1536, line: 22, baseType: !312, size: 64, offset: 192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1535, file: !1536, line: 23, baseType: !312, size: 64, offset: 256)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1373, file: !1374, line: 138, baseType: !1546, size: 64, offset: 1152)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !350, line: 18, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1373, file: !1374, line: 139, baseType: !1549, size: 64, offset: 1216)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1551, line: 16, flags: DIFlagFwdDecl)
!1551 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1373, file: !1374, line: 140, baseType: !1553, size: 64, offset: 1280)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1374, line: 25, size: 64, elements: !1555)
!1555 = !{!1556, !1557, !1558}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1554, file: !1374, line: 26, baseType: !212, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1554, file: !1374, line: 27, baseType: !109, size: 32, offset: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1554, file: !1374, line: 28, baseType: !1559, offset: 64)
!1559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, elements: !1364)
!1560 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !1374, line: 142, baseType: !1561, size: 128, offset: 1344)
!1561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1373, file: !1374, line: 142, size: 128, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1561, file: !1374, line: 143, baseType: !109, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1561, file: !1374, line: 144, baseType: !956, size: 128, align: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1303, file: !14, line: 1013, baseType: !1566, size: 256, offset: 960)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1566, file: !14, line: 971, baseType: !312, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1566, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1566, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1566, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1566, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1566, file: !14, line: 976, baseType: !504, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1303, file: !14, line: 1014, baseType: !768, size: 128, offset: 1216)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1303, file: !14, line: 1015, baseType: !343, size: 64, offset: 1344)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1303, file: !14, line: 1016, baseType: !1577, size: 64, offset: 1408)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1580)
!1580 = !{!1581, !1582, !1586, !1591, !1595, !1624, !1625, !1631, !1644, !1652, !1656, !1657, !1958, !1959, !1963, !1968, !1969, !1973, !1977, !1983, !1984, !1988, !1989, !1995, !1999, !2003, !2009, !2013, !2017, !2021, !2025, !2026, !2032}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1579, file: !14, line: 1915, baseType: !157, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1579, file: !14, line: 1916, baseType: !1583, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!504, !1302, !504, !109}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1579, file: !14, line: 1917, baseType: !1587, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!294, !1302, !262, !309, !1590}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1579, file: !14, line: 1918, baseType: !1592, size: 64, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!294, !1302, !181, !309, !1590}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1579, file: !14, line: 1919, baseType: !1596, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!294, !1599, !1621}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1608, !1609, !1610, !1611}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1600, file: !14, line: 374, baseType: !1302, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1600, file: !14, line: 375, baseType: !504, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1600, file: !14, line: 376, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1599, !298}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1600, file: !14, line: 377, baseType: !334, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1600, file: !14, line: 378, baseType: !109, size: 32, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1600, file: !14, line: 379, baseType: !230, size: 16, offset: 288)
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1600, file: !14, line: 380, baseType: !1612, size: 64, offset: 320)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1600, file: !14, line: 380, size: 64, elements: !1613)
!1613 = !{!1614, !1617}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1612, file: !14, line: 386, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1612, file: !14, line: 395, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!294, !334}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1623, line: 17, flags: DIFlagFwdDecl)
!1623 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1579, file: !14, line: 1920, baseType: !1596, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1579, file: !14, line: 1921, baseType: !1626, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!109, !1599, !1629, !7}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1579, file: !14, line: 1923, baseType: !1632, size: 64, offset: 448)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!109, !1302, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1637)
!1637 = !{!1638, !1643}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1636, file: !14, line: 1859, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1640)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!1463, !1635, !181, !109, !504, !416, !7}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1636, file: !14, line: 1860, baseType: !504, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1579, file: !14, line: 1924, baseType: !1645, size: 64, offset: 512)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!1648, !1302, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1649, line: 59, baseType: !7)
!1649 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !519, line: 31, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1579, file: !14, line: 1925, baseType: !1653, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!298, !1302, !7, !312}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1579, file: !14, line: 1926, baseType: !1653, size: 64, offset: 640)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1579, file: !14, line: 1927, baseType: !1658, size: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!109, !1302, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !38, line: 625, size: 1344, elements: !1663)
!1663 = !{!1664, !1673, !1674, !1682, !1689, !1690, !1695, !1696, !1701, !1702, !1705, !1951, !1952, !1953, !1954, !1955, !1956}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !38, line: 628, baseType: !1665, size: 128)
!1665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !38, line: 628, size: 128, elements: !1666)
!1666 = !{!1667, !1672}
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !38, line: 629, baseType: !1668, size: 128)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1665, file: !38, line: 629, size: 128, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1668, file: !38, line: 631, baseType: !312, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1668, file: !38, line: 632, baseType: !312, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1665, file: !38, line: 635, baseType: !956, size: 128, align: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1662, file: !38, line: 639, baseType: !1275, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1662, file: !38, line: 640, baseType: !1675, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1676, line: 297, baseType: !1677)
!1676 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1676, line: 297, size: 64, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1677, file: !1676, line: 297, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1681, line: 19, baseType: !312)
!1681 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !38, line: 646, baseType: !1683, size: 64, offset: 256)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1662, file: !38, line: 646, size: 64, elements: !1684)
!1684 = !{!1685, !1688}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1683, file: !38, line: 647, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !38, line: 542, baseType: !312)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1683, file: !38, line: 648, baseType: !1687, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1662, file: !38, line: 666, baseType: !109, size: 32, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1662, file: !38, line: 667, baseType: !1691, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !38, line: 579, size: 320, elements: !1693)
!1693 = !{!1694}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1692, file: !38, line: 580, baseType: !856, size: 320)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1662, file: !38, line: 670, baseType: !1463, size: 8, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1662, file: !38, line: 681, baseType: !1697, size: 256, offset: 512)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !38, line: 678, size: 256, elements: !1698)
!1698 = !{!1699, !1700}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1697, file: !38, line: 679, baseType: !1029, size: 192, align: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1697, file: !38, line: 680, baseType: !312, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1662, file: !38, line: 689, baseType: !162, size: 128, offset: 768)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1662, file: !38, line: 691, baseType: !1703, size: 64, offset: 896)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !38, line: 691, flags: DIFlagFwdDecl)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1662, file: !38, line: 694, baseType: !1706, size: 64, offset: 960)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1708)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1709, line: 563, size: 1024, elements: !1710)
!1709 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1710 = !{!1711, !1715, !1716, !1720, !1724, !1728, !1915, !1919, !1923, !1927, !1928, !1929, !1933, !1937, !1943, !1947}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1708, file: !1709, line: 564, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !1661}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1708, file: !1709, line: 569, baseType: !1712, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1708, file: !1709, line: 571, baseType: !1717, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!109, !1661, !312}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1708, file: !1709, line: 572, baseType: !1721, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!109, !1661}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1708, file: !1709, line: 578, baseType: !1725, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!109, !1661, !312, !312, !312}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1708, file: !1709, line: 580, baseType: !1729, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!1732, !1733}
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !38, line: 1184, baseType: !7)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1709, line: 512, size: 896, elements: !1735)
!1735 = !{!1736, !1744, !1745, !1752, !1759, !1769, !1908, !1909, !1911, !1913}
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !1709, line: 513, baseType: !1737, size: 320)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1734, file: !1709, line: 513, size: 320, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1742, !1743}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1737, file: !1709, line: 514, baseType: !1661, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1737, file: !1709, line: 515, baseType: !708, size: 32, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1737, file: !1709, line: 516, baseType: !312, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1737, file: !1709, line: 517, baseType: !312, size: 64, offset: 192)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1737, file: !1709, line: 518, baseType: !312, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1734, file: !1709, line: 520, baseType: !37, size: 32, offset: 320)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1734, file: !1709, line: 522, baseType: !1746, size: 64, offset: 384)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1681, line: 22, baseType: !1748)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1681, line: 22, size: 64, elements: !1749)
!1749 = !{!1750}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1748, file: !1681, line: 22, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1681, line: 15, baseType: !312)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1734, file: !1709, line: 524, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1676, line: 372, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1676, line: 372, size: 64, elements: !1756)
!1756 = !{!1757}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1755, file: !1676, line: 372, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1681, line: 16, baseType: !312)
!1759 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !1709, line: 527, baseType: !1760, size: 64, offset: 512)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1734, file: !1709, line: 527, size: 64, elements: !1761)
!1761 = !{!1762, !1768}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1760, file: !1709, line: 528, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1681, line: 21, baseType: !1764)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1681, line: 21, size: 64, elements: !1765)
!1765 = !{!1766}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1764, file: !1681, line: 21, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1681, line: 14, baseType: !312)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1760, file: !1709, line: 529, baseType: !1747, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1734, file: !1709, line: 534, baseType: !1770, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !38, line: 74, size: 512, align: 128, elements: !1772)
!1772 = !{!1773, !1774, !1902, !1907}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1771, file: !38, line: 75, baseType: !312, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !38, line: 83, baseType: !1775, size: 320, offset: 64)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !38, line: 83, size: 320, elements: !1776)
!1776 = !{!1777, !1798, !1812, !1816, !1901}
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !38, line: 84, baseType: !1778, size: 320)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !38, line: 84, size: 320, elements: !1779)
!1779 = !{!1780, !1791, !1792, !1797}
!1780 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !38, line: 90, baseType: !1781, size: 128)
!1781 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1778, file: !38, line: 90, size: 128, elements: !1782)
!1782 = !{!1783, !1784, !1789, !1790}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1781, file: !38, line: 91, baseType: !162, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, scope: !1781, file: !38, line: 94, baseType: !1785, size: 128)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1781, file: !38, line: 94, size: 128, elements: !1786)
!1786 = !{!1787, !1788}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1785, file: !38, line: 96, baseType: !334, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1785, file: !38, line: 98, baseType: !7, size: 32, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1781, file: !38, line: 102, baseType: !162, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1781, file: !38, line: 103, baseType: !162, size: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1778, file: !38, line: 106, baseType: !339, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1778, file: !38, line: 107, baseType: !1793, size: 64, offset: 192)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1778, file: !38, line: 107, size: 64, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1793, file: !38, line: 108, baseType: !312, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1793, file: !38, line: 109, baseType: !312, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1778, file: !38, line: 117, baseType: !312, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !38, line: 119, baseType: !1799, size: 320)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !38, line: 119, size: 320, elements: !1800)
!1800 = !{!1801, !1802, !1805, !1806, !1807}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1799, file: !38, line: 124, baseType: !312, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1799, file: !38, line: 125, baseType: !1803, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !38, line: 125, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1799, file: !38, line: 126, baseType: !312, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1799, file: !38, line: 127, baseType: !312, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !38, line: 128, baseType: !1808, size: 64, offset: 256)
!1808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !38, line: 128, size: 64, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1808, file: !38, line: 133, baseType: !312, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1808, file: !38, line: 138, baseType: !647, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !38, line: 141, baseType: !1813, size: 64)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !38, line: 141, size: 64, elements: !1814)
!1814 = !{!1815}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1813, file: !38, line: 142, baseType: !312, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !38, line: 144, baseType: !1817, size: 128)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !38, line: 144, size: 128, elements: !1818)
!1818 = !{!1819, !1900}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1817, file: !38, line: 146, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !54, line: 126, size: 1216, elements: !1822)
!1822 = !{!1823, !1833, !1854, !1865, !1866, !1867, !1868, !1882, !1883, !1884}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1821, file: !54, line: 127, baseType: !1824, size: 384)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !54, line: 21, size: 384, elements: !1825)
!1825 = !{!1826, !1827, !1829, !1830, !1831, !1832}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1824, file: !54, line: 22, baseType: !312, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1824, file: !54, line: 23, baseType: !1828, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1824, file: !54, line: 24, baseType: !1828, size: 64, offset: 128)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1824, file: !54, line: 25, baseType: !312, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1824, file: !54, line: 26, baseType: !312, size: 64, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1824, file: !54, line: 27, baseType: !312, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1821, file: !54, line: 128, baseType: !1834, size: 128, offset: 384)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1835, line: 105, size: 128, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1836 = !{!1837, !1838}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1834, file: !1835, line: 110, baseType: !312, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1834, file: !1835, line: 118, baseType: !1839, size: 64, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1835, line: 95, size: 448, elements: !1841)
!1841 = !{!1842, !1843, !1849, !1850, !1851, !1852, !1853}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1840, file: !1835, line: 96, baseType: !647, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1840, file: !1835, line: 97, baseType: !1844, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1835, line: 60, baseType: !1846)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{null, !1848}
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1840, file: !1835, line: 98, baseType: !1844, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1840, file: !1835, line: 99, baseType: !1463, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1840, file: !1835, line: 100, baseType: !1463, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1840, file: !1835, line: 101, baseType: !956, size: 128, align: 64, offset: 256)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1840, file: !1835, line: 102, baseType: !1848, size: 64, offset: 384)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1821, file: !54, line: 129, baseType: !1855, size: 256, offset: 512)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1856, line: 26, size: 256, elements: !1857)
!1856 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1855, file: !1856, line: 27, baseType: !7, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1855, file: !1856, line: 28, baseType: !1860, size: 192, offset: 64)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1861, line: 43, size: 192, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1860, file: !1861, line: 44, baseType: !656, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1860, file: !1861, line: 45, baseType: !162, size: 128, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1821, file: !54, line: 130, baseType: !53, size: 32, offset: 768)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1821, file: !54, line: 131, baseType: !7, size: 32, offset: 800)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1821, file: !54, line: 132, baseType: !312, size: 64, offset: 832)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1821, file: !54, line: 133, baseType: !1869, size: 64, offset: 896)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !54, line: 77, size: 192, elements: !1872)
!1872 = !{!1873, !1877, !1878}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1871, file: !54, line: 83, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1770}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1871, file: !54, line: 89, baseType: !1729, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1871, file: !54, line: 100, baseType: !1879, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!109, !1820, !312, !312, !109}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1821, file: !54, line: 134, baseType: !334, size: 64, offset: 960)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1821, file: !54, line: 135, baseType: !109, size: 32, offset: 1024)
!1884 = !DIDerivedType(tag: DW_TAG_member, scope: !1821, file: !54, line: 136, baseType: !1885, size: 128, offset: 1088)
!1885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1821, file: !54, line: 136, size: 128, elements: !1886)
!1886 = !{!1887, !1893}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1885, file: !54, line: 137, baseType: !1888, size: 128)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1889, line: 6, size: 128, elements: !1890)
!1889 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1890 = !{!1891, !1892}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1888, file: !1889, line: 7, baseType: !416, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1888, file: !1889, line: 8, baseType: !416, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1885, file: !54, line: 138, baseType: !1894)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1885, file: !54, line: 138, elements: !1895)
!1895 = !{!1896, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1894, file: !54, line: 138, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !54, line: 138, elements: !547)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1894, file: !54, line: 138, baseType: !1899)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1888, elements: !1364)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1817, file: !38, line: 147, baseType: !334, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1775, file: !38, line: 161, baseType: !956, size: 128, align: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !38, line: 164, baseType: !1903, size: 32, offset: 384)
!1903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !38, line: 164, size: 32, elements: !1904)
!1904 = !{!1905, !1906}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1903, file: !38, line: 169, baseType: !212, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1903, file: !38, line: 177, baseType: !7, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1771, file: !38, line: 181, baseType: !212, size: 32, offset: 416)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1734, file: !1709, line: 535, baseType: !1770, size: 64, offset: 640)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1734, file: !1709, line: 541, baseType: !1910, size: 64, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1734, file: !1709, line: 545, baseType: !1912, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1734, file: !1709, line: 549, baseType: !1914, size: 64, offset: 832)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1676, line: 520, baseType: !1770)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1708, file: !1709, line: 581, baseType: !1916, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!1732, !1733, !7}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1708, file: !1709, line: 582, baseType: !1920, size: 64, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{!1732, !1733, !312, !312}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1708, file: !1709, line: 584, baseType: !1924, size: 64, offset: 512)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!312, !1661}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1708, file: !1709, line: 588, baseType: !1729, size: 64, offset: 576)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1708, file: !1709, line: 591, baseType: !1729, size: 64, offset: 640)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1708, file: !1709, line: 597, baseType: !1930, size: 64, offset: 704)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!109, !1661, !312, !334, !109, !109}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1708, file: !1709, line: 603, baseType: !1934, size: 64, offset: 768)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!181, !1661}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1708, file: !1709, line: 613, baseType: !1938, size: 64, offset: 832)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!109, !1661, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !38, line: 717, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1708, file: !1709, line: 625, baseType: !1944, size: 64, offset: 896)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!1941, !1661, !312}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1708, file: !1709, line: 633, baseType: !1948, size: 64, offset: 960)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1770, !1661, !312}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1662, file: !38, line: 697, baseType: !312, size: 64, offset: 1024)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1662, file: !38, line: 699, baseType: !1302, size: 64, offset: 1088)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1662, file: !38, line: 700, baseType: !334, size: 64, offset: 1152)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1662, file: !38, line: 711, baseType: !647, size: 64, offset: 1216)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1662, file: !38, line: 717, baseType: !1941, size: 64, offset: 1280)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1662, file: !38, line: 722, baseType: !1957, offset: 1344)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !38, line: 570, elements: !547)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1579, file: !14, line: 1928, baseType: !312, size: 64, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1579, file: !14, line: 1929, baseType: !1960, size: 64, offset: 832)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!109, !343, !1302}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1579, file: !14, line: 1930, baseType: !1964, size: 64, offset: 896)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!109, !1302, !1967}
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !334)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1579, file: !14, line: 1931, baseType: !1960, size: 64, offset: 960)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1579, file: !14, line: 1932, baseType: !1970, size: 64, offset: 1024)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!109, !1302, !504, !504, !109}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1579, file: !14, line: 1933, baseType: !1974, size: 64, offset: 1088)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!109, !109, !1302, !109}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1579, file: !14, line: 1934, baseType: !1978, size: 64, offset: 1152)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!109, !1302, !109, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1579, file: !14, line: 1935, baseType: !1299, size: 64, offset: 1216)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1579, file: !14, line: 1936, baseType: !1985, size: 64, offset: 1280)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!109, !109}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1579, file: !14, line: 1937, baseType: !1978, size: 64, offset: 1344)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1579, file: !14, line: 1938, baseType: !1990, size: 64, offset: 1408)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!294, !1993, !1302, !1590, !309, !7}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !618, line: 59, flags: DIFlagFwdDecl)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1579, file: !14, line: 1939, baseType: !1996, size: 64, offset: 1472)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!294, !1302, !1590, !1993, !309, !7}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1579, file: !14, line: 1940, baseType: !2000, size: 64, offset: 1536)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1302}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1579, file: !14, line: 1941, baseType: !2004, size: 64, offset: 1600)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!109, !1302, !109, !2007, !2008}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1579, file: !14, line: 1942, baseType: !2010, size: 64, offset: 1664)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!298, !1302, !109, !504, !504}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1579, file: !14, line: 1944, baseType: !2014, size: 64, offset: 1728)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !616, !1302}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1579, file: !14, line: 1948, baseType: !2018, size: 64, offset: 1792)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!294, !1302, !504, !1302, !504, !309, !7}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1579, file: !14, line: 1950, baseType: !2022, size: 64, offset: 1856)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!504, !1302, !504, !1302, !504, !504, !7}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1579, file: !14, line: 1953, baseType: !1970, size: 64, offset: 1920)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1579, file: !14, line: 1954, baseType: !2027, size: 64, offset: 1984)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!109, !2030, !7}
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1579, file: !14, line: 1955, baseType: !2033, size: 64, offset: 2048)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!109, !2030, !1629, !7}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1303, file: !14, line: 1018, baseType: !416, size: 64, offset: 1472)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1303, file: !14, line: 1020, baseType: !334, size: 64, offset: 1536)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1303, file: !14, line: 1023, baseType: !334, size: 64, offset: 1600)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1303, file: !14, line: 1027, baseType: !2040, size: 64, offset: 1664)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1303, file: !14, line: 1029, baseType: !339, size: 64, offset: 1728)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1303, file: !14, line: 1030, baseType: !2043, size: 32, offset: 1792)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2044, line: 8, baseType: !412)
!2044 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1303, file: !14, line: 1031, baseType: !2043, size: 32, offset: 1824)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1279, file: !38, line: 756, baseType: !312, size: 64, offset: 704)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1279, file: !38, line: 757, baseType: !312, size: 64, offset: 768)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1279, file: !38, line: 760, baseType: !312, size: 64, offset: 832)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1279, file: !38, line: 761, baseType: !312, size: 64, offset: 896)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1279, file: !38, line: 763, baseType: !312, size: 64, offset: 960)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1279, file: !38, line: 764, baseType: !2052, size: 64, offset: 1024)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1676, line: 299, baseType: !2054)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1676, line: 299, size: 64, elements: !2055)
!2055 = !{!2056}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2054, file: !1676, line: 299, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1681, line: 18, baseType: !312)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1279, file: !38, line: 773, baseType: !212, size: 32, offset: 1088)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1279, file: !38, line: 785, baseType: !212, size: 32, offset: 1120)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1279, file: !38, line: 795, baseType: !2061, size: 64, offset: 1152)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !38, line: 726, size: 128, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2062, file: !38, line: 727, baseType: !416, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2062, file: !38, line: 728, baseType: !109, size: 32, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1279, file: !38, line: 801, baseType: !312, size: 64, offset: 1216)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1279, file: !38, line: 804, baseType: !647, size: 64, offset: 1280)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1279, file: !38, line: 806, baseType: !109, size: 32, offset: 1344)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1279, file: !38, line: 808, baseType: !192, size: 32, offset: 1376)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1279, file: !38, line: 823, baseType: !856, size: 320, offset: 1408)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1279, file: !38, line: 825, baseType: !162, size: 128, offset: 1728)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1279, file: !38, line: 845, baseType: !109, size: 32, offset: 1856)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1279, file: !38, line: 849, baseType: !312, size: 64, offset: 1920)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1279, file: !38, line: 850, baseType: !312, size: 64, offset: 1984)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1279, file: !38, line: 852, baseType: !312, size: 64, offset: 2048)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1279, file: !38, line: 853, baseType: !312, size: 64, offset: 2112)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1279, file: !38, line: 854, baseType: !649, size: 64, offset: 2176)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1279, file: !38, line: 855, baseType: !312, size: 64, offset: 2240)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1279, file: !38, line: 856, baseType: !312, size: 64, offset: 2304)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1279, file: !38, line: 857, baseType: !312, size: 64, offset: 2368)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1279, file: !38, line: 858, baseType: !312, size: 64, offset: 2432)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1279, file: !38, line: 865, baseType: !389, size: 32, offset: 2496)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1279, file: !38, line: 867, baseType: !192, size: 32, offset: 2528)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1279, file: !38, line: 869, baseType: !312, size: 64, offset: 2560)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1279, file: !38, line: 869, baseType: !312, size: 64, offset: 2624)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1279, file: !38, line: 869, baseType: !312, size: 64, offset: 2688)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1279, file: !38, line: 869, baseType: !312, size: 64, offset: 2752)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1279, file: !38, line: 870, baseType: !312, size: 64, offset: 2816)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1279, file: !38, line: 870, baseType: !312, size: 64, offset: 2880)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1279, file: !38, line: 870, baseType: !312, size: 64, offset: 2944)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1279, file: !38, line: 871, baseType: !312, size: 64, offset: 3008)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1279, file: !38, line: 871, baseType: !312, size: 64, offset: 3072)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1279, file: !38, line: 871, baseType: !312, size: 64, offset: 3136)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1279, file: !38, line: 871, baseType: !312, size: 64, offset: 3200)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1279, file: !38, line: 873, baseType: !2096, size: 3328, offset: 3264)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 3328, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 52)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1279, file: !38, line: 875, baseType: !2100, size: 1280, offset: 6592)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1521, size: 1280, elements: !1351)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1279, file: !38, line: 877, baseType: !2102, size: 64, offset: 7872)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !38, line: 877, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1279, file: !38, line: 880, baseType: !2105, size: 1088, offset: 7936)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2106, line: 72, baseType: !2107)
!2106 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2106, line: 23, size: 1088, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2116, !2117, !2118, !2119, !2146, !2147, !2148}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2107, file: !2106, line: 28, baseType: !416, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2107, file: !2106, line: 38, baseType: !649, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2107, file: !2106, line: 40, baseType: !312, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2107, file: !2106, line: 43, baseType: !856, size: 320, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2107, file: !2106, line: 44, baseType: !2114, size: 64, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2106, line: 44, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !2106, line: 48, baseType: !312, size: 64, offset: 576)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2107, file: !2106, line: 59, baseType: !643, size: 256, offset: 640)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2107, file: !2106, line: 60, baseType: !334, size: 64, offset: 896)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2107, file: !2106, line: 61, baseType: !2120, size: 64, offset: 960)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2122)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2123, line: 13, size: 1216, elements: !2124)
!2123 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2122, file: !2123, line: 14, baseType: !334, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2122, file: !2123, line: 15, baseType: !312, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2122, file: !2123, line: 17, baseType: !312, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2122, file: !2123, line: 17, baseType: !312, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2122, file: !2123, line: 18, baseType: !312, size: 64, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2122, file: !2123, line: 18, baseType: !312, size: 64, offset: 320)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2122, file: !2123, line: 19, baseType: !2132, size: 64, offset: 384)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2122, file: !2123, line: 21, baseType: !298, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2122, file: !2123, line: 23, baseType: !298, size: 64, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2122, file: !2123, line: 24, baseType: !298, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2122, file: !2123, line: 25, baseType: !298, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2122, file: !2123, line: 26, baseType: !298, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2122, file: !2123, line: 27, baseType: !298, size: 64, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2122, file: !2123, line: 28, baseType: !298, size: 64, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2122, file: !2123, line: 29, baseType: !298, size: 64, offset: 896)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2122, file: !2123, line: 30, baseType: !298, size: 64, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2122, file: !2123, line: 31, baseType: !298, size: 64, offset: 1024)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2122, file: !2123, line: 32, baseType: !298, size: 64, offset: 1088)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2122, file: !2123, line: 33, baseType: !298, size: 64, offset: 1152)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2107, file: !2106, line: 63, baseType: !212, size: 32, offset: 1024)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2107, file: !2106, line: 69, baseType: !230, size: 16, offset: 1056)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2107, file: !2106, line: 70, baseType: !2149, size: 16, offset: 1072)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !221, line: 18, baseType: !2150)
!2150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !223, line: 23, baseType: !1432)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1279, file: !38, line: 882, baseType: !312, size: 64, offset: 9024)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1279, file: !38, line: 885, baseType: !192, size: 32, offset: 9088)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1279, file: !38, line: 886, baseType: !2154, size: 64, offset: 9152)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !38, line: 732, flags: DIFlagFwdDecl)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1279, file: !38, line: 901, baseType: !1546, size: 64, offset: 9216)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1279, file: !38, line: 904, baseType: !1302, size: 64, offset: 9280)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1279, file: !38, line: 906, baseType: !2159, size: 64, offset: 9344)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !38, line: 906, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1279, file: !38, line: 930, baseType: !212, size: 32, offset: 9408)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1279, file: !38, line: 933, baseType: !212, size: 32, offset: 9440)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1279, file: !38, line: 935, baseType: !2164, size: 64, offset: 9472)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2165)
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2164, file: !68, line: 104, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1279, file: !38, line: 940, baseType: !647, size: 64, offset: 9536)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1279, file: !38, line: 942, baseType: !2171, size: 256, offset: 9600)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2172, line: 98, size: 256, elements: !2173)
!2172 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2173 = !{!2174, !2175, !2176}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2171, file: !2172, line: 99, baseType: !647, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2171, file: !2172, line: 100, baseType: !162, size: 128, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2171, file: !2172, line: 101, baseType: !2177, size: 64, offset: 192)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2172, line: 21, baseType: !2178)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{null, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1276, file: !38, line: 986, baseType: !2183, offset: 10240)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, elements: !1364)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !972, file: !618, line: 882, baseType: !1275, size: 64, offset: 9792)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !972, file: !618, line: 884, baseType: !109, size: 32, offset: 9856)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !972, file: !618, line: 885, baseType: !109, size: 32, offset: 9888)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !972, file: !618, line: 886, baseType: !109, size: 32, offset: 9920)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !972, file: !618, line: 888, baseType: !109, size: 32, offset: 9952)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !972, file: !618, line: 890, baseType: !312, size: 64, offset: 9984)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !972, file: !618, line: 893, baseType: !7, size: 32, offset: 10048)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !972, file: !618, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !972, file: !618, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !972, file: !618, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !972, file: !618, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !972, file: !618, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !972, file: !618, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !972, file: !618, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !972, file: !618, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !972, file: !618, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !972, file: !618, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !972, file: !618, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !972, file: !618, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !972, file: !618, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !972, file: !618, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !972, file: !618, line: 969, baseType: !312, size: 64, offset: 10176)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !972, file: !618, line: 971, baseType: !2207, size: 448, offset: 10240)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2208)
!2208 = !{!2209, !2210, !2215}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2207, file: !62, line: 26, baseType: !312, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2207, file: !62, line: 27, baseType: !2211, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!298, !2214}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, scope: !2207, file: !62, line: 28, baseType: !2216, size: 320, offset: 128)
!2216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2207, file: !62, line: 28, size: 320, elements: !2217)
!2217 = !{!2218, !2228, !2253}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2216, file: !62, line: 37, baseType: !2219, size: 320)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2216, file: !62, line: 30, size: 320, elements: !2220)
!2220 = !{!2221, !2223, !2224, !2225, !2226, !2227}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2219, file: !62, line: 31, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2219, file: !62, line: 32, baseType: !412, size: 32, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2219, file: !62, line: 33, baseType: !412, size: 32, offset: 96)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2219, file: !62, line: 34, baseType: !412, size: 32, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2219, file: !62, line: 35, baseType: !416, size: 64, offset: 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2219, file: !62, line: 36, baseType: !2222, size: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2216, file: !62, line: 47, baseType: !2229, size: 192)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2216, file: !62, line: 39, size: 192, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2252}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2229, file: !62, line: 40, baseType: !1146, size: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2229, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, scope: !2229, file: !62, line: 42, baseType: !2234, size: 64, offset: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2229, file: !62, line: 42, size: 64, elements: !2235)
!2235 = !{!2236, !2244}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2234, file: !62, line: 43, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2239, line: 7, size: 128, elements: !2240)
!2239 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2240 = !{!2241, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2238, file: !2239, line: 8, baseType: !2242, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !296, line: 93, baseType: !506)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2238, file: !2239, line: 9, baseType: !506, size: 64, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2234, file: !62, line: 44, baseType: !2245, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2247, line: 7, size: 64, elements: !2248)
!2247 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2248 = !{!2249, !2251}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2246, file: !2247, line: 8, baseType: !2250, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2247, line: 5, baseType: !1406)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2246, file: !2247, line: 9, baseType: !1406, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2229, file: !62, line: 46, baseType: !416, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2216, file: !62, line: 55, baseType: !2254, size: 256)
!2254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2216, file: !62, line: 49, size: 256, elements: !2255)
!2255 = !{!2256, !2259, !2260, !2261, !2262}
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2254, file: !62, line: 50, baseType: !2257, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2254, file: !62, line: 51, baseType: !109, size: 32, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2254, file: !62, line: 52, baseType: !109, size: 32, offset: 96)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2254, file: !62, line: 53, baseType: !312, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2254, file: !62, line: 54, baseType: !312, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !972, file: !618, line: 973, baseType: !2264, size: 32, offset: 10688)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !163, line: 27, baseType: !2265)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !296, line: 28, baseType: !109)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !972, file: !618, line: 974, baseType: !2264, size: 32, offset: 10720)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !972, file: !618, line: 978, baseType: !312, size: 64, offset: 10752)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !972, file: !618, line: 987, baseType: !971, size: 64, offset: 10816)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !972, file: !618, line: 990, baseType: !971, size: 64, offset: 10880)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !972, file: !618, line: 995, baseType: !162, size: 128, offset: 10944)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !972, file: !618, line: 996, baseType: !162, size: 128, offset: 11072)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !972, file: !618, line: 997, baseType: !971, size: 64, offset: 11200)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !972, file: !618, line: 1005, baseType: !162, size: 128, offset: 11264)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !972, file: !618, line: 1006, baseType: !162, size: 128, offset: 11392)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !972, file: !618, line: 1009, baseType: !1343, size: 64, offset: 11520)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !972, file: !618, line: 1010, baseType: !2277, size: 512, offset: 11584)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 512, elements: !1351)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !972, file: !618, line: 1011, baseType: !162, size: 128, offset: 12096)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !972, file: !618, line: 1012, baseType: !162, size: 128, offset: 12224)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !972, file: !618, line: 1014, baseType: !2281, size: 64, offset: 12352)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !972, file: !618, line: 1017, baseType: !610, size: 64, offset: 12416)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !972, file: !618, line: 1020, baseType: !610, size: 64, offset: 12480)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !972, file: !618, line: 1023, baseType: !334, size: 64, offset: 12544)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !972, file: !618, line: 1025, baseType: !416, size: 64, offset: 12608)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !972, file: !618, line: 1026, baseType: !416, size: 64, offset: 12672)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !972, file: !618, line: 1031, baseType: !416, size: 64, offset: 12736)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !972, file: !618, line: 1032, baseType: !2289, size: 192, offset: 12800)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !618, line: 324, size: 192, elements: !2290)
!2290 = !{!2291, !2292, !2293}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2289, file: !618, line: 326, baseType: !416, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2289, file: !618, line: 327, baseType: !416, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2289, file: !618, line: 328, baseType: !656, size: 32, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !972, file: !618, line: 1041, baseType: !312, size: 64, offset: 12992)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !972, file: !618, line: 1042, baseType: !312, size: 64, offset: 13056)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !972, file: !618, line: 1045, baseType: !416, size: 64, offset: 13120)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !972, file: !618, line: 1048, baseType: !416, size: 64, offset: 13184)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !972, file: !618, line: 1051, baseType: !312, size: 64, offset: 13248)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !972, file: !618, line: 1052, baseType: !312, size: 64, offset: 13312)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !972, file: !618, line: 1055, baseType: !2301, size: 640, offset: 13376)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2302, line: 132, size: 640, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2303 = !{!2304, !2310, !2311}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2301, file: !2302, line: 133, baseType: !2305, size: 576)
!2305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2306, size: 576, elements: !263)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2302, line: 117, size: 192, elements: !2307)
!2307 = !{!2308, !2309}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2306, file: !2302, line: 118, baseType: !416, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2306, file: !2302, line: 119, baseType: !1155, size: 128, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2301, file: !2302, line: 134, baseType: !7, size: 32, offset: 576)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2301, file: !2302, line: 135, baseType: !7, size: 32, offset: 608)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !972, file: !618, line: 1058, baseType: !2313, size: 448, offset: 14016)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2302, line: 144, size: 448, elements: !2314)
!2314 = !{!2315, !2316, !2317}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2313, file: !2302, line: 145, baseType: !956, size: 128, align: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2313, file: !2302, line: 146, baseType: !643, size: 256, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2313, file: !2302, line: 147, baseType: !7, size: 32, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !972, file: !618, line: 1064, baseType: !1371, size: 64, offset: 14464)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !972, file: !618, line: 1067, baseType: !1371, size: 64, offset: 14528)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !972, file: !618, line: 1070, baseType: !1371, size: 64, offset: 14592)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !972, file: !618, line: 1074, baseType: !1398, size: 64, offset: 14656)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !972, file: !618, line: 1084, baseType: !2323, size: 128, offset: 14720)
!2323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 128, elements: !2324)
!2324 = !{!2325}
!2325 = !DISubrange(count: 16)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !972, file: !618, line: 1086, baseType: !2327, size: 64, offset: 14848)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !618, line: 55, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !972, file: !618, line: 1089, baseType: !2330, size: 64, offset: 14912)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2331, line: 12, size: 64, elements: !2332)
!2331 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2332 = !{!2333}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2330, file: !2331, line: 13, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2331, line: 8, flags: DIFlagFwdDecl)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !972, file: !618, line: 1090, baseType: !2337, size: 128, offset: 14976)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2338, line: 13, size: 128, elements: !2339)
!2338 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2339 = !{!2340}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2337, file: !2338, line: 14, baseType: !162, size: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !972, file: !618, line: 1097, baseType: !2342, size: 64, offset: 15104)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !618, line: 50, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !972, file: !618, line: 1100, baseType: !2345, size: 64, offset: 15168)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !618, line: 1100, flags: DIFlagFwdDecl)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !972, file: !618, line: 1103, baseType: !2348, size: 64, offset: 15232)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !618, line: 53, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !972, file: !618, line: 1107, baseType: !2351, size: 64, offset: 15296)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2353, line: 35, flags: DIFlagFwdDecl)
!2353 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !972, file: !618, line: 1110, baseType: !2355, size: 64, offset: 15360)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2357, line: 93, size: 8768, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2408, !2417, !2418, !2420, !2421, !2422, !2425, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2463, !2464, !2471, !2481, !2484, !2485, !2488, !2489, !2490, !2491, !2492, !2493}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2356, file: !2357, line: 94, baseType: !985, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2356, file: !2357, line: 95, baseType: !212, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2356, file: !2357, line: 96, baseType: !109, size: 32, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2356, file: !2357, line: 97, baseType: !109, size: 32, offset: 96)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2356, file: !2357, line: 98, baseType: !162, size: 128, offset: 128)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2356, file: !2357, line: 100, baseType: !949, size: 192, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2356, file: !2357, line: 103, baseType: !971, size: 64, offset: 448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2356, file: !2357, line: 106, baseType: !2367, size: 192, offset: 512)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1551, line: 32, size: 192, elements: !2368)
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2367, file: !1551, line: 33, baseType: !162, size: 128)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2367, file: !1551, line: 34, baseType: !2371, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2372, line: 25, baseType: !2373)
!2372 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2372, line: 23, size: 64, elements: !2374)
!2374 = !{!2375}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2373, file: !2372, line: 24, baseType: !1226, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2356, file: !2357, line: 109, baseType: !535, size: 64, offset: 704)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2356, file: !2357, line: 112, baseType: !109, size: 32, offset: 768)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2356, file: !2357, line: 114, baseType: !109, size: 32, offset: 800)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2356, file: !2357, line: 115, baseType: !971, size: 64, offset: 832)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2356, file: !2357, line: 118, baseType: !109, size: 32, offset: 896)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2356, file: !2357, line: 119, baseType: !7, size: 32, offset: 928)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2356, file: !2357, line: 121, baseType: !2383, size: 64, offset: 960)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2357, line: 80, size: 448, elements: !2385)
!2385 = !{!2386, !2387, !2393}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2384, file: !2357, line: 81, baseType: !212, size: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2384, file: !2357, line: 82, baseType: !2388, size: 128, offset: 64)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2357, line: 75, size: 128, elements: !2389)
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2388, file: !2357, line: 76, baseType: !971, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2388, file: !2357, line: 77, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2384, file: !2357, line: 83, baseType: !1855, size: 256, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2356, file: !2357, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2356, file: !2357, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2356, file: !2357, line: 138, baseType: !7, size: 32, offset: 1056)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2356, file: !2357, line: 139, baseType: !162, size: 128, offset: 1088)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2356, file: !2357, line: 142, baseType: !1099, size: 512, offset: 1216)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2356, file: !2357, line: 143, baseType: !1107, size: 64, offset: 1728)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2356, file: !2357, line: 150, baseType: !2401, size: 256, offset: 1792)
!2401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2402, size: 256, elements: !2406)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2357, line: 38, size: 128, elements: !2403)
!2403 = !{!2404, !2405}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2402, file: !2357, line: 39, baseType: !416, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2402, file: !2357, line: 40, baseType: !416, size: 64, offset: 64)
!2406 = !{!2407}
!2407 = !DISubrange(count: 2)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2356, file: !2357, line: 156, baseType: !2409, size: 192, offset: 2048)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2357, line: 66, size: 192, elements: !2410)
!2410 = !{!2411}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2409, file: !2357, line: 67, baseType: !2412, size: 192)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2357, line: 47, size: 192, elements: !2413)
!2413 = !{!2414, !2415, !2416}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2412, file: !2357, line: 48, baseType: !649, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2412, file: !2357, line: 49, baseType: !649, size: 64, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2412, file: !2357, line: 50, baseType: !649, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2356, file: !2357, line: 160, baseType: !2301, size: 640, offset: 2240)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2356, file: !2357, line: 163, baseType: !2419, size: 256, offset: 2880)
!2419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1343, size: 256, elements: !1351)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2356, file: !2357, line: 169, baseType: !1343, size: 64, offset: 3136)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2356, file: !2357, line: 172, baseType: !109, size: 32, offset: 3200)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2356, file: !2357, line: 174, baseType: !2423, size: 64, offset: 3264)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2357, line: 174, flags: DIFlagFwdDecl)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2356, file: !2357, line: 185, baseType: !2426, size: 64, offset: 3328)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !385, line: 860, baseType: !2427)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !385, line: 853, size: 64, elements: !2428)
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2427, file: !385, line: 858, baseType: !384, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2427, file: !385, line: 859, baseType: !192, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2356, file: !2357, line: 186, baseType: !416, size: 64, offset: 3392)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2356, file: !2357, line: 186, baseType: !416, size: 64, offset: 3456)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2356, file: !2357, line: 186, baseType: !416, size: 64, offset: 3520)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2356, file: !2357, line: 186, baseType: !416, size: 64, offset: 3584)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2356, file: !2357, line: 187, baseType: !416, size: 64, offset: 3648)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2356, file: !2357, line: 188, baseType: !416, size: 64, offset: 3712)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2356, file: !2357, line: 189, baseType: !2289, size: 192, offset: 3776)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2356, file: !2357, line: 190, baseType: !312, size: 64, offset: 3968)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2356, file: !2357, line: 190, baseType: !312, size: 64, offset: 4032)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2356, file: !2357, line: 190, baseType: !312, size: 64, offset: 4096)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2356, file: !2357, line: 190, baseType: !312, size: 64, offset: 4160)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2356, file: !2357, line: 191, baseType: !312, size: 64, offset: 4224)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2356, file: !2357, line: 191, baseType: !312, size: 64, offset: 4288)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2356, file: !2357, line: 191, baseType: !312, size: 64, offset: 4352)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2356, file: !2357, line: 191, baseType: !312, size: 64, offset: 4416)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2356, file: !2357, line: 192, baseType: !312, size: 64, offset: 4480)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2356, file: !2357, line: 192, baseType: !312, size: 64, offset: 4544)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2356, file: !2357, line: 192, baseType: !312, size: 64, offset: 4608)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2356, file: !2357, line: 192, baseType: !312, size: 64, offset: 4672)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2356, file: !2357, line: 193, baseType: !312, size: 64, offset: 4736)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2356, file: !2357, line: 193, baseType: !312, size: 64, offset: 4800)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2356, file: !2357, line: 194, baseType: !2453, size: 448, offset: 4864)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2454, line: 12, size: 448, elements: !2455)
!2454 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2455 = !{!2456, !2457, !2458, !2459, !2460, !2461, !2462}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2453, file: !2454, line: 15, baseType: !416, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2453, file: !2454, line: 17, baseType: !416, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2453, file: !2454, line: 19, baseType: !416, size: 64, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2453, file: !2454, line: 21, baseType: !416, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2453, file: !2454, line: 29, baseType: !416, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2453, file: !2454, line: 35, baseType: !416, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2453, file: !2454, line: 44, baseType: !416, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2356, file: !2357, line: 202, baseType: !418, size: 64, offset: 5312)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2356, file: !2357, line: 213, baseType: !2465, size: 2048, offset: 5376)
!2465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2466, size: 2048, elements: !2324)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2467, line: 43, size: 128, elements: !2468)
!2467 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2468 = !{!2469, !2470}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2466, file: !2467, line: 44, baseType: !311, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2466, file: !2467, line: 45, baseType: !311, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2356, file: !2357, line: 216, baseType: !2472, size: 448, offset: 7424)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2357, line: 30, size: 448, elements: !2473)
!2473 = !{!2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2472, file: !2357, line: 31, baseType: !109, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2472, file: !2357, line: 32, baseType: !298, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2472, file: !2357, line: 33, baseType: !312, size: 64, offset: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2472, file: !2357, line: 34, baseType: !416, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2472, file: !2357, line: 34, baseType: !416, size: 64, offset: 256)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2472, file: !2357, line: 35, baseType: !312, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2472, file: !2357, line: 35, baseType: !312, size: 64, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2356, file: !2357, line: 219, baseType: !2482, size: 64, offset: 7872)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2357, line: 219, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2356, file: !2357, line: 222, baseType: !7, size: 32, offset: 7936)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2356, file: !2357, line: 223, baseType: !2486, size: 64, offset: 8000)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2357, line: 223, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2356, file: !2357, line: 230, baseType: !1463, size: 8, offset: 8064)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2356, file: !2357, line: 231, baseType: !1432, size: 16, offset: 8080)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2356, file: !2357, line: 232, baseType: !1432, size: 16, offset: 8096)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2356, file: !2357, line: 234, baseType: !1275, size: 64, offset: 8128)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2356, file: !2357, line: 237, baseType: !643, size: 256, offset: 8192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2356, file: !2357, line: 243, baseType: !856, size: 320, offset: 8448)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !972, file: !618, line: 1111, baseType: !2495, size: 64, offset: 15424)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2357, line: 20, size: 16640, elements: !2497)
!2497 = !{!2498, !2499, !2500, !2501}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2496, file: !2357, line: 21, baseType: !192, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2496, file: !2357, line: 22, baseType: !985, size: 32, offset: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2496, file: !2357, line: 23, baseType: !949, size: 192, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2496, file: !2357, line: 24, baseType: !2502, size: 16384, offset: 256)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2503, size: 16384, elements: !267)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1551, line: 51, size: 256, elements: !2504)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2503, file: !1551, line: 52, baseType: !2506, size: 256)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1551, line: 37, size: 256, elements: !2507)
!2507 = !{!2508, !2515, !2516, !2522}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2506, file: !1551, line: 39, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2510, line: 83, baseType: !2511)
!2510 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2510, line: 82, baseType: !2513)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{null, !109}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2506, file: !1551, line: 40, baseType: !312, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2506, file: !1551, line: 46, baseType: !2517, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2510, line: 86, baseType: !2518)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2510, line: 85, baseType: !2520)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{null}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2506, file: !1551, line: 48, baseType: !2371, size: 64, offset: 192)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !972, file: !618, line: 1112, baseType: !2371, size: 64, offset: 15488)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !972, file: !618, line: 1113, baseType: !2371, size: 64, offset: 15552)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !972, file: !618, line: 1115, baseType: !2371, size: 64, offset: 15616)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !972, file: !618, line: 1116, baseType: !2367, size: 192, offset: 15680)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !972, file: !618, line: 1117, baseType: !312, size: 64, offset: 15872)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !972, file: !618, line: 1118, baseType: !309, size: 64, offset: 15936)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !972, file: !618, line: 1119, baseType: !7, size: 32, offset: 16000)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !972, file: !618, line: 1121, baseType: !959, size: 64, offset: 16064)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !972, file: !618, line: 1125, baseType: !2532, size: 64, offset: 16128)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !618, line: 43, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !972, file: !618, line: 1127, baseType: !349, size: 32, offset: 16192)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !972, file: !618, line: 1128, baseType: !7, size: 32, offset: 16224)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !972, file: !618, line: 1130, baseType: !2537, size: 128, offset: 16256)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2538, line: 37, size: 128, elements: !2539)
!2538 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2539 = !{!2540, !2541, !2542}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2537, file: !2538, line: 38, baseType: !109, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2537, file: !2538, line: 39, baseType: !212, size: 32, offset: 32)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2537, file: !2538, line: 40, baseType: !2543, size: 64, offset: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2538, line: 24, flags: DIFlagFwdDecl)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !972, file: !618, line: 1131, baseType: !2546, size: 256, offset: 16384)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2547, line: 12, size: 256, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2548 = !{!2549, !2550, !2551, !2552}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2546, file: !2547, line: 13, baseType: !262, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2546, file: !2547, line: 14, baseType: !312, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2546, file: !2547, line: 15, baseType: !312, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2546, file: !2547, line: 16, baseType: !1463, size: 8, offset: 192)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !972, file: !618, line: 1134, baseType: !416, size: 64, offset: 16640)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !972, file: !618, line: 1135, baseType: !416, size: 64, offset: 16704)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !972, file: !618, line: 1138, baseType: !192, size: 32, offset: 16768)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !972, file: !618, line: 1141, baseType: !656, size: 32, offset: 16800)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !972, file: !618, line: 1143, baseType: !2558, size: 64, offset: 16832)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !618, line: 735, size: 64, elements: !2559)
!2559 = !{!2560}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2558, file: !618, line: 736, baseType: !2561, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !972, file: !618, line: 1147, baseType: !1158, size: 128, offset: 16896)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !972, file: !618, line: 1149, baseType: !971, size: 64, offset: 17024)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !972, file: !618, line: 1151, baseType: !2565, size: 64, offset: 17088)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !618, line: 1151, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !972, file: !618, line: 1188, baseType: !334, size: 64, offset: 17152)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !972, file: !618, line: 1191, baseType: !2569, size: 64, offset: 17216)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !618, line: 44, flags: DIFlagFwdDecl)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !972, file: !618, line: 1194, baseType: !2572, size: 64, offset: 17280)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !618, line: 45, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !972, file: !618, line: 1197, baseType: !2575, size: 64, offset: 17344)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !618, line: 61, flags: DIFlagFwdDecl)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !972, file: !618, line: 1199, baseType: !2578, size: 64, offset: 17408)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2580, line: 99, size: 128, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2581 = !{!2582, !2583, !2584}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2579, file: !2580, line: 100, baseType: !647, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2579, file: !2580, line: 101, baseType: !212, size: 32, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2579, file: !2580, line: 103, baseType: !232, size: 16, offset: 96)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !972, file: !618, line: 1202, baseType: !2586, size: 64, offset: 17472)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !618, line: 48, flags: DIFlagFwdDecl)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !972, file: !618, line: 1205, baseType: !312, size: 64, offset: 17536)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !972, file: !618, line: 1206, baseType: !2590, size: 64, offset: 17600)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1551, line: 14, baseType: !2592)
!2592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1551, line: 12, size: 384, elements: !2593)
!2593 = !{!2594}
!2594 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !1551, line: 13, baseType: !2595, size: 384)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2592, file: !1551, line: 13, size: 384, elements: !2596)
!2596 = !{!2597, !2598, !2599, !2600}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2595, file: !1551, line: 13, baseType: !109, size: 32)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2595, file: !1551, line: 13, baseType: !109, size: 32, offset: 32)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2595, file: !1551, line: 13, baseType: !109, size: 32, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2595, file: !1551, line: 13, baseType: !2601, size: 256, offset: 128)
!2601 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2602, line: 37, size: 256, elements: !2603)
!2602 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2603 = !{!2604, !2609, !2622, !2628, !2637, !2664, !2669}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2601, file: !2602, line: 42, baseType: !2605, size: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2601, file: !2602, line: 39, size: 64, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2605, file: !2602, line: 40, baseType: !2265, size: 32)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2605, file: !2602, line: 41, baseType: !355, size: 32, offset: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2601, file: !2602, line: 50, baseType: !2610, size: 192)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2601, file: !2602, line: 45, size: 192, elements: !2611)
!2611 = !{!2612, !2614, !2615, !2621}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2610, file: !2602, line: 46, baseType: !2613, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !296, line: 95, baseType: !109)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2610, file: !2602, line: 47, baseType: !109, size: 32, offset: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2610, file: !2602, line: 48, baseType: !2616, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2602, line: 11, baseType: !2617)
!2617 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2602, line: 8, size: 64, elements: !2618)
!2618 = !{!2619, !2620}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2617, file: !2602, line: 9, baseType: !109, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2617, file: !2602, line: 10, baseType: !334, size: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2610, file: !2602, line: 49, baseType: !109, size: 32, offset: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2601, file: !2602, line: 57, baseType: !2623, size: 128)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2601, file: !2602, line: 53, size: 128, elements: !2624)
!2624 = !{!2625, !2626, !2627}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2623, file: !2602, line: 54, baseType: !2265, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2623, file: !2602, line: 55, baseType: !355, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2623, file: !2602, line: 56, baseType: !2616, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2601, file: !2602, line: 66, baseType: !2629, size: 256)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2601, file: !2602, line: 60, size: 256, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2636}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2629, file: !2602, line: 61, baseType: !2265, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2629, file: !2602, line: 62, baseType: !355, size: 32, offset: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2629, file: !2602, line: 63, baseType: !109, size: 32, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2629, file: !2602, line: 64, baseType: !2635, size: 64, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !296, line: 94, baseType: !297)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2629, file: !2602, line: 65, baseType: !2635, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2601, file: !2602, line: 105, baseType: !2638, size: 256)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2601, file: !2602, line: 69, size: 256, elements: !2639)
!2639 = !{!2640, !2641}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2638, file: !2602, line: 70, baseType: !334, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, scope: !2638, file: !2602, line: 79, baseType: !2642, size: 192, offset: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2638, file: !2602, line: 79, size: 192, elements: !2643)
!2643 = !{!2644, !2645, !2646, !2653, !2658}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2642, file: !2602, line: 81, baseType: !109, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2642, file: !2602, line: 86, baseType: !1432, size: 16)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2642, file: !2602, line: 92, baseType: !2647, size: 192)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !2602, line: 88, size: 192, elements: !2648)
!2648 = !{!2649, !2651, !2652}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2647, file: !2602, line: 89, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 64, elements: !1142)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2647, file: !2602, line: 90, baseType: !334, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2647, file: !2602, line: 91, baseType: !334, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2642, file: !2602, line: 97, baseType: !2654, size: 96)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !2602, line: 94, size: 96, elements: !2655)
!2655 = !{!2656, !2657}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2654, file: !2602, line: 95, baseType: !2650, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2654, file: !2602, line: 96, baseType: !413, size: 32, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2642, file: !2602, line: 103, baseType: !2659, size: 128)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2642, file: !2602, line: 99, size: 128, elements: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2659, file: !2602, line: 100, baseType: !312, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2659, file: !2602, line: 101, baseType: !413, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2659, file: !2602, line: 102, baseType: !413, size: 32, offset: 96)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2601, file: !2602, line: 111, baseType: !2665, size: 128)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2601, file: !2602, line: 108, size: 128, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2665, file: !2602, line: 109, baseType: !298, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2665, file: !2602, line: 110, baseType: !109, size: 32, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2601, file: !2602, line: 118, baseType: !2670, size: 128)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2601, file: !2602, line: 114, size: 128, elements: !2671)
!2671 = !{!2672, !2673, !2674}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2670, file: !2602, line: 115, baseType: !334, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2670, file: !2602, line: 116, baseType: !109, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2670, file: !2602, line: 117, baseType: !7, size: 32, offset: 96)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !972, file: !618, line: 1208, baseType: !2453, size: 448, offset: 17664)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !972, file: !618, line: 1215, baseType: !416, size: 64, offset: 18112)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !972, file: !618, line: 1217, baseType: !416, size: 64, offset: 18176)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !972, file: !618, line: 1219, baseType: !416, size: 64, offset: 18240)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !972, file: !618, line: 1223, baseType: !2680, size: 64, offset: 18304)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2681, line: 99, baseType: !2682)
!2681 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2681, line: 99, size: 64, elements: !2683)
!2683 = !{!2684}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2682, file: !2681, line: 99, baseType: !1226, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !972, file: !618, line: 1225, baseType: !384, size: 32, offset: 18368)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !972, file: !618, line: 1226, baseType: !109, size: 32, offset: 18400)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !972, file: !618, line: 1227, baseType: !109, size: 32, offset: 18432)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !972, file: !618, line: 1231, baseType: !2689, size: 64, offset: 18496)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !618, line: 1231, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !972, file: !618, line: 1233, baseType: !162, size: 128, offset: 18560)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !972, file: !618, line: 1240, baseType: !2693, size: 64, offset: 18688)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !618, line: 62, flags: DIFlagFwdDecl)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !972, file: !618, line: 1242, baseType: !2696, size: 64, offset: 18752)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !618, line: 1242, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !972, file: !618, line: 1244, baseType: !162, size: 128, offset: 18816)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !972, file: !618, line: 1245, baseType: !2700, size: 64, offset: 18944)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !618, line: 51, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !972, file: !618, line: 1246, baseType: !643, size: 256, offset: 19008)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !972, file: !618, line: 1247, baseType: !7, size: 32, offset: 19264)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !972, file: !618, line: 1250, baseType: !2705, size: 64, offset: 19328)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !618, line: 57, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !972, file: !618, line: 1251, baseType: !643, size: 256, offset: 19392)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !972, file: !618, line: 1252, baseType: !162, size: 128, offset: 19648)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !972, file: !618, line: 1259, baseType: !1941, size: 64, offset: 19776)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !972, file: !618, line: 1260, baseType: !1432, size: 16, offset: 19840)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !972, file: !618, line: 1261, baseType: !1432, size: 16, offset: 19856)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !972, file: !618, line: 1314, baseType: !2713, size: 64, offset: 19904)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2715, line: 62, size: 256, align: 256, elements: !2716)
!2715 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2716 = !{!2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2714, file: !2715, line: 75, baseType: !413, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2714, file: !2715, line: 90, baseType: !413, size: 32, offset: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2714, file: !2715, line: 112, baseType: !417, size: 64, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2714, file: !2715, line: 132, baseType: !413, size: 32, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2714, file: !2715, line: 140, baseType: !413, size: 32, offset: 160)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2714, file: !2715, line: 149, baseType: !413, size: 32, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2714, file: !2715, line: 154, baseType: !2724, offset: 224)
!2724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, elements: !1364)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !972, file: !618, line: 1315, baseType: !412, size: 32, offset: 19968)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !972, file: !618, line: 1316, baseType: !412, size: 32, offset: 20000)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !972, file: !618, line: 1321, baseType: !312, size: 64, offset: 20032)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !972, file: !618, line: 1325, baseType: !109, size: 32, offset: 20096)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !972, file: !618, line: 1326, baseType: !109, size: 32, offset: 20128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !972, file: !618, line: 1327, baseType: !109, size: 32, offset: 20160)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !972, file: !618, line: 1328, baseType: !109, size: 32, offset: 20192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !972, file: !618, line: 1329, baseType: !956, size: 128, align: 64, offset: 20224)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !972, file: !618, line: 1332, baseType: !2734, size: 128, offset: 20352)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2735, line: 51, size: 128, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2736 = !{!2737, !2742, !2743}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2734, file: !2735, line: 60, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2739, line: 7, size: 64, elements: !2740)
!2739 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2740 = !{!2741}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2738, file: !2739, line: 12, baseType: !1223, size: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2734, file: !2735, line: 63, baseType: !1463, size: 8, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2734, file: !2735, line: 70, baseType: !1463, size: 8, offset: 72)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !972, file: !618, line: 1335, baseType: !1993, size: 64, offset: 20480)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !972, file: !618, line: 1337, baseType: !2746, size: 128, offset: 20544)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2735, line: 39, size: 128, elements: !2747)
!2747 = !{!2748, !2749, !2750}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2746, file: !2735, line: 40, baseType: !1770, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2746, file: !2735, line: 42, baseType: !413, size: 32, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2746, file: !2735, line: 43, baseType: !413, size: 32, offset: 96)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !972, file: !618, line: 1340, baseType: !2752, size: 64, offset: 20672)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !618, line: 69, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !972, file: !618, line: 1351, baseType: !109, size: 32, offset: 20736)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !972, file: !618, line: 1352, baseType: !109, size: 32, offset: 20768)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !972, file: !618, line: 1354, baseType: !312, size: 64, offset: 20800)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !972, file: !618, line: 1364, baseType: !416, size: 64, offset: 20864)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !972, file: !618, line: 1365, baseType: !416, size: 64, offset: 20928)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !972, file: !618, line: 1412, baseType: !312, size: 64, offset: 20992)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !972, file: !618, line: 1453, baseType: !2761, size: 64, offset: 21056)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !618, line: 1453, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !972, file: !618, line: 1457, baseType: !2764, size: 64, offset: 21120)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !2766)
!2766 = !{!2767, !2768, !2787, !2790, !2791, !2824, !2834}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2765, file: !68, line: 62, baseType: !67, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, scope: !2765, file: !68, line: 64, baseType: !2769, size: 192, offset: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2765, file: !68, line: 64, size: 192, elements: !2770)
!2770 = !{!2771, !2782}
!2771 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !68, line: 65, baseType: !2772, size: 192)
!2772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2769, file: !68, line: 65, size: 192, elements: !2773)
!2773 = !{!2774, !2781}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2772, file: !68, line: 66, baseType: !2775, size: 128)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2776, line: 50, size: 128, elements: !2777)
!2776 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2777 = !{!2778, !2779, !2780}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2775, file: !2776, line: 52, baseType: !312, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2775, file: !2776, line: 54, baseType: !7, size: 32, offset: 64)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2775, file: !2776, line: 55, baseType: !7, size: 32, offset: 96)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2772, file: !68, line: 67, baseType: !312, size: 64, offset: 128)
!2782 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !68, line: 70, baseType: !2783, size: 192)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2769, file: !68, line: 70, size: 192, elements: !2784)
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2783, file: !68, line: 71, baseType: !956, size: 128, align: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2783, file: !68, line: 72, baseType: !312, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2765, file: !68, line: 76, baseType: !2788, size: 64, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2765, file: !68, line: 77, baseType: !312, size: 64, offset: 320)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2765, file: !68, line: 79, baseType: !2792, size: 64, offset: 384)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2776, line: 25, size: 256, elements: !2794)
!2794 = !{!2795, !2801, !2805}
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !2793, file: !2776, line: 26, baseType: !2796, size: 128)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2793, file: !2776, line: 26, size: 128, elements: !2797)
!2797 = !{!2798, !2800}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2796, file: !2776, line: 27, baseType: !2799, size: 128)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !2324)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2796, file: !2776, line: 28, baseType: !2799, size: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2793, file: !2776, line: 31, baseType: !2802, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2804)
!2804 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2776, line: 23, flags: DIFlagFwdDecl)
!2805 = !DIDerivedType(tag: DW_TAG_member, scope: !2793, file: !2776, line: 33, baseType: !2806, size: 64, offset: 192)
!2806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2793, file: !2776, line: 33, size: 64, elements: !2807)
!2807 = !{!2808, !2814, !2819}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2806, file: !2776, line: 38, baseType: !2809, size: 64)
!2809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2806, file: !2776, line: 34, size: 64, elements: !2810)
!2810 = !{!2811, !2812, !2813}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2809, file: !2776, line: 35, baseType: !1406, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2809, file: !2776, line: 36, baseType: !220, size: 8, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2809, file: !2776, line: 37, baseType: !220, size: 8, offset: 40)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2806, file: !2776, line: 42, baseType: !2815, size: 16)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2806, file: !2776, line: 39, size: 16, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2815, file: !2776, line: 40, baseType: !220, size: 8)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2815, file: !2776, line: 41, baseType: !220, size: 8, offset: 8)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2806, file: !2776, line: 46, baseType: !2820, size: 16)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2806, file: !2776, line: 43, size: 16, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2820, file: !2776, line: 44, baseType: !220, size: 8)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2820, file: !2776, line: 45, baseType: !220, size: 8, offset: 8)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2765, file: !68, line: 81, baseType: !2825, size: 64, offset: 448)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !2827)
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2826, file: !68, line: 86, baseType: !2788, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2826, file: !68, line: 87, baseType: !312, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2826, file: !68, line: 88, baseType: !312, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2826, file: !68, line: 89, baseType: !312, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2826, file: !68, line: 90, baseType: !1463, size: 8, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2826, file: !68, line: 92, baseType: !2825, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2765, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !972, file: !618, line: 1463, baseType: !2836, offset: 21184)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !618, line: 739, elements: !547)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !972, file: !618, line: 1470, baseType: !956, size: 128, align: 64, offset: 21184)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !972, file: !618, line: 1471, baseType: !985, size: 32, offset: 21312)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !972, file: !618, line: 1472, baseType: !109, size: 32, offset: 21344)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !972, file: !618, line: 1474, baseType: !971, size: 64, offset: 21376)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !972, file: !618, line: 1475, baseType: !2842, size: 320, offset: 21440)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2843, line: 11, size: 320, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2844 = !{!2845, !2846, !2847, !2852}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2842, file: !2843, line: 16, baseType: !539, size: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2842, file: !2843, line: 17, baseType: !312, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2842, file: !2843, line: 18, baseType: !2848, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{null, !2851}
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2842, file: !2843, line: 19, baseType: !412, size: 32, offset: 256)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !972, file: !618, line: 1478, baseType: !2854, size: 64, offset: 21760)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1623, line: 49, size: 512, elements: !2856)
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2863, !2864, !2865, !2867}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2855, file: !1623, line: 50, baseType: !2854, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2855, file: !1623, line: 51, baseType: !334, size: 64, offset: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2855, file: !1623, line: 52, baseType: !312, size: 64, offset: 128)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2855, file: !1623, line: 53, baseType: !312, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2855, file: !1623, line: 54, baseType: !2862, size: 64, offset: 256)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2855, file: !1623, line: 56, baseType: !7, size: 32, offset: 320)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2855, file: !1623, line: 58, baseType: !7, size: 32, offset: 352)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2855, file: !1623, line: 59, baseType: !2866, size: 64, offset: 384)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !163, line: 159, baseType: !416)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2855, file: !1623, line: 60, baseType: !2132, size: 64, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !972, file: !618, line: 1482, baseType: !985, size: 32, offset: 21824)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !972, file: !618, line: 1489, baseType: !334, size: 64, offset: 21888)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !972, file: !618, line: 1504, baseType: !334, size: 64, offset: 21952)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !972, file: !618, line: 1505, baseType: !417, size: 64, offset: 22016)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !972, file: !618, line: 1506, baseType: !416, size: 64, offset: 22080)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !972, file: !618, line: 1507, baseType: !417, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !972, file: !618, line: 1508, baseType: !417, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !972, file: !618, line: 1509, baseType: !417, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !972, file: !618, line: 1510, baseType: !956, size: 128, align: 64, offset: 22208)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !972, file: !618, line: 1511, baseType: !109, size: 32, offset: 22336)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !972, file: !618, line: 1515, baseType: !2879, size: 64, offset: 22400)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !999, line: 56, size: 64, elements: !2880)
!2880 = !{!2881}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2879, file: !999, line: 57, baseType: !1002, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !972, file: !618, line: 1518, baseType: !2879, size: 64, offset: 22464)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !972, file: !618, line: 1528, baseType: !956, size: 128, align: 64, offset: 22528)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !972, file: !618, line: 1552, baseType: !2885, size: 35328, offset: 23040)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2886, line: 430, size: 35328, elements: !2887)
!2886 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2887 = !{!2888, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2917, !2918, !2919, !2920, !2921, !2922, !2925, !2926, !2927, !2928}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2885, file: !2886, line: 432, baseType: !2889, size: 192)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2890, size: 192, elements: !263)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2891, line: 16, size: 64, elements: !2892)
!2891 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2892 = !{!2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2890, file: !2891, line: 17, baseType: !230, size: 16)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2890, file: !2891, line: 18, baseType: !230, size: 16, offset: 16)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2890, file: !2891, line: 19, baseType: !230, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2890, file: !2891, line: 19, baseType: !230, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2890, file: !2891, line: 19, baseType: !230, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2890, file: !2891, line: 19, baseType: !230, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2890, file: !2891, line: 19, baseType: !230, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2890, file: !2891, line: 20, baseType: !230, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2890, file: !2891, line: 20, baseType: !230, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2890, file: !2891, line: 20, baseType: !230, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2890, file: !2891, line: 20, baseType: !230, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2890, file: !2891, line: 20, baseType: !230, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2890, file: !2891, line: 20, baseType: !230, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2885, file: !2886, line: 436, baseType: !312, size: 64, offset: 192)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2885, file: !2886, line: 440, baseType: !232, size: 16, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2885, file: !2886, line: 441, baseType: !232, size: 16, offset: 272)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2885, file: !2886, line: 442, baseType: !232, size: 16, offset: 288)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2885, file: !2886, line: 443, baseType: !232, size: 16, offset: 304)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2885, file: !2886, line: 447, baseType: !312, size: 64, offset: 320)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2885, file: !2886, line: 448, baseType: !312, size: 64, offset: 384)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2885, file: !2886, line: 459, baseType: !2914, size: 256, offset: 448)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2915, size: 256, elements: !1351)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2886, line: 428, flags: DIFlagFwdDecl)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2885, file: !2886, line: 461, baseType: !312, size: 64, offset: 704)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2885, file: !2886, line: 463, baseType: !312, size: 64, offset: 768)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2885, file: !2886, line: 465, baseType: !312, size: 64, offset: 832)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2885, file: !2886, line: 466, baseType: !312, size: 64, offset: 896)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2885, file: !2886, line: 467, baseType: !312, size: 64, offset: 960)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2885, file: !2886, line: 473, baseType: !2923, size: 64, offset: 1024)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2886, line: 10, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2885, file: !2886, line: 480, baseType: !312, size: 64, offset: 1088)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2885, file: !2886, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2885, file: !2886, line: 491, baseType: !412, size: 32, offset: 1184)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2885, file: !2886, line: 501, baseType: !2929, size: 33792, offset: 1536)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2930, line: 448, size: 33792, elements: !2931)
!2930 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2931 = !{!2932, !2933, !2934, !3096, !3097, !3103, !3104}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2929, file: !2930, line: 461, baseType: !7, size: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2929, file: !2930, line: 468, baseType: !312, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2929, file: !2930, line: 476, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2930, line: 356, size: 33280, align: 512, elements: !2937)
!2937 = !{!2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2936, file: !2930, line: 358, baseType: !7, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2936, file: !2930, line: 361, baseType: !7, size: 32, offset: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2936, file: !2930, line: 364, baseType: !416, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2936, file: !2930, line: 367, baseType: !416, size: 64, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2936, file: !2930, line: 370, baseType: !416, size: 64, offset: 192)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2936, file: !2930, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2936, file: !2930, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2936, file: !2930, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2936, file: !2930, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2936, file: !2930, line: 397, baseType: !2948, size: 32768, offset: 512)
!2948 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2930, line: 348, size: 32768, elements: !2949)
!2949 = !{!2950, !2965, !3002, !3079, !3092}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2948, file: !2930, line: 349, baseType: !2951, size: 896)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2930, line: 12, size: 896, elements: !2952)
!2952 = !{!2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2964}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2951, file: !2930, line: 13, baseType: !412, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2951, file: !2930, line: 14, baseType: !412, size: 32, offset: 32)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2951, file: !2930, line: 15, baseType: !412, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2951, file: !2930, line: 16, baseType: !412, size: 32, offset: 96)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2951, file: !2930, line: 17, baseType: !412, size: 32, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2951, file: !2930, line: 18, baseType: !412, size: 32, offset: 160)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2951, file: !2930, line: 19, baseType: !412, size: 32, offset: 192)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2951, file: !2930, line: 22, baseType: !2961, size: 640, offset: 224)
!2961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 640, elements: !2962)
!2962 = !{!2963}
!2963 = !DISubrange(count: 20)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2951, file: !2930, line: 25, baseType: !412, size: 32, offset: 864)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2948, file: !2930, line: 350, baseType: !2966, size: 4096, align: 128)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2930, line: 34, size: 4096, align: 128, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2987, !2988, !2989, !2991, !2993, !2997}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2966, file: !2930, line: 35, baseType: !230, size: 16)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2966, file: !2930, line: 36, baseType: !230, size: 16, offset: 16)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2966, file: !2930, line: 37, baseType: !230, size: 16, offset: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2966, file: !2930, line: 38, baseType: !230, size: 16, offset: 48)
!2972 = !DIDerivedType(tag: DW_TAG_member, scope: !2966, file: !2930, line: 39, baseType: !2973, size: 128, offset: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2966, file: !2930, line: 39, size: 128, elements: !2974)
!2974 = !{!2975, !2980}
!2975 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !2930, line: 40, baseType: !2976, size: 128)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !2930, line: 40, size: 128, elements: !2977)
!2977 = !{!2978, !2979}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2976, file: !2930, line: 41, baseType: !416, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2976, file: !2930, line: 42, baseType: !416, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, scope: !2973, file: !2930, line: 44, baseType: !2981, size: 128)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2973, file: !2930, line: 44, size: 128, elements: !2982)
!2982 = !{!2983, !2984, !2985, !2986}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2981, file: !2930, line: 45, baseType: !412, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2981, file: !2930, line: 46, baseType: !412, size: 32, offset: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2981, file: !2930, line: 47, baseType: !412, size: 32, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2981, file: !2930, line: 48, baseType: !412, size: 32, offset: 96)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2966, file: !2930, line: 51, baseType: !412, size: 32, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2966, file: !2930, line: 52, baseType: !412, size: 32, offset: 224)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2966, file: !2930, line: 55, baseType: !2990, size: 1024, offset: 256)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 1024, elements: !425)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2966, file: !2930, line: 58, baseType: !2992, size: 2048, offset: 1280)
!2992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 2048, elements: !267)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2966, file: !2930, line: 60, baseType: !2994, size: 384, offset: 3328)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 384, elements: !2995)
!2995 = !{!2996}
!2996 = !DISubrange(count: 12)
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !2966, file: !2930, line: 62, baseType: !2998, size: 384, offset: 3712)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2966, file: !2930, line: 62, size: 384, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2998, file: !2930, line: 63, baseType: !2994, size: 384)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2998, file: !2930, line: 64, baseType: !2994, size: 384)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2948, file: !2930, line: 351, baseType: !3003, size: 1088)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2930, line: 79, size: 1088, elements: !3004)
!3004 = !{!3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3078}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3003, file: !2930, line: 80, baseType: !412, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3003, file: !2930, line: 81, baseType: !412, size: 32, offset: 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3003, file: !2930, line: 82, baseType: !412, size: 32, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3003, file: !2930, line: 83, baseType: !412, size: 32, offset: 96)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3003, file: !2930, line: 84, baseType: !412, size: 32, offset: 128)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3003, file: !2930, line: 85, baseType: !412, size: 32, offset: 160)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3003, file: !2930, line: 86, baseType: !412, size: 32, offset: 192)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3003, file: !2930, line: 88, baseType: !2961, size: 640, offset: 224)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3003, file: !2930, line: 89, baseType: !220, size: 8, offset: 864)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3003, file: !2930, line: 90, baseType: !220, size: 8, offset: 872)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3003, file: !2930, line: 91, baseType: !220, size: 8, offset: 880)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3003, file: !2930, line: 92, baseType: !220, size: 8, offset: 888)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3003, file: !2930, line: 93, baseType: !220, size: 8, offset: 896)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3003, file: !2930, line: 94, baseType: !220, size: 8, offset: 904)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3003, file: !2930, line: 95, baseType: !3020, size: 64, offset: 960)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3022, line: 11, size: 128, elements: !3023)
!3022 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3023 = !{!3024, !3025}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3021, file: !3022, line: 12, baseType: !298, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3021, file: !3022, line: 13, baseType: !3026, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3028, line: 103, size: 1344, elements: !3029)
!3028 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3029 = !{!3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3058, !3059, !3060}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3027, file: !3028, line: 109, baseType: !312, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3027, file: !3028, line: 110, baseType: !312, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3027, file: !3028, line: 111, baseType: !312, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3027, file: !3028, line: 112, baseType: !312, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3027, file: !3028, line: 113, baseType: !312, size: 64, offset: 256)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3027, file: !3028, line: 114, baseType: !312, size: 64, offset: 320)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3027, file: !3028, line: 117, baseType: !312, size: 64, offset: 384)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3027, file: !3028, line: 118, baseType: !312, size: 64, offset: 448)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3027, file: !3028, line: 119, baseType: !312, size: 64, offset: 512)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3027, file: !3028, line: 120, baseType: !312, size: 64, offset: 576)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3027, file: !3028, line: 121, baseType: !312, size: 64, offset: 640)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3027, file: !3028, line: 122, baseType: !312, size: 64, offset: 704)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3027, file: !3028, line: 123, baseType: !312, size: 64, offset: 768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3027, file: !3028, line: 124, baseType: !312, size: 64, offset: 832)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3027, file: !3028, line: 125, baseType: !312, size: 64, offset: 896)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3027, file: !3028, line: 139, baseType: !312, size: 64, offset: 960)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3027, file: !3028, line: 142, baseType: !312, size: 64, offset: 1024)
!3047 = !DIDerivedType(tag: DW_TAG_member, scope: !3027, file: !3028, line: 144, baseType: !3048, size: 64, offset: 1088)
!3048 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3027, file: !3028, line: 144, size: 64, elements: !3049)
!3049 = !{!3050, !3051, !3052}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3048, file: !3028, line: 146, baseType: !230, size: 16)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3048, file: !3028, line: 148, baseType: !416, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3048, file: !3028, line: 150, baseType: !3053, size: 64)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3028, line: 59, size: 64, elements: !3054)
!3054 = !{!3055, !3056, !3057}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3053, file: !3028, line: 61, baseType: !416, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3053, file: !3028, line: 63, baseType: !416, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3053, file: !3028, line: 65, baseType: !416, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3027, file: !3028, line: 153, baseType: !312, size: 64, offset: 1152)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3027, file: !3028, line: 154, baseType: !312, size: 64, offset: 1216)
!3060 = !DIDerivedType(tag: DW_TAG_member, scope: !3027, file: !3028, line: 156, baseType: !3061, size: 64, offset: 1280)
!3061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3027, file: !3028, line: 156, size: 64, elements: !3062)
!3062 = !{!3063, !3064, !3065}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3061, file: !3028, line: 158, baseType: !230, size: 16)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3061, file: !3028, line: 160, baseType: !416, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3061, file: !3028, line: 162, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3028, line: 69, size: 64, elements: !3067)
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3066, file: !3028, line: 71, baseType: !416, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3066, file: !3028, line: 73, baseType: !416, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3066, file: !3028, line: 75, baseType: !416, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3066, file: !3028, line: 77, baseType: !416, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3066, file: !3028, line: 80, baseType: !416, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3066, file: !3028, line: 83, baseType: !416, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3066, file: !3028, line: 86, baseType: !416, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3066, file: !3028, line: 88, baseType: !416, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3066, file: !3028, line: 93, baseType: !416, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3066, file: !3028, line: 100, baseType: !416, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3003, file: !2930, line: 96, baseType: !412, size: 32, offset: 1024)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2948, file: !2930, line: 352, baseType: !3080, size: 4608, align: 512)
!3080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2930, line: 333, size: 4608, align: 512, elements: !3081)
!3081 = !{!3082, !3083, !3090}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3080, file: !2930, line: 334, baseType: !2966, size: 4096, align: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3080, file: !2930, line: 335, baseType: !3084, size: 512, offset: 4096)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2930, line: 312, size: 512, elements: !3085)
!3085 = !{!3086, !3087, !3088}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3084, file: !2930, line: 313, baseType: !416, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3084, file: !2930, line: 314, baseType: !416, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3084, file: !2930, line: 315, baseType: !3089, size: 384, offset: 128)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !1450)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3080, file: !2930, line: 336, baseType: !3091, offset: 4608)
!3091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !1364)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2948, file: !2930, line: 353, baseType: !3093, size: 32768)
!3093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 32768, elements: !3094)
!3094 = !{!3095}
!3095 = !DISubrange(count: 4096)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2929, file: !2930, line: 484, baseType: !2935, size: 64, offset: 192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2929, file: !2930, line: 491, baseType: !3098, size: 128, offset: 256)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2930, line: 404, size: 128, elements: !3099)
!3099 = !{!3100, !3101, !3102}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3098, file: !2930, line: 424, baseType: !416, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3098, file: !2930, line: 432, baseType: !7, size: 32, offset: 64)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3098, file: !2930, line: 440, baseType: !7, size: 32, offset: 96)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2929, file: !2930, line: 498, baseType: !3098, size: 128, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2929, file: !2930, line: 508, baseType: !2936, size: 33280, align: 512, offset: 512)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !939, file: !940, line: 16, baseType: !949, size: 192, offset: 512)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !939, file: !940, line: 17, baseType: !212, size: 32, offset: 704)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !495, file: !14, line: 1240, baseType: !334, size: 64, offset: 6912)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !495, file: !14, line: 1243, baseType: !412, size: 32, offset: 6976)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !495, file: !14, line: 1245, baseType: !696, size: 64, offset: 7040)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !495, file: !14, line: 1246, baseType: !696, size: 64, offset: 7104)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !495, file: !14, line: 1248, baseType: !413, size: 32, offset: 7168)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !495, file: !14, line: 1249, baseType: !3113, size: 64, offset: 7232)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !495, file: !14, line: 1252, baseType: !3116, size: 256, offset: 7296)
!3116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !425)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !495, file: !14, line: 1253, baseType: !3118, size: 128, offset: 7552)
!3118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3119, line: 21, baseType: !3120)
!3119 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3119, line: 19, size: 128, elements: !3121)
!3121 = !{!3122}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3120, file: !3119, line: 20, baseType: !3123, size: 128)
!3123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, elements: !2324)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !495, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !495, file: !14, line: 1261, baseType: !643, size: 256, offset: 7744)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !495, file: !14, line: 1267, baseType: !181, size: 64, offset: 8000)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !495, file: !14, line: 1269, baseType: !441, size: 64, offset: 8064)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !495, file: !14, line: 1271, baseType: !3129, size: 448, offset: 8128)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !705, line: 63, size: 448, elements: !3130)
!3130 = !{!3131, !3136, !3137, !3138, !3139, !3140, !3141}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3129, file: !705, line: 64, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!312, !3135, !703}
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3129, file: !705, line: 66, baseType: !3132, size: 64, offset: 64)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3129, file: !705, line: 69, baseType: !298, size: 64, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3129, file: !705, line: 70, baseType: !109, size: 32, offset: 192)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3129, file: !705, line: 71, baseType: !7, size: 32, offset: 224)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3129, file: !705, line: 74, baseType: !162, size: 128, offset: 256)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3129, file: !705, line: 85, baseType: !3142, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !495, file: !14, line: 1274, baseType: !647, size: 64, offset: 8576)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !495, file: !14, line: 1280, baseType: !647, size: 64, offset: 8640)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !495, file: !14, line: 1283, baseType: !109, size: 32, offset: 8704)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !495, file: !14, line: 1286, baseType: !2043, size: 32, offset: 8736)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !495, file: !14, line: 1289, baseType: !3148, size: 64, offset: 8768)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2172, line: 18, flags: DIFlagFwdDecl)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !495, file: !14, line: 1290, baseType: !535, size: 64, offset: 8832)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !495, file: !14, line: 1297, baseType: !1546, size: 64, offset: 8896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !495, file: !14, line: 1304, baseType: !3153, size: 64, offset: 8960)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3154, line: 49, size: 64, elements: !3155)
!3154 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3155 = !{!3156}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3153, file: !3154, line: 50, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3154, line: 41, size: 512, align: 512, elements: !3159)
!3159 = !{!3160, !3161, !3166}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3158, file: !3154, line: 43, baseType: !192, size: 32)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3158, file: !3154, line: 45, baseType: !3162, size: 192, offset: 64)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3154, line: 29, size: 192, elements: !3163)
!3163 = !{!3164, !3165}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3162, file: !3154, line: 30, baseType: !162, size: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3162, file: !3154, line: 32, baseType: !298, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3158, file: !3154, line: 46, baseType: !298, size: 64, offset: 256)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !495, file: !14, line: 1305, baseType: !3153, size: 64, offset: 9024)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !495, file: !14, line: 1306, baseType: !956, size: 128, align: 64, offset: 9088)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !495, file: !14, line: 1307, baseType: !2171, size: 256, offset: 9216)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !495, file: !14, line: 1309, baseType: !643, size: 256, offset: 9472)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !495, file: !14, line: 1314, baseType: !109, size: 32, offset: 9728)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !495, file: !14, line: 1317, baseType: !192, size: 32, align: 512, offset: 10240)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !495, file: !14, line: 1318, baseType: !162, size: 128, offset: 10304)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !495, file: !14, line: 1320, baseType: !192, size: 32, offset: 10432)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !495, file: !14, line: 1321, baseType: !162, size: 128, offset: 10496)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !489, file: !490, line: 73, baseType: !109, size: 32, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !489, file: !490, line: 74, baseType: !3178, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1388, line: 42, flags: DIFlagFwdDecl)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !443, file: !380, line: 141, baseType: !3182, size: 64, offset: 704)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!109, !766, !1463}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !443, file: !380, line: 142, baseType: !3186, size: 64, offset: 768)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!378, !378, !3189}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !379, file: !380, line: 96, baseType: !494, size: 64, offset: 832)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !379, file: !380, line: 97, baseType: !312, size: 64, offset: 896)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !379, file: !380, line: 98, baseType: !334, size: 64, offset: 960)
!3194 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !380, line: 100, baseType: !3195, size: 128, offset: 1024)
!3195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 100, size: 128, elements: !3196)
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3195, file: !380, line: 101, baseType: !162, size: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3195, file: !380, line: 102, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !379, file: !380, line: 104, baseType: !162, size: 128, offset: 1152)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !379, file: !380, line: 105, baseType: !162, size: 128, offset: 1280)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !379, file: !380, line: 113, baseType: !3203, size: 128, offset: 1408)
!3203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 109, size: 128, elements: !3204)
!3204 = !{!3205, !3206, !3207}
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3203, file: !380, line: 110, baseType: !539, size: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3203, file: !380, line: 111, baseType: !394, size: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3203, file: !380, line: 112, baseType: !956, size: 128, align: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !372, file: !14, line: 1968, baseType: !3209, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!181, !378, !343, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3214, line: 10, size: 128, elements: !3215)
!3214 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3215 = !{!3216, !3220}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3213, file: !3214, line: 11, baseType: !3217, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{null, !334}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3213, file: !3214, line: 12, baseType: !334, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !372, file: !14, line: 1969, baseType: !3222, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!109, !3178, !343, !109}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !372, file: !14, line: 1970, baseType: !3226, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!366, !343, !109, !1463}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !372, file: !14, line: 1972, baseType: !3230, size: 64, offset: 256)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!109, !378, !262, !109}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !372, file: !14, line: 1974, baseType: !3234, size: 64, offset: 320)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{!109, !3178, !343, !378, !304, !1463}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !372, file: !14, line: 1976, baseType: !3238, size: 64, offset: 384)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!109, !378, !343, !378}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !372, file: !14, line: 1977, baseType: !3242, size: 64, offset: 448)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!109, !343, !378}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !372, file: !14, line: 1978, baseType: !3246, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!109, !3178, !343, !378, !181}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !372, file: !14, line: 1980, baseType: !3250, size: 64, offset: 576)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!109, !3178, !343, !378, !304}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !372, file: !14, line: 1982, baseType: !3242, size: 64, offset: 640)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !372, file: !14, line: 1983, baseType: !3255, size: 64, offset: 704)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!109, !3178, !343, !378, !304, !499}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !372, file: !14, line: 1985, baseType: !3259, size: 64, offset: 768)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!109, !3178, !343, !378, !343, !378, !7}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !372, file: !14, line: 1987, baseType: !3263, size: 64, offset: 832)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!109, !3178, !378, !3266}
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3268)
!3268 = !{!3269, !3270, !3271, !3281, !3290, !3291, !3296, !3297, !3298}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3267, file: !14, line: 227, baseType: !7, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3267, file: !14, line: 228, baseType: !304, size: 16, offset: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, scope: !3267, file: !14, line: 241, baseType: !3272, size: 32, offset: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3267, file: !14, line: 241, size: 32, elements: !3273)
!3273 = !{!3274, !3275}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3272, file: !14, line: 242, baseType: !349, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3272, file: !14, line: 243, baseType: !3276, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3277, line: 16, baseType: !3278)
!3277 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3277, line: 14, size: 32, elements: !3279)
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3278, file: !3277, line: 15, baseType: !354, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, scope: !3267, file: !14, line: 245, baseType: !3282, size: 32, offset: 96)
!3282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3267, file: !14, line: 245, size: 32, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3282, file: !14, line: 246, baseType: !358, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3282, file: !14, line: 247, baseType: !3286, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3277, line: 20, baseType: !3287)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3277, line: 18, size: 32, elements: !3288)
!3288 = !{!3289}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3287, file: !3277, line: 19, baseType: !362, size: 32)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3267, file: !14, line: 249, baseType: !504, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3267, file: !14, line: 250, baseType: !3292, size: 128, offset: 192)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !697, line: 13, size: 128, elements: !3293)
!3293 = !{!3294, !3295}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3292, file: !697, line: 14, baseType: !696, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3292, file: !697, line: 15, baseType: !298, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3267, file: !14, line: 251, baseType: !3292, size: 128, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3267, file: !14, line: 252, baseType: !3292, size: 128, offset: 448)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3267, file: !14, line: 259, baseType: !1302, size: 64, offset: 576)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !372, file: !14, line: 1988, baseType: !3300, size: 64, offset: 896)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!109, !3178, !766, !3303, !412, !7}
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3305, line: 22, size: 1280, elements: !3306)
!3305 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3306 = !{!3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327}
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3304, file: !3305, line: 23, baseType: !412, size: 32)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3304, file: !3305, line: 24, baseType: !304, size: 16, offset: 32)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3304, file: !3305, line: 25, baseType: !7, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3304, file: !3305, line: 26, baseType: !1428, size: 32, offset: 96)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3304, file: !3305, line: 27, baseType: !416, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3304, file: !3305, line: 28, baseType: !416, size: 64, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3304, file: !3305, line: 41, baseType: !416, size: 64, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3304, file: !3305, line: 42, baseType: !499, size: 32, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3304, file: !3305, line: 43, baseType: !499, size: 32, offset: 352)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3304, file: !3305, line: 44, baseType: !349, size: 32, offset: 384)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3304, file: !3305, line: 45, baseType: !358, size: 32, offset: 416)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3304, file: !3305, line: 46, baseType: !504, size: 64, offset: 448)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3304, file: !3305, line: 47, baseType: !3292, size: 128, offset: 512)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3304, file: !3305, line: 48, baseType: !3292, size: 128, offset: 640)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3304, file: !3305, line: 49, baseType: !3292, size: 128, offset: 768)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3304, file: !3305, line: 50, baseType: !3292, size: 128, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3304, file: !3305, line: 51, baseType: !416, size: 64, offset: 1024)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3304, file: !3305, line: 52, baseType: !416, size: 64, offset: 1088)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3304, file: !3305, line: 53, baseType: !412, size: 32, offset: 1152)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3304, file: !3305, line: 54, baseType: !412, size: 32, offset: 1184)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3304, file: !3305, line: 55, baseType: !416, size: 64, offset: 1216)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !372, file: !14, line: 1990, baseType: !3329, size: 64, offset: 960)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DISubroutineType(types: !3331)
!3331 = !{!294, !378, !262, !309}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !372, file: !14, line: 1991, baseType: !3333, size: 64, offset: 1024)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!109, !343, !3336, !416, !416}
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !372, file: !14, line: 1993, baseType: !3339, size: 64, offset: 1088)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!109, !343, !109}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !372, file: !14, line: 1994, baseType: !3343, size: 64, offset: 1152)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!109, !343, !378, !1302, !7, !304}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !372, file: !14, line: 1997, baseType: !3347, size: 64, offset: 1216)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DISubroutineType(types: !3349)
!3349 = !{!109, !3178, !343, !1302, !304}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !372, file: !14, line: 1999, baseType: !3351, size: 64, offset: 1280)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!366, !3178, !378, !109}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !372, file: !14, line: 2001, baseType: !3355, size: 64, offset: 1344)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!109, !3178, !378, !366, !109}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !372, file: !14, line: 2003, baseType: !3359, size: 64, offset: 1408)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!109, !3178, !378, !3362}
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !372, file: !14, line: 2005, baseType: !3365, size: 64, offset: 1472)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!109, !378, !3362}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !372, file: !14, line: 2006, baseType: !3369, size: 64, offset: 1536)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!3372, !343}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3374)
!3374 = !{!3375, !3382}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3373, file: !14, line: 3193, baseType: !3376, size: 128)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3377, line: 296, size: 128, elements: !3378)
!3377 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3378 = !{!3379, !3380, !3381}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3376, file: !3377, line: 297, baseType: !192, size: 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3376, file: !3377, line: 299, baseType: !708, size: 32, offset: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3376, file: !3377, line: 300, baseType: !334, size: 64, offset: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3373, file: !14, line: 3194, baseType: !412, size: 32, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !344, file: !14, line: 655, baseType: !494, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !344, file: !14, line: 656, baseType: !339, size: 64, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !344, file: !14, line: 659, baseType: !334, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !344, file: !14, line: 663, baseType: !312, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !14, line: 671, baseType: !3388, size: 32, offset: 704)
!3388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !14, line: 671, size: 32, elements: !3389)
!3389 = !{!3390, !3392}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3388, file: !14, line: 672, baseType: !3391, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3388, file: !14, line: 673, baseType: !7, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !344, file: !14, line: 675, baseType: !499, size: 32, offset: 736)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !344, file: !14, line: 676, baseType: !504, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !344, file: !14, line: 677, baseType: !3292, size: 128, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !344, file: !14, line: 678, baseType: !3292, size: 128, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !344, file: !14, line: 679, baseType: !3292, size: 128, offset: 1088)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !344, file: !14, line: 680, baseType: !192, size: 32, offset: 1216)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !344, file: !14, line: 681, baseType: !232, size: 16, offset: 1248)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !344, file: !14, line: 682, baseType: !220, size: 8, offset: 1264)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !344, file: !14, line: 683, baseType: !220, size: 8, offset: 1272)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !344, file: !14, line: 684, baseType: !844, size: 64, offset: 1280)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !344, file: !14, line: 691, baseType: !312, size: 64, offset: 1344)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !344, file: !14, line: 692, baseType: !856, size: 320, offset: 1408)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !344, file: !14, line: 694, baseType: !312, size: 64, offset: 1728)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !344, file: !14, line: 695, baseType: !312, size: 64, offset: 1792)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !344, file: !14, line: 697, baseType: !539, size: 128, offset: 1856)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !344, file: !14, line: 698, baseType: !162, size: 128, offset: 1984)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !344, file: !14, line: 707, baseType: !162, size: 128, offset: 2112)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !344, file: !14, line: 708, baseType: !162, size: 128, offset: 2240)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !14, line: 709, baseType: !3412, size: 128, offset: 2368)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !14, line: 709, size: 128, elements: !3413)
!3413 = !{!3414, !3415}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3412, file: !14, line: 710, baseType: !535, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3412, file: !14, line: 711, baseType: !956, size: 128, align: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !344, file: !14, line: 713, baseType: !649, size: 64, offset: 2496)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !344, file: !14, line: 714, baseType: !649, size: 64, offset: 2560)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !344, file: !14, line: 715, baseType: !212, size: 32, offset: 2624)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !344, file: !14, line: 716, baseType: !212, size: 32, offset: 2656)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !344, file: !14, line: 717, baseType: !212, size: 32, offset: 2688)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !344, file: !14, line: 719, baseType: !212, size: 32, offset: 2720)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !14, line: 721, baseType: !3423, size: 64, offset: 2752)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !14, line: 721, size: 64, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3423, file: !14, line: 722, baseType: !1577, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3423, file: !14, line: 723, baseType: !566, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !344, file: !14, line: 725, baseType: !3428, size: 64, offset: 2816)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !344, file: !14, line: 726, baseType: !340, size: 1536, align: 64, offset: 2880)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !344, file: !14, line: 727, baseType: !162, size: 128, offset: 4416)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !344, file: !14, line: 728, baseType: !3433, size: 64, offset: 4544)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !14, line: 728, size: 64, elements: !3434)
!3434 = !{!3435, !3436, !3439, !3440}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3433, file: !14, line: 729, baseType: !1993, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3433, file: !14, line: 730, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3433, file: !14, line: 731, baseType: !262, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3433, file: !14, line: 732, baseType: !7, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !344, file: !14, line: 735, baseType: !413, size: 32, offset: 4608)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !344, file: !14, line: 738, baseType: !413, size: 32, offset: 4640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !344, file: !14, line: 739, baseType: !3113, size: 64, offset: 4672)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !344, file: !14, line: 750, baseType: !334, size: 64, offset: 4736)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !340, file: !14, line: 474, baseType: !3376, size: 128, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !340, file: !14, line: 475, baseType: !856, size: 320, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !340, file: !14, line: 476, baseType: !708, size: 32, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !340, file: !14, line: 477, baseType: !212, size: 32, offset: 544)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !340, file: !14, line: 482, baseType: !1158, size: 128, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !340, file: !14, line: 483, baseType: !312, size: 64, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !340, file: !14, line: 484, baseType: !312, size: 64, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !340, file: !14, line: 485, baseType: !3453, size: 64, offset: 832)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3456)
!3456 = !{!3457, !3461, !3531, !3535, !3539, !3545, !3549, !3553, !3558, !3562, !3566, !3570, !3571, !3575, !3579, !3583, !3588, !3592, !3599, !3600}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3455, file: !14, line: 405, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!109, !1770, !578}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3455, file: !14, line: 406, baseType: !3462, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!109, !1302, !3465}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !38, line: 293, size: 1536, elements: !3467)
!3467 = !{!3468, !3498, !3512}
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !38, line: 295, baseType: !3469, size: 512)
!3469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !38, line: 295, size: 512, elements: !3470)
!3470 = !{!3471, !3497}
!3471 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !38, line: 296, baseType: !3472, size: 448)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3469, file: !38, line: 296, size: 448, elements: !3473)
!3473 = !{!3474, !3475, !3484, !3485, !3486, !3495, !3496}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3472, file: !38, line: 298, baseType: !312, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !38, line: 299, baseType: !3476, size: 128, offset: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3472, file: !38, line: 299, size: 128, elements: !3477)
!3477 = !{!3478, !3479}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3476, file: !38, line: 300, baseType: !162, size: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !38, line: 302, baseType: !3480, size: 128)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !38, line: 302, size: 128, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3480, file: !38, line: 303, baseType: !334, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3480, file: !38, line: 305, baseType: !7, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3472, file: !38, line: 310, baseType: !339, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3472, file: !38, line: 311, baseType: !312, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !38, line: 312, baseType: !3487, size: 64, offset: 320)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3472, file: !38, line: 312, size: 64, elements: !3488)
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3487, file: !38, line: 313, baseType: !334, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3487, file: !38, line: 314, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !38, line: 257, baseType: !3492)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 255, size: 64, elements: !3493)
!3493 = !{!3494}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3492, file: !38, line: 256, baseType: !312, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3472, file: !38, line: 316, baseType: !212, size: 32, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3472, file: !38, line: 317, baseType: !212, size: 32, offset: 416)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3469, file: !38, line: 323, baseType: !1771, size: 512, align: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !38, line: 325, baseType: !3499, size: 512, offset: 512)
!3499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !38, line: 325, size: 512, elements: !3500)
!3500 = !{!3501, !3511}
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !38, line: 326, baseType: !3502, size: 320)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3499, file: !38, line: 326, size: 320, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3502, file: !38, line: 327, baseType: !312, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3502, file: !38, line: 328, baseType: !312, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3502, file: !38, line: 329, baseType: !312, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3502, file: !38, line: 331, baseType: !212, size: 32, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3502, file: !38, line: 332, baseType: !212, size: 32, offset: 224)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3502, file: !38, line: 333, baseType: !212, size: 32, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3502, file: !38, line: 335, baseType: !7, size: 32, offset: 288)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3499, file: !38, line: 339, baseType: !1771, size: 512, align: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !38, line: 341, baseType: !3513, size: 512, offset: 1024)
!3513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !38, line: 341, size: 512, elements: !3514)
!3514 = !{!3515, !3524, !3530}
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !3513, file: !38, line: 342, baseType: !3516, size: 384)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3513, file: !38, line: 342, size: 384, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3516, file: !38, line: 343, baseType: !312, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3516, file: !38, line: 344, baseType: !312, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3516, file: !38, line: 346, baseType: !334, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3516, file: !38, line: 347, baseType: !334, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3516, file: !38, line: 348, baseType: !334, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3516, file: !38, line: 349, baseType: !334, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3513, file: !38, line: 352, baseType: !3525, size: 256)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3513, file: !38, line: 352, size: 256, elements: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3525, file: !38, line: 353, baseType: !312, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3525, file: !38, line: 354, baseType: !312, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3525, file: !38, line: 356, baseType: !162, size: 128, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3513, file: !38, line: 359, baseType: !1771, size: 512, align: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3455, file: !14, line: 409, baseType: !3532, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!109, !339, !578}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3455, file: !14, line: 412, baseType: !3536, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!1463, !339, !3465}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3455, file: !14, line: 414, baseType: !3540, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3455, file: !14, line: 416, baseType: !3546, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!109, !1302, !339, !504, !7, !2862, !2008}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3455, file: !14, line: 419, baseType: !3550, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!109, !1302, !339, !504, !7, !7, !1770, !334}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3455, file: !14, line: 424, baseType: !3554, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!3557, !339, !3557}
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !163, line: 131, baseType: !416)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3455, file: !14, line: 425, baseType: !3559, size: 64, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{null, !3465, !309, !309}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3455, file: !14, line: 426, baseType: !3563, size: 64, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!1463, !3465, !708}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3455, file: !14, line: 427, baseType: !3567, size: 64, offset: 640)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{null, !3465}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3455, file: !14, line: 428, baseType: !1596, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3455, file: !14, line: 433, baseType: !3572, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!109, !339, !3465, !3465, !74}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3455, file: !14, line: 435, baseType: !3576, size: 64, offset: 832)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!109, !3465}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3455, file: !14, line: 436, baseType: !3580, size: 64, offset: 896)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!1463, !3465, !309, !309}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3455, file: !14, line: 438, baseType: !3584, size: 64, offset: 960)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3465, !3587, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3455, file: !14, line: 439, baseType: !3589, size: 64, offset: 1024)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!109, !339, !1770}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3455, file: !14, line: 442, baseType: !3593, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!109, !3596, !1302, !3598}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3455, file: !14, line: 444, baseType: !2000, size: 64, offset: 1152)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3455, file: !14, line: 445, baseType: !3601, size: 64, offset: 1216)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!109, !1599, !1621}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !14, line: 486, baseType: !312, size: 64, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !340, file: !14, line: 487, baseType: !856, size: 320, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !340, file: !14, line: 488, baseType: !2043, size: 32, offset: 1280)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !340, file: !14, line: 489, baseType: !192, size: 32, offset: 1312)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !340, file: !14, line: 490, baseType: !162, size: 128, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !340, file: !14, line: 491, baseType: !334, size: 64, offset: 1472)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !329, file: !288, line: 180, baseType: !3611, size: 64, offset: 320)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!294, !1302, !185, !328, !262, !504, !309}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !329, file: !288, line: 182, baseType: !3611, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !329, file: !288, line: 184, baseType: !3616, size: 64, offset: 448)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!109, !1302, !185, !328, !1661}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !317, file: !288, line: 90, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !317, file: !288, line: 91, baseType: !3622, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !278, file: !178, line: 120, baseType: !3624, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!3627, !245}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3629)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !3630)
!3630 = !{!3631, !3632, !3636, !3640, !3646, !3650}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3629, file: !82, line: 40, baseType: !81, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3629, file: !82, line: 41, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!1463}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3629, file: !82, line: 42, baseType: !3637, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!334}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3629, file: !82, line: 43, baseType: !3641, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!2132, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3629, file: !82, line: 44, baseType: !3647, size: 64, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!2132}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3629, file: !82, line: 45, baseType: !3217, size: 64, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !278, file: !178, line: 121, baseType: !3652, size: 64, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!2132, !245}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !278, file: !178, line: 122, baseType: !3656, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !245, !3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !177, file: !178, line: 70, baseType: !3662, size: 64, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !519, line: 190, size: 1152, elements: !3664)
!3664 = !{!3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3756, !3757, !3758, !3759, !3760, !3763}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3663, file: !519, line: 191, baseType: !212, size: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3663, file: !519, line: 192, baseType: !212, size: 32, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3663, file: !519, line: 202, baseType: !3662, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3663, file: !519, line: 203, baseType: !181, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3663, file: !519, line: 205, baseType: !1029, size: 192, align: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3663, file: !519, line: 207, baseType: !2132, size: 64, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3663, file: !519, line: 208, baseType: !7, size: 32, offset: 448)
!3672 = !DIDerivedType(tag: DW_TAG_member, scope: !3663, file: !519, line: 209, baseType: !3673, size: 256, offset: 512)
!3673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3663, file: !519, line: 209, size: 256, elements: !3674)
!3674 = !{!3675, !3684, !3688}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3673, file: !519, line: 210, baseType: !3676, size: 256)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !519, line: 153, size: 256, elements: !3677)
!3677 = !{!3678, !3679, !3680, !3683}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3676, file: !519, line: 154, baseType: !312, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3676, file: !519, line: 156, baseType: !1161, size: 64, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3676, file: !519, line: 162, baseType: !3681, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !519, line: 162, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3676, file: !519, line: 167, baseType: !312, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3673, file: !519, line: 211, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !519, line: 170, size: 64, elements: !3686)
!3686 = !{!3687}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3685, file: !519, line: 171, baseType: !3662, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3673, file: !519, line: 212, baseType: !3689, size: 256)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !519, line: 174, size: 256, elements: !3690)
!3690 = !{!3691, !3751, !3754, !3755}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3689, file: !519, line: 175, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3694)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !519, line: 271, size: 768, elements: !3695)
!3695 = !{!3696, !3716, !3720, !3724, !3728, !3732, !3736, !3740, !3741, !3742, !3743, !3747}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3694, file: !519, line: 276, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!109, !3700}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !519, line: 251, size: 1216, elements: !3702)
!3702 = !{!3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3701, file: !519, line: 253, baseType: !3662, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3701, file: !519, line: 254, baseType: !1302, size: 64, offset: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3701, file: !519, line: 255, baseType: !616, size: 64, offset: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3701, file: !519, line: 256, baseType: !334, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3701, file: !519, line: 259, baseType: !643, size: 256, offset: 256)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3701, file: !519, line: 260, baseType: !643, size: 256, offset: 512)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3701, file: !519, line: 261, baseType: !109, size: 32, offset: 768)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3701, file: !519, line: 262, baseType: !162, size: 128, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3701, file: !519, line: 263, baseType: !262, size: 64, offset: 960)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3701, file: !519, line: 265, baseType: !309, size: 64, offset: 1024)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3701, file: !519, line: 266, baseType: !1463, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3701, file: !519, line: 267, baseType: !1463, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3701, file: !519, line: 268, baseType: !1706, size: 64, offset: 1152)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3694, file: !519, line: 277, baseType: !3717, size: 64, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !3700}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3694, file: !519, line: 290, baseType: !3721, size: 64, offset: 128)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!109, !616, !334}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3694, file: !519, line: 292, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!334, !616, !1590}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3694, file: !519, line: 293, baseType: !3729, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!334, !616, !334, !1590}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3694, file: !519, line: 294, baseType: !3733, size: 64, offset: 320)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{null, !616, !334}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3694, file: !519, line: 296, baseType: !3737, size: 64, offset: 384)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!294, !3700, !262, !309, !504}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3694, file: !519, line: 306, baseType: !309, size: 64, offset: 448)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3694, file: !519, line: 313, baseType: !1463, size: 8, offset: 512)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3694, file: !519, line: 314, baseType: !3737, size: 64, offset: 576)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3694, file: !519, line: 317, baseType: !3744, size: 64, offset: 640)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!1648, !3700, !1650}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3694, file: !519, line: 320, baseType: !3748, size: 64, offset: 704)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!109, !3700, !1661}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3689, file: !519, line: 176, baseType: !3752, size: 64, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !519, line: 35, flags: DIFlagFwdDecl)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3689, file: !519, line: 177, baseType: !504, size: 64, offset: 128)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3689, file: !519, line: 178, baseType: !3662, size: 64, offset: 192)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3663, file: !519, line: 215, baseType: !334, size: 64, offset: 768)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3663, file: !519, line: 221, baseType: !416, size: 64, offset: 832)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !519, line: 223, baseType: !232, size: 16, offset: 896)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3663, file: !519, line: 224, baseType: !304, size: 16, offset: 912)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3663, file: !519, line: 225, baseType: !3761, size: 64, offset: 960)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !519, line: 36, flags: DIFlagFwdDecl)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3663, file: !519, line: 227, baseType: !956, size: 128, align: 64, offset: 1024)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !177, file: !178, line: 71, baseType: !3765, size: 32, offset: 448)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3766, line: 19, size: 32, elements: !3767)
!3766 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3767 = !{!3768}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3765, file: !3766, line: 20, baseType: !985, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !177, file: !178, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !177, file: !178, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !177, file: !178, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !177, file: !178, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !177, file: !178, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !174, file: !6, line: 47, baseType: !157, size: 64, offset: 512)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !174, file: !6, line: 48, baseType: !185, size: 64, offset: 576)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !174, file: !6, line: 49, baseType: !3777, size: 64, offset: 640)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !174, file: !6, line: 50, baseType: !2281, size: 64, offset: 704)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !158, file: !6, line: 418, baseType: !3781, size: 64, offset: 1408)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3783)
!3783 = !{!3784, !3785, !3790, !3794, !3798, !3802}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3782, file: !6, line: 54, baseType: !300, size: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3782, file: !6, line: 55, baseType: !3786, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!294, !3781, !3789, !262}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3782, file: !6, line: 57, baseType: !3791, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!294, !3781, !3789, !181, !309}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3782, file: !6, line: 59, baseType: !3795, size: 64, offset: 256)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{null, !157, !181}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3782, file: !6, line: 60, baseType: !3799, size: 64, offset: 320)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!109, !157}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3782, file: !6, line: 61, baseType: !3803, size: 64, offset: 384)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !157}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !158, file: !6, line: 419, baseType: !181, size: 64, offset: 1472)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !158, file: !6, line: 420, baseType: !181, size: 64, offset: 1536)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !158, file: !6, line: 421, baseType: !185, size: 64, offset: 1600)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !158, file: !6, line: 424, baseType: !3810, size: 64, offset: 1664)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3812)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !158, file: !6, line: 425, baseType: !3814, size: 64, offset: 1728)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1406)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !158, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !158, file: !6, line: 435, baseType: !643, size: 256, offset: 1856)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !158, file: !6, line: 437, baseType: !3819, size: 64, offset: 2112)
!3819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3820, size: 64)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3821, line: 69, size: 320, elements: !3822)
!3821 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3822 = !{!3823, !3824, !3825, !3842, !3844, !3848, !3849}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3820, file: !3821, line: 70, baseType: !181, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3820, file: !3821, line: 71, baseType: !157, size: 64, offset: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3820, file: !3821, line: 72, baseType: !3826, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3828)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3821, line: 47, size: 256, elements: !3829)
!3829 = !{!3830, !3831, !3837, !3841}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3828, file: !3821, line: 49, baseType: !7, size: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3828, file: !3821, line: 51, baseType: !3832, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!109, !181, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3820)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3828, file: !3821, line: 53, baseType: !3838, size: 64, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!109, !262, !3835}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3828, file: !3821, line: 55, baseType: !3217, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3820, file: !3821, line: 73, baseType: !3843, size: 16, offset: 192)
!3843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3820, file: !3821, line: 74, baseType: !3845, size: 8, offset: 208)
!3845 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !221, line: 16, baseType: !3846)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !223, line: 20, baseType: !3847)
!3847 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3820, file: !3821, line: 75, baseType: !220, size: 8, offset: 216)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3820, file: !3821, line: 76, baseType: !3850, size: 64, offset: 256)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3820, file: !3821, line: 76, size: 64, elements: !3851)
!3851 = !{!3852, !3853, !3860}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3850, file: !3821, line: 77, baseType: !334, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3850, file: !3821, line: 78, baseType: !3854, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3856)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3821, line: 86, size: 128, elements: !3857)
!3857 = !{!3858, !3859}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3856, file: !3821, line: 87, baseType: !7, size: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3856, file: !3821, line: 88, baseType: !262, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3850, file: !3821, line: 79, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3863)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3821, line: 92, size: 256, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3863, file: !3821, line: 94, baseType: !7, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3863, file: !3821, line: 95, baseType: !7, size: 32, offset: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3863, file: !3821, line: 96, baseType: !965, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3863, file: !3821, line: 97, baseType: !3826, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3863, file: !3821, line: 98, baseType: !334, size: 64, offset: 192)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !158, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !158, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !158, file: !6, line: 442, baseType: !3810, size: 64, offset: 2240)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !158, file: !6, line: 443, baseType: !3814, size: 64, offset: 2304)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !158, file: !6, line: 444, baseType: !1463, size: 8, offset: 2368)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !158, file: !6, line: 451, baseType: !1463, size: 8, offset: 2376)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !158, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !158, file: !6, line: 455, baseType: !3878, size: 64, offset: 2432)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3880, line: 23, size: 96, elements: !3881)
!3880 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3881 = !{!3882, !3883, !3884}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3879, file: !3880, line: 24, baseType: !109, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3879, file: !3880, line: 24, baseType: !109, size: 32, offset: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3879, file: !3880, line: 24, baseType: !109, size: 32, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !158, file: !6, line: 458, baseType: !3886, size: 64, offset: 2496)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!109}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !158, file: !6, line: 460, baseType: !3890, size: 4032, align: 512, offset: 2560)
!3890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3891, size: 4032, elements: !3905)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3892)
!3892 = !{!3893, !3894, !3895}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3891, file: !6, line: 363, baseType: !334, size: 64)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3891, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3891, file: !6, line: 367, baseType: !3896, size: 448, offset: 128)
!3896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3897)
!3897 = !{!3898, !3899}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3896, file: !6, line: 320, baseType: !157, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3896, file: !6, line: 321, baseType: !3900, size: 384, offset: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3901, line: 40, size: 384, elements: !3902)
!3901 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3902 = !{!3903}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3900, file: !3901, line: 41, baseType: !3904, size: 384, align: 64)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 384, align: 64, elements: !2406)
!3905 = !{!3906}
!3906 = !DISubrange(count: 7)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !158, file: !6, line: 463, baseType: !3908, size: 192, offset: 6592)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3909, line: 8, size: 192, elements: !3910)
!3909 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3910 = !{!3911, !3912, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3908, file: !3909, line: 10, baseType: !7, size: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3908, file: !3909, line: 11, baseType: !610, size: 64, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3908, file: !3909, line: 12, baseType: !3914, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3916, line: 59, size: 48, elements: !3917)
!3916 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3917 = !{!3918, !3919, !3920, !3921, !3922, !3923}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3915, file: !3916, line: 60, baseType: !2149, size: 16)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3915, file: !3916, line: 61, baseType: !2149, size: 16, offset: 16)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3915, file: !3916, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3915, file: !3916, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3915, file: !3916, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3915, file: !3916, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !158, file: !6, line: 465, baseType: !312, size: 64, offset: 6784)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !158, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !158, file: !6, line: 470, baseType: !162, size: 128, offset: 6912)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !158, file: !6, line: 471, baseType: !3928, size: 64, offset: 7040)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3930, line: 33, size: 96, elements: !3931)
!3930 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3931 = !{!3932, !3933, !3934, !3935}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3929, file: !3930, line: 37, baseType: !109, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3929, file: !3930, line: 43, baseType: !109, size: 32, offset: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3929, file: !3930, line: 45, baseType: !232, size: 16, offset: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3929, file: !3930, line: 47, baseType: !232, size: 16, offset: 80)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !158, file: !6, line: 476, baseType: !3937, size: 64, offset: 7104)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3939)
!3939 = !{!3940, !3956, !3957, !3958}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3938, file: !6, line: 379, baseType: !3941, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3943, line: 204, baseType: !3944)
!3943 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3943, line: 197, size: 192, elements: !3945)
!3945 = !{!3946, !3948, !3949, !3950, !3952, !3954}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3944, file: !3943, line: 198, baseType: !3947, size: 32)
!3947 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3943, line: 21, baseType: !413)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3944, file: !3943, line: 199, baseType: !224, size: 8, offset: 32)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3944, file: !3943, line: 200, baseType: !224, size: 8, offset: 40)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3944, file: !3943, line: 201, baseType: !3951, size: 16, offset: 48)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3943, line: 17, baseType: !231)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3944, file: !3943, line: 202, baseType: !3953, size: 64, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3943, line: 16, baseType: !417)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3944, file: !3943, line: 203, baseType: !3955, size: 64, offset: 128)
!3955 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3943, line: 22, baseType: !417)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3938, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3938, file: !6, line: 381, baseType: !262, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3938, file: !6, line: 382, baseType: !262, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !158, file: !6, line: 477, baseType: !3938, size: 256, offset: 7168)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !158, file: !6, line: 480, baseType: !3961, size: 64, offset: 7424)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !158, file: !6, line: 483, baseType: !3964, size: 64, offset: 7488)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !158, file: !6, line: 488, baseType: !262, size: 64, offset: 7552)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !158, file: !6, line: 492, baseType: !334, size: 64, offset: 7616)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !158, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !158, file: !6, line: 495, baseType: !334, size: 64, offset: 7744)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !158, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !158, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !158, file: !6, line: 500, baseType: !3973, size: 64, offset: 7872)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3975, line: 45, baseType: !3976)
!3975 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !158, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !158, file: !6, line: 504, baseType: !3979, size: 64, offset: 8000)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3982, line: 96, size: 192, elements: !3983)
!3982 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3983 = !{!3984, !3985, !4028, !4030}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3981, file: !3982, line: 97, baseType: !7, size: 32)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3981, file: !3982, line: 98, baseType: !3986, size: 64, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3982, line: 24, size: 3072, elements: !3988)
!3988 = !{!3989, !3991, !3992, !3993, !3994, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4025, !4026, !4027}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3987, file: !3982, line: 26, baseType: !3990, size: 128)
!3990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 128, elements: !2406)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3987, file: !3982, line: 27, baseType: !3990, size: 128, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3987, file: !3982, line: 28, baseType: !109, size: 32, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3987, file: !3982, line: 31, baseType: !192, size: 32, align: 512, offset: 512)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3987, file: !3982, line: 32, baseType: !3995, size: 960, offset: 576)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3996, line: 206, size: 960, elements: !3997)
!3996 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3997 = !{!3998, !3999, !4002, !4004, !4005, !4007}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3995, file: !3996, line: 207, baseType: !959, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3995, file: !3996, line: 208, baseType: !4000, size: 256, offset: 64)
!4000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4001, size: 256, elements: !1351)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3995, file: !3996, line: 209, baseType: !4003, size: 256, offset: 320)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !312, size: 256, elements: !1351)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3995, file: !3996, line: 213, baseType: !298, size: 64, offset: 576)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3995, file: !3996, line: 215, baseType: !4006, size: 256, offset: 640)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !298, size: 256, elements: !1351)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3995, file: !3996, line: 216, baseType: !220, size: 8, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3987, file: !3982, line: 33, baseType: !312, size: 64, offset: 1536)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3987, file: !3982, line: 34, baseType: !312, size: 64, offset: 1600)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3987, file: !3982, line: 35, baseType: !1463, size: 8, offset: 1664)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3987, file: !3982, line: 36, baseType: !2842, size: 320, offset: 1728)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3987, file: !3982, line: 37, baseType: !2171, size: 256, offset: 2048)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3987, file: !3982, line: 38, baseType: !956, size: 128, align: 64, offset: 2304)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3987, file: !3982, line: 39, baseType: !4015, size: 64, offset: 2432)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3982, line: 49, size: 768, elements: !4017)
!4017 = !{!4018, !4019, !4020, !4021, !4022, !4023, !4024}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4016, file: !3982, line: 50, baseType: !192, size: 32)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4016, file: !3982, line: 51, baseType: !4003, size: 256, offset: 64)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4016, file: !3982, line: 53, baseType: !4003, size: 256, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4016, file: !3982, line: 54, baseType: !312, size: 64, offset: 576)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4016, file: !3982, line: 55, baseType: !4015, size: 64, offset: 640)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4016, file: !3982, line: 56, baseType: !109, size: 32, offset: 704)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4016, file: !3982, line: 57, baseType: !109, size: 32, offset: 736)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3987, file: !3982, line: 40, baseType: !312, size: 64, offset: 2496)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3987, file: !3982, line: 42, baseType: !109, size: 32, offset: 2560)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3987, file: !3982, line: 43, baseType: !3980, size: 64, offset: 2624)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3981, file: !3982, line: 99, baseType: !4029, offset: 128)
!4029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !546, line: 211, elements: !547)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3981, file: !3982, line: 100, baseType: !4031, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3982, line: 63, size: 3008, elements: !4033)
!4033 = !{!4034, !4035, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4063}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4032, file: !3982, line: 64, baseType: !4015, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4032, file: !3982, line: 65, baseType: !4036, size: 192, offset: 64)
!4036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4015, size: 192, elements: !263)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4032, file: !3982, line: 67, baseType: !109, size: 32, offset: 256)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4032, file: !3982, line: 68, baseType: !643, size: 256, offset: 320)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4032, file: !3982, line: 69, baseType: !192, size: 32, offset: 576)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4032, file: !3982, line: 70, baseType: !643, size: 256, offset: 640)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4032, file: !3982, line: 71, baseType: !312, size: 64, offset: 896)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4032, file: !3982, line: 72, baseType: !312, size: 64, offset: 960)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4032, file: !3982, line: 73, baseType: !312, size: 64, offset: 1024)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4032, file: !3982, line: 74, baseType: !312, size: 64, offset: 1088)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4032, file: !3982, line: 75, baseType: !312, size: 64, offset: 1152)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4032, file: !3982, line: 76, baseType: !312, size: 64, offset: 1216)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4032, file: !3982, line: 77, baseType: !312, size: 64, offset: 1280)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4032, file: !3982, line: 78, baseType: !312, size: 64, offset: 1344)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4032, file: !3982, line: 79, baseType: !1463, size: 8, offset: 1408)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4032, file: !3982, line: 80, baseType: !312, size: 64, offset: 1472)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4032, file: !3982, line: 81, baseType: !643, size: 256, offset: 1536)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4032, file: !3982, line: 82, baseType: !1855, size: 256, offset: 1792)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4032, file: !3982, line: 84, baseType: !212, size: 32, offset: 2048)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4032, file: !3982, line: 87, baseType: !312, size: 64, offset: 2112)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4032, file: !3982, line: 88, baseType: !312, size: 64, offset: 2176)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4032, file: !3982, line: 89, baseType: !4057, size: 704, offset: 2240)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2172, line: 111, size: 704, elements: !4058)
!4058 = !{!4059, !4060, !4061, !4062}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4057, file: !2172, line: 112, baseType: !2171, size: 256)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4057, file: !2172, line: 113, baseType: !2842, size: 320, offset: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4057, file: !2172, line: 116, baseType: !3148, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4057, file: !2172, line: 117, baseType: !109, size: 32, offset: 640)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4032, file: !3982, line: 90, baseType: !3980, size: 64, offset: 2944)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !158, file: !6, line: 515, baseType: !4065, size: 64, offset: 8064)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4067, line: 117, size: 128, elements: !4068)
!4067 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4068 = !{!4069, !4070, !4071}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4066, file: !4067, line: 118, baseType: !1406, size: 32)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4066, file: !4067, line: 119, baseType: !1406, size: 32, offset: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4066, file: !4067, line: 120, baseType: !298, size: 64, offset: 64)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !158, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !158, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !158, file: !6, line: 520, baseType: !4075, size: 64, offset: 8192)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !158, file: !6, line: 523, baseType: !4077, size: 64, offset: 8256)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !158, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !158, file: !6, line: 525, baseType: !4082, size: 64, offset: 8384)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !158, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !158, file: !6, line: 533, baseType: !334, size: 64, offset: 8512)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !158, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !158, file: !6, line: 535, baseType: !4089, size: 64, offset: 8640)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !158, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !158, file: !6, line: 539, baseType: !109, size: 32, offset: 8736)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !158, file: !6, line: 540, baseType: !4093, size: 64, offset: 8768)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4095, line: 32, size: 64, elements: !4096)
!4095 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4096 = !{!4097, !4098}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4094, file: !4095, line: 33, baseType: !1406, size: 32)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4094, file: !4095, line: 34, baseType: !1406, size: 32, offset: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !158, file: !6, line: 563, baseType: !162, size: 128, offset: 8832)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !158, file: !6, line: 565, baseType: !162, size: 128, offset: 8960)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !158, file: !6, line: 568, baseType: !4102, size: 64, offset: 9088)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !158, file: !6, line: 570, baseType: !212, size: 32, offset: 9152)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!4106 = !{!4107, !4109, !4114, !5039, !5041, !5043, !0, !5047, !5049, !5054, !5059, !5064, !5066, !5069, !5072, !5074, !5079, !5084, !5089, !5097, !5099, !5102, !5107, !5121, !5126, !5128, !5130, !5135, !5140}
!4107 = !DIGlobalVariableExpression(var: !4108, expr: !DIExpression())
!4108 = distinct !DIGlobalVariable(name: "__param_probe_mem", scope: !2, file: !3, line: 41, type: !3836, isLocal: true, isDefinition: true, align: 64)
!4109 = !DIGlobalVariableExpression(var: !4110, expr: !DIExpression())
!4110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_probe_memtype292", scope: !2, file: !3, line: 41, type: !4111, isLocal: true, isDefinition: true, align: 8)
!4111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 280, elements: !4112)
!4112 = !{!4113}
!4113 = !DISubrange(count: 35)
!4114 = !DIGlobalVariableExpression(var: !4115, expr: !DIExpression())
!4115 = distinct !DIGlobalVariable(name: "pccard_nonstatic_ops", scope: !2, file: !3, line: 1061, type: !4116, isLocal: false, isDefinition: true)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_resource_ops", file: !4117, line: 46, size: 320, elements: !4118)
!4117 = !DIFile(filename: "drivers/pcmcia/cs_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa10cd0acf8f1a671c53cf79b958ae8a")
!4118 = !{!4119, !5028, !5033, !5037, !5038}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "validate_mem", scope: !4116, file: !4117, line: 47, baseType: !4120, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!109, !4123}
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_socket", file: !4125, line: 130, size: 10432, elements: !4126)
!4125 = !DIFile(filename: "./include/pcmcia/ss.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8aeaa2af48f74c5b0b58b19fd709cb94")
!4126 = !{!4127, !4128, !4139, !4140, !4141, !4143, !4144, !4167, !4168, !4176, !4178, !4179, !4180, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4946, !4947, !4980, !4982, !4983, !4987, !4991, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4124, file: !4125, line: 131, baseType: !157, size: 64)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "socket", scope: !4124, file: !4125, line: 132, baseType: !4129, size: 96, offset: 64)
!4129 = !DIDerivedType(tag: DW_TAG_typedef, name: "socket_state_t", file: !4125, line: 55, baseType: !4130)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_state_t", file: !4125, line: 50, size: 96, elements: !4131)
!4131 = !{!4132, !4134, !4135, !4137, !4138}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4130, file: !4125, line: 51, baseType: !4133, size: 32)
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int", file: !163, line: 87, baseType: !7)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "csc_mask", scope: !4130, file: !4125, line: 52, baseType: !4133, size: 32, offset: 32)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "Vcc", scope: !4130, file: !4125, line: 53, baseType: !4136, size: 8, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !163, line: 85, baseType: !224)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "Vpp", scope: !4130, file: !4125, line: 53, baseType: !4136, size: 8, offset: 72)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "io_irq", scope: !4130, file: !4125, line: 54, baseType: !4136, size: 8, offset: 80)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4124, file: !4125, line: 133, baseType: !4133, size: 32, offset: 160)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_state", scope: !4124, file: !4125, line: 134, baseType: !4133, size: 32, offset: 192)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "functions", scope: !4124, file: !4125, line: 135, baseType: !4142, size: 16, offset: 224)
!4142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_short", file: !163, line: 86, baseType: !232)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4124, file: !4125, line: 136, baseType: !4142, size: 16, offset: 240)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "cis_mem", scope: !4124, file: !4125, line: 137, baseType: !4145, size: 256, offset: 256)
!4145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pccard_mem_map", file: !4125, line: 98, baseType: !4146)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_mem_map", file: !4125, line: 91, size: 256, elements: !4147)
!4147 = !{!4148, !4149, !4150, !4151, !4152, !4153}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4146, file: !4125, line: 92, baseType: !4136, size: 8)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4146, file: !4125, line: 93, baseType: !4136, size: 8, offset: 8)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4146, file: !4125, line: 94, baseType: !4142, size: 16, offset: 16)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "static_start", scope: !4146, file: !4125, line: 95, baseType: !2866, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "card_start", scope: !4146, file: !4125, line: 96, baseType: !4133, size: 32, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4146, file: !4125, line: 97, baseType: !4154, size: 64, offset: 192)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4156, line: 21, size: 512, elements: !4157)
!4156 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4157 = !{!4158, !4160, !4161, !4162, !4163, !4164, !4165, !4166}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4155, file: !4156, line: 22, baseType: !4159, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !163, line: 164, baseType: !2866)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4155, file: !4156, line: 23, baseType: !4159, size: 64, offset: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4155, file: !4156, line: 24, baseType: !181, size: 64, offset: 128)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4155, file: !4156, line: 25, baseType: !312, size: 64, offset: 192)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4155, file: !4156, line: 26, baseType: !312, size: 64, offset: 256)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4155, file: !4156, line: 27, baseType: !4154, size: 64, offset: 320)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4155, file: !4156, line: 27, baseType: !4154, size: 64, offset: 384)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4155, file: !4156, line: 27, baseType: !4154, size: 64, offset: 448)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "cis_virt", scope: !4124, file: !4125, line: 138, baseType: !334, size: 64, offset: 512)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !4124, file: !4125, line: 139, baseType: !4169, size: 256, offset: 576)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4170, size: 256, elements: !2406)
!4170 = !DIDerivedType(tag: DW_TAG_typedef, name: "io_window_t", file: !4125, line: 103, baseType: !4171)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_window_t", file: !4125, line: 100, size: 128, elements: !4172)
!4172 = !{!4173, !4174, !4175}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "InUse", scope: !4171, file: !4125, line: 101, baseType: !4133, size: 32)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "Config", scope: !4171, file: !4125, line: 101, baseType: !4133, size: 32, offset: 32)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !4171, file: !4125, line: 102, baseType: !4154, size: 64, offset: 64)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "win", scope: !4124, file: !4125, line: 140, baseType: !4177, size: 1024, offset: 832)
!4177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4145, size: 1024, elements: !1351)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "cis_cache", scope: !4124, file: !4125, line: 141, baseType: !162, size: 128, offset: 1856)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cis_len", scope: !4124, file: !4125, line: 142, baseType: !309, size: 64, offset: 1984)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "fake_cis", scope: !4124, file: !4125, line: 143, baseType: !4181, size: 64, offset: 2048)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "socket_list", scope: !4124, file: !4125, line: 145, baseType: !162, size: 128, offset: 2112)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "socket_released", scope: !4124, file: !4125, line: 146, baseType: !1855, size: 256, offset: 2240)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !4124, file: !4125, line: 149, baseType: !7, size: 32, offset: 2496)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4124, file: !4125, line: 153, baseType: !4133, size: 32, offset: 2528)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !4124, file: !4125, line: 154, baseType: !4133, size: 32, offset: 2560)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "map_size", scope: !4124, file: !4125, line: 155, baseType: !4133, size: 32, offset: 2592)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "io_offset", scope: !4124, file: !4125, line: 156, baseType: !4133, size: 32, offset: 2624)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "pci_irq", scope: !4124, file: !4125, line: 157, baseType: !4133, size: 32, offset: 2656)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "cb_dev", scope: !4124, file: !4125, line: 158, baseType: !4191, size: 64, offset: 2688)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4193, line: 322, size: 16640, elements: !4194)
!4193 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4194 = !{!4195, !4196, !4721, !4722, !4723, !4724, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4746, !4747, !4748, !4749, !4750, !4751, !4752, !4753, !4754, !4755, !4756, !4830, !4831, !4832, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4909, !4910, !4911, !4913, !4914, !4916, !4917, !4918, !4919, !4925, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4192, file: !4193, line: 323, baseType: !162, size: 128)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4192, file: !4193, line: 324, baseType: !4197, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4193, line: 647, size: 8256, elements: !4199)
!4199 = !{!4200, !4201, !4202, !4203, !4204, !4205, !4206, !4208, !4209, !4210, !4234, !4235, !4239, !4240, !4241, !4242, !4243, !4247, !4248, !4250, !4716, !4717, !4718, !4719, !4720}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4198, file: !4193, line: 648, baseType: !162, size: 128)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4198, file: !4193, line: 649, baseType: !4197, size: 64, offset: 128)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4198, file: !4193, line: 650, baseType: !162, size: 128, offset: 192)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4198, file: !4193, line: 651, baseType: !162, size: 128, offset: 320)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4198, file: !4193, line: 652, baseType: !4191, size: 64, offset: 448)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4198, file: !4193, line: 653, baseType: !162, size: 128, offset: 512)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4198, file: !4193, line: 655, baseType: !4207, size: 256, offset: 640)
!4207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4154, size: 256, elements: !1351)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4198, file: !4193, line: 656, baseType: !162, size: 128, offset: 896)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4198, file: !4193, line: 657, baseType: !4155, size: 512, offset: 1024)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4198, file: !4193, line: 659, baseType: !4211, size: 64, offset: 1536)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4193, line: 773, size: 320, elements: !4213)
!4213 = !{!4214, !4218, !4222, !4226, !4230}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4212, file: !4193, line: 774, baseType: !4215, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!109, !4197}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4212, file: !4193, line: 775, baseType: !4219, size: 64, offset: 64)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{null, !4197}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4212, file: !4193, line: 776, baseType: !4223, size: 64, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!334, !4197, !7, !109}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4212, file: !4193, line: 777, baseType: !4227, size: 64, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{!109, !4197, !7, !109, !109, !2222}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4212, file: !4193, line: 778, baseType: !4231, size: 64, offset: 256)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!109, !4197, !7, !109, !109, !412}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4198, file: !4193, line: 660, baseType: !334, size: 64, offset: 1600)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4198, file: !4193, line: 661, baseType: !4236, size: 64, offset: 1664)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4238, line: 131, flags: DIFlagFwdDecl)
!4238 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4198, file: !4193, line: 663, baseType: !224, size: 8, offset: 1728)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4198, file: !4193, line: 664, baseType: !224, size: 8, offset: 1736)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4198, file: !4193, line: 665, baseType: !224, size: 8, offset: 1744)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4198, file: !4193, line: 666, baseType: !224, size: 8, offset: 1752)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4198, file: !4193, line: 671, baseType: !4244, size: 384, offset: 1760)
!4244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 384, elements: !4245)
!4245 = !{!4246}
!4246 = !DISubrange(count: 48)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4198, file: !4193, line: 673, baseType: !232, size: 16, offset: 2144)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4198, file: !4193, line: 674, baseType: !4249, size: 16, offset: 2160)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4193, line: 255, baseType: !232)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4198, file: !4193, line: 675, baseType: !4251, size: 64, offset: 2176)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4259, !4260, !4313, !4398, !4399, !4400, !4401, !4402, !4409, !4501, !4514, !4524, !4528, !4530, !4531, !4532, !4536, !4543, !4544, !4547, !4550, !4554, !4658, !4659, !4660, !4661, !4662, !4663, !4693, !4694, !4695, !4698, !4701, !4710, !4711, !4712, !4713, !4714, !4715}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4252, file: !94, line: 706, baseType: !177, size: 512)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4252, file: !94, line: 707, baseType: !4251, size: 64, offset: 512)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4252, file: !94, line: 709, baseType: !4257, size: 64, offset: 576)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4252, file: !94, line: 711, baseType: !181, size: 64, offset: 640)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4252, file: !94, line: 712, baseType: !4261, size: 64, offset: 704)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4263)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4264)
!4264 = !{!4265, !4266, !4267, !4273, !4278, !4282}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4263, file: !94, line: 90, baseType: !181, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4263, file: !94, line: 91, baseType: !314, size: 64, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4263, file: !94, line: 92, baseType: !4268, size: 64, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DISubroutineType(types: !4270)
!4270 = !{!109, !4271, !257}
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4252)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4263, file: !94, line: 93, baseType: !4274, size: 64, offset: 192)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!262, !4271, !4277, !3659, !3660}
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
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
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4252, file: !94, line: 714, baseType: !4314, size: 64, offset: 768)
!4314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4315, size: 64)
!4315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4316)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4317, line: 80, size: 1344, elements: !4318)
!4317 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4397}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4316, file: !4317, line: 81, baseType: !181, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4316, file: !4317, line: 82, baseType: !181, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4316, file: !4317, line: 83, baseType: !314, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4316, file: !4317, line: 84, baseType: !314, size: 64, offset: 192)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4316, file: !4317, line: 85, baseType: !314, size: 64, offset: 256)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4316, file: !4317, line: 87, baseType: !4325, size: 64, offset: 320)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!109, !4251, !4328}
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336, !4337, !4350, !4360, !4361, !4362, !4363, !4364, !4372, !4373, !4374, !4375, !4376, !4377}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4329, file: !88, line: 97, baseType: !181, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4329, file: !88, line: 98, baseType: !4314, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4329, file: !88, line: 100, baseType: !157, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4329, file: !88, line: 101, baseType: !181, size: 64, offset: 192)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4329, file: !88, line: 103, baseType: !1463, size: 8, offset: 256)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4329, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4329, file: !88, line: 106, baseType: !4338, size: 64, offset: 320)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4340)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4341, line: 282, size: 1600, elements: !4342)
!4341 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4342 = !{!4343, !4344, !4345, !4349}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4340, file: !4341, line: 283, baseType: !3116, size: 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4340, file: !4341, line: 284, baseType: !3116, size: 256, offset: 256)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4340, file: !4341, line: 285, baseType: !4346, size: 1024, offset: 512)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 1024, elements: !4347)
!4347 = !{!4348}
!4348 = !DISubrange(count: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4340, file: !4341, line: 286, baseType: !2132, size: 64, offset: 1536)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4329, file: !88, line: 107, baseType: !4351, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4353)
!4353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4341, line: 217, size: 256, elements: !4354)
!4354 = !{!4355, !4356, !4358, !4359}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4353, file: !4341, line: 218, baseType: !3123, size: 128)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4353, file: !4341, line: 219, baseType: !4357, size: 64, offset: 128)
!4357 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4341, line: 15, baseType: !312)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4353, file: !4341, line: 220, baseType: !413, size: 32, offset: 192)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4353, file: !4341, line: 221, baseType: !413, size: 32, offset: 224)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4329, file: !88, line: 109, baseType: !4288, size: 64, offset: 448)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4329, file: !88, line: 110, baseType: !4279, size: 64, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4329, file: !88, line: 111, baseType: !4288, size: 64, offset: 576)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4329, file: !88, line: 112, baseType: !4279, size: 64, offset: 640)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4329, file: !88, line: 113, baseType: !4365, size: 64, offset: 704)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!109, !4251, !4368}
!4368 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4369)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4370)
!4370 = !{!4371}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4369, file: !101, line: 59, baseType: !109, size: 32)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4329, file: !88, line: 114, baseType: !4288, size: 64, offset: 768)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4329, file: !88, line: 115, baseType: !314, size: 64, offset: 832)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4329, file: !88, line: 116, baseType: !314, size: 64, offset: 896)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4329, file: !88, line: 118, baseType: !4283, size: 64, offset: 960)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4329, file: !88, line: 119, baseType: !4279, size: 64, offset: 1024)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4329, file: !88, line: 121, baseType: !4378, size: 64, offset: 1088)
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4379, size: 64)
!4379 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4316, file: !4317, line: 88, baseType: !4268, size: 64, offset: 384)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4316, file: !4317, line: 89, baseType: !4288, size: 64, offset: 448)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4316, file: !4317, line: 90, baseType: !4279, size: 64, offset: 512)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4316, file: !4317, line: 91, baseType: !4279, size: 64, offset: 576)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4316, file: !4317, line: 92, baseType: !4279, size: 64, offset: 640)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4316, file: !4317, line: 94, baseType: !4288, size: 64, offset: 704)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4316, file: !4317, line: 95, baseType: !4288, size: 64, offset: 768)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4316, file: !4317, line: 97, baseType: !4365, size: 64, offset: 832)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4316, file: !4317, line: 98, baseType: !4288, size: 64, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4316, file: !4317, line: 100, baseType: !4288, size: 64, offset: 960)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4316, file: !4317, line: 102, baseType: !4288, size: 64, offset: 1024)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4316, file: !4317, line: 103, baseType: !4279, size: 64, offset: 1088)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4316, file: !4317, line: 105, baseType: !4283, size: 64, offset: 1152)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4316, file: !4317, line: 107, baseType: !4394, size: 64, offset: 1216)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4396)
!4396 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4317, line: 107, flags: DIFlagFwdDecl)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4316, file: !4317, line: 109, baseType: !1463, size: 8, offset: 1280)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4252, file: !94, line: 715, baseType: !4328, size: 64, offset: 832)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4252, file: !94, line: 717, baseType: !334, size: 64, offset: 896)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4252, file: !94, line: 719, baseType: !334, size: 64, offset: 960)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4252, file: !94, line: 721, baseType: !643, size: 256, offset: 1024)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4252, file: !94, line: 725, baseType: !4403, size: 448, offset: 1280)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4404)
!4404 = !{!4405, !4406, !4407, !4408}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4403, file: !94, line: 518, baseType: !162, size: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4403, file: !94, line: 519, baseType: !162, size: 128, offset: 128)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4403, file: !94, line: 520, baseType: !162, size: 128, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4403, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4252, file: !94, line: 726, baseType: !4410, size: 2496, offset: 1728)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4454, !4455, !4456, !4457, !4458, !4459, !4460, !4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4494, !4498}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4410, file: !101, line: 664, baseType: !4368, size: 32)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4410, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4410, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4410, file: !101, line: 667, baseType: !1463, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4410, file: !101, line: 668, baseType: !1463, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4410, file: !101, line: 669, baseType: !1463, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4410, file: !101, line: 670, baseType: !1463, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4410, file: !101, line: 671, baseType: !1463, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4410, file: !101, line: 672, baseType: !1463, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4410, file: !101, line: 673, baseType: !1463, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4410, file: !101, line: 674, baseType: !1463, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4410, file: !101, line: 675, baseType: !412, size: 32, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4410, file: !101, line: 676, baseType: !192, size: 32, offset: 96)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4410, file: !101, line: 678, baseType: !162, size: 128, offset: 128)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4410, file: !101, line: 679, baseType: !1855, size: 256, offset: 256)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4410, file: !101, line: 680, baseType: !4428, size: 64, offset: 512)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4430, line: 43, size: 1536, elements: !4431)
!4430 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4431 = !{!4432, !4433, !4434, !4435, !4436, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4429, file: !4430, line: 44, baseType: !181, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4429, file: !4430, line: 45, baseType: !109, size: 32, offset: 64)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4429, file: !4430, line: 46, baseType: !162, size: 128, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4429, file: !4430, line: 47, baseType: !192, size: 32, offset: 256)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4429, file: !4430, line: 48, baseType: !4437, size: 64, offset: 320)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4429, file: !4430, line: 49, baseType: !2842, size: 320, offset: 384)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4429, file: !4430, line: 50, baseType: !312, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4429, file: !4430, line: 51, baseType: !1107, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4429, file: !4430, line: 52, baseType: !1107, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4429, file: !4430, line: 53, baseType: !1107, size: 64, offset: 896)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4429, file: !4430, line: 54, baseType: !1107, size: 64, offset: 960)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4429, file: !4430, line: 55, baseType: !1107, size: 64, offset: 1024)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4429, file: !4430, line: 56, baseType: !312, size: 64, offset: 1088)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4429, file: !4430, line: 57, baseType: !312, size: 64, offset: 1152)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4429, file: !4430, line: 58, baseType: !312, size: 64, offset: 1216)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4429, file: !4430, line: 59, baseType: !312, size: 64, offset: 1280)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4429, file: !4430, line: 60, baseType: !312, size: 64, offset: 1344)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4429, file: !4430, line: 61, baseType: !4251, size: 64, offset: 1408)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4429, file: !4430, line: 62, baseType: !1463, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4429, file: !4430, line: 63, baseType: !1463, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4410, file: !101, line: 681, baseType: !1463, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4410, file: !101, line: 682, baseType: !1463, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4410, file: !101, line: 683, baseType: !1463, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4410, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4410, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4410, file: !101, line: 690, baseType: !1099, size: 512, offset: 640)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4410, file: !101, line: 691, baseType: !416, size: 64, offset: 1152)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4410, file: !101, line: 692, baseType: !2171, size: 256, offset: 1216)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4410, file: !101, line: 693, baseType: !949, size: 192, offset: 1472)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4410, file: !101, line: 694, baseType: !4437, size: 64, offset: 1664)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4410, file: !101, line: 695, baseType: !212, size: 32, offset: 1728)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4410, file: !101, line: 696, baseType: !212, size: 32, offset: 1760)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4410, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4410, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4410, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4410, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4410, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4410, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4410, file: !101, line: 703, baseType: !1463, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4410, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4410, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4410, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4410, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4410, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4410, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4410, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4410, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4410, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4410, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4410, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4410, file: !101, line: 715, baseType: !416, size: 64, offset: 2048)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4410, file: !101, line: 716, baseType: !416, size: 64, offset: 2112)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4410, file: !101, line: 717, baseType: !416, size: 64, offset: 2176)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4410, file: !101, line: 718, baseType: !416, size: 64, offset: 2240)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4410, file: !101, line: 720, baseType: !4489, size: 64, offset: 2304)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4491)
!4491 = !{!4492, !4493}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4490, file: !101, line: 633, baseType: !192, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4490, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4410, file: !101, line: 721, baseType: !4495, size: 64, offset: 2368)
!4495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4496, size: 64)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{null, !4251, !1406}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4410, file: !101, line: 722, baseType: !4499, size: 64, offset: 2432)
!4499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4500, size: 64)
!4500 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4252, file: !94, line: 727, baseType: !4502, size: 64, offset: 4224)
!4502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4503, size: 64)
!4503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4504)
!4504 = !{!4505, !4506, !4507, !4511, !4512, !4513}
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4503, file: !101, line: 743, baseType: !4285, size: 1472)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4503, file: !101, line: 744, baseType: !4288, size: 64, offset: 1472)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4503, file: !101, line: 745, baseType: !4508, size: 64, offset: 1536)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{null, !4251, !1463}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4503, file: !101, line: 746, baseType: !4288, size: 64, offset: 1600)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4503, file: !101, line: 747, baseType: !4279, size: 64, offset: 1664)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4503, file: !101, line: 748, baseType: !4279, size: 64, offset: 1728)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4252, file: !94, line: 736, baseType: !4515, size: 128, offset: 4288)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4516)
!4516 = !{!4517, !4521}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4515, file: !94, line: 531, baseType: !4518, size: 64)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4520, line: 13, flags: DIFlagFwdDecl)
!4520 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4515, file: !94, line: 532, baseType: !4522, size: 64, offset: 64)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4252, file: !94, line: 738, baseType: !4525, size: 64, offset: 4416)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4527)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4252, file: !94, line: 740, baseType: !4529, size: 64, offset: 4480)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4252, file: !94, line: 741, baseType: !416, size: 64, offset: 4544)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4252, file: !94, line: 746, baseType: !416, size: 64, offset: 4608)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4252, file: !94, line: 747, baseType: !4533, size: 64, offset: 4672)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4535)
!4535 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4252, file: !94, line: 749, baseType: !4537, size: 64, offset: 4736)
!4537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4538, size: 64)
!4538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4539)
!4539 = !{!4540, !4541, !4542}
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4538, file: !94, line: 433, baseType: !7, size: 32)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4538, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4538, file: !94, line: 435, baseType: !312, size: 64, offset: 64)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4252, file: !94, line: 751, baseType: !162, size: 128, offset: 4800)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4252, file: !94, line: 762, baseType: !4545, size: 64, offset: 4928)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4252, file: !94, line: 770, baseType: !4548, offset: 4992)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4549, line: 5, elements: !547)
!4549 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4252, file: !94, line: 772, baseType: !4551, size: 64, offset: 4992)
!4551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4552, size: 64)
!4552 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4553, line: 18, flags: DIFlagFwdDecl)
!4553 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4252, file: !94, line: 773, baseType: !4555, size: 64, offset: 5056)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4556, size: 64)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4557, line: 41, size: 512, elements: !4558)
!4557 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4558 = !{!4559, !4560, !4654, !4655, !4656, !4657}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4556, file: !4557, line: 42, baseType: !4555, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4556, file: !4557, line: 43, baseType: !4561, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4563)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4557, line: 125, size: 1408, elements: !4564)
!4564 = !{!4565, !4569, !4573, !4579, !4583, !4584, !4589, !4593, !4597, !4601, !4605, !4606, !4610, !4614, !4618, !4629, !4630, !4631, !4632, !4642, !4646, !4650}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4563, file: !4557, line: 126, baseType: !4566, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4567, size: 64)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!4555, !4555}
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4563, file: !4557, line: 127, baseType: !4570, size: 64, offset: 64)
!4570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4571, size: 64)
!4571 = !DISubroutineType(types: !4572)
!4572 = !{null, !4555}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4563, file: !4557, line: 128, baseType: !4574, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!1463, !4577}
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4556)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4563, file: !4557, line: 129, baseType: !4580, size: 64, offset: 192)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{!2132, !4577, !4271}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4563, file: !4557, line: 131, baseType: !4574, size: 64, offset: 256)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4563, file: !4557, line: 133, baseType: !4585, size: 64, offset: 320)
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DISubroutineType(types: !4587)
!4587 = !{!4588, !4577}
!4588 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4557, line: 132, flags: DIFlagFwdDecl)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4563, file: !4557, line: 134, baseType: !4590, size: 64, offset: 384)
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DISubroutineType(types: !4592)
!4592 = !{!1463, !4577, !181}
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4563, file: !4557, line: 136, baseType: !4594, size: 64, offset: 448)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = !DISubroutineType(types: !4596)
!4596 = !{!109, !4577, !181, !7, !334, !309}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4563, file: !4557, line: 141, baseType: !4598, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!109, !4577, !181, !4075, !309}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4563, file: !4557, line: 144, baseType: !4602, size: 64, offset: 576)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!181, !4577}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4563, file: !4557, line: 145, baseType: !4602, size: 64, offset: 640)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4563, file: !4557, line: 146, baseType: !4607, size: 64, offset: 704)
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4608, size: 64)
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!4555, !4577}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4563, file: !4557, line: 148, baseType: !4611, size: 64, offset: 768)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!4555, !4577, !4555}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4563, file: !4557, line: 151, baseType: !4615, size: 64, offset: 832)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!4555, !4577, !181}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4563, file: !4557, line: 153, baseType: !4619, size: 64, offset: 896)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!109, !4577, !181, !181, !7, !7, !4622}
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4557, line: 94, size: 640, elements: !4624)
!4624 = !{!4625, !4626, !4627}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4623, file: !4557, line: 95, baseType: !4555, size: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4623, file: !4557, line: 96, baseType: !7, size: 32, offset: 64)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4623, file: !4557, line: 97, baseType: !4628, size: 512, offset: 128)
!4628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !1142)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4563, file: !4557, line: 158, baseType: !4611, size: 64, offset: 960)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4563, file: !4557, line: 161, baseType: !4607, size: 64, offset: 1024)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4563, file: !4557, line: 163, baseType: !4566, size: 64, offset: 1088)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4563, file: !4557, line: 164, baseType: !4633, size: 64, offset: 1152)
!4633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4634, size: 64)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!109, !4577, !4636}
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4557, line: 73, size: 128, elements: !4638)
!4638 = !{!4639, !4640, !4641}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4637, file: !4557, line: 74, baseType: !7, size: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4637, file: !4557, line: 75, baseType: !7, size: 32, offset: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4637, file: !4557, line: 76, baseType: !4577, size: 64, offset: 64)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4563, file: !4557, line: 166, baseType: !4643, size: 64, offset: 1216)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!334, !4555, !109}
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4563, file: !4557, line: 167, baseType: !4647, size: 64, offset: 1280)
!4647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!109, !4577, !7}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4563, file: !4557, line: 168, baseType: !4651, size: 64, offset: 1344)
!4651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4652, size: 64)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!109, !4555}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4556, file: !4557, line: 44, baseType: !4251, size: 64, offset: 128)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4556, file: !4557, line: 45, baseType: !162, size: 128, offset: 192)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4556, file: !4557, line: 46, baseType: !162, size: 128, offset: 320)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4556, file: !4557, line: 47, baseType: !220, size: 8, offset: 448)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4252, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4252, file: !94, line: 778, baseType: !499, size: 32, offset: 5152)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4252, file: !94, line: 779, baseType: !412, size: 32, offset: 5184)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4252, file: !94, line: 781, baseType: !192, size: 32, offset: 5216)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4252, file: !94, line: 782, baseType: !162, size: 128, offset: 5248)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4252, file: !94, line: 784, baseType: !4664, size: 64, offset: 5376)
!4664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4665, size: 64)
!4665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4666)
!4666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4667, line: 52, size: 768, elements: !4668)
!4667 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4677, !4681, !4682, !4683, !4684, !4688, !4692}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4666, file: !4667, line: 53, baseType: !181, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4666, file: !4667, line: 55, baseType: !314, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4666, file: !4667, line: 56, baseType: !314, size: 64, offset: 128)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4666, file: !4667, line: 58, baseType: !4268, size: 64, offset: 192)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4666, file: !4667, line: 59, baseType: !4674, size: 64, offset: 256)
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = !DISubroutineType(types: !4676)
!4676 = !{!262, !4271, !4277}
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4666, file: !4667, line: 61, baseType: !4678, size: 64, offset: 320)
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = !DISubroutineType(types: !4680)
!4680 = !{null, !4664}
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4666, file: !4667, line: 62, baseType: !4279, size: 64, offset: 384)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4666, file: !4667, line: 64, baseType: !4288, size: 64, offset: 448)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4666, file: !4667, line: 66, baseType: !3627, size: 64, offset: 512)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4666, file: !4667, line: 67, baseType: !4685, size: 64, offset: 576)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!2132, !4271}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4666, file: !4667, line: 69, baseType: !4689, size: 64, offset: 640)
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DISubroutineType(types: !4691)
!4691 = !{null, !4271, !3659, !3660}
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4666, file: !4667, line: 71, baseType: !4283, size: 64, offset: 704)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4252, file: !94, line: 785, baseType: !314, size: 64, offset: 5440)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4252, file: !94, line: 787, baseType: !4279, size: 64, offset: 5504)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4252, file: !94, line: 788, baseType: !4696, size: 64, offset: 5568)
!4696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4697, size: 64)
!4697 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4252, file: !94, line: 789, baseType: !4699, size: 64, offset: 5632)
!4699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4700, size: 64)
!4700 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4252, file: !94, line: 791, baseType: !4702, size: 64, offset: 5696)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4704)
!4704 = !{!4705, !4706, !4707, !4708, !4709}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4703, file: !94, line: 598, baseType: !116, size: 32)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4703, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4703, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4703, file: !94, line: 601, baseType: !1463, size: 8, offset: 96)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4703, file: !94, line: 602, baseType: !1463, size: 8, offset: 104)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4252, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4252, file: !94, line: 795, baseType: !1463, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4252, file: !94, line: 796, baseType: !1463, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4252, file: !94, line: 797, baseType: !1463, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4252, file: !94, line: 798, baseType: !1463, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4252, file: !94, line: 799, baseType: !1463, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4198, file: !4193, line: 676, baseType: !4252, size: 5824, offset: 2240)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4198, file: !4193, line: 677, baseType: !328, size: 64, offset: 8064)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4198, file: !4193, line: 678, baseType: !328, size: 64, offset: 8128)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4198, file: !4193, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4198, file: !4193, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4192, file: !4193, line: 325, baseType: !4197, size: 64, offset: 192)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4192, file: !4193, line: 327, baseType: !334, size: 64, offset: 256)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4192, file: !4193, line: 328, baseType: !4236, size: 64, offset: 320)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4192, file: !4193, line: 329, baseType: !4725, size: 64, offset: 384)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4193, line: 76, size: 832, elements: !4727)
!4727 = !{!4728, !4729, !4730, !4733, !4734}
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4726, file: !4193, line: 77, baseType: !4197, size: 64)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4726, file: !4193, line: 78, baseType: !162, size: 128, offset: 64)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4726, file: !4193, line: 79, baseType: !4731, size: 64, offset: 192)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4193, line: 79, flags: DIFlagFwdDecl)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4726, file: !4193, line: 80, baseType: !224, size: 8, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4726, file: !4193, line: 81, baseType: !177, size: 512, offset: 320)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4192, file: !4193, line: 331, baseType: !7, size: 32, offset: 448)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4192, file: !4193, line: 332, baseType: !232, size: 16, offset: 480)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4192, file: !4193, line: 333, baseType: !232, size: 16, offset: 496)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4192, file: !4193, line: 334, baseType: !232, size: 16, offset: 512)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4192, file: !4193, line: 335, baseType: !232, size: 16, offset: 528)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4192, file: !4193, line: 336, baseType: !7, size: 32, offset: 544)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4192, file: !4193, line: 337, baseType: !220, size: 8, offset: 576)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4192, file: !4193, line: 338, baseType: !220, size: 8, offset: 584)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4192, file: !4193, line: 344, baseType: !4744, size: 64, offset: 640)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4193, line: 319, flags: DIFlagFwdDecl)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4192, file: !4193, line: 345, baseType: !4191, size: 64, offset: 704)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4192, file: !4193, line: 347, baseType: !412, size: 32, offset: 768)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4192, file: !4193, line: 348, baseType: !220, size: 8, offset: 800)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4192, file: !4193, line: 349, baseType: !220, size: 8, offset: 808)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4192, file: !4193, line: 350, baseType: !220, size: 8, offset: 816)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4192, file: !4193, line: 351, baseType: !220, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4192, file: !4193, line: 352, baseType: !220, size: 8, offset: 832)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4192, file: !4193, line: 353, baseType: !220, size: 8, offset: 840)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4192, file: !4193, line: 354, baseType: !230, size: 16, offset: 848)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4192, file: !4193, line: 355, baseType: !4089, size: 64, offset: 896)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4192, file: !4193, line: 357, baseType: !4757, size: 64, offset: 960)
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4193, line: 918, size: 2368, elements: !4759)
!4759 = !{!4760, !4761, !4762, !4775, !4779, !4783, !4787, !4791, !4792, !4796, !4797, !4801, !4821, !4822, !4823, !4824, !4829}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4758, file: !4193, line: 919, baseType: !162, size: 128)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4758, file: !4193, line: 920, baseType: !181, size: 64, offset: 128)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4758, file: !4193, line: 921, baseType: !4763, size: 64, offset: 192)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4765)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4341, line: 44, size: 320, elements: !4766)
!4766 = !{!4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4765, file: !4341, line: 45, baseType: !413, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4765, file: !4341, line: 45, baseType: !413, size: 32, offset: 32)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4765, file: !4341, line: 46, baseType: !413, size: 32, offset: 64)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4765, file: !4341, line: 46, baseType: !413, size: 32, offset: 96)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4765, file: !4341, line: 47, baseType: !413, size: 32, offset: 128)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4765, file: !4341, line: 47, baseType: !413, size: 32, offset: 160)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4765, file: !4341, line: 48, baseType: !4357, size: 64, offset: 192)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4765, file: !4341, line: 49, baseType: !413, size: 32, offset: 256)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4758, file: !4193, line: 922, baseType: !4776, size: 64, offset: 256)
!4776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4777, size: 64)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!109, !4191, !4763}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4758, file: !4193, line: 923, baseType: !4780, size: 64, offset: 320)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{null, !4191}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4758, file: !4193, line: 924, baseType: !4784, size: 64, offset: 384)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!109, !4191, !4368}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4758, file: !4193, line: 925, baseType: !4788, size: 64, offset: 448)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{!109, !4191}
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4758, file: !4193, line: 926, baseType: !4780, size: 64, offset: 512)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4758, file: !4193, line: 927, baseType: !4793, size: 64, offset: 576)
!4793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{!109, !4191, !109}
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4758, file: !4193, line: 928, baseType: !4793, size: 64, offset: 640)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4758, file: !4193, line: 929, baseType: !4798, size: 64, offset: 704)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!412, !4191}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4758, file: !4193, line: 930, baseType: !4802, size: 64, offset: 768)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4804)
!4804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4193, line: 837, size: 448, elements: !4805)
!4805 = !{!4806, !4812, !4816, !4817, !4818, !4819, !4820}
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4804, file: !4193, line: 839, baseType: !4807, size: 64)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!4810, !4191, !4811}
!4810 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4193, line: 814, baseType: !7)
!4811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4193, line: 196, baseType: !7)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4804, file: !4193, line: 843, baseType: !4813, size: 64, offset: 64)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!4810, !4191}
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4804, file: !4193, line: 846, baseType: !4813, size: 64, offset: 128)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4804, file: !4193, line: 849, baseType: !4780, size: 64, offset: 192)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4804, file: !4193, line: 850, baseType: !4780, size: 64, offset: 256)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4804, file: !4193, line: 853, baseType: !4780, size: 64, offset: 320)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4804, file: !4193, line: 856, baseType: !4780, size: 64, offset: 384)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4758, file: !4193, line: 931, baseType: !314, size: 64, offset: 832)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4758, file: !4193, line: 932, baseType: !314, size: 64, offset: 896)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4758, file: !4193, line: 933, baseType: !4329, size: 1152, offset: 960)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4758, file: !4193, line: 934, baseType: !4825, size: 192, offset: 2112)
!4825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4193, line: 801, size: 192, elements: !4826)
!4826 = !{!4827, !4828}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4825, file: !4193, line: 802, baseType: !192, size: 32)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4825, file: !4193, line: 803, baseType: !162, size: 128, offset: 64)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4758, file: !4193, line: 935, baseType: !1463, size: 8, offset: 2304)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4192, file: !4193, line: 358, baseType: !416, size: 64, offset: 1024)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4192, file: !4193, line: 364, baseType: !4538, size: 128, offset: 1088)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4192, file: !4193, line: 366, baseType: !4833, size: 32, offset: 1216)
!4833 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4193, line: 171, baseType: !109)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4192, file: !4193, line: 369, baseType: !220, size: 8, offset: 1248)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4192, file: !4193, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4192, file: !4193, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4192, file: !4193, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4192, file: !4193, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4192, file: !4193, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4192, file: !4193, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4192, file: !4193, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4192, file: !4193, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4192, file: !4193, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4192, file: !4193, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4192, file: !4193, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4192, file: !4193, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4192, file: !4193, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4192, file: !4193, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4192, file: !4193, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4192, file: !4193, line: 390, baseType: !7, size: 32, offset: 1280)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4192, file: !4193, line: 391, baseType: !7, size: 32, offset: 1312)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4192, file: !4193, line: 394, baseType: !4853, size: 64, offset: 1344)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4193, line: 316, flags: DIFlagFwdDecl)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4192, file: !4193, line: 395, baseType: !230, size: 16, offset: 1408)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4192, file: !4193, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4192, file: !4193, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4192, file: !4193, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4192, file: !4193, line: 402, baseType: !4811, size: 32, offset: 1440)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4192, file: !4193, line: 403, baseType: !4252, size: 5824, offset: 1472)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4192, file: !4193, line: 405, baseType: !109, size: 32, offset: 7296)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4192, file: !4193, line: 411, baseType: !7, size: 32, offset: 7328)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4192, file: !4193, line: 412, baseType: !4864, size: 5632, offset: 7360)
!4864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4155, size: 5632, elements: !4865)
!4865 = !{!4866}
!4866 = !DISubrange(count: 11)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4192, file: !4193, line: 413, baseType: !4155, size: 512, offset: 12992)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4192, file: !4193, line: 415, baseType: !1463, size: 8, offset: 13504)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4192, file: !4193, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4192, file: !4193, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4192, file: !4193, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4192, file: !4193, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4192, file: !4193, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4192, file: !4193, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4192, file: !4193, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4192, file: !4193, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4192, file: !4193, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4192, file: !4193, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4192, file: !4193, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4192, file: !4193, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4192, file: !4193, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4192, file: !4193, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4192, file: !4193, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4192, file: !4193, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4192, file: !4193, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4192, file: !4193, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4192, file: !4193, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4192, file: !4193, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4192, file: !4193, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4192, file: !4193, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4192, file: !4193, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4192, file: !4193, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4192, file: !4193, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4192, file: !4193, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4192, file: !4193, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4192, file: !4193, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4192, file: !4193, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4192, file: !4193, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4192, file: !4193, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4192, file: !4193, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4192, file: !4193, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4192, file: !4193, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4192, file: !4193, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4192, file: !4193, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4192, file: !4193, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4192, file: !4193, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4192, file: !4193, line: 468, baseType: !4908, size: 16, offset: 13552)
!4908 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4193, line: 222, baseType: !232)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4192, file: !4193, line: 469, baseType: !212, size: 32, offset: 13568)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4192, file: !4193, line: 471, baseType: !192, size: 32, offset: 13600)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4192, file: !4193, line: 472, baseType: !4912, size: 512, offset: 13632)
!4912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 512, elements: !2324)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4192, file: !4193, line: 473, baseType: !535, size: 64, offset: 14144)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4192, file: !4193, line: 474, baseType: !4915, size: 704, offset: 14208)
!4915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 704, elements: !4865)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4192, file: !4193, line: 475, baseType: !4915, size: 704, offset: 14912)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4192, file: !4193, line: 487, baseType: !334, size: 64, offset: 15616)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4192, file: !4193, line: 488, baseType: !656, size: 32, offset: 15680)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4192, file: !4193, line: 490, baseType: !4920, size: 320, offset: 15744)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4193, line: 309, size: 320, elements: !4921)
!4921 = !{!4922, !4923, !4924}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4920, file: !4193, line: 310, baseType: !643, size: 256)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4920, file: !4193, line: 311, baseType: !7, size: 32, offset: 256)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4920, file: !4193, line: 312, baseType: !220, size: 8, offset: 288)
!4925 = !DIDerivedType(tag: DW_TAG_member, scope: !4192, file: !4193, line: 497, baseType: !4926, size: 64, offset: 16064)
!4926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4192, file: !4193, line: 497, size: 64, elements: !4927)
!4927 = !{!4928, !4931}
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4926, file: !4193, line: 498, baseType: !4929, size: 64)
!4929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4930, size: 64)
!4930 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4193, line: 317, flags: DIFlagFwdDecl)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4926, file: !4193, line: 499, baseType: !4191, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4192, file: !4193, line: 501, baseType: !230, size: 16, offset: 16128)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4192, file: !4193, line: 502, baseType: !220, size: 8, offset: 16144)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4192, file: !4193, line: 505, baseType: !230, size: 16, offset: 16160)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4192, file: !4193, line: 506, baseType: !412, size: 32, offset: 16192)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4192, file: !4193, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4192, file: !4193, line: 510, baseType: !230, size: 16, offset: 16240)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4192, file: !4193, line: 511, baseType: !230, size: 16, offset: 16256)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4192, file: !4193, line: 519, baseType: !230, size: 16, offset: 16272)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4192, file: !4193, line: 520, baseType: !2866, size: 64, offset: 16320)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4192, file: !4193, line: 521, baseType: !309, size: 64, offset: 16384)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4192, file: !4193, line: 526, baseType: !181, size: 64, offset: 16448)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4192, file: !4193, line: 528, baseType: !312, size: 64, offset: 16512)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4192, file: !4193, line: 531, baseType: !4945, size: 56, offset: 16576)
!4945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 56, elements: !3905)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "resource_setup_done", scope: !4124, file: !4125, line: 163, baseType: !220, size: 8, offset: 2752)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4124, file: !4125, line: 166, baseType: !4948, size: 64, offset: 2816)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_operations", file: !4125, line: 121, size: 384, elements: !4950)
!4950 = !{!4951, !4952, !4953, !4958, !4963, !4975}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4949, file: !4125, line: 122, baseType: !4120, size: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4949, file: !4125, line: 123, baseType: !4120, size: 64, offset: 64)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4949, file: !4125, line: 124, baseType: !4954, size: 64, offset: 128)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{!109, !4123, !4957}
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "set_socket", scope: !4949, file: !4125, line: 125, baseType: !4959, size: 64, offset: 192)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!109, !4123, !4962}
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "set_io_map", scope: !4949, file: !4125, line: 126, baseType: !4964, size: 64, offset: 256)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!109, !4123, !4967}
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pccard_io_map", file: !4125, line: 84, size: 192, elements: !4969)
!4969 = !{!4970, !4971, !4972, !4973, !4974}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !4968, file: !4125, line: 85, baseType: !4136, size: 8)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4968, file: !4125, line: 86, baseType: !4136, size: 8, offset: 8)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !4968, file: !4125, line: 87, baseType: !4142, size: 16, offset: 16)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4968, file: !4125, line: 88, baseType: !2866, size: 64, offset: 64)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4968, file: !4125, line: 88, baseType: !2866, size: 64, offset: 128)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "set_mem_map", scope: !4949, file: !4125, line: 127, baseType: !4976, size: 64, offset: 320)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!109, !4123, !4979}
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "resource_ops", scope: !4124, file: !4125, line: 167, baseType: !4981, size: 64, offset: 2880)
!4981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4116, size: 64)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "resource_data", scope: !4124, file: !4125, line: 168, baseType: !334, size: 64, offset: 2944)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "zoom_video", scope: !4124, file: !4125, line: 172, baseType: !4984, size: 64, offset: 3008)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DISubroutineType(types: !4986)
!4986 = !{null, !4123, !109}
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "power_hook", scope: !4124, file: !4125, line: 176, baseType: !4988, size: 64, offset: 3072)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!109, !4123, !109}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "tune_bridge", scope: !4124, file: !4125, line: 180, baseType: !4992, size: 64, offset: 3136)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DISubroutineType(types: !4994)
!4994 = !{null, !4123, !4197}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4124, file: !4125, line: 184, baseType: !971, size: 64, offset: 3200)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "thread_done", scope: !4124, file: !4125, line: 185, baseType: !1855, size: 256, offset: 3264)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_events", scope: !4124, file: !4125, line: 186, baseType: !7, size: 32, offset: 3520)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_events", scope: !4124, file: !4125, line: 187, baseType: !7, size: 32, offset: 3552)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "skt_mutex", scope: !4124, file: !4125, line: 191, baseType: !643, size: 256, offset: 3584)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "ops_mutex", scope: !4124, file: !4125, line: 192, baseType: !643, size: 256, offset: 3840)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "thread_lock", scope: !4124, file: !4125, line: 195, baseType: !192, size: 32, offset: 4096)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4124, file: !4125, line: 198, baseType: !5003, size: 64, offset: 4160)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_callback", file: !4117, line: 102, size: 512, elements: !5005)
!5005 = !{!5006, !5007, !5008, !5009, !5013, !5017, !5018, !5019}
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5004, file: !4117, line: 103, baseType: !157, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !5004, file: !4117, line: 104, baseType: !4120, size: 64, offset: 64)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5004, file: !4117, line: 105, baseType: !4120, size: 64, offset: 128)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "requery", scope: !5004, file: !4117, line: 106, baseType: !5010, size: 64, offset: 192)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{null, !4123}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !5004, file: !4117, line: 107, baseType: !5014, size: 64, offset: 256)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!109, !4123, !965}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5004, file: !4117, line: 108, baseType: !4120, size: 64, offset: 320)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "early_resume", scope: !5004, file: !4117, line: 109, baseType: !4120, size: 64, offset: 384)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5004, file: !4117, line: 110, baseType: !4120, size: 64, offset: 448)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "devices_list", scope: !4124, file: !4125, line: 203, baseType: !162, size: 128, offset: 4224)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "device_count", scope: !4124, file: !4125, line: 207, baseType: !220, size: 8, offset: 4352)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "pcmcia_pfc", scope: !4124, file: !4125, line: 210, baseType: !220, size: 8, offset: 4360)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !4124, file: !4125, line: 213, baseType: !212, size: 32, offset: 4384)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "pcmcia_irq", scope: !4124, file: !4125, line: 216, baseType: !7, size: 32, offset: 4416)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4124, file: !4125, line: 221, baseType: !4252, size: 5824, offset: 4480)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4124, file: !4125, line: 223, baseType: !334, size: 64, offset: 10304)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "resume_status", scope: !4124, file: !4125, line: 225, baseType: !109, size: 32, offset: 10368)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "find_io", scope: !4116, file: !4117, line: 48, baseType: !5029, size: 64, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!109, !4123, !7, !965, !7, !7, !5032}
!5032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4154, size: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "find_mem", scope: !4116, file: !4117, line: 54, baseType: !5034, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DISubroutineType(types: !5036)
!5036 = !{!4154, !312, !312, !312, !109, !4123}
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4116, file: !4117, line: 57, baseType: !4120, size: 64, offset: 192)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4116, file: !4117, line: 58, baseType: !5010, size: 64, offset: 256)
!5039 = !DIGlobalVariableExpression(var: !5040, expr: !DIExpression())
!5040 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pccard_nonstatic_ops295", scope: !2, file: !3, line: 1068, type: !334, isLocal: true, isDefinition: true)
!5041 = !DIGlobalVariableExpression(var: !5042, expr: !DIExpression())
!5042 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init6297", scope: !2, file: !3, line: 1239, type: !334, isLocal: true, isDefinition: true)
!5043 = !DIGlobalVariableExpression(var: !5044, expr: !DIExpression())
!5044 = distinct !DIGlobalVariable(name: "__exitcall_nonstatic_sysfs_exit", scope: !2, file: !3, line: 1240, type: !5045, isLocal: true, isDefinition: true)
!5045 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5046, line: 120, baseType: !4102)
!5046 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5047 = !DIGlobalVariableExpression(var: !5048, expr: !DIExpression())
!5048 = distinct !DIGlobalVariable(name: "probe_mem", scope: !2, file: !3, line: 41, type: !109, isLocal: true, isDefinition: true)
!5049 = !DIGlobalVariableExpression(var: !5050, expr: !DIExpression())
!5050 = distinct !DIGlobalVariable(scope: null, file: !3, line: 411, type: !5051, isLocal: true, isDefinition: true)
!5051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 272, elements: !5052)
!5052 = !{!5053}
!5053 = !DISubrange(count: 34)
!5054 = !DIGlobalVariableExpression(var: !5055, expr: !DIExpression())
!5055 = distinct !DIGlobalVariable(scope: null, file: !3, line: 436, type: !5056, isLocal: true, isDefinition: true)
!5056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 104, elements: !5057)
!5057 = !{!5058}
!5058 = !DISubrange(count: 13)
!5059 = !DIGlobalVariableExpression(var: !5060, expr: !DIExpression())
!5060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 437, type: !5061, isLocal: true, isDefinition: true)
!5061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 136, elements: !5062)
!5062 = !{!5063}
!5063 = !DISubrange(count: 17)
!5064 = !DIGlobalVariableExpression(var: !5065, expr: !DIExpression())
!5065 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !1449, isLocal: true, isDefinition: true)
!5066 = !DIGlobalVariableExpression(var: !5067, expr: !DIExpression())
!5067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !5068, isLocal: true, isDefinition: true)
!5068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 56, elements: !3905)
!5069 = !DIGlobalVariableExpression(var: !5070, expr: !DIExpression())
!5070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 442, type: !5071, isLocal: true, isDefinition: true)
!5071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 8, elements: !1227)
!5072 = !DIGlobalVariableExpression(var: !5073, expr: !DIExpression())
!5073 = distinct !DIGlobalVariable(scope: null, file: !3, line: 355, type: !2323, isLocal: true, isDefinition: true)
!5074 = !DIGlobalVariableExpression(var: !5075, expr: !DIExpression())
!5075 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !5076, isLocal: true, isDefinition: true)
!5076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 296, elements: !5077)
!5077 = !{!5078}
!5078 = !DISubrange(count: 37)
!5079 = !DIGlobalVariableExpression(var: !5080, expr: !DIExpression())
!5080 = distinct !DIGlobalVariable(scope: null, file: !147, line: 480, type: !5081, isLocal: true, isDefinition: true)
!5081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 168, elements: !5082)
!5082 = !{!5083}
!5083 = !DISubrange(count: 21)
!5084 = !DIGlobalVariableExpression(var: !5085, expr: !DIExpression())
!5085 = distinct !DIGlobalVariable(scope: null, file: !3, line: 979, type: !5086, isLocal: true, isDefinition: true)
!5086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 312, elements: !5087)
!5087 = !{!5088}
!5088 = !DISubrange(count: 39)
!5089 = !DIGlobalVariableExpression(var: !5090, expr: !DIExpression())
!5090 = distinct !DIGlobalVariable(name: "pccard_rsrc_interface", scope: !2, file: !3, line: 1223, type: !5091, isLocal: true, isDefinition: true)
!5091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_interface", file: !4667, line: 219, size: 320, elements: !5092)
!5092 = !{!5093, !5094, !5095, !5096}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5091, file: !4667, line: 220, baseType: !162, size: 128)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5091, file: !4667, line: 221, baseType: !4664, size: 64, offset: 128)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "add_dev", scope: !5091, file: !4667, line: 223, baseType: !4288, size: 64, offset: 192)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "remove_dev", scope: !5091, file: !4667, line: 224, baseType: !4279, size: 64, offset: 256)
!5097 = !DIGlobalVariableExpression(var: !5098, expr: !DIExpression())
!5098 = distinct !DIGlobalVariable(name: "rsrc_attributes", scope: !2, file: !3, line: 1201, type: !316, isLocal: true, isDefinition: true)
!5099 = !DIGlobalVariableExpression(var: !5100, expr: !DIExpression())
!5100 = distinct !DIGlobalVariable(name: "pccard_rsrc_attributes", scope: !2, file: !3, line: 1195, type: !5101, isLocal: true, isDefinition: true)
!5101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 192, elements: !263)
!5102 = !DIGlobalVariableExpression(var: !5103, expr: !DIExpression())
!5103 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1127, type: !5104, isLocal: true, isDefinition: true)
!5104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 184, elements: !5105)
!5105 = !{!5106}
!5106 = !DISubrange(count: 23)
!5107 = !DIGlobalVariableExpression(var: !5108, expr: !DIExpression())
!5108 = distinct !DIGlobalVariable(name: "dev_attr_available_resources_io", scope: !2, file: !3, line: 1127, type: !5109, isLocal: true, isDefinition: true)
!5109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !94, line: 106, size: 256, elements: !5110)
!5110 = !{!5111, !5112, !5117}
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5109, file: !94, line: 107, baseType: !300, size: 128)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5109, file: !94, line: 108, baseType: !5113, size: 64, offset: 128)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!294, !4251, !5116, !262}
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5109, size: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5109, file: !94, line: 110, baseType: !5118, size: 64, offset: 192)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!294, !4251, !5116, !181, !309}
!5121 = !DIGlobalVariableExpression(var: !5122, expr: !DIExpression())
!5122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1088, type: !5123, isLocal: true, isDefinition: true)
!5123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 152, elements: !5124)
!5124 = !{!5125}
!5125 = !DISubrange(count: 19)
!5126 = !DIGlobalVariableExpression(var: !5127, expr: !DIExpression())
!5127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1106, type: !2323, isLocal: true, isDefinition: true)
!5128 = !DIGlobalVariableExpression(var: !5129, expr: !DIExpression())
!5129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1108, type: !2323, isLocal: true, isDefinition: true)
!5130 = !DIGlobalVariableExpression(var: !5131, expr: !DIExpression())
!5131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1111, type: !5132, isLocal: true, isDefinition: true)
!5132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 112, elements: !5133)
!5133 = !{!5134}
!5134 = !DISubrange(count: 14)
!5135 = !DIGlobalVariableExpression(var: !5136, expr: !DIExpression())
!5136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1193, type: !5137, isLocal: true, isDefinition: true)
!5137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 192, elements: !5138)
!5138 = !{!5139}
!5139 = !DISubrange(count: 24)
!5140 = !DIGlobalVariableExpression(var: !5141, expr: !DIExpression())
!5141 = distinct !DIGlobalVariable(name: "dev_attr_available_resources_mem", scope: !2, file: !3, line: 1193, type: !5109, isLocal: true, isDefinition: true)
!5142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 176, elements: !5143)
!5143 = !{!5144}
!5144 = !DISubrange(count: 22)
!5145 = !{i32 7, !"Dwarf Version", i32 5}
!5146 = !{i32 2, !"Debug Info Version", i32 3}
!5147 = !{i32 1, !"wchar_size", i32 2}
!5148 = !{i32 8, !"cf-protection-branch", i32 1}
!5149 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5150 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5151 = !{i32 1, !"Code Model", i32 2}
!5152 = !{i32 1, !"override-stack-alignment", i32 8}
!5153 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5154 = distinct !DISubprogram(name: "pcmcia_nonstatic_validate_mem", scope: !3, file: !3, line: 563, type: !4121, scopeLine: 564, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5155)
!5155 = !{!5156, !5157, !5171, !5172}
!5156 = !DILocalVariable(name: "s", arg: 1, scope: !5154, file: !3, line: 563, type: !4123)
!5157 = !DILocalVariable(name: "s_data", scope: !5154, file: !3, line: 565, type: !5158)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "socket_data", file: !3, line: 53, size: 576, elements: !5160)
!5160 = !{!5161, !5169, !5170}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "mem_db", scope: !5159, file: !3, line: 54, baseType: !5162, size: 192)
!5162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource_map", file: !3, line: 48, size: 192, elements: !5163)
!5163 = !{!5164, !5166, !5167}
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5162, file: !3, line: 49, baseType: !5165, size: 64)
!5165 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !163, line: 88, baseType: !312)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5162, file: !3, line: 49, baseType: !5165, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5162, file: !3, line: 50, baseType: !5168, size: 64, offset: 128)
!5168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5162, size: 64)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "mem_db_valid", scope: !5159, file: !3, line: 55, baseType: !5162, size: 192, offset: 192)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "io_db", scope: !5159, file: !3, line: 56, baseType: !5162, size: 192, offset: 384)
!5171 = !DILocalVariable(name: "probe_mask", scope: !5154, file: !3, line: 566, type: !7)
!5172 = !DILocalVariable(name: "ret", scope: !5154, file: !3, line: 567, type: !109)
!5173 = !DILocation(line: 563, column: 64, scope: !5154)
!5174 = !DILocation(line: 565, column: 2, scope: !5154)
!5175 = !DILocation(line: 565, column: 22, scope: !5154)
!5176 = !DILocation(line: 565, column: 31, scope: !5154)
!5177 = !DILocation(line: 565, column: 34, scope: !5154)
!5178 = !DILocation(line: 566, column: 2, scope: !5154)
!5179 = !DILocation(line: 566, column: 15, scope: !5154)
!5180 = !DILocation(line: 567, column: 2, scope: !5154)
!5181 = !DILocation(line: 567, column: 6, scope: !5154)
!5182 = !DILocation(line: 569, column: 7, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 569, column: 6)
!5184 = !DILocation(line: 569, column: 17, scope: !5183)
!5185 = !DILocation(line: 569, column: 22, scope: !5183)
!5186 = !DILocation(line: 569, column: 25, scope: !5183)
!5187 = !DILocation(line: 569, column: 31, scope: !5183)
!5188 = !DILocation(line: 569, column: 6, scope: !5154)
!5189 = !DILocation(line: 570, column: 3, scope: !5183)
!5190 = !DILocation(line: 572, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 572, column: 6)
!5192 = !DILocation(line: 572, column: 9, scope: !5191)
!5193 = !DILocation(line: 572, column: 18, scope: !5191)
!5194 = !DILocation(line: 572, column: 6, scope: !5154)
!5195 = !DILocation(line: 573, column: 14, scope: !5191)
!5196 = !DILocation(line: 573, column: 3, scope: !5191)
!5197 = !DILocation(line: 575, column: 21, scope: !5154)
!5198 = !DILocation(line: 575, column: 24, scope: !5154)
!5199 = !DILocation(line: 575, column: 8, scope: !5154)
!5200 = !DILocation(line: 575, column: 6, scope: !5154)
!5201 = !DILocation(line: 577, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5154, file: !3, line: 577, column: 6)
!5203 = !DILocation(line: 577, column: 14, scope: !5202)
!5204 = !DILocation(line: 577, column: 27, scope: !5202)
!5205 = !DILocation(line: 577, column: 36, scope: !5202)
!5206 = !DILocation(line: 577, column: 44, scope: !5202)
!5207 = !DILocation(line: 577, column: 32, scope: !5202)
!5208 = !DILocation(line: 577, column: 6, scope: !5154)
!5209 = !DILocation(line: 578, column: 3, scope: !5202)
!5210 = !DILocation(line: 580, column: 9, scope: !5154)
!5211 = !DILocation(line: 580, column: 2, scope: !5154)
!5212 = !DILocation(line: 581, column: 1, scope: !5154)
!5213 = distinct !DISubprogram(name: "nonstatic_find_io", scope: !3, file: !3, line: 716, type: !5030, scopeLine: 719, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5214 = !{!5215, !5216, !5217, !5218, !5219, !5220, !5221, !5222, !5223, !5227}
!5215 = !DILocalVariable(name: "s", arg: 1, scope: !5213, file: !3, line: 716, type: !4123)
!5216 = !DILocalVariable(name: "attr", arg: 2, scope: !5213, file: !3, line: 716, type: !7)
!5217 = !DILocalVariable(name: "base", arg: 3, scope: !5213, file: !3, line: 717, type: !965)
!5218 = !DILocalVariable(name: "num", arg: 4, scope: !5213, file: !3, line: 717, type: !7)
!5219 = !DILocalVariable(name: "align", arg: 5, scope: !5213, file: !3, line: 718, type: !7)
!5220 = !DILocalVariable(name: "parent", arg: 6, scope: !5213, file: !3, line: 718, type: !5032)
!5221 = !DILocalVariable(name: "i", scope: !5213, file: !3, line: 720, type: !109)
!5222 = !DILocalVariable(name: "ret", scope: !5213, file: !3, line: 720, type: !109)
!5223 = !DILocalVariable(name: "res", scope: !5224, file: !3, line: 738, type: !4154)
!5224 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 737, column: 35)
!5225 = distinct !DILexicalBlock(scope: !5226, file: !3, line: 737, column: 2)
!5226 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 737, column: 2)
!5227 = !DILocalVariable(name: "try", scope: !5224, file: !3, line: 739, type: !7)
!5228 = !DILocation(line: 716, column: 52, scope: !5213)
!5229 = !DILocation(line: 716, column: 68, scope: !5213)
!5230 = !DILocation(line: 717, column: 18, scope: !5213)
!5231 = !DILocation(line: 717, column: 37, scope: !5213)
!5232 = !DILocation(line: 718, column: 17, scope: !5213)
!5233 = !DILocation(line: 718, column: 42, scope: !5213)
!5234 = !DILocation(line: 720, column: 2, scope: !5213)
!5235 = !DILocation(line: 720, column: 6, scope: !5213)
!5236 = !DILocation(line: 720, column: 9, scope: !5213)
!5237 = !DILocation(line: 726, column: 9, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5213, file: !3, line: 726, column: 2)
!5239 = !DILocation(line: 726, column: 7, scope: !5238)
!5240 = !DILocation(line: 726, column: 14, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 726, column: 2)
!5242 = !DILocation(line: 726, column: 16, scope: !5241)
!5243 = !DILocation(line: 726, column: 2, scope: !5238)
!5244 = !DILocation(line: 727, column: 8, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 727, column: 7)
!5246 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 726, column: 35)
!5247 = !DILocation(line: 727, column: 11, scope: !5245)
!5248 = !DILocation(line: 727, column: 14, scope: !5245)
!5249 = !DILocation(line: 727, column: 17, scope: !5245)
!5250 = !DILocation(line: 727, column: 7, scope: !5246)
!5251 = !DILocation(line: 728, column: 4, scope: !5245)
!5252 = !DILocation(line: 730, column: 9, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 730, column: 7)
!5254 = !DILocation(line: 730, column: 8, scope: !5253)
!5255 = !DILocation(line: 730, column: 7, scope: !5246)
!5256 = !DILocation(line: 731, column: 4, scope: !5253)
!5257 = !DILocation(line: 733, column: 8, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 733, column: 7)
!5259 = !DILocation(line: 733, column: 11, scope: !5258)
!5260 = !DILocation(line: 733, column: 14, scope: !5258)
!5261 = !DILocation(line: 733, column: 17, scope: !5258)
!5262 = !DILocation(line: 733, column: 22, scope: !5258)
!5263 = !DILocation(line: 733, column: 31, scope: !5258)
!5264 = !DILocation(line: 733, column: 36, scope: !5258)
!5265 = !DILocation(line: 733, column: 30, scope: !5258)
!5266 = !DILocation(line: 733, column: 28, scope: !5258)
!5267 = !DILocation(line: 733, column: 45, scope: !5258)
!5268 = !DILocation(line: 733, column: 44, scope: !5258)
!5269 = !DILocation(line: 733, column: 41, scope: !5258)
!5270 = !DILocation(line: 733, column: 7, scope: !5246)
!5271 = !DILocation(line: 734, column: 4, scope: !5258)
!5272 = !DILocation(line: 735, column: 2, scope: !5246)
!5273 = !DILocation(line: 726, column: 31, scope: !5241)
!5274 = !DILocation(line: 726, column: 2, scope: !5241)
!5275 = distinct !{!5275, !5243, !5276, !5277, !5278}
!5276 = !DILocation(line: 735, column: 2, scope: !5238)
!5277 = !{!"llvm.loop.mustprogress"}
!5278 = !{!"llvm.loop.unroll.disable"}
!5279 = !DILocation(line: 737, column: 9, scope: !5226)
!5280 = !DILocation(line: 737, column: 7, scope: !5226)
!5281 = !DILocation(line: 737, column: 14, scope: !5225)
!5282 = !DILocation(line: 737, column: 16, scope: !5225)
!5283 = !DILocation(line: 737, column: 2, scope: !5226)
!5284 = !DILocation(line: 738, column: 3, scope: !5224)
!5285 = !DILocation(line: 738, column: 20, scope: !5224)
!5286 = !DILocation(line: 738, column: 26, scope: !5224)
!5287 = !DILocation(line: 738, column: 29, scope: !5224)
!5288 = !DILocation(line: 738, column: 32, scope: !5224)
!5289 = !DILocation(line: 738, column: 35, scope: !5224)
!5290 = !DILocation(line: 739, column: 3, scope: !5224)
!5291 = !DILocation(line: 739, column: 16, scope: !5224)
!5292 = !DILocation(line: 741, column: 7, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 741, column: 7)
!5294 = !DILocation(line: 741, column: 11, scope: !5293)
!5295 = !DILocation(line: 741, column: 15, scope: !5293)
!5296 = !DILocation(line: 741, column: 20, scope: !5293)
!5297 = !DILocation(line: 741, column: 26, scope: !5293)
!5298 = !DILocation(line: 742, column: 5, scope: !5293)
!5299 = !DILocation(line: 742, column: 10, scope: !5293)
!5300 = !DILocation(line: 742, column: 4, scope: !5293)
!5301 = !DILocation(line: 741, column: 45, scope: !5293)
!5302 = !DILocation(line: 741, column: 7, scope: !5224)
!5303 = !DILocation(line: 743, column: 4, scope: !5293)
!5304 = !DILocation(line: 745, column: 8, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 745, column: 7)
!5306 = !DILocation(line: 745, column: 7, scope: !5224)
!5307 = !DILocation(line: 746, column: 8, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 746, column: 8)
!5309 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 745, column: 13)
!5310 = !DILocation(line: 746, column: 14, scope: !5308)
!5311 = !DILocation(line: 746, column: 8, scope: !5309)
!5312 = !DILocation(line: 747, column: 11, scope: !5308)
!5313 = !DILocation(line: 747, column: 5, scope: !5308)
!5314 = !DILocation(line: 749, column: 52, scope: !5309)
!5315 = !DILocation(line: 750, column: 10, scope: !5309)
!5316 = !DILocation(line: 750, column: 9, scope: !5309)
!5317 = !DILocation(line: 750, column: 16, scope: !5309)
!5318 = !DILocation(line: 751, column: 9, scope: !5309)
!5319 = !DILocation(line: 749, column: 25, scope: !5309)
!5320 = !DILocation(line: 749, column: 10, scope: !5309)
!5321 = !DILocation(line: 749, column: 13, scope: !5309)
!5322 = !DILocation(line: 749, column: 16, scope: !5309)
!5323 = !DILocation(line: 749, column: 19, scope: !5309)
!5324 = !DILocation(line: 749, column: 23, scope: !5309)
!5325 = !DILocation(line: 749, column: 8, scope: !5309)
!5326 = !DILocation(line: 752, column: 9, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 752, column: 8)
!5328 = !DILocation(line: 752, column: 8, scope: !5309)
!5329 = !DILocation(line: 753, column: 5, scope: !5327)
!5330 = !DILocation(line: 755, column: 12, scope: !5309)
!5331 = !DILocation(line: 755, column: 17, scope: !5309)
!5332 = !DILocation(line: 755, column: 5, scope: !5309)
!5333 = !DILocation(line: 755, column: 10, scope: !5309)
!5334 = !DILocation(line: 757, column: 7, scope: !5309)
!5335 = !DILocation(line: 757, column: 12, scope: !5309)
!5336 = !DILocation(line: 757, column: 18, scope: !5309)
!5337 = !DILocation(line: 758, column: 7, scope: !5309)
!5338 = !DILocation(line: 758, column: 12, scope: !5309)
!5339 = !DILocation(line: 758, column: 6, scope: !5309)
!5340 = !DILocation(line: 757, column: 38, scope: !5309)
!5341 = !DILocation(line: 756, column: 4, scope: !5309)
!5342 = !DILocation(line: 756, column: 7, scope: !5309)
!5343 = !DILocation(line: 756, column: 10, scope: !5309)
!5344 = !DILocation(line: 756, column: 13, scope: !5309)
!5345 = !DILocation(line: 756, column: 18, scope: !5309)
!5346 = !DILocation(line: 756, column: 24, scope: !5309)
!5347 = !DILocation(line: 759, column: 21, scope: !5309)
!5348 = !DILocation(line: 759, column: 4, scope: !5309)
!5349 = !DILocation(line: 759, column: 7, scope: !5309)
!5350 = !DILocation(line: 759, column: 10, scope: !5309)
!5351 = !DILocation(line: 759, column: 13, scope: !5309)
!5352 = !DILocation(line: 759, column: 19, scope: !5309)
!5353 = !DILocation(line: 760, column: 14, scope: !5309)
!5354 = !DILocation(line: 760, column: 5, scope: !5309)
!5355 = !DILocation(line: 760, column: 12, scope: !5309)
!5356 = !DILocation(line: 761, column: 4, scope: !5309)
!5357 = !DILocation(line: 765, column: 9, scope: !5224)
!5358 = !DILocation(line: 765, column: 14, scope: !5224)
!5359 = !DILocation(line: 765, column: 18, scope: !5224)
!5360 = !DILocation(line: 765, column: 7, scope: !5224)
!5361 = !DILocation(line: 766, column: 9, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 766, column: 7)
!5363 = !DILocation(line: 766, column: 8, scope: !5362)
!5364 = !DILocation(line: 766, column: 14, scope: !5362)
!5365 = !DILocation(line: 766, column: 20, scope: !5362)
!5366 = !DILocation(line: 766, column: 25, scope: !5362)
!5367 = !DILocation(line: 766, column: 24, scope: !5362)
!5368 = !DILocation(line: 766, column: 33, scope: !5362)
!5369 = !DILocation(line: 766, column: 30, scope: !5362)
!5370 = !DILocation(line: 766, column: 7, scope: !5224)
!5371 = !DILocation(line: 767, column: 40, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 766, column: 39)
!5373 = !DILocation(line: 767, column: 43, scope: !5372)
!5374 = !DILocation(line: 767, column: 48, scope: !5372)
!5375 = !DILocation(line: 768, column: 8, scope: !5372)
!5376 = !DILocation(line: 768, column: 13, scope: !5372)
!5377 = !DILocation(line: 768, column: 19, scope: !5372)
!5378 = !DILocation(line: 768, column: 17, scope: !5372)
!5379 = !DILocation(line: 767, column: 11, scope: !5372)
!5380 = !DILocation(line: 767, column: 8, scope: !5372)
!5381 = !DILocation(line: 769, column: 9, scope: !5382)
!5382 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 769, column: 8)
!5383 = !DILocation(line: 769, column: 8, scope: !5372)
!5384 = !DILocation(line: 770, column: 27, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 769, column: 14)
!5386 = !DILocation(line: 770, column: 30, scope: !5385)
!5387 = !DILocation(line: 770, column: 33, scope: !5385)
!5388 = !DILocation(line: 770, column: 36, scope: !5385)
!5389 = !DILocation(line: 770, column: 41, scope: !5385)
!5390 = !DILocation(line: 770, column: 46, scope: !5385)
!5391 = !DILocation(line: 771, column: 27, scope: !5385)
!5392 = !DILocation(line: 771, column: 13, scope: !5385)
!5393 = !DILocation(line: 771, column: 34, scope: !5385)
!5394 = !DILocation(line: 771, column: 32, scope: !5385)
!5395 = !DILocation(line: 770, column: 11, scope: !5385)
!5396 = !DILocation(line: 770, column: 9, scope: !5385)
!5397 = !DILocation(line: 772, column: 9, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 772, column: 9)
!5399 = !DILocation(line: 772, column: 9, scope: !5385)
!5400 = !DILocation(line: 773, column: 6, scope: !5398)
!5401 = !DILocation(line: 774, column: 13, scope: !5385)
!5402 = !DILocation(line: 774, column: 6, scope: !5385)
!5403 = !DILocation(line: 774, column: 11, scope: !5385)
!5404 = !DILocation(line: 775, column: 23, scope: !5385)
!5405 = !DILocation(line: 775, column: 5, scope: !5385)
!5406 = !DILocation(line: 775, column: 8, scope: !5385)
!5407 = !DILocation(line: 775, column: 11, scope: !5385)
!5408 = !DILocation(line: 775, column: 14, scope: !5385)
!5409 = !DILocation(line: 775, column: 20, scope: !5385)
!5410 = !DILocation(line: 776, column: 15, scope: !5385)
!5411 = !DILocation(line: 776, column: 6, scope: !5385)
!5412 = !DILocation(line: 776, column: 13, scope: !5385)
!5413 = !DILocation(line: 777, column: 5, scope: !5385)
!5414 = !DILocation(line: 779, column: 3, scope: !5372)
!5415 = !DILocation(line: 782, column: 9, scope: !5224)
!5416 = !DILocation(line: 782, column: 14, scope: !5224)
!5417 = !DILocation(line: 782, column: 22, scope: !5224)
!5418 = !DILocation(line: 782, column: 20, scope: !5224)
!5419 = !DILocation(line: 782, column: 7, scope: !5224)
!5420 = !DILocation(line: 783, column: 9, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 783, column: 7)
!5422 = !DILocation(line: 783, column: 8, scope: !5421)
!5423 = !DILocation(line: 783, column: 14, scope: !5421)
!5424 = !DILocation(line: 783, column: 20, scope: !5421)
!5425 = !DILocation(line: 783, column: 25, scope: !5421)
!5426 = !DILocation(line: 783, column: 24, scope: !5421)
!5427 = !DILocation(line: 783, column: 33, scope: !5421)
!5428 = !DILocation(line: 783, column: 30, scope: !5421)
!5429 = !DILocation(line: 783, column: 7, scope: !5224)
!5430 = !DILocation(line: 784, column: 40, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 783, column: 39)
!5432 = !DILocation(line: 785, column: 8, scope: !5431)
!5433 = !DILocation(line: 785, column: 13, scope: !5431)
!5434 = !DILocation(line: 785, column: 21, scope: !5431)
!5435 = !DILocation(line: 785, column: 19, scope: !5431)
!5436 = !DILocation(line: 786, column: 8, scope: !5431)
!5437 = !DILocation(line: 786, column: 13, scope: !5431)
!5438 = !DILocation(line: 784, column: 11, scope: !5431)
!5439 = !DILocation(line: 784, column: 8, scope: !5431)
!5440 = !DILocation(line: 787, column: 9, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 787, column: 8)
!5442 = !DILocation(line: 787, column: 8, scope: !5431)
!5443 = !DILocation(line: 788, column: 27, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5441, file: !3, line: 787, column: 14)
!5445 = !DILocation(line: 788, column: 30, scope: !5444)
!5446 = !DILocation(line: 788, column: 33, scope: !5444)
!5447 = !DILocation(line: 788, column: 36, scope: !5444)
!5448 = !DILocation(line: 789, column: 13, scope: !5444)
!5449 = !DILocation(line: 789, column: 18, scope: !5444)
!5450 = !DILocation(line: 789, column: 26, scope: !5444)
!5451 = !DILocation(line: 789, column: 24, scope: !5444)
!5452 = !DILocation(line: 790, column: 27, scope: !5444)
!5453 = !DILocation(line: 790, column: 13, scope: !5444)
!5454 = !DILocation(line: 790, column: 34, scope: !5444)
!5455 = !DILocation(line: 790, column: 32, scope: !5444)
!5456 = !DILocation(line: 788, column: 11, scope: !5444)
!5457 = !DILocation(line: 788, column: 9, scope: !5444)
!5458 = !DILocation(line: 791, column: 9, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5444, file: !3, line: 791, column: 9)
!5460 = !DILocation(line: 791, column: 9, scope: !5444)
!5461 = !DILocation(line: 792, column: 6, scope: !5459)
!5462 = !DILocation(line: 793, column: 13, scope: !5444)
!5463 = !DILocation(line: 793, column: 6, scope: !5444)
!5464 = !DILocation(line: 793, column: 11, scope: !5444)
!5465 = !DILocation(line: 794, column: 23, scope: !5444)
!5466 = !DILocation(line: 794, column: 5, scope: !5444)
!5467 = !DILocation(line: 794, column: 8, scope: !5444)
!5468 = !DILocation(line: 794, column: 11, scope: !5444)
!5469 = !DILocation(line: 794, column: 14, scope: !5444)
!5470 = !DILocation(line: 794, column: 20, scope: !5444)
!5471 = !DILocation(line: 795, column: 15, scope: !5444)
!5472 = !DILocation(line: 795, column: 6, scope: !5444)
!5473 = !DILocation(line: 795, column: 13, scope: !5444)
!5474 = !DILocation(line: 796, column: 5, scope: !5444)
!5475 = !DILocation(line: 798, column: 3, scope: !5431)
!5476 = !DILocation(line: 799, column: 2, scope: !5225)
!5477 = !DILocation(line: 799, column: 2, scope: !5224)
!5478 = !DILocation(line: 737, column: 31, scope: !5225)
!5479 = !DILocation(line: 737, column: 2, scope: !5225)
!5480 = distinct !{!5480, !5283, !5481, !5277, !5278}
!5481 = !DILocation(line: 799, column: 2, scope: !5226)
!5482 = !DILocation(line: 801, column: 2, scope: !5213)
!5483 = !DILocation(line: 802, column: 1, scope: !5213)
!5484 = distinct !DISubprogram(name: "nonstatic_find_mem_region", scope: !3, file: !3, line: 805, type: !5485, scopeLine: 807, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5487)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!4154, !5165, !5165, !5165, !109, !4123}
!5487 = !{!5488, !5489, !5490, !5491, !5492, !5493, !5494, !5495, !5501, !5502, !5503, !5504, !5505}
!5488 = !DILocalVariable(name: "base", arg: 1, scope: !5484, file: !3, line: 805, type: !5165)
!5489 = !DILocalVariable(name: "num", arg: 2, scope: !5484, file: !3, line: 805, type: !5165)
!5490 = !DILocalVariable(name: "align", arg: 3, scope: !5484, file: !3, line: 806, type: !5165)
!5491 = !DILocalVariable(name: "low", arg: 4, scope: !5484, file: !3, line: 806, type: !109)
!5492 = !DILocalVariable(name: "s", arg: 5, scope: !5484, file: !3, line: 806, type: !4123)
!5493 = !DILocalVariable(name: "res", scope: !5484, file: !3, line: 808, type: !4154)
!5494 = !DILocalVariable(name: "s_data", scope: !5484, file: !3, line: 810, type: !5158)
!5495 = !DILocalVariable(name: "data", scope: !5484, file: !3, line: 811, type: !5496)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pcmcia_align_data", file: !3, line: 583, size: 192, elements: !5497)
!5497 = !{!5498, !5499, !5500}
!5498 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !5496, file: !3, line: 584, baseType: !312, size: 64)
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5496, file: !3, line: 585, baseType: !312, size: 64, offset: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !5496, file: !3, line: 586, baseType: !5168, size: 64, offset: 128)
!5501 = !DILocalVariable(name: "min", scope: !5484, file: !3, line: 812, type: !312)
!5502 = !DILocalVariable(name: "max", scope: !5484, file: !3, line: 812, type: !312)
!5503 = !DILocalVariable(name: "ret", scope: !5484, file: !3, line: 813, type: !109)
!5504 = !DILocalVariable(name: "i", scope: !5484, file: !3, line: 813, type: !109)
!5505 = !DILocalVariable(name: "j", scope: !5484, file: !3, line: 813, type: !109)
!5506 = !DILocation(line: 805, column: 58, scope: !5484)
!5507 = !DILocation(line: 805, column: 71, scope: !5484)
!5508 = !DILocation(line: 806, column: 10, scope: !5484)
!5509 = !DILocation(line: 806, column: 21, scope: !5484)
!5510 = !DILocation(line: 806, column: 48, scope: !5484)
!5511 = !DILocation(line: 808, column: 2, scope: !5484)
!5512 = !DILocation(line: 808, column: 19, scope: !5484)
!5513 = !DILocation(line: 808, column: 49, scope: !5484)
!5514 = !DILocation(line: 809, column: 17, scope: !5484)
!5515 = !DILocation(line: 809, column: 20, scope: !5484)
!5516 = !DILocation(line: 809, column: 7, scope: !5484)
!5517 = !DILocation(line: 808, column: 25, scope: !5484)
!5518 = !DILocation(line: 810, column: 2, scope: !5484)
!5519 = !DILocation(line: 810, column: 22, scope: !5484)
!5520 = !DILocation(line: 810, column: 31, scope: !5484)
!5521 = !DILocation(line: 810, column: 34, scope: !5484)
!5522 = !DILocation(line: 811, column: 2, scope: !5484)
!5523 = !DILocation(line: 811, column: 27, scope: !5484)
!5524 = !DILocation(line: 812, column: 2, scope: !5484)
!5525 = !DILocation(line: 812, column: 16, scope: !5484)
!5526 = !DILocation(line: 812, column: 21, scope: !5484)
!5527 = !DILocation(line: 813, column: 2, scope: !5484)
!5528 = !DILocation(line: 813, column: 6, scope: !5484)
!5529 = !DILocation(line: 813, column: 11, scope: !5484)
!5530 = !DILocation(line: 813, column: 14, scope: !5484)
!5531 = !DILocation(line: 815, column: 7, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 815, column: 6)
!5533 = !DILocation(line: 815, column: 6, scope: !5484)
!5534 = !DILocation(line: 816, column: 3, scope: !5532)
!5535 = !DILocation(line: 818, column: 8, scope: !5484)
!5536 = !DILocation(line: 818, column: 12, scope: !5484)
!5537 = !DILocation(line: 818, column: 17, scope: !5484)
!5538 = !DILocation(line: 818, column: 20, scope: !5484)
!5539 = !DILocation(line: 818, column: 29, scope: !5484)
!5540 = !DILocation(line: 818, column: 15, scope: !5484)
!5541 = !DILocation(line: 818, column: 6, scope: !5484)
!5542 = !DILocation(line: 820, column: 14, scope: !5484)
!5543 = !DILocation(line: 820, column: 20, scope: !5484)
!5544 = !DILocation(line: 820, column: 7, scope: !5484)
!5545 = !DILocation(line: 820, column: 12, scope: !5484)
!5546 = !DILocation(line: 821, column: 16, scope: !5484)
!5547 = !DILocation(line: 821, column: 28, scope: !5484)
!5548 = !DILocation(line: 821, column: 21, scope: !5484)
!5549 = !DILocation(line: 821, column: 7, scope: !5484)
!5550 = !DILocation(line: 821, column: 14, scope: !5484)
!5551 = !DILocation(line: 823, column: 9, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 823, column: 2)
!5553 = !DILocation(line: 823, column: 7, scope: !5552)
!5554 = !DILocation(line: 823, column: 14, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 823, column: 2)
!5556 = !DILocation(line: 823, column: 16, scope: !5555)
!5557 = !DILocation(line: 823, column: 2, scope: !5552)
!5558 = !DILocation(line: 824, column: 15, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 823, column: 26)
!5560 = !DILocation(line: 824, column: 23, scope: !5559)
!5561 = !DILocation(line: 824, column: 8, scope: !5559)
!5562 = !DILocation(line: 824, column: 12, scope: !5559)
!5563 = !DILocation(line: 825, column: 7, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 825, column: 7)
!5565 = !DILocation(line: 825, column: 7, scope: !5559)
!5566 = !DILocation(line: 826, column: 8, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 825, column: 12)
!5568 = !DILocation(line: 827, column: 10, scope: !5567)
!5569 = !DILocation(line: 827, column: 17, scope: !5567)
!5570 = !DILocation(line: 827, column: 15, scope: !5567)
!5571 = !DILocation(line: 827, column: 23, scope: !5567)
!5572 = !DILocation(line: 827, column: 8, scope: !5567)
!5573 = !DILocation(line: 828, column: 3, scope: !5567)
!5574 = !DILocation(line: 829, column: 8, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 828, column: 10)
!5576 = !DILocation(line: 830, column: 23, scope: !5575)
!5577 = !DILocation(line: 830, column: 21, scope: !5575)
!5578 = !DILocation(line: 830, column: 8, scope: !5575)
!5579 = !DILocation(line: 833, column: 10, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 833, column: 3)
!5581 = !DILocation(line: 833, column: 8, scope: !5580)
!5582 = !DILocation(line: 833, column: 15, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5580, file: !3, line: 833, column: 3)
!5584 = !DILocation(line: 833, column: 17, scope: !5583)
!5585 = !DILocation(line: 833, column: 3, scope: !5580)
!5586 = !DILocation(line: 835, column: 8, scope: !5587)
!5587 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 835, column: 8)
!5588 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 833, column: 27)
!5589 = !DILocation(line: 835, column: 11, scope: !5587)
!5590 = !DILocation(line: 835, column: 8, scope: !5588)
!5591 = !DILocation(line: 836, column: 34, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 835, column: 19)
!5593 = !DILocation(line: 836, column: 37, scope: !5592)
!5594 = !DILocation(line: 836, column: 45, scope: !5592)
!5595 = !DILocation(line: 837, column: 8, scope: !5592)
!5596 = !DILocation(line: 837, column: 13, scope: !5592)
!5597 = !DILocation(line: 837, column: 21, scope: !5592)
!5598 = !DILocation(line: 836, column: 11, scope: !5592)
!5599 = !DILocation(line: 836, column: 9, scope: !5592)
!5600 = !DILocation(line: 839, column: 4, scope: !5592)
!5601 = !DILocation(line: 843, column: 8, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5587, file: !3, line: 841, column: 4)
!5603 = !DILocation(line: 843, column: 13, scope: !5602)
!5604 = !DILocation(line: 843, column: 18, scope: !5602)
!5605 = !DILocation(line: 843, column: 23, scope: !5602)
!5606 = !DILocation(line: 842, column: 11, scope: !5602)
!5607 = !DILocation(line: 842, column: 9, scope: !5602)
!5608 = !DILocation(line: 846, column: 8, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5588, file: !3, line: 846, column: 8)
!5610 = !DILocation(line: 846, column: 12, scope: !5609)
!5611 = !DILocation(line: 846, column: 8, scope: !5588)
!5612 = !DILocation(line: 847, column: 5, scope: !5609)
!5613 = !DILocation(line: 848, column: 16, scope: !5588)
!5614 = !DILocation(line: 848, column: 24, scope: !5588)
!5615 = !DILocation(line: 848, column: 9, scope: !5588)
!5616 = !DILocation(line: 848, column: 13, scope: !5588)
!5617 = !DILocation(line: 849, column: 3, scope: !5588)
!5618 = !DILocation(line: 833, column: 23, scope: !5583)
!5619 = !DILocation(line: 833, column: 3, scope: !5583)
!5620 = distinct !{!5620, !5585, !5621, !5277, !5278}
!5621 = !DILocation(line: 849, column: 3, scope: !5580)
!5622 = !DILocation(line: 850, column: 7, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 850, column: 7)
!5624 = !DILocation(line: 850, column: 11, scope: !5623)
!5625 = !DILocation(line: 850, column: 16, scope: !5623)
!5626 = !DILocation(line: 850, column: 19, scope: !5623)
!5627 = !DILocation(line: 850, column: 7, scope: !5559)
!5628 = !DILocation(line: 851, column: 4, scope: !5623)
!5629 = !DILocation(line: 852, column: 7, scope: !5559)
!5630 = !DILocation(line: 853, column: 2, scope: !5559)
!5631 = !DILocation(line: 823, column: 22, scope: !5555)
!5632 = !DILocation(line: 823, column: 2, scope: !5555)
!5633 = distinct !{!5633, !5557, !5634, !5277, !5278}
!5634 = !DILocation(line: 853, column: 2, scope: !5552)
!5635 = !DILocation(line: 855, column: 6, scope: !5636)
!5636 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 855, column: 6)
!5637 = !DILocation(line: 855, column: 10, scope: !5636)
!5638 = !DILocation(line: 855, column: 6, scope: !5484)
!5639 = !DILocation(line: 856, column: 9, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 855, column: 16)
!5641 = !DILocation(line: 856, column: 3, scope: !5640)
!5642 = !DILocation(line: 857, column: 7, scope: !5640)
!5643 = !DILocation(line: 858, column: 2, scope: !5640)
!5644 = !DILocation(line: 859, column: 9, scope: !5484)
!5645 = !DILocation(line: 859, column: 2, scope: !5484)
!5646 = !DILocation(line: 860, column: 1, scope: !5484)
!5647 = distinct !DISubprogram(name: "nonstatic_init", scope: !3, file: !3, line: 1020, type: !4121, scopeLine: 1021, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5648)
!5648 = !{!5649, !5650}
!5649 = !DILocalVariable(name: "s", arg: 1, scope: !5647, file: !3, line: 1020, type: !4123)
!5650 = !DILocalVariable(name: "data", scope: !5647, file: !3, line: 1022, type: !5158)
!5651 = !DILocation(line: 1020, column: 49, scope: !5647)
!5652 = !DILocation(line: 1022, column: 2, scope: !5647)
!5653 = !DILocation(line: 1022, column: 22, scope: !5647)
!5654 = !DILocation(line: 1024, column: 9, scope: !5647)
!5655 = !DILocation(line: 1024, column: 7, scope: !5647)
!5656 = !DILocation(line: 1025, column: 7, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 1025, column: 6)
!5658 = !DILocation(line: 1025, column: 6, scope: !5647)
!5659 = !DILocation(line: 1026, column: 3, scope: !5657)
!5660 = !DILocation(line: 1028, column: 23, scope: !5647)
!5661 = !DILocation(line: 1028, column: 29, scope: !5647)
!5662 = !DILocation(line: 1028, column: 2, scope: !5647)
!5663 = !DILocation(line: 1028, column: 8, scope: !5647)
!5664 = !DILocation(line: 1028, column: 15, scope: !5647)
!5665 = !DILocation(line: 1028, column: 20, scope: !5647)
!5666 = !DILocation(line: 1029, column: 29, scope: !5647)
!5667 = !DILocation(line: 1029, column: 35, scope: !5647)
!5668 = !DILocation(line: 1029, column: 2, scope: !5647)
!5669 = !DILocation(line: 1029, column: 8, scope: !5647)
!5670 = !DILocation(line: 1029, column: 21, scope: !5647)
!5671 = !DILocation(line: 1029, column: 26, scope: !5647)
!5672 = !DILocation(line: 1030, column: 22, scope: !5647)
!5673 = !DILocation(line: 1030, column: 28, scope: !5647)
!5674 = !DILocation(line: 1030, column: 2, scope: !5647)
!5675 = !DILocation(line: 1030, column: 8, scope: !5647)
!5676 = !DILocation(line: 1030, column: 14, scope: !5647)
!5677 = !DILocation(line: 1030, column: 19, scope: !5647)
!5678 = !DILocation(line: 1032, column: 30, scope: !5647)
!5679 = !DILocation(line: 1032, column: 2, scope: !5647)
!5680 = !DILocation(line: 1032, column: 5, scope: !5647)
!5681 = !DILocation(line: 1032, column: 19, scope: !5647)
!5682 = !DILocation(line: 1034, column: 30, scope: !5647)
!5683 = !DILocation(line: 1034, column: 2, scope: !5647)
!5684 = !DILocation(line: 1036, column: 2, scope: !5647)
!5685 = !DILocation(line: 1037, column: 1, scope: !5647)
!5686 = distinct !DISubprogram(name: "nonstatic_release_resource_db", scope: !3, file: !3, line: 1039, type: !5011, scopeLine: 1040, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5687)
!5687 = !{!5688, !5689, !5690, !5691}
!5688 = !DILocalVariable(name: "s", arg: 1, scope: !5686, file: !3, line: 1039, type: !4123)
!5689 = !DILocalVariable(name: "data", scope: !5686, file: !3, line: 1041, type: !5158)
!5690 = !DILocalVariable(name: "p", scope: !5686, file: !3, line: 1042, type: !5168)
!5691 = !DILocalVariable(name: "q", scope: !5686, file: !3, line: 1042, type: !5168)
!5692 = !DILocation(line: 1039, column: 65, scope: !5686)
!5693 = !DILocation(line: 1041, column: 2, scope: !5686)
!5694 = !DILocation(line: 1041, column: 22, scope: !5686)
!5695 = !DILocation(line: 1041, column: 29, scope: !5686)
!5696 = !DILocation(line: 1041, column: 32, scope: !5686)
!5697 = !DILocation(line: 1042, column: 2, scope: !5686)
!5698 = !DILocation(line: 1042, column: 23, scope: !5686)
!5699 = !DILocation(line: 1042, column: 27, scope: !5686)
!5700 = !DILocation(line: 1044, column: 11, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 1044, column: 2)
!5702 = !DILocation(line: 1044, column: 17, scope: !5701)
!5703 = !DILocation(line: 1044, column: 30, scope: !5701)
!5704 = !DILocation(line: 1044, column: 9, scope: !5701)
!5705 = !DILocation(line: 1044, column: 7, scope: !5701)
!5706 = !DILocation(line: 1044, column: 36, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5701, file: !3, line: 1044, column: 2)
!5708 = !DILocation(line: 1044, column: 42, scope: !5707)
!5709 = !DILocation(line: 1044, column: 48, scope: !5707)
!5710 = !DILocation(line: 1044, column: 38, scope: !5707)
!5711 = !DILocation(line: 1044, column: 2, scope: !5701)
!5712 = !DILocation(line: 1045, column: 7, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 1044, column: 69)
!5714 = !DILocation(line: 1045, column: 10, scope: !5713)
!5715 = !DILocation(line: 1045, column: 5, scope: !5713)
!5716 = !DILocation(line: 1046, column: 9, scope: !5713)
!5717 = !DILocation(line: 1046, column: 3, scope: !5713)
!5718 = !DILocation(line: 1047, column: 2, scope: !5713)
!5719 = !DILocation(line: 1044, column: 66, scope: !5707)
!5720 = !DILocation(line: 1044, column: 64, scope: !5707)
!5721 = !DILocation(line: 1044, column: 2, scope: !5707)
!5722 = distinct !{!5722, !5711, !5723, !5277, !5278}
!5723 = !DILocation(line: 1047, column: 2, scope: !5701)
!5724 = !DILocation(line: 1048, column: 11, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 1048, column: 2)
!5726 = !DILocation(line: 1048, column: 17, scope: !5725)
!5727 = !DILocation(line: 1048, column: 24, scope: !5725)
!5728 = !DILocation(line: 1048, column: 9, scope: !5725)
!5729 = !DILocation(line: 1048, column: 7, scope: !5725)
!5730 = !DILocation(line: 1048, column: 30, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 1048, column: 2)
!5732 = !DILocation(line: 1048, column: 36, scope: !5731)
!5733 = !DILocation(line: 1048, column: 42, scope: !5731)
!5734 = !DILocation(line: 1048, column: 32, scope: !5731)
!5735 = !DILocation(line: 1048, column: 2, scope: !5725)
!5736 = !DILocation(line: 1049, column: 7, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5731, file: !3, line: 1048, column: 57)
!5738 = !DILocation(line: 1049, column: 10, scope: !5737)
!5739 = !DILocation(line: 1049, column: 5, scope: !5737)
!5740 = !DILocation(line: 1050, column: 9, scope: !5737)
!5741 = !DILocation(line: 1050, column: 3, scope: !5737)
!5742 = !DILocation(line: 1051, column: 2, scope: !5737)
!5743 = !DILocation(line: 1048, column: 54, scope: !5731)
!5744 = !DILocation(line: 1048, column: 52, scope: !5731)
!5745 = !DILocation(line: 1048, column: 2, scope: !5731)
!5746 = distinct !{!5746, !5735, !5747, !5277, !5278}
!5747 = !DILocation(line: 1051, column: 2, scope: !5725)
!5748 = !DILocation(line: 1052, column: 11, scope: !5749)
!5749 = distinct !DILexicalBlock(scope: !5686, file: !3, line: 1052, column: 2)
!5750 = !DILocation(line: 1052, column: 17, scope: !5749)
!5751 = !DILocation(line: 1052, column: 23, scope: !5749)
!5752 = !DILocation(line: 1052, column: 9, scope: !5749)
!5753 = !DILocation(line: 1052, column: 7, scope: !5749)
!5754 = !DILocation(line: 1052, column: 29, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 1052, column: 2)
!5756 = !DILocation(line: 1052, column: 35, scope: !5755)
!5757 = !DILocation(line: 1052, column: 41, scope: !5755)
!5758 = !DILocation(line: 1052, column: 31, scope: !5755)
!5759 = !DILocation(line: 1052, column: 2, scope: !5749)
!5760 = !DILocation(line: 1053, column: 7, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 1052, column: 55)
!5762 = !DILocation(line: 1053, column: 10, scope: !5761)
!5763 = !DILocation(line: 1053, column: 5, scope: !5761)
!5764 = !DILocation(line: 1054, column: 9, scope: !5761)
!5765 = !DILocation(line: 1054, column: 3, scope: !5761)
!5766 = !DILocation(line: 1055, column: 2, scope: !5761)
!5767 = !DILocation(line: 1052, column: 52, scope: !5755)
!5768 = !DILocation(line: 1052, column: 50, scope: !5755)
!5769 = !DILocation(line: 1052, column: 2, scope: !5755)
!5770 = distinct !{!5770, !5759, !5771, !5277, !5278}
!5771 = !DILocation(line: 1055, column: 2, scope: !5749)
!5772 = !DILocation(line: 1057, column: 8, scope: !5686)
!5773 = !DILocation(line: 1057, column: 2, scope: !5686)
!5774 = !DILocation(line: 1058, column: 1, scope: !5686)
!5775 = distinct !DISubprogram(name: "nonstatic_sysfs_exit", scope: !3, file: !3, line: 1234, type: !2520, scopeLine: 1235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5776 = !DILocation(line: 1236, column: 2, scope: !5775)
!5777 = !DILocation(line: 1237, column: 1, scope: !5775)
!5778 = !DISubprogram(name: "class_interface_unregister", scope: !4667, file: !4667, line: 228, type: !5779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{null, !5781}
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5782 = distinct !DISubprogram(name: "__initstub__kmod_pcmcia_rsrc__296_1239_nonstatic_sysfs_init6", scope: !3, file: !3, line: 1239, type: !3887, scopeLine: 1239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5783 = !DILocation(line: 1239, column: 1, scope: !5782)
!5784 = distinct !DISubprogram(name: "nonstatic_sysfs_init", scope: !3, file: !3, line: 1229, type: !3887, scopeLine: 1230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5785 = !DILocation(line: 1231, column: 9, scope: !5784)
!5786 = !DILocation(line: 1231, column: 2, scope: !5784)
!5787 = distinct !DISubprogram(name: "validate_mem", scope: !3, file: !3, line: 536, type: !5788, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5790)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!109, !4123, !7}
!5790 = !{!5791, !5792, !5793, !5794, !5795, !5796}
!5791 = !DILocalVariable(name: "s", arg: 1, scope: !5787, file: !3, line: 536, type: !4123)
!5792 = !DILocalVariable(name: "probe_mask", arg: 2, scope: !5787, file: !3, line: 536, type: !7)
!5793 = !DILocalVariable(name: "m", scope: !5787, file: !3, line: 538, type: !5168)
!5794 = !DILocalVariable(name: "mm", scope: !5787, file: !3, line: 538, type: !5162)
!5795 = !DILocalVariable(name: "s_data", scope: !5787, file: !3, line: 539, type: !5158)
!5796 = !DILocalVariable(name: "ok", scope: !5787, file: !3, line: 540, type: !312)
!5797 = !DILocation(line: 536, column: 47, scope: !5787)
!5798 = !DILocation(line: 536, column: 63, scope: !5787)
!5799 = !DILocation(line: 538, column: 2, scope: !5787)
!5800 = !DILocation(line: 538, column: 23, scope: !5787)
!5801 = !DILocation(line: 538, column: 26, scope: !5787)
!5802 = !DILocation(line: 539, column: 2, scope: !5787)
!5803 = !DILocation(line: 539, column: 22, scope: !5787)
!5804 = !DILocation(line: 539, column: 31, scope: !5787)
!5805 = !DILocation(line: 539, column: 34, scope: !5787)
!5806 = !DILocation(line: 540, column: 2, scope: !5787)
!5807 = !DILocation(line: 540, column: 16, scope: !5787)
!5808 = !DILocation(line: 542, column: 11, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 542, column: 2)
!5810 = !DILocation(line: 542, column: 19, scope: !5809)
!5811 = !DILocation(line: 542, column: 26, scope: !5809)
!5812 = !DILocation(line: 542, column: 9, scope: !5809)
!5813 = !DILocation(line: 542, column: 7, scope: !5809)
!5814 = !DILocation(line: 542, column: 32, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 542, column: 2)
!5816 = !DILocation(line: 542, column: 38, scope: !5815)
!5817 = !DILocation(line: 542, column: 46, scope: !5815)
!5818 = !DILocation(line: 542, column: 34, scope: !5815)
!5819 = !DILocation(line: 542, column: 2, scope: !5809)
!5820 = !DILocation(line: 543, column: 9, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 542, column: 67)
!5822 = !DILocation(line: 543, column: 8, scope: !5821)
!5823 = !DILocation(line: 544, column: 22, scope: !5821)
!5824 = !DILocation(line: 544, column: 28, scope: !5821)
!5825 = !DILocation(line: 544, column: 37, scope: !5821)
!5826 = !DILocation(line: 544, column: 9, scope: !5821)
!5827 = !DILocation(line: 544, column: 6, scope: !5821)
!5828 = !DILocation(line: 545, column: 2, scope: !5821)
!5829 = !DILocation(line: 542, column: 61, scope: !5815)
!5830 = !DILocation(line: 542, column: 56, scope: !5815)
!5831 = !DILocation(line: 542, column: 2, scope: !5815)
!5832 = distinct !{!5832, !5819, !5833, !5277, !5278}
!5833 = !DILocation(line: 545, column: 2, scope: !5809)
!5834 = !DILocation(line: 546, column: 6, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5787, file: !3, line: 546, column: 6)
!5836 = !DILocation(line: 546, column: 9, scope: !5835)
!5837 = !DILocation(line: 546, column: 6, scope: !5787)
!5838 = !DILocation(line: 547, column: 3, scope: !5835)
!5839 = !DILocation(line: 548, column: 2, scope: !5787)
!5840 = !DILocation(line: 549, column: 1, scope: !5787)
!5841 = distinct !DISubprogram(name: "do_mem_probe", scope: !3, file: !3, line: 400, type: !5842, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5847)
!5842 = !DISubroutineType(types: !5843)
!5843 = !{!109, !4123, !5165, !5165, !5844, !5844}
!5844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5845, size: 64)
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!109, !4123, !4154, !965}
!5847 = !{!5848, !5849, !5850, !5851, !5852, !5853, !5854, !5855, !5856, !5857, !5858}
!5848 = !DILocalVariable(name: "s", arg: 1, scope: !5841, file: !3, line: 400, type: !4123)
!5849 = !DILocalVariable(name: "base", arg: 2, scope: !5841, file: !3, line: 400, type: !5165)
!5850 = !DILocalVariable(name: "num", arg: 3, scope: !5841, file: !3, line: 400, type: !5165)
!5851 = !DILocalVariable(name: "validate", arg: 4, scope: !5841, file: !3, line: 401, type: !5844)
!5852 = !DILocalVariable(name: "fallback", arg: 5, scope: !5841, file: !3, line: 404, type: !5844)
!5853 = !DILocalVariable(name: "s_data", scope: !5841, file: !3, line: 408, type: !5158)
!5854 = !DILocalVariable(name: "i", scope: !5841, file: !3, line: 409, type: !5165)
!5855 = !DILocalVariable(name: "j", scope: !5841, file: !3, line: 409, type: !5165)
!5856 = !DILocalVariable(name: "bad", scope: !5841, file: !3, line: 409, type: !5165)
!5857 = !DILocalVariable(name: "fail", scope: !5841, file: !3, line: 409, type: !5165)
!5858 = !DILocalVariable(name: "step", scope: !5841, file: !3, line: 409, type: !5165)
!5859 = !DILocation(line: 400, column: 47, scope: !5841)
!5860 = !DILocation(line: 400, column: 57, scope: !5841)
!5861 = !DILocation(line: 400, column: 70, scope: !5841)
!5862 = !DILocation(line: 401, column: 10, scope: !5841)
!5863 = !DILocation(line: 404, column: 10, scope: !5841)
!5864 = !DILocation(line: 408, column: 2, scope: !5841)
!5865 = !DILocation(line: 408, column: 22, scope: !5841)
!5866 = !DILocation(line: 408, column: 31, scope: !5841)
!5867 = !DILocation(line: 408, column: 34, scope: !5841)
!5868 = !DILocation(line: 409, column: 2, scope: !5841)
!5869 = !DILocation(line: 409, column: 9, scope: !5841)
!5870 = !DILocation(line: 409, column: 12, scope: !5841)
!5871 = !DILocation(line: 409, column: 15, scope: !5841)
!5872 = !DILocation(line: 409, column: 20, scope: !5841)
!5873 = !DILocation(line: 409, column: 26, scope: !5841)
!5874 = !DILocation(line: 411, column: 2, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 411, column: 2)
!5876 = !DILocation(line: 411, column: 2, scope: !5877)
!5877 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 411, column: 2)
!5878 = !DILocation(line: 413, column: 13, scope: !5841)
!5879 = !DILocation(line: 413, column: 6, scope: !5841)
!5880 = !DILocation(line: 414, column: 10, scope: !5841)
!5881 = !DILocation(line: 414, column: 14, scope: !5841)
!5882 = !DILocation(line: 414, column: 9, scope: !5841)
!5883 = !DILocation(line: 414, column: 38, scope: !5841)
!5884 = !DILocation(line: 414, column: 41, scope: !5841)
!5885 = !DILocation(line: 414, column: 46, scope: !5841)
!5886 = !DILocation(line: 414, column: 7, scope: !5841)
!5887 = !DILocation(line: 416, column: 6, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 416, column: 6)
!5889 = !DILocation(line: 416, column: 11, scope: !5888)
!5890 = !DILocation(line: 416, column: 6, scope: !5841)
!5891 = !DILocation(line: 417, column: 8, scope: !5888)
!5892 = !DILocation(line: 417, column: 3, scope: !5888)
!5893 = !DILocation(line: 419, column: 6, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 419, column: 6)
!5895 = !DILocation(line: 419, column: 17, scope: !5894)
!5896 = !DILocation(line: 419, column: 20, scope: !5894)
!5897 = !DILocation(line: 419, column: 15, scope: !5894)
!5898 = !DILocation(line: 419, column: 13, scope: !5894)
!5899 = !DILocation(line: 419, column: 11, scope: !5894)
!5900 = !DILocation(line: 419, column: 6, scope: !5841)
!5901 = !DILocation(line: 420, column: 14, scope: !5894)
!5902 = !DILocation(line: 420, column: 17, scope: !5894)
!5903 = !DILocation(line: 420, column: 12, scope: !5894)
!5904 = !DILocation(line: 420, column: 10, scope: !5894)
!5905 = !DILocation(line: 420, column: 8, scope: !5894)
!5906 = !DILocation(line: 420, column: 3, scope: !5894)
!5907 = !DILocation(line: 421, column: 15, scope: !5908)
!5908 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 421, column: 2)
!5909 = !DILocation(line: 421, column: 13, scope: !5908)
!5910 = !DILocation(line: 421, column: 9, scope: !5908)
!5911 = !DILocation(line: 421, column: 7, scope: !5908)
!5912 = !DILocation(line: 421, column: 21, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5908, file: !3, line: 421, column: 2)
!5914 = !DILocation(line: 421, column: 25, scope: !5913)
!5915 = !DILocation(line: 421, column: 30, scope: !5913)
!5916 = !DILocation(line: 421, column: 29, scope: !5913)
!5917 = !DILocation(line: 421, column: 23, scope: !5913)
!5918 = !DILocation(line: 421, column: 2, scope: !5908)
!5919 = !DILocation(line: 422, column: 8, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 422, column: 7)
!5921 = distinct !DILexicalBlock(scope: !5913, file: !3, line: 421, column: 49)
!5922 = !DILocation(line: 422, column: 7, scope: !5921)
!5923 = !DILocation(line: 423, column: 13, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5925, file: !3, line: 423, column: 4)
!5925 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 422, column: 14)
!5926 = !DILocation(line: 423, column: 11, scope: !5924)
!5927 = !DILocation(line: 423, column: 9, scope: !5924)
!5928 = !DILocation(line: 423, column: 16, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 423, column: 4)
!5930 = !DILocation(line: 423, column: 20, scope: !5929)
!5931 = !DILocation(line: 423, column: 25, scope: !5929)
!5932 = !DILocation(line: 423, column: 24, scope: !5929)
!5933 = !DILocation(line: 423, column: 18, scope: !5929)
!5934 = !DILocation(line: 423, column: 4, scope: !5924)
!5935 = !DILocation(line: 424, column: 26, scope: !5936)
!5936 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 424, column: 9)
!5937 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 423, column: 41)
!5938 = !DILocation(line: 424, column: 29, scope: !5936)
!5939 = !DILocation(line: 424, column: 32, scope: !5936)
!5940 = !DILocation(line: 424, column: 38, scope: !5936)
!5941 = !DILocation(line: 424, column: 10, scope: !5936)
!5942 = !DILocation(line: 424, column: 9, scope: !5937)
!5943 = !DILocation(line: 425, column: 6, scope: !5936)
!5944 = !DILocation(line: 426, column: 4, scope: !5937)
!5945 = !DILocation(line: 423, column: 35, scope: !5929)
!5946 = !DILocation(line: 423, column: 32, scope: !5929)
!5947 = !DILocation(line: 423, column: 4, scope: !5929)
!5948 = distinct !{!5948, !5934, !5949, !5277, !5278}
!5949 = !DILocation(line: 426, column: 4, scope: !5924)
!5950 = !DILocation(line: 427, column: 13, scope: !5925)
!5951 = !DILocation(line: 427, column: 18, scope: !5925)
!5952 = !DILocation(line: 427, column: 15, scope: !5925)
!5953 = !DILocation(line: 427, column: 24, scope: !5925)
!5954 = !DILocation(line: 427, column: 28, scope: !5925)
!5955 = !DILocation(line: 427, column: 33, scope: !5925)
!5956 = !DILocation(line: 427, column: 38, scope: !5925)
!5957 = !DILocation(line: 427, column: 37, scope: !5925)
!5958 = !DILocation(line: 427, column: 30, scope: !5925)
!5959 = !DILocation(line: 0, scope: !5925)
!5960 = !DILocation(line: 427, column: 11, scope: !5925)
!5961 = !DILocation(line: 427, column: 9, scope: !5925)
!5962 = !DILocation(line: 428, column: 3, scope: !5925)
!5963 = !DILocation(line: 429, column: 8, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 429, column: 7)
!5965 = !DILocation(line: 429, column: 7, scope: !5964)
!5966 = !DILocation(line: 429, column: 14, scope: !5964)
!5967 = !DILocation(line: 429, column: 18, scope: !5964)
!5968 = !DILocation(line: 429, column: 17, scope: !5964)
!5969 = !DILocation(line: 429, column: 7, scope: !5921)
!5970 = !DILocation(line: 430, column: 13, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5972, file: !3, line: 430, column: 4)
!5972 = distinct !DILexicalBlock(scope: !5964, file: !3, line: 429, column: 29)
!5973 = !DILocation(line: 430, column: 11, scope: !5971)
!5974 = !DILocation(line: 430, column: 9, scope: !5971)
!5975 = !DILocation(line: 430, column: 16, scope: !5976)
!5976 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 430, column: 4)
!5977 = !DILocation(line: 430, column: 20, scope: !5976)
!5978 = !DILocation(line: 430, column: 25, scope: !5976)
!5979 = !DILocation(line: 430, column: 24, scope: !5976)
!5980 = !DILocation(line: 430, column: 18, scope: !5976)
!5981 = !DILocation(line: 430, column: 4, scope: !5971)
!5982 = !DILocation(line: 431, column: 26, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 431, column: 9)
!5984 = !DILocation(line: 431, column: 29, scope: !5983)
!5985 = !DILocation(line: 431, column: 32, scope: !5983)
!5986 = !DILocation(line: 431, column: 38, scope: !5983)
!5987 = !DILocation(line: 431, column: 10, scope: !5983)
!5988 = !DILocation(line: 431, column: 9, scope: !5976)
!5989 = !DILocation(line: 432, column: 6, scope: !5983)
!5990 = !DILocation(line: 431, column: 46, scope: !5983)
!5991 = !DILocation(line: 430, column: 35, scope: !5976)
!5992 = !DILocation(line: 430, column: 32, scope: !5976)
!5993 = !DILocation(line: 430, column: 4, scope: !5976)
!5994 = distinct !{!5994, !5981, !5995, !5277, !5278}
!5995 = !DILocation(line: 432, column: 6, scope: !5971)
!5996 = !DILocation(line: 433, column: 3, scope: !5972)
!5997 = !DILocation(line: 434, column: 7, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 434, column: 7)
!5999 = !DILocation(line: 434, column: 12, scope: !5998)
!6000 = !DILocation(line: 434, column: 9, scope: !5998)
!6001 = !DILocation(line: 434, column: 7, scope: !5921)
!6002 = !DILocation(line: 435, column: 9, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 435, column: 8)
!6004 = distinct !DILexicalBlock(scope: !5998, file: !3, line: 434, column: 15)
!6005 = !DILocation(line: 435, column: 8, scope: !6004)
!6006 = !DILocation(line: 436, column: 5, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 436, column: 5)
!6008 = !DILocation(line: 436, column: 5, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6007, file: !3, line: 436, column: 5)
!6010 = !DILocation(line: 436, column: 5, scope: !6003)
!6011 = !DILocation(line: 437, column: 4, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 437, column: 4)
!6013 = !DILocation(line: 437, column: 4, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 437, column: 4)
!6015 = !DILocation(line: 438, column: 18, scope: !6004)
!6016 = !DILocation(line: 438, column: 26, scope: !6004)
!6017 = !DILocation(line: 438, column: 34, scope: !6004)
!6018 = !DILocation(line: 438, column: 37, scope: !6004)
!6019 = !DILocation(line: 438, column: 39, scope: !6004)
!6020 = !DILocation(line: 438, column: 38, scope: !6004)
!6021 = !DILocation(line: 438, column: 4, scope: !6004)
!6022 = !DILocation(line: 439, column: 11, scope: !6004)
!6023 = !DILocation(line: 439, column: 13, scope: !6004)
!6024 = !DILocation(line: 439, column: 12, scope: !6004)
!6025 = !DILocation(line: 439, column: 8, scope: !6004)
!6026 = !DILocation(line: 440, column: 3, scope: !6004)
!6027 = !DILocation(line: 441, column: 2, scope: !5921)
!6028 = !DILocation(line: 421, column: 39, scope: !5913)
!6029 = !DILocation(line: 421, column: 43, scope: !5913)
!6030 = !DILocation(line: 421, column: 41, scope: !5913)
!6031 = !DILocation(line: 421, column: 37, scope: !5913)
!6032 = !DILocation(line: 421, column: 2, scope: !5913)
!6033 = distinct !{!6033, !5918, !6034, !5277, !5278}
!6034 = !DILocation(line: 441, column: 2, scope: !5908)
!6035 = !DILocation(line: 442, column: 2, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !5841, file: !3, line: 442, column: 2)
!6037 = !DILocation(line: 442, column: 2, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6036, file: !3, line: 442, column: 2)
!6039 = !DILocation(line: 443, column: 9, scope: !5841)
!6040 = !DILocation(line: 443, column: 15, scope: !5841)
!6041 = !DILocation(line: 443, column: 13, scope: !5841)
!6042 = !DILocation(line: 444, column: 1, scope: !5841)
!6043 = !DILocation(line: 443, column: 2, scope: !5841)
!6044 = distinct !DISubprogram(name: "readable", scope: !3, file: !3, line: 263, type: !5845, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6045)
!6045 = !{!6046, !6047, !6048, !6049}
!6046 = !DILocalVariable(name: "s", arg: 1, scope: !6044, file: !3, line: 263, type: !4123)
!6047 = !DILocalVariable(name: "res", arg: 2, scope: !6044, file: !3, line: 263, type: !4154)
!6048 = !DILocalVariable(name: "count", arg: 3, scope: !6044, file: !3, line: 264, type: !965)
!6049 = !DILocalVariable(name: "ret", scope: !6044, file: !3, line: 266, type: !109)
!6050 = !DILocation(line: 263, column: 43, scope: !6044)
!6051 = !DILocation(line: 263, column: 63, scope: !6044)
!6052 = !DILocation(line: 264, column: 21, scope: !6044)
!6053 = !DILocation(line: 266, column: 2, scope: !6044)
!6054 = !DILocation(line: 266, column: 6, scope: !6044)
!6055 = !DILocation(line: 268, column: 6, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 268, column: 6)
!6057 = !DILocation(line: 268, column: 9, scope: !6056)
!6058 = !DILocation(line: 268, column: 6, scope: !6044)
!6059 = !DILocation(line: 270, column: 3, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6056, file: !3, line: 268, column: 19)
!6061 = !DILocation(line: 273, column: 19, scope: !6044)
!6062 = !DILocation(line: 273, column: 2, scope: !6044)
!6063 = !DILocation(line: 273, column: 5, scope: !6044)
!6064 = !DILocation(line: 273, column: 13, scope: !6044)
!6065 = !DILocation(line: 273, column: 17, scope: !6044)
!6066 = !DILocation(line: 274, column: 24, scope: !6044)
!6067 = !DILocation(line: 274, column: 29, scope: !6044)
!6068 = !DILocation(line: 274, column: 36, scope: !6044)
!6069 = !DILocation(line: 274, column: 39, scope: !6044)
!6070 = !DILocation(line: 274, column: 16, scope: !6044)
!6071 = !DILocation(line: 274, column: 2, scope: !6044)
!6072 = !DILocation(line: 274, column: 5, scope: !6044)
!6073 = !DILocation(line: 274, column: 14, scope: !6044)
!6074 = !DILocation(line: 275, column: 6, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 275, column: 6)
!6076 = !DILocation(line: 275, column: 9, scope: !6075)
!6077 = !DILocation(line: 275, column: 6, scope: !6044)
!6078 = !DILocation(line: 276, column: 17, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 275, column: 19)
!6080 = !DILocation(line: 276, column: 20, scope: !6079)
!6081 = !DILocation(line: 276, column: 3, scope: !6079)
!6082 = !DILocation(line: 278, column: 7, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 278, column: 7)
!6084 = !DILocation(line: 278, column: 10, scope: !6083)
!6085 = !DILocation(line: 278, column: 20, scope: !6083)
!6086 = !DILocation(line: 278, column: 7, scope: !6079)
!6087 = !DILocation(line: 279, column: 10, scope: !6083)
!6088 = !DILocation(line: 279, column: 13, scope: !6083)
!6089 = !DILocation(line: 279, column: 23, scope: !6083)
!6090 = !DILocation(line: 279, column: 32, scope: !6083)
!6091 = !DILocation(line: 279, column: 35, scope: !6083)
!6092 = !DILocation(line: 279, column: 8, scope: !6083)
!6093 = !DILocation(line: 279, column: 4, scope: !6083)
!6094 = !DILocation(line: 281, column: 15, scope: !6079)
!6095 = !DILocation(line: 281, column: 18, scope: !6079)
!6096 = !DILocation(line: 281, column: 3, scope: !6079)
!6097 = !DILocation(line: 282, column: 11, scope: !6079)
!6098 = !DILocation(line: 282, column: 14, scope: !6079)
!6099 = !DILocation(line: 282, column: 3, scope: !6079)
!6100 = !DILocation(line: 283, column: 3, scope: !6079)
!6101 = !DILocation(line: 283, column: 6, scope: !6079)
!6102 = !DILocation(line: 283, column: 15, scope: !6079)
!6103 = !DILocation(line: 284, column: 2, scope: !6079)
!6104 = !DILocation(line: 285, column: 2, scope: !6044)
!6105 = !DILocation(line: 285, column: 5, scope: !6044)
!6106 = !DILocation(line: 285, column: 13, scope: !6044)
!6107 = !DILocation(line: 285, column: 17, scope: !6044)
!6108 = !DILocation(line: 286, column: 7, scope: !6109)
!6109 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 286, column: 6)
!6110 = !DILocation(line: 286, column: 6, scope: !6109)
!6111 = !DILocation(line: 286, column: 12, scope: !6109)
!6112 = !DILocation(line: 286, column: 17, scope: !6109)
!6113 = !DILocation(line: 286, column: 16, scope: !6109)
!6114 = !DILocation(line: 286, column: 23, scope: !6109)
!6115 = !DILocation(line: 286, column: 6, scope: !6044)
!6116 = !DILocation(line: 287, column: 3, scope: !6109)
!6117 = !DILocation(line: 288, column: 2, scope: !6044)
!6118 = !DILocation(line: 289, column: 1, scope: !6044)
!6119 = distinct !DISubprogram(name: "checksum", scope: !3, file: !3, line: 294, type: !5845, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6120)
!6120 = !{!6121, !6122, !6123, !6124, !6125, !6126, !6127, !6128, !6129}
!6121 = !DILocalVariable(name: "s", arg: 1, scope: !6119, file: !3, line: 294, type: !4123)
!6122 = !DILocalVariable(name: "res", arg: 2, scope: !6119, file: !3, line: 294, type: !4154)
!6123 = !DILocalVariable(name: "value", arg: 3, scope: !6119, file: !3, line: 295, type: !965)
!6124 = !DILocalVariable(name: "map", scope: !6119, file: !3, line: 297, type: !4145)
!6125 = !DILocalVariable(name: "i", scope: !6119, file: !3, line: 298, type: !109)
!6126 = !DILocalVariable(name: "a", scope: !6119, file: !3, line: 298, type: !109)
!6127 = !DILocalVariable(name: "b", scope: !6119, file: !3, line: 298, type: !109)
!6128 = !DILocalVariable(name: "d", scope: !6119, file: !3, line: 298, type: !109)
!6129 = !DILocalVariable(name: "virt", scope: !6119, file: !3, line: 299, type: !334)
!6130 = !DILocation(line: 294, column: 43, scope: !6119)
!6131 = !DILocation(line: 294, column: 63, scope: !6119)
!6132 = !DILocation(line: 295, column: 21, scope: !6119)
!6133 = !DILocation(line: 297, column: 2, scope: !6119)
!6134 = !DILocation(line: 297, column: 17, scope: !6119)
!6135 = !DILocation(line: 298, column: 2, scope: !6119)
!6136 = !DILocation(line: 298, column: 6, scope: !6119)
!6137 = !DILocation(line: 298, column: 9, scope: !6119)
!6138 = !DILocation(line: 298, column: 16, scope: !6119)
!6139 = !DILocation(line: 298, column: 24, scope: !6119)
!6140 = !DILocation(line: 299, column: 2, scope: !6119)
!6141 = !DILocation(line: 299, column: 16, scope: !6119)
!6142 = !DILocation(line: 301, column: 17, scope: !6119)
!6143 = !DILocation(line: 301, column: 22, scope: !6119)
!6144 = !DILocation(line: 301, column: 29, scope: !6119)
!6145 = !DILocation(line: 301, column: 32, scope: !6119)
!6146 = !DILocation(line: 301, column: 9, scope: !6119)
!6147 = !DILocation(line: 301, column: 7, scope: !6119)
!6148 = !DILocation(line: 302, column: 6, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 302, column: 6)
!6150 = !DILocation(line: 302, column: 6, scope: !6119)
!6151 = !DILocation(line: 303, column: 7, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 302, column: 12)
!6153 = !DILocation(line: 303, column: 11, scope: !6152)
!6154 = !DILocation(line: 304, column: 7, scope: !6152)
!6155 = !DILocation(line: 304, column: 13, scope: !6152)
!6156 = !DILocation(line: 305, column: 7, scope: !6152)
!6157 = !DILocation(line: 305, column: 13, scope: !6152)
!6158 = !DILocation(line: 306, column: 13, scope: !6152)
!6159 = !DILocation(line: 306, column: 7, scope: !6152)
!6160 = !DILocation(line: 306, column: 11, scope: !6152)
!6161 = !DILocation(line: 307, column: 7, scope: !6152)
!6162 = !DILocation(line: 307, column: 18, scope: !6152)
!6163 = !DILocation(line: 308, column: 3, scope: !6152)
!6164 = !DILocation(line: 308, column: 6, scope: !6152)
!6165 = !DILocation(line: 308, column: 11, scope: !6152)
!6166 = !DILocation(line: 308, column: 23, scope: !6152)
!6167 = !DILocation(line: 311, column: 10, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6152, file: !3, line: 311, column: 3)
!6169 = !DILocation(line: 311, column: 8, scope: !6168)
!6170 = !DILocation(line: 311, column: 15, scope: !6171)
!6171 = distinct !DILexicalBlock(scope: !6168, file: !3, line: 311, column: 3)
!6172 = !DILocation(line: 311, column: 19, scope: !6171)
!6173 = !DILocation(line: 311, column: 22, scope: !6171)
!6174 = !DILocation(line: 311, column: 17, scope: !6171)
!6175 = !DILocation(line: 311, column: 3, scope: !6168)
!6176 = !DILocation(line: 312, column: 14, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6171, file: !3, line: 311, column: 41)
!6178 = !DILocation(line: 312, column: 19, scope: !6177)
!6179 = !DILocation(line: 312, column: 18, scope: !6177)
!6180 = !DILocation(line: 312, column: 8, scope: !6177)
!6181 = !DILocation(line: 312, column: 6, scope: !6177)
!6182 = !DILocation(line: 313, column: 9, scope: !6177)
!6183 = !DILocation(line: 313, column: 6, scope: !6177)
!6184 = !DILocation(line: 314, column: 9, scope: !6177)
!6185 = !DILocation(line: 314, column: 6, scope: !6177)
!6186 = !DILocation(line: 315, column: 3, scope: !6177)
!6187 = !DILocation(line: 311, column: 34, scope: !6171)
!6188 = !DILocation(line: 311, column: 3, scope: !6171)
!6189 = distinct !{!6189, !6175, !6190, !5277, !5278}
!6190 = !DILocation(line: 315, column: 3, scope: !6168)
!6191 = !DILocation(line: 317, column: 7, scope: !6152)
!6192 = !DILocation(line: 317, column: 13, scope: !6152)
!6193 = !DILocation(line: 318, column: 3, scope: !6152)
!6194 = !DILocation(line: 318, column: 6, scope: !6152)
!6195 = !DILocation(line: 318, column: 11, scope: !6152)
!6196 = !DILocation(line: 318, column: 23, scope: !6152)
!6197 = !DILocation(line: 320, column: 11, scope: !6152)
!6198 = !DILocation(line: 320, column: 3, scope: !6152)
!6199 = !DILocation(line: 321, column: 2, scope: !6152)
!6200 = !DILocation(line: 323, column: 6, scope: !6201)
!6201 = distinct !DILexicalBlock(scope: !6119, file: !3, line: 323, column: 6)
!6202 = !DILocation(line: 323, column: 8, scope: !6201)
!6203 = !DILocation(line: 323, column: 6, scope: !6119)
!6204 = !DILocation(line: 324, column: 3, scope: !6201)
!6205 = !DILocation(line: 326, column: 11, scope: !6119)
!6206 = !DILocation(line: 326, column: 3, scope: !6119)
!6207 = !DILocation(line: 326, column: 9, scope: !6119)
!6208 = !DILocation(line: 328, column: 2, scope: !6119)
!6209 = !DILocation(line: 329, column: 1, scope: !6119)
!6210 = !DISubprogram(name: "_dev_info", scope: !6211, file: !6211, line: 56, type: !6212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6211 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!6212 = !DISubroutineType(types: !6213)
!6213 = !{null, !4271, !181, null}
!6214 = distinct !DISubprogram(name: "do_validate_mem", scope: !3, file: !3, line: 344, type: !6215, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6217)
!6215 = !DISubroutineType(types: !6216)
!6216 = !{!109, !4123, !312, !312, !5844}
!6217 = !{!6218, !6219, !6220, !6221, !6222, !6223, !6224, !6225, !6226, !6227}
!6218 = !DILocalVariable(name: "s", arg: 1, scope: !6214, file: !3, line: 344, type: !4123)
!6219 = !DILocalVariable(name: "base", arg: 2, scope: !6214, file: !3, line: 345, type: !312)
!6220 = !DILocalVariable(name: "size", arg: 3, scope: !6214, file: !3, line: 345, type: !312)
!6221 = !DILocalVariable(name: "validate", arg: 4, scope: !6214, file: !3, line: 346, type: !5844)
!6222 = !DILocalVariable(name: "s_data", scope: !6214, file: !3, line: 350, type: !5158)
!6223 = !DILocalVariable(name: "res1", scope: !6214, file: !3, line: 351, type: !4154)
!6224 = !DILocalVariable(name: "res2", scope: !6214, file: !3, line: 351, type: !4154)
!6225 = !DILocalVariable(name: "info1", scope: !6214, file: !3, line: 352, type: !7)
!6226 = !DILocalVariable(name: "info2", scope: !6214, file: !3, line: 352, type: !7)
!6227 = !DILocalVariable(name: "ret", scope: !6214, file: !3, line: 353, type: !109)
!6228 = !DILocation(line: 344, column: 50, scope: !6214)
!6229 = !DILocation(line: 345, column: 21, scope: !6214)
!6230 = !DILocation(line: 345, column: 41, scope: !6214)
!6231 = !DILocation(line: 346, column: 13, scope: !6214)
!6232 = !DILocation(line: 350, column: 2, scope: !6214)
!6233 = !DILocation(line: 350, column: 22, scope: !6214)
!6234 = !DILocation(line: 350, column: 31, scope: !6214)
!6235 = !DILocation(line: 350, column: 34, scope: !6214)
!6236 = !DILocation(line: 351, column: 2, scope: !6214)
!6237 = !DILocation(line: 351, column: 19, scope: !6214)
!6238 = !DILocation(line: 351, column: 26, scope: !6214)
!6239 = !DILocation(line: 352, column: 2, scope: !6214)
!6240 = !DILocation(line: 352, column: 15, scope: !6214)
!6241 = !DILocation(line: 352, column: 26, scope: !6214)
!6242 = !DILocation(line: 353, column: 2, scope: !6214)
!6243 = !DILocation(line: 353, column: 6, scope: !6214)
!6244 = !DILocation(line: 355, column: 22, scope: !6214)
!6245 = !DILocation(line: 355, column: 25, scope: !6214)
!6246 = !DILocation(line: 355, column: 31, scope: !6214)
!6247 = !DILocation(line: 355, column: 35, scope: !6214)
!6248 = !DILocation(line: 355, column: 9, scope: !6214)
!6249 = !DILocation(line: 355, column: 7, scope: !6214)
!6250 = !DILocation(line: 356, column: 22, scope: !6214)
!6251 = !DILocation(line: 356, column: 25, scope: !6214)
!6252 = !DILocation(line: 356, column: 32, scope: !6214)
!6253 = !DILocation(line: 356, column: 36, scope: !6214)
!6254 = !DILocation(line: 356, column: 30, scope: !6214)
!6255 = !DILocation(line: 356, column: 40, scope: !6214)
!6256 = !DILocation(line: 356, column: 44, scope: !6214)
!6257 = !DILocation(line: 356, column: 9, scope: !6214)
!6258 = !DILocation(line: 356, column: 7, scope: !6214)
!6259 = !DILocation(line: 359, column: 6, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 359, column: 6)
!6261 = !DILocation(line: 359, column: 11, scope: !6260)
!6262 = !DILocation(line: 359, column: 14, scope: !6260)
!6263 = !DILocation(line: 359, column: 6, scope: !6214)
!6264 = !DILocation(line: 360, column: 7, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 359, column: 20)
!6266 = !DILocation(line: 361, column: 7, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 361, column: 7)
!6268 = !DILocation(line: 361, column: 7, scope: !6265)
!6269 = !DILocation(line: 362, column: 10, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6267, file: !3, line: 361, column: 17)
!6271 = !DILocation(line: 362, column: 19, scope: !6270)
!6272 = !DILocation(line: 362, column: 22, scope: !6270)
!6273 = !DILocation(line: 362, column: 8, scope: !6270)
!6274 = !DILocation(line: 363, column: 11, scope: !6270)
!6275 = !DILocation(line: 363, column: 20, scope: !6270)
!6276 = !DILocation(line: 363, column: 23, scope: !6270)
!6277 = !DILocation(line: 363, column: 8, scope: !6270)
!6278 = !DILocation(line: 364, column: 3, scope: !6270)
!6279 = !DILocation(line: 365, column: 2, scope: !6265)
!6280 = !DILocation(line: 370, column: 14, scope: !6214)
!6281 = !DILocation(line: 370, column: 2, scope: !6214)
!6282 = !DILocation(line: 371, column: 14, scope: !6214)
!6283 = !DILocation(line: 371, column: 2, scope: !6214)
!6284 = !DILocation(line: 373, column: 7, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 373, column: 6)
!6286 = !DILocation(line: 373, column: 6, scope: !6285)
!6287 = !DILocation(line: 373, column: 12, scope: !6285)
!6288 = !DILocation(line: 373, column: 16, scope: !6285)
!6289 = !DILocation(line: 373, column: 25, scope: !6285)
!6290 = !DILocation(line: 373, column: 22, scope: !6285)
!6291 = !DILocation(line: 373, column: 32, scope: !6285)
!6292 = !DILocation(line: 373, column: 36, scope: !6285)
!6293 = !DILocation(line: 373, column: 42, scope: !6285)
!6294 = !DILocation(line: 373, column: 6, scope: !6214)
!6295 = !DILocation(line: 374, column: 3, scope: !6285)
!6296 = !DILocation(line: 376, column: 6, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6214, file: !3, line: 376, column: 6)
!6298 = !DILocation(line: 376, column: 15, scope: !6297)
!6299 = !DILocation(line: 376, column: 19, scope: !6297)
!6300 = !DILocation(line: 376, column: 22, scope: !6297)
!6301 = !DILocation(line: 376, column: 6, scope: !6214)
!6302 = !DILocation(line: 378, column: 17, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 376, column: 32)
!6304 = !DILocation(line: 378, column: 25, scope: !6303)
!6305 = !DILocation(line: 378, column: 39, scope: !6303)
!6306 = !DILocation(line: 378, column: 45, scope: !6303)
!6307 = !DILocation(line: 378, column: 3, scope: !6303)
!6308 = !DILocation(line: 379, column: 17, scope: !6303)
!6309 = !DILocation(line: 379, column: 25, scope: !6303)
!6310 = !DILocation(line: 379, column: 33, scope: !6303)
!6311 = !DILocation(line: 379, column: 39, scope: !6303)
!6312 = !DILocation(line: 379, column: 3, scope: !6303)
!6313 = !DILocation(line: 380, column: 2, scope: !6303)
!6314 = !DILocation(line: 382, column: 2, scope: !6214)
!6315 = !DILocation(line: 383, column: 1, scope: !6214)
!6316 = !DISubprogram(name: "_printk", scope: !6317, file: !6317, line: 153, type: !6318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6317 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6318 = !DISubroutineType(types: !6319)
!6319 = !{!109, !181, null}
!6320 = distinct !DISubprogram(name: "sub_interval", scope: !3, file: !3, line: 132, type: !6321, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6323)
!6321 = !DISubroutineType(types: !6322)
!6322 = !{!109, !5168, !5165, !5165}
!6323 = !{!6324, !6325, !6326, !6327, !6328}
!6324 = !DILocalVariable(name: "map", arg: 1, scope: !6320, file: !3, line: 132, type: !5168)
!6325 = !DILocalVariable(name: "base", arg: 2, scope: !6320, file: !3, line: 132, type: !5165)
!6326 = !DILocalVariable(name: "num", arg: 3, scope: !6320, file: !3, line: 132, type: !5165)
!6327 = !DILocalVariable(name: "p", scope: !6320, file: !3, line: 134, type: !5168)
!6328 = !DILocalVariable(name: "q", scope: !6320, file: !3, line: 134, type: !5168)
!6329 = !DILocation(line: 132, column: 46, scope: !6320)
!6330 = !DILocation(line: 132, column: 58, scope: !6320)
!6331 = !DILocation(line: 132, column: 71, scope: !6320)
!6332 = !DILocation(line: 134, column: 2, scope: !6320)
!6333 = !DILocation(line: 134, column: 23, scope: !6320)
!6334 = !DILocation(line: 134, column: 27, scope: !6320)
!6335 = !DILocation(line: 136, column: 11, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6320, file: !3, line: 136, column: 2)
!6337 = !DILocation(line: 136, column: 9, scope: !6336)
!6338 = !DILocation(line: 136, column: 7, scope: !6336)
!6339 = !DILocation(line: 137, column: 7, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6341, file: !3, line: 136, column: 25)
!6341 = distinct !DILexicalBlock(scope: !6336, file: !3, line: 136, column: 2)
!6342 = !DILocation(line: 137, column: 10, scope: !6340)
!6343 = !DILocation(line: 137, column: 5, scope: !6340)
!6344 = !DILocation(line: 138, column: 7, scope: !6345)
!6345 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 138, column: 7)
!6346 = !DILocation(line: 138, column: 12, scope: !6345)
!6347 = !DILocation(line: 138, column: 9, scope: !6345)
!6348 = !DILocation(line: 138, column: 7, scope: !6340)
!6349 = !DILocation(line: 139, column: 4, scope: !6345)
!6350 = !DILocation(line: 140, column: 8, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 140, column: 7)
!6352 = !DILocation(line: 140, column: 11, scope: !6351)
!6353 = !DILocation(line: 140, column: 16, scope: !6351)
!6354 = !DILocation(line: 140, column: 19, scope: !6351)
!6355 = !DILocation(line: 140, column: 15, scope: !6351)
!6356 = !DILocation(line: 140, column: 25, scope: !6351)
!6357 = !DILocation(line: 140, column: 23, scope: !6351)
!6358 = !DILocation(line: 140, column: 31, scope: !6351)
!6359 = !DILocation(line: 140, column: 35, scope: !6351)
!6360 = !DILocation(line: 140, column: 40, scope: !6351)
!6361 = !DILocation(line: 140, column: 39, scope: !6351)
!6362 = !DILocation(line: 140, column: 46, scope: !6351)
!6363 = !DILocation(line: 140, column: 49, scope: !6351)
!6364 = !DILocation(line: 140, column: 44, scope: !6351)
!6365 = !DILocation(line: 140, column: 7, scope: !6340)
!6366 = !DILocation(line: 141, column: 8, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 141, column: 8)
!6368 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 140, column: 56)
!6369 = !DILocation(line: 141, column: 11, scope: !6367)
!6370 = !DILocation(line: 141, column: 19, scope: !6367)
!6371 = !DILocation(line: 141, column: 16, scope: !6367)
!6372 = !DILocation(line: 141, column: 8, scope: !6368)
!6373 = !DILocation(line: 142, column: 9, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 142, column: 9)
!6375 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 141, column: 25)
!6376 = !DILocation(line: 142, column: 12, scope: !6374)
!6377 = !DILocation(line: 142, column: 17, scope: !6374)
!6378 = !DILocation(line: 142, column: 20, scope: !6374)
!6379 = !DILocation(line: 142, column: 16, scope: !6374)
!6380 = !DILocation(line: 142, column: 27, scope: !6374)
!6381 = !DILocation(line: 142, column: 32, scope: !6374)
!6382 = !DILocation(line: 142, column: 31, scope: !6374)
!6383 = !DILocation(line: 142, column: 24, scope: !6374)
!6384 = !DILocation(line: 142, column: 9, scope: !6375)
!6385 = !DILocation(line: 144, column: 16, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 142, column: 37)
!6387 = !DILocation(line: 144, column: 19, scope: !6386)
!6388 = !DILocation(line: 144, column: 6, scope: !6386)
!6389 = !DILocation(line: 144, column: 9, scope: !6386)
!6390 = !DILocation(line: 144, column: 14, scope: !6386)
!6391 = !DILocation(line: 145, column: 12, scope: !6386)
!6392 = !DILocation(line: 145, column: 6, scope: !6386)
!6393 = !DILocation(line: 147, column: 10, scope: !6386)
!6394 = !DILocation(line: 147, column: 8, scope: !6386)
!6395 = !DILocation(line: 148, column: 5, scope: !6386)
!6396 = !DILocation(line: 150, column: 15, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6374, file: !3, line: 148, column: 12)
!6398 = !DILocation(line: 150, column: 18, scope: !6397)
!6399 = !DILocation(line: 150, column: 25, scope: !6397)
!6400 = !DILocation(line: 150, column: 28, scope: !6397)
!6401 = !DILocation(line: 150, column: 23, scope: !6397)
!6402 = !DILocation(line: 150, column: 34, scope: !6397)
!6403 = !DILocation(line: 150, column: 32, scope: !6397)
!6404 = !DILocation(line: 150, column: 41, scope: !6397)
!6405 = !DILocation(line: 150, column: 39, scope: !6397)
!6406 = !DILocation(line: 150, column: 6, scope: !6397)
!6407 = !DILocation(line: 150, column: 9, scope: !6397)
!6408 = !DILocation(line: 150, column: 13, scope: !6397)
!6409 = !DILocation(line: 151, column: 16, scope: !6397)
!6410 = !DILocation(line: 151, column: 23, scope: !6397)
!6411 = !DILocation(line: 151, column: 21, scope: !6397)
!6412 = !DILocation(line: 151, column: 6, scope: !6397)
!6413 = !DILocation(line: 151, column: 9, scope: !6397)
!6414 = !DILocation(line: 151, column: 14, scope: !6397)
!6415 = !DILocation(line: 153, column: 4, scope: !6375)
!6416 = !DILocation(line: 153, column: 15, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 153, column: 15)
!6418 = !DILocation(line: 153, column: 18, scope: !6417)
!6419 = !DILocation(line: 153, column: 23, scope: !6417)
!6420 = !DILocation(line: 153, column: 26, scope: !6417)
!6421 = !DILocation(line: 153, column: 22, scope: !6417)
!6422 = !DILocation(line: 153, column: 33, scope: !6417)
!6423 = !DILocation(line: 153, column: 38, scope: !6417)
!6424 = !DILocation(line: 153, column: 37, scope: !6417)
!6425 = !DILocation(line: 153, column: 30, scope: !6417)
!6426 = !DILocation(line: 153, column: 15, scope: !6367)
!6427 = !DILocation(line: 155, column: 14, scope: !6428)
!6428 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 153, column: 43)
!6429 = !DILocation(line: 155, column: 21, scope: !6428)
!6430 = !DILocation(line: 155, column: 24, scope: !6428)
!6431 = !DILocation(line: 155, column: 19, scope: !6428)
!6432 = !DILocation(line: 155, column: 5, scope: !6428)
!6433 = !DILocation(line: 155, column: 8, scope: !6428)
!6434 = !DILocation(line: 155, column: 12, scope: !6428)
!6435 = !DILocation(line: 156, column: 4, scope: !6428)
!6436 = !DILocation(line: 158, column: 9, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6417, file: !3, line: 156, column: 11)
!6438 = !DILocation(line: 158, column: 7, scope: !6437)
!6439 = !DILocation(line: 160, column: 10, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6437, file: !3, line: 160, column: 9)
!6441 = !DILocation(line: 160, column: 9, scope: !6437)
!6442 = !DILocation(line: 161, column: 6, scope: !6443)
!6443 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 161, column: 6)
!6444 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 160, column: 13)
!6445 = !DILocation(line: 161, column: 6, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 161, column: 6)
!6447 = !DILocation(line: 162, column: 6, scope: !6444)
!6448 = !DILocation(line: 164, column: 15, scope: !6437)
!6449 = !DILocation(line: 164, column: 20, scope: !6437)
!6450 = !DILocation(line: 164, column: 19, scope: !6437)
!6451 = !DILocation(line: 164, column: 5, scope: !6437)
!6452 = !DILocation(line: 164, column: 8, scope: !6437)
!6453 = !DILocation(line: 164, column: 13, scope: !6437)
!6454 = !DILocation(line: 165, column: 14, scope: !6437)
!6455 = !DILocation(line: 165, column: 17, scope: !6437)
!6456 = !DILocation(line: 165, column: 22, scope: !6437)
!6457 = !DILocation(line: 165, column: 25, scope: !6437)
!6458 = !DILocation(line: 165, column: 21, scope: !6437)
!6459 = !DILocation(line: 165, column: 31, scope: !6437)
!6460 = !DILocation(line: 165, column: 34, scope: !6437)
!6461 = !DILocation(line: 165, column: 29, scope: !6437)
!6462 = !DILocation(line: 165, column: 5, scope: !6437)
!6463 = !DILocation(line: 165, column: 8, scope: !6437)
!6464 = !DILocation(line: 165, column: 12, scope: !6437)
!6465 = !DILocation(line: 166, column: 14, scope: !6437)
!6466 = !DILocation(line: 166, column: 21, scope: !6437)
!6467 = !DILocation(line: 166, column: 24, scope: !6437)
!6468 = !DILocation(line: 166, column: 19, scope: !6437)
!6469 = !DILocation(line: 166, column: 5, scope: !6437)
!6470 = !DILocation(line: 166, column: 8, scope: !6437)
!6471 = !DILocation(line: 166, column: 12, scope: !6437)
!6472 = !DILocation(line: 167, column: 15, scope: !6437)
!6473 = !DILocation(line: 167, column: 18, scope: !6437)
!6474 = !DILocation(line: 167, column: 5, scope: !6437)
!6475 = !DILocation(line: 167, column: 8, scope: !6437)
!6476 = !DILocation(line: 167, column: 13, scope: !6437)
!6477 = !DILocation(line: 167, column: 35, scope: !6437)
!6478 = !DILocation(line: 167, column: 25, scope: !6437)
!6479 = !DILocation(line: 167, column: 28, scope: !6437)
!6480 = !DILocation(line: 167, column: 33, scope: !6437)
!6481 = !DILocation(line: 169, column: 3, scope: !6368)
!6482 = !DILocation(line: 170, column: 2, scope: !6340)
!6483 = !DILocation(line: 136, column: 22, scope: !6341)
!6484 = !DILocation(line: 136, column: 20, scope: !6341)
!6485 = !DILocation(line: 136, column: 2, scope: !6341)
!6486 = distinct !{!6486, !6487, !6488, !5278}
!6487 = !DILocation(line: 136, column: 2, scope: !6336)
!6488 = !DILocation(line: 170, column: 2, scope: !6336)
!6489 = !DILocation(line: 171, column: 2, scope: !6320)
!6490 = !DILocation(line: 172, column: 1, scope: !6320)
!6491 = distinct !DISubprogram(name: "claim_region", scope: !3, file: !3, line: 73, type: !6492, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6494)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!4154, !4123, !4159, !4159, !109, !262}
!6494 = !{!6495, !6496, !6497, !6498, !6499, !6500, !6501}
!6495 = !DILocalVariable(name: "s", arg: 1, scope: !6491, file: !3, line: 73, type: !4123)
!6496 = !DILocalVariable(name: "base", arg: 2, scope: !6491, file: !3, line: 73, type: !4159)
!6497 = !DILocalVariable(name: "size", arg: 3, scope: !6491, file: !3, line: 74, type: !4159)
!6498 = !DILocalVariable(name: "type", arg: 4, scope: !6491, file: !3, line: 74, type: !109)
!6499 = !DILocalVariable(name: "name", arg: 5, scope: !6491, file: !3, line: 74, type: !262)
!6500 = !DILocalVariable(name: "res", scope: !6491, file: !3, line: 76, type: !4154)
!6501 = !DILocalVariable(name: "parent", scope: !6491, file: !3, line: 76, type: !4154)
!6502 = !DILocation(line: 73, column: 36, scope: !6491)
!6503 = !DILocation(line: 73, column: 55, scope: !6491)
!6504 = !DILocation(line: 74, column: 19, scope: !6491)
!6505 = !DILocation(line: 74, column: 29, scope: !6491)
!6506 = !DILocation(line: 74, column: 41, scope: !6491)
!6507 = !DILocation(line: 76, column: 2, scope: !6491)
!6508 = !DILocation(line: 76, column: 19, scope: !6491)
!6509 = !DILocation(line: 76, column: 25, scope: !6491)
!6510 = !DILocation(line: 78, column: 11, scope: !6491)
!6511 = !DILocation(line: 78, column: 16, scope: !6491)
!6512 = !DILocation(line: 78, column: 9, scope: !6491)
!6513 = !DILocation(line: 79, column: 29, scope: !6491)
!6514 = !DILocation(line: 79, column: 35, scope: !6491)
!6515 = !DILocation(line: 79, column: 41, scope: !6491)
!6516 = !DILocation(line: 79, column: 46, scope: !6491)
!6517 = !DILocation(line: 79, column: 65, scope: !6491)
!6518 = !DILocation(line: 79, column: 8, scope: !6491)
!6519 = !DILocation(line: 79, column: 6, scope: !6491)
!6520 = !DILocation(line: 81, column: 6, scope: !6521)
!6521 = distinct !DILexicalBlock(scope: !6491, file: !3, line: 81, column: 6)
!6522 = !DILocation(line: 81, column: 6, scope: !6491)
!6523 = !DILocation(line: 83, column: 7, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6525, file: !3, line: 83, column: 7)
!6525 = distinct !DILexicalBlock(scope: !6521, file: !3, line: 81, column: 11)
!6526 = !DILocation(line: 83, column: 9, scope: !6524)
!6527 = !DILocation(line: 83, column: 12, scope: !6524)
!6528 = !DILocation(line: 83, column: 15, scope: !6524)
!6529 = !DILocation(line: 83, column: 7, scope: !6525)
!6530 = !DILocation(line: 84, column: 38, scope: !6524)
!6531 = !DILocation(line: 84, column: 41, scope: !6524)
!6532 = !DILocation(line: 84, column: 49, scope: !6524)
!6533 = !DILocation(line: 84, column: 13, scope: !6524)
!6534 = !DILocation(line: 84, column: 11, scope: !6524)
!6535 = !DILocation(line: 84, column: 4, scope: !6524)
!6536 = !DILocation(line: 86, column: 8, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6525, file: !3, line: 86, column: 7)
!6538 = !DILocation(line: 86, column: 15, scope: !6537)
!6539 = !DILocation(line: 86, column: 35, scope: !6537)
!6540 = !DILocation(line: 86, column: 43, scope: !6537)
!6541 = !DILocation(line: 86, column: 18, scope: !6537)
!6542 = !DILocation(line: 86, column: 7, scope: !6525)
!6543 = !DILocation(line: 87, column: 10, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 86, column: 49)
!6545 = !DILocation(line: 87, column: 4, scope: !6544)
!6546 = !DILocation(line: 88, column: 8, scope: !6544)
!6547 = !DILocation(line: 89, column: 3, scope: !6544)
!6548 = !DILocation(line: 90, column: 2, scope: !6525)
!6549 = !DILocation(line: 91, column: 9, scope: !6491)
!6550 = !DILocation(line: 92, column: 1, scope: !6491)
!6551 = !DILocation(line: 91, column: 2, scope: !6491)
!6552 = distinct !DISubprogram(name: "free_region", scope: !3, file: !3, line: 94, type: !6553, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6555)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{null, !4154}
!6555 = !{!6556}
!6556 = !DILocalVariable(name: "res", arg: 1, scope: !6552, file: !3, line: 94, type: !4154)
!6557 = !DILocation(line: 94, column: 42, scope: !6552)
!6558 = !DILocation(line: 96, column: 6, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6552, file: !3, line: 96, column: 6)
!6560 = !DILocation(line: 96, column: 6, scope: !6552)
!6561 = !DILocation(line: 97, column: 20, scope: !6562)
!6562 = distinct !DILexicalBlock(scope: !6559, file: !3, line: 96, column: 11)
!6563 = !DILocation(line: 97, column: 3, scope: !6562)
!6564 = !DILocation(line: 98, column: 9, scope: !6562)
!6565 = !DILocation(line: 98, column: 3, scope: !6562)
!6566 = !DILocation(line: 99, column: 2, scope: !6562)
!6567 = !DILocation(line: 100, column: 1, scope: !6552)
!6568 = distinct !DISubprogram(name: "add_interval", scope: !3, file: !3, line: 108, type: !6321, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6569)
!6569 = !{!6570, !6571, !6572, !6573, !6574, !6575, !6582}
!6570 = !DILocalVariable(name: "map", arg: 1, scope: !6568, file: !3, line: 108, type: !5168)
!6571 = !DILocalVariable(name: "base", arg: 2, scope: !6568, file: !3, line: 108, type: !5165)
!6572 = !DILocalVariable(name: "num", arg: 3, scope: !6568, file: !3, line: 108, type: !5165)
!6573 = !DILocalVariable(name: "p", scope: !6568, file: !3, line: 110, type: !5168)
!6574 = !DILocalVariable(name: "q", scope: !6568, file: !3, line: 110, type: !5168)
!6575 = !DILocalVariable(name: "__UNIQUE_ID___x293", scope: !6576, file: !3, line: 114, type: !5165)
!6576 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 114, column: 13)
!6577 = distinct !DILexicalBlock(scope: !6578, file: !3, line: 113, column: 47)
!6578 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 113, column: 7)
!6579 = distinct !DILexicalBlock(scope: !6580, file: !3, line: 112, column: 31)
!6580 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 112, column: 2)
!6581 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 112, column: 2)
!6582 = !DILocalVariable(name: "__UNIQUE_ID___y294", scope: !6576, file: !3, line: 114, type: !5165)
!6583 = !DILocation(line: 108, column: 46, scope: !6568)
!6584 = !DILocation(line: 108, column: 58, scope: !6568)
!6585 = !DILocation(line: 108, column: 71, scope: !6568)
!6586 = !DILocation(line: 110, column: 2, scope: !6568)
!6587 = !DILocation(line: 110, column: 23, scope: !6568)
!6588 = !DILocation(line: 110, column: 27, scope: !6568)
!6589 = !DILocation(line: 112, column: 11, scope: !6581)
!6590 = !DILocation(line: 112, column: 9, scope: !6581)
!6591 = !DILocation(line: 112, column: 7, scope: !6581)
!6592 = !DILocation(line: 113, column: 8, scope: !6578)
!6593 = !DILocation(line: 113, column: 13, scope: !6578)
!6594 = !DILocation(line: 113, column: 10, scope: !6578)
!6595 = !DILocation(line: 113, column: 18, scope: !6578)
!6596 = !DILocation(line: 113, column: 22, scope: !6578)
!6597 = !DILocation(line: 113, column: 25, scope: !6578)
!6598 = !DILocation(line: 113, column: 30, scope: !6578)
!6599 = !DILocation(line: 113, column: 33, scope: !6578)
!6600 = !DILocation(line: 113, column: 29, scope: !6578)
!6601 = !DILocation(line: 113, column: 40, scope: !6578)
!6602 = !DILocation(line: 113, column: 37, scope: !6578)
!6603 = !DILocation(line: 113, column: 7, scope: !6579)
!6604 = !DILocation(line: 114, column: 13, scope: !6576)
!6605 = !DILocation(line: 114, column: 13, scope: !6577)
!6606 = !DILocation(line: 114, column: 4, scope: !6577)
!6607 = !DILocation(line: 114, column: 7, scope: !6577)
!6608 = !DILocation(line: 114, column: 11, scope: !6577)
!6609 = !DILocation(line: 115, column: 4, scope: !6577)
!6610 = !DILocation(line: 117, column: 8, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6579, file: !3, line: 117, column: 7)
!6612 = !DILocation(line: 117, column: 11, scope: !6611)
!6613 = !DILocation(line: 117, column: 19, scope: !6611)
!6614 = !DILocation(line: 117, column: 16, scope: !6611)
!6615 = !DILocation(line: 117, column: 24, scope: !6611)
!6616 = !DILocation(line: 117, column: 28, scope: !6611)
!6617 = !DILocation(line: 117, column: 31, scope: !6611)
!6618 = !DILocation(line: 117, column: 37, scope: !6611)
!6619 = !DILocation(line: 117, column: 44, scope: !6611)
!6620 = !DILocation(line: 117, column: 49, scope: !6611)
!6621 = !DILocation(line: 117, column: 48, scope: !6611)
!6622 = !DILocation(line: 117, column: 52, scope: !6611)
!6623 = !DILocation(line: 117, column: 42, scope: !6611)
!6624 = !DILocation(line: 117, column: 7, scope: !6579)
!6625 = !DILocation(line: 118, column: 4, scope: !6611)
!6626 = !DILocation(line: 119, column: 2, scope: !6579)
!6627 = !DILocation(line: 112, column: 22, scope: !6580)
!6628 = !DILocation(line: 112, column: 25, scope: !6580)
!6629 = !DILocation(line: 112, column: 20, scope: !6580)
!6630 = !DILocation(line: 112, column: 2, scope: !6580)
!6631 = distinct !{!6631, !6632, !6633, !5278}
!6632 = !DILocation(line: 112, column: 2, scope: !6581)
!6633 = !DILocation(line: 119, column: 2, scope: !6581)
!6634 = !DILocation(line: 120, column: 6, scope: !6568)
!6635 = !DILocation(line: 120, column: 4, scope: !6568)
!6636 = !DILocation(line: 121, column: 7, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 121, column: 6)
!6638 = !DILocation(line: 121, column: 6, scope: !6568)
!6639 = !DILocation(line: 122, column: 3, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6641, file: !3, line: 122, column: 3)
!6641 = distinct !DILexicalBlock(scope: !6637, file: !3, line: 121, column: 10)
!6642 = !DILocation(line: 122, column: 3, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6640, file: !3, line: 122, column: 3)
!6644 = !DILocation(line: 123, column: 3, scope: !6641)
!6645 = !DILocation(line: 125, column: 12, scope: !6568)
!6646 = !DILocation(line: 125, column: 2, scope: !6568)
!6647 = !DILocation(line: 125, column: 5, scope: !6568)
!6648 = !DILocation(line: 125, column: 10, scope: !6568)
!6649 = !DILocation(line: 125, column: 27, scope: !6568)
!6650 = !DILocation(line: 125, column: 18, scope: !6568)
!6651 = !DILocation(line: 125, column: 21, scope: !6568)
!6652 = !DILocation(line: 125, column: 25, scope: !6568)
!6653 = !DILocation(line: 126, column: 12, scope: !6568)
!6654 = !DILocation(line: 126, column: 15, scope: !6568)
!6655 = !DILocation(line: 126, column: 2, scope: !6568)
!6656 = !DILocation(line: 126, column: 5, scope: !6568)
!6657 = !DILocation(line: 126, column: 10, scope: !6568)
!6658 = !DILocation(line: 126, column: 31, scope: !6568)
!6659 = !DILocation(line: 126, column: 21, scope: !6568)
!6660 = !DILocation(line: 126, column: 24, scope: !6568)
!6661 = !DILocation(line: 126, column: 29, scope: !6568)
!6662 = !DILocation(line: 127, column: 2, scope: !6568)
!6663 = !DILocation(line: 128, column: 1, scope: !6568)
!6664 = !DISubprogram(name: "pcmcia_make_resource", scope: !4117, file: !4117, line: 80, type: !6665, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6665 = !DISubroutineType(types: !6666)
!6666 = !{!4154, !4159, !4159, !312, !181}
!6667 = !DISubprogram(name: "pci_find_parent_resource", scope: !4193, file: !4193, line: 1142, type: !6668, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6668 = !DISubroutineType(types: !6669)
!6669 = !{!4154, !6670, !4154}
!6670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6671, size: 64)
!6671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4192)
!6672 = !DISubprogram(name: "request_resource", scope: !4156, file: !4156, line: 196, type: !6673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6673 = !DISubroutineType(types: !6674)
!6674 = !{!109, !4154, !4154}
!6675 = !DISubprogram(name: "kfree", scope: !147, file: !147, line: 227, type: !6676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6676 = !DISubroutineType(types: !6677)
!6677 = !{null, !2132}
!6678 = !DISubprogram(name: "release_resource", scope: !4156, file: !4156, line: 197, type: !6679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6679 = !DISubroutineType(types: !6680)
!6680 = !{!109, !4154}
!6681 = distinct !DISubprogram(name: "kmalloc", scope: !147, file: !147, line: 591, type: !6682, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6684)
!6682 = !DISubroutineType(types: !6683)
!6683 = !{!334, !309, !708}
!6684 = !{!6685, !6686, !6687}
!6685 = !DILocalVariable(name: "size", arg: 1, scope: !6681, file: !147, line: 591, type: !309)
!6686 = !DILocalVariable(name: "flags", arg: 2, scope: !6681, file: !147, line: 591, type: !708)
!6687 = !DILocalVariable(name: "index", scope: !6688, file: !147, line: 594, type: !7)
!6688 = distinct !DILexicalBlock(scope: !6689, file: !147, line: 593, column: 42)
!6689 = distinct !DILexicalBlock(scope: !6681, file: !147, line: 593, column: 6)
!6690 = !DILocation(line: 591, column: 61, scope: !6681)
!6691 = !DILocation(line: 591, column: 73, scope: !6681)
!6692 = !DILocation(line: 593, column: 27, scope: !6689)
!6693 = !DILocation(line: 593, column: 6, scope: !6689)
!6694 = !DILocation(line: 593, column: 33, scope: !6689)
!6695 = !DILocation(line: 593, column: 36, scope: !6689)
!6696 = !DILocation(line: 593, column: 6, scope: !6681)
!6697 = !DILocation(line: 594, column: 3, scope: !6688)
!6698 = !DILocation(line: 594, column: 16, scope: !6688)
!6699 = !DILocation(line: 596, column: 7, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6688, file: !147, line: 596, column: 7)
!6701 = !DILocation(line: 596, column: 12, scope: !6700)
!6702 = !DILocation(line: 596, column: 7, scope: !6688)
!6703 = !DILocation(line: 597, column: 25, scope: !6700)
!6704 = !DILocation(line: 597, column: 31, scope: !6700)
!6705 = !DILocation(line: 597, column: 11, scope: !6700)
!6706 = !DILocation(line: 597, column: 4, scope: !6700)
!6707 = !DILocation(line: 599, column: 11, scope: !6688)
!6708 = !DILocation(line: 599, column: 9, scope: !6688)
!6709 = !DILocation(line: 601, column: 33, scope: !6688)
!6710 = !DILocation(line: 601, column: 40, scope: !6688)
!6711 = !DILocation(line: 601, column: 20, scope: !6688)
!6712 = !DILocation(line: 601, column: 5, scope: !6688)
!6713 = !DILocation(line: 601, column: 51, scope: !6688)
!6714 = !DILocation(line: 602, column: 5, scope: !6688)
!6715 = !DILocation(line: 602, column: 12, scope: !6688)
!6716 = !DILocation(line: 600, column: 10, scope: !6688)
!6717 = !DILocation(line: 600, column: 3, scope: !6688)
!6718 = !DILocation(line: 603, column: 2, scope: !6689)
!6719 = !DILocation(line: 604, column: 19, scope: !6681)
!6720 = !DILocation(line: 604, column: 25, scope: !6681)
!6721 = !DILocation(line: 604, column: 9, scope: !6681)
!6722 = !DILocation(line: 604, column: 2, scope: !6681)
!6723 = !DILocation(line: 605, column: 1, scope: !6681)
!6724 = !DISubprogram(name: "kmalloc_large", scope: !147, file: !147, line: 531, type: !6682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6725 = distinct !DISubprogram(name: "__kmalloc_index", scope: !147, file: !147, line: 444, type: !6726, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6728)
!6726 = !DISubroutineType(types: !6727)
!6727 = !{!7, !309, !1463}
!6728 = !{!6729, !6730}
!6729 = !DILocalVariable(name: "size", arg: 1, scope: !6725, file: !147, line: 444, type: !309)
!6730 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6725, file: !147, line: 445, type: !1463)
!6731 = !DILocation(line: 444, column: 60, scope: !6725)
!6732 = !DILocation(line: 445, column: 16, scope: !6725)
!6733 = !DILocation(line: 447, column: 7, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 447, column: 6)
!6735 = !DILocation(line: 447, column: 6, scope: !6725)
!6736 = !DILocation(line: 448, column: 3, scope: !6734)
!6737 = !DILocation(line: 450, column: 6, scope: !6738)
!6738 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 450, column: 6)
!6739 = !DILocation(line: 450, column: 11, scope: !6738)
!6740 = !DILocation(line: 450, column: 6, scope: !6725)
!6741 = !DILocation(line: 451, column: 3, scope: !6738)
!6742 = !DILocation(line: 453, column: 32, scope: !6743)
!6743 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 453, column: 6)
!6744 = !DILocation(line: 453, column: 37, scope: !6743)
!6745 = !DILocation(line: 453, column: 42, scope: !6743)
!6746 = !DILocation(line: 453, column: 45, scope: !6743)
!6747 = !DILocation(line: 453, column: 50, scope: !6743)
!6748 = !DILocation(line: 453, column: 6, scope: !6725)
!6749 = !DILocation(line: 454, column: 3, scope: !6743)
!6750 = !DILocation(line: 455, column: 32, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 455, column: 6)
!6752 = !DILocation(line: 455, column: 37, scope: !6751)
!6753 = !DILocation(line: 455, column: 43, scope: !6751)
!6754 = !DILocation(line: 455, column: 46, scope: !6751)
!6755 = !DILocation(line: 455, column: 51, scope: !6751)
!6756 = !DILocation(line: 455, column: 6, scope: !6725)
!6757 = !DILocation(line: 456, column: 3, scope: !6751)
!6758 = !DILocation(line: 457, column: 6, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 457, column: 6)
!6760 = !DILocation(line: 457, column: 11, scope: !6759)
!6761 = !DILocation(line: 457, column: 6, scope: !6725)
!6762 = !DILocation(line: 457, column: 26, scope: !6759)
!6763 = !DILocation(line: 458, column: 6, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 458, column: 6)
!6765 = !DILocation(line: 458, column: 11, scope: !6764)
!6766 = !DILocation(line: 458, column: 6, scope: !6725)
!6767 = !DILocation(line: 458, column: 26, scope: !6764)
!6768 = !DILocation(line: 459, column: 6, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 459, column: 6)
!6770 = !DILocation(line: 459, column: 11, scope: !6769)
!6771 = !DILocation(line: 459, column: 6, scope: !6725)
!6772 = !DILocation(line: 459, column: 26, scope: !6769)
!6773 = !DILocation(line: 460, column: 6, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 460, column: 6)
!6775 = !DILocation(line: 460, column: 11, scope: !6774)
!6776 = !DILocation(line: 460, column: 6, scope: !6725)
!6777 = !DILocation(line: 460, column: 26, scope: !6774)
!6778 = !DILocation(line: 461, column: 6, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 461, column: 6)
!6780 = !DILocation(line: 461, column: 11, scope: !6779)
!6781 = !DILocation(line: 461, column: 6, scope: !6725)
!6782 = !DILocation(line: 461, column: 26, scope: !6779)
!6783 = !DILocation(line: 462, column: 6, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 462, column: 6)
!6785 = !DILocation(line: 462, column: 11, scope: !6784)
!6786 = !DILocation(line: 462, column: 6, scope: !6725)
!6787 = !DILocation(line: 462, column: 26, scope: !6784)
!6788 = !DILocation(line: 463, column: 6, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 463, column: 6)
!6790 = !DILocation(line: 463, column: 11, scope: !6789)
!6791 = !DILocation(line: 463, column: 6, scope: !6725)
!6792 = !DILocation(line: 463, column: 26, scope: !6789)
!6793 = !DILocation(line: 464, column: 6, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 464, column: 6)
!6795 = !DILocation(line: 464, column: 11, scope: !6794)
!6796 = !DILocation(line: 464, column: 6, scope: !6725)
!6797 = !DILocation(line: 464, column: 26, scope: !6794)
!6798 = !DILocation(line: 465, column: 6, scope: !6799)
!6799 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 465, column: 6)
!6800 = !DILocation(line: 465, column: 11, scope: !6799)
!6801 = !DILocation(line: 465, column: 6, scope: !6725)
!6802 = !DILocation(line: 465, column: 26, scope: !6799)
!6803 = !DILocation(line: 466, column: 6, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 466, column: 6)
!6805 = !DILocation(line: 466, column: 11, scope: !6804)
!6806 = !DILocation(line: 466, column: 6, scope: !6725)
!6807 = !DILocation(line: 466, column: 26, scope: !6804)
!6808 = !DILocation(line: 467, column: 6, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 467, column: 6)
!6810 = !DILocation(line: 467, column: 11, scope: !6809)
!6811 = !DILocation(line: 467, column: 6, scope: !6725)
!6812 = !DILocation(line: 467, column: 26, scope: !6809)
!6813 = !DILocation(line: 468, column: 6, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 468, column: 6)
!6815 = !DILocation(line: 468, column: 11, scope: !6814)
!6816 = !DILocation(line: 468, column: 6, scope: !6725)
!6817 = !DILocation(line: 468, column: 26, scope: !6814)
!6818 = !DILocation(line: 469, column: 6, scope: !6819)
!6819 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 469, column: 6)
!6820 = !DILocation(line: 469, column: 11, scope: !6819)
!6821 = !DILocation(line: 469, column: 6, scope: !6725)
!6822 = !DILocation(line: 469, column: 26, scope: !6819)
!6823 = !DILocation(line: 470, column: 6, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 470, column: 6)
!6825 = !DILocation(line: 470, column: 11, scope: !6824)
!6826 = !DILocation(line: 470, column: 6, scope: !6725)
!6827 = !DILocation(line: 470, column: 26, scope: !6824)
!6828 = !DILocation(line: 471, column: 6, scope: !6829)
!6829 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 471, column: 6)
!6830 = !DILocation(line: 471, column: 11, scope: !6829)
!6831 = !DILocation(line: 471, column: 6, scope: !6725)
!6832 = !DILocation(line: 471, column: 26, scope: !6829)
!6833 = !DILocation(line: 472, column: 6, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 472, column: 6)
!6835 = !DILocation(line: 472, column: 11, scope: !6834)
!6836 = !DILocation(line: 472, column: 6, scope: !6725)
!6837 = !DILocation(line: 472, column: 26, scope: !6834)
!6838 = !DILocation(line: 473, column: 6, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 473, column: 6)
!6840 = !DILocation(line: 473, column: 11, scope: !6839)
!6841 = !DILocation(line: 473, column: 6, scope: !6725)
!6842 = !DILocation(line: 473, column: 26, scope: !6839)
!6843 = !DILocation(line: 474, column: 6, scope: !6844)
!6844 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 474, column: 6)
!6845 = !DILocation(line: 474, column: 11, scope: !6844)
!6846 = !DILocation(line: 474, column: 6, scope: !6725)
!6847 = !DILocation(line: 474, column: 27, scope: !6844)
!6848 = !DILocation(line: 475, column: 6, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 475, column: 6)
!6850 = !DILocation(line: 475, column: 11, scope: !6849)
!6851 = !DILocation(line: 475, column: 6, scope: !6725)
!6852 = !DILocation(line: 475, column: 32, scope: !6849)
!6853 = !DILocation(line: 477, column: 50, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6725, file: !147, line: 477, column: 6)
!6855 = !{i8 0, i8 2}
!6856 = !DILocation(line: 477, column: 6, scope: !6725)
!6857 = !DILocation(line: 478, column: 3, scope: !6854)
!6858 = !DILocation(line: 478, column: 3, scope: !6859)
!6859 = distinct !DILexicalBlock(scope: !6860, file: !147, line: 478, column: 3)
!6860 = distinct !DILexicalBlock(scope: !6854, file: !147, line: 478, column: 3)
!6861 = !{i32 -2142484933}
!6862 = !DILocation(line: 478, column: 3, scope: !6860)
!6863 = !DILocation(line: 480, column: 3, scope: !6854)
!6864 = !DILocation(line: 480, column: 3, scope: !6865)
!6865 = distinct !DILexicalBlock(scope: !6854, file: !147, line: 480, column: 3)
!6866 = !DILocation(line: 480, column: 3, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6865, file: !147, line: 480, column: 3)
!6868 = !DILocation(line: 480, column: 3, scope: !6869)
!6869 = distinct !DILexicalBlock(scope: !6865, file: !147, line: 480, column: 3)
!6870 = !{i64 2152482566, i64 2152482595, i64 2152482641, i64 2152482699, i64 2152482753, i64 2152482807, i64 2152482862, i64 2152482893}
!6871 = !DILocation(line: 483, column: 2, scope: !6725)
!6872 = !DILocation(line: 484, column: 1, scope: !6725)
!6873 = !DISubprogram(name: "kmalloc_trace", scope: !147, file: !147, line: 525, type: !6874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6874 = !DISubroutineType(types: !6875)
!6875 = !{!334, !6876, !708, !309}
!6876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6877, size: 64)
!6877 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6878, line: 11, flags: DIFlagFwdDecl)
!6878 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6879 = distinct !DISubprogram(name: "kmalloc_type", scope: !147, file: !147, line: 401, type: !6880, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6882)
!6880 = !DISubroutineType(types: !6881)
!6881 = !{!146, !708, !312}
!6882 = !{!6883, !6884}
!6883 = !DILocalVariable(name: "flags", arg: 1, scope: !6879, file: !147, line: 401, type: !708)
!6884 = !DILocalVariable(name: "caller", arg: 2, scope: !6879, file: !147, line: 401, type: !312)
!6885 = !DILocation(line: 401, column: 67, scope: !6879)
!6886 = !DILocation(line: 401, column: 88, scope: !6879)
!6887 = !DILocation(line: 407, column: 6, scope: !6888)
!6888 = distinct !DILexicalBlock(scope: !6879, file: !147, line: 407, column: 6)
!6889 = !DILocation(line: 407, column: 6, scope: !6879)
!6890 = !DILocation(line: 413, column: 3, scope: !6888)
!6891 = !DILocation(line: 423, column: 38, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6879, file: !147, line: 423, column: 6)
!6893 = !DILocation(line: 423, column: 44, scope: !6892)
!6894 = !DILocation(line: 423, column: 6, scope: !6879)
!6895 = !DILocation(line: 424, column: 3, scope: !6892)
!6896 = !DILocation(line: 426, column: 3, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6879, file: !147, line: 425, column: 6)
!6898 = !DILocation(line: 429, column: 1, scope: !6879)
!6899 = !DISubprogram(name: "__kmalloc", scope: !147, file: !147, line: 488, type: !6682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6900 = !DISubprogram(name: "__compiletime_assert_196", scope: !147, file: !147, line: 478, type: !2520, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6901 = !DISubprogram(name: "ioremap", scope: !6902, file: !6902, line: 196, type: !6903, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6902 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!6903 = !DISubroutineType(types: !6904)
!6904 = !{!334, !4159, !312}
!6905 = !DISubprogram(name: "mutex_unlock", scope: !644, file: !644, line: 246, type: !6906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6906 = !DISubroutineType(types: !6907)
!6907 = !{null, !6908}
!6908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!6909 = !DISubprogram(name: "mutex_lock", scope: !644, file: !644, line: 227, type: !6906, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6910 = !DISubprogram(name: "iounmap", scope: !6902, file: !6902, line: 199, type: !6911, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6911 = !DISubroutineType(types: !6912)
!6912 = !{null, !6913}
!6913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6914, size: 64)
!6914 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6915 = distinct !DISubprogram(name: "readl", scope: !6902, file: !6902, line: 58, type: !6916, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6920)
!6916 = !DISubroutineType(types: !6917)
!6917 = !{!7, !6918}
!6918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6919, size: 64)
!6919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6914)
!6920 = !{!6921, !6922}
!6921 = !DILocalVariable(name: "addr", arg: 1, scope: !6915, file: !6902, line: 58, type: !6918)
!6922 = !DILocalVariable(name: "ret", scope: !6915, file: !6902, line: 58, type: !7)
!6923 = !DILocation(line: 58, column: 1, scope: !6915)
!6924 = !{i64 2152929778}
!6925 = distinct !DISubprogram(name: "__nonstatic_find_io_region", scope: !3, file: !3, line: 682, type: !6926, scopeLine: 685, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6928)
!6926 = !DISubroutineType(types: !6927)
!6927 = !{!4154, !4123, !312, !109, !312}
!6928 = !{!6929, !6930, !6931, !6932, !6933, !6934, !6935, !6936, !6937}
!6929 = !DILocalVariable(name: "s", arg: 1, scope: !6925, file: !3, line: 682, type: !4123)
!6930 = !DILocalVariable(name: "base", arg: 2, scope: !6925, file: !3, line: 683, type: !312)
!6931 = !DILocalVariable(name: "num", arg: 3, scope: !6925, file: !3, line: 683, type: !109)
!6932 = !DILocalVariable(name: "align", arg: 4, scope: !6925, file: !3, line: 684, type: !312)
!6933 = !DILocalVariable(name: "res", scope: !6925, file: !3, line: 686, type: !4154)
!6934 = !DILocalVariable(name: "s_data", scope: !6925, file: !3, line: 688, type: !5158)
!6935 = !DILocalVariable(name: "data", scope: !6925, file: !3, line: 689, type: !5496)
!6936 = !DILocalVariable(name: "min", scope: !6925, file: !3, line: 690, type: !312)
!6937 = !DILocalVariable(name: "ret", scope: !6925, file: !3, line: 691, type: !109)
!6938 = !DILocation(line: 682, column: 74, scope: !6925)
!6939 = !DILocation(line: 683, column: 21, scope: !6925)
!6940 = !DILocation(line: 683, column: 31, scope: !6925)
!6941 = !DILocation(line: 684, column: 21, scope: !6925)
!6942 = !DILocation(line: 686, column: 2, scope: !6925)
!6943 = !DILocation(line: 686, column: 19, scope: !6925)
!6944 = !DILocation(line: 686, column: 49, scope: !6925)
!6945 = !DILocation(line: 687, column: 17, scope: !6925)
!6946 = !DILocation(line: 687, column: 20, scope: !6925)
!6947 = !DILocation(line: 687, column: 7, scope: !6925)
!6948 = !DILocation(line: 686, column: 25, scope: !6925)
!6949 = !DILocation(line: 688, column: 2, scope: !6925)
!6950 = !DILocation(line: 688, column: 22, scope: !6925)
!6951 = !DILocation(line: 688, column: 31, scope: !6925)
!6952 = !DILocation(line: 688, column: 34, scope: !6925)
!6953 = !DILocation(line: 689, column: 2, scope: !6925)
!6954 = !DILocation(line: 689, column: 27, scope: !6925)
!6955 = !DILocation(line: 690, column: 2, scope: !6925)
!6956 = !DILocation(line: 690, column: 16, scope: !6925)
!6957 = !DILocation(line: 690, column: 22, scope: !6925)
!6958 = !DILocation(line: 691, column: 2, scope: !6925)
!6959 = !DILocation(line: 691, column: 6, scope: !6925)
!6960 = !DILocation(line: 693, column: 7, scope: !6961)
!6961 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 693, column: 6)
!6962 = !DILocation(line: 693, column: 6, scope: !6925)
!6963 = !DILocation(line: 694, column: 3, scope: !6961)
!6964 = !DILocation(line: 696, column: 14, scope: !6925)
!6965 = !DILocation(line: 696, column: 20, scope: !6925)
!6966 = !DILocation(line: 696, column: 7, scope: !6925)
!6967 = !DILocation(line: 696, column: 12, scope: !6925)
!6968 = !DILocation(line: 697, column: 16, scope: !6925)
!6969 = !DILocation(line: 697, column: 28, scope: !6925)
!6970 = !DILocation(line: 697, column: 21, scope: !6925)
!6971 = !DILocation(line: 697, column: 7, scope: !6925)
!6972 = !DILocation(line: 697, column: 14, scope: !6925)
!6973 = !DILocation(line: 698, column: 14, scope: !6925)
!6974 = !DILocation(line: 698, column: 22, scope: !6925)
!6975 = !DILocation(line: 698, column: 7, scope: !6925)
!6976 = !DILocation(line: 698, column: 11, scope: !6925)
!6977 = !DILocation(line: 701, column: 6, scope: !6978)
!6978 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 701, column: 6)
!6979 = !DILocation(line: 701, column: 9, scope: !6978)
!6980 = !DILocation(line: 701, column: 6, scope: !6925)
!6981 = !DILocation(line: 702, column: 32, scope: !6982)
!6982 = distinct !DILexicalBlock(scope: !6978, file: !3, line: 701, column: 17)
!6983 = !DILocation(line: 702, column: 35, scope: !6982)
!6984 = !DILocation(line: 702, column: 43, scope: !6982)
!6985 = !DILocation(line: 702, column: 48, scope: !6982)
!6986 = !DILocation(line: 702, column: 53, scope: !6982)
!6987 = !DILocation(line: 703, column: 11, scope: !6982)
!6988 = !DILocation(line: 702, column: 9, scope: !6982)
!6989 = !DILocation(line: 702, column: 7, scope: !6982)
!6990 = !DILocation(line: 704, column: 2, scope: !6982)
!6991 = !DILocation(line: 706, column: 45, scope: !6978)
!6992 = !DILocation(line: 706, column: 50, scope: !6978)
!6993 = !DILocation(line: 706, column: 55, scope: !6978)
!6994 = !DILocation(line: 706, column: 9, scope: !6978)
!6995 = !DILocation(line: 706, column: 7, scope: !6978)
!6996 = !DILocation(line: 709, column: 6, scope: !6997)
!6997 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 709, column: 6)
!6998 = !DILocation(line: 709, column: 10, scope: !6997)
!6999 = !DILocation(line: 709, column: 6, scope: !6925)
!7000 = !DILocation(line: 710, column: 9, scope: !7001)
!7001 = distinct !DILexicalBlock(scope: !6997, file: !3, line: 709, column: 16)
!7002 = !DILocation(line: 710, column: 3, scope: !7001)
!7003 = !DILocation(line: 711, column: 7, scope: !7001)
!7004 = !DILocation(line: 712, column: 2, scope: !7001)
!7005 = !DILocation(line: 713, column: 9, scope: !6925)
!7006 = !DILocation(line: 713, column: 2, scope: !6925)
!7007 = !DILocation(line: 714, column: 1, scope: !6925)
!7008 = distinct !DISubprogram(name: "__nonstatic_adjust_io_region", scope: !3, file: !3, line: 648, type: !7009, scopeLine: 651, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7011)
!7009 = !DISubroutineType(types: !7010)
!7010 = !{!109, !4123, !312, !312}
!7011 = !{!7012, !7013, !7014, !7015, !7016, !7017, !7018, !7022}
!7012 = !DILocalVariable(name: "s", arg: 1, scope: !7008, file: !3, line: 648, type: !4123)
!7013 = !DILocalVariable(name: "r_start", arg: 2, scope: !7008, file: !3, line: 649, type: !312)
!7014 = !DILocalVariable(name: "r_end", arg: 3, scope: !7008, file: !3, line: 650, type: !312)
!7015 = !DILocalVariable(name: "m", scope: !7008, file: !3, line: 652, type: !5168)
!7016 = !DILocalVariable(name: "s_data", scope: !7008, file: !3, line: 653, type: !5158)
!7017 = !DILocalVariable(name: "ret", scope: !7008, file: !3, line: 654, type: !109)
!7018 = !DILocalVariable(name: "start", scope: !7019, file: !3, line: 657, type: !312)
!7019 = distinct !DILexicalBlock(scope: !7020, file: !3, line: 656, column: 65)
!7020 = distinct !DILexicalBlock(scope: !7021, file: !3, line: 656, column: 2)
!7021 = distinct !DILexicalBlock(scope: !7008, file: !3, line: 656, column: 2)
!7022 = !DILocalVariable(name: "end", scope: !7019, file: !3, line: 658, type: !312)
!7023 = !DILocation(line: 648, column: 63, scope: !7008)
!7024 = !DILocation(line: 649, column: 20, scope: !7008)
!7025 = !DILocation(line: 650, column: 20, scope: !7008)
!7026 = !DILocation(line: 652, column: 2, scope: !7008)
!7027 = !DILocation(line: 652, column: 23, scope: !7008)
!7028 = !DILocation(line: 653, column: 2, scope: !7008)
!7029 = !DILocation(line: 653, column: 22, scope: !7008)
!7030 = !DILocation(line: 653, column: 31, scope: !7008)
!7031 = !DILocation(line: 653, column: 34, scope: !7008)
!7032 = !DILocation(line: 654, column: 2, scope: !7008)
!7033 = !DILocation(line: 654, column: 6, scope: !7008)
!7034 = !DILocation(line: 656, column: 11, scope: !7021)
!7035 = !DILocation(line: 656, column: 19, scope: !7021)
!7036 = !DILocation(line: 656, column: 25, scope: !7021)
!7037 = !DILocation(line: 656, column: 9, scope: !7021)
!7038 = !DILocation(line: 656, column: 7, scope: !7021)
!7039 = !DILocation(line: 656, column: 31, scope: !7020)
!7040 = !DILocation(line: 656, column: 37, scope: !7020)
!7041 = !DILocation(line: 656, column: 45, scope: !7020)
!7042 = !DILocation(line: 656, column: 33, scope: !7020)
!7043 = !DILocation(line: 656, column: 2, scope: !7021)
!7044 = !DILocation(line: 657, column: 3, scope: !7019)
!7045 = !DILocation(line: 657, column: 17, scope: !7019)
!7046 = !DILocation(line: 657, column: 25, scope: !7019)
!7047 = !DILocation(line: 657, column: 28, scope: !7019)
!7048 = !DILocation(line: 658, column: 3, scope: !7019)
!7049 = !DILocation(line: 658, column: 17, scope: !7019)
!7050 = !DILocation(line: 658, column: 23, scope: !7019)
!7051 = !DILocation(line: 658, column: 26, scope: !7019)
!7052 = !DILocation(line: 658, column: 33, scope: !7019)
!7053 = !DILocation(line: 658, column: 36, scope: !7019)
!7054 = !DILocation(line: 658, column: 31, scope: !7019)
!7055 = !DILocation(line: 658, column: 40, scope: !7019)
!7056 = !DILocation(line: 660, column: 7, scope: !7057)
!7057 = distinct !DILexicalBlock(scope: !7019, file: !3, line: 660, column: 7)
!7058 = !DILocation(line: 660, column: 15, scope: !7057)
!7059 = !DILocation(line: 660, column: 13, scope: !7057)
!7060 = !DILocation(line: 660, column: 23, scope: !7057)
!7061 = !DILocation(line: 660, column: 26, scope: !7057)
!7062 = !DILocation(line: 660, column: 34, scope: !7057)
!7063 = !DILocation(line: 660, column: 32, scope: !7057)
!7064 = !DILocation(line: 660, column: 7, scope: !7019)
!7065 = !DILocation(line: 661, column: 4, scope: !7057)
!7066 = !DILocation(line: 663, column: 7, scope: !7019)
!7067 = !DILocation(line: 664, column: 2, scope: !7020)
!7068 = !DILocation(line: 664, column: 2, scope: !7019)
!7069 = !DILocation(line: 656, column: 56, scope: !7020)
!7070 = !DILocation(line: 656, column: 59, scope: !7020)
!7071 = !DILocation(line: 656, column: 54, scope: !7020)
!7072 = !DILocation(line: 656, column: 2, scope: !7020)
!7073 = distinct !{!7073, !7043, !7074, !5277, !5278}
!7074 = !DILocation(line: 664, column: 2, scope: !7021)
!7075 = !DILocation(line: 666, column: 9, scope: !7008)
!7076 = !DILocation(line: 667, column: 1, scope: !7008)
!7077 = !DILocation(line: 666, column: 2, scope: !7008)
!7078 = !DISubprogram(name: "adjust_resource", scope: !4156, file: !4156, line: 216, type: !7079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7079 = !DISubroutineType(types: !7080)
!7080 = !{!109, !4154, !4159, !4159}
!7081 = distinct !DISubprogram(name: "resource_size", scope: !4156, file: !4156, line: 219, type: !7082, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7086)
!7082 = !DISubroutineType(types: !7083)
!7083 = !{!4159, !7084}
!7084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7085, size: 64)
!7085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4155)
!7086 = !{!7087}
!7087 = !DILocalVariable(name: "res", arg: 1, scope: !7081, file: !4156, line: 219, type: !7084)
!7088 = !DILocation(line: 219, column: 68, scope: !7081)
!7089 = !DILocation(line: 221, column: 9, scope: !7081)
!7090 = !DILocation(line: 221, column: 14, scope: !7081)
!7091 = !DILocation(line: 221, column: 20, scope: !7081)
!7092 = !DILocation(line: 221, column: 25, scope: !7081)
!7093 = !DILocation(line: 221, column: 18, scope: !7081)
!7094 = !DILocation(line: 221, column: 31, scope: !7081)
!7095 = !DILocation(line: 221, column: 2, scope: !7081)
!7096 = distinct !DISubprogram(name: "dev_name", scope: !94, file: !94, line: 858, type: !7097, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7099)
!7097 = !DISubroutineType(types: !7098)
!7098 = !{!181, !4271}
!7099 = !{!7100}
!7100 = !DILocalVariable(name: "dev", arg: 1, scope: !7096, file: !94, line: 858, type: !4271)
!7101 = !DILocation(line: 858, column: 57, scope: !7096)
!7102 = !DILocation(line: 861, column: 6, scope: !7103)
!7103 = distinct !DILexicalBlock(scope: !7096, file: !94, line: 861, column: 6)
!7104 = !DILocation(line: 861, column: 11, scope: !7103)
!7105 = !DILocation(line: 861, column: 6, scope: !7096)
!7106 = !DILocation(line: 862, column: 10, scope: !7103)
!7107 = !DILocation(line: 862, column: 15, scope: !7103)
!7108 = !DILocation(line: 862, column: 3, scope: !7103)
!7109 = !DILocation(line: 864, column: 23, scope: !7096)
!7110 = !DILocation(line: 864, column: 28, scope: !7096)
!7111 = !DILocation(line: 864, column: 9, scope: !7096)
!7112 = !DILocation(line: 864, column: 2, scope: !7096)
!7113 = !DILocation(line: 865, column: 1, scope: !7096)
!7114 = !DISubprogram(name: "pci_bus_alloc_resource", scope: !4193, file: !4193, line: 1523, type: !7115, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7115 = !DISubroutineType(types: !7116)
!7116 = !{!109, !4197, !4154, !4159, !4159, !4159, !312, !7117, !334}
!7117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7118, size: 64)
!7118 = !DISubroutineType(types: !7119)
!7119 = !{!4159, !334, !7084, !4159, !4159}
!7120 = distinct !DISubprogram(name: "pcmcia_align", scope: !3, file: !3, line: 603, type: !7118, scopeLine: 605, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7121)
!7121 = !{!7122, !7123, !7124, !7125, !7126, !7128, !7129, !7130, !7134}
!7122 = !DILocalVariable(name: "align_data", arg: 1, scope: !7120, file: !3, line: 603, type: !334)
!7123 = !DILocalVariable(name: "res", arg: 2, scope: !7120, file: !3, line: 603, type: !7084)
!7124 = !DILocalVariable(name: "size", arg: 3, scope: !7120, file: !3, line: 604, type: !4159)
!7125 = !DILocalVariable(name: "align", arg: 4, scope: !7120, file: !3, line: 604, type: !4159)
!7126 = !DILocalVariable(name: "data", scope: !7120, file: !3, line: 606, type: !7127)
!7127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5496, size: 64)
!7128 = !DILocalVariable(name: "m", scope: !7120, file: !3, line: 607, type: !5168)
!7129 = !DILocalVariable(name: "start", scope: !7120, file: !3, line: 608, type: !4159)
!7130 = !DILocalVariable(name: "map_start", scope: !7131, file: !3, line: 613, type: !312)
!7131 = distinct !DILexicalBlock(scope: !7132, file: !3, line: 612, column: 57)
!7132 = distinct !DILexicalBlock(scope: !7133, file: !3, line: 612, column: 2)
!7133 = distinct !DILexicalBlock(scope: !7120, file: !3, line: 612, column: 2)
!7134 = !DILocalVariable(name: "map_end", scope: !7131, file: !3, line: 614, type: !312)
!7135 = !DILocation(line: 603, column: 20, scope: !7120)
!7136 = !DILocation(line: 603, column: 55, scope: !7120)
!7137 = !DILocation(line: 604, column: 18, scope: !7120)
!7138 = !DILocation(line: 604, column: 40, scope: !7120)
!7139 = !DILocation(line: 606, column: 2, scope: !7120)
!7140 = !DILocation(line: 606, column: 28, scope: !7120)
!7141 = !DILocation(line: 606, column: 35, scope: !7120)
!7142 = !DILocation(line: 607, column: 2, scope: !7120)
!7143 = !DILocation(line: 607, column: 23, scope: !7120)
!7144 = !DILocation(line: 608, column: 2, scope: !7120)
!7145 = !DILocation(line: 608, column: 18, scope: !7120)
!7146 = !DILocation(line: 610, column: 30, scope: !7120)
!7147 = !DILocation(line: 610, column: 36, scope: !7120)
!7148 = !DILocation(line: 610, column: 41, scope: !7120)
!7149 = !DILocation(line: 610, column: 10, scope: !7120)
!7150 = !DILocation(line: 610, column: 8, scope: !7120)
!7151 = !DILocation(line: 612, column: 11, scope: !7133)
!7152 = !DILocation(line: 612, column: 17, scope: !7133)
!7153 = !DILocation(line: 612, column: 22, scope: !7133)
!7154 = !DILocation(line: 612, column: 9, scope: !7133)
!7155 = !DILocation(line: 612, column: 7, scope: !7133)
!7156 = !DILocation(line: 612, column: 28, scope: !7132)
!7157 = !DILocation(line: 612, column: 33, scope: !7132)
!7158 = !DILocation(line: 612, column: 39, scope: !7132)
!7159 = !DILocation(line: 612, column: 30, scope: !7132)
!7160 = !DILocation(line: 612, column: 2, scope: !7133)
!7161 = !DILocation(line: 613, column: 3, scope: !7131)
!7162 = !DILocation(line: 613, column: 17, scope: !7131)
!7163 = !DILocation(line: 613, column: 29, scope: !7131)
!7164 = !DILocation(line: 613, column: 32, scope: !7131)
!7165 = !DILocation(line: 614, column: 3, scope: !7131)
!7166 = !DILocation(line: 614, column: 17, scope: !7131)
!7167 = !DILocation(line: 614, column: 27, scope: !7131)
!7168 = !DILocation(line: 614, column: 30, scope: !7131)
!7169 = !DILocation(line: 614, column: 37, scope: !7131)
!7170 = !DILocation(line: 614, column: 40, scope: !7131)
!7171 = !DILocation(line: 614, column: 35, scope: !7131)
!7172 = !DILocation(line: 614, column: 44, scope: !7131)
!7173 = !DILocation(line: 621, column: 7, scope: !7174)
!7174 = distinct !DILexicalBlock(scope: !7131, file: !3, line: 621, column: 7)
!7175 = !DILocation(line: 621, column: 15, scope: !7174)
!7176 = !DILocation(line: 621, column: 13, scope: !7174)
!7177 = !DILocation(line: 621, column: 7, scope: !7131)
!7178 = !DILocation(line: 622, column: 32, scope: !7174)
!7179 = !DILocation(line: 622, column: 38, scope: !7174)
!7180 = !DILocation(line: 622, column: 12, scope: !7174)
!7181 = !DILocation(line: 622, column: 10, scope: !7174)
!7182 = !DILocation(line: 622, column: 4, scope: !7174)
!7183 = !DILocation(line: 628, column: 7, scope: !7184)
!7184 = distinct !DILexicalBlock(scope: !7131, file: !3, line: 628, column: 7)
!7185 = !DILocation(line: 628, column: 16, scope: !7184)
!7186 = !DILocation(line: 628, column: 21, scope: !7184)
!7187 = !DILocation(line: 628, column: 13, scope: !7184)
!7188 = !DILocation(line: 628, column: 7, scope: !7131)
!7189 = !DILocation(line: 629, column: 4, scope: !7184)
!7190 = !DILocation(line: 631, column: 8, scope: !7191)
!7191 = distinct !DILexicalBlock(scope: !7131, file: !3, line: 631, column: 7)
!7192 = !DILocation(line: 631, column: 16, scope: !7191)
!7193 = !DILocation(line: 631, column: 14, scope: !7191)
!7194 = !DILocation(line: 631, column: 21, scope: !7191)
!7195 = !DILocation(line: 631, column: 29, scope: !7191)
!7196 = !DILocation(line: 631, column: 26, scope: !7191)
!7197 = !DILocation(line: 631, column: 7, scope: !7131)
!7198 = !DILocation(line: 632, column: 4, scope: !7191)
!7199 = !DILocation(line: 633, column: 2, scope: !7132)
!7200 = !DILocation(line: 633, column: 2, scope: !7131)
!7201 = !DILocation(line: 612, column: 48, scope: !7132)
!7202 = !DILocation(line: 612, column: 51, scope: !7132)
!7203 = !DILocation(line: 612, column: 46, scope: !7132)
!7204 = !DILocation(line: 612, column: 2, scope: !7132)
!7205 = distinct !{!7205, !7160, !7206, !5277, !5278}
!7206 = !DILocation(line: 633, column: 2, scope: !7133)
!7207 = !DILocation(line: 638, column: 6, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7120, file: !3, line: 638, column: 6)
!7209 = !DILocation(line: 638, column: 11, scope: !7208)
!7210 = !DILocation(line: 638, column: 17, scope: !7208)
!7211 = !DILocation(line: 638, column: 8, scope: !7208)
!7212 = !DILocation(line: 638, column: 6, scope: !7120)
!7213 = !DILocation(line: 639, column: 11, scope: !7208)
!7214 = !DILocation(line: 639, column: 16, scope: !7208)
!7215 = !DILocation(line: 639, column: 9, scope: !7208)
!7216 = !DILocation(line: 639, column: 3, scope: !7208)
!7217 = !DILocation(line: 641, column: 9, scope: !7120)
!7218 = !DILocation(line: 642, column: 1, scope: !7120)
!7219 = !DILocation(line: 641, column: 2, scope: !7120)
!7220 = !DISubprogram(name: "allocate_resource", scope: !4156, file: !4156, line: 207, type: !7221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7221 = !DISubroutineType(types: !7222)
!7222 = !{!109, !4154, !4154, !4159, !4159, !4159, !4159, !7117, !334}
!7223 = distinct !DISubprogram(name: "kobject_name", scope: !178, file: !178, line: 87, type: !250, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7224)
!7224 = !{!7225}
!7225 = !DILocalVariable(name: "kobj", arg: 1, scope: !7223, file: !178, line: 87, type: !245)
!7226 = !DILocation(line: 87, column: 62, scope: !7223)
!7227 = !DILocation(line: 89, column: 9, scope: !7223)
!7228 = !DILocation(line: 89, column: 15, scope: !7223)
!7229 = !DILocation(line: 89, column: 2, scope: !7223)
!7230 = distinct !DISubprogram(name: "pcmcia_common_align", scope: !3, file: !3, line: 589, type: !7231, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7233)
!7231 = !DISubroutineType(types: !7232)
!7232 = !{!4159, !7127, !4159}
!7233 = !{!7234, !7235, !7236}
!7234 = !DILocalVariable(name: "align_data", arg: 1, scope: !7230, file: !3, line: 589, type: !7127)
!7235 = !DILocalVariable(name: "start", arg: 2, scope: !7230, file: !3, line: 590, type: !4159)
!7236 = !DILocalVariable(name: "ret", scope: !7230, file: !3, line: 592, type: !4159)
!7237 = !DILocation(line: 589, column: 70, scope: !7230)
!7238 = !DILocation(line: 590, column: 22, scope: !7230)
!7239 = !DILocation(line: 592, column: 2, scope: !7230)
!7240 = !DILocation(line: 592, column: 18, scope: !7230)
!7241 = !DILocation(line: 596, column: 9, scope: !7230)
!7242 = !DILocation(line: 596, column: 18, scope: !7230)
!7243 = !DILocation(line: 596, column: 30, scope: !7230)
!7244 = !DILocation(line: 596, column: 17, scope: !7230)
!7245 = !DILocation(line: 596, column: 15, scope: !7230)
!7246 = !DILocation(line: 596, column: 38, scope: !7230)
!7247 = !DILocation(line: 596, column: 50, scope: !7230)
!7248 = !DILocation(line: 596, column: 36, scope: !7230)
!7249 = !DILocation(line: 596, column: 6, scope: !7230)
!7250 = !DILocation(line: 597, column: 6, scope: !7251)
!7251 = distinct !DILexicalBlock(scope: !7230, file: !3, line: 597, column: 6)
!7252 = !DILocation(line: 597, column: 12, scope: !7251)
!7253 = !DILocation(line: 597, column: 10, scope: !7251)
!7254 = !DILocation(line: 597, column: 6, scope: !7230)
!7255 = !DILocation(line: 598, column: 10, scope: !7251)
!7256 = !DILocation(line: 598, column: 22, scope: !7251)
!7257 = !DILocation(line: 598, column: 27, scope: !7251)
!7258 = !DILocation(line: 598, column: 7, scope: !7251)
!7259 = !DILocation(line: 598, column: 3, scope: !7251)
!7260 = !DILocation(line: 599, column: 9, scope: !7230)
!7261 = !DILocation(line: 600, column: 1, scope: !7230)
!7262 = !DILocation(line: 599, column: 2, scope: !7230)
!7263 = distinct !DISubprogram(name: "kzalloc", scope: !147, file: !147, line: 719, type: !6682, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7264)
!7264 = !{!7265, !7266}
!7265 = !DILocalVariable(name: "size", arg: 1, scope: !7263, file: !147, line: 719, type: !309)
!7266 = !DILocalVariable(name: "flags", arg: 2, scope: !7263, file: !147, line: 719, type: !708)
!7267 = !DILocation(line: 719, column: 52, scope: !7263)
!7268 = !DILocation(line: 719, column: 64, scope: !7263)
!7269 = !DILocation(line: 721, column: 17, scope: !7263)
!7270 = !DILocation(line: 721, column: 23, scope: !7263)
!7271 = !DILocation(line: 721, column: 29, scope: !7263)
!7272 = !DILocation(line: 721, column: 9, scope: !7263)
!7273 = !DILocation(line: 721, column: 2, scope: !7263)
!7274 = distinct !DISubprogram(name: "nonstatic_autoadd_resources", scope: !3, file: !3, line: 934, type: !4121, scopeLine: 935, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7275)
!7275 = !{!7276, !7277, !7278, !7279}
!7276 = !DILocalVariable(name: "s", arg: 1, scope: !7274, file: !3, line: 934, type: !4123)
!7277 = !DILocalVariable(name: "res", scope: !7274, file: !3, line: 936, type: !4154)
!7278 = !DILocalVariable(name: "i", scope: !7274, file: !3, line: 937, type: !109)
!7279 = !DILocalVariable(name: "done", scope: !7274, file: !3, line: 937, type: !109)
!7280 = !DILocation(line: 934, column: 62, scope: !7274)
!7281 = !DILocation(line: 936, column: 2, scope: !7274)
!7282 = !DILocation(line: 936, column: 19, scope: !7274)
!7283 = !DILocation(line: 937, column: 2, scope: !7274)
!7284 = !DILocation(line: 937, column: 6, scope: !7274)
!7285 = !DILocation(line: 937, column: 9, scope: !7274)
!7286 = !DILocation(line: 939, column: 7, scope: !7287)
!7287 = distinct !DILexicalBlock(scope: !7274, file: !3, line: 939, column: 6)
!7288 = !DILocation(line: 939, column: 10, scope: !7287)
!7289 = !DILocation(line: 939, column: 17, scope: !7287)
!7290 = !DILocation(line: 939, column: 21, scope: !7287)
!7291 = !DILocation(line: 939, column: 24, scope: !7287)
!7292 = !DILocation(line: 939, column: 32, scope: !7287)
!7293 = !DILocation(line: 939, column: 6, scope: !7274)
!7294 = !DILocation(line: 940, column: 3, scope: !7287)
!7295 = !DILocation(line: 961, column: 6, scope: !7296)
!7296 = distinct !DILexicalBlock(scope: !7274, file: !3, line: 961, column: 6)
!7297 = !DILocation(line: 961, column: 9, scope: !7296)
!7298 = !DILocation(line: 961, column: 17, scope: !7296)
!7299 = !DILocation(line: 961, column: 22, scope: !7296)
!7300 = !DILocation(line: 961, column: 29, scope: !7296)
!7301 = !DILocation(line: 961, column: 6, scope: !7274)
!7302 = !DILocation(line: 962, column: 3, scope: !7296)
!7303 = !DILocation(line: 964, column: 9, scope: !7304)
!7304 = distinct !DILexicalBlock(scope: !7274, file: !3, line: 964, column: 2)
!7305 = !DILocation(line: 964, column: 7, scope: !7304)
!7306 = !DILocation(line: 964, column: 14, scope: !7307)
!7307 = distinct !DILexicalBlock(scope: !7304, file: !3, line: 964, column: 2)
!7308 = !DILocation(line: 964, column: 16, scope: !7307)
!7309 = !DILocation(line: 964, column: 2, scope: !7304)
!7310 = !DILocation(line: 965, column: 9, scope: !7311)
!7311 = distinct !DILexicalBlock(scope: !7307, file: !3, line: 964, column: 48)
!7312 = !DILocation(line: 965, column: 12, scope: !7311)
!7313 = !DILocation(line: 965, column: 20, scope: !7311)
!7314 = !DILocation(line: 965, column: 25, scope: !7311)
!7315 = !DILocation(line: 965, column: 34, scope: !7311)
!7316 = !DILocation(line: 965, column: 7, scope: !7311)
!7317 = !DILocation(line: 969, column: 8, scope: !7318)
!7318 = distinct !DILexicalBlock(scope: !7311, file: !3, line: 969, column: 7)
!7319 = !DILocation(line: 969, column: 7, scope: !7311)
!7320 = !DILocation(line: 970, column: 4, scope: !7318)
!7321 = !DILocation(line: 972, column: 7, scope: !7322)
!7322 = distinct !DILexicalBlock(scope: !7311, file: !3, line: 972, column: 7)
!7323 = !DILocation(line: 972, column: 12, scope: !7322)
!7324 = !DILocation(line: 972, column: 18, scope: !7322)
!7325 = !DILocation(line: 972, column: 7, scope: !7311)
!7326 = !DILocation(line: 976, column: 8, scope: !7327)
!7327 = distinct !DILexicalBlock(scope: !7328, file: !3, line: 976, column: 8)
!7328 = distinct !DILexicalBlock(scope: !7322, file: !3, line: 972, column: 35)
!7329 = !DILocation(line: 976, column: 12, scope: !7327)
!7330 = !DILocation(line: 976, column: 8, scope: !7328)
!7331 = !DILocation(line: 977, column: 5, scope: !7327)
!7332 = !DILocation(line: 979, column: 4, scope: !7333)
!7333 = distinct !DILexicalBlock(scope: !7328, file: !3, line: 979, column: 4)
!7334 = !DILocation(line: 979, column: 4, scope: !7335)
!7335 = distinct !DILexicalBlock(scope: !7333, file: !3, line: 979, column: 4)
!7336 = !DILocation(line: 982, column: 19, scope: !7337)
!7337 = distinct !DILexicalBlock(scope: !7328, file: !3, line: 982, column: 8)
!7338 = !DILocation(line: 982, column: 44, scope: !7337)
!7339 = !DILocation(line: 982, column: 49, scope: !7337)
!7340 = !DILocation(line: 982, column: 56, scope: !7337)
!7341 = !DILocation(line: 982, column: 61, scope: !7337)
!7342 = !DILocation(line: 982, column: 9, scope: !7337)
!7343 = !DILocation(line: 982, column: 8, scope: !7328)
!7344 = !DILocation(line: 983, column: 10, scope: !7337)
!7345 = !DILocation(line: 983, column: 5, scope: !7337)
!7346 = !DILocation(line: 985, column: 3, scope: !7328)
!7347 = !DILocation(line: 987, column: 7, scope: !7348)
!7348 = distinct !DILexicalBlock(scope: !7311, file: !3, line: 987, column: 7)
!7349 = !DILocation(line: 987, column: 12, scope: !7348)
!7350 = !DILocation(line: 987, column: 18, scope: !7348)
!7351 = !DILocation(line: 987, column: 7, scope: !7311)
!7352 = !DILocation(line: 991, column: 8, scope: !7353)
!7353 = distinct !DILexicalBlock(scope: !7354, file: !3, line: 991, column: 8)
!7354 = distinct !DILexicalBlock(scope: !7348, file: !3, line: 987, column: 36)
!7355 = !DILocation(line: 991, column: 12, scope: !7353)
!7356 = !DILocation(line: 991, column: 8, scope: !7354)
!7357 = !DILocation(line: 992, column: 5, scope: !7353)
!7358 = !DILocation(line: 994, column: 4, scope: !7359)
!7359 = distinct !DILexicalBlock(scope: !7354, file: !3, line: 994, column: 4)
!7360 = !DILocation(line: 994, column: 4, scope: !7361)
!7361 = distinct !DILexicalBlock(scope: !7359, file: !3, line: 994, column: 4)
!7362 = !DILocation(line: 997, column: 23, scope: !7363)
!7363 = distinct !DILexicalBlock(scope: !7354, file: !3, line: 997, column: 8)
!7364 = !DILocation(line: 997, column: 48, scope: !7363)
!7365 = !DILocation(line: 997, column: 53, scope: !7363)
!7366 = !DILocation(line: 997, column: 60, scope: !7363)
!7367 = !DILocation(line: 997, column: 65, scope: !7363)
!7368 = !DILocation(line: 997, column: 9, scope: !7363)
!7369 = !DILocation(line: 997, column: 8, scope: !7354)
!7370 = !DILocation(line: 998, column: 10, scope: !7363)
!7371 = !DILocation(line: 998, column: 5, scope: !7363)
!7372 = !DILocation(line: 999, column: 3, scope: !7354)
!7373 = !DILocation(line: 1000, column: 2, scope: !7311)
!7374 = !DILocation(line: 964, column: 44, scope: !7307)
!7375 = !DILocation(line: 964, column: 2, scope: !7307)
!7376 = distinct !{!7376, !7309, !7377, !5277, !5278}
!7377 = !DILocation(line: 1000, column: 2, scope: !7304)
!7378 = !DILocation(line: 1004, column: 6, scope: !7379)
!7379 = distinct !DILexicalBlock(scope: !7274, file: !3, line: 1004, column: 6)
!7380 = !DILocation(line: 1004, column: 11, scope: !7379)
!7381 = !DILocation(line: 1004, column: 6, scope: !7274)
!7382 = !DILocation(line: 1005, column: 3, scope: !7379)
!7383 = !DILocation(line: 1005, column: 6, scope: !7379)
!7384 = !DILocation(line: 1005, column: 26, scope: !7379)
!7385 = !DILocation(line: 1007, column: 2, scope: !7274)
!7386 = !DILocation(line: 1008, column: 1, scope: !7274)
!7387 = distinct !DISubprogram(name: "adjust_io", scope: !3, file: !3, line: 889, type: !7388, scopeLine: 890, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7390)
!7388 = !DISubroutineType(types: !7389)
!7389 = !{!109, !4123, !7, !312, !312}
!7390 = !{!7391, !7392, !7393, !7394, !7395, !7396, !7397}
!7391 = !DILocalVariable(name: "s", arg: 1, scope: !7387, file: !3, line: 889, type: !4123)
!7392 = !DILocalVariable(name: "action", arg: 2, scope: !7387, file: !3, line: 889, type: !7)
!7393 = !DILocalVariable(name: "start", arg: 3, scope: !7387, file: !3, line: 889, type: !312)
!7394 = !DILocalVariable(name: "end", arg: 4, scope: !7387, file: !3, line: 889, type: !312)
!7395 = !DILocalVariable(name: "data", scope: !7387, file: !3, line: 891, type: !5158)
!7396 = !DILocalVariable(name: "size", scope: !7387, file: !3, line: 892, type: !312)
!7397 = !DILocalVariable(name: "ret", scope: !7387, file: !3, line: 893, type: !109)
!7398 = !DILocation(line: 889, column: 44, scope: !7387)
!7399 = !DILocation(line: 889, column: 60, scope: !7387)
!7400 = !DILocation(line: 889, column: 82, scope: !7387)
!7401 = !DILocation(line: 889, column: 103, scope: !7387)
!7402 = !DILocation(line: 891, column: 2, scope: !7387)
!7403 = !DILocation(line: 891, column: 22, scope: !7387)
!7404 = !DILocation(line: 891, column: 29, scope: !7387)
!7405 = !DILocation(line: 891, column: 32, scope: !7387)
!7406 = !DILocation(line: 892, column: 2, scope: !7387)
!7407 = !DILocation(line: 892, column: 16, scope: !7387)
!7408 = !DILocation(line: 893, column: 2, scope: !7387)
!7409 = !DILocation(line: 893, column: 6, scope: !7387)
!7410 = !DILocation(line: 898, column: 6, scope: !7411)
!7411 = distinct !DILexicalBlock(scope: !7387, file: !3, line: 898, column: 6)
!7412 = !DILocation(line: 898, column: 12, scope: !7411)
!7413 = !DILocation(line: 898, column: 6, scope: !7387)
!7414 = !DILocation(line: 899, column: 9, scope: !7411)
!7415 = !DILocation(line: 899, column: 3, scope: !7411)
!7416 = !DILocation(line: 902, column: 9, scope: !7387)
!7417 = !DILocation(line: 902, column: 15, scope: !7387)
!7418 = !DILocation(line: 902, column: 13, scope: !7387)
!7419 = !DILocation(line: 902, column: 21, scope: !7387)
!7420 = !DILocation(line: 902, column: 7, scope: !7387)
!7421 = !DILocation(line: 904, column: 6, scope: !7422)
!7422 = distinct !DILexicalBlock(scope: !7387, file: !3, line: 904, column: 6)
!7423 = !DILocation(line: 904, column: 12, scope: !7422)
!7424 = !DILocation(line: 904, column: 10, scope: !7422)
!7425 = !DILocation(line: 904, column: 6, scope: !7387)
!7426 = !DILocation(line: 905, column: 3, scope: !7422)
!7427 = !DILocation(line: 907, column: 6, scope: !7428)
!7428 = distinct !DILexicalBlock(scope: !7387, file: !3, line: 907, column: 6)
!7429 = !DILocation(line: 907, column: 10, scope: !7428)
!7430 = !DILocation(line: 907, column: 6, scope: !7387)
!7431 = !DILocation(line: 908, column: 3, scope: !7428)
!7432 = !DILocation(line: 910, column: 10, scope: !7387)
!7433 = !DILocation(line: 910, column: 2, scope: !7387)
!7434 = !DILocation(line: 912, column: 21, scope: !7435)
!7435 = distinct !DILexicalBlock(scope: !7436, file: !3, line: 912, column: 7)
!7436 = distinct !DILexicalBlock(scope: !7387, file: !3, line: 910, column: 18)
!7437 = !DILocation(line: 912, column: 27, scope: !7435)
!7438 = !DILocation(line: 912, column: 34, scope: !7435)
!7439 = !DILocation(line: 912, column: 41, scope: !7435)
!7440 = !DILocation(line: 912, column: 7, scope: !7435)
!7441 = !DILocation(line: 912, column: 47, scope: !7435)
!7442 = !DILocation(line: 912, column: 7, scope: !7436)
!7443 = !DILocation(line: 913, column: 8, scope: !7444)
!7444 = distinct !DILexicalBlock(scope: !7435, file: !3, line: 912, column: 53)
!7445 = !DILocation(line: 914, column: 4, scope: !7444)
!7446 = !DILocation(line: 920, column: 3, scope: !7436)
!7447 = !DILocation(line: 922, column: 17, scope: !7436)
!7448 = !DILocation(line: 922, column: 23, scope: !7436)
!7449 = !DILocation(line: 922, column: 30, scope: !7436)
!7450 = !DILocation(line: 922, column: 37, scope: !7436)
!7451 = !DILocation(line: 922, column: 3, scope: !7436)
!7452 = !DILocation(line: 923, column: 3, scope: !7436)
!7453 = !DILocation(line: 925, column: 7, scope: !7436)
!7454 = !DILocation(line: 926, column: 3, scope: !7436)
!7455 = !DILocation(line: 929, column: 9, scope: !7387)
!7456 = !DILocation(line: 929, column: 2, scope: !7387)
!7457 = !DILocation(line: 930, column: 1, scope: !7387)
!7458 = distinct !DISubprogram(name: "adjust_memory", scope: !3, file: !3, line: 863, type: !7388, scopeLine: 864, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7459)
!7459 = !{!7460, !7461, !7462, !7463, !7464, !7465, !7466}
!7460 = !DILocalVariable(name: "s", arg: 1, scope: !7458, file: !3, line: 863, type: !4123)
!7461 = !DILocalVariable(name: "action", arg: 2, scope: !7458, file: !3, line: 863, type: !7)
!7462 = !DILocalVariable(name: "start", arg: 3, scope: !7458, file: !3, line: 863, type: !312)
!7463 = !DILocalVariable(name: "end", arg: 4, scope: !7458, file: !3, line: 863, type: !312)
!7464 = !DILocalVariable(name: "data", scope: !7458, file: !3, line: 865, type: !5158)
!7465 = !DILocalVariable(name: "size", scope: !7458, file: !3, line: 866, type: !312)
!7466 = !DILocalVariable(name: "ret", scope: !7458, file: !3, line: 867, type: !109)
!7467 = !DILocation(line: 863, column: 48, scope: !7458)
!7468 = !DILocation(line: 863, column: 64, scope: !7458)
!7469 = !DILocation(line: 863, column: 86, scope: !7458)
!7470 = !DILocation(line: 863, column: 107, scope: !7458)
!7471 = !DILocation(line: 865, column: 2, scope: !7458)
!7472 = !DILocation(line: 865, column: 22, scope: !7458)
!7473 = !DILocation(line: 865, column: 29, scope: !7458)
!7474 = !DILocation(line: 865, column: 32, scope: !7458)
!7475 = !DILocation(line: 866, column: 2, scope: !7458)
!7476 = !DILocation(line: 866, column: 16, scope: !7458)
!7477 = !DILocation(line: 866, column: 23, scope: !7458)
!7478 = !DILocation(line: 866, column: 29, scope: !7458)
!7479 = !DILocation(line: 866, column: 27, scope: !7458)
!7480 = !DILocation(line: 866, column: 35, scope: !7458)
!7481 = !DILocation(line: 867, column: 2, scope: !7458)
!7482 = !DILocation(line: 867, column: 6, scope: !7458)
!7483 = !DILocation(line: 869, column: 6, scope: !7484)
!7484 = distinct !DILexicalBlock(scope: !7458, file: !3, line: 869, column: 6)
!7485 = !DILocation(line: 869, column: 12, scope: !7484)
!7486 = !DILocation(line: 869, column: 10, scope: !7484)
!7487 = !DILocation(line: 869, column: 6, scope: !7458)
!7488 = !DILocation(line: 870, column: 3, scope: !7484)
!7489 = !DILocation(line: 872, column: 10, scope: !7458)
!7490 = !DILocation(line: 872, column: 2, scope: !7458)
!7491 = !DILocation(line: 874, column: 23, scope: !7492)
!7492 = distinct !DILexicalBlock(scope: !7458, file: !3, line: 872, column: 18)
!7493 = !DILocation(line: 874, column: 29, scope: !7492)
!7494 = !DILocation(line: 874, column: 37, scope: !7492)
!7495 = !DILocation(line: 874, column: 44, scope: !7492)
!7496 = !DILocation(line: 874, column: 9, scope: !7492)
!7497 = !DILocation(line: 874, column: 7, scope: !7492)
!7498 = !DILocation(line: 875, column: 8, scope: !7499)
!7499 = distinct !DILexicalBlock(scope: !7492, file: !3, line: 875, column: 7)
!7500 = !DILocation(line: 875, column: 7, scope: !7492)
!7501 = !DILocation(line: 876, column: 17, scope: !7499)
!7502 = !DILocation(line: 876, column: 20, scope: !7499)
!7503 = !DILocation(line: 876, column: 27, scope: !7499)
!7504 = !DILocation(line: 876, column: 4, scope: !7499)
!7505 = !DILocation(line: 877, column: 3, scope: !7492)
!7506 = !DILocation(line: 879, column: 23, scope: !7492)
!7507 = !DILocation(line: 879, column: 29, scope: !7492)
!7508 = !DILocation(line: 879, column: 37, scope: !7492)
!7509 = !DILocation(line: 879, column: 44, scope: !7492)
!7510 = !DILocation(line: 879, column: 9, scope: !7492)
!7511 = !DILocation(line: 879, column: 7, scope: !7492)
!7512 = !DILocation(line: 880, column: 3, scope: !7492)
!7513 = !DILocation(line: 882, column: 7, scope: !7492)
!7514 = !DILocation(line: 883, column: 2, scope: !7492)
!7515 = !DILocation(line: 885, column: 9, scope: !7458)
!7516 = !DILocation(line: 885, column: 2, scope: !7458)
!7517 = !DILocation(line: 886, column: 1, scope: !7458)
!7518 = distinct !DISubprogram(name: "pccard_sysfs_add_rsrc", scope: !3, file: !3, line: 1205, type: !4289, scopeLine: 1206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7519)
!7519 = !{!7520, !7521}
!7520 = !DILocalVariable(name: "dev", arg: 1, scope: !7518, file: !3, line: 1205, type: !4251)
!7521 = !DILocalVariable(name: "s", scope: !7518, file: !3, line: 1207, type: !4123)
!7522 = !DILocation(line: 1205, column: 49, scope: !7518)
!7523 = !DILocation(line: 1207, column: 2, scope: !7518)
!7524 = !DILocation(line: 1207, column: 24, scope: !7518)
!7525 = !DILocation(line: 1207, column: 44, scope: !7518)
!7526 = !DILocation(line: 1207, column: 28, scope: !7518)
!7527 = !DILocation(line: 1209, column: 6, scope: !7528)
!7528 = distinct !DILexicalBlock(scope: !7518, file: !3, line: 1209, column: 6)
!7529 = !DILocation(line: 1209, column: 9, scope: !7528)
!7530 = !DILocation(line: 1209, column: 22, scope: !7528)
!7531 = !DILocation(line: 1209, column: 6, scope: !7518)
!7532 = !DILocation(line: 1210, column: 3, scope: !7528)
!7533 = !DILocation(line: 1211, column: 29, scope: !7518)
!7534 = !DILocation(line: 1211, column: 34, scope: !7518)
!7535 = !DILocation(line: 1211, column: 9, scope: !7518)
!7536 = !DILocation(line: 1211, column: 2, scope: !7518)
!7537 = !DILocation(line: 1212, column: 1, scope: !7518)
!7538 = distinct !DISubprogram(name: "pccard_sysfs_remove_rsrc", scope: !3, file: !3, line: 1214, type: !4280, scopeLine: 1215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7539)
!7539 = !{!7540, !7541}
!7540 = !DILocalVariable(name: "dev", arg: 1, scope: !7538, file: !3, line: 1214, type: !4251)
!7541 = !DILocalVariable(name: "s", scope: !7538, file: !3, line: 1216, type: !4123)
!7542 = !DILocation(line: 1214, column: 53, scope: !7538)
!7543 = !DILocation(line: 1216, column: 2, scope: !7538)
!7544 = !DILocation(line: 1216, column: 24, scope: !7538)
!7545 = !DILocation(line: 1216, column: 44, scope: !7538)
!7546 = !DILocation(line: 1216, column: 28, scope: !7538)
!7547 = !DILocation(line: 1218, column: 6, scope: !7548)
!7548 = distinct !DILexicalBlock(scope: !7538, file: !3, line: 1218, column: 6)
!7549 = !DILocation(line: 1218, column: 9, scope: !7548)
!7550 = !DILocation(line: 1218, column: 22, scope: !7548)
!7551 = !DILocation(line: 1218, column: 6, scope: !7538)
!7552 = !DILocation(line: 1219, column: 3, scope: !7548)
!7553 = !DILocation(line: 1220, column: 22, scope: !7538)
!7554 = !DILocation(line: 1220, column: 27, scope: !7538)
!7555 = !DILocation(line: 1220, column: 2, scope: !7538)
!7556 = !DILocation(line: 1221, column: 1, scope: !7538)
!7557 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !94, file: !94, line: 916, type: !7558, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7560)
!7558 = !DISubroutineType(types: !7559)
!7559 = !{!334, !4271}
!7560 = !{!7561}
!7561 = !DILocalVariable(name: "dev", arg: 1, scope: !7557, file: !94, line: 916, type: !4271)
!7562 = !DILocation(line: 916, column: 58, scope: !7557)
!7563 = !DILocation(line: 918, column: 9, scope: !7557)
!7564 = !DILocation(line: 918, column: 14, scope: !7557)
!7565 = !DILocation(line: 918, column: 2, scope: !7557)
!7566 = !DISubprogram(name: "sysfs_create_group", scope: !288, file: !288, line: 307, type: !7567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7567 = !DISubroutineType(types: !7568)
!7568 = !{!109, !185, !315}
!7569 = distinct !DISubprogram(name: "show_io_db", scope: !3, file: !3, line: 1073, type: !5114, scopeLine: 1075, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7570)
!7570 = !{!7571, !7572, !7573, !7574, !7575, !7576, !7577}
!7571 = !DILocalVariable(name: "dev", arg: 1, scope: !7569, file: !3, line: 1073, type: !4251)
!7572 = !DILocalVariable(name: "attr", arg: 2, scope: !7569, file: !3, line: 1074, type: !5116)
!7573 = !DILocalVariable(name: "buf", arg: 3, scope: !7569, file: !3, line: 1074, type: !262)
!7574 = !DILocalVariable(name: "s", scope: !7569, file: !3, line: 1076, type: !4123)
!7575 = !DILocalVariable(name: "data", scope: !7569, file: !3, line: 1077, type: !5158)
!7576 = !DILocalVariable(name: "p", scope: !7569, file: !3, line: 1078, type: !5168)
!7577 = !DILocalVariable(name: "ret", scope: !7569, file: !3, line: 1079, type: !294)
!7578 = !DILocation(line: 1073, column: 42, scope: !7569)
!7579 = !DILocation(line: 1074, column: 31, scope: !7569)
!7580 = !DILocation(line: 1074, column: 43, scope: !7569)
!7581 = !DILocation(line: 1076, column: 2, scope: !7569)
!7582 = !DILocation(line: 1076, column: 24, scope: !7569)
!7583 = !DILocation(line: 1076, column: 44, scope: !7569)
!7584 = !DILocation(line: 1076, column: 28, scope: !7569)
!7585 = !DILocation(line: 1077, column: 2, scope: !7569)
!7586 = !DILocation(line: 1077, column: 22, scope: !7569)
!7587 = !DILocation(line: 1078, column: 2, scope: !7569)
!7588 = !DILocation(line: 1078, column: 23, scope: !7569)
!7589 = !DILocation(line: 1079, column: 2, scope: !7569)
!7590 = !DILocation(line: 1079, column: 10, scope: !7569)
!7591 = !DILocation(line: 1081, column: 14, scope: !7569)
!7592 = !DILocation(line: 1081, column: 17, scope: !7569)
!7593 = !DILocation(line: 1081, column: 2, scope: !7569)
!7594 = !DILocation(line: 1082, column: 9, scope: !7569)
!7595 = !DILocation(line: 1082, column: 12, scope: !7569)
!7596 = !DILocation(line: 1082, column: 7, scope: !7569)
!7597 = !DILocation(line: 1084, column: 11, scope: !7598)
!7598 = distinct !DILexicalBlock(scope: !7569, file: !3, line: 1084, column: 2)
!7599 = !DILocation(line: 1084, column: 17, scope: !7598)
!7600 = !DILocation(line: 1084, column: 23, scope: !7598)
!7601 = !DILocation(line: 1084, column: 9, scope: !7598)
!7602 = !DILocation(line: 1084, column: 7, scope: !7598)
!7603 = !DILocation(line: 1084, column: 29, scope: !7604)
!7604 = distinct !DILexicalBlock(scope: !7598, file: !3, line: 1084, column: 2)
!7605 = !DILocation(line: 1084, column: 35, scope: !7604)
!7606 = !DILocation(line: 1084, column: 41, scope: !7604)
!7607 = !DILocation(line: 1084, column: 31, scope: !7604)
!7608 = !DILocation(line: 1084, column: 2, scope: !7598)
!7609 = !DILocation(line: 1085, column: 7, scope: !7610)
!7610 = distinct !DILexicalBlock(scope: !7611, file: !3, line: 1085, column: 7)
!7611 = distinct !DILexicalBlock(scope: !7604, file: !3, line: 1084, column: 61)
!7612 = !DILocation(line: 1085, column: 11, scope: !7610)
!7613 = !DILocation(line: 1085, column: 7, scope: !7611)
!7614 = !DILocation(line: 1086, column: 4, scope: !7610)
!7615 = !DILocation(line: 1087, column: 24, scope: !7611)
!7616 = !DILocation(line: 1087, column: 29, scope: !7611)
!7617 = !DILocation(line: 1089, column: 22, scope: !7611)
!7618 = !DILocation(line: 1089, column: 25, scope: !7611)
!7619 = !DILocation(line: 1090, column: 22, scope: !7611)
!7620 = !DILocation(line: 1090, column: 25, scope: !7611)
!7621 = !DILocation(line: 1090, column: 32, scope: !7611)
!7622 = !DILocation(line: 1090, column: 35, scope: !7611)
!7623 = !DILocation(line: 1090, column: 30, scope: !7611)
!7624 = !DILocation(line: 1090, column: 39, scope: !7611)
!7625 = !DILocation(line: 1087, column: 10, scope: !7611)
!7626 = !DILocation(line: 1087, column: 7, scope: !7611)
!7627 = !DILocation(line: 1091, column: 2, scope: !7611)
!7628 = !DILocation(line: 1084, column: 52, scope: !7604)
!7629 = !DILocation(line: 1084, column: 55, scope: !7604)
!7630 = !DILocation(line: 1084, column: 50, scope: !7604)
!7631 = !DILocation(line: 1084, column: 2, scope: !7604)
!7632 = distinct !{!7632, !7608, !7633, !5277, !5278}
!7633 = !DILocation(line: 1091, column: 2, scope: !7598)
!7634 = !DILocation(line: 1093, column: 16, scope: !7569)
!7635 = !DILocation(line: 1093, column: 19, scope: !7569)
!7636 = !DILocation(line: 1093, column: 2, scope: !7569)
!7637 = !DILocation(line: 1094, column: 9, scope: !7569)
!7638 = !DILocation(line: 1095, column: 1, scope: !7569)
!7639 = !DILocation(line: 1094, column: 2, scope: !7569)
!7640 = distinct !DISubprogram(name: "store_io_db", scope: !3, file: !3, line: 1097, type: !5119, scopeLine: 1100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7641)
!7641 = !{!7642, !7643, !7644, !7645, !7646, !7647, !7648, !7649, !7650}
!7642 = !DILocalVariable(name: "dev", arg: 1, scope: !7640, file: !3, line: 1097, type: !4251)
!7643 = !DILocalVariable(name: "attr", arg: 2, scope: !7640, file: !3, line: 1098, type: !5116)
!7644 = !DILocalVariable(name: "buf", arg: 3, scope: !7640, file: !3, line: 1099, type: !181)
!7645 = !DILocalVariable(name: "count", arg: 4, scope: !7640, file: !3, line: 1099, type: !309)
!7646 = !DILocalVariable(name: "s", scope: !7640, file: !3, line: 1101, type: !4123)
!7647 = !DILocalVariable(name: "start_addr", scope: !7640, file: !3, line: 1102, type: !312)
!7648 = !DILocalVariable(name: "end_addr", scope: !7640, file: !3, line: 1102, type: !312)
!7649 = !DILocalVariable(name: "add", scope: !7640, file: !3, line: 1103, type: !7)
!7650 = !DILocalVariable(name: "ret", scope: !7640, file: !3, line: 1104, type: !294)
!7651 = !DILocation(line: 1097, column: 43, scope: !7640)
!7652 = !DILocation(line: 1098, column: 32, scope: !7640)
!7653 = !DILocation(line: 1099, column: 19, scope: !7640)
!7654 = !DILocation(line: 1099, column: 31, scope: !7640)
!7655 = !DILocation(line: 1101, column: 2, scope: !7640)
!7656 = !DILocation(line: 1101, column: 24, scope: !7640)
!7657 = !DILocation(line: 1101, column: 44, scope: !7640)
!7658 = !DILocation(line: 1101, column: 28, scope: !7640)
!7659 = !DILocation(line: 1102, column: 2, scope: !7640)
!7660 = !DILocation(line: 1102, column: 16, scope: !7640)
!7661 = !DILocation(line: 1102, column: 28, scope: !7640)
!7662 = !DILocation(line: 1103, column: 2, scope: !7640)
!7663 = !DILocation(line: 1103, column: 15, scope: !7640)
!7664 = !DILocation(line: 1104, column: 2, scope: !7640)
!7665 = !DILocation(line: 1104, column: 10, scope: !7640)
!7666 = !DILocation(line: 1106, column: 15, scope: !7640)
!7667 = !DILocation(line: 1106, column: 8, scope: !7640)
!7668 = !DILocation(line: 1106, column: 6, scope: !7640)
!7669 = !DILocation(line: 1107, column: 6, scope: !7670)
!7670 = distinct !DILexicalBlock(scope: !7640, file: !3, line: 1107, column: 6)
!7671 = !DILocation(line: 1107, column: 10, scope: !7670)
!7672 = !DILocation(line: 1107, column: 6, scope: !7640)
!7673 = !DILocation(line: 1108, column: 16, scope: !7674)
!7674 = distinct !DILexicalBlock(scope: !7670, file: !3, line: 1107, column: 16)
!7675 = !DILocation(line: 1108, column: 9, scope: !7674)
!7676 = !DILocation(line: 1108, column: 7, scope: !7674)
!7677 = !DILocation(line: 1109, column: 7, scope: !7674)
!7678 = !DILocation(line: 1110, column: 7, scope: !7679)
!7679 = distinct !DILexicalBlock(scope: !7674, file: !3, line: 1110, column: 7)
!7680 = !DILocation(line: 1110, column: 11, scope: !7679)
!7681 = !DILocation(line: 1110, column: 7, scope: !7674)
!7682 = !DILocation(line: 1111, column: 17, scope: !7683)
!7683 = distinct !DILexicalBlock(scope: !7679, file: !3, line: 1110, column: 17)
!7684 = !DILocation(line: 1111, column: 10, scope: !7683)
!7685 = !DILocation(line: 1111, column: 8, scope: !7683)
!7686 = !DILocation(line: 1113, column: 8, scope: !7683)
!7687 = !DILocation(line: 1114, column: 8, scope: !7688)
!7688 = distinct !DILexicalBlock(scope: !7683, file: !3, line: 1114, column: 8)
!7689 = !DILocation(line: 1114, column: 12, scope: !7688)
!7690 = !DILocation(line: 1114, column: 8, scope: !7683)
!7691 = !DILocation(line: 1115, column: 5, scope: !7688)
!7692 = !DILocation(line: 1116, column: 3, scope: !7683)
!7693 = !DILocation(line: 1117, column: 2, scope: !7674)
!7694 = !DILocation(line: 1118, column: 6, scope: !7695)
!7695 = distinct !DILexicalBlock(scope: !7640, file: !3, line: 1118, column: 6)
!7696 = !DILocation(line: 1118, column: 17, scope: !7695)
!7697 = !DILocation(line: 1118, column: 15, scope: !7695)
!7698 = !DILocation(line: 1118, column: 6, scope: !7640)
!7699 = !DILocation(line: 1119, column: 3, scope: !7695)
!7700 = !DILocation(line: 1121, column: 14, scope: !7640)
!7701 = !DILocation(line: 1121, column: 17, scope: !7640)
!7702 = !DILocation(line: 1121, column: 2, scope: !7640)
!7703 = !DILocation(line: 1122, column: 18, scope: !7640)
!7704 = !DILocation(line: 1122, column: 21, scope: !7640)
!7705 = !DILocation(line: 1122, column: 26, scope: !7640)
!7706 = !DILocation(line: 1122, column: 38, scope: !7640)
!7707 = !DILocation(line: 1122, column: 8, scope: !7640)
!7708 = !DILocation(line: 1122, column: 6, scope: !7640)
!7709 = !DILocation(line: 1123, column: 16, scope: !7640)
!7710 = !DILocation(line: 1123, column: 19, scope: !7640)
!7711 = !DILocation(line: 1123, column: 2, scope: !7640)
!7712 = !DILocation(line: 1125, column: 9, scope: !7640)
!7713 = !DILocation(line: 1125, column: 15, scope: !7640)
!7714 = !DILocation(line: 1125, column: 21, scope: !7640)
!7715 = !DILocation(line: 1125, column: 2, scope: !7640)
!7716 = !DILocation(line: 1126, column: 1, scope: !7640)
!7717 = !DISubprogram(name: "sysfs_emit_at", scope: !288, file: !288, line: 359, type: !7718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7718 = !DISubroutineType(types: !7719)
!7719 = !{!109, !262, !109, !181, null}
!7720 = !DISubprogram(name: "sscanf", scope: !7721, file: !7721, line: 20, type: !7722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7721 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7722 = !DISubroutineType(types: !7723)
!7723 = !{!109, !181, !181, null}
!7724 = distinct !DISubprogram(name: "show_mem_db", scope: !3, file: !3, line: 1129, type: !5114, scopeLine: 1131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7725)
!7725 = !{!7726, !7727, !7728, !7729, !7730, !7731, !7732}
!7726 = !DILocalVariable(name: "dev", arg: 1, scope: !7724, file: !3, line: 1129, type: !4251)
!7727 = !DILocalVariable(name: "attr", arg: 2, scope: !7724, file: !3, line: 1130, type: !5116)
!7728 = !DILocalVariable(name: "buf", arg: 3, scope: !7724, file: !3, line: 1130, type: !262)
!7729 = !DILocalVariable(name: "s", scope: !7724, file: !3, line: 1132, type: !4123)
!7730 = !DILocalVariable(name: "data", scope: !7724, file: !3, line: 1133, type: !5158)
!7731 = !DILocalVariable(name: "p", scope: !7724, file: !3, line: 1134, type: !5168)
!7732 = !DILocalVariable(name: "ret", scope: !7724, file: !3, line: 1135, type: !294)
!7733 = !DILocation(line: 1129, column: 43, scope: !7724)
!7734 = !DILocation(line: 1130, column: 32, scope: !7724)
!7735 = !DILocation(line: 1130, column: 44, scope: !7724)
!7736 = !DILocation(line: 1132, column: 2, scope: !7724)
!7737 = !DILocation(line: 1132, column: 24, scope: !7724)
!7738 = !DILocation(line: 1132, column: 44, scope: !7724)
!7739 = !DILocation(line: 1132, column: 28, scope: !7724)
!7740 = !DILocation(line: 1133, column: 2, scope: !7724)
!7741 = !DILocation(line: 1133, column: 22, scope: !7724)
!7742 = !DILocation(line: 1134, column: 2, scope: !7724)
!7743 = !DILocation(line: 1134, column: 23, scope: !7724)
!7744 = !DILocation(line: 1135, column: 2, scope: !7724)
!7745 = !DILocation(line: 1135, column: 10, scope: !7724)
!7746 = !DILocation(line: 1137, column: 14, scope: !7724)
!7747 = !DILocation(line: 1137, column: 17, scope: !7724)
!7748 = !DILocation(line: 1137, column: 2, scope: !7724)
!7749 = !DILocation(line: 1138, column: 9, scope: !7724)
!7750 = !DILocation(line: 1138, column: 12, scope: !7724)
!7751 = !DILocation(line: 1138, column: 7, scope: !7724)
!7752 = !DILocation(line: 1140, column: 11, scope: !7753)
!7753 = distinct !DILexicalBlock(scope: !7724, file: !3, line: 1140, column: 2)
!7754 = !DILocation(line: 1140, column: 17, scope: !7753)
!7755 = !DILocation(line: 1140, column: 30, scope: !7753)
!7756 = !DILocation(line: 1140, column: 9, scope: !7753)
!7757 = !DILocation(line: 1140, column: 7, scope: !7753)
!7758 = !DILocation(line: 1140, column: 36, scope: !7759)
!7759 = distinct !DILexicalBlock(scope: !7753, file: !3, line: 1140, column: 2)
!7760 = !DILocation(line: 1140, column: 42, scope: !7759)
!7761 = !DILocation(line: 1140, column: 48, scope: !7759)
!7762 = !DILocation(line: 1140, column: 38, scope: !7759)
!7763 = !DILocation(line: 1140, column: 2, scope: !7753)
!7764 = !DILocation(line: 1142, column: 7, scope: !7765)
!7765 = distinct !DILexicalBlock(scope: !7766, file: !3, line: 1142, column: 7)
!7766 = distinct !DILexicalBlock(scope: !7759, file: !3, line: 1141, column: 20)
!7767 = !DILocation(line: 1142, column: 11, scope: !7765)
!7768 = !DILocation(line: 1142, column: 7, scope: !7766)
!7769 = !DILocation(line: 1143, column: 4, scope: !7765)
!7770 = !DILocation(line: 1144, column: 24, scope: !7766)
!7771 = !DILocation(line: 1144, column: 29, scope: !7766)
!7772 = !DILocation(line: 1146, column: 22, scope: !7766)
!7773 = !DILocation(line: 1146, column: 25, scope: !7766)
!7774 = !DILocation(line: 1147, column: 22, scope: !7766)
!7775 = !DILocation(line: 1147, column: 25, scope: !7766)
!7776 = !DILocation(line: 1147, column: 32, scope: !7766)
!7777 = !DILocation(line: 1147, column: 35, scope: !7766)
!7778 = !DILocation(line: 1147, column: 30, scope: !7766)
!7779 = !DILocation(line: 1147, column: 39, scope: !7766)
!7780 = !DILocation(line: 1144, column: 10, scope: !7766)
!7781 = !DILocation(line: 1144, column: 7, scope: !7766)
!7782 = !DILocation(line: 1148, column: 2, scope: !7766)
!7783 = !DILocation(line: 1141, column: 11, scope: !7759)
!7784 = !DILocation(line: 1141, column: 14, scope: !7759)
!7785 = !DILocation(line: 1141, column: 9, scope: !7759)
!7786 = !DILocation(line: 1140, column: 2, scope: !7759)
!7787 = distinct !{!7787, !7763, !7788, !5277, !5278}
!7788 = !DILocation(line: 1148, column: 2, scope: !7753)
!7789 = !DILocation(line: 1150, column: 11, scope: !7790)
!7790 = distinct !DILexicalBlock(scope: !7724, file: !3, line: 1150, column: 2)
!7791 = !DILocation(line: 1150, column: 17, scope: !7790)
!7792 = !DILocation(line: 1150, column: 24, scope: !7790)
!7793 = !DILocation(line: 1150, column: 9, scope: !7790)
!7794 = !DILocation(line: 1150, column: 7, scope: !7790)
!7795 = !DILocation(line: 1150, column: 30, scope: !7796)
!7796 = distinct !DILexicalBlock(scope: !7790, file: !3, line: 1150, column: 2)
!7797 = !DILocation(line: 1150, column: 36, scope: !7796)
!7798 = !DILocation(line: 1150, column: 42, scope: !7796)
!7799 = !DILocation(line: 1150, column: 32, scope: !7796)
!7800 = !DILocation(line: 1150, column: 2, scope: !7790)
!7801 = !DILocation(line: 1151, column: 7, scope: !7802)
!7802 = distinct !DILexicalBlock(scope: !7803, file: !3, line: 1151, column: 7)
!7803 = distinct !DILexicalBlock(scope: !7796, file: !3, line: 1150, column: 63)
!7804 = !DILocation(line: 1151, column: 11, scope: !7802)
!7805 = !DILocation(line: 1151, column: 7, scope: !7803)
!7806 = !DILocation(line: 1152, column: 4, scope: !7802)
!7807 = !DILocation(line: 1153, column: 24, scope: !7803)
!7808 = !DILocation(line: 1153, column: 29, scope: !7803)
!7809 = !DILocation(line: 1155, column: 22, scope: !7803)
!7810 = !DILocation(line: 1155, column: 25, scope: !7803)
!7811 = !DILocation(line: 1156, column: 22, scope: !7803)
!7812 = !DILocation(line: 1156, column: 25, scope: !7803)
!7813 = !DILocation(line: 1156, column: 32, scope: !7803)
!7814 = !DILocation(line: 1156, column: 35, scope: !7803)
!7815 = !DILocation(line: 1156, column: 30, scope: !7803)
!7816 = !DILocation(line: 1156, column: 39, scope: !7803)
!7817 = !DILocation(line: 1153, column: 10, scope: !7803)
!7818 = !DILocation(line: 1153, column: 7, scope: !7803)
!7819 = !DILocation(line: 1157, column: 2, scope: !7803)
!7820 = !DILocation(line: 1150, column: 54, scope: !7796)
!7821 = !DILocation(line: 1150, column: 57, scope: !7796)
!7822 = !DILocation(line: 1150, column: 52, scope: !7796)
!7823 = !DILocation(line: 1150, column: 2, scope: !7796)
!7824 = distinct !{!7824, !7800, !7825, !5277, !5278}
!7825 = !DILocation(line: 1157, column: 2, scope: !7790)
!7826 = !DILocation(line: 1159, column: 16, scope: !7724)
!7827 = !DILocation(line: 1159, column: 19, scope: !7724)
!7828 = !DILocation(line: 1159, column: 2, scope: !7724)
!7829 = !DILocation(line: 1160, column: 9, scope: !7724)
!7830 = !DILocation(line: 1161, column: 1, scope: !7724)
!7831 = !DILocation(line: 1160, column: 2, scope: !7724)
!7832 = distinct !DISubprogram(name: "store_mem_db", scope: !3, file: !3, line: 1163, type: !5119, scopeLine: 1166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7833)
!7833 = !{!7834, !7835, !7836, !7837, !7838, !7839, !7840, !7841, !7842}
!7834 = !DILocalVariable(name: "dev", arg: 1, scope: !7832, file: !3, line: 1163, type: !4251)
!7835 = !DILocalVariable(name: "attr", arg: 2, scope: !7832, file: !3, line: 1164, type: !5116)
!7836 = !DILocalVariable(name: "buf", arg: 3, scope: !7832, file: !3, line: 1165, type: !181)
!7837 = !DILocalVariable(name: "count", arg: 4, scope: !7832, file: !3, line: 1165, type: !309)
!7838 = !DILocalVariable(name: "s", scope: !7832, file: !3, line: 1167, type: !4123)
!7839 = !DILocalVariable(name: "start_addr", scope: !7832, file: !3, line: 1168, type: !312)
!7840 = !DILocalVariable(name: "end_addr", scope: !7832, file: !3, line: 1168, type: !312)
!7841 = !DILocalVariable(name: "add", scope: !7832, file: !3, line: 1169, type: !7)
!7842 = !DILocalVariable(name: "ret", scope: !7832, file: !3, line: 1170, type: !294)
!7843 = !DILocation(line: 1163, column: 44, scope: !7832)
!7844 = !DILocation(line: 1164, column: 33, scope: !7832)
!7845 = !DILocation(line: 1165, column: 20, scope: !7832)
!7846 = !DILocation(line: 1165, column: 32, scope: !7832)
!7847 = !DILocation(line: 1167, column: 2, scope: !7832)
!7848 = !DILocation(line: 1167, column: 24, scope: !7832)
!7849 = !DILocation(line: 1167, column: 44, scope: !7832)
!7850 = !DILocation(line: 1167, column: 28, scope: !7832)
!7851 = !DILocation(line: 1168, column: 2, scope: !7832)
!7852 = !DILocation(line: 1168, column: 16, scope: !7832)
!7853 = !DILocation(line: 1168, column: 28, scope: !7832)
!7854 = !DILocation(line: 1169, column: 2, scope: !7832)
!7855 = !DILocation(line: 1169, column: 15, scope: !7832)
!7856 = !DILocation(line: 1170, column: 2, scope: !7832)
!7857 = !DILocation(line: 1170, column: 10, scope: !7832)
!7858 = !DILocation(line: 1172, column: 15, scope: !7832)
!7859 = !DILocation(line: 1172, column: 8, scope: !7832)
!7860 = !DILocation(line: 1172, column: 6, scope: !7832)
!7861 = !DILocation(line: 1173, column: 6, scope: !7862)
!7862 = distinct !DILexicalBlock(scope: !7832, file: !3, line: 1173, column: 6)
!7863 = !DILocation(line: 1173, column: 10, scope: !7862)
!7864 = !DILocation(line: 1173, column: 6, scope: !7832)
!7865 = !DILocation(line: 1174, column: 16, scope: !7866)
!7866 = distinct !DILexicalBlock(scope: !7862, file: !3, line: 1173, column: 16)
!7867 = !DILocation(line: 1174, column: 9, scope: !7866)
!7868 = !DILocation(line: 1174, column: 7, scope: !7866)
!7869 = !DILocation(line: 1175, column: 7, scope: !7866)
!7870 = !DILocation(line: 1176, column: 7, scope: !7871)
!7871 = distinct !DILexicalBlock(scope: !7866, file: !3, line: 1176, column: 7)
!7872 = !DILocation(line: 1176, column: 11, scope: !7871)
!7873 = !DILocation(line: 1176, column: 7, scope: !7866)
!7874 = !DILocation(line: 1177, column: 17, scope: !7875)
!7875 = distinct !DILexicalBlock(scope: !7871, file: !3, line: 1176, column: 17)
!7876 = !DILocation(line: 1177, column: 10, scope: !7875)
!7877 = !DILocation(line: 1177, column: 8, scope: !7875)
!7878 = !DILocation(line: 1179, column: 8, scope: !7875)
!7879 = !DILocation(line: 1180, column: 8, scope: !7880)
!7880 = distinct !DILexicalBlock(scope: !7875, file: !3, line: 1180, column: 8)
!7881 = !DILocation(line: 1180, column: 12, scope: !7880)
!7882 = !DILocation(line: 1180, column: 8, scope: !7875)
!7883 = !DILocation(line: 1181, column: 5, scope: !7880)
!7884 = !DILocation(line: 1182, column: 3, scope: !7875)
!7885 = !DILocation(line: 1183, column: 2, scope: !7866)
!7886 = !DILocation(line: 1184, column: 6, scope: !7887)
!7887 = distinct !DILexicalBlock(scope: !7832, file: !3, line: 1184, column: 6)
!7888 = !DILocation(line: 1184, column: 17, scope: !7887)
!7889 = !DILocation(line: 1184, column: 15, scope: !7887)
!7890 = !DILocation(line: 1184, column: 6, scope: !7832)
!7891 = !DILocation(line: 1185, column: 3, scope: !7887)
!7892 = !DILocation(line: 1187, column: 14, scope: !7832)
!7893 = !DILocation(line: 1187, column: 17, scope: !7832)
!7894 = !DILocation(line: 1187, column: 2, scope: !7832)
!7895 = !DILocation(line: 1188, column: 22, scope: !7832)
!7896 = !DILocation(line: 1188, column: 25, scope: !7832)
!7897 = !DILocation(line: 1188, column: 30, scope: !7832)
!7898 = !DILocation(line: 1188, column: 42, scope: !7832)
!7899 = !DILocation(line: 1188, column: 8, scope: !7832)
!7900 = !DILocation(line: 1188, column: 6, scope: !7832)
!7901 = !DILocation(line: 1189, column: 16, scope: !7832)
!7902 = !DILocation(line: 1189, column: 19, scope: !7832)
!7903 = !DILocation(line: 1189, column: 2, scope: !7832)
!7904 = !DILocation(line: 1191, column: 9, scope: !7832)
!7905 = !DILocation(line: 1191, column: 15, scope: !7832)
!7906 = !DILocation(line: 1191, column: 21, scope: !7832)
!7907 = !DILocation(line: 1191, column: 2, scope: !7832)
!7908 = !DILocation(line: 1192, column: 1, scope: !7832)
!7909 = !DISubprogram(name: "sysfs_remove_group", scope: !288, file: !288, line: 315, type: !7910, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7910 = !DISubroutineType(types: !7911)
!7911 = !{null, !185, !315}
!7912 = !DISubprogram(name: "class_interface_register", scope: !4667, file: !4667, line: 227, type: !7913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7913 = !DISubroutineType(types: !7914)
!7914 = !{!109, !5781}
