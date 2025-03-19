; ModuleID = 'drivers/char/agp/backend.c'
source_filename = "drivers/char/agp/backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_bridge: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_bridge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_bridges: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_bridges ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_find_bridge: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_find_bridge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_backend_acquire: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_backend_acquire ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_backend_release: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_backend_release ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_alloc_bridge: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_alloc_bridge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_put_bridge: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_put_bridge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_add_bridge: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_add_bridge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_remove_bridge: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_remove_bridge ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_off: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_off ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_agp_try_unsupported_boot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad agp_try_unsupported_boot ; .previous"
module asm ".section\09\22.initcall6.init..kmod_agpgart__339_366_agp_init\22, \22a\22\09\09"
module asm "__initcall__kmod_agpgart__339_366_agp_init6:\09\09\09"
module asm ".long\09__initstub__kmod_agpgart__339_366_agp_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.agp_version = type { i16, i16 }
%struct.anon.14 = type { i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.agp_bridge_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, i64, i64, i64, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i32, i8, i8, %struct.list_head, i32, %struct.list_head, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.agp_bridge_driver = type { ptr, ptr, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, [3 x i8], i32, i32, ptr, i16, i8, i32, %struct.device, i32, i32, [11 x %struct.resource], %struct.resource, i8, [5 x i8], i16, %struct.atomic_t, %struct.spinlock, [16 x i32], %struct.hlist_head, [11 x ptr], [11 x ptr], ptr, %struct.raw_spinlock, %struct.pci_vpd, %union.anon.13, i16, i8, i16, i32, i8, i16, i16, i16, i64, i64, ptr, i64, [7 x i8] }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.13 = type { ptr }

@agp_find_bridge = hidden global ptr @agp_generic_find_bridge, align 8, !dbg !0
@agp_bridges = hidden global %struct.list_head { ptr @agp_bridges, ptr @agp_bridges }, align 8, !dbg !4157
@agp_bridge = hidden global ptr null, align 8, !dbg !4245
@__UNIQUE_ID___addressable_agp_bridge323 = internal global ptr @agp_bridge, section ".discard.addressable", align 8, !dbg !4159
@__UNIQUE_ID___addressable_agp_bridges324 = internal global ptr @agp_bridges, section ".discard.addressable", align 8, !dbg !4161
@__UNIQUE_ID___addressable_agp_find_bridge325 = internal global ptr @agp_find_bridge, section ".discard.addressable", align 8, !dbg !4163
@__UNIQUE_ID___addressable_agp_backend_acquire326 = internal global ptr @agp_backend_acquire, section ".discard.addressable", align 8, !dbg !4165
@__UNIQUE_ID___addressable_agp_backend_release327 = internal global ptr @agp_backend_release, section ".discard.addressable", align 8, !dbg !4167
@__UNIQUE_ID___addressable_agp_alloc_bridge328 = internal global ptr @agp_alloc_bridge, section ".discard.addressable", align 8, !dbg !4169
@__UNIQUE_ID___addressable_agp_put_bridge329 = internal global ptr @agp_put_bridge, section ".discard.addressable", align 8, !dbg !4171
@agp_off = hidden global i32 0, align 4, !dbg !5148
@.str = private unnamed_addr constant [46 x i8] c"\017agpgart: Erk, registering with no pci_dev!\0A\00", align 1, !dbg !4173
@.str.1 = private unnamed_addr constant [27 x i8] c"can't lock chipset driver\0A\00", align 1, !dbg !4178
@.str.2 = private unnamed_addr constant [33 x i8] c"agp_backend_initialize() failed\0A\00", align 1, !dbg !4183
@.str.3 = private unnamed_addr constant [34 x i8] c"agp_frontend_initialize() failed\0A\00", align 1, !dbg !4188
@.str.4 = private unnamed_addr constant [29 x i8] c"AGP aperture is %dM @ 0x%lx\0A\00", align 1, !dbg !4193
@__UNIQUE_ID___addressable_agp_add_bridge330 = internal global ptr @agp_add_bridge, section ".discard.addressable", align 8, !dbg !4198
@__UNIQUE_ID___addressable_agp_remove_bridge331 = internal global ptr @agp_remove_bridge, section ".discard.addressable", align 8, !dbg !4200
@__UNIQUE_ID___addressable_agp_off332 = internal global ptr @agp_off, section ".discard.addressable", align 8, !dbg !4202
@agp_try_unsupported_boot = hidden global i32 0, align 4, !dbg !5150
@__UNIQUE_ID___addressable_agp_try_unsupported_boot333 = internal global ptr @agp_try_unsupported_boot, section ".discard.addressable", align 8, !dbg !4204
@__setup_str_agp_setup = internal constant [5 x i8] c"agp=\00", section ".init.rodata", align 1, !dbg !5191
@__setup_agp_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_agp_setup, ptr @agp_setup, i32 0 }, section ".init.setup", align 8, !dbg !4206
@__UNIQUE_ID_author334 = internal constant [41 x i8] c"agpgart.author=Dave Jones, Jeff Hartmann\00", section ".modinfo", align 1, !dbg !4217
@__UNIQUE_ID_description335 = internal constant [36 x i8] c"agpgart.description=AGP GART driver\00", section ".modinfo", align 1, !dbg !4222
@__UNIQUE_ID_file336 = internal constant [38 x i8] c"agpgart.file=drivers/char/agp/agpgart\00", section ".modinfo", align 1, !dbg !4227
@__UNIQUE_ID_license337 = internal constant [42 x i8] c"agpgart.license=GPL and additional rights\00", section ".modinfo", align 1, !dbg !4232
@__UNIQUE_ID_alias338 = internal constant [32 x i8] c"agpgart.alias=char-major-10-175\00", section ".modinfo", align 1, !dbg !4237
@__UNIQUE_ID___addressable___initstub__kmod_agpgart__339_366_agp_init6340 = internal global ptr @__initstub__kmod_agpgart__339_366_agp_init6, section ".discard.addressable", align 8, !dbg !4240
@__exitcall_agp_exit = internal global ptr @agp_exit, section ".exitcall.exit", align 8, !dbg !4242
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5152
@agp_current_version = internal constant %struct.agp_version { i16 0, i16 103 }, align 2, !dbg !5189
@.str.6 = private unnamed_addr constant [35 x i8] c"can't get memory for scratch page\0A\00", align 1, !dbg !5157
@vmemmap_base = external dso_local global i64, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"can't determine aperture size\0A\00", align 1, !dbg !5162
@.str.8 = private unnamed_addr constant [49 x i8] c"can't get memory for graphics translation table\0A\00", align 1, !dbg !5167
@.str.9 = private unnamed_addr constant [37 x i8] c"can't allocate memory for key lists\0A\00", align 1, !dbg !5172
@.str.10 = private unnamed_addr constant [32 x i8] c"error configuring host chipset\0A\00", align 1, !dbg !5177
@maxes_table = internal constant [9 x %struct.anon.14] [%struct.anon.14 zeroinitializer, %struct.anon.14 { i32 32, i32 4 }, %struct.anon.14 { i32 64, i32 28 }, %struct.anon.14 { i32 128, i32 96 }, %struct.anon.14 { i32 256, i32 204 }, %struct.anon.14 { i32 512, i32 440 }, %struct.anon.14 { i32 1024, i32 942 }, %struct.anon.14 { i32 2048, i32 1920 }, %struct.anon.14 { i32 4096, i32 3932 }], align 16, !dbg !5179
@_totalram_pages = external dso_local global %struct.atomic64_t, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1, !dbg !5196
@.str.12 = private unnamed_addr constant [16 x i8] c"try_unsupported\00", align 1, !dbg !5199
@.str.13 = private unnamed_addr constant [34 x i8] c"\016Linux agpgart interface v%d.%d\0A\00", align 1, !dbg !5201
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID___addressable_agp_bridge323, ptr @__UNIQUE_ID___addressable_agp_bridges324, ptr @__UNIQUE_ID___addressable_agp_find_bridge325, ptr @__UNIQUE_ID___addressable_agp_backend_acquire326, ptr @__UNIQUE_ID___addressable_agp_backend_release327, ptr @__UNIQUE_ID___addressable_agp_alloc_bridge328, ptr @__UNIQUE_ID___addressable_agp_put_bridge329, ptr @__UNIQUE_ID___addressable_agp_add_bridge330, ptr @__UNIQUE_ID___addressable_agp_remove_bridge331, ptr @__UNIQUE_ID___addressable_agp_off332, ptr @__UNIQUE_ID___addressable_agp_try_unsupported_boot333, ptr @agp_exit, ptr @__setup_agp_setup, ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file336, ptr @__UNIQUE_ID_license337, ptr @__UNIQUE_ID_alias338, ptr @__UNIQUE_ID___addressable___initstub__kmod_agpgart__339_366_agp_init6340, ptr @__exitcall_agp_exit], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @agp_generic_find_bridge(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @agp_backend_acquire(ptr noundef %pdev) #1 align 16 !dbg !5215 {
entry:
  %retval = alloca ptr, align 8
  %pdev.addr = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !5217, metadata !DIExpression()), !dbg !5219
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #16, !dbg !5220
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !5218, metadata !DIExpression()), !dbg !5221
  %0 = load ptr, ptr @agp_find_bridge, align 8, !dbg !5222
  %1 = load ptr, ptr %pdev.addr, align 8, !dbg !5223
  %call = call ptr %0(ptr noundef %1) #17, !dbg !5222
  store ptr %call, ptr %bridge, align 8, !dbg !5224
  %2 = load ptr, ptr %bridge, align 8, !dbg !5225
  %tobool = icmp ne ptr %2, null, !dbg !5225
  br i1 %tobool, label %if.end, label %if.then, !dbg !5227

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5228

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %bridge, align 8, !dbg !5229
  %agp_in_use = getelementptr inbounds %struct.agp_bridge_data, ptr %3, i32 0, i32 18, !dbg !5231
  %call1 = call i32 @atomic_read(ptr noundef %agp_in_use) #17, !dbg !5232
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5232
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5233

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !5234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5234

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %bridge, align 8, !dbg !5235
  %agp_in_use5 = getelementptr inbounds %struct.agp_bridge_data, ptr %4, i32 0, i32 18, !dbg !5236
  call void @atomic_inc(ptr noundef %agp_in_use5) #17, !dbg !5237
  %5 = load ptr, ptr %bridge, align 8, !dbg !5238
  store ptr %5, ptr %retval, align 8, !dbg !5239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5239

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #16, !dbg !5240
  %6 = load ptr, ptr %retval, align 8, !dbg !5240
  ret ptr %6, !dbg !5240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !5241 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5250
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #17, !dbg !5251
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5252
  %call = call i32 @raw_atomic_read(ptr noundef %1) #17, !dbg !5253
  ret i32 %call, !dbg !5254
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_inc(ptr noundef %v) #4 align 16 !dbg !5255 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5260, metadata !DIExpression()), !dbg !5261
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5262
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5263
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5264
  call void @raw_atomic_inc(ptr noundef %1) #17, !dbg !5265
  ret void, !dbg !5266
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @agp_backend_release(ptr noundef %bridge) #1 align 16 !dbg !5267 {
entry:
  %bridge.addr = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5271, metadata !DIExpression()), !dbg !5272
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !5273
  %tobool = icmp ne ptr %0, null, !dbg !5273
  br i1 %tobool, label %if.then, label %if.end, !dbg !5275

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %bridge.addr, align 8, !dbg !5276
  %agp_in_use = getelementptr inbounds %struct.agp_bridge_data, ptr %1, i32 0, i32 18, !dbg !5277
  call void @atomic_dec(ptr noundef %agp_in_use) #17, !dbg !5278
  br label %if.end, !dbg !5278

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5279
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_dec(ptr noundef %v) #4 align 16 !dbg !5280 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5284
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5285
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5286
  call void @raw_atomic_dec(ptr noundef %1) #17, !dbg !5287
  ret void, !dbg !5288
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @agp_alloc_bridge() #1 align 16 !dbg !5289 {
entry:
  %retval = alloca ptr, align 8
  %bridge = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %bridge) #16, !dbg !5294
  call void @llvm.dbg.declare(metadata ptr %bridge, metadata !5293, metadata !DIExpression()), !dbg !5295
  %call = call noalias ptr @kzalloc(i64 noundef 208, i32 noundef 3264) #18, !dbg !5296
  store ptr %call, ptr %bridge, align 8, !dbg !5297
  %0 = load ptr, ptr %bridge, align 8, !dbg !5298
  %tobool = icmp ne ptr %0, null, !dbg !5298
  br i1 %tobool, label %if.end, label %if.then, !dbg !5300

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5301
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5301

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bridge, align 8, !dbg !5302
  %agp_in_use = getelementptr inbounds %struct.agp_bridge_data, ptr %1, i32 0, i32 18, !dbg !5303
  call void @atomic_set(ptr noundef %agp_in_use, i32 noundef 0) #17, !dbg !5304
  %2 = load ptr, ptr %bridge, align 8, !dbg !5305
  %current_memory_agp = getelementptr inbounds %struct.agp_bridge_data, ptr %2, i32 0, i32 17, !dbg !5306
  call void @atomic_set(ptr noundef %current_memory_agp, i32 noundef 0) #17, !dbg !5307
  %call1 = call i32 @list_empty(ptr noundef @agp_bridges) #17, !dbg !5308
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5308
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5310

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %bridge, align 8, !dbg !5311
  store ptr %3, ptr @agp_bridge, align 8, !dbg !5312
  br label %if.end4, !dbg !5313

if.end4:                                          ; preds = %if.then3, %if.end
  %4 = load ptr, ptr %bridge, align 8, !dbg !5314
  store ptr %4, ptr %retval, align 8, !dbg !5315
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5315

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bridge) #16, !dbg !5316
  %5 = load ptr, ptr %retval, align 8, !dbg !5316
  ret ptr %5, !dbg !5316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5317 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5321, metadata !DIExpression()), !dbg !5323
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5322, metadata !DIExpression()), !dbg !5324
  %0 = load i64, ptr %size.addr, align 8, !dbg !5325
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5326
  %or = or i32 %1, 256, !dbg !5327
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5328
  ret ptr %call, !dbg !5329
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !5330 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5334, metadata !DIExpression()), !dbg !5336
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5335, metadata !DIExpression()), !dbg !5337
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5338
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #17, !dbg !5339
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5340
  %2 = load i32, ptr %i.addr, align 4, !dbg !5341
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #17, !dbg !5342
  ret void, !dbg !5343
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #6 align 16 !dbg !5344 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  br label %do.body, !dbg !5353

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5355

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5353
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5353
  %1 = load volatile ptr, ptr %next, align 8, !dbg !5353
  store ptr %1, ptr %tmp, align 8, !dbg !5355
  %2 = load ptr, ptr %tmp, align 8, !dbg !5353
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5357
  %cmp = icmp eq ptr %2, %3, !dbg !5358
  %conv = zext i1 %cmp to i32, !dbg !5358
  ret i32 %conv, !dbg !5359
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @agp_put_bridge(ptr noundef %bridge) #1 align 16 !dbg !5360 {
entry:
  %bridge.addr = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5362, metadata !DIExpression()), !dbg !5363
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !5364
  call void @kfree(ptr noundef %0) #17, !dbg !5365
  %call = call i32 @list_empty(ptr noundef @agp_bridges) #17, !dbg !5366
  %tobool = icmp ne i32 %call, 0, !dbg !5366
  br i1 %tobool, label %if.then, label %if.end, !dbg !5368

if.then:                                          ; preds = %entry
  store ptr null, ptr @agp_bridge, align 8, !dbg !5369
  br label %if.end, !dbg !5370

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5371
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5372 dso_local void @kfree(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @agp_add_bridge(ptr noundef %bridge) #1 align 16 !dbg !5375 {
entry:
  %retval = alloca i32, align 4
  %bridge.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5377, metadata !DIExpression()), !dbg !5382
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5383
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5378, metadata !DIExpression()), !dbg !5384
  %0 = load i32, ptr @agp_off, align 4, !dbg !5385
  %tobool = icmp ne i32 %0, 0, !dbg !5385
  br i1 %tobool, label %if.then, label %if.end, !dbg !5387

if.then:                                          ; preds = %entry
  store i32 -19, ptr %error, align 4, !dbg !5388
  br label %err_put_bridge, !dbg !5390

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bridge.addr, align 8, !dbg !5391
  %dev = getelementptr inbounds %struct.agp_bridge_data, ptr %1, i32 0, i32 6, !dbg !5393
  %2 = load ptr, ptr %dev, align 8, !dbg !5393
  %tobool1 = icmp ne ptr %2, null, !dbg !5391
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !5394

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !5395

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !5398

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5398

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #19, !dbg !5395
  store i32 %call, ptr %tmp, align 4, !dbg !5398
  %3 = load i32, ptr %tmp, align 4, !dbg !5395
  store i32 -22, ptr %error, align 4, !dbg !5400
  br label %err_put_bridge, !dbg !5401

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %bridge.addr, align 8, !dbg !5402
  %driver = getelementptr inbounds %struct.agp_bridge_data, ptr %4, i32 0, i32 1, !dbg !5404
  %5 = load ptr, ptr %driver, align 8, !dbg !5404
  %owner = getelementptr inbounds %struct.agp_bridge_driver, ptr %5, i32 0, i32 0, !dbg !5405
  %6 = load ptr, ptr %owner, align 8, !dbg !5405
  %call4 = call zeroext i1 @try_module_get(ptr noundef %6) #17, !dbg !5406
  br i1 %call4, label %if.end11, label %if.then5, !dbg !5407

if.then5:                                         ; preds = %if.end3
  br label %do.body6, !dbg !5408

do.body6:                                         ; preds = %if.then5
  br label %do.cond7, !dbg !5411

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5411

do.end8:                                          ; preds = %do.cond7
  %7 = load ptr, ptr %bridge.addr, align 8, !dbg !5408
  %dev9 = getelementptr inbounds %struct.agp_bridge_data, ptr %7, i32 0, i32 6, !dbg !5408
  %8 = load ptr, ptr %dev9, align 8, !dbg !5408
  %dev10 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 37, !dbg !5408
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef @.str.1) #19, !dbg !5408
  store i32 -22, ptr %error, align 4, !dbg !5413
  br label %err_put_bridge, !dbg !5414

if.end11:                                         ; preds = %if.end3
  %9 = load ptr, ptr %bridge.addr, align 8, !dbg !5415
  %call12 = call i32 @agp_backend_initialize(ptr noundef %9) #17, !dbg !5416
  store i32 %call12, ptr %error, align 4, !dbg !5417
  %10 = load i32, ptr %error, align 4, !dbg !5418
  %tobool13 = icmp ne i32 %10, 0, !dbg !5418
  br i1 %tobool13, label %if.then14, label %if.end20, !dbg !5420

if.then14:                                        ; preds = %if.end11
  br label %do.body15, !dbg !5421

do.body15:                                        ; preds = %if.then14
  br label %do.cond16, !dbg !5424

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5424

do.end17:                                         ; preds = %do.cond16
  %11 = load ptr, ptr %bridge.addr, align 8, !dbg !5421
  %dev18 = getelementptr inbounds %struct.agp_bridge_data, ptr %11, i32 0, i32 6, !dbg !5421
  %12 = load ptr, ptr %dev18, align 8, !dbg !5421
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 37, !dbg !5421
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef @.str.2) #19, !dbg !5421
  br label %err_out, !dbg !5426

if.end20:                                         ; preds = %if.end11
  %call21 = call i32 @list_empty(ptr noundef @agp_bridges) #17, !dbg !5427
  %tobool22 = icmp ne i32 %call21, 0, !dbg !5427
  br i1 %tobool22, label %if.then23, label %if.end40, !dbg !5429

if.then23:                                        ; preds = %if.end20
  %call24 = call i32 @agp_frontend_initialize() #17, !dbg !5430
  store i32 %call24, ptr %error, align 4, !dbg !5432
  %13 = load i32, ptr %error, align 4, !dbg !5433
  %tobool25 = icmp ne i32 %13, 0, !dbg !5433
  br i1 %tobool25, label %if.then26, label %if.end32, !dbg !5435

if.then26:                                        ; preds = %if.then23
  br label %do.body27, !dbg !5436

do.body27:                                        ; preds = %if.then26
  br label %do.cond28, !dbg !5439

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5439

do.end29:                                         ; preds = %do.cond28
  %14 = load ptr, ptr %bridge.addr, align 8, !dbg !5436
  %dev30 = getelementptr inbounds %struct.agp_bridge_data, ptr %14, i32 0, i32 6, !dbg !5436
  %15 = load ptr, ptr %dev30, align 8, !dbg !5436
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 37, !dbg !5436
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev31, ptr noundef @.str.3) #19, !dbg !5436
  br label %frontend_err, !dbg !5441

if.end32:                                         ; preds = %if.then23
  br label %do.body33, !dbg !5442

do.body33:                                        ; preds = %if.end32
  br label %do.cond34, !dbg !5444

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5444

do.end35:                                         ; preds = %do.cond34
  %16 = load ptr, ptr %bridge.addr, align 8, !dbg !5442
  %dev36 = getelementptr inbounds %struct.agp_bridge_data, ptr %16, i32 0, i32 6, !dbg !5442
  %17 = load ptr, ptr %dev36, align 8, !dbg !5442
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 37, !dbg !5442
  %18 = load ptr, ptr %bridge.addr, align 8, !dbg !5442
  %driver38 = getelementptr inbounds %struct.agp_bridge_data, ptr %18, i32 0, i32 1, !dbg !5442
  %19 = load ptr, ptr %driver38, align 8, !dbg !5442
  %fetch_size = getelementptr inbounds %struct.agp_bridge_driver, ptr %19, i32 0, i32 7, !dbg !5442
  %20 = load ptr, ptr %fetch_size, align 8, !dbg !5442
  %call39 = call i32 %20() #17, !dbg !5442
  %21 = load ptr, ptr %bridge.addr, align 8, !dbg !5442
  %gart_bus_addr = getelementptr inbounds %struct.agp_bridge_data, ptr %21, i32 0, i32 12, !dbg !5442
  %22 = load i64, ptr %gart_bus_addr, align 8, !dbg !5442
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev37, ptr noundef @.str.4, i32 noundef %call39, i64 noundef %22) #19, !dbg !5442
  br label %if.end40, !dbg !5446

if.end40:                                         ; preds = %do.end35, %if.end20
  %23 = load ptr, ptr %bridge.addr, align 8, !dbg !5447
  %list = getelementptr inbounds %struct.agp_bridge_data, ptr %23, i32 0, i32 25, !dbg !5448
  call void @list_add(ptr noundef %list, ptr noundef @agp_bridges) #17, !dbg !5449
  store i32 0, ptr %retval, align 4, !dbg !5450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5450

frontend_err:                                     ; preds = %do.end29
  call void @llvm.dbg.label(metadata !5379), !dbg !5451
  %24 = load ptr, ptr %bridge.addr, align 8, !dbg !5452
  call void @agp_backend_cleanup(ptr noundef %24) #17, !dbg !5453
  br label %err_out, !dbg !5453

err_out:                                          ; preds = %frontend_err, %do.end17
  call void @llvm.dbg.label(metadata !5380), !dbg !5454
  %25 = load ptr, ptr %bridge.addr, align 8, !dbg !5455
  %driver41 = getelementptr inbounds %struct.agp_bridge_data, ptr %25, i32 0, i32 1, !dbg !5456
  %26 = load ptr, ptr %driver41, align 8, !dbg !5456
  %owner42 = getelementptr inbounds %struct.agp_bridge_driver, ptr %26, i32 0, i32 0, !dbg !5457
  %27 = load ptr, ptr %owner42, align 8, !dbg !5457
  call void @module_put(ptr noundef %27) #17, !dbg !5458
  br label %err_put_bridge, !dbg !5458

err_put_bridge:                                   ; preds = %err_out, %do.end8, %do.end, %if.then
  call void @llvm.dbg.label(metadata !5381), !dbg !5459
  %28 = load ptr, ptr %bridge.addr, align 8, !dbg !5460
  call void @agp_put_bridge(ptr noundef %28) #17, !dbg !5461
  %29 = load i32, ptr %error, align 4, !dbg !5462
  store i32 %29, ptr %retval, align 4, !dbg !5463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5463

cleanup:                                          ; preds = %err_put_bridge, %if.end40
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5464
  %30 = load i32, ptr %retval, align 4, !dbg !5464
  ret i32 %30, !dbg !5464
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5465 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5469 dso_local zeroext i1 @try_module_get(ptr noundef) #0

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5472 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @agp_backend_initialize(ptr noundef %bridge) #1 align 16 !dbg !5476 {
entry:
  %retval = alloca i32, align 4
  %bridge.addr = alloca ptr, align 8
  %size_value = alloca i32, align 4
  %rc = alloca i32, align 4
  %got_gatt = alloca i32, align 4
  %got_keylist = alloca i32, align 4
  %page = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %page58 = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5478, metadata !DIExpression()), !dbg !5490
  call void @llvm.lifetime.start.p0(i64 4, ptr %size_value) #16, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %size_value, metadata !5479, metadata !DIExpression()), !dbg !5492
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5480, metadata !DIExpression()), !dbg !5493
  call void @llvm.lifetime.start.p0(i64 4, ptr %got_gatt) #16, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %got_gatt, metadata !5481, metadata !DIExpression()), !dbg !5494
  store i32 0, ptr %got_gatt, align 4, !dbg !5494
  call void @llvm.lifetime.start.p0(i64 4, ptr %got_keylist) #16, !dbg !5491
  call void @llvm.dbg.declare(metadata ptr %got_keylist, metadata !5482, metadata !DIExpression()), !dbg !5495
  store i32 0, ptr %got_keylist, align 4, !dbg !5495
  %call = call i32 @agp_find_max() #17, !dbg !5496
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !5497
  %max_memory_agp = getelementptr inbounds %struct.agp_bridge_data, ptr %0, i32 0, i32 19, !dbg !5498
  store i32 %call, ptr %max_memory_agp, align 8, !dbg !5499
  %1 = load ptr, ptr %bridge.addr, align 8, !dbg !5500
  %version = getelementptr inbounds %struct.agp_bridge_data, ptr %1, i32 0, i32 0, !dbg !5501
  store ptr @agp_current_version, ptr %version, align 8, !dbg !5502
  %2 = load ptr, ptr %bridge.addr, align 8, !dbg !5503
  %driver = getelementptr inbounds %struct.agp_bridge_data, ptr %2, i32 0, i32 1, !dbg !5504
  %3 = load ptr, ptr %driver, align 8, !dbg !5504
  %needs_scratch_page = getelementptr inbounds %struct.agp_bridge_driver, ptr %3, i32 0, i32 5, !dbg !5505
  %4 = load i8, ptr %needs_scratch_page, align 1, !dbg !5505, !range !5506, !noundef !1132
  %tobool = trunc i8 %4 to i1, !dbg !5505
  br i1 %tobool, label %if.then, label %if.end9, !dbg !5507

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !5508
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5483, metadata !DIExpression()), !dbg !5509
  %5 = load ptr, ptr %bridge.addr, align 8, !dbg !5510
  %driver1 = getelementptr inbounds %struct.agp_bridge_data, ptr %5, i32 0, i32 1, !dbg !5511
  %6 = load ptr, ptr %driver1, align 8, !dbg !5511
  %agp_alloc_page = getelementptr inbounds %struct.agp_bridge_driver, ptr %6, i32 0, i32 20, !dbg !5512
  %7 = load ptr, ptr %agp_alloc_page, align 8, !dbg !5512
  %8 = load ptr, ptr %bridge.addr, align 8, !dbg !5513
  %call2 = call ptr %7(ptr noundef %8) #17, !dbg !5510
  store ptr %call2, ptr %page, align 8, !dbg !5509
  %9 = load ptr, ptr %page, align 8, !dbg !5514
  %tobool3 = icmp ne ptr %9, null, !dbg !5514
  br i1 %tobool3, label %if.end, label %if.then4, !dbg !5516

if.then4:                                         ; preds = %if.then
  br label %do.body, !dbg !5517

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !5520

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5520

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %bridge.addr, align 8, !dbg !5517
  %dev = getelementptr inbounds %struct.agp_bridge_data, ptr %10, i32 0, i32 6, !dbg !5517
  %11 = load ptr, ptr %dev, align 8, !dbg !5517
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 37, !dbg !5517
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef @.str.6) #19, !dbg !5517
  store i32 -12, ptr %retval, align 4, !dbg !5522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5522

if.end:                                           ; preds = %if.then
  %12 = load ptr, ptr %page, align 8, !dbg !5523
  %13 = load ptr, ptr %bridge.addr, align 8, !dbg !5524
  %scratch_page_page = getelementptr inbounds %struct.agp_bridge_data, ptr %13, i32 0, i32 10, !dbg !5525
  store ptr %12, ptr %scratch_page_page, align 8, !dbg !5526
  %14 = load ptr, ptr %page, align 8, !dbg !5527
  %15 = load i64, ptr @vmemmap_base, align 8, !dbg !5527
  %16 = inttoptr i64 %15 to ptr, !dbg !5527
  %sub.ptr.lhs.cast = ptrtoint ptr %14 to i64, !dbg !5527
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i64, !dbg !5527
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5527
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !5527
  %shl = shl i64 %sub.ptr.div, 12, !dbg !5527
  %17 = load ptr, ptr %bridge.addr, align 8, !dbg !5528
  %scratch_page_dma = getelementptr inbounds %struct.agp_bridge_data, ptr %17, i32 0, i32 11, !dbg !5529
  store i64 %shl, ptr %scratch_page_dma, align 8, !dbg !5530
  %18 = load ptr, ptr %bridge.addr, align 8, !dbg !5531
  %driver6 = getelementptr inbounds %struct.agp_bridge_data, ptr %18, i32 0, i32 1, !dbg !5532
  %19 = load ptr, ptr %driver6, align 8, !dbg !5532
  %mask_memory = getelementptr inbounds %struct.agp_bridge_driver, ptr %19, i32 0, i32 12, !dbg !5533
  %20 = load ptr, ptr %mask_memory, align 8, !dbg !5533
  %21 = load ptr, ptr %bridge.addr, align 8, !dbg !5534
  %22 = load ptr, ptr %bridge.addr, align 8, !dbg !5535
  %scratch_page_dma7 = getelementptr inbounds %struct.agp_bridge_data, ptr %22, i32 0, i32 11, !dbg !5536
  %23 = load i64, ptr %scratch_page_dma7, align 8, !dbg !5536
  %call8 = call i64 %20(ptr noundef %21, i64 noundef %23, i32 noundef 0) #17, !dbg !5531
  %24 = load ptr, ptr %bridge.addr, align 8, !dbg !5537
  %scratch_page = getelementptr inbounds %struct.agp_bridge_data, ptr %24, i32 0, i32 9, !dbg !5538
  store i64 %call8, ptr %scratch_page, align 8, !dbg !5539
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5540
  br label %cleanup, !dbg !5540

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !5540
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup74 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end9, !dbg !5541

if.end9:                                          ; preds = %cleanup.cont, %entry
  %25 = load ptr, ptr %bridge.addr, align 8, !dbg !5542
  %driver10 = getelementptr inbounds %struct.agp_bridge_data, ptr %25, i32 0, i32 1, !dbg !5543
  %26 = load ptr, ptr %driver10, align 8, !dbg !5543
  %fetch_size = getelementptr inbounds %struct.agp_bridge_driver, ptr %26, i32 0, i32 7, !dbg !5544
  %27 = load ptr, ptr %fetch_size, align 8, !dbg !5544
  %call11 = call i32 %27() #17, !dbg !5542
  store i32 %call11, ptr %size_value, align 4, !dbg !5545
  %28 = load i32, ptr %size_value, align 4, !dbg !5546
  %cmp = icmp eq i32 %28, 0, !dbg !5548
  br i1 %cmp, label %if.then12, label %if.end18, !dbg !5549

if.then12:                                        ; preds = %if.end9
  br label %do.body13, !dbg !5550

do.body13:                                        ; preds = %if.then12
  br label %do.cond14, !dbg !5553

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5553

do.end15:                                         ; preds = %do.cond14
  %29 = load ptr, ptr %bridge.addr, align 8, !dbg !5550
  %dev16 = getelementptr inbounds %struct.agp_bridge_data, ptr %29, i32 0, i32 6, !dbg !5550
  %30 = load ptr, ptr %dev16, align 8, !dbg !5550
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 37, !dbg !5550
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef @.str.7) #19, !dbg !5550
  store i32 -22, ptr %rc, align 4, !dbg !5555
  br label %err_out, !dbg !5556

if.end18:                                         ; preds = %if.end9
  %31 = load ptr, ptr %bridge.addr, align 8, !dbg !5557
  %driver19 = getelementptr inbounds %struct.agp_bridge_data, ptr %31, i32 0, i32 1, !dbg !5559
  %32 = load ptr, ptr %driver19, align 8, !dbg !5559
  %create_gatt_table = getelementptr inbounds %struct.agp_bridge_driver, ptr %32, i32 0, i32 14, !dbg !5560
  %33 = load ptr, ptr %create_gatt_table, align 8, !dbg !5560
  %34 = load ptr, ptr %bridge.addr, align 8, !dbg !5561
  %call20 = call i32 %33(ptr noundef %34) #17, !dbg !5557
  %tobool21 = icmp ne i32 %call20, 0, !dbg !5557
  br i1 %tobool21, label %if.then22, label %if.end28, !dbg !5562

if.then22:                                        ; preds = %if.end18
  br label %do.body23, !dbg !5563

do.body23:                                        ; preds = %if.then22
  br label %do.cond24, !dbg !5566

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !5566

do.end25:                                         ; preds = %do.cond24
  %35 = load ptr, ptr %bridge.addr, align 8, !dbg !5563
  %dev26 = getelementptr inbounds %struct.agp_bridge_data, ptr %35, i32 0, i32 6, !dbg !5563
  %36 = load ptr, ptr %dev26, align 8, !dbg !5563
  %dev27 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 37, !dbg !5563
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27, ptr noundef @.str.8) #19, !dbg !5563
  store i32 -12, ptr %rc, align 4, !dbg !5568
  br label %err_out, !dbg !5569

if.end28:                                         ; preds = %if.end18
  store i32 1, ptr %got_gatt, align 4, !dbg !5570
  %call29 = call noalias ptr @vzalloc(i64 noundef 16384) #18, !dbg !5571
  %37 = load ptr, ptr %bridge.addr, align 8, !dbg !5572
  %key_list = getelementptr inbounds %struct.agp_bridge_data, ptr %37, i32 0, i32 16, !dbg !5573
  store ptr %call29, ptr %key_list, align 8, !dbg !5574
  %38 = load ptr, ptr %bridge.addr, align 8, !dbg !5575
  %key_list30 = getelementptr inbounds %struct.agp_bridge_data, ptr %38, i32 0, i32 16, !dbg !5577
  %39 = load ptr, ptr %key_list30, align 8, !dbg !5577
  %cmp31 = icmp eq ptr %39, null, !dbg !5578
  br i1 %cmp31, label %if.then32, label %if.end38, !dbg !5579

if.then32:                                        ; preds = %if.end28
  br label %do.body33, !dbg !5580

do.body33:                                        ; preds = %if.then32
  br label %do.cond34, !dbg !5583

do.cond34:                                        ; preds = %do.body33
  br label %do.end35, !dbg !5583

do.end35:                                         ; preds = %do.cond34
  %40 = load ptr, ptr %bridge.addr, align 8, !dbg !5580
  %dev36 = getelementptr inbounds %struct.agp_bridge_data, ptr %40, i32 0, i32 6, !dbg !5580
  %41 = load ptr, ptr %dev36, align 8, !dbg !5580
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 37, !dbg !5580
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef @.str.9) #19, !dbg !5580
  store i32 -12, ptr %rc, align 4, !dbg !5585
  br label %err_out, !dbg !5586

if.end38:                                         ; preds = %if.end28
  store i32 1, ptr %got_keylist, align 4, !dbg !5587
  %42 = load ptr, ptr %bridge.addr, align 8, !dbg !5588
  %driver39 = getelementptr inbounds %struct.agp_bridge_data, ptr %42, i32 0, i32 1, !dbg !5590
  %43 = load ptr, ptr %driver39, align 8, !dbg !5590
  %configure = getelementptr inbounds %struct.agp_bridge_driver, ptr %43, i32 0, i32 8, !dbg !5591
  %44 = load ptr, ptr %configure, align 8, !dbg !5591
  %call40 = call i32 %44() #17, !dbg !5588
  %tobool41 = icmp ne i32 %call40, 0, !dbg !5588
  br i1 %tobool41, label %if.then42, label %if.end48, !dbg !5592

if.then42:                                        ; preds = %if.end38
  br label %do.body43, !dbg !5593

do.body43:                                        ; preds = %if.then42
  br label %do.cond44, !dbg !5596

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !5596

do.end45:                                         ; preds = %do.cond44
  %45 = load ptr, ptr %bridge.addr, align 8, !dbg !5593
  %dev46 = getelementptr inbounds %struct.agp_bridge_data, ptr %45, i32 0, i32 6, !dbg !5593
  %46 = load ptr, ptr %dev46, align 8, !dbg !5593
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %46, i32 0, i32 37, !dbg !5593
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47, ptr noundef @.str.10) #19, !dbg !5593
  store i32 -22, ptr %rc, align 4, !dbg !5598
  br label %err_out, !dbg !5599

if.end48:                                         ; preds = %if.end38
  %47 = load ptr, ptr %bridge.addr, align 8, !dbg !5600
  %mapped_list = getelementptr inbounds %struct.agp_bridge_data, ptr %47, i32 0, i32 27, !dbg !5601
  call void @INIT_LIST_HEAD(ptr noundef %mapped_list) #17, !dbg !5602
  br label %do.body49, !dbg !5603

do.body49:                                        ; preds = %if.end48
  %48 = load ptr, ptr %bridge.addr, align 8, !dbg !5604
  %mapped_lock = getelementptr inbounds %struct.agp_bridge_data, ptr %48, i32 0, i32 28, !dbg !5604
  %call50 = call ptr @spinlock_check(ptr noundef %mapped_lock) #17, !dbg !5604
  %49 = load ptr, ptr %bridge.addr, align 8, !dbg !5604
  %mapped_lock51 = getelementptr inbounds %struct.agp_bridge_data, ptr %49, i32 0, i32 28, !dbg !5604
  %50 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5604
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %50, i32 0, i32 0, !dbg !5604
  %51 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5604
  %counter = getelementptr inbounds %struct.atomic_t, ptr %51, i32 0, i32 0, !dbg !5604
  store i32 0, ptr %counter, align 4, !dbg !5604
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %mapped_lock51, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5604
  br label %do.cond52, !dbg !5604

do.cond52:                                        ; preds = %do.body49
  br label %do.end53, !dbg !5604

do.end53:                                         ; preds = %do.cond52
  store i32 0, ptr %retval, align 4, !dbg !5606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !5606

err_out:                                          ; preds = %do.end45, %do.end35, %do.end25, %do.end15
  call void @llvm.dbg.label(metadata !5486), !dbg !5607
  %52 = load ptr, ptr %bridge.addr, align 8, !dbg !5608
  %driver54 = getelementptr inbounds %struct.agp_bridge_data, ptr %52, i32 0, i32 1, !dbg !5609
  %53 = load ptr, ptr %driver54, align 8, !dbg !5609
  %needs_scratch_page55 = getelementptr inbounds %struct.agp_bridge_driver, ptr %53, i32 0, i32 5, !dbg !5610
  %54 = load i8, ptr %needs_scratch_page55, align 1, !dbg !5610, !range !5506, !noundef !1132
  %tobool56 = trunc i8 %54 to i1, !dbg !5610
  br i1 %tobool56, label %if.then57, label %if.end63, !dbg !5611

if.then57:                                        ; preds = %err_out
  call void @llvm.lifetime.start.p0(i64 8, ptr %page58) #16, !dbg !5612
  call void @llvm.dbg.declare(metadata ptr %page58, metadata !5487, metadata !DIExpression()), !dbg !5613
  %55 = load ptr, ptr %bridge.addr, align 8, !dbg !5614
  %scratch_page_page59 = getelementptr inbounds %struct.agp_bridge_data, ptr %55, i32 0, i32 10, !dbg !5615
  %56 = load ptr, ptr %scratch_page_page59, align 8, !dbg !5615
  store ptr %56, ptr %page58, align 8, !dbg !5613
  %57 = load ptr, ptr %bridge.addr, align 8, !dbg !5616
  %driver60 = getelementptr inbounds %struct.agp_bridge_data, ptr %57, i32 0, i32 1, !dbg !5617
  %58 = load ptr, ptr %driver60, align 8, !dbg !5617
  %agp_destroy_page = getelementptr inbounds %struct.agp_bridge_driver, ptr %58, i32 0, i32 22, !dbg !5618
  %59 = load ptr, ptr %agp_destroy_page, align 8, !dbg !5618
  %60 = load ptr, ptr %page58, align 8, !dbg !5619
  call void %59(ptr noundef %60, i32 noundef 1) #17, !dbg !5616
  %61 = load ptr, ptr %bridge.addr, align 8, !dbg !5620
  %driver61 = getelementptr inbounds %struct.agp_bridge_data, ptr %61, i32 0, i32 1, !dbg !5621
  %62 = load ptr, ptr %driver61, align 8, !dbg !5621
  %agp_destroy_page62 = getelementptr inbounds %struct.agp_bridge_driver, ptr %62, i32 0, i32 22, !dbg !5622
  %63 = load ptr, ptr %agp_destroy_page62, align 8, !dbg !5622
  %64 = load ptr, ptr %page58, align 8, !dbg !5623
  call void %63(ptr noundef %64, i32 noundef 2) #17, !dbg !5620
  call void @llvm.lifetime.end.p0(i64 8, ptr %page58) #16, !dbg !5624
  br label %if.end63, !dbg !5625

if.end63:                                         ; preds = %if.then57, %err_out
  %65 = load i32, ptr %got_gatt, align 4, !dbg !5626
  %tobool64 = icmp ne i32 %65, 0, !dbg !5626
  br i1 %tobool64, label %if.then65, label %if.end68, !dbg !5628

if.then65:                                        ; preds = %if.end63
  %66 = load ptr, ptr %bridge.addr, align 8, !dbg !5629
  %driver66 = getelementptr inbounds %struct.agp_bridge_data, ptr %66, i32 0, i32 1, !dbg !5630
  %67 = load ptr, ptr %driver66, align 8, !dbg !5630
  %free_gatt_table = getelementptr inbounds %struct.agp_bridge_driver, ptr %67, i32 0, i32 15, !dbg !5631
  %68 = load ptr, ptr %free_gatt_table, align 8, !dbg !5631
  %69 = load ptr, ptr %bridge.addr, align 8, !dbg !5632
  %call67 = call i32 %68(ptr noundef %69) #17, !dbg !5629
  br label %if.end68, !dbg !5629

if.end68:                                         ; preds = %if.then65, %if.end63
  %70 = load i32, ptr %got_keylist, align 4, !dbg !5633
  %tobool69 = icmp ne i32 %70, 0, !dbg !5633
  br i1 %tobool69, label %if.then70, label %if.end73, !dbg !5635

if.then70:                                        ; preds = %if.end68
  %71 = load ptr, ptr %bridge.addr, align 8, !dbg !5636
  %key_list71 = getelementptr inbounds %struct.agp_bridge_data, ptr %71, i32 0, i32 16, !dbg !5638
  %72 = load ptr, ptr %key_list71, align 8, !dbg !5638
  call void @vfree(ptr noundef %72) #17, !dbg !5639
  %73 = load ptr, ptr %bridge.addr, align 8, !dbg !5640
  %key_list72 = getelementptr inbounds %struct.agp_bridge_data, ptr %73, i32 0, i32 16, !dbg !5641
  store ptr null, ptr %key_list72, align 8, !dbg !5642
  br label %if.end73, !dbg !5643

if.end73:                                         ; preds = %if.then70, %if.end68
  %74 = load i32, ptr %rc, align 4, !dbg !5644
  store i32 %74, ptr %retval, align 4, !dbg !5645
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !5645

cleanup74:                                        ; preds = %if.end73, %do.end53, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %got_keylist) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 4, ptr %got_gatt) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 4, ptr %size_value) #16, !dbg !5646
  %75 = load i32, ptr %retval, align 4, !dbg !5646
  ret i32 %75, !dbg !5646
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @agp_frontend_initialize() #6 align 16 !dbg !5647 {
entry:
  ret i32 0, !dbg !5648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !5649 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5653, metadata !DIExpression()), !dbg !5655
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5654, metadata !DIExpression()), !dbg !5656
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5657
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5658
  %2 = load ptr, ptr %head.addr, align 8, !dbg !5659
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !5660
  %3 = load ptr, ptr %next, align 8, !dbg !5660
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !5661
  ret void, !dbg !5662
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @agp_backend_cleanup(ptr noundef %bridge) #1 align 16 !dbg !5663 {
entry:
  %bridge.addr = alloca ptr, align 8
  %page = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5665, metadata !DIExpression()), !dbg !5669
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !5670
  %driver = getelementptr inbounds %struct.agp_bridge_data, ptr %0, i32 0, i32 1, !dbg !5672
  %1 = load ptr, ptr %driver, align 8, !dbg !5672
  %cleanup = getelementptr inbounds %struct.agp_bridge_driver, ptr %1, i32 0, i32 10, !dbg !5673
  %2 = load ptr, ptr %cleanup, align 8, !dbg !5673
  %tobool = icmp ne ptr %2, null, !dbg !5670
  br i1 %tobool, label %if.then, label %if.end, !dbg !5674

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %bridge.addr, align 8, !dbg !5675
  %driver1 = getelementptr inbounds %struct.agp_bridge_data, ptr %3, i32 0, i32 1, !dbg !5676
  %4 = load ptr, ptr %driver1, align 8, !dbg !5676
  %cleanup2 = getelementptr inbounds %struct.agp_bridge_driver, ptr %4, i32 0, i32 10, !dbg !5677
  %5 = load ptr, ptr %cleanup2, align 8, !dbg !5677
  call void %5() #17, !dbg !5675
  br label %if.end, !dbg !5675

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %bridge.addr, align 8, !dbg !5678
  %driver3 = getelementptr inbounds %struct.agp_bridge_data, ptr %6, i32 0, i32 1, !dbg !5680
  %7 = load ptr, ptr %driver3, align 8, !dbg !5680
  %free_gatt_table = getelementptr inbounds %struct.agp_bridge_driver, ptr %7, i32 0, i32 15, !dbg !5681
  %8 = load ptr, ptr %free_gatt_table, align 8, !dbg !5681
  %tobool4 = icmp ne ptr %8, null, !dbg !5678
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !5682

if.then5:                                         ; preds = %if.end
  %9 = load ptr, ptr %bridge.addr, align 8, !dbg !5683
  %driver6 = getelementptr inbounds %struct.agp_bridge_data, ptr %9, i32 0, i32 1, !dbg !5684
  %10 = load ptr, ptr %driver6, align 8, !dbg !5684
  %free_gatt_table7 = getelementptr inbounds %struct.agp_bridge_driver, ptr %10, i32 0, i32 15, !dbg !5685
  %11 = load ptr, ptr %free_gatt_table7, align 8, !dbg !5685
  %12 = load ptr, ptr %bridge.addr, align 8, !dbg !5686
  %call = call i32 %11(ptr noundef %12) #17, !dbg !5683
  br label %if.end8, !dbg !5683

if.end8:                                          ; preds = %if.then5, %if.end
  %13 = load ptr, ptr %bridge.addr, align 8, !dbg !5687
  %key_list = getelementptr inbounds %struct.agp_bridge_data, ptr %13, i32 0, i32 16, !dbg !5688
  %14 = load ptr, ptr %key_list, align 8, !dbg !5688
  call void @vfree(ptr noundef %14) #17, !dbg !5689
  %15 = load ptr, ptr %bridge.addr, align 8, !dbg !5690
  %key_list9 = getelementptr inbounds %struct.agp_bridge_data, ptr %15, i32 0, i32 16, !dbg !5691
  store ptr null, ptr %key_list9, align 8, !dbg !5692
  %16 = load ptr, ptr %bridge.addr, align 8, !dbg !5693
  %driver10 = getelementptr inbounds %struct.agp_bridge_data, ptr %16, i32 0, i32 1, !dbg !5694
  %17 = load ptr, ptr %driver10, align 8, !dbg !5694
  %agp_destroy_page = getelementptr inbounds %struct.agp_bridge_driver, ptr %17, i32 0, i32 22, !dbg !5695
  %18 = load ptr, ptr %agp_destroy_page, align 8, !dbg !5695
  %tobool11 = icmp ne ptr %18, null, !dbg !5693
  br i1 %tobool11, label %land.lhs.true, label %if.end19, !dbg !5696

land.lhs.true:                                    ; preds = %if.end8
  %19 = load ptr, ptr %bridge.addr, align 8, !dbg !5697
  %driver12 = getelementptr inbounds %struct.agp_bridge_data, ptr %19, i32 0, i32 1, !dbg !5698
  %20 = load ptr, ptr %driver12, align 8, !dbg !5698
  %needs_scratch_page = getelementptr inbounds %struct.agp_bridge_driver, ptr %20, i32 0, i32 5, !dbg !5699
  %21 = load i8, ptr %needs_scratch_page, align 1, !dbg !5699, !range !5506, !noundef !1132
  %tobool13 = trunc i8 %21 to i1, !dbg !5699
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !5700

if.then14:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %page) #16, !dbg !5701
  call void @llvm.dbg.declare(metadata ptr %page, metadata !5666, metadata !DIExpression()), !dbg !5702
  %22 = load ptr, ptr %bridge.addr, align 8, !dbg !5703
  %scratch_page_page = getelementptr inbounds %struct.agp_bridge_data, ptr %22, i32 0, i32 10, !dbg !5704
  %23 = load ptr, ptr %scratch_page_page, align 8, !dbg !5704
  store ptr %23, ptr %page, align 8, !dbg !5702
  %24 = load ptr, ptr %bridge.addr, align 8, !dbg !5705
  %driver15 = getelementptr inbounds %struct.agp_bridge_data, ptr %24, i32 0, i32 1, !dbg !5706
  %25 = load ptr, ptr %driver15, align 8, !dbg !5706
  %agp_destroy_page16 = getelementptr inbounds %struct.agp_bridge_driver, ptr %25, i32 0, i32 22, !dbg !5707
  %26 = load ptr, ptr %agp_destroy_page16, align 8, !dbg !5707
  %27 = load ptr, ptr %page, align 8, !dbg !5708
  call void %26(ptr noundef %27, i32 noundef 1) #17, !dbg !5705
  %28 = load ptr, ptr %bridge.addr, align 8, !dbg !5709
  %driver17 = getelementptr inbounds %struct.agp_bridge_data, ptr %28, i32 0, i32 1, !dbg !5710
  %29 = load ptr, ptr %driver17, align 8, !dbg !5710
  %agp_destroy_page18 = getelementptr inbounds %struct.agp_bridge_driver, ptr %29, i32 0, i32 22, !dbg !5711
  %30 = load ptr, ptr %agp_destroy_page18, align 8, !dbg !5711
  %31 = load ptr, ptr %page, align 8, !dbg !5712
  call void %30(ptr noundef %31, i32 noundef 2) #17, !dbg !5709
  call void @llvm.lifetime.end.p0(i64 8, ptr %page) #16, !dbg !5713
  br label %if.end19, !dbg !5714

if.end19:                                         ; preds = %if.then14, %land.lhs.true, %if.end8
  ret void, !dbg !5715
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5716 dso_local void @module_put(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @agp_remove_bridge(ptr noundef %bridge) #1 align 16 !dbg !5717 {
entry:
  %bridge.addr = alloca ptr, align 8
  store ptr %bridge, ptr %bridge.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bridge.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  %0 = load ptr, ptr %bridge.addr, align 8, !dbg !5721
  call void @agp_backend_cleanup(ptr noundef %0) #17, !dbg !5722
  %1 = load ptr, ptr %bridge.addr, align 8, !dbg !5723
  %list = getelementptr inbounds %struct.agp_bridge_data, ptr %1, i32 0, i32 25, !dbg !5724
  call void @list_del(ptr noundef %list) #17, !dbg !5725
  %call = call i32 @list_empty(ptr noundef @agp_bridges) #17, !dbg !5726
  %tobool = icmp ne i32 %call, 0, !dbg !5726
  br i1 %tobool, label %if.then, label %if.end, !dbg !5728

if.then:                                          ; preds = %entry
  call void @agp_frontend_cleanup() #17, !dbg !5729
  br label %if.end, !dbg !5729

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %bridge.addr, align 8, !dbg !5730
  %driver = getelementptr inbounds %struct.agp_bridge_data, ptr %2, i32 0, i32 1, !dbg !5731
  %3 = load ptr, ptr %driver, align 8, !dbg !5731
  %owner = getelementptr inbounds %struct.agp_bridge_driver, ptr %3, i32 0, i32 0, !dbg !5732
  %4 = load ptr, ptr %owner, align 8, !dbg !5732
  call void @module_put(ptr noundef %4) #17, !dbg !5733
  ret void, !dbg !5734
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !5735 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5741
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5742
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5743
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5744
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !5745
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !5746
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !5747
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5748
  ret void, !dbg !5749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @agp_frontend_cleanup() #6 align 16 !dbg !5750 {
entry:
  ret void, !dbg !5751
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @agp_exit() #8 section ".exit.text" align 16 !dbg !5752 {
entry:
  ret void, !dbg !5753
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @agp_setup(ptr noundef %s) #8 section ".init.text" align 16 !dbg !5754 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5756, metadata !DIExpression()), !dbg !5757
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5758
  %call = call i32 @strcmp(ptr noundef %0, ptr noundef @.str.11) #17, !dbg !5760
  %tobool = icmp ne i32 %call, 0, !dbg !5760
  br i1 %tobool, label %if.end, label %if.then, !dbg !5761

if.then:                                          ; preds = %entry
  store i32 1, ptr @agp_off, align 4, !dbg !5762
  br label %if.end, !dbg !5763

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %s.addr, align 8, !dbg !5764
  %call1 = call i32 @strcmp(ptr noundef %1, ptr noundef @.str.12) #17, !dbg !5766
  %tobool2 = icmp ne i32 %call1, 0, !dbg !5766
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5767

if.then3:                                         ; preds = %if.end
  store i32 1, ptr @agp_try_unsupported_boot, align 4, !dbg !5768
  br label %if.end4, !dbg !5769

if.end4:                                          ; preds = %if.then3, %if.end
  ret i32 1, !dbg !5770
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_agpgart__339_366_agp_init6() #8 section ".init.text" align 16 !dbg !5771 {
entry:
  %call = call i32 @agp_init() #19, !dbg !5772
  ret i32 %call, !dbg !5772
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @agp_init() #8 section ".init.text" align 16 !dbg !5773 {
entry:
  %tmp = alloca i32, align 4
  %0 = load i32, ptr @agp_off, align 4, !dbg !5774
  %tobool = icmp ne i32 %0, 0, !dbg !5774
  br i1 %tobool, label %if.end, label %if.then, !dbg !5776

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5777

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5779

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, i32 noundef 0, i32 noundef 103) #19, !dbg !5777
  store i32 %call, ptr %tmp, align 4, !dbg !5779
  %1 = load i32, ptr %tmp, align 4, !dbg !5777
  br label %if.end, !dbg !5781

if.end:                                           ; preds = %do.end, %entry
  ret i32 0, !dbg !5782
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5783 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5791, metadata !DIExpression()), !dbg !5793
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5792, metadata !DIExpression()), !dbg !5794
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5795
  %1 = load i64, ptr %size.addr, align 8, !dbg !5796
  %conv = trunc i64 %1 to i32, !dbg !5796
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !5797
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5798
  %3 = load i64, ptr %size.addr, align 8, !dbg !5798
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !5798
  ret void, !dbg !5799
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !5800 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5803, metadata !DIExpression()), !dbg !5804
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5805
  %call = call i32 @arch_atomic_read(ptr noundef %0) #17, !dbg !5806
  ret i32 %call, !dbg !5807
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5808 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5813, metadata !DIExpression()), !dbg !5815
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5814, metadata !DIExpression()), !dbg !5816
  ret i1 true, !dbg !5817
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !5818 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5823, metadata !DIExpression()), !dbg !5826
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5824, metadata !DIExpression()), !dbg !5827
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5825, metadata !DIExpression()), !dbg !5828
  ret void, !dbg !5829
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !5830 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5833, metadata !DIExpression()), !dbg !5834
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5835
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5835
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5835
  ret i32 %1, !dbg !5836
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !5837 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5839, metadata !DIExpression()), !dbg !5841
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5840, metadata !DIExpression()), !dbg !5842
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5843
  %1 = load i64, ptr %size.addr, align 8, !dbg !5844
  %conv = trunc i64 %1 to i32, !dbg !5844
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !5845
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5846
  %3 = load i64, ptr %size.addr, align 8, !dbg !5846
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #17, !dbg !5846
  ret void, !dbg !5847
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_inc(ptr noundef %v) #4 align 16 !dbg !5848 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5850, metadata !DIExpression()), !dbg !5851
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5852
  call void @arch_atomic_inc(ptr noundef %0) #17, !dbg !5853
  ret void, !dbg !5854
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !5855 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5857, metadata !DIExpression()), !dbg !5859
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5858, metadata !DIExpression()), !dbg !5860
  ret i1 true, !dbg !5861
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_inc(ptr noundef %v) #4 align 16 !dbg !5862 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5864, metadata !DIExpression()), !dbg !5865
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5866
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5867
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !5868, !srcloc !5869
  ret void, !dbg !5870
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_dec(ptr noundef %v) #4 align 16 !dbg !5871 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5873, metadata !DIExpression()), !dbg !5874
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5875
  call void @arch_atomic_dec(ptr noundef %0) #17, !dbg !5876
  ret void, !dbg !5877
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_dec(ptr noundef %v) #4 align 16 !dbg !5878 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5882
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5883
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; decl $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, ptr elementtype(i32) %counter) #16, !dbg !5884, !srcloc !5885
  ret void, !dbg !5886
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !5887 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5889, metadata !DIExpression()), !dbg !5894
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5890, metadata !DIExpression()), !dbg !5895
  %0 = load i64, ptr %size.addr, align 8, !dbg !5896
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5897
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5898

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5899
  %tobool = icmp ne i64 %2, 0, !dbg !5899
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5900

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5901
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5891, metadata !DIExpression()), !dbg !5902
  %3 = load i64, ptr %size.addr, align 8, !dbg !5903
  %cmp = icmp ugt i64 %3, 8192, !dbg !5905
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5906

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5907
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5908
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !5909
  store ptr %call, ptr %retval, align 8, !dbg !5910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5910

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5911
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !5911
  store i32 %call2, ptr %index, align 4, !dbg !5912
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5913
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5914
  %9 = ptrtoint ptr %8 to i64, !dbg !5914
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !5915
  %idxprom = zext i32 %call3 to i64, !dbg !5916
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5916
  %10 = load i32, ptr %index, align 4, !dbg !5917
  %idxprom4 = zext i32 %10 to i64, !dbg !5916
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5916
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5916
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5918
  %13 = load i64, ptr %size.addr, align 8, !dbg !5919
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !5920
  store ptr %call6, ptr %retval, align 8, !dbg !5921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5921

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5922
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5923
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5924
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !5925
  store ptr %call8, ptr %retval, align 8, !dbg !5926
  br label %return, !dbg !5926

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5927
  ret ptr %16, !dbg !5927
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5928 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !5929 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5933, metadata !DIExpression()), !dbg !5935
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5934, metadata !DIExpression()), !dbg !5936
  %0 = load i64, ptr %size.addr, align 8, !dbg !5937
  %tobool = icmp ne i64 %0, 0, !dbg !5937
  br i1 %tobool, label %if.end, label %if.then, !dbg !5939

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5940
  br label %return, !dbg !5940

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5941
  %cmp = icmp ule i64 %1, 8, !dbg !5943
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5944

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5945
  br label %return, !dbg !5945

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5946
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5948
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5949

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5950
  %cmp4 = icmp ule i64 %3, 96, !dbg !5951
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5952

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5953
  br label %return, !dbg !5953

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5954
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5956
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5957

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5958
  %cmp9 = icmp ule i64 %5, 192, !dbg !5959
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5960

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5961
  br label %return, !dbg !5961

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5962
  %cmp12 = icmp ule i64 %6, 8, !dbg !5964
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5965

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5966
  br label %return, !dbg !5966

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5967
  %cmp15 = icmp ule i64 %7, 16, !dbg !5969
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5970

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5971
  br label %return, !dbg !5971

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5972
  %cmp18 = icmp ule i64 %8, 32, !dbg !5974
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5975

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5976
  br label %return, !dbg !5976

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5977
  %cmp21 = icmp ule i64 %9, 64, !dbg !5979
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5980

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5981
  br label %return, !dbg !5981

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5982
  %cmp24 = icmp ule i64 %10, 128, !dbg !5984
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5985

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5986
  br label %return, !dbg !5986

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5987
  %cmp27 = icmp ule i64 %11, 256, !dbg !5989
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5990

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5991
  br label %return, !dbg !5991

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5992
  %cmp30 = icmp ule i64 %12, 512, !dbg !5994
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5995

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5996
  br label %return, !dbg !5996

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5997
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5999
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6000

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6001
  br label %return, !dbg !6001

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6002
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6004
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6005

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6006
  br label %return, !dbg !6006

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6007
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6009
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6010

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6011
  br label %return, !dbg !6011

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6012
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6014
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6015

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6016
  br label %return, !dbg !6016

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6017
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6019
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6020

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6021
  br label %return, !dbg !6021

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6022
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6024
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6025

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6026
  br label %return, !dbg !6026

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6027
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6029
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6030

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6031
  br label %return, !dbg !6031

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6032
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6034
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6035

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6036
  br label %return, !dbg !6036

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6037
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6039
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6040

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6041
  br label %return, !dbg !6041

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6042
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6044
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6045

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6047
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6049
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6050

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6051
  br label %return, !dbg !6051

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6052
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6054
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6055

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6056
  br label %return, !dbg !6056

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6057, !range !5506, !noundef !1132
  %tobool69 = trunc i8 %25 to i1, !dbg !6057
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6059

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6060

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #21, !dbg !6061, !srcloc !6064
  unreachable, !dbg !6061

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6065

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6066

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6067

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6069

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6067

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #16, !dbg !6071, !srcloc !6073
  br label %do.end75, !dbg !6071

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6067

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6074
  br label %return, !dbg !6074

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6075
  ret i32 %26, !dbg !6075
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6076 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6082 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6086, metadata !DIExpression()), !dbg !6088
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6087, metadata !DIExpression()), !dbg !6089
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6090
  %and = and i32 %0, 17, !dbg !6090
  %cmp = icmp eq i32 %and, 0, !dbg !6090
  %lnot = xor i1 %cmp, true, !dbg !6090
  %lnot1 = xor i1 %lnot, true, !dbg !6090
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6090
  %conv = sext i32 %lnot.ext to i64, !dbg !6090
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6090
  %tobool = icmp ne i64 %expval, 0, !dbg !6090
  br i1 %tobool, label %if.then, label %if.end, !dbg !6092

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6093
  br label %return, !dbg !6093

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6094
  %and2 = and i32 %1, 1, !dbg !6096
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6096
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6097

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6098
  br label %return, !dbg !6098

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6099
  br label %return, !dbg !6099

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6101
  ret i32 %2, !dbg !6101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6102 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6103 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6104 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6106, metadata !DIExpression()), !dbg !6108
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6107, metadata !DIExpression()), !dbg !6109
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6110
  %1 = load i64, ptr %size.addr, align 8, !dbg !6111
  %conv = trunc i64 %1 to i32, !dbg !6111
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6112
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6113
  %3 = load i64, ptr %size.addr, align 8, !dbg !6113
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6113
  ret void, !dbg !6114
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6115 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6117, metadata !DIExpression()), !dbg !6119
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6118, metadata !DIExpression()), !dbg !6120
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6121
  %1 = load i32, ptr %i.addr, align 4, !dbg !6122
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #17, !dbg !6123
  ret void, !dbg !6124
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #4 align 16 !dbg !6125 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6127, metadata !DIExpression()), !dbg !6129
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6128, metadata !DIExpression()), !dbg !6130
  br label %do.body, !dbg !6131

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !6132
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6132
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !6132
  store volatile i32 %0, ptr %counter, align 4, !dbg !6132
  br label %do.end, !dbg !6132

do.end:                                           ; preds = %do.body
  ret void, !dbg !6134
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @agp_find_max() #1 align 16 !dbg !6135 {
entry:
  %memory = alloca i64, align 8
  %index = alloca i64, align 8
  %result = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %memory) #16, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %memory, metadata !6137, metadata !DIExpression()), !dbg !6141
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #16, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6138, metadata !DIExpression()), !dbg !6142
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #16, !dbg !6140
  call void @llvm.dbg.declare(metadata ptr %result, metadata !6139, metadata !DIExpression()), !dbg !6143
  %call = call i64 @totalram_pages() #17, !dbg !6144
  %shr = lshr i64 %call, 8, !dbg !6145
  store i64 %shr, ptr %memory, align 8, !dbg !6146
  store i64 1, ptr %index, align 8, !dbg !6147
  br label %while.cond, !dbg !6148

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %memory, align 8, !dbg !6149
  %1 = load i64, ptr %index, align 8, !dbg !6150
  %arrayidx = getelementptr [9 x %struct.anon.14], ptr @maxes_table, i64 0, i64 %1, !dbg !6151
  %mem = getelementptr inbounds %struct.anon.14, ptr %arrayidx, i32 0, i32 0, !dbg !6152
  %2 = load i32, ptr %mem, align 8, !dbg !6152
  %conv = sext i32 %2 to i64, !dbg !6151
  %cmp = icmp sgt i64 %0, %conv, !dbg !6153
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6154

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, ptr %index, align 8, !dbg !6155
  %cmp2 = icmp slt i64 %3, 8, !dbg !6156
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !6157
  br i1 %4, label %while.body, label %while.end, !dbg !6148

while.body:                                       ; preds = %land.end
  %5 = load i64, ptr %index, align 8, !dbg !6158
  %inc = add i64 %5, 1, !dbg !6158
  store i64 %inc, ptr %index, align 8, !dbg !6158
  br label %while.cond, !dbg !6148, !llvm.loop !6159

while.end:                                        ; preds = %land.end
  %6 = load i64, ptr %index, align 8, !dbg !6162
  %sub = sub i64 %6, 1, !dbg !6163
  %arrayidx4 = getelementptr [9 x %struct.anon.14], ptr @maxes_table, i64 0, i64 %sub, !dbg !6164
  %agp = getelementptr inbounds %struct.anon.14, ptr %arrayidx4, i32 0, i32 1, !dbg !6165
  %7 = load i32, ptr %agp, align 4, !dbg !6165
  %conv5 = sext i32 %7 to i64, !dbg !6164
  %8 = load i64, ptr %memory, align 8, !dbg !6166
  %9 = load i64, ptr %index, align 8, !dbg !6167
  %sub6 = sub i64 %9, 1, !dbg !6168
  %arrayidx7 = getelementptr [9 x %struct.anon.14], ptr @maxes_table, i64 0, i64 %sub6, !dbg !6169
  %mem8 = getelementptr inbounds %struct.anon.14, ptr %arrayidx7, i32 0, i32 0, !dbg !6170
  %10 = load i32, ptr %mem8, align 8, !dbg !6170
  %conv9 = sext i32 %10 to i64, !dbg !6169
  %sub10 = sub i64 %8, %conv9, !dbg !6171
  %11 = load i64, ptr %index, align 8, !dbg !6172
  %arrayidx11 = getelementptr [9 x %struct.anon.14], ptr @maxes_table, i64 0, i64 %11, !dbg !6173
  %agp12 = getelementptr inbounds %struct.anon.14, ptr %arrayidx11, i32 0, i32 1, !dbg !6174
  %12 = load i32, ptr %agp12, align 4, !dbg !6174
  %13 = load i64, ptr %index, align 8, !dbg !6175
  %sub13 = sub i64 %13, 1, !dbg !6176
  %arrayidx14 = getelementptr [9 x %struct.anon.14], ptr @maxes_table, i64 0, i64 %sub13, !dbg !6177
  %agp15 = getelementptr inbounds %struct.anon.14, ptr %arrayidx14, i32 0, i32 1, !dbg !6178
  %14 = load i32, ptr %agp15, align 4, !dbg !6178
  %sub16 = sub i32 %12, %14, !dbg !6179
  %conv17 = sext i32 %sub16 to i64, !dbg !6180
  %mul = mul i64 %sub10, %conv17, !dbg !6181
  %15 = load i64, ptr %index, align 8, !dbg !6182
  %arrayidx18 = getelementptr [9 x %struct.anon.14], ptr @maxes_table, i64 0, i64 %15, !dbg !6183
  %mem19 = getelementptr inbounds %struct.anon.14, ptr %arrayidx18, i32 0, i32 0, !dbg !6184
  %16 = load i32, ptr %mem19, align 8, !dbg !6184
  %17 = load i64, ptr %index, align 8, !dbg !6185
  %sub20 = sub i64 %17, 1, !dbg !6186
  %arrayidx21 = getelementptr [9 x %struct.anon.14], ptr @maxes_table, i64 0, i64 %sub20, !dbg !6187
  %mem22 = getelementptr inbounds %struct.anon.14, ptr %arrayidx21, i32 0, i32 0, !dbg !6188
  %18 = load i32, ptr %mem22, align 8, !dbg !6188
  %sub23 = sub i32 %16, %18, !dbg !6189
  %conv24 = sext i32 %sub23 to i64, !dbg !6190
  %div = sdiv i64 %mul, %conv24, !dbg !6191
  %add = add i64 %conv5, %div, !dbg !6192
  store i64 %add, ptr %result, align 8, !dbg !6193
  %19 = load i64, ptr %result, align 8, !dbg !6194
  %shl = shl i64 %19, 8, !dbg !6195
  store i64 %shl, ptr %result, align 8, !dbg !6196
  %20 = load i64, ptr %result, align 8, !dbg !6197
  %conv25 = trunc i64 %20 to i32, !dbg !6197
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #16, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #16, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %memory) #16, !dbg !6198
  ret i32 %conv25, !dbg !6199
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6200 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6201 dso_local noalias ptr @vzalloc(i64 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !6204 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6206, metadata !DIExpression()), !dbg !6207
  br label %do.body, !dbg !6208

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6209

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6211

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6209

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6213
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6213
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6213
  store volatile ptr %0, ptr %next, align 8, !dbg !6213
  br label %do.end3, !dbg !6213

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6209

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6215

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6216

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6218

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6216

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6220
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6220
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6220
  store volatile ptr %2, ptr %prev, align 8, !dbg !6220
  br label %do.end9, !dbg !6220

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6216

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6222
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !6223 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6229, metadata !DIExpression()), !dbg !6230
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6231
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6232
  ret ptr %1, !dbg !6233
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6234 dso_local void @vfree(ptr noundef) #0

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @totalram_pages() #6 align 16 !dbg !6235 {
entry:
  %call = call i64 @atomic_long_read(ptr noundef @_totalram_pages) #17, !dbg !6238
  ret i64 %call, !dbg !6239
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #4 align 16 !dbg !6240 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6246, metadata !DIExpression()), !dbg !6247
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6248
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #17, !dbg !6249
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6250
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #17, !dbg !6251
  ret i64 %call, !dbg !6252
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #4 align 16 !dbg !6253 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6255, metadata !DIExpression()), !dbg !6256
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6257
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #17, !dbg !6258
  ret i64 %call, !dbg !6259
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #4 align 16 !dbg !6260 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6266, metadata !DIExpression()), !dbg !6267
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6268
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #17, !dbg !6269
  ret i64 %call, !dbg !6270
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #4 align 16 !dbg !6271 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6276
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !6276
  %1 = load volatile i64, ptr %counter, align 8, !dbg !6276
  ret i64 %1, !dbg !6277
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6278 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6282, metadata !DIExpression()), !dbg !6285
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6283, metadata !DIExpression()), !dbg !6286
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6284, metadata !DIExpression()), !dbg !6287
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6288
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6290
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6291
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6292
  br i1 %call, label %if.end, label %if.then, !dbg !6293

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6294

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6295
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6296
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6297
  store ptr %3, ptr %prev1, align 8, !dbg !6298
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6299
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6300
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6301
  store ptr %5, ptr %next2, align 8, !dbg !6302
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6303
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6304
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6305
  store ptr %7, ptr %prev3, align 8, !dbg !6306
  br label %do.body, !dbg !6307

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6308

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6310

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6308

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6312
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6312
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6312
  store volatile ptr %9, ptr %next6, align 8, !dbg !6312
  br label %do.end7, !dbg !6312

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6308

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6315 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6319, metadata !DIExpression()), !dbg !6322
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6320, metadata !DIExpression()), !dbg !6323
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6321, metadata !DIExpression()), !dbg !6324
  ret i1 true, !dbg !6325
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !6326 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6328, metadata !DIExpression()), !dbg !6329
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6330
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6332
  br i1 %call, label %if.end, label %if.then, !dbg !6333

if.then:                                          ; preds = %entry
  br label %return, !dbg !6334

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6335
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6336
  %2 = load ptr, ptr %prev, align 8, !dbg !6336
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6337
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6338
  %4 = load ptr, ptr %next, align 8, !dbg !6338
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6339
  br label %return, !dbg !6340

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6340
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !6341 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  ret i1 true, !dbg !6347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6348 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6350, metadata !DIExpression()), !dbg !6352
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6351, metadata !DIExpression()), !dbg !6353
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6354
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6355
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6356
  store ptr %0, ptr %prev1, align 8, !dbg !6357
  br label %do.body, !dbg !6358

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6359

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6361

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6359

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6363
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6363
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6363
  store volatile ptr %2, ptr %next4, align 8, !dbg !6363
  br label %do.end5, !dbg !6363

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6359

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6365
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6366 dso_local i32 @strcmp(ptr noundef, ptr noundef) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5206, !5207, !5208, !5209, !5210, !5211, !5212, !5213}
!llvm.ident = !{!5214}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "agp_find_bridge", scope: !2, file: !3, line: 54, type: !5203, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/char/agp/.backend.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/char/agp/agpgart\22 -D KBUILD_BASENAME=\22backend\22 -D KBUILD_MODNAME=\22agpgart\22 -D __KBUILD_MODNAME=kmod_agpgart -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/char/agp/backend.ll drivers/char/agp/backend.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !169, globals: !4156, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/agp/backend.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ada3d7caf3c1a024905a980e90bc28f4")
!4 = !{!5, !13, !18, !24, !29, !37, !45, !61, !67, !74, !81, !87, !95, !101, !108, !116, !124, !133, !138, !143, !149, !154, !159}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !38, line: 68, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!43 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !46, line: 1325, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!48 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!49 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!50 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!51 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!52 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!53 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!54 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!55 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!56 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!57 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!58 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!59 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!60 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "aper_size_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "drivers/char/agp/agp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "800c062457c8bfdfd4ad815562b2a511")
!89 = !{!90, !91, !92, !93, !94}
!90 = !DIEnumerator(name: "U8_APER_SIZE", value: 0)
!91 = !DIEnumerator(name: "U16_APER_SIZE", value: 1)
!92 = !DIEnumerator(name: "U32_APER_SIZE", value: 2)
!93 = !DIEnumerator(name: "LVL2_APER_SIZE", value: 3)
!94 = !DIEnumerator(name: "FIXED_APER_SIZE", value: 4)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !96, line: 45, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!99 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!100 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !102, line: 487, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!105 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!106 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!107 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !109, line: 620, baseType: !7, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!112 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!113 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!114 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!115 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !109, line: 597, baseType: !117, size: 32, elements: !118)
!117 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!118 = !{!119, !120, !121, !122, !123}
!119 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!120 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!121 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!122 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!123 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!124 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !102, line: 547, baseType: !7, size: 32, elements: !125)
!125 = !{!126, !127, !128, !129, !130, !131, !132}
!126 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!127 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!128 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!129 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!130 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!131 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!132 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !102, line: 564, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!136 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!137 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !102, line: 577, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142}
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!141 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!142 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!143 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !102, line: 503, baseType: !7, size: 32, elements: !144)
!144 = !{!145, !146, !147, !148}
!145 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!147 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!148 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chipset_type", file: !150, line: 35, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/agp_backend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c30f66ee89c16f982581c9aa2ca6c9f")
!151 = !{!152, !153}
!152 = !DIEnumerator(name: "NOT_SUPPORTED", value: 0)
!153 = !DIEnumerator(name: "SUPPORTED", value: 1)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !155, line: 10, baseType: !7, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!156 = !{!157, !158}
!157 = !DIEnumerator(name: "false", value: 0)
!158 = !DIEnumerator(name: "true", value: 1)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !160, line: 364, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!161 = !{!162, !163, !164, !165, !166, !167, !168}
!162 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!163 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!164 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!165 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!166 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!167 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!168 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!169 = !{!170, !171, !173, !176, !177, !178, !186, !192, !4152, !4155}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !172, line: 154, baseType: !7)
!172 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !117)
!176 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !172, line: 190, size: 128, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !172, line: 191, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !172, line: 191, baseType: !181, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !172, line: 149, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !188, line: 23, baseType: !189)
!188 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !190, line: 31, baseType: !191)
!190 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!191 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !46, line: 74, size: 512, align: 128, elements: !194)
!194 = !{!195, !196, !4146, !4151}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !193, file: !46, line: 75, baseType: !176, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !46, line: 83, baseType: !197, size: 320, offset: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !46, line: 83, size: 320, elements: !198)
!198 = !{!199, !4052, !4066, !4070, !4145}
!199 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !46, line: 84, baseType: !200, size: 320)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !46, line: 84, size: 320, elements: !201)
!201 = !{!202, !213, !4046, !4051}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !46, line: 90, baseType: !203, size: 128)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !46, line: 90, size: 128, elements: !204)
!204 = !{!205, !206, !211, !212}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !203, file: !46, line: 91, baseType: !182, size: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !46, line: 94, baseType: !207, size: 128)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !46, line: 94, size: 128, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !207, file: !46, line: 96, baseType: !170, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !207, file: !46, line: 98, baseType: !7, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !203, file: !46, line: 102, baseType: !182, size: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !203, file: !46, line: 103, baseType: !182, size: 128)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !200, file: !46, line: 106, baseType: !214, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !216)
!216 = !{!217, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !4040, !4041, !4042, !4043, !4044, !4045}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !215, file: !14, line: 473, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !220)
!220 = !{!221, !224, !225, !234, !235, !242, !243, !246, !247, !3875, !3876, !3877, !3878, !3879, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3902, !3903, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3919, !3922, !3923, !3924, !3933, !3934, !3935, !3936}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !219, file: !14, line: 642, baseType: !222, size: 16)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !172, line: 24, baseType: !223)
!223 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !219, file: !14, line: 643, baseType: !223, size: 16, offset: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !219, file: !14, line: 644, baseType: !226, size: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !227, line: 23, baseType: !228)
!227 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 21, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !228, file: !227, line: 22, baseType: !231, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !172, line: 37, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !233, line: 49, baseType: !7)
!233 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !219, file: !14, line: 645, baseType: !182, size: 128, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !219, file: !14, line: 646, baseType: !236, size: 32, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !227, line: 28, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 26, size: 32, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !237, file: !227, line: 27, baseType: !240, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !172, line: 38, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !233, line: 50, baseType: !7)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !219, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !219, file: !14, line: 650, baseType: !244, size: 64, offset: 256)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !219, file: !14, line: 651, baseType: !244, size: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !219, file: !14, line: 654, baseType: !248, size: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !251)
!251 = !{!252, !3703, !3713, !3717, !3721, !3725, !3729, !3733, !3737, !3741, !3745, !3746, !3750, !3754, !3791, !3820, !3824, !3830, !3834, !3838, !3842, !3846, !3850, !3856, !3860}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !250, file: !14, line: 1967, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!256, !218, !256, !7}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !258, line: 82, size: 1536, elements: !259)
!258 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!259 = !{!260, !261, !271, !279, !280, !298, !299, !303, !354, !3686, !3687, !3688, !3689, !3695, !3696, !3697}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !257, file: !258, line: 84, baseType: !7, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !257, file: !258, line: 85, baseType: !262, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !263, line: 275, baseType: !264)
!263 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !263, line: 275, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !264, file: !263, line: 275, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !263, line: 69, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !263, line: 64, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !268, file: !263, line: 65, baseType: !7, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !257, file: !258, line: 86, baseType: !272, size: 128, offset: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !273, line: 38, size: 128, elements: !274)
!273 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!274 = !{!275, !277}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !273, line: 39, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !272, file: !273, line: 39, baseType: !278, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !257, file: !258, line: 87, baseType: !256, size: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !257, file: !258, line: 88, baseType: !281, size: 128, offset: 256)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !258, line: 49, size: 128, elements: !282)
!282 = !{!283, !294}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !258, line: 50, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !258, line: 50, size: 64, elements: !285)
!285 = !{!286, !293}
!286 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !258, line: 51, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !258, line: 51, size: 64, elements: !288)
!288 = !{!289, !292}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !287, file: !258, line: 52, baseType: !290, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !188, line: 21, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !190, line: 27, baseType: !7)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !287, file: !258, line: 52, baseType: !290, size: 32, offset: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !284, file: !258, line: 54, baseType: !187, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !281, file: !258, line: 56, baseType: !295, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !257, file: !258, line: 89, baseType: !218, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !257, file: !258, line: 91, baseType: !300, size: 256, offset: 448)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !257, file: !258, line: 94, baseType: !304, size: 64, offset: 704)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !305, line: 25, size: 64, elements: !306)
!305 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !305, line: 26, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !305, line: 26, size: 64, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !308, file: !305, line: 28, baseType: !189, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, scope: !308, file: !305, line: 30, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !305, line: 30, size: 64, elements: !313)
!313 = !{!314, !353}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !312, file: !305, line: 31, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !316, line: 29, baseType: !317)
!316 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !316, line: 17, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !316, line: 18, baseType: !320, size: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !316, line: 18, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !320, file: !316, line: 19, baseType: !323, size: 32)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !324, line: 14, size: 32, elements: !325)
!324 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !323, file: !324, line: 15, baseType: !327, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !328, line: 44, baseType: !329)
!328 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !328, line: 14, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !329, file: !328, line: 15, baseType: !332, size: 32)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !329, file: !328, line: 15, size: 32, elements: !333)
!333 = !{!334, !339, !346}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !332, file: !328, line: 16, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !172, line: 174, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 172, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !336, file: !172, line: 173, baseType: !117, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !328, line: 24, baseType: !340, size: 16)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !328, line: 24, size: 16, elements: !341)
!341 = !{!342, !345}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !340, file: !328, line: 25, baseType: !343, size: 8)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !188, line: 17, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !190, line: 21, baseType: !297)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !340, file: !328, line: 26, baseType: !343, size: 8, offset: 8)
!346 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !328, line: 28, baseType: !347, size: 32)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !328, line: 28, size: 32, elements: !348)
!348 = !{!349, !352}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !347, file: !328, line: 29, baseType: !350, size: 16)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !188, line: 19, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !190, line: 24, baseType: !223)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !347, file: !328, line: 30, baseType: !350, size: 16, offset: 16)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !312, file: !305, line: 32, baseType: !117, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !257, file: !258, line: 95, baseType: !355, size: 64, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !258, line: 128, size: 1024, align: 512, elements: !358)
!358 = !{!359, !363, !364, !371, !380, !384, !388, !392, !393, !397, !402, !3676, !3680}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !357, file: !258, line: 129, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!117, !256, !7}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !357, file: !258, line: 130, baseType: !360, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !357, file: !258, line: 131, baseType: !365, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!117, !368, !370}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !357, file: !258, line: 132, baseType: !372, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!117, !368, !7, !375, !378}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !357, file: !258, line: 134, baseType: !381, size: 64, offset: 256)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!117, !368}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !357, file: !258, line: 135, baseType: !385, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!117, !256}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !357, file: !258, line: 136, baseType: !389, size: 64, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !256}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !357, file: !258, line: 137, baseType: !389, size: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !357, file: !258, line: 138, baseType: !394, size: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !256, !218}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !357, file: !258, line: 139, baseType: !398, size: 64, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !256, !401, !117}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !357, file: !258, line: 140, baseType: !403, size: 64, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!406, !3675}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !408, line: 70, size: 256, elements: !409)
!408 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!409 = !{!410, !411, !3671, !3672}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !407, file: !408, line: 71, baseType: !256, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !407, file: !408, line: 72, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !414)
!414 = !{!415, !416, !419, !420, !421, !425, !2053, !2187, !2227, !2312, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2329, !2333, !2334, !2337, !2340, !2343, !2346, !2347, !2348, !2389, !3604, !3605, !3606, !3607, !3608, !3609, !3612, !3614, !3621, !3622, !3623, !3624, !3625, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !413, file: !14, line: 1191, baseType: !182, size: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !413, file: !14, line: 1192, baseType: !417, size: 32, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !172, line: 21, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !172, line: 18, baseType: !290)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !413, file: !14, line: 1193, baseType: !297, size: 8, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !413, file: !14, line: 1194, baseType: !176, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !413, file: !14, line: 1195, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !172, line: 52, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !233, line: 88, baseType: !424)
!424 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !413, file: !14, line: 1196, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !428)
!428 = !{!429, !430, !431, !438, !442, !446, !450, !2041, !2042, !2043, !2045, !2046, !2047, !2049, !2050, !2051, !2052}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !427, file: !14, line: 2367, baseType: !375, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !427, file: !14, line: 2368, baseType: !117, size: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !427, file: !14, line: 2376, baseType: !432, size: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!117, !435}
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !437, line: 32, flags: DIFlagFwdDecl)
!437 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!438 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !427, file: !14, line: 2377, baseType: !439, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !427, file: !14, line: 2378, baseType: !443, size: 64, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!256, !426, !117, !375, !170}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !427, file: !14, line: 2380, baseType: !447, size: 64, offset: 320)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !412}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !427, file: !14, line: 2381, baseType: !451, size: 64, offset: 384)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !453)
!453 = !{!454, !455, !456, !460, !1697, !1723, !1724, !1725, !1726, !1730, !1733, !1734, !1735, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1803, !1807, !1827, !1845, !1846, !1847, !1848, !1857, !1880, !1881, !1884, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1898, !1899, !1999, !2007, !2008, !2009, !2011, !2015, !2016, !2020, !2021, !2022, !2023, !2025, !2026, !2027, !2034, !2035, !2036, !2040}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !452, file: !6, line: 403, baseType: !5, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !452, file: !6, line: 406, baseType: !182, size: 128, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !6, line: 409, baseType: !457, size: 448, offset: 192)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 448, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 56)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !452, file: !6, line: 417, baseType: !461, size: 768, offset: 640)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !462)
!462 = !{!463, !1680, !1681, !1682, !1685}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !461, file: !6, line: 46, baseType: !464, size: 512)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !465, line: 64, size: 512, elements: !466)
!465 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!466 = !{!467, !468, !469, !471, !517, !1564, !1670, !1675, !1676, !1677, !1678, !1679}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !464, file: !465, line: 65, baseType: !375, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !464, file: !465, line: 66, baseType: !182, size: 128, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !464, file: !465, line: 67, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !464, file: !465, line: 68, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !465, line: 168, size: 768, elements: !474)
!474 = !{!475, !476, !477, !478}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !473, file: !465, line: 169, baseType: !182, size: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !473, file: !465, line: 170, baseType: !315, size: 32, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !473, file: !465, line: 171, baseType: !464, size: 512, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !473, file: !465, line: 172, baseType: !479, size: 64, offset: 704)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !465, line: 133, size: 192, elements: !482)
!482 = !{!483, !490, !495}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !481, file: !465, line: 134, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!117, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !481, file: !465, line: 135, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!375, !488}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !481, file: !465, line: 136, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!117, !488, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !465, line: 125, size: 20736, elements: !502)
!502 = !{!503, !507, !511, !512, !516}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !501, file: !465, line: 126, baseType: !504, size: 192)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 192, elements: !505)
!505 = !{!506}
!506 = !DISubrange(count: 3)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !501, file: !465, line: 127, baseType: !508, size: 4096, offset: 192)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 4096, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !501, file: !465, line: 128, baseType: !117, size: 32, offset: 4288)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !501, file: !465, line: 129, baseType: !513, size: 16384, offset: 4320)
!513 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 16384, elements: !514)
!514 = !{!515}
!515 = !DISubrange(count: 2048)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !501, file: !465, line: 130, baseType: !117, size: 32, offset: 20704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !464, file: !465, line: 69, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !465, line: 116, size: 384, elements: !521)
!521 = !{!522, !526, !552, !1523, !1554, !1558}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !520, file: !465, line: 117, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !470}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !520, file: !465, line: 118, baseType: !527, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !530, line: 254, size: 128, elements: !531)
!530 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!531 = !{!532, !545}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !529, file: !530, line: 255, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!536, !470, !540, !401}
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !172, line: 66, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !233, line: 73, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !233, line: 15, baseType: !539)
!539 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !530, line: 30, size: 128, elements: !542)
!542 = !{!543, !544}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !541, file: !530, line: 31, baseType: !375, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !541, file: !530, line: 32, baseType: !222, size: 16, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !529, file: !530, line: 256, baseType: !546, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!536, !470, !540, !375, !549}
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 61, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !233, line: 72, baseType: !551)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !233, line: 16, baseType: !176)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !520, file: !465, line: 119, baseType: !553, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !530, line: 84, size: 320, elements: !557)
!557 = !{!558, !559, !563, !1519, !1521}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !556, file: !530, line: 85, baseType: !375, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !556, file: !530, line: 86, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!222, !470, !540, !117}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !556, file: !530, line: 88, baseType: !564, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!222, !470, !567, !117}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !530, line: 175, size: 512, elements: !569)
!569 = !{!570, !571, !572, !573, !577, !1514, !1515}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !568, file: !530, line: 176, baseType: !541, size: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !568, file: !530, line: 177, baseType: !549, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !568, file: !530, line: 178, baseType: !170, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !568, file: !530, line: 179, baseType: !574, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!214}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !568, file: !530, line: 180, baseType: !578, size: 64, offset: 320)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!536, !581, !470, !567, !401, !422, !549}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !583)
!583 = !{!584, !603, !604, !606, !615, !628, !629, !630, !702, !914, !923, !929, !930, !1504, !1505, !1506, !1507, !1509, !1510, !1513}
!584 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !14, line: 995, baseType: !585, size: 128)
!585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !14, line: 995, size: 128, elements: !586)
!586 = !{!587, !593, !602}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !585, file: !14, line: 996, baseType: !588, size: 64)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !589, line: 60, size: 64, elements: !590)
!589 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !588, file: !589, line: 61, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !585, file: !14, line: 997, baseType: !594, size: 128, align: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !172, line: 232, size: 128, align: 64, elements: !595)
!595 = !{!596, !598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !594, file: !172, line: 233, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !594, file: !172, line: 234, baseType: !599, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !597}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !585, file: !14, line: 998, baseType: !7, size: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !582, file: !14, line: 1005, baseType: !315, size: 32, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !582, file: !14, line: 1006, baseType: !605, size: 32, offset: 160)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !172, line: 156, baseType: !7)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !582, file: !14, line: 1007, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !608, line: 13, baseType: !609)
!608 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !172, line: 181, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !172, line: 179, size: 64, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !610, file: !172, line: 180, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !188, line: 22, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !190, line: 30, baseType: !424)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !582, file: !14, line: 1008, baseType: !616, size: 256, offset: 256)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !617, line: 66, size: 256, elements: !618)
!617 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!618 = !{!619, !620, !622, !627}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !616, file: !617, line: 67, baseType: !607, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !616, file: !617, line: 68, baseType: !621, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !324, line: 23, baseType: !323)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !616, file: !617, line: 70, baseType: !623, size: 32, offset: 96)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !624, line: 15, size: 32, elements: !625)
!624 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !623, file: !624, line: 20, baseType: !335, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !616, file: !617, line: 72, baseType: !182, size: 128, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !582, file: !14, line: 1009, baseType: !422, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !582, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !582, file: !14, line: 1011, baseType: !631, size: 256, offset: 640)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !632)
!632 = !{!633, !654, !698, !699, !700, !701}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !631, file: !14, line: 949, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !635, line: 34, baseType: !636)
!635 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !635, line: 25, size: 64, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !636, file: !635, line: 26, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !640, line: 27, baseType: !641)
!640 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !640, line: 13, size: 64, elements: !642)
!642 = !{!643, !653}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !640, line: 14, baseType: !644, size: 32)
!644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !641, file: !640, line: 14, size: 32, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !644, file: !640, line: 15, baseType: !335, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, scope: !644, file: !640, line: 16, baseType: !648, size: 32)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !644, file: !640, line: 16, size: 32, elements: !649)
!649 = !{!650, !651}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !648, file: !640, line: 18, baseType: !343, size: 8)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !648, file: !640, line: 19, baseType: !652, size: 24, offset: 8)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 24, elements: !505)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !641, file: !640, line: 26, baseType: !327, size: 32, offset: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !631, file: !14, line: 950, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !657)
!657 = !{!658, !664, !665, !666, !679, !680, !687, !688}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !656, file: !30, line: 61, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !660, line: 113, baseType: !661)
!660 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !660, line: 111, size: 32, elements: !662)
!662 = !{!663}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !661, file: !660, line: 112, baseType: !335, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !656, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !656, file: !30, line: 63, baseType: !315, size: 32, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !656, file: !30, line: 65, baseType: !667, size: 256, offset: 128)
!667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 256, elements: !677)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !172, line: 194, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !668, file: !172, line: 195, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !172, line: 198, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !672, file: !172, line: 199, baseType: !671, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !672, file: !172, line: 199, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!677 = !{!678}
!678 = !DISubrange(count: 4)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !656, file: !30, line: 66, baseType: !668, size: 64, offset: 384)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !656, file: !30, line: 68, baseType: !681, size: 192, offset: 448)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !682, line: 41, baseType: !683)
!682 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !682, line: 37, size: 192, elements: !684)
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !683, file: !682, line: 38, baseType: !315, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !683, file: !682, line: 39, baseType: !182, size: 128, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !656, file: !30, line: 69, baseType: !594, size: 128, align: 64, offset: 640)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !656, file: !30, line: 70, baseType: !689, offset: 768)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, elements: !696)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !690, file: !30, line: 55, baseType: !117, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !690, file: !30, line: 56, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!696 = !{!697}
!697 = !DISubrange(count: -1)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !631, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !631, file: !14, line: 952, baseType: !226, size: 32, offset: 160)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !631, file: !14, line: 952, baseType: !226, size: 32, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !631, file: !14, line: 953, baseType: !117, size: 32, offset: 224)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !582, file: !14, line: 1012, baseType: !703, size: 64, offset: 896)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !706, line: 110, size: 1472, elements: !707)
!706 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !724, !725, !726, !727, !728, !729, !859, !860, !861, !862, !863, !894, !897, !901, !909}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !705, file: !706, line: 111, baseType: !607, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !705, file: !706, line: 112, baseType: !226, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !705, file: !706, line: 113, baseType: !236, size: 32, offset: 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !705, file: !706, line: 114, baseType: !226, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !705, file: !706, line: 115, baseType: !236, size: 32, offset: 160)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !705, file: !706, line: 116, baseType: !226, size: 32, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !705, file: !706, line: 117, baseType: !236, size: 32, offset: 224)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !705, file: !706, line: 118, baseType: !226, size: 32, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !705, file: !706, line: 119, baseType: !236, size: 32, offset: 288)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !705, file: !706, line: 120, baseType: !7, size: 32, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !705, file: !706, line: 121, baseType: !719, size: 64, offset: 384)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !720, line: 24, baseType: !721)
!720 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 24, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !721, file: !720, line: 24, baseType: !187, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !705, file: !706, line: 122, baseType: !719, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !705, file: !706, line: 123, baseType: !719, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !705, file: !706, line: 124, baseType: !719, size: 64, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !705, file: !706, line: 125, baseType: !719, size: 64, offset: 640)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !705, file: !706, line: 127, baseType: !297, size: 8, offset: 704)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !705, file: !706, line: 129, baseType: !730, size: 64, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !732, line: 195, size: 1728, elements: !733)
!732 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!733 = !{!734, !735, !740, !752, !761, !764, !765, !772, !773, !774, !775, !778, !779, !780, !782, !783, !823, !844}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !731, file: !732, line: 196, baseType: !659, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !731, file: !732, line: 197, baseType: !736, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !732, line: 28, baseType: !737)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !172, line: 104, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !188, line: 20, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !190, line: 26, baseType: !117)
!740 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 198, baseType: !741, size: 192, offset: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 198, size: 192, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !741, file: !732, line: 199, baseType: !182, size: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !741, file: !732, line: 200, baseType: !745, size: 192, align: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !746, line: 5, size: 192, align: 64, elements: !747)
!746 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!747 = !{!748, !749, !751}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !745, file: !746, line: 6, baseType: !176, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !745, file: !746, line: 7, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !745, file: !746, line: 8, baseType: !750, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !731, file: !732, line: 205, baseType: !753, size: 320, offset: 256)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !754, line: 48, size: 320, elements: !755)
!754 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!755 = !{!756, !757, !758, !759, !760}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !753, file: !754, line: 49, baseType: !607, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !753, file: !754, line: 55, baseType: !607, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !753, file: !754, line: 57, baseType: !623, size: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !753, file: !754, line: 59, baseType: !621, size: 32, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !753, file: !754, line: 60, baseType: !182, size: 128, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !731, file: !732, line: 206, baseType: !762, size: 64, offset: 576)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !732, line: 206, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !731, file: !732, line: 207, baseType: !170, size: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 208, baseType: !766, size: 64, offset: 704)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 208, size: 64, elements: !767)
!767 = !{!768, !771}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !766, file: !732, line: 209, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !770, line: 8, baseType: !614)
!770 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!771 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !766, file: !732, line: 210, baseType: !769, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !731, file: !732, line: 212, baseType: !769, size: 64, offset: 768)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !731, file: !732, line: 213, baseType: !226, size: 32, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !731, file: !732, line: 214, baseType: !236, size: 32, offset: 864)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !731, file: !732, line: 215, baseType: !776, size: 32, offset: 896)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !732, line: 31, baseType: !777)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !172, line: 110, baseType: !290)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !731, file: !732, line: 216, baseType: !223, size: 16, offset: 928)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !731, file: !732, line: 217, baseType: !223, size: 16, offset: 944)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !731, file: !732, line: 221, baseType: !781, size: 16, offset: 960)
!781 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !731, file: !732, line: 228, baseType: !176, size: 64, offset: 1024)
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 245, baseType: !784, size: 320, offset: 1088)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 245, size: 320, elements: !785)
!785 = !{!786, !815}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !784, file: !732, line: 246, baseType: !787, size: 320)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !732, line: 114, size: 320, elements: !788)
!788 = !{!789, !790, !802, !805, !814}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !787, file: !732, line: 116, baseType: !176, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !732, line: 117, baseType: !791, size: 64, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !732, line: 117, size: 64, elements: !792)
!792 = !{!793, !801}
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !732, line: 118, baseType: !794, size: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !791, file: !732, line: 118, size: 64, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !794, file: !732, line: 120, baseType: !350, size: 16)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !794, file: !732, line: 121, baseType: !798, size: 48, offset: 16)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 48, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 6)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !791, file: !732, line: 127, baseType: !176, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !732, line: 129, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !732, line: 102, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !787, file: !732, line: 130, baseType: !806, size: 64, offset: 192)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !732, line: 108, size: 192, elements: !808)
!808 = !{!809, !810, !811}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !807, file: !732, line: 109, baseType: !594, size: 128, align: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !807, file: !732, line: 110, baseType: !659, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !807, file: !732, line: 111, baseType: !812, size: 8, offset: 160)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !172, line: 35, baseType: !813)
!813 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !787, file: !732, line: 131, baseType: !375, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !784, file: !732, line: 247, baseType: !816, size: 320)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !784, file: !732, line: 247, size: 320, elements: !817)
!817 = !{!818, !819, !820, !821, !822}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !816, file: !732, line: 248, baseType: !176, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !816, file: !732, line: 249, baseType: !176, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !732, line: 250, baseType: !803, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !816, file: !732, line: 251, baseType: !806, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !816, file: !732, line: 252, baseType: !401, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !732, line: 260, baseType: !824, size: 256, offset: 1408)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !732, line: 260, size: 256, elements: !825)
!825 = !{!826, !832}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !824, file: !732, line: 261, baseType: !827, size: 256)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !732, line: 134, size: 256, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !827, file: !732, line: 135, baseType: !170, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !827, file: !732, line: 136, baseType: !831, size: 256)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !677)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !824, file: !732, line: 262, baseType: !833, size: 256)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !824, file: !732, line: 262, size: 256, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !833, file: !732, line: 264, baseType: !182, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !833, file: !732, line: 265, baseType: !837, size: 128, offset: 128)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !838, line: 22, size: 128, elements: !839)
!838 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!839 = !{!840, !843}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !837, file: !838, line: 23, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !838, line: 23, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !837, file: !838, line: 24, baseType: !176, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !731, file: !732, line: 280, baseType: !845, size: 64, offset: 1664)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !732, line: 176, size: 192, elements: !847)
!847 = !{!848, !857, !858}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !846, file: !732, line: 177, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !732, line: 171, baseType: !850)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!117, !730, !853, !855, !730}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !804)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !846, file: !732, line: 178, baseType: !730, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !846, file: !732, line: 179, baseType: !803, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !705, file: !706, line: 130, baseType: !730, size: 64, offset: 832)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !705, file: !706, line: 131, baseType: !730, size: 64, offset: 896)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !705, file: !706, line: 132, baseType: !730, size: 64, offset: 960)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !705, file: !706, line: 135, baseType: !170, size: 64, offset: 1024)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !705, file: !706, line: 137, baseType: !864, size: 64, offset: 1088)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !866, line: 14, size: 1088, elements: !867)
!866 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!867 = !{!868, !869, !878, !879, !880, !881, !882, !883}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !865, file: !866, line: 15, baseType: !659, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !865, file: !866, line: 17, baseType: !870, size: 320, offset: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !871, line: 22, size: 320, elements: !872)
!871 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!872 = !{!873, !874, !875, !876}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !870, file: !871, line: 23, baseType: !621, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !870, file: !871, line: 24, baseType: !613, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !870, file: !871, line: 26, baseType: !182, size: 128, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !870, file: !871, line: 28, baseType: !877, size: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !865, file: !866, line: 19, baseType: !176, size: 64, offset: 384)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !865, file: !866, line: 20, baseType: !607, size: 64, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !865, file: !866, line: 23, baseType: !672, size: 128, offset: 512)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !865, file: !866, line: 24, baseType: !226, size: 32, offset: 640)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !865, file: !866, line: 29, baseType: !607, size: 64, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !865, file: !866, line: 36, baseType: !884, size: 320, offset: 768)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !885, line: 15, size: 320, elements: !886)
!885 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!886 = !{!887, !888, !889, !890, !891, !892, !893}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !884, file: !885, line: 16, baseType: !621, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !884, file: !885, line: 18, baseType: !117, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !884, file: !885, line: 19, baseType: !117, size: 32, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !884, file: !885, line: 20, baseType: !117, size: 32, offset: 96)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !884, file: !885, line: 21, baseType: !117, size: 32, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !884, file: !885, line: 22, baseType: !176, size: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !884, file: !885, line: 23, baseType: !176, size: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !705, file: !706, line: 138, baseType: !895, size: 64, offset: 1152)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !227, line: 18, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !705, file: !706, line: 139, baseType: !898, size: 64, offset: 1216)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !900, line: 16, flags: DIFlagFwdDecl)
!900 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!901 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !705, file: !706, line: 140, baseType: !902, size: 64, offset: 1280)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !706, line: 25, size: 64, elements: !904)
!904 = !{!905, !906, !907}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !903, file: !706, line: 26, baseType: !335, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !903, file: !706, line: 27, baseType: !117, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !903, file: !706, line: 28, baseType: !908, offset: 64)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, elements: !696)
!909 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !706, line: 142, baseType: !910, size: 128, offset: 1344)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !706, line: 142, size: 128, elements: !911)
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !910, file: !706, line: 143, baseType: !117, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !910, file: !706, line: 144, baseType: !594, size: 128, align: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !582, file: !14, line: 1013, baseType: !915, size: 256, offset: 960)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !916)
!916 = !{!917, !918, !919, !920, !921, !922}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !915, file: !14, line: 971, baseType: !176, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !915, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !915, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !915, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !915, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !915, file: !14, line: 976, baseType: !422, size: 64, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !582, file: !14, line: 1014, baseType: !924, size: 128, offset: 1216)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !925, line: 8, size: 128, elements: !926)
!925 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !924, file: !925, line: 9, baseType: !406, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !924, file: !925, line: 10, baseType: !256, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !582, file: !14, line: 1015, baseType: !218, size: 64, offset: 1344)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !582, file: !14, line: 1016, baseType: !931, size: 64, offset: 1408)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !934)
!934 = !{!935, !936, !940, !945, !949, !1061, !1062, !1068, !1081, !1089, !1093, !1094, !1423, !1424, !1428, !1433, !1434, !1438, !1442, !1448, !1449, !1453, !1454, !1461, !1465, !1469, !1475, !1479, !1485, !1489, !1493, !1494, !1500}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !933, file: !14, line: 1915, baseType: !451, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !933, file: !14, line: 1916, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!422, !581, !422, !117}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !933, file: !14, line: 1917, baseType: !941, size: 64, offset: 128)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!536, !581, !401, !549, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !933, file: !14, line: 1918, baseType: !946, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!536, !581, !375, !549, !944}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !933, file: !14, line: 1919, baseType: !950, size: 64, offset: 256)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!536, !953, !1058}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !955)
!955 = !{!956, !957, !958, !962, !963, !964, !965}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !954, file: !14, line: 374, baseType: !581, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !954, file: !14, line: 375, baseType: !422, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !954, file: !14, line: 376, baseType: !959, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{null, !953, !539}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !954, file: !14, line: 377, baseType: !170, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !954, file: !14, line: 378, baseType: !117, size: 32, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !954, file: !14, line: 379, baseType: !350, size: 16, offset: 288)
!965 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !14, line: 380, baseType: !966, size: 64, offset: 320)
!966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !14, line: 380, size: 64, elements: !967)
!967 = !{!968, !1054}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !966, file: !14, line: 386, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !971, line: 998, size: 448, elements: !972)
!971 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!972 = !{!973, !1040, !1041}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !970, file: !971, line: 999, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !46, line: 293, size: 1536, elements: !976)
!976 = !{!977, !1007, !1021}
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !46, line: 295, baseType: !978, size: 512)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !46, line: 295, size: 512, elements: !979)
!979 = !{!980, !1006}
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !46, line: 296, baseType: !981, size: 448)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !46, line: 296, size: 448, elements: !982)
!982 = !{!983, !984, !993, !994, !995, !1004, !1005}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !46, line: 298, baseType: !176, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !46, line: 299, baseType: !985, size: 128, offset: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !46, line: 299, size: 128, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !985, file: !46, line: 300, baseType: !182, size: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !985, file: !46, line: 302, baseType: !989, size: 128)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !985, file: !46, line: 302, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !989, file: !46, line: 303, baseType: !170, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !989, file: !46, line: 305, baseType: !7, size: 32, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !981, file: !46, line: 310, baseType: !214, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !981, file: !46, line: 311, baseType: !176, size: 64, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !46, line: 312, baseType: !996, size: 64, offset: 320)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !981, file: !46, line: 312, size: 64, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !996, file: !46, line: 313, baseType: !170, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !996, file: !46, line: 314, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !46, line: 257, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 255, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1001, file: !46, line: 256, baseType: !176, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !981, file: !46, line: 316, baseType: !335, size: 32, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !981, file: !46, line: 317, baseType: !335, size: 32, offset: 416)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !978, file: !46, line: 323, baseType: !193, size: 512, align: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !46, line: 325, baseType: !1008, size: 512, offset: 512)
!1008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !46, line: 325, size: 512, elements: !1009)
!1009 = !{!1010, !1020}
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !46, line: 326, baseType: !1011, size: 320)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1008, file: !46, line: 326, size: 320, elements: !1012)
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018, !1019}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1011, file: !46, line: 327, baseType: !176, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1011, file: !46, line: 328, baseType: !176, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1011, file: !46, line: 329, baseType: !176, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1011, file: !46, line: 331, baseType: !335, size: 32, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1011, file: !46, line: 332, baseType: !335, size: 32, offset: 224)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1011, file: !46, line: 333, baseType: !335, size: 32, offset: 256)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1011, file: !46, line: 335, baseType: !7, size: 32, offset: 288)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1008, file: !46, line: 339, baseType: !193, size: 512, align: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !46, line: 341, baseType: !1022, size: 512, offset: 1024)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !46, line: 341, size: 512, elements: !1023)
!1023 = !{!1024, !1033, !1039}
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !46, line: 342, baseType: !1025, size: 384)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !46, line: 342, size: 384, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1025, file: !46, line: 343, baseType: !176, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1025, file: !46, line: 344, baseType: !176, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1025, file: !46, line: 346, baseType: !170, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1025, file: !46, line: 347, baseType: !170, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1025, file: !46, line: 348, baseType: !170, size: 64, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1025, file: !46, line: 349, baseType: !170, size: 64, offset: 320)
!1033 = !DIDerivedType(tag: DW_TAG_member, scope: !1022, file: !46, line: 352, baseType: !1034, size: 256)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1022, file: !46, line: 352, size: 256, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1034, file: !46, line: 353, baseType: !176, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1034, file: !46, line: 354, baseType: !176, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1034, file: !46, line: 356, baseType: !182, size: 128, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1022, file: !46, line: 359, baseType: !193, size: 512, align: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !970, file: !971, line: 1000, baseType: !117, size: 32, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !970, file: !971, line: 1001, baseType: !1042, size: 320, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !682, line: 14, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !682, line: 30, size: 320, elements: !1044)
!1044 = !{!1045, !1046, !1047, !1053}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1043, file: !682, line: 31, baseType: !7, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1043, file: !682, line: 32, baseType: !170, size: 64, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1043, file: !682, line: 33, baseType: !1048, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !682, line: 16, baseType: !1049)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!117, !1052, !7, !117, !170}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1043, file: !682, line: 34, baseType: !182, size: 128, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !966, file: !14, line: 395, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!536, !170}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1060, line: 17, flags: DIFlagFwdDecl)
!1060 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !933, file: !14, line: 1920, baseType: !950, size: 64, offset: 320)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !933, file: !14, line: 1921, baseType: !1063, size: 64, offset: 384)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!117, !953, !1066, !7}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !933, file: !14, line: 1923, baseType: !1069, size: 64, offset: 448)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!117, !581, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1074)
!1074 = !{!1075, !1080}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1073, file: !14, line: 1859, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1077)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!812, !1072, !375, !117, !422, !187, !7}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1073, file: !14, line: 1860, baseType: !422, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !933, file: !14, line: 1924, baseType: !1082, size: 64, offset: 512)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!1085, !581, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1086, line: 59, baseType: !7)
!1086 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !437, line: 31, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !933, file: !14, line: 1925, baseType: !1090, size: 64, offset: 576)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!539, !581, !7, !176}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !933, file: !14, line: 1926, baseType: !1090, size: 64, offset: 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !933, file: !14, line: 1927, baseType: !1095, size: 64, offset: 704)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!117, !581, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !46, line: 625, size: 1344, elements: !1100)
!1100 = !{!1101, !1110, !1279, !1285, !1292, !1293, !1298, !1299, !1304, !1305, !1308, !1416, !1417, !1418, !1419, !1420, !1421}
!1101 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !46, line: 628, baseType: !1102, size: 128)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !46, line: 628, size: 128, elements: !1103)
!1103 = !{!1104, !1109}
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1102, file: !46, line: 629, baseType: !1105, size: 128)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !46, line: 629, size: 128, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1105, file: !46, line: 631, baseType: !176, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1105, file: !46, line: 632, baseType: !176, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1102, file: !46, line: 635, baseType: !594, size: 128, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1099, file: !46, line: 639, baseType: !1111, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !46, line: 733, size: 10240, elements: !1113)
!1113 = !{!1114, !1277}
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1112, file: !46, line: 734, baseType: !1115, size: 10240)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1112, file: !46, line: 734, size: 10240, elements: !1116)
!1116 = !{!1117, !1121, !1135, !1139, !1140, !1141, !1142, !1143, !1144, !1153, !1154, !1155, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1194, !1196, !1199, !1246, !1247, !1248, !1251, !1252, !1253, !1256, !1257, !1258, !1264, !1265}
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !46, line: 739, baseType: !1118, size: 512, align: 512)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !46, line: 739, size: 512, align: 512, elements: !1119)
!1119 = !{!1120}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1118, file: !46, line: 747, baseType: !335, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1115, file: !46, line: 750, baseType: !1122, size: 128, offset: 512)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1123, line: 218, size: 128, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1124 = !{!1125, !1133, !1134}
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !1123, line: 219, baseType: !1126, size: 32)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1122, file: !1123, line: 219, size: 32, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1126, file: !1123, line: 220, baseType: !315, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1126, file: !1123, line: 221, baseType: !1130)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1123, line: 197, baseType: !1131)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1123, line: 197, elements: !1132)
!1132 = !{}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1122, file: !1123, line: 223, baseType: !7, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1122, file: !1123, line: 224, baseType: !170, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1115, file: !46, line: 752, baseType: !1136, size: 64, offset: 640)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!176, !581, !176, !176, !176, !176}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1115, file: !46, line: 756, baseType: !176, size: 64, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1115, file: !46, line: 757, baseType: !176, size: 64, offset: 768)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1115, file: !46, line: 760, baseType: !176, size: 64, offset: 832)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1115, file: !46, line: 761, baseType: !176, size: 64, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1115, file: !46, line: 763, baseType: !176, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1115, file: !46, line: 764, baseType: !1145, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1147, line: 299, baseType: !1148)
!1147 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 299, size: 64, elements: !1149)
!1149 = !{!1150}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1148, file: !1147, line: 299, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1152, line: 18, baseType: !176)
!1152 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1115, file: !46, line: 773, baseType: !335, size: 32, offset: 1088)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1115, file: !46, line: 785, baseType: !335, size: 32, offset: 1120)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1115, file: !46, line: 795, baseType: !1156, size: 64, offset: 1152)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !46, line: 726, size: 128, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1157, file: !46, line: 727, baseType: !187, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1157, file: !46, line: 728, baseType: !117, size: 32, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1115, file: !46, line: 801, baseType: !176, size: 64, offset: 1216)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1115, file: !46, line: 804, baseType: !607, size: 64, offset: 1280)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1115, file: !46, line: 806, baseType: !117, size: 32, offset: 1344)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1115, file: !46, line: 808, baseType: !315, size: 32, offset: 1376)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1115, file: !46, line: 823, baseType: !753, size: 320, offset: 1408)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1115, file: !46, line: 825, baseType: !182, size: 128, offset: 1728)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1115, file: !46, line: 845, baseType: !117, size: 32, offset: 1856)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1115, file: !46, line: 849, baseType: !176, size: 64, offset: 1920)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1115, file: !46, line: 850, baseType: !176, size: 64, offset: 1984)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1115, file: !46, line: 852, baseType: !176, size: 64, offset: 2048)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1115, file: !46, line: 853, baseType: !176, size: 64, offset: 2112)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1115, file: !46, line: 854, baseType: !609, size: 64, offset: 2176)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1115, file: !46, line: 855, baseType: !176, size: 64, offset: 2240)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1115, file: !46, line: 856, baseType: !176, size: 64, offset: 2304)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1115, file: !46, line: 857, baseType: !176, size: 64, offset: 2368)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1115, file: !46, line: 858, baseType: !176, size: 64, offset: 2432)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1115, file: !46, line: 865, baseType: !267, size: 32, offset: 2496)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1115, file: !46, line: 867, baseType: !315, size: 32, offset: 2528)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1115, file: !46, line: 869, baseType: !176, size: 64, offset: 2560)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1115, file: !46, line: 869, baseType: !176, size: 64, offset: 2624)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1115, file: !46, line: 869, baseType: !176, size: 64, offset: 2688)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1115, file: !46, line: 869, baseType: !176, size: 64, offset: 2752)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1115, file: !46, line: 870, baseType: !176, size: 64, offset: 2816)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1115, file: !46, line: 870, baseType: !176, size: 64, offset: 2880)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1115, file: !46, line: 870, baseType: !176, size: 64, offset: 2944)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1115, file: !46, line: 871, baseType: !176, size: 64, offset: 3008)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1115, file: !46, line: 871, baseType: !176, size: 64, offset: 3072)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1115, file: !46, line: 871, baseType: !176, size: 64, offset: 3136)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1115, file: !46, line: 871, baseType: !176, size: 64, offset: 3200)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1115, file: !46, line: 873, baseType: !1191, size: 3328, offset: 3264)
!1191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 3328, elements: !1192)
!1192 = !{!1193}
!1193 = !DISubrange(count: 52)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1115, file: !46, line: 875, baseType: !1195, size: 1280, offset: 6592)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !870, size: 1280, elements: !677)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1115, file: !46, line: 877, baseType: !1197, size: 64, offset: 7872)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !46, line: 877, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1115, file: !46, line: 880, baseType: !1200, size: 1088, offset: 7936)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1201, line: 72, baseType: !1202)
!1201 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1201, line: 23, size: 1088, elements: !1203)
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1211, !1212, !1213, !1214, !1241, !1242, !1243}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1202, file: !1201, line: 28, baseType: !187, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1202, file: !1201, line: 38, baseType: !609, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1202, file: !1201, line: 40, baseType: !176, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1202, file: !1201, line: 43, baseType: !753, size: 320, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1202, file: !1201, line: 44, baseType: !1209, size: 64, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1201, line: 44, flags: DIFlagFwdDecl)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1202, file: !1201, line: 48, baseType: !176, size: 64, offset: 576)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1202, file: !1201, line: 59, baseType: !616, size: 256, offset: 640)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1202, file: !1201, line: 60, baseType: !170, size: 64, offset: 896)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1202, file: !1201, line: 61, baseType: !1215, size: 64, offset: 960)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1218, line: 13, size: 1216, elements: !1219)
!1218 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1217, file: !1218, line: 14, baseType: !170, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1217, file: !1218, line: 15, baseType: !176, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1217, file: !1218, line: 17, baseType: !176, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1217, file: !1218, line: 17, baseType: !176, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1217, file: !1218, line: 18, baseType: !176, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1217, file: !1218, line: 18, baseType: !176, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1217, file: !1218, line: 19, baseType: !1227, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1217, file: !1218, line: 21, baseType: !539, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1217, file: !1218, line: 23, baseType: !539, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1217, file: !1218, line: 24, baseType: !539, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1217, file: !1218, line: 25, baseType: !539, size: 64, offset: 640)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1217, file: !1218, line: 26, baseType: !539, size: 64, offset: 704)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1217, file: !1218, line: 27, baseType: !539, size: 64, offset: 768)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1217, file: !1218, line: 28, baseType: !539, size: 64, offset: 832)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1217, file: !1218, line: 29, baseType: !539, size: 64, offset: 896)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1217, file: !1218, line: 30, baseType: !539, size: 64, offset: 960)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1217, file: !1218, line: 31, baseType: !539, size: 64, offset: 1024)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1217, file: !1218, line: 32, baseType: !539, size: 64, offset: 1088)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1217, file: !1218, line: 33, baseType: !539, size: 64, offset: 1152)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1202, file: !1201, line: 63, baseType: !335, size: 32, offset: 1024)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1202, file: !1201, line: 69, baseType: !350, size: 16, offset: 1056)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1202, file: !1201, line: 70, baseType: !1244, size: 16, offset: 1072)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !188, line: 18, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !190, line: 23, baseType: !781)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1115, file: !46, line: 882, baseType: !176, size: 64, offset: 9024)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1115, file: !46, line: 885, baseType: !315, size: 32, offset: 9088)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1115, file: !46, line: 886, baseType: !1249, size: 64, offset: 9152)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !46, line: 732, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1115, file: !46, line: 901, baseType: !895, size: 64, offset: 9216)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1115, file: !46, line: 904, baseType: !581, size: 64, offset: 9280)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1115, file: !46, line: 906, baseType: !1254, size: 64, offset: 9344)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !46, line: 906, flags: DIFlagFwdDecl)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1115, file: !46, line: 930, baseType: !335, size: 32, offset: 9408)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1115, file: !46, line: 933, baseType: !335, size: 32, offset: 9440)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1115, file: !46, line: 935, baseType: !1259, size: 64, offset: 9472)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1259, file: !68, line: 104, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1115, file: !46, line: 940, baseType: !607, size: 64, offset: 9536)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1115, file: !46, line: 942, baseType: !1266, size: 256, offset: 9600)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1267, line: 98, size: 256, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1268 = !{!1269, !1270, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1266, file: !1267, line: 99, baseType: !607, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1266, file: !1267, line: 100, baseType: !182, size: 128, offset: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1266, file: !1267, line: 101, baseType: !1272, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1267, line: 21, baseType: !1273)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1112, file: !46, line: 986, baseType: !1278, offset: 10240)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, elements: !696)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1099, file: !46, line: 640, baseType: !1280, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1147, line: 297, baseType: !1281)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1147, line: 297, size: 64, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1281, file: !1147, line: 297, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1152, line: 19, baseType: !176)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1099, file: !46, line: 646, baseType: !1286, size: 64, offset: 256)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1099, file: !46, line: 646, size: 64, elements: !1287)
!1287 = !{!1288, !1291}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1286, file: !46, line: 647, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !46, line: 542, baseType: !176)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1286, file: !46, line: 648, baseType: !1290, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1099, file: !46, line: 666, baseType: !117, size: 32, offset: 320)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1099, file: !46, line: 667, baseType: !1294, size: 64, offset: 384)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !46, line: 579, size: 320, elements: !1296)
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1295, file: !46, line: 580, baseType: !753, size: 320)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1099, file: !46, line: 670, baseType: !812, size: 8, offset: 448)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1099, file: !46, line: 681, baseType: !1300, size: 256, offset: 512)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1099, file: !46, line: 678, size: 256, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1300, file: !46, line: 679, baseType: !745, size: 192, align: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1300, file: !46, line: 680, baseType: !176, size: 64, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1099, file: !46, line: 689, baseType: !182, size: 128, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1099, file: !46, line: 691, baseType: !1306, size: 64, offset: 896)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !46, line: 691, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1099, file: !46, line: 694, baseType: !1309, size: 64, offset: 960)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1312, line: 563, size: 1024, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1313 = !{!1314, !1318, !1319, !1323, !1327, !1331, !1380, !1384, !1388, !1392, !1393, !1394, !1398, !1402, !1408, !1412}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1311, file: !1312, line: 564, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !1098}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1311, file: !1312, line: 569, baseType: !1315, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1311, file: !1312, line: 571, baseType: !1320, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!117, !1098, !176}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1311, file: !1312, line: 572, baseType: !1324, size: 64, offset: 192)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!117, !1098}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1311, file: !1312, line: 578, baseType: !1328, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!117, !1098, !176, !176, !176}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1311, file: !1312, line: 580, baseType: !1332, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1335, !1336}
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !46, line: 1184, baseType: !7)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1312, line: 512, size: 896, elements: !1338)
!1338 = !{!1339, !1347, !1348, !1355, !1362, !1372, !1373, !1374, !1376, !1378}
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1312, line: 513, baseType: !1340, size: 320)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1337, file: !1312, line: 513, size: 320, elements: !1341)
!1341 = !{!1342, !1343, !1344, !1345, !1346}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1340, file: !1312, line: 514, baseType: !1098, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1340, file: !1312, line: 515, baseType: !171, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1340, file: !1312, line: 516, baseType: !176, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1340, file: !1312, line: 517, baseType: !176, size: 64, offset: 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1340, file: !1312, line: 518, baseType: !176, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !1312, line: 520, baseType: !45, size: 32, offset: 320)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1337, file: !1312, line: 522, baseType: !1349, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1152, line: 22, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1152, line: 22, size: 64, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1351, file: !1152, line: 22, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1152, line: 15, baseType: !176)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1337, file: !1312, line: 524, baseType: !1356, size: 64, offset: 448)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1147, line: 372, baseType: !1358)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1147, line: 372, size: 64, elements: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1358, file: !1147, line: 372, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1152, line: 16, baseType: !176)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1312, line: 527, baseType: !1363, size: 64, offset: 512)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !1312, line: 527, size: 64, elements: !1364)
!1364 = !{!1365, !1371}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1363, file: !1312, line: 528, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1152, line: 21, baseType: !1367)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1152, line: 21, size: 64, elements: !1368)
!1368 = !{!1369}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1367, file: !1152, line: 21, baseType: !1370, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1152, line: 14, baseType: !176)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1363, file: !1312, line: 529, baseType: !1350, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1337, file: !1312, line: 534, baseType: !192, size: 64, offset: 576)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1337, file: !1312, line: 535, baseType: !192, size: 64, offset: 640)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1337, file: !1312, line: 541, baseType: !1375, size: 64, offset: 704)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1337, file: !1312, line: 545, baseType: !1377, size: 64, offset: 768)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1337, file: !1312, line: 549, baseType: !1379, size: 64, offset: 832)
!1379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1147, line: 520, baseType: !192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1311, file: !1312, line: 581, baseType: !1381, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!1335, !1336, !7}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1311, file: !1312, line: 582, baseType: !1385, size: 64, offset: 448)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{!1335, !1336, !176, !176}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1311, file: !1312, line: 584, baseType: !1389, size: 64, offset: 512)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!176, !1098}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1311, file: !1312, line: 588, baseType: !1332, size: 64, offset: 576)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1311, file: !1312, line: 591, baseType: !1332, size: 64, offset: 640)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1311, file: !1312, line: 597, baseType: !1395, size: 64, offset: 704)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!117, !1098, !176, !170, !117, !117}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1311, file: !1312, line: 603, baseType: !1399, size: 64, offset: 768)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!375, !1098}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1311, file: !1312, line: 613, baseType: !1403, size: 64, offset: 832)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!117, !1098, !1406}
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !46, line: 717, flags: DIFlagFwdDecl)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1311, file: !1312, line: 625, baseType: !1409, size: 64, offset: 896)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DISubroutineType(types: !1411)
!1411 = !{!1406, !1098, !176}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1311, file: !1312, line: 633, baseType: !1413, size: 64, offset: 960)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!192, !1098, !176}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1099, file: !46, line: 697, baseType: !176, size: 64, offset: 1024)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1099, file: !46, line: 699, baseType: !581, size: 64, offset: 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1099, file: !46, line: 700, baseType: !170, size: 64, offset: 1152)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1099, file: !46, line: 711, baseType: !607, size: 64, offset: 1216)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1099, file: !46, line: 717, baseType: !1406, size: 64, offset: 1280)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1099, file: !46, line: 722, baseType: !1422, offset: 1344)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !46, line: 570, elements: !1132)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !933, file: !14, line: 1928, baseType: !176, size: 64, offset: 768)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !933, file: !14, line: 1929, baseType: !1425, size: 64, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!117, !218, !581}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !933, file: !14, line: 1930, baseType: !1429, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!117, !581, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !170)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !933, file: !14, line: 1931, baseType: !1425, size: 64, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !933, file: !14, line: 1932, baseType: !1435, size: 64, offset: 1024)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!117, !581, !422, !422, !117}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !933, file: !14, line: 1933, baseType: !1439, size: 64, offset: 1088)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{!117, !117, !581, !117}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !933, file: !14, line: 1934, baseType: !1443, size: 64, offset: 1152)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!117, !581, !117, !1446}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !933, file: !14, line: 1935, baseType: !1136, size: 64, offset: 1216)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !933, file: !14, line: 1936, baseType: !1450, size: 64, offset: 1280)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!117, !117}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !933, file: !14, line: 1937, baseType: !1443, size: 64, offset: 1344)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !933, file: !14, line: 1938, baseType: !1455, size: 64, offset: 1408)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!536, !1458, !581, !944, !549, !7}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1460, line: 59, flags: DIFlagFwdDecl)
!1460 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !933, file: !14, line: 1939, baseType: !1462, size: 64, offset: 1472)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!536, !581, !944, !1458, !549, !7}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !933, file: !14, line: 1940, baseType: !1466, size: 64, offset: 1536)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{null, !581}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !933, file: !14, line: 1941, baseType: !1470, size: 64, offset: 1600)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!117, !581, !117, !1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !933, file: !14, line: 1942, baseType: !1476, size: 64, offset: 1664)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!539, !581, !117, !422, !422}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !933, file: !14, line: 1944, baseType: !1480, size: 64, offset: 1728)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !1483, !581}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1460, line: 66, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !933, file: !14, line: 1948, baseType: !1486, size: 64, offset: 1792)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!536, !581, !422, !581, !422, !549, !7}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !933, file: !14, line: 1950, baseType: !1490, size: 64, offset: 1856)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!422, !581, !422, !581, !422, !422, !7}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !933, file: !14, line: 1953, baseType: !1435, size: 64, offset: 1920)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !933, file: !14, line: 1954, baseType: !1495, size: 64, offset: 1984)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!117, !1498, !7}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !933, file: !14, line: 1955, baseType: !1501, size: 64, offset: 2048)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!117, !1498, !1066, !7}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !582, file: !14, line: 1018, baseType: !187, size: 64, offset: 1472)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !582, file: !14, line: 1020, baseType: !170, size: 64, offset: 1536)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !582, file: !14, line: 1023, baseType: !170, size: 64, offset: 1600)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !582, file: !14, line: 1027, baseType: !1508, size: 64, offset: 1664)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !582, file: !14, line: 1029, baseType: !214, size: 64, offset: 1728)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !582, file: !14, line: 1030, baseType: !1511, size: 32, offset: 1792)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1512, line: 8, baseType: !290)
!1512 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !582, file: !14, line: 1031, baseType: !1511, size: 32, offset: 1824)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !568, file: !530, line: 182, baseType: !578, size: 64, offset: 384)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !568, file: !530, line: 184, baseType: !1516, size: 64, offset: 448)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!117, !581, !470, !567, !1098}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !556, file: !530, line: 90, baseType: !1520, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !556, file: !530, line: 91, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !520, file: !465, line: 120, baseType: !1524, size: 64, offset: 192)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1527, !488}
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1529)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1530)
!1530 = !{!1531, !1532, !1536, !1540, !1546, !1550}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1529, file: !82, line: 40, baseType: !81, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1529, file: !82, line: 41, baseType: !1533, size: 64, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!812}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1529, file: !82, line: 42, baseType: !1537, size: 64, offset: 128)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!170}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1529, file: !82, line: 43, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!1227, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1529, file: !82, line: 44, baseType: !1547, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1227}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1529, file: !82, line: 45, baseType: !1551, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !170}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !520, file: !465, line: 121, baseType: !1555, size: 64, offset: 256)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1227, !488}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !520, file: !465, line: 122, baseType: !1559, size: 64, offset: 320)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{null, !488, !1562, !1563}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !464, file: !465, line: 70, baseType: !1565, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !437, line: 190, size: 1152, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1662, !1663, !1664, !1665, !1666, !1669}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1566, file: !437, line: 191, baseType: !335, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1566, file: !437, line: 192, baseType: !335, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1566, file: !437, line: 202, baseType: !1565, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1566, file: !437, line: 203, baseType: !375, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1566, file: !437, line: 205, baseType: !745, size: 192, align: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1566, file: !437, line: 207, baseType: !1227, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1566, file: !437, line: 208, baseType: !7, size: 32, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !437, line: 209, baseType: !1576, size: 256, offset: 512)
!1576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !437, line: 209, size: 256, elements: !1577)
!1577 = !{!1578, !1590, !1594}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1576, file: !437, line: 210, baseType: !1579, size: 256)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !437, line: 153, size: 256, elements: !1580)
!1580 = !{!1581, !1582, !1586, !1589}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1579, file: !437, line: 154, baseType: !176, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1579, file: !437, line: 156, baseType: !1583, size: 64, offset: 64)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !746, line: 12, size: 64, elements: !1584)
!1584 = !{!1585}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1583, file: !746, line: 13, baseType: !750, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1579, file: !437, line: 162, baseType: !1587, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !437, line: 162, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1579, file: !437, line: 167, baseType: !176, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1576, file: !437, line: 211, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !437, line: 170, size: 64, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1591, file: !437, line: 171, baseType: !1565, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1576, file: !437, line: 212, baseType: !1595, size: 256)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !437, line: 174, size: 256, elements: !1596)
!1596 = !{!1597, !1657, !1660, !1661}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1595, file: !437, line: 175, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !437, line: 271, size: 768, elements: !1601)
!1601 = !{!1602, !1622, !1626, !1630, !1634, !1638, !1642, !1646, !1647, !1648, !1649, !1653}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1600, file: !437, line: 276, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!117, !1606}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !437, line: 251, size: 1216, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1607, file: !437, line: 253, baseType: !1565, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1607, file: !437, line: 254, baseType: !581, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1607, file: !437, line: 255, baseType: !1483, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1607, file: !437, line: 256, baseType: !170, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1607, file: !437, line: 259, baseType: !616, size: 256, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1607, file: !437, line: 260, baseType: !616, size: 256, offset: 512)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1607, file: !437, line: 261, baseType: !117, size: 32, offset: 768)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1607, file: !437, line: 262, baseType: !182, size: 128, offset: 832)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1607, file: !437, line: 263, baseType: !401, size: 64, offset: 960)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1607, file: !437, line: 265, baseType: !549, size: 64, offset: 1024)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1607, file: !437, line: 266, baseType: !812, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1607, file: !437, line: 267, baseType: !812, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1607, file: !437, line: 268, baseType: !1309, size: 64, offset: 1152)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1600, file: !437, line: 277, baseType: !1623, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{null, !1606}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1600, file: !437, line: 290, baseType: !1627, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!117, !1483, !170}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1600, file: !437, line: 292, baseType: !1631, size: 64, offset: 192)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!170, !1483, !944}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1600, file: !437, line: 293, baseType: !1635, size: 64, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!170, !1483, !170, !944}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1600, file: !437, line: 294, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1483, !170}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1600, file: !437, line: 296, baseType: !1643, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!536, !1606, !401, !549, !422}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1600, file: !437, line: 306, baseType: !549, size: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1600, file: !437, line: 313, baseType: !812, size: 8, offset: 512)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1600, file: !437, line: 314, baseType: !1643, size: 64, offset: 576)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1600, file: !437, line: 317, baseType: !1650, size: 64, offset: 640)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1085, !1606, !1087}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1600, file: !437, line: 320, baseType: !1654, size: 64, offset: 704)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!117, !1606, !1098}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1595, file: !437, line: 176, baseType: !1658, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !437, line: 35, flags: DIFlagFwdDecl)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1595, file: !437, line: 177, baseType: !422, size: 64, offset: 128)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1595, file: !437, line: 178, baseType: !1565, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1566, file: !437, line: 215, baseType: !170, size: 64, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1566, file: !437, line: 221, baseType: !187, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !437, line: 223, baseType: !223, size: 16, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1566, file: !437, line: 224, baseType: !222, size: 16, offset: 912)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1566, file: !437, line: 225, baseType: !1667, size: 64, offset: 960)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !437, line: 36, flags: DIFlagFwdDecl)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1566, file: !437, line: 227, baseType: !594, size: 128, align: 64, offset: 1024)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !464, file: !465, line: 71, baseType: !1671, size: 32, offset: 448)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1672, line: 19, size: 32, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1673 = !{!1674}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1671, file: !1672, line: 20, baseType: !659, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !464, file: !465, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !464, file: !465, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !464, file: !465, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !464, file: !465, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !464, file: !465, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !461, file: !6, line: 47, baseType: !451, size: 64, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !461, file: !6, line: 48, baseType: !470, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !461, file: !6, line: 49, baseType: !1683, size: 64, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !461, file: !6, line: 50, baseType: !1686, size: 64, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1688, line: 26, size: 256, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1689 = !{!1690, !1691}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1687, file: !1688, line: 27, baseType: !7, size: 32)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1687, file: !1688, line: 28, baseType: !1692, size: 192, offset: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1693, line: 43, size: 192, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1692, file: !1693, line: 44, baseType: !621, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1692, file: !1693, line: 45, baseType: !182, size: 128, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !452, file: !6, line: 418, baseType: !1698, size: 64, offset: 1408)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1700)
!1700 = !{!1701, !1702, !1707, !1711, !1715, !1719}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1699, file: !6, line: 54, baseType: !541, size: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1699, file: !6, line: 55, baseType: !1703, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!536, !1698, !1706, !401}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1699, file: !6, line: 57, baseType: !1708, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!536, !1698, !1706, !375, !549}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1699, file: !6, line: 59, baseType: !1712, size: 64, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !451, !375}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1699, file: !6, line: 60, baseType: !1716, size: 64, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!117, !451}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1699, file: !6, line: 61, baseType: !1720, size: 64, offset: 384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{null, !451}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !452, file: !6, line: 419, baseType: !375, size: 64, offset: 1472)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !452, file: !6, line: 420, baseType: !375, size: 64, offset: 1536)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !452, file: !6, line: 421, baseType: !470, size: 64, offset: 1600)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !452, file: !6, line: 424, baseType: !1727, size: 64, offset: 1664)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1729)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !452, file: !6, line: 425, baseType: !1731, size: 64, offset: 1728)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !452, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !452, file: !6, line: 435, baseType: !616, size: 256, offset: 1856)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !452, file: !6, line: 437, baseType: !1736, size: 64, offset: 2112)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1738, line: 69, size: 320, elements: !1739)
!1738 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1739 = !{!1740, !1741, !1742, !1759, !1761, !1765, !1766}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1737, file: !1738, line: 70, baseType: !375, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1737, file: !1738, line: 71, baseType: !451, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1737, file: !1738, line: 72, baseType: !1743, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1738, line: 47, size: 256, elements: !1746)
!1746 = !{!1747, !1748, !1754, !1758}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !1738, line: 49, baseType: !7, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1745, file: !1738, line: 51, baseType: !1749, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!117, !375, !1752}
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1745, file: !1738, line: 53, baseType: !1755, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!117, !401, !1752}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1745, file: !1738, line: 55, baseType: !1551, size: 64, offset: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1737, file: !1738, line: 73, baseType: !1760, size: 16, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1737, file: !1738, line: 74, baseType: !1762, size: 8, offset: 208)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !188, line: 16, baseType: !1763)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !190, line: 20, baseType: !1764)
!1764 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1737, file: !1738, line: 75, baseType: !343, size: 8, offset: 216)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1737, file: !1738, line: 76, baseType: !1767, size: 64, offset: 256)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1737, file: !1738, line: 76, size: 64, elements: !1768)
!1768 = !{!1769, !1770, !1777}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1767, file: !1738, line: 77, baseType: !170, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1767, file: !1738, line: 78, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1738, line: 86, size: 128, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1773, file: !1738, line: 87, baseType: !7, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1773, file: !1738, line: 88, baseType: !401, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1767, file: !1738, line: 79, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1738, line: 92, size: 256, elements: !1781)
!1781 = !{!1782, !1783, !1784, !1786, !1787}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1780, file: !1738, line: 94, baseType: !7, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1780, file: !1738, line: 95, baseType: !7, size: 32, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1780, file: !1738, line: 96, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1780, file: !1738, line: 97, baseType: !1743, size: 64, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1780, file: !1738, line: 98, baseType: !170, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !452, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !452, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !452, file: !6, line: 442, baseType: !1727, size: 64, offset: 2240)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !452, file: !6, line: 443, baseType: !1731, size: 64, offset: 2304)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !452, file: !6, line: 444, baseType: !812, size: 8, offset: 2368)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !452, file: !6, line: 451, baseType: !812, size: 8, offset: 2376)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !452, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !452, file: !6, line: 455, baseType: !1796, size: 64, offset: 2432)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1798, line: 23, size: 96, elements: !1799)
!1798 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1799 = !{!1800, !1801, !1802}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1797, file: !1798, line: 24, baseType: !117, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1797, file: !1798, line: 24, baseType: !117, size: 32, offset: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1797, file: !1798, line: 24, baseType: !117, size: 32, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !452, file: !6, line: 458, baseType: !1804, size: 64, offset: 2496)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!117}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !452, file: !6, line: 460, baseType: !1808, size: 4032, align: 512, offset: 2560)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1809, size: 4032, elements: !1825)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1810)
!1810 = !{!1811, !1812, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1809, file: !6, line: 363, baseType: !170, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1809, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1809, file: !6, line: 367, baseType: !1814, size: 448, offset: 128)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1815)
!1815 = !{!1816, !1817}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1814, file: !6, line: 320, baseType: !451, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1814, file: !6, line: 321, baseType: !1818, size: 384, offset: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1819, line: 40, size: 384, elements: !1820)
!1819 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1820 = !{!1821}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1818, file: !1819, line: 41, baseType: !1822, size: 384, align: 64)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !745, size: 384, align: 64, elements: !1823)
!1823 = !{!1824}
!1824 = !DISubrange(count: 2)
!1825 = !{!1826}
!1826 = !DISubrange(count: 7)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !452, file: !6, line: 463, baseType: !1828, size: 192, offset: 6592)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1829, line: 8, size: 192, elements: !1830)
!1829 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1830 = !{!1831, !1832, !1834}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1828, file: !1829, line: 10, baseType: !7, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1828, file: !1829, line: 11, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1828, file: !1829, line: 12, baseType: !1835, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1837, line: 59, size: 48, elements: !1838)
!1837 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1838 = !{!1839, !1840, !1841, !1842, !1843, !1844}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1836, file: !1837, line: 60, baseType: !1244, size: 16)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1836, file: !1837, line: 61, baseType: !1244, size: 16, offset: 16)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1836, file: !1837, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1836, file: !1837, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1836, file: !1837, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1836, file: !1837, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !452, file: !6, line: 465, baseType: !176, size: 64, offset: 6784)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !452, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !452, file: !6, line: 470, baseType: !182, size: 128, offset: 6912)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !452, file: !6, line: 471, baseType: !1849, size: 64, offset: 7040)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1851, line: 33, size: 96, elements: !1852)
!1851 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1852 = !{!1853, !1854, !1855, !1856}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1850, file: !1851, line: 37, baseType: !117, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1850, file: !1851, line: 43, baseType: !117, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1850, file: !1851, line: 45, baseType: !223, size: 16, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !1851, line: 47, baseType: !223, size: 16, offset: 80)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !452, file: !6, line: 476, baseType: !1858, size: 64, offset: 7104)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1860)
!1860 = !{!1861, !1877, !1878, !1879}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1859, file: !6, line: 379, baseType: !1862, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1864, line: 204, baseType: !1865)
!1864 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1864, line: 197, size: 192, elements: !1866)
!1866 = !{!1867, !1869, !1870, !1871, !1873, !1875}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1865, file: !1864, line: 198, baseType: !1868, size: 32)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1864, line: 21, baseType: !291)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1865, file: !1864, line: 199, baseType: !297, size: 8, offset: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1865, file: !1864, line: 200, baseType: !297, size: 8, offset: 40)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1865, file: !1864, line: 201, baseType: !1872, size: 16, offset: 48)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1864, line: 17, baseType: !351)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1865, file: !1864, line: 202, baseType: !1874, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1864, line: 16, baseType: !189)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1865, file: !1864, line: 203, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1864, line: 22, baseType: !189)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1859, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1859, file: !6, line: 381, baseType: !401, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1859, file: !6, line: 382, baseType: !401, size: 64, offset: 192)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !452, file: !6, line: 477, baseType: !1859, size: 256, offset: 7168)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !452, file: !6, line: 480, baseType: !1882, size: 64, offset: 7424)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !452, file: !6, line: 483, baseType: !1885, size: 64, offset: 7488)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !452, file: !6, line: 488, baseType: !401, size: 64, offset: 7552)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !452, file: !6, line: 492, baseType: !170, size: 64, offset: 7616)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !452, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !452, file: !6, line: 495, baseType: !170, size: 64, offset: 7744)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !452, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !452, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !452, file: !6, line: 500, baseType: !1894, size: 64, offset: 7872)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1896, line: 45, baseType: !1897)
!1896 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !452, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !452, file: !6, line: 504, baseType: !1900, size: 64, offset: 8000)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1903, line: 96, size: 192, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1904 = !{!1905, !1906, !1960, !1963}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1902, file: !1903, line: 97, baseType: !7, size: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1902, file: !1903, line: 98, baseType: !1907, size: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1903, line: 24, size: 3072, elements: !1909)
!1909 = !{!1910, !1912, !1913, !1914, !1915, !1929, !1930, !1931, !1932, !1944, !1945, !1946, !1957, !1958, !1959}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1908, file: !1903, line: 26, baseType: !1911, size: 128)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 128, elements: !1823)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1908, file: !1903, line: 27, baseType: !1911, size: 128, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1908, file: !1903, line: 28, baseType: !117, size: 32, offset: 256)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1908, file: !1903, line: 31, baseType: !315, size: 32, align: 512, offset: 512)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1908, file: !1903, line: 32, baseType: !1916, size: 960, offset: 576)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1917, line: 206, size: 960, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1918 = !{!1919, !1920, !1923, !1925, !1926, !1928}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1916, file: !1917, line: 207, baseType: !597, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1916, file: !1917, line: 208, baseType: !1921, size: 256, offset: 64)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1922, size: 256, elements: !677)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1916, file: !1917, line: 209, baseType: !1924, size: 256, offset: 320)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !677)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1916, file: !1917, line: 213, baseType: !539, size: 64, offset: 576)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1916, file: !1917, line: 215, baseType: !1927, size: 256, offset: 640)
!1927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 256, elements: !677)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1916, file: !1917, line: 216, baseType: !343, size: 8, offset: 896)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1908, file: !1903, line: 33, baseType: !176, size: 64, offset: 1536)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1908, file: !1903, line: 34, baseType: !176, size: 64, offset: 1600)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1908, file: !1903, line: 35, baseType: !812, size: 8, offset: 1664)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1908, file: !1903, line: 36, baseType: !1933, size: 320, offset: 1728)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1934, line: 11, size: 320, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1935 = !{!1936, !1937, !1938, !1943}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1933, file: !1934, line: 16, baseType: !672, size: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1933, file: !1934, line: 17, baseType: !176, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1933, file: !1934, line: 18, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1933, file: !1934, line: 19, baseType: !290, size: 32, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1908, file: !1903, line: 37, baseType: !1266, size: 256, offset: 2048)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1908, file: !1903, line: 38, baseType: !594, size: 128, align: 64, offset: 2304)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1908, file: !1903, line: 39, baseType: !1947, size: 64, offset: 2432)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1903, line: 49, size: 768, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1948, file: !1903, line: 50, baseType: !315, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1948, file: !1903, line: 51, baseType: !1924, size: 256, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1948, file: !1903, line: 53, baseType: !1924, size: 256, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1948, file: !1903, line: 54, baseType: !176, size: 64, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1948, file: !1903, line: 55, baseType: !1947, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1948, file: !1903, line: 56, baseType: !117, size: 32, offset: 704)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1948, file: !1903, line: 57, baseType: !117, size: 32, offset: 736)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1908, file: !1903, line: 40, baseType: !176, size: 64, offset: 2496)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1908, file: !1903, line: 42, baseType: !117, size: 32, offset: 2560)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1908, file: !1903, line: 43, baseType: !1901, size: 64, offset: 2624)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1902, file: !1903, line: 99, baseType: !1961, offset: 128)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1962, line: 211, elements: !1132)
!1962 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1902, file: !1903, line: 100, baseType: !1964, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1903, line: 63, size: 3008, elements: !1966)
!1966 = !{!1967, !1968, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1998}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1965, file: !1903, line: 64, baseType: !1947, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1965, file: !1903, line: 65, baseType: !1969, size: 192, offset: 64)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1947, size: 192, elements: !505)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1965, file: !1903, line: 67, baseType: !117, size: 32, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1965, file: !1903, line: 68, baseType: !616, size: 256, offset: 320)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1965, file: !1903, line: 69, baseType: !315, size: 32, offset: 576)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1965, file: !1903, line: 70, baseType: !616, size: 256, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1965, file: !1903, line: 71, baseType: !176, size: 64, offset: 896)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1965, file: !1903, line: 72, baseType: !176, size: 64, offset: 960)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1965, file: !1903, line: 73, baseType: !176, size: 64, offset: 1024)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1965, file: !1903, line: 74, baseType: !176, size: 64, offset: 1088)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1965, file: !1903, line: 75, baseType: !176, size: 64, offset: 1152)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1965, file: !1903, line: 76, baseType: !176, size: 64, offset: 1216)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1965, file: !1903, line: 77, baseType: !176, size: 64, offset: 1280)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1965, file: !1903, line: 78, baseType: !176, size: 64, offset: 1344)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1965, file: !1903, line: 79, baseType: !812, size: 8, offset: 1408)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1965, file: !1903, line: 80, baseType: !176, size: 64, offset: 1472)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1965, file: !1903, line: 81, baseType: !616, size: 256, offset: 1536)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1965, file: !1903, line: 82, baseType: !1687, size: 256, offset: 1792)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1965, file: !1903, line: 84, baseType: !335, size: 32, offset: 2048)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1965, file: !1903, line: 87, baseType: !176, size: 64, offset: 2112)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1965, file: !1903, line: 88, baseType: !176, size: 64, offset: 2176)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1965, file: !1903, line: 89, baseType: !1990, size: 704, offset: 2240)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1267, line: 111, size: 704, elements: !1991)
!1991 = !{!1992, !1993, !1994, !1997}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1990, file: !1267, line: 112, baseType: !1266, size: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1990, file: !1267, line: 113, baseType: !1933, size: 320, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1990, file: !1267, line: 116, baseType: !1995, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1267, line: 18, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1990, file: !1267, line: 117, baseType: !117, size: 32, offset: 640)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1965, file: !1903, line: 90, baseType: !1901, size: 64, offset: 2944)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !452, file: !6, line: 515, baseType: !2000, size: 64, offset: 8064)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2002, line: 117, size: 128, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2003 = !{!2004, !2005, !2006}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2001, file: !2002, line: 118, baseType: !738, size: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2001, file: !2002, line: 119, baseType: !738, size: 32, offset: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2001, file: !2002, line: 120, baseType: !539, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !452, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !452, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !452, file: !6, line: 520, baseType: !2010, size: 64, offset: 8192)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !452, file: !6, line: 523, baseType: !2012, size: 64, offset: 8256)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !452, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !452, file: !6, line: 525, baseType: !2017, size: 64, offset: 8384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !452, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !452, file: !6, line: 533, baseType: !170, size: 64, offset: 8512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !452, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !452, file: !6, line: 535, baseType: !2024, size: 64, offset: 8640)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !452, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !452, file: !6, line: 539, baseType: !117, size: 32, offset: 8736)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !452, file: !6, line: 540, baseType: !2028, size: 64, offset: 8768)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2030, line: 32, size: 64, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2031 = !{!2032, !2033}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2029, file: !2030, line: 33, baseType: !738, size: 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2029, file: !2030, line: 34, baseType: !738, size: 32, offset: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !452, file: !6, line: 563, baseType: !182, size: 128, offset: 8832)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !452, file: !6, line: 565, baseType: !182, size: 128, offset: 8960)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !452, file: !6, line: 568, baseType: !2037, size: 64, offset: 9088)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !452, file: !6, line: 570, baseType: !335, size: 32, offset: 9152)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !427, file: !14, line: 2382, baseType: !426, size: 64, offset: 448)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !427, file: !14, line: 2383, baseType: !668, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !427, file: !14, line: 2385, baseType: !2044, offset: 576)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1962, line: 206, elements: !1132)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !427, file: !14, line: 2386, baseType: !2044, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !427, file: !14, line: 2387, baseType: !2044, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !427, file: !14, line: 2388, baseType: !2048, offset: 576)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2044, elements: !505)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !427, file: !14, line: 2390, baseType: !2044, offset: 576)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !427, file: !14, line: 2391, baseType: !2044, offset: 576)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !427, file: !14, line: 2392, baseType: !2044, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !427, file: !14, line: 2393, baseType: !2044, offset: 576)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !413, file: !14, line: 1197, baseType: !2054, size: 64, offset: 384)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2056)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2057)
!2057 = !{!2058, !2062, !2066, !2067, !2071, !2077, !2081, !2082, !2083, !2087, !2091, !2095, !2096, !2097, !2103, !2107, !2108, !2112, !2113, !2114, !2115, !2119, !2123, !2170, !2185, !2186}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2056, file: !14, line: 2058, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!218, !412}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2056, file: !14, line: 2059, baseType: !2063, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{null, !218}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2056, file: !14, line: 2060, baseType: !2063, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2056, file: !14, line: 2062, baseType: !2068, size: 64, offset: 192)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{null, !218, !117}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2056, file: !14, line: 2063, baseType: !2072, size: 64, offset: 256)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!117, !218, !2075}
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2056, file: !14, line: 2064, baseType: !2078, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!117, !218}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2056, file: !14, line: 2065, baseType: !2063, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2056, file: !14, line: 2066, baseType: !447, size: 64, offset: 448)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2056, file: !14, line: 2067, baseType: !2084, size: 64, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!117, !412, !117}
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2056, file: !14, line: 2068, baseType: !2088, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DISubroutineType(types: !2090)
!2090 = !{!117, !412, !13}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2056, file: !14, line: 2069, baseType: !2092, size: 64, offset: 640)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!117, !412}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2056, file: !14, line: 2070, baseType: !2088, size: 64, offset: 704)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2056, file: !14, line: 2071, baseType: !2092, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2056, file: !14, line: 2072, baseType: !2098, size: 64, offset: 832)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!117, !256, !2101}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2056, file: !14, line: 2073, baseType: !2104, size: 64, offset: 896)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!117, !412, !1833, !401}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2056, file: !14, line: 2074, baseType: !447, size: 64, offset: 960)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2056, file: !14, line: 2076, baseType: !2109, size: 64, offset: 1024)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!117, !1483, !256}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2056, file: !14, line: 2077, baseType: !2109, size: 64, offset: 1088)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2056, file: !14, line: 2078, baseType: !2109, size: 64, offset: 1152)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2056, file: !14, line: 2079, baseType: !2109, size: 64, offset: 1216)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2056, file: !14, line: 2081, baseType: !2116, size: 64, offset: 1280)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!536, !412, !117, !401, !549, !422}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2056, file: !14, line: 2082, baseType: !2120, size: 64, offset: 1344)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!536, !412, !117, !375, !549, !422}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2056, file: !14, line: 2083, baseType: !2124, size: 64, offset: 1408)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!2127, !218}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !2130)
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2155, !2156, !2157}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2129, file: !19, line: 297, baseType: !672, size: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2129, file: !19, line: 298, baseType: !182, size: 128, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2129, file: !19, line: 299, baseType: !182, size: 128, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2129, file: !19, line: 300, baseType: !182, size: 128, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2129, file: !19, line: 301, baseType: !616, size: 256, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2129, file: !19, line: 302, baseType: !315, size: 32, offset: 768)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2129, file: !19, line: 303, baseType: !335, size: 32, offset: 800)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2129, file: !19, line: 304, baseType: !412, size: 64, offset: 832)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2129, file: !19, line: 305, baseType: !2140, size: 64, offset: 896)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !2141)
!2141 = !{!2142, !2154}
!2142 = !DIDerivedType(tag: DW_TAG_member, scope: !2140, file: !19, line: 69, baseType: !2143, size: 32)
!2143 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2140, file: !19, line: 69, size: 32, elements: !2144)
!2144 = !{!2145, !2146, !2147}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2143, file: !19, line: 70, baseType: !226, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2143, file: !19, line: 71, baseType: !236, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2143, file: !19, line: 72, baseType: !2148, size: 32)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2149, line: 24, baseType: !2150)
!2149 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2149, line: 22, size: 32, elements: !2151)
!2151 = !{!2152}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2150, file: !2149, line: 23, baseType: !2153, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2149, line: 20, baseType: !232)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2140, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2129, file: !19, line: 306, baseType: !422, size: 64, offset: 960)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2129, file: !19, line: 307, baseType: !176, size: 64, offset: 1024)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2129, file: !19, line: 308, baseType: !2158, size: 576, offset: 1088)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !2159)
!2159 = !{!2160, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2158, file: !19, line: 206, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !424)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2158, file: !19, line: 207, baseType: !2161, size: 64, offset: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2158, file: !19, line: 208, baseType: !2161, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2158, file: !19, line: 209, baseType: !2161, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2158, file: !19, line: 210, baseType: !2161, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2158, file: !19, line: 211, baseType: !2161, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2158, file: !19, line: 212, baseType: !2161, size: 64, offset: 384)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2158, file: !19, line: 213, baseType: !769, size: 64, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2158, file: !19, line: 214, baseType: !769, size: 64, offset: 512)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2056, file: !14, line: 2085, baseType: !2171, size: 64, offset: 1472)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!539, !412, !2174}
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2176, line: 15, size: 256, elements: !2177)
!2176 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2177 = !{!2178, !2179, !2180, !2181, !2182}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2175, file: !2176, line: 16, baseType: !171, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2175, file: !2176, line: 19, baseType: !117, size: 32, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2175, file: !2176, line: 26, baseType: !176, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2175, file: !2176, line: 33, baseType: !176, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2175, file: !2176, line: 36, baseType: !2183, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !46, line: 33, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2056, file: !14, line: 2087, baseType: !2171, size: 64, offset: 1536)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2056, file: !14, line: 2089, baseType: !447, size: 64, offset: 1600)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !413, file: !14, line: 1198, baseType: !2188, size: 64, offset: 448)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2190)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !2191)
!2191 = !{!2192, !2196, !2200, !2204, !2205, !2206, !2207, !2208, !2213, !2218, !2222}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2190, file: !19, line: 325, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!117, !2128}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2190, file: !19, line: 326, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!2128, !412, !117}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2190, file: !19, line: 327, baseType: !2201, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{null, !2128}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2190, file: !19, line: 328, baseType: !2193, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2190, file: !19, line: 329, baseType: !2193, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2190, file: !19, line: 330, baseType: !2193, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2190, file: !19, line: 331, baseType: !2084, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2190, file: !19, line: 334, baseType: !2209, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!2212, !218}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2190, file: !19, line: 335, baseType: !2214, size: 64, offset: 512)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!117, !218, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2190, file: !19, line: 337, baseType: !2219, size: 64, offset: 576)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!117, !218, !2212}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2190, file: !19, line: 339, baseType: !2223, size: 64, offset: 640)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!117, !412, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !413, file: !14, line: 1199, baseType: !2228, size: 64, offset: 512)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !2231)
!2231 = !{!2232, !2238, !2239, !2243, !2244, !2245, !2260, !2283, !2287, !2288, !2311}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2230, file: !19, line: 431, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!117, !412, !117, !117, !2236}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !924)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2230, file: !19, line: 432, baseType: !2084, size: 64, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2230, file: !19, line: 433, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!117, !412, !7}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2230, file: !19, line: 434, baseType: !2240, size: 64, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2230, file: !19, line: 435, baseType: !2084, size: 64, offset: 256)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2230, file: !19, line: 436, baseType: !2246, size: 64, offset: 320)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!117, !412, !117, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2250, file: !19, line: 418, baseType: !117, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2250, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2250, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2250, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2250, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2250, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2250, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2250, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2230, file: !19, line: 437, baseType: !2261, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!117, !412, !2140, !2264}
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !2266)
!2266 = !{!2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2265, file: !19, line: 346, baseType: !117, size: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2265, file: !19, line: 347, baseType: !187, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2265, file: !19, line: 348, baseType: !187, size: 64, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2265, file: !19, line: 349, baseType: !187, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2265, file: !19, line: 350, baseType: !187, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2265, file: !19, line: 351, baseType: !187, size: 64, offset: 320)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2265, file: !19, line: 352, baseType: !187, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2265, file: !19, line: 353, baseType: !613, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2265, file: !19, line: 355, baseType: !613, size: 64, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2265, file: !19, line: 356, baseType: !117, size: 32, offset: 576)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2265, file: !19, line: 357, baseType: !117, size: 32, offset: 608)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2265, file: !19, line: 358, baseType: !187, size: 64, offset: 640)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2265, file: !19, line: 359, baseType: !187, size: 64, offset: 704)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2265, file: !19, line: 360, baseType: !187, size: 64, offset: 768)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2265, file: !19, line: 361, baseType: !613, size: 64, offset: 832)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2265, file: !19, line: 362, baseType: !117, size: 32, offset: 896)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2230, file: !19, line: 438, baseType: !2284, size: 64, offset: 448)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!117, !412, !2226, !2264}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2230, file: !19, line: 440, baseType: !2261, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2230, file: !19, line: 441, baseType: !2289, size: 64, offset: 576)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!117, !412, !2292}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2293, file: !19, line: 412, baseType: !7, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2293, file: !19, line: 413, baseType: !2297, size: 1344, offset: 64)
!2297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2298, size: 1344, elements: !505)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !2299)
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2310}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2298, file: !19, line: 398, baseType: !7, size: 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2298, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2298, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2298, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2298, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2298, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2298, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2298, file: !19, line: 406, baseType: !191, size: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2298, file: !19, line: 407, baseType: !2309, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !172, line: 132, baseType: !187)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2298, file: !19, line: 408, baseType: !2309, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2230, file: !19, line: 442, baseType: !2240, size: 64, offset: 640)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !413, file: !14, line: 1200, baseType: !2313, size: 64, offset: 576)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2315)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !413, file: !14, line: 1201, baseType: !176, size: 64, offset: 640)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !413, file: !14, line: 1202, baseType: !176, size: 64, offset: 704)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !413, file: !14, line: 1203, baseType: !176, size: 64, offset: 768)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !413, file: !14, line: 1204, baseType: !256, size: 64, offset: 832)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !413, file: !14, line: 1205, baseType: !753, size: 320, offset: 896)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !413, file: !14, line: 1206, baseType: !117, size: 32, offset: 1216)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !413, file: !14, line: 1207, baseType: !335, size: 32, offset: 1248)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !413, file: !14, line: 1209, baseType: !170, size: 64, offset: 1280)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !413, file: !14, line: 1211, baseType: !2325, size: 64, offset: 1344)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2328)
!2328 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !413, file: !14, line: 1223, baseType: !2330, size: 64, offset: 1408)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !273, line: 34, size: 64, elements: !2331)
!2331 = !{!2332}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2330, file: !273, line: 35, baseType: !276, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !413, file: !14, line: 1224, baseType: !182, size: 128, offset: 1472)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !413, file: !14, line: 1225, baseType: !2335, size: 64, offset: 1600)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !413, file: !14, line: 1226, baseType: !2338, size: 64, offset: 1664)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !413, file: !14, line: 1227, baseType: !2341, size: 64, offset: 1728)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !413, file: !14, line: 1228, baseType: !2344, size: 64, offset: 1792)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !413, file: !14, line: 1229, baseType: !672, size: 128, offset: 1856)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !413, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !413, file: !14, line: 1231, baseType: !2349, size: 2496, offset: 2048)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2355, !2387}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2349, file: !19, line: 522, baseType: !7, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2349, file: !19, line: 523, baseType: !753, size: 320, offset: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2349, file: !19, line: 524, baseType: !2354, size: 192, offset: 384)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !218, size: 192, elements: !505)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2349, file: !19, line: 525, baseType: !2356, size: 1728, offset: 576)
!2356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2357, size: 1728, elements: !505)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !2358)
!2358 = !{!2359, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2357, file: !19, line: 223, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !2362)
!2362 = !{!2363, !2364, !2377, !2378}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2361, file: !19, line: 446, baseType: !117, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2361, file: !19, line: 447, baseType: !2365, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2367, file: !19, line: 313, baseType: !2084, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2367, file: !19, line: 314, baseType: !2084, size: 64, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2367, file: !19, line: 315, baseType: !2084, size: 64, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2367, file: !19, line: 316, baseType: !2084, size: 64, offset: 192)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2367, file: !19, line: 317, baseType: !2193, size: 64, offset: 256)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2367, file: !19, line: 318, baseType: !2193, size: 64, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2367, file: !19, line: 319, baseType: !2193, size: 64, offset: 384)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2367, file: !19, line: 320, baseType: !2223, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2361, file: !19, line: 448, baseType: !451, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2361, file: !19, line: 449, baseType: !2360, size: 64, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2357, file: !19, line: 224, baseType: !117, size: 32, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2357, file: !19, line: 226, baseType: !182, size: 128, offset: 128)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2357, file: !19, line: 227, baseType: !176, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2357, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2357, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2357, file: !19, line: 230, baseType: !2161, size: 64, offset: 384)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2357, file: !19, line: 231, baseType: !2161, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2357, file: !19, line: 232, baseType: !170, size: 64, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2349, file: !19, line: 526, baseType: !2388, size: 192, offset: 2304)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2365, size: 192, elements: !505)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !413, file: !14, line: 1233, baseType: !2390, size: 2368, offset: 4544)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2391)
!2391 = !{!2392, !2393, !2394}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2390, file: !14, line: 1185, baseType: !223, size: 16)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2390, file: !14, line: 1186, baseType: !223, size: 16, offset: 16)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2390, file: !14, line: 1187, baseType: !2395, size: 2304, offset: 64)
!2395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2396, size: 2304, elements: !505)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2397, line: 12, size: 768, elements: !2398)
!2397 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2398 = !{!2399, !2407, !2408, !3602, !3603}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2396, file: !2397, line: 13, baseType: !2400, size: 384)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2401, line: 17, size: 384, elements: !2402)
!2401 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2400, file: !2401, line: 18, baseType: !117, size: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2400, file: !2401, line: 19, baseType: !117, size: 32, offset: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2400, file: !2401, line: 20, baseType: !681, size: 192, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2400, file: !2401, line: 22, baseType: !594, size: 128, align: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2396, file: !2397, line: 14, baseType: !1785, size: 64, offset: 384)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2396, file: !2397, line: 15, baseType: !2409, size: 64, offset: 448)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2410, line: 16, size: 64, elements: !2411)
!2410 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2411 = !{!2412}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2409, file: !2410, line: 17, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1460, line: 746, size: 58368, elements: !2415)
!2415 = !{!2416, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2496, !2507, !2599, !2603, !2606, !2637, !2638, !2639, !2640, !2651, !2653, !2654, !2655, !2656, !2657, !2658, !2669, !2670, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2687, !2688, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2776, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2824, !2830, !2831, !2832, !2833, !2834, !2838, !2841, !2848, !2853, !2856, !2859, !2862, !2866, !3004, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3042, !3043, !3044, !3053, !3061, !3062, !3063, !3064, !3065, !3070, !3071, !3072, !3075, !3076, !3079, !3082, !3085, !3093, !3096, !3097, !3183, !3184, !3185, !3186, !3187, !3193, !3194, !3195, !3196, !3199, !3200, !3203, !3206, !3207, !3210, !3211, !3212, !3215, !3216, !3217, !3218, !3219, !3220, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3252, !3253, !3259, !3262, !3263, !3264, !3265, !3266, !3267, !3268, !3271, !3343, !3345, !3346, !3347, !3348, !3349, !3350, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3379, !3380, !3381}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2414, file: !1460, line: 752, baseType: !2417, size: 192)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2418, line: 56, size: 192, elements: !2419)
!2418 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !2418, line: 57, baseType: !176, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2417, file: !2418, line: 58, baseType: !176, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2417, file: !2418, line: 59, baseType: !290, size: 32, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2417, file: !2418, line: 61, baseType: !290, size: 32, offset: 160)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2414, file: !1460, line: 754, baseType: !7, size: 32, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2414, file: !1460, line: 767, baseType: !170, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2414, file: !1460, line: 768, baseType: !659, size: 32, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2414, file: !1460, line: 770, baseType: !7, size: 32, offset: 352)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2414, file: !1460, line: 771, baseType: !7, size: 32, offset: 384)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2414, file: !1460, line: 774, baseType: !117, size: 32, offset: 416)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2414, file: !1460, line: 775, baseType: !2431, size: 128, offset: 448)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2432, line: 58, size: 128, elements: !2433)
!2432 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2433 = !{!2434, !2435, !2440, !2441}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2431, file: !2432, line: 59, baseType: !588, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2431, file: !2432, line: 60, baseType: !2436, size: 32, offset: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2431, file: !2432, line: 60, size: 32, elements: !2437)
!2437 = !{!2438, !2439}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2436, file: !2432, line: 61, baseType: !7, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2436, file: !2432, line: 62, baseType: !335, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2431, file: !2432, line: 65, baseType: !350, size: 16, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2431, file: !2432, line: 65, baseType: !350, size: 16, offset: 112)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2414, file: !1460, line: 776, baseType: !7, size: 32, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2414, file: !1460, line: 777, baseType: !176, size: 64, offset: 640)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2414, file: !1460, line: 778, baseType: !2413, size: 64, offset: 704)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2414, file: !1460, line: 787, baseType: !117, size: 32, offset: 768)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2414, file: !1460, line: 788, baseType: !117, size: 32, offset: 800)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2414, file: !1460, line: 790, baseType: !117, size: 32, offset: 832)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2414, file: !1460, line: 792, baseType: !117, size: 32, offset: 864)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2414, file: !1460, line: 793, baseType: !117, size: 32, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2414, file: !1460, line: 794, baseType: !117, size: 32, offset: 928)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2414, file: !1460, line: 795, baseType: !7, size: 32, offset: 960)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2414, file: !1460, line: 797, baseType: !2453, size: 2048, offset: 1024)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1460, line: 551, size: 2048, elements: !2454)
!2454 = !{!2455, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2475, !2478, !2479, !2480}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2453, file: !1460, line: 553, baseType: !2456, size: 128)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1460, line: 411, size: 128, elements: !2457)
!2457 = !{!2458, !2459}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2456, file: !1460, line: 412, baseType: !176, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2456, file: !1460, line: 413, baseType: !290, size: 32, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2453, file: !1460, line: 554, baseType: !745, size: 192, align: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2453, file: !1460, line: 555, baseType: !187, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2453, file: !1460, line: 556, baseType: !187, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2453, file: !1460, line: 558, baseType: !182, size: 128, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2453, file: !1460, line: 559, baseType: !7, size: 32, offset: 576)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2453, file: !1460, line: 561, baseType: !187, size: 64, offset: 640)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2453, file: !1460, line: 562, baseType: !187, size: 64, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2453, file: !1460, line: 563, baseType: !187, size: 64, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2453, file: !1460, line: 564, baseType: !187, size: 64, offset: 832)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2453, file: !1460, line: 565, baseType: !613, size: 64, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2453, file: !1460, line: 566, baseType: !187, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2453, file: !1460, line: 568, baseType: !187, size: 64, offset: 1024)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2453, file: !1460, line: 571, baseType: !117, size: 32, offset: 1088)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2453, file: !1460, line: 572, baseType: !2474, size: 64, offset: 1152)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2453, file: !1460, line: 574, baseType: !2476, size: 64, offset: 1216)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1460, line: 49, flags: DIFlagFwdDecl)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2453, file: !1460, line: 576, baseType: !2476, size: 64, offset: 1280)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2453, file: !1460, line: 578, baseType: !176, size: 64, offset: 1344)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2453, file: !1460, line: 588, baseType: !2481, size: 512, align: 512, offset: 1536)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1460, line: 497, size: 512, align: 512, elements: !2482)
!2482 = !{!2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2481, file: !1460, line: 498, baseType: !187, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2481, file: !1460, line: 499, baseType: !187, size: 64, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2481, file: !1460, line: 500, baseType: !187, size: 64, offset: 128)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2481, file: !1460, line: 501, baseType: !290, size: 32, offset: 192)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2481, file: !1460, line: 502, baseType: !290, size: 32, offset: 224)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2481, file: !1460, line: 503, baseType: !176, size: 64, offset: 256)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2481, file: !1460, line: 504, baseType: !176, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2481, file: !1460, line: 505, baseType: !176, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2481, file: !1460, line: 506, baseType: !2492, size: 64, align: 64, offset: 448)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1460, line: 445, size: 64, align: 64, elements: !2493)
!2493 = !{!2494, !2495}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2492, file: !1460, line: 446, baseType: !7, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2492, file: !1460, line: 447, baseType: !7, size: 32, offset: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2414, file: !1460, line: 798, baseType: !2497, size: 384, offset: 3072)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1460, line: 592, size: 384, elements: !2498)
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2497, file: !1460, line: 593, baseType: !182, size: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2497, file: !1460, line: 594, baseType: !176, size: 64, offset: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2497, file: !1460, line: 595, baseType: !176, size: 64, offset: 192)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2497, file: !1460, line: 596, baseType: !7, size: 32, offset: 256)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2497, file: !1460, line: 597, baseType: !223, size: 16, offset: 288)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2497, file: !1460, line: 598, baseType: !223, size: 16, offset: 304)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2497, file: !1460, line: 600, baseType: !2506, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2414, file: !1460, line: 799, baseType: !2508, size: 1792, offset: 3456)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1460, line: 610, size: 1792, elements: !2509)
!2509 = !{!2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2596, !2597}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2508, file: !1460, line: 611, baseType: !745, size: 192, align: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2508, file: !1460, line: 618, baseType: !187, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2508, file: !1460, line: 619, baseType: !187, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2508, file: !1460, line: 620, baseType: !187, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2508, file: !1460, line: 621, baseType: !187, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2508, file: !1460, line: 622, baseType: !187, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2508, file: !1460, line: 629, baseType: !613, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2508, file: !1460, line: 630, baseType: !187, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2508, file: !1460, line: 631, baseType: !7, size: 32, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2508, file: !1460, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2508, file: !1460, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2508, file: !1460, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2508, file: !1460, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2508, file: !1460, line: 662, baseType: !2524, size: 512, offset: 704)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !2525)
!2525 = !{!2526, !2534, !2535, !2540, !2592, !2593, !2594, !2595}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2524, file: !25, line: 119, baseType: !2527, size: 256)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2528, line: 9, size: 256, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2527, file: !2528, line: 10, baseType: !745, size: 192, align: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2527, file: !2528, line: 11, baseType: !2532, size: 64, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2533, line: 29, baseType: !613)
!2533 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2524, file: !25, line: 120, baseType: !2532, size: 64, offset: 256)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2524, file: !25, line: 121, baseType: !2536, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!24, !2539}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2524, file: !25, line: 122, baseType: !2541, size: 64, offset: 384)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !2543)
!2543 = !{!2544, !2569, !2570, !2573, !2578, !2579, !2587, !2591}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2542, file: !25, line: 160, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !2547)
!2547 = !{!2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2546, file: !25, line: 216, baseType: !621, size: 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2546, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2546, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2546, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2546, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2546, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2546, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2546, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2546, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2546, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2546, file: !25, line: 227, baseType: !223, size: 16, offset: 192)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2546, file: !25, line: 228, baseType: !223, size: 16, offset: 208)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2546, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2546, file: !25, line: 235, baseType: !2532, size: 64, offset: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2546, file: !25, line: 236, baseType: !2539, size: 64, offset: 320)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2546, file: !25, line: 237, baseType: !2532, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2546, file: !25, line: 238, baseType: !2539, size: 64, offset: 448)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2546, file: !25, line: 239, baseType: !2566, size: 4096, align: 512, offset: 512)
!2566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2542, size: 4096, align: 512, elements: !2567)
!2567 = !{!2568}
!2568 = !DISubrange(count: 8)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2542, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2542, file: !25, line: 162, baseType: !2571, size: 32, offset: 96)
!2571 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !172, line: 32, baseType: !2572)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !233, line: 96, baseType: !117)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2542, file: !25, line: 163, baseType: !2574, size: 32, offset: 128)
!2574 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !263, line: 274, baseType: !2575)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !263, line: 274, size: 32, elements: !2576)
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2575, file: !263, line: 274, baseType: !267, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2542, file: !25, line: 164, baseType: !2539, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2542, file: !25, line: 165, baseType: !2580, size: 128, offset: 256)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2528, line: 14, size: 128, elements: !2581)
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2580, file: !2528, line: 15, baseType: !2583, size: 128)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !746, line: 26, size: 128, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2583, file: !746, line: 27, baseType: !1583, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2583, file: !746, line: 28, baseType: !750, size: 64, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2542, file: !25, line: 166, baseType: !2588, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!2532}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2542, file: !25, line: 167, baseType: !2532, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2524, file: !25, line: 123, baseType: !343, size: 8, offset: 448)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2524, file: !25, line: 124, baseType: !343, size: 8, offset: 456)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2524, file: !25, line: 125, baseType: !343, size: 8, offset: 464)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2524, file: !25, line: 126, baseType: !343, size: 8, offset: 472)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2508, file: !1460, line: 671, baseType: !2524, size: 512, offset: 1216)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2508, file: !1460, line: 679, baseType: !2598, size: 64, offset: 1728)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2414, file: !1460, line: 800, baseType: !2600, size: 64, offset: 5248)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1460, line: 800, flags: DIFlagFwdDecl)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2414, file: !1460, line: 809, baseType: !2604, size: 64, offset: 5312)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1460, line: 70, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2414, file: !1460, line: 825, baseType: !2607, size: 2048, align: 512, offset: 5632)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1460, line: 509, size: 2048, align: 512, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2607, file: !1460, line: 511, baseType: !187, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2607, file: !1460, line: 512, baseType: !187, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2607, file: !1460, line: 513, baseType: !187, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2607, file: !1460, line: 514, baseType: !187, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2607, file: !1460, line: 515, baseType: !187, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2607, file: !1460, line: 516, baseType: !187, size: 64, offset: 320)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2607, file: !1460, line: 518, baseType: !187, size: 64, offset: 384)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2607, file: !1460, line: 519, baseType: !187, size: 64, offset: 448)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2607, file: !1460, line: 520, baseType: !613, size: 64, offset: 512)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2607, file: !1460, line: 522, baseType: !187, size: 64, offset: 576)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2607, file: !1460, line: 523, baseType: !187, size: 64, offset: 640)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2607, file: !1460, line: 524, baseType: !613, size: 64, offset: 704)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2607, file: !1460, line: 526, baseType: !613, size: 64, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2607, file: !1460, line: 527, baseType: !187, size: 64, offset: 832)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2607, file: !1460, line: 529, baseType: !187, size: 64, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2607, file: !1460, line: 530, baseType: !187, size: 64, offset: 960)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2607, file: !1460, line: 531, baseType: !187, size: 64, offset: 1024)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2607, file: !1460, line: 532, baseType: !187, size: 64, offset: 1088)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2607, file: !1460, line: 533, baseType: !187, size: 64, offset: 1152)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2607, file: !1460, line: 535, baseType: !187, size: 64, offset: 1216)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2607, file: !1460, line: 536, baseType: !187, size: 64, offset: 1280)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2607, file: !1460, line: 537, baseType: !187, size: 64, offset: 1344)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2607, file: !1460, line: 538, baseType: !187, size: 64, offset: 1408)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2607, file: !1460, line: 539, baseType: !187, size: 64, offset: 1472)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2607, file: !1460, line: 540, baseType: !187, size: 64, offset: 1536)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2607, file: !1460, line: 541, baseType: !187, size: 64, offset: 1600)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2607, file: !1460, line: 542, baseType: !187, size: 64, offset: 1664)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2607, file: !1460, line: 543, baseType: !187, size: 64, offset: 1728)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2414, file: !1460, line: 833, baseType: !7, size: 32, offset: 7680)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2414, file: !1460, line: 836, baseType: !7, size: 32, offset: 7712)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2414, file: !1460, line: 837, baseType: !117, size: 32, offset: 7744)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2414, file: !1460, line: 838, baseType: !2641, size: 64, offset: 7808)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2644, line: 19, baseType: !2645)
!2644 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2644, line: 19, size: 64, elements: !2646)
!2646 = !{!2647}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2645, file: !2644, line: 19, baseType: !2648, size: 64)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 64, elements: !2649)
!2649 = !{!2650}
!2650 = !DISubrange(count: 1)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2414, file: !1460, line: 839, baseType: !2652, size: 64, offset: 7872)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2414, file: !1460, line: 840, baseType: !2643, size: 64, offset: 7936)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2414, file: !1460, line: 841, baseType: !170, size: 64, offset: 8000)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2414, file: !1460, line: 843, baseType: !223, size: 16, offset: 8064)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2414, file: !1460, line: 845, baseType: !223, size: 16, offset: 8080)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2414, file: !1460, line: 848, baseType: !117, size: 32, offset: 8096)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2414, file: !1460, line: 849, baseType: !2659, size: 32, offset: 8128)
!2659 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1460, line: 718, size: 32, elements: !2660)
!2660 = !{!2661, !2668}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2659, file: !1460, line: 724, baseType: !2662, size: 32)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2659, file: !1460, line: 719, size: 32, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2667}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2662, file: !1460, line: 720, baseType: !343, size: 8)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2662, file: !1460, line: 721, baseType: !343, size: 8, offset: 8)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2662, file: !1460, line: 722, baseType: !343, size: 8, offset: 16)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2662, file: !1460, line: 723, baseType: !343, size: 8, offset: 24)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2659, file: !1460, line: 725, baseType: !290, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2414, file: !1460, line: 850, baseType: !182, size: 128, offset: 8192)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2414, file: !1460, line: 851, baseType: !2671, size: 64, offset: 8320)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1460, line: 60, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2414, file: !1460, line: 855, baseType: !176, size: 64, offset: 8384)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2414, file: !1460, line: 856, baseType: !343, size: 8, offset: 8448)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2414, file: !1460, line: 857, baseType: !343, size: 8, offset: 8456)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2414, file: !1460, line: 858, baseType: !117, size: 32, offset: 8480)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2414, file: !1460, line: 859, baseType: !182, size: 128, offset: 8512)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2414, file: !1460, line: 860, baseType: !117, size: 32, offset: 8640)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2414, file: !1460, line: 861, baseType: !182, size: 128, offset: 8704)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2414, file: !1460, line: 873, baseType: !2681, size: 256, offset: 8832)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1460, line: 376, size: 256, elements: !2682)
!2682 = !{!2683, !2684, !2685, !2686}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2681, file: !1460, line: 381, baseType: !176, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2681, file: !1460, line: 384, baseType: !191, size: 64, offset: 64)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2681, file: !1460, line: 389, baseType: !191, size: 64, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2681, file: !1460, line: 392, baseType: !191, size: 64, offset: 192)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2414, file: !1460, line: 875, baseType: !182, size: 128, offset: 9088)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2414, file: !1460, line: 877, baseType: !2689, size: 320, offset: 9216)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2690, line: 86, size: 320, elements: !2691)
!2690 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2691 = !{!2692, !2693, !2694}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2689, file: !2690, line: 87, baseType: !117, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2689, file: !2690, line: 88, baseType: !182, size: 128, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2689, file: !2690, line: 89, baseType: !182, size: 128, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2414, file: !1460, line: 878, baseType: !745, size: 192, align: 64, offset: 9536)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2414, file: !1460, line: 881, baseType: !1111, size: 64, offset: 9728)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2414, file: !1460, line: 882, baseType: !1111, size: 64, offset: 9792)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2414, file: !1460, line: 884, baseType: !117, size: 32, offset: 9856)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2414, file: !1460, line: 885, baseType: !117, size: 32, offset: 9888)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2414, file: !1460, line: 886, baseType: !117, size: 32, offset: 9920)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2414, file: !1460, line: 888, baseType: !117, size: 32, offset: 9952)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2414, file: !1460, line: 890, baseType: !176, size: 64, offset: 9984)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2414, file: !1460, line: 893, baseType: !7, size: 32, offset: 10048)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2414, file: !1460, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2414, file: !1460, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2414, file: !1460, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2414, file: !1460, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2414, file: !1460, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2414, file: !1460, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2414, file: !1460, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2414, file: !1460, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2414, file: !1460, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2414, file: !1460, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2414, file: !1460, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2414, file: !1460, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2414, file: !1460, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2414, file: !1460, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2414, file: !1460, line: 969, baseType: !176, size: 64, offset: 10176)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2414, file: !1460, line: 971, baseType: !2720, size: 448, offset: 10240)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2721)
!2721 = !{!2722, !2723, !2728}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2720, file: !62, line: 26, baseType: !176, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2720, file: !62, line: 27, baseType: !2724, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!539, !2727}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, scope: !2720, file: !62, line: 28, baseType: !2729, size: 320, offset: 128)
!2729 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2720, file: !62, line: 28, size: 320, elements: !2730)
!2730 = !{!2731, !2741, !2766}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2729, file: !62, line: 37, baseType: !2732, size: 320)
!2732 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2729, file: !62, line: 30, size: 320, elements: !2733)
!2733 = !{!2734, !2736, !2737, !2738, !2739, !2740}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2732, file: !62, line: 31, baseType: !2735, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2732, file: !62, line: 32, baseType: !290, size: 32, offset: 64)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2732, file: !62, line: 33, baseType: !290, size: 32, offset: 96)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2732, file: !62, line: 34, baseType: !290, size: 32, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2732, file: !62, line: 35, baseType: !187, size: 64, offset: 192)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2732, file: !62, line: 36, baseType: !2735, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2729, file: !62, line: 47, baseType: !2742, size: 192)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2729, file: !62, line: 39, size: 192, elements: !2743)
!2743 = !{!2744, !2745, !2746, !2765}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2742, file: !62, line: 40, baseType: !2571, size: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2742, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, scope: !2742, file: !62, line: 42, baseType: !2747, size: 64, offset: 64)
!2747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2742, file: !62, line: 42, size: 64, elements: !2748)
!2748 = !{!2749, !2757}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2747, file: !62, line: 43, baseType: !2750, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2752, line: 7, size: 128, elements: !2753)
!2752 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2753 = !{!2754, !2756}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2751, file: !2752, line: 8, baseType: !2755, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !233, line: 93, baseType: !424)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2751, file: !2752, line: 9, baseType: !424, size: 64, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2747, file: !62, line: 44, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2760, line: 7, size: 64, elements: !2761)
!2760 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2761 = !{!2762, !2764}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2759, file: !2760, line: 8, baseType: !2763, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2760, line: 5, baseType: !738)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2759, file: !2760, line: 9, baseType: !738, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2742, file: !62, line: 46, baseType: !187, size: 64, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2729, file: !62, line: 55, baseType: !2767, size: 256)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2729, file: !62, line: 49, size: 256, elements: !2768)
!2768 = !{!2769, !2772, !2773, !2774, !2775}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2767, file: !62, line: 50, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2767, file: !62, line: 51, baseType: !117, size: 32, offset: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2767, file: !62, line: 52, baseType: !117, size: 32, offset: 96)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2767, file: !62, line: 53, baseType: !176, size: 64, offset: 128)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2767, file: !62, line: 54, baseType: !176, size: 64, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2414, file: !1460, line: 973, baseType: !2777, size: 32, offset: 10688)
!2777 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !172, line: 27, baseType: !2778)
!2778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !233, line: 28, baseType: !117)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2414, file: !1460, line: 974, baseType: !2777, size: 32, offset: 10720)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2414, file: !1460, line: 978, baseType: !176, size: 64, offset: 10752)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2414, file: !1460, line: 987, baseType: !2413, size: 64, offset: 10816)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2414, file: !1460, line: 990, baseType: !2413, size: 64, offset: 10880)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2414, file: !1460, line: 995, baseType: !182, size: 128, offset: 10944)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2414, file: !1460, line: 996, baseType: !182, size: 128, offset: 11072)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2414, file: !1460, line: 997, baseType: !2413, size: 64, offset: 11200)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2414, file: !1460, line: 1005, baseType: !182, size: 128, offset: 11264)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2414, file: !1460, line: 1006, baseType: !182, size: 128, offset: 11392)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2414, file: !1460, line: 1009, baseType: !655, size: 64, offset: 11520)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2414, file: !1460, line: 1010, baseType: !2790, size: 512, offset: 11584)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 512, elements: !677)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2414, file: !1460, line: 1011, baseType: !182, size: 128, offset: 12096)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2414, file: !1460, line: 1012, baseType: !182, size: 128, offset: 12224)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2414, file: !1460, line: 1014, baseType: !1686, size: 64, offset: 12352)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2414, file: !1460, line: 1017, baseType: !1833, size: 64, offset: 12416)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2414, file: !1460, line: 1020, baseType: !1833, size: 64, offset: 12480)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2414, file: !1460, line: 1023, baseType: !170, size: 64, offset: 12544)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2414, file: !1460, line: 1025, baseType: !187, size: 64, offset: 12608)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2414, file: !1460, line: 1026, baseType: !187, size: 64, offset: 12672)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2414, file: !1460, line: 1031, baseType: !187, size: 64, offset: 12736)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2414, file: !1460, line: 1032, baseType: !2801, size: 192, offset: 12800)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1460, line: 324, size: 192, elements: !2802)
!2802 = !{!2803, !2804, !2805}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2801, file: !1460, line: 326, baseType: !187, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2801, file: !1460, line: 327, baseType: !187, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2801, file: !1460, line: 328, baseType: !621, size: 32, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2414, file: !1460, line: 1041, baseType: !176, size: 64, offset: 12992)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2414, file: !1460, line: 1042, baseType: !176, size: 64, offset: 13056)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2414, file: !1460, line: 1045, baseType: !187, size: 64, offset: 13120)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2414, file: !1460, line: 1048, baseType: !187, size: 64, offset: 13184)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2414, file: !1460, line: 1051, baseType: !176, size: 64, offset: 13248)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2414, file: !1460, line: 1052, baseType: !176, size: 64, offset: 13312)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2414, file: !1460, line: 1055, baseType: !2813, size: 640, offset: 13376)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2814, line: 132, size: 640, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2815 = !{!2816, !2822, !2823}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2813, file: !2814, line: 133, baseType: !2817, size: 576)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2818, size: 576, elements: !505)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2814, line: 117, size: 192, elements: !2819)
!2819 = !{!2820, !2821}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2818, file: !2814, line: 118, baseType: !187, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2818, file: !2814, line: 119, baseType: !2580, size: 128, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2813, file: !2814, line: 134, baseType: !7, size: 32, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2813, file: !2814, line: 135, baseType: !7, size: 32, offset: 608)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2414, file: !1460, line: 1058, baseType: !2825, size: 448, offset: 14016)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2814, line: 144, size: 448, elements: !2826)
!2826 = !{!2827, !2828, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2825, file: !2814, line: 145, baseType: !594, size: 128, align: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2825, file: !2814, line: 146, baseType: !616, size: 256, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2825, file: !2814, line: 147, baseType: !7, size: 32, offset: 384)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2414, file: !1460, line: 1064, baseType: !703, size: 64, offset: 14464)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2414, file: !1460, line: 1067, baseType: !703, size: 64, offset: 14528)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2414, file: !1460, line: 1070, baseType: !703, size: 64, offset: 14592)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2414, file: !1460, line: 1074, baseType: !730, size: 64, offset: 14656)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2414, file: !1460, line: 1084, baseType: !2835, size: 128, offset: 14720)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 128, elements: !2836)
!2836 = !{!2837}
!2837 = !DISubrange(count: 16)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2414, file: !1460, line: 1086, baseType: !2839, size: 64, offset: 14848)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1460, line: 55, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2414, file: !1460, line: 1089, baseType: !2842, size: 64, offset: 14912)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2843, line: 12, size: 64, elements: !2844)
!2843 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2844 = !{!2845}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2842, file: !2843, line: 13, baseType: !2846, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2843, line: 8, flags: DIFlagFwdDecl)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2414, file: !1460, line: 1090, baseType: !2849, size: 128, offset: 14976)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2850, line: 13, size: 128, elements: !2851)
!2850 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2851 = !{!2852}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2849, file: !2850, line: 14, baseType: !182, size: 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2414, file: !1460, line: 1097, baseType: !2854, size: 64, offset: 15104)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1460, line: 50, flags: DIFlagFwdDecl)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2414, file: !1460, line: 1100, baseType: !2857, size: 64, offset: 15168)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1460, line: 1100, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2414, file: !1460, line: 1103, baseType: !2860, size: 64, offset: 15232)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1460, line: 53, flags: DIFlagFwdDecl)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2414, file: !1460, line: 1107, baseType: !2863, size: 64, offset: 15296)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2865, line: 35, flags: DIFlagFwdDecl)
!2865 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2414, file: !1460, line: 1110, baseType: !2867, size: 64, offset: 15360)
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2868, size: 64)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2869, line: 93, size: 8768, elements: !2870)
!2869 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2870 = !{!2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2918, !2927, !2928, !2930, !2931, !2932, !2935, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2973, !2974, !2981, !2991, !2994, !2995, !2998, !2999, !3000, !3001, !3002, !3003}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2868, file: !2869, line: 94, baseType: !659, size: 32)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2868, file: !2869, line: 95, baseType: !335, size: 32, offset: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2868, file: !2869, line: 96, baseType: !117, size: 32, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2868, file: !2869, line: 97, baseType: !117, size: 32, offset: 96)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2868, file: !2869, line: 98, baseType: !182, size: 128, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2868, file: !2869, line: 100, baseType: !681, size: 192, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2868, file: !2869, line: 103, baseType: !2413, size: 64, offset: 448)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2868, file: !2869, line: 106, baseType: !2879, size: 192, offset: 512)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !900, line: 32, size: 192, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2879, file: !900, line: 33, baseType: !182, size: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2879, file: !900, line: 34, baseType: !2883, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2884, line: 25, baseType: !2885)
!2884 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2884, line: 23, size: 64, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2885, file: !2884, line: 24, baseType: !2648, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2868, file: !2869, line: 109, baseType: !668, size: 64, offset: 704)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2868, file: !2869, line: 112, baseType: !117, size: 32, offset: 768)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2868, file: !2869, line: 114, baseType: !117, size: 32, offset: 800)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2868, file: !2869, line: 115, baseType: !2413, size: 64, offset: 832)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2868, file: !2869, line: 118, baseType: !117, size: 32, offset: 896)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2868, file: !2869, line: 119, baseType: !7, size: 32, offset: 928)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2868, file: !2869, line: 121, baseType: !2895, size: 64, offset: 960)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2869, line: 80, size: 448, elements: !2897)
!2897 = !{!2898, !2899, !2905}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2896, file: !2869, line: 81, baseType: !335, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2896, file: !2869, line: 82, baseType: !2900, size: 128, offset: 64)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2869, line: 75, size: 128, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2900, file: !2869, line: 76, baseType: !2413, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2900, file: !2869, line: 77, baseType: !2904, size: 64, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2896, file: !2869, line: 83, baseType: !1687, size: 256, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2868, file: !2869, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2868, file: !2869, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2868, file: !2869, line: 138, baseType: !7, size: 32, offset: 1056)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2868, file: !2869, line: 139, baseType: !182, size: 128, offset: 1088)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2868, file: !2869, line: 142, baseType: !2524, size: 512, offset: 1216)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2868, file: !2869, line: 143, baseType: !2532, size: 64, offset: 1728)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2868, file: !2869, line: 150, baseType: !2913, size: 256, offset: 1792)
!2913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2914, size: 256, elements: !1823)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2869, line: 38, size: 128, elements: !2915)
!2915 = !{!2916, !2917}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2914, file: !2869, line: 39, baseType: !187, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2914, file: !2869, line: 40, baseType: !187, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2868, file: !2869, line: 156, baseType: !2919, size: 192, offset: 2048)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2869, line: 66, size: 192, elements: !2920)
!2920 = !{!2921}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2919, file: !2869, line: 67, baseType: !2922, size: 192)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2869, line: 47, size: 192, elements: !2923)
!2923 = !{!2924, !2925, !2926}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2922, file: !2869, line: 48, baseType: !609, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2922, file: !2869, line: 49, baseType: !609, size: 64, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2922, file: !2869, line: 50, baseType: !609, size: 64, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2868, file: !2869, line: 160, baseType: !2813, size: 640, offset: 2240)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2868, file: !2869, line: 163, baseType: !2929, size: 256, offset: 2880)
!2929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 256, elements: !677)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2868, file: !2869, line: 169, baseType: !655, size: 64, offset: 3136)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2868, file: !2869, line: 172, baseType: !117, size: 32, offset: 3200)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2868, file: !2869, line: 174, baseType: !2933, size: 64, offset: 3264)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2869, line: 174, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2868, file: !2869, line: 185, baseType: !2936, size: 64, offset: 3328)
!2936 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !263, line: 860, baseType: !2937)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !263, line: 853, size: 64, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2937, file: !263, line: 858, baseType: !262, size: 32)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2937, file: !263, line: 859, baseType: !315, size: 32, offset: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2868, file: !2869, line: 186, baseType: !187, size: 64, offset: 3392)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2868, file: !2869, line: 186, baseType: !187, size: 64, offset: 3456)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2868, file: !2869, line: 186, baseType: !187, size: 64, offset: 3520)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2868, file: !2869, line: 186, baseType: !187, size: 64, offset: 3584)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2868, file: !2869, line: 187, baseType: !187, size: 64, offset: 3648)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2868, file: !2869, line: 188, baseType: !187, size: 64, offset: 3712)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2868, file: !2869, line: 189, baseType: !2801, size: 192, offset: 3776)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2868, file: !2869, line: 190, baseType: !176, size: 64, offset: 3968)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2868, file: !2869, line: 190, baseType: !176, size: 64, offset: 4032)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2868, file: !2869, line: 190, baseType: !176, size: 64, offset: 4096)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2868, file: !2869, line: 190, baseType: !176, size: 64, offset: 4160)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2868, file: !2869, line: 191, baseType: !176, size: 64, offset: 4224)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2868, file: !2869, line: 191, baseType: !176, size: 64, offset: 4288)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2868, file: !2869, line: 191, baseType: !176, size: 64, offset: 4352)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2868, file: !2869, line: 191, baseType: !176, size: 64, offset: 4416)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2868, file: !2869, line: 192, baseType: !176, size: 64, offset: 4480)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2868, file: !2869, line: 192, baseType: !176, size: 64, offset: 4544)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2868, file: !2869, line: 192, baseType: !176, size: 64, offset: 4608)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2868, file: !2869, line: 192, baseType: !176, size: 64, offset: 4672)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2868, file: !2869, line: 193, baseType: !176, size: 64, offset: 4736)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2868, file: !2869, line: 193, baseType: !176, size: 64, offset: 4800)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2868, file: !2869, line: 194, baseType: !2963, size: 448, offset: 4864)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2964, line: 12, size: 448, elements: !2965)
!2964 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2965 = !{!2966, !2967, !2968, !2969, !2970, !2971, !2972}
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2963, file: !2964, line: 15, baseType: !187, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2963, file: !2964, line: 17, baseType: !187, size: 64, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2963, file: !2964, line: 19, baseType: !187, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2963, file: !2964, line: 21, baseType: !187, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2963, file: !2964, line: 29, baseType: !187, size: 64, offset: 256)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2963, file: !2964, line: 35, baseType: !187, size: 64, offset: 320)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2963, file: !2964, line: 44, baseType: !187, size: 64, offset: 384)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2868, file: !2869, line: 202, baseType: !191, size: 64, offset: 5312)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2868, file: !2869, line: 213, baseType: !2975, size: 2048, offset: 5376)
!2975 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2976, size: 2048, elements: !2836)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2977, line: 43, size: 128, elements: !2978)
!2977 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2976, file: !2977, line: 44, baseType: !551, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2976, file: !2977, line: 45, baseType: !551, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2868, file: !2869, line: 216, baseType: !2982, size: 448, offset: 7424)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2869, line: 30, size: 448, elements: !2983)
!2983 = !{!2984, !2985, !2986, !2987, !2988, !2989, !2990}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2982, file: !2869, line: 31, baseType: !117, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2982, file: !2869, line: 32, baseType: !539, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2982, file: !2869, line: 33, baseType: !176, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2982, file: !2869, line: 34, baseType: !187, size: 64, offset: 192)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2982, file: !2869, line: 34, baseType: !187, size: 64, offset: 256)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2982, file: !2869, line: 35, baseType: !176, size: 64, offset: 320)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2982, file: !2869, line: 35, baseType: !176, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2868, file: !2869, line: 219, baseType: !2992, size: 64, offset: 7872)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2869, line: 219, flags: DIFlagFwdDecl)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2868, file: !2869, line: 222, baseType: !7, size: 32, offset: 7936)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2868, file: !2869, line: 223, baseType: !2996, size: 64, offset: 8000)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2869, line: 223, flags: DIFlagFwdDecl)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2868, file: !2869, line: 230, baseType: !812, size: 8, offset: 8064)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2868, file: !2869, line: 231, baseType: !781, size: 16, offset: 8080)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2868, file: !2869, line: 232, baseType: !781, size: 16, offset: 8096)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2868, file: !2869, line: 234, baseType: !1111, size: 64, offset: 8128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2868, file: !2869, line: 237, baseType: !616, size: 256, offset: 8192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2868, file: !2869, line: 243, baseType: !753, size: 320, offset: 8448)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2414, file: !1460, line: 1111, baseType: !3005, size: 64, offset: 15424)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2869, line: 20, size: 16640, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3011}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3006, file: !2869, line: 21, baseType: !315, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3006, file: !2869, line: 22, baseType: !659, size: 32, offset: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3006, file: !2869, line: 23, baseType: !681, size: 192, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3006, file: !2869, line: 24, baseType: !3012, size: 16384, offset: 256)
!3012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3013, size: 16384, elements: !509)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !900, line: 51, size: 256, elements: !3014)
!3014 = !{!3015}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3013, file: !900, line: 52, baseType: !3016, size: 256)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !900, line: 37, size: 256, elements: !3017)
!3017 = !{!3018, !3025, !3026, !3030}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3016, file: !900, line: 39, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3020, line: 83, baseType: !3021)
!3020 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3020, line: 82, baseType: !3023)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{null, !117}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3016, file: !900, line: 40, baseType: !176, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3016, file: !900, line: 46, baseType: !3027, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3020, line: 86, baseType: !3028)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3020, line: 85, baseType: !2038)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3016, file: !900, line: 48, baseType: !2883, size: 64, offset: 192)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2414, file: !1460, line: 1112, baseType: !2883, size: 64, offset: 15488)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2414, file: !1460, line: 1113, baseType: !2883, size: 64, offset: 15552)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2414, file: !1460, line: 1115, baseType: !2883, size: 64, offset: 15616)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2414, file: !1460, line: 1116, baseType: !2879, size: 192, offset: 15680)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2414, file: !1460, line: 1117, baseType: !176, size: 64, offset: 15872)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2414, file: !1460, line: 1118, baseType: !549, size: 64, offset: 15936)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2414, file: !1460, line: 1119, baseType: !7, size: 32, offset: 16000)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2414, file: !1460, line: 1121, baseType: !597, size: 64, offset: 16064)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2414, file: !1460, line: 1125, baseType: !3040, size: 64, offset: 16128)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1460, line: 43, flags: DIFlagFwdDecl)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2414, file: !1460, line: 1127, baseType: !226, size: 32, offset: 16192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2414, file: !1460, line: 1128, baseType: !7, size: 32, offset: 16224)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2414, file: !1460, line: 1130, baseType: !3045, size: 128, offset: 16256)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3046, line: 37, size: 128, elements: !3047)
!3046 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3047 = !{!3048, !3049, !3050}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3045, file: !3046, line: 38, baseType: !117, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3045, file: !3046, line: 39, baseType: !335, size: 32, offset: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3045, file: !3046, line: 40, baseType: !3051, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3046, line: 24, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2414, file: !1460, line: 1131, baseType: !3054, size: 256, offset: 16384)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3055, line: 12, size: 256, elements: !3056)
!3055 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3056 = !{!3057, !3058, !3059, !3060}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3054, file: !3055, line: 13, baseType: !401, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3054, file: !3055, line: 14, baseType: !176, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3054, file: !3055, line: 15, baseType: !176, size: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3054, file: !3055, line: 16, baseType: !812, size: 8, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2414, file: !1460, line: 1134, baseType: !187, size: 64, offset: 16640)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2414, file: !1460, line: 1135, baseType: !187, size: 64, offset: 16704)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2414, file: !1460, line: 1138, baseType: !315, size: 32, offset: 16768)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2414, file: !1460, line: 1141, baseType: !621, size: 32, offset: 16800)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2414, file: !1460, line: 1143, baseType: !3066, size: 64, offset: 16832)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1460, line: 735, size: 64, elements: !3067)
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3066, file: !1460, line: 736, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2414, file: !1460, line: 1147, baseType: !2583, size: 128, offset: 16896)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2414, file: !1460, line: 1149, baseType: !2413, size: 64, offset: 17024)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2414, file: !1460, line: 1151, baseType: !3073, size: 64, offset: 17088)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1460, line: 1151, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2414, file: !1460, line: 1188, baseType: !170, size: 64, offset: 17152)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2414, file: !1460, line: 1191, baseType: !3077, size: 64, offset: 17216)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1460, line: 44, flags: DIFlagFwdDecl)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2414, file: !1460, line: 1194, baseType: !3080, size: 64, offset: 17280)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1460, line: 45, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2414, file: !1460, line: 1197, baseType: !3083, size: 64, offset: 17344)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1460, line: 61, flags: DIFlagFwdDecl)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2414, file: !1460, line: 1199, baseType: !3086, size: 64, offset: 17408)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3088, line: 99, size: 128, elements: !3089)
!3088 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3087, file: !3088, line: 100, baseType: !607, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3087, file: !3088, line: 101, baseType: !335, size: 32, offset: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3087, file: !3088, line: 103, baseType: !223, size: 16, offset: 96)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2414, file: !1460, line: 1202, baseType: !3094, size: 64, offset: 17472)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1460, line: 48, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2414, file: !1460, line: 1205, baseType: !176, size: 64, offset: 17536)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2414, file: !1460, line: 1206, baseType: !3098, size: 64, offset: 17600)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !900, line: 14, baseType: !3100)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !900, line: 12, size: 384, elements: !3101)
!3101 = !{!3102}
!3102 = !DIDerivedType(tag: DW_TAG_member, scope: !3100, file: !900, line: 13, baseType: !3103, size: 384)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3100, file: !900, line: 13, size: 384, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3103, file: !900, line: 13, baseType: !117, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3103, file: !900, line: 13, baseType: !117, size: 32, offset: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3103, file: !900, line: 13, baseType: !117, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3103, file: !900, line: 13, baseType: !3109, size: 256, offset: 128)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3110, line: 37, size: 256, elements: !3111)
!3110 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3111 = !{!3112, !3117, !3130, !3136, !3145, !3172, !3177}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3109, file: !3110, line: 42, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3110, line: 39, size: 64, elements: !3114)
!3114 = !{!3115, !3116}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3113, file: !3110, line: 40, baseType: !2778, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3113, file: !3110, line: 41, baseType: !232, size: 32, offset: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3109, file: !3110, line: 50, baseType: !3118, size: 192)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3110, line: 45, size: 192, elements: !3119)
!3119 = !{!3120, !3122, !3123, !3129}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3118, file: !3110, line: 46, baseType: !3121, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !233, line: 95, baseType: !117)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3118, file: !3110, line: 47, baseType: !117, size: 32, offset: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3118, file: !3110, line: 48, baseType: !3124, size: 64, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3110, line: 11, baseType: !3125)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3110, line: 8, size: 64, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3125, file: !3110, line: 9, baseType: !117, size: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3125, file: !3110, line: 10, baseType: !170, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3118, file: !3110, line: 49, baseType: !117, size: 32, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3109, file: !3110, line: 57, baseType: !3131, size: 128)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3110, line: 53, size: 128, elements: !3132)
!3132 = !{!3133, !3134, !3135}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3131, file: !3110, line: 54, baseType: !2778, size: 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3131, file: !3110, line: 55, baseType: !232, size: 32, offset: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3131, file: !3110, line: 56, baseType: !3124, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3109, file: !3110, line: 66, baseType: !3137, size: 256)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3110, line: 60, size: 256, elements: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3144}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3137, file: !3110, line: 61, baseType: !2778, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3137, file: !3110, line: 62, baseType: !232, size: 32, offset: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3137, file: !3110, line: 63, baseType: !117, size: 32, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3137, file: !3110, line: 64, baseType: !3143, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !233, line: 94, baseType: !538)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3137, file: !3110, line: 65, baseType: !3143, size: 64, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3109, file: !3110, line: 105, baseType: !3146, size: 256)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3110, line: 69, size: 256, elements: !3147)
!3147 = !{!3148, !3149}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3146, file: !3110, line: 70, baseType: !170, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !3110, line: 79, baseType: !3150, size: 192, offset: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3146, file: !3110, line: 79, size: 192, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3161, !3166}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3150, file: !3110, line: 81, baseType: !117, size: 32)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3150, file: !3110, line: 86, baseType: !781, size: 16)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3150, file: !3110, line: 92, baseType: !3155, size: 192)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3150, file: !3110, line: 88, size: 192, elements: !3156)
!3156 = !{!3157, !3159, !3160}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3155, file: !3110, line: 89, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 64, elements: !2567)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3155, file: !3110, line: 90, baseType: !170, size: 64, offset: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3155, file: !3110, line: 91, baseType: !170, size: 64, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3150, file: !3110, line: 97, baseType: !3162, size: 96)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3150, file: !3110, line: 94, size: 96, elements: !3163)
!3163 = !{!3164, !3165}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3162, file: !3110, line: 95, baseType: !3158, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3162, file: !3110, line: 96, baseType: !291, size: 32, offset: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3150, file: !3110, line: 103, baseType: !3167, size: 128)
!3167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3150, file: !3110, line: 99, size: 128, elements: !3168)
!3168 = !{!3169, !3170, !3171}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3167, file: !3110, line: 100, baseType: !176, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3167, file: !3110, line: 101, baseType: !291, size: 32, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3167, file: !3110, line: 102, baseType: !291, size: 32, offset: 96)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3109, file: !3110, line: 111, baseType: !3173, size: 128)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3110, line: 108, size: 128, elements: !3174)
!3174 = !{!3175, !3176}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3173, file: !3110, line: 109, baseType: !539, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3173, file: !3110, line: 110, baseType: !117, size: 32, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3109, file: !3110, line: 118, baseType: !3178, size: 128)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3109, file: !3110, line: 114, size: 128, elements: !3179)
!3179 = !{!3180, !3181, !3182}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3178, file: !3110, line: 115, baseType: !170, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3178, file: !3110, line: 116, baseType: !117, size: 32, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3178, file: !3110, line: 117, baseType: !7, size: 32, offset: 96)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2414, file: !1460, line: 1208, baseType: !2963, size: 448, offset: 17664)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2414, file: !1460, line: 1215, baseType: !187, size: 64, offset: 18112)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2414, file: !1460, line: 1217, baseType: !187, size: 64, offset: 18176)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2414, file: !1460, line: 1219, baseType: !187, size: 64, offset: 18240)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2414, file: !1460, line: 1223, baseType: !3188, size: 64, offset: 18304)
!3188 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3189, line: 99, baseType: !3190)
!3189 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3189, line: 99, size: 64, elements: !3191)
!3191 = !{!3192}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3190, file: !3189, line: 99, baseType: !2648, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2414, file: !1460, line: 1225, baseType: !262, size: 32, offset: 18368)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2414, file: !1460, line: 1226, baseType: !117, size: 32, offset: 18400)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2414, file: !1460, line: 1227, baseType: !117, size: 32, offset: 18432)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2414, file: !1460, line: 1231, baseType: !3197, size: 64, offset: 18496)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1460, line: 1231, flags: DIFlagFwdDecl)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2414, file: !1460, line: 1233, baseType: !182, size: 128, offset: 18560)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2414, file: !1460, line: 1240, baseType: !3201, size: 64, offset: 18688)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1460, line: 62, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2414, file: !1460, line: 1242, baseType: !3204, size: 64, offset: 18752)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1460, line: 1242, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2414, file: !1460, line: 1244, baseType: !182, size: 128, offset: 18816)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2414, file: !1460, line: 1245, baseType: !3208, size: 64, offset: 18944)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1460, line: 51, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2414, file: !1460, line: 1246, baseType: !616, size: 256, offset: 19008)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2414, file: !1460, line: 1247, baseType: !7, size: 32, offset: 19264)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2414, file: !1460, line: 1250, baseType: !3213, size: 64, offset: 19328)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1460, line: 57, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2414, file: !1460, line: 1251, baseType: !616, size: 256, offset: 19392)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2414, file: !1460, line: 1252, baseType: !182, size: 128, offset: 19648)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2414, file: !1460, line: 1259, baseType: !1406, size: 64, offset: 19776)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2414, file: !1460, line: 1260, baseType: !781, size: 16, offset: 19840)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2414, file: !1460, line: 1261, baseType: !781, size: 16, offset: 19856)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2414, file: !1460, line: 1314, baseType: !3221, size: 64, offset: 19904)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3223, line: 62, size: 256, align: 256, elements: !3224)
!3223 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3224 = !{!3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3222, file: !3223, line: 75, baseType: !291, size: 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3222, file: !3223, line: 90, baseType: !291, size: 32, offset: 32)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3222, file: !3223, line: 112, baseType: !189, size: 64, offset: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3222, file: !3223, line: 132, baseType: !291, size: 32, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3222, file: !3223, line: 140, baseType: !291, size: 32, offset: 160)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3222, file: !3223, line: 149, baseType: !291, size: 32, offset: 192)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3222, file: !3223, line: 154, baseType: !3232, offset: 224)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, elements: !696)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2414, file: !1460, line: 1315, baseType: !290, size: 32, offset: 19968)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2414, file: !1460, line: 1316, baseType: !290, size: 32, offset: 20000)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2414, file: !1460, line: 1321, baseType: !176, size: 64, offset: 20032)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2414, file: !1460, line: 1325, baseType: !117, size: 32, offset: 20096)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2414, file: !1460, line: 1326, baseType: !117, size: 32, offset: 20128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2414, file: !1460, line: 1327, baseType: !117, size: 32, offset: 20160)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2414, file: !1460, line: 1328, baseType: !117, size: 32, offset: 20192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2414, file: !1460, line: 1329, baseType: !594, size: 128, align: 64, offset: 20224)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2414, file: !1460, line: 1332, baseType: !3242, size: 128, offset: 20352)
!3242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3243, line: 51, size: 128, elements: !3244)
!3243 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3244 = !{!3245, !3250, !3251}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3242, file: !3243, line: 60, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3247, line: 7, size: 64, elements: !3248)
!3247 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3248 = !{!3249}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3246, file: !3247, line: 12, baseType: !2645, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3242, file: !3243, line: 63, baseType: !812, size: 8, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3242, file: !3243, line: 70, baseType: !812, size: 8, offset: 72)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2414, file: !1460, line: 1335, baseType: !1458, size: 64, offset: 20480)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2414, file: !1460, line: 1337, baseType: !3254, size: 128, offset: 20544)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3243, line: 39, size: 128, elements: !3255)
!3255 = !{!3256, !3257, !3258}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3254, file: !3243, line: 40, baseType: !192, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3254, file: !3243, line: 42, baseType: !291, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3254, file: !3243, line: 43, baseType: !291, size: 32, offset: 96)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2414, file: !1460, line: 1340, baseType: !3260, size: 64, offset: 20672)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1460, line: 69, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2414, file: !1460, line: 1351, baseType: !117, size: 32, offset: 20736)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2414, file: !1460, line: 1352, baseType: !117, size: 32, offset: 20768)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2414, file: !1460, line: 1354, baseType: !176, size: 64, offset: 20800)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2414, file: !1460, line: 1364, baseType: !187, size: 64, offset: 20864)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2414, file: !1460, line: 1365, baseType: !187, size: 64, offset: 20928)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2414, file: !1460, line: 1412, baseType: !176, size: 64, offset: 20992)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2414, file: !1460, line: 1453, baseType: !3269, size: 64, offset: 21056)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1460, line: 1453, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2414, file: !1460, line: 1457, baseType: !3272, size: 64, offset: 21120)
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3274)
!3274 = !{!3275, !3276, !3295, !3298, !3299, !3332, !3342}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3273, file: !68, line: 62, baseType: !67, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3273, file: !68, line: 64, baseType: !3277, size: 192, offset: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3273, file: !68, line: 64, size: 192, elements: !3278)
!3278 = !{!3279, !3290}
!3279 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !68, line: 65, baseType: !3280, size: 192)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !68, line: 65, size: 192, elements: !3281)
!3281 = !{!3282, !3289}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3280, file: !68, line: 66, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3284, line: 50, size: 128, elements: !3285)
!3284 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3285 = !{!3286, !3287, !3288}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3283, file: !3284, line: 52, baseType: !176, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3283, file: !3284, line: 54, baseType: !7, size: 32, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3283, file: !3284, line: 55, baseType: !7, size: 32, offset: 96)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3280, file: !68, line: 67, baseType: !176, size: 64, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !68, line: 70, baseType: !3291, size: 192)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3277, file: !68, line: 70, size: 192, elements: !3292)
!3292 = !{!3293, !3294}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3291, file: !68, line: 71, baseType: !594, size: 128, align: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3291, file: !68, line: 72, baseType: !176, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3273, file: !68, line: 76, baseType: !3296, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3273, file: !68, line: 77, baseType: !176, size: 64, offset: 320)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3273, file: !68, line: 79, baseType: !3300, size: 64, offset: 384)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3284, line: 25, size: 256, elements: !3302)
!3302 = !{!3303, !3309, !3313}
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !3284, line: 26, baseType: !3304, size: 128)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !3284, line: 26, size: 128, elements: !3305)
!3305 = !{!3306, !3308}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3304, file: !3284, line: 27, baseType: !3307, size: 128)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !2836)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3304, file: !3284, line: 28, baseType: !3307, size: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3301, file: !3284, line: 31, baseType: !3310, size: 64, offset: 128)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3312)
!3312 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3284, line: 23, flags: DIFlagFwdDecl)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3301, file: !3284, line: 33, baseType: !3314, size: 64, offset: 192)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !3284, line: 33, size: 64, elements: !3315)
!3315 = !{!3316, !3322, !3327}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3314, file: !3284, line: 38, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3284, line: 34, size: 64, elements: !3318)
!3318 = !{!3319, !3320, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3317, file: !3284, line: 35, baseType: !738, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3317, file: !3284, line: 36, baseType: !343, size: 8, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3317, file: !3284, line: 37, baseType: !343, size: 8, offset: 40)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3314, file: !3284, line: 42, baseType: !3323, size: 16)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3284, line: 39, size: 16, elements: !3324)
!3324 = !{!3325, !3326}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3323, file: !3284, line: 40, baseType: !343, size: 8)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3323, file: !3284, line: 41, baseType: !343, size: 8, offset: 8)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3314, file: !3284, line: 46, baseType: !3328, size: 16)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3284, line: 43, size: 16, elements: !3329)
!3329 = !{!3330, !3331}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3328, file: !3284, line: 44, baseType: !343, size: 8)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3328, file: !3284, line: 45, baseType: !343, size: 8, offset: 8)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3273, file: !68, line: 81, baseType: !3333, size: 64, offset: 448)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3334, file: !68, line: 86, baseType: !3296, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3334, file: !68, line: 87, baseType: !176, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3334, file: !68, line: 88, baseType: !176, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3334, file: !68, line: 89, baseType: !176, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3334, file: !68, line: 90, baseType: !812, size: 8, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3334, file: !68, line: 92, baseType: !3333, size: 64, offset: 320)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3273, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2414, file: !1460, line: 1463, baseType: !3344, offset: 21184)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1460, line: 739, elements: !1132)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2414, file: !1460, line: 1470, baseType: !594, size: 128, align: 64, offset: 21184)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2414, file: !1460, line: 1471, baseType: !659, size: 32, offset: 21312)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2414, file: !1460, line: 1472, baseType: !117, size: 32, offset: 21344)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2414, file: !1460, line: 1474, baseType: !2413, size: 64, offset: 21376)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2414, file: !1460, line: 1475, baseType: !1933, size: 320, offset: 21440)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2414, file: !1460, line: 1478, baseType: !3351, size: 64, offset: 21760)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1060, line: 49, size: 512, elements: !3353)
!3353 = !{!3354, !3355, !3356, !3357, !3358, !3360, !3361, !3362, !3364}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3352, file: !1060, line: 50, baseType: !3351, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3352, file: !1060, line: 51, baseType: !170, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3352, file: !1060, line: 52, baseType: !176, size: 64, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3352, file: !1060, line: 53, baseType: !176, size: 64, offset: 192)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3352, file: !1060, line: 54, baseType: !3359, size: 64, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3352, file: !1060, line: 56, baseType: !7, size: 32, offset: 320)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3352, file: !1060, line: 58, baseType: !7, size: 32, offset: 352)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3352, file: !1060, line: 59, baseType: !3363, size: 64, offset: 384)
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !172, line: 159, baseType: !187)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3352, file: !1060, line: 60, baseType: !1227, size: 64, offset: 448)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2414, file: !1460, line: 1482, baseType: !659, size: 32, offset: 21824)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2414, file: !1460, line: 1489, baseType: !170, size: 64, offset: 21888)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2414, file: !1460, line: 1504, baseType: !170, size: 64, offset: 21952)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2414, file: !1460, line: 1505, baseType: !189, size: 64, offset: 22016)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2414, file: !1460, line: 1506, baseType: !187, size: 64, offset: 22080)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2414, file: !1460, line: 1507, baseType: !189, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2414, file: !1460, line: 1508, baseType: !189, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2414, file: !1460, line: 1509, baseType: !189, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2414, file: !1460, line: 1510, baseType: !594, size: 128, align: 64, offset: 22208)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2414, file: !1460, line: 1511, baseType: !117, size: 32, offset: 22336)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2414, file: !1460, line: 1515, baseType: !3376, size: 64, offset: 22400)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !589, line: 56, size: 64, elements: !3377)
!3377 = !{!3378}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3376, file: !589, line: 57, baseType: !592, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2414, file: !1460, line: 1518, baseType: !3376, size: 64, offset: 22464)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2414, file: !1460, line: 1528, baseType: !594, size: 128, align: 64, offset: 22528)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2414, file: !1460, line: 1552, baseType: !3382, size: 35328, offset: 23040)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3383, line: 430, size: 35328, elements: !3384)
!3383 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3384 = !{!3385, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3414, !3415, !3416, !3417, !3418, !3419, !3422, !3423, !3424, !3425}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3382, file: !3383, line: 432, baseType: !3386, size: 192)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3387, size: 192, elements: !505)
!3387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3388, line: 16, size: 64, elements: !3389)
!3388 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3387, file: !3388, line: 17, baseType: !350, size: 16)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3387, file: !3388, line: 18, baseType: !350, size: 16, offset: 16)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3387, file: !3388, line: 19, baseType: !350, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3387, file: !3388, line: 19, baseType: !350, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3387, file: !3388, line: 19, baseType: !350, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3387, file: !3388, line: 19, baseType: !350, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3387, file: !3388, line: 19, baseType: !350, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3387, file: !3388, line: 20, baseType: !350, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3387, file: !3388, line: 20, baseType: !350, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3387, file: !3388, line: 20, baseType: !350, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3387, file: !3388, line: 20, baseType: !350, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3387, file: !3388, line: 20, baseType: !350, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3387, file: !3388, line: 20, baseType: !350, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3382, file: !3383, line: 436, baseType: !176, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3382, file: !3383, line: 440, baseType: !223, size: 16, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3382, file: !3383, line: 441, baseType: !223, size: 16, offset: 272)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3382, file: !3383, line: 442, baseType: !223, size: 16, offset: 288)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3382, file: !3383, line: 443, baseType: !223, size: 16, offset: 304)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3382, file: !3383, line: 447, baseType: !176, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3382, file: !3383, line: 448, baseType: !176, size: 64, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3382, file: !3383, line: 459, baseType: !3411, size: 256, offset: 448)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3412, size: 256, elements: !677)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3383, line: 428, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3382, file: !3383, line: 461, baseType: !176, size: 64, offset: 704)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3382, file: !3383, line: 463, baseType: !176, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3382, file: !3383, line: 465, baseType: !176, size: 64, offset: 832)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3382, file: !3383, line: 466, baseType: !176, size: 64, offset: 896)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3382, file: !3383, line: 467, baseType: !176, size: 64, offset: 960)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3382, file: !3383, line: 473, baseType: !3420, size: 64, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3383, line: 10, flags: DIFlagFwdDecl)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3382, file: !3383, line: 480, baseType: !176, size: 64, offset: 1088)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3382, file: !3383, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3382, file: !3383, line: 491, baseType: !290, size: 32, offset: 1184)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3382, file: !3383, line: 501, baseType: !3426, size: 33792, offset: 1536)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3427, line: 448, size: 33792, elements: !3428)
!3427 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3428 = !{!3429, !3430, !3431, !3593, !3594, !3600, !3601}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3426, file: !3427, line: 461, baseType: !7, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3426, file: !3427, line: 468, baseType: !176, size: 64, offset: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3426, file: !3427, line: 476, baseType: !3432, size: 64, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3427, line: 356, size: 33280, align: 512, elements: !3434)
!3434 = !{!3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3433, file: !3427, line: 358, baseType: !7, size: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3433, file: !3427, line: 361, baseType: !7, size: 32, offset: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3433, file: !3427, line: 364, baseType: !187, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3433, file: !3427, line: 367, baseType: !187, size: 64, offset: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3433, file: !3427, line: 370, baseType: !187, size: 64, offset: 192)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3433, file: !3427, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3433, file: !3427, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3433, file: !3427, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3433, file: !3427, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3433, file: !3427, line: 397, baseType: !3445, size: 32768, offset: 512)
!3445 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3427, line: 348, size: 32768, elements: !3446)
!3446 = !{!3447, !3462, !3499, !3576, !3589}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3445, file: !3427, line: 349, baseType: !3448, size: 896)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3427, line: 12, size: 896, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3461}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3448, file: !3427, line: 13, baseType: !290, size: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3448, file: !3427, line: 14, baseType: !290, size: 32, offset: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3448, file: !3427, line: 15, baseType: !290, size: 32, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3448, file: !3427, line: 16, baseType: !290, size: 32, offset: 96)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3448, file: !3427, line: 17, baseType: !290, size: 32, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3448, file: !3427, line: 18, baseType: !290, size: 32, offset: 160)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3448, file: !3427, line: 19, baseType: !290, size: 32, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3448, file: !3427, line: 22, baseType: !3458, size: 640, offset: 224)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 640, elements: !3459)
!3459 = !{!3460}
!3460 = !DISubrange(count: 20)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3448, file: !3427, line: 25, baseType: !290, size: 32, offset: 864)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3445, file: !3427, line: 350, baseType: !3463, size: 4096, align: 128)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3427, line: 34, size: 4096, align: 128, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3484, !3485, !3486, !3488, !3490, !3494}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3463, file: !3427, line: 35, baseType: !350, size: 16)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3463, file: !3427, line: 36, baseType: !350, size: 16, offset: 16)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3463, file: !3427, line: 37, baseType: !350, size: 16, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3463, file: !3427, line: 38, baseType: !350, size: 16, offset: 48)
!3469 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !3427, line: 39, baseType: !3470, size: 128, offset: 64)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !3427, line: 39, size: 128, elements: !3471)
!3471 = !{!3472, !3477}
!3472 = !DIDerivedType(tag: DW_TAG_member, scope: !3470, file: !3427, line: 40, baseType: !3473, size: 128)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3427, line: 40, size: 128, elements: !3474)
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3473, file: !3427, line: 41, baseType: !187, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3473, file: !3427, line: 42, baseType: !187, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, scope: !3470, file: !3427, line: 44, baseType: !3478, size: 128)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3470, file: !3427, line: 44, size: 128, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3478, file: !3427, line: 45, baseType: !290, size: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3478, file: !3427, line: 46, baseType: !290, size: 32, offset: 32)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3478, file: !3427, line: 47, baseType: !290, size: 32, offset: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3478, file: !3427, line: 48, baseType: !290, size: 32, offset: 96)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3463, file: !3427, line: 51, baseType: !290, size: 32, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3463, file: !3427, line: 52, baseType: !290, size: 32, offset: 224)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3463, file: !3427, line: 55, baseType: !3487, size: 1024, offset: 256)
!3487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 1024, elements: !301)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3463, file: !3427, line: 58, baseType: !3489, size: 2048, offset: 1280)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 2048, elements: !509)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3463, file: !3427, line: 60, baseType: !3491, size: 384, offset: 3328)
!3491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 384, elements: !3492)
!3492 = !{!3493}
!3493 = !DISubrange(count: 12)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3463, file: !3427, line: 62, baseType: !3495, size: 384, offset: 3712)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3463, file: !3427, line: 62, size: 384, elements: !3496)
!3496 = !{!3497, !3498}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3495, file: !3427, line: 63, baseType: !3491, size: 384)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3495, file: !3427, line: 64, baseType: !3491, size: 384)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3445, file: !3427, line: 351, baseType: !3500, size: 1088)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3427, line: 79, size: 1088, elements: !3501)
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3575}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3500, file: !3427, line: 80, baseType: !290, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3500, file: !3427, line: 81, baseType: !290, size: 32, offset: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3500, file: !3427, line: 82, baseType: !290, size: 32, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3500, file: !3427, line: 83, baseType: !290, size: 32, offset: 96)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3500, file: !3427, line: 84, baseType: !290, size: 32, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3500, file: !3427, line: 85, baseType: !290, size: 32, offset: 160)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3500, file: !3427, line: 86, baseType: !290, size: 32, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3500, file: !3427, line: 88, baseType: !3458, size: 640, offset: 224)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3500, file: !3427, line: 89, baseType: !343, size: 8, offset: 864)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3500, file: !3427, line: 90, baseType: !343, size: 8, offset: 872)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3500, file: !3427, line: 91, baseType: !343, size: 8, offset: 880)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3500, file: !3427, line: 92, baseType: !343, size: 8, offset: 888)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3500, file: !3427, line: 93, baseType: !343, size: 8, offset: 896)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3500, file: !3427, line: 94, baseType: !343, size: 8, offset: 904)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3500, file: !3427, line: 95, baseType: !3517, size: 64, offset: 960)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3519, line: 11, size: 128, elements: !3520)
!3519 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3520 = !{!3521, !3522}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3518, file: !3519, line: 12, baseType: !539, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3518, file: !3519, line: 13, baseType: !3523, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3525, line: 103, size: 1344, elements: !3526)
!3525 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3526 = !{!3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3555, !3556, !3557}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3524, file: !3525, line: 109, baseType: !176, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3524, file: !3525, line: 110, baseType: !176, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3524, file: !3525, line: 111, baseType: !176, size: 64, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3524, file: !3525, line: 112, baseType: !176, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3524, file: !3525, line: 113, baseType: !176, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3524, file: !3525, line: 114, baseType: !176, size: 64, offset: 320)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3524, file: !3525, line: 117, baseType: !176, size: 64, offset: 384)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3524, file: !3525, line: 118, baseType: !176, size: 64, offset: 448)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3524, file: !3525, line: 119, baseType: !176, size: 64, offset: 512)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3524, file: !3525, line: 120, baseType: !176, size: 64, offset: 576)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3524, file: !3525, line: 121, baseType: !176, size: 64, offset: 640)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3524, file: !3525, line: 122, baseType: !176, size: 64, offset: 704)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3524, file: !3525, line: 123, baseType: !176, size: 64, offset: 768)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3524, file: !3525, line: 124, baseType: !176, size: 64, offset: 832)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3524, file: !3525, line: 125, baseType: !176, size: 64, offset: 896)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3524, file: !3525, line: 139, baseType: !176, size: 64, offset: 960)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3524, file: !3525, line: 142, baseType: !176, size: 64, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, scope: !3524, file: !3525, line: 144, baseType: !3545, size: 64, offset: 1088)
!3545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3524, file: !3525, line: 144, size: 64, elements: !3546)
!3546 = !{!3547, !3548, !3549}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3545, file: !3525, line: 146, baseType: !350, size: 16)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3545, file: !3525, line: 148, baseType: !187, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3545, file: !3525, line: 150, baseType: !3550, size: 64)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3525, line: 59, size: 64, elements: !3551)
!3551 = !{!3552, !3553, !3554}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3550, file: !3525, line: 61, baseType: !187, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3550, file: !3525, line: 63, baseType: !187, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3550, file: !3525, line: 65, baseType: !187, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3524, file: !3525, line: 153, baseType: !176, size: 64, offset: 1152)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3524, file: !3525, line: 154, baseType: !176, size: 64, offset: 1216)
!3557 = !DIDerivedType(tag: DW_TAG_member, scope: !3524, file: !3525, line: 156, baseType: !3558, size: 64, offset: 1280)
!3558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3524, file: !3525, line: 156, size: 64, elements: !3559)
!3559 = !{!3560, !3561, !3562}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3558, file: !3525, line: 158, baseType: !350, size: 16)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3558, file: !3525, line: 160, baseType: !187, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3558, file: !3525, line: 162, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3525, line: 69, size: 64, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3563, file: !3525, line: 71, baseType: !187, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3563, file: !3525, line: 73, baseType: !187, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3563, file: !3525, line: 75, baseType: !187, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3563, file: !3525, line: 77, baseType: !187, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3563, file: !3525, line: 80, baseType: !187, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3563, file: !3525, line: 83, baseType: !187, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3563, file: !3525, line: 86, baseType: !187, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3563, file: !3525, line: 88, baseType: !187, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3563, file: !3525, line: 93, baseType: !187, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3563, file: !3525, line: 100, baseType: !187, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3500, file: !3427, line: 96, baseType: !290, size: 32, offset: 1024)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3445, file: !3427, line: 352, baseType: !3577, size: 4608, align: 512)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3427, line: 333, size: 4608, align: 512, elements: !3578)
!3578 = !{!3579, !3580, !3587}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3577, file: !3427, line: 334, baseType: !3463, size: 4096, align: 128)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3577, file: !3427, line: 335, baseType: !3581, size: 512, offset: 4096)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3427, line: 312, size: 512, elements: !3582)
!3582 = !{!3583, !3584, !3585}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3581, file: !3427, line: 313, baseType: !187, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3581, file: !3427, line: 314, baseType: !187, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3581, file: !3427, line: 315, baseType: !3586, size: 384, offset: 128)
!3586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 384, elements: !799)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3577, file: !3427, line: 336, baseType: !3588, offset: 4608)
!3588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, elements: !696)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3445, file: !3427, line: 353, baseType: !3590, size: 32768)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 32768, elements: !3591)
!3591 = !{!3592}
!3592 = !DISubrange(count: 4096)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3426, file: !3427, line: 484, baseType: !3432, size: 64, offset: 192)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3426, file: !3427, line: 491, baseType: !3595, size: 128, offset: 256)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3427, line: 404, size: 128, elements: !3596)
!3596 = !{!3597, !3598, !3599}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3595, file: !3427, line: 424, baseType: !187, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3595, file: !3427, line: 432, baseType: !7, size: 32, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3595, file: !3427, line: 440, baseType: !7, size: 32, offset: 96)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3426, file: !3427, line: 498, baseType: !3595, size: 128, offset: 384)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3426, file: !3427, line: 508, baseType: !3433, size: 33280, align: 512, offset: 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2396, file: !2397, line: 16, baseType: !681, size: 192, offset: 512)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2396, file: !2397, line: 17, baseType: !335, size: 32, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !413, file: !14, line: 1240, baseType: !170, size: 64, offset: 6912)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !413, file: !14, line: 1243, baseType: !290, size: 32, offset: 6976)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !413, file: !14, line: 1245, baseType: !769, size: 64, offset: 7040)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !413, file: !14, line: 1246, baseType: !769, size: 64, offset: 7104)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !413, file: !14, line: 1248, baseType: !291, size: 32, offset: 7168)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !413, file: !14, line: 1249, baseType: !3610, size: 64, offset: 7232)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !413, file: !14, line: 1252, baseType: !3613, size: 256, offset: 7296)
!3613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 256, elements: !301)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !413, file: !14, line: 1253, baseType: !3615, size: 128, offset: 7552)
!3615 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3616, line: 21, baseType: !3617)
!3616 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3616, line: 19, size: 128, elements: !3618)
!3618 = !{!3619}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3617, file: !3616, line: 20, baseType: !3620, size: 128)
!3620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 128, elements: !2836)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !413, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !413, file: !14, line: 1261, baseType: !616, size: 256, offset: 7744)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !413, file: !14, line: 1267, baseType: !375, size: 64, offset: 8000)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !413, file: !14, line: 1269, baseType: !355, size: 64, offset: 8064)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !413, file: !14, line: 1271, baseType: !3626, size: 448, offset: 8128)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2176, line: 63, size: 448, elements: !3627)
!3627 = !{!3628, !3633, !3634, !3635, !3636, !3637, !3638}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3626, file: !2176, line: 64, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!176, !3632, !2174}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3626, file: !2176, line: 66, baseType: !3629, size: 64, offset: 64)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3626, file: !2176, line: 69, baseType: !539, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3626, file: !2176, line: 70, baseType: !117, size: 32, offset: 192)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3626, file: !2176, line: 71, baseType: !7, size: 32, offset: 224)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3626, file: !2176, line: 74, baseType: !182, size: 128, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3626, file: !2176, line: 85, baseType: !3639, size: 64, offset: 384)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !413, file: !14, line: 1274, baseType: !607, size: 64, offset: 8576)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !413, file: !14, line: 1280, baseType: !607, size: 64, offset: 8640)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !413, file: !14, line: 1283, baseType: !117, size: 32, offset: 8704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !413, file: !14, line: 1286, baseType: !1511, size: 32, offset: 8736)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !413, file: !14, line: 1289, baseType: !1995, size: 64, offset: 8768)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !413, file: !14, line: 1290, baseType: !668, size: 64, offset: 8832)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !413, file: !14, line: 1297, baseType: !895, size: 64, offset: 8896)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !413, file: !14, line: 1304, baseType: !3648, size: 64, offset: 8960)
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3649, line: 49, size: 64, elements: !3650)
!3649 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3650 = !{!3651}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3648, file: !3649, line: 50, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3649, line: 41, size: 512, align: 512, elements: !3654)
!3654 = !{!3655, !3656, !3661}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3653, file: !3649, line: 43, baseType: !315, size: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3653, file: !3649, line: 45, baseType: !3657, size: 192, offset: 64)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3649, line: 29, size: 192, elements: !3658)
!3658 = !{!3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3657, file: !3649, line: 30, baseType: !182, size: 128)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3657, file: !3649, line: 32, baseType: !539, size: 64, offset: 128)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3653, file: !3649, line: 46, baseType: !539, size: 64, offset: 256)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !413, file: !14, line: 1305, baseType: !3648, size: 64, offset: 9024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !413, file: !14, line: 1306, baseType: !594, size: 128, align: 64, offset: 9088)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !413, file: !14, line: 1307, baseType: !1266, size: 256, offset: 9216)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !413, file: !14, line: 1309, baseType: !616, size: 256, offset: 9472)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !413, file: !14, line: 1314, baseType: !117, size: 32, offset: 9728)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !413, file: !14, line: 1317, baseType: !315, size: 32, align: 512, offset: 10240)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !413, file: !14, line: 1318, baseType: !182, size: 128, offset: 10304)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !413, file: !14, line: 1320, baseType: !315, size: 32, offset: 10432)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !413, file: !14, line: 1321, baseType: !182, size: 128, offset: 10496)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !407, file: !408, line: 73, baseType: !117, size: 32, offset: 128)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !407, file: !408, line: 74, baseType: !3673, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !720, line: 42, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !357, file: !258, line: 141, baseType: !3677, size: 64, offset: 704)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!117, !2236, !812}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !357, file: !258, line: 142, baseType: !3681, size: 64, offset: 768)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!256, !256, !3684}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !257, file: !258, line: 96, baseType: !412, size: 64, offset: 832)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !257, file: !258, line: 97, baseType: !176, size: 64, offset: 896)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !257, file: !258, line: 98, baseType: !170, size: 64, offset: 960)
!3689 = !DIDerivedType(tag: DW_TAG_member, scope: !257, file: !258, line: 100, baseType: !3690, size: 128, offset: 1024)
!3690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !257, file: !258, line: 100, size: 128, elements: !3691)
!3691 = !{!3692, !3693}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3690, file: !258, line: 101, baseType: !182, size: 128)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3690, file: !258, line: 102, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !257, file: !258, line: 104, baseType: !182, size: 128, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !257, file: !258, line: 105, baseType: !182, size: 128, offset: 1280)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !257, file: !258, line: 113, baseType: !3698, size: 128, offset: 1408)
!3698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !257, file: !258, line: 109, size: 128, elements: !3699)
!3699 = !{!3700, !3701, !3702}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3698, file: !258, line: 110, baseType: !672, size: 128)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3698, file: !258, line: 111, baseType: !272, size: 128)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3698, file: !258, line: 112, baseType: !594, size: 128, align: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !250, file: !14, line: 1968, baseType: !3704, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DISubroutineType(types: !3706)
!3706 = !{!375, !256, !218, !3707}
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3709, line: 10, size: 128, elements: !3710)
!3709 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3708, file: !3709, line: 11, baseType: !1551, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3708, file: !3709, line: 12, baseType: !170, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !250, file: !14, line: 1969, baseType: !3714, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!117, !3673, !218, !117}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !250, file: !14, line: 1970, baseType: !3718, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!244, !218, !117, !812}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !250, file: !14, line: 1972, baseType: !3722, size: 64, offset: 256)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!117, !256, !401, !117}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !250, file: !14, line: 1974, baseType: !3726, size: 64, offset: 320)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!117, !3673, !218, !256, !222, !812}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !250, file: !14, line: 1976, baseType: !3730, size: 64, offset: 384)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!117, !256, !218, !256}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !250, file: !14, line: 1977, baseType: !3734, size: 64, offset: 448)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!117, !218, !256}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !250, file: !14, line: 1978, baseType: !3738, size: 64, offset: 512)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!117, !3673, !218, !256, !375}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !250, file: !14, line: 1980, baseType: !3742, size: 64, offset: 576)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!117, !3673, !218, !256, !222}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !250, file: !14, line: 1982, baseType: !3734, size: 64, offset: 640)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !250, file: !14, line: 1983, baseType: !3747, size: 64, offset: 704)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DISubroutineType(types: !3749)
!3749 = !{!117, !3673, !218, !256, !222, !417}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !250, file: !14, line: 1985, baseType: !3751, size: 64, offset: 768)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!117, !3673, !218, !256, !218, !256, !7}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !250, file: !14, line: 1987, baseType: !3755, size: 64, offset: 832)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!117, !3673, !256, !3758}
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3773, !3782, !3783, !3788, !3789, !3790}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3759, file: !14, line: 227, baseType: !7, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3759, file: !14, line: 228, baseType: !222, size: 16, offset: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !14, line: 241, baseType: !3764, size: 32, offset: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !14, line: 241, size: 32, elements: !3765)
!3765 = !{!3766, !3767}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3764, file: !14, line: 242, baseType: !226, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3764, file: !14, line: 243, baseType: !3768, size: 32)
!3768 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3769, line: 16, baseType: !3770)
!3769 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3769, line: 14, size: 32, elements: !3771)
!3771 = !{!3772}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3770, file: !3769, line: 15, baseType: !231, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !14, line: 245, baseType: !3774, size: 32, offset: 96)
!3774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3759, file: !14, line: 245, size: 32, elements: !3775)
!3775 = !{!3776, !3777}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3774, file: !14, line: 246, baseType: !236, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3774, file: !14, line: 247, baseType: !3778, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3769, line: 20, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3769, line: 18, size: 32, elements: !3780)
!3780 = !{!3781}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3779, file: !3769, line: 19, baseType: !240, size: 32)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3759, file: !14, line: 249, baseType: !422, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3759, file: !14, line: 250, baseType: !3784, size: 128, offset: 192)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !770, line: 13, size: 128, elements: !3785)
!3785 = !{!3786, !3787}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3784, file: !770, line: 14, baseType: !769, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3784, file: !770, line: 15, baseType: !539, size: 64, offset: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3759, file: !14, line: 251, baseType: !3784, size: 128, offset: 320)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3759, file: !14, line: 252, baseType: !3784, size: 128, offset: 448)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3759, file: !14, line: 259, baseType: !581, size: 64, offset: 576)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !250, file: !14, line: 1988, baseType: !3792, size: 64, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!117, !3673, !2236, !3795, !290, !7}
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3797, line: 22, size: 1280, elements: !3798)
!3797 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3796, file: !3797, line: 23, baseType: !290, size: 32)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3796, file: !3797, line: 24, baseType: !222, size: 16, offset: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3796, file: !3797, line: 25, baseType: !7, size: 32, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3796, file: !3797, line: 26, baseType: !777, size: 32, offset: 96)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3796, file: !3797, line: 27, baseType: !187, size: 64, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3796, file: !3797, line: 28, baseType: !187, size: 64, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3796, file: !3797, line: 41, baseType: !187, size: 64, offset: 256)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3796, file: !3797, line: 42, baseType: !417, size: 32, offset: 320)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3796, file: !3797, line: 43, baseType: !417, size: 32, offset: 352)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3796, file: !3797, line: 44, baseType: !226, size: 32, offset: 384)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3796, file: !3797, line: 45, baseType: !236, size: 32, offset: 416)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3796, file: !3797, line: 46, baseType: !422, size: 64, offset: 448)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3796, file: !3797, line: 47, baseType: !3784, size: 128, offset: 512)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3796, file: !3797, line: 48, baseType: !3784, size: 128, offset: 640)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3796, file: !3797, line: 49, baseType: !3784, size: 128, offset: 768)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3796, file: !3797, line: 50, baseType: !3784, size: 128, offset: 896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3796, file: !3797, line: 51, baseType: !187, size: 64, offset: 1024)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3796, file: !3797, line: 52, baseType: !187, size: 64, offset: 1088)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3796, file: !3797, line: 53, baseType: !290, size: 32, offset: 1152)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3796, file: !3797, line: 54, baseType: !290, size: 32, offset: 1184)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3796, file: !3797, line: 55, baseType: !187, size: 64, offset: 1216)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !250, file: !14, line: 1990, baseType: !3821, size: 64, offset: 960)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!536, !256, !401, !549}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !250, file: !14, line: 1991, baseType: !3825, size: 64, offset: 1024)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = !DISubroutineType(types: !3827)
!3827 = !{!117, !218, !3828, !187, !187}
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !250, file: !14, line: 1993, baseType: !3831, size: 64, offset: 1088)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!117, !218, !117}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !250, file: !14, line: 1994, baseType: !3835, size: 64, offset: 1152)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DISubroutineType(types: !3837)
!3837 = !{!117, !218, !256, !581, !7, !222}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !250, file: !14, line: 1997, baseType: !3839, size: 64, offset: 1216)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!117, !3673, !218, !581, !222}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !250, file: !14, line: 1999, baseType: !3843, size: 64, offset: 1280)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!244, !3673, !256, !117}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !250, file: !14, line: 2001, baseType: !3847, size: 64, offset: 1344)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!117, !3673, !256, !244, !117}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !250, file: !14, line: 2003, baseType: !3851, size: 64, offset: 1408)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!117, !3673, !256, !3854}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !250, file: !14, line: 2005, baseType: !3857, size: 64, offset: 1472)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!117, !256, !3854}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !250, file: !14, line: 2006, baseType: !3861, size: 64, offset: 1536)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!3864, !218}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3866)
!3866 = !{!3867, !3874}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3865, file: !14, line: 3193, baseType: !3868, size: 128)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3869, line: 296, size: 128, elements: !3870)
!3869 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3870 = !{!3871, !3872, !3873}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3868, file: !3869, line: 297, baseType: !315, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3868, file: !3869, line: 299, baseType: !171, size: 32, offset: 32)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3868, file: !3869, line: 300, baseType: !170, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3865, file: !14, line: 3194, baseType: !290, size: 32, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !219, file: !14, line: 655, baseType: !412, size: 64, offset: 448)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !219, file: !14, line: 656, baseType: !214, size: 64, offset: 512)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !219, file: !14, line: 659, baseType: !170, size: 64, offset: 576)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !219, file: !14, line: 663, baseType: !176, size: 64, offset: 640)
!3879 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !14, line: 671, baseType: !3880, size: 32, offset: 704)
!3880 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !14, line: 671, size: 32, elements: !3881)
!3881 = !{!3882, !3884}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3880, file: !14, line: 672, baseType: !3883, size: 32)
!3883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3880, file: !14, line: 673, baseType: !7, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !219, file: !14, line: 675, baseType: !417, size: 32, offset: 736)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !219, file: !14, line: 676, baseType: !422, size: 64, offset: 768)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !219, file: !14, line: 677, baseType: !3784, size: 128, offset: 832)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !219, file: !14, line: 678, baseType: !3784, size: 128, offset: 960)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !219, file: !14, line: 679, baseType: !3784, size: 128, offset: 1088)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !219, file: !14, line: 680, baseType: !315, size: 32, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !219, file: !14, line: 681, baseType: !223, size: 16, offset: 1248)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !219, file: !14, line: 682, baseType: !343, size: 8, offset: 1264)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !219, file: !14, line: 683, baseType: !343, size: 8, offset: 1272)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !219, file: !14, line: 684, baseType: !2309, size: 64, offset: 1280)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !219, file: !14, line: 691, baseType: !176, size: 64, offset: 1344)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !219, file: !14, line: 692, baseType: !753, size: 320, offset: 1408)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !219, file: !14, line: 694, baseType: !176, size: 64, offset: 1728)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !219, file: !14, line: 695, baseType: !176, size: 64, offset: 1792)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !219, file: !14, line: 697, baseType: !672, size: 128, offset: 1856)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !219, file: !14, line: 698, baseType: !182, size: 128, offset: 1984)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !219, file: !14, line: 707, baseType: !182, size: 128, offset: 2112)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !219, file: !14, line: 708, baseType: !182, size: 128, offset: 2240)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !14, line: 709, baseType: !3904, size: 128, offset: 2368)
!3904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !14, line: 709, size: 128, elements: !3905)
!3905 = !{!3906, !3907}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3904, file: !14, line: 710, baseType: !668, size: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3904, file: !14, line: 711, baseType: !594, size: 128, align: 64)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !219, file: !14, line: 713, baseType: !609, size: 64, offset: 2496)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !219, file: !14, line: 714, baseType: !609, size: 64, offset: 2560)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !219, file: !14, line: 715, baseType: !335, size: 32, offset: 2624)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !219, file: !14, line: 716, baseType: !335, size: 32, offset: 2656)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !219, file: !14, line: 717, baseType: !335, size: 32, offset: 2688)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !219, file: !14, line: 719, baseType: !335, size: 32, offset: 2720)
!3914 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !14, line: 721, baseType: !3915, size: 64, offset: 2752)
!3915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !14, line: 721, size: 64, elements: !3916)
!3916 = !{!3917, !3918}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3915, file: !14, line: 722, baseType: !931, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3915, file: !14, line: 723, baseType: !2063, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !219, file: !14, line: 725, baseType: !3920, size: 64, offset: 2816)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !219, file: !14, line: 726, baseType: !215, size: 1536, align: 64, offset: 2880)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !219, file: !14, line: 727, baseType: !182, size: 128, offset: 4416)
!3924 = !DIDerivedType(tag: DW_TAG_member, scope: !219, file: !14, line: 728, baseType: !3925, size: 64, offset: 4544)
!3925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !219, file: !14, line: 728, size: 64, elements: !3926)
!3926 = !{!3927, !3928, !3931, !3932}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3925, file: !14, line: 729, baseType: !1458, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3925, file: !14, line: 730, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3925, file: !14, line: 731, baseType: !401, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3925, file: !14, line: 732, baseType: !7, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !219, file: !14, line: 735, baseType: !291, size: 32, offset: 4608)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !219, file: !14, line: 738, baseType: !291, size: 32, offset: 4640)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !219, file: !14, line: 739, baseType: !3610, size: 64, offset: 4672)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !219, file: !14, line: 750, baseType: !170, size: 64, offset: 4736)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !215, file: !14, line: 474, baseType: !3868, size: 128, offset: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !215, file: !14, line: 475, baseType: !753, size: 320, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !215, file: !14, line: 476, baseType: !171, size: 32, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !215, file: !14, line: 477, baseType: !335, size: 32, offset: 544)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !215, file: !14, line: 482, baseType: !2583, size: 128, offset: 576)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !215, file: !14, line: 483, baseType: !176, size: 64, offset: 704)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !215, file: !14, line: 484, baseType: !176, size: 64, offset: 768)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !215, file: !14, line: 485, baseType: !3945, size: 64, offset: 832)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3947)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3948)
!3948 = !{!3949, !3953, !3957, !3961, !3965, !3981, !3985, !3989, !3994, !3998, !4002, !4006, !4007, !4011, !4015, !4019, !4024, !4028, !4035, !4036}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3947, file: !14, line: 405, baseType: !3950, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!117, !192, !2075}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3947, file: !14, line: 406, baseType: !3954, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!117, !581, !974}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3947, file: !14, line: 409, baseType: !3958, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!117, !214, !2075}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3947, file: !14, line: 412, baseType: !3962, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!812, !214, !974}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3947, file: !14, line: 414, baseType: !3966, size: 64, offset: 256)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !971, line: 1276, size: 448, elements: !3971)
!3971 = !{!3972, !3973, !3974, !3976, !3977, !3978, !3979, !3980}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3970, file: !971, line: 1277, baseType: !581, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3970, file: !971, line: 1278, baseType: !214, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !3970, file: !971, line: 1279, baseType: !3975, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !3970, file: !971, line: 1281, baseType: !176, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !3970, file: !971, line: 1282, baseType: !7, size: 32, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !3970, file: !971, line: 1283, baseType: !7, size: 32, offset: 288)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !3970, file: !971, line: 1284, baseType: !812, size: 8, offset: 320)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !3970, file: !971, line: 1285, baseType: !176, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3947, file: !14, line: 416, baseType: !3982, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!117, !581, !214, !422, !7, !3359, !1474}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3947, file: !14, line: 419, baseType: !3986, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!117, !581, !214, !422, !7, !7, !192, !170}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3947, file: !14, line: 424, baseType: !3990, size: 64, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!3993, !214, !3993}
!3993 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !172, line: 131, baseType: !187)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3947, file: !14, line: 425, baseType: !3995, size: 64, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{null, !974, !549, !549}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3947, file: !14, line: 426, baseType: !3999, size: 64, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!812, !974, !171}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3947, file: !14, line: 427, baseType: !4003, size: 64, offset: 640)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !974}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3947, file: !14, line: 428, baseType: !950, size: 64, offset: 704)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3947, file: !14, line: 433, baseType: !4008, size: 64, offset: 768)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!117, !214, !974, !974, !74}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3947, file: !14, line: 435, baseType: !4012, size: 64, offset: 832)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = !DISubroutineType(types: !4014)
!4014 = !{!117, !974}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3947, file: !14, line: 436, baseType: !4016, size: 64, offset: 896)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!812, !974, !549, !549}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3947, file: !14, line: 438, baseType: !4020, size: 64, offset: 960)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{null, !974, !4023, !4023}
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3947, file: !14, line: 439, baseType: !4025, size: 64, offset: 1024)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!117, !214, !192}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3947, file: !14, line: 442, baseType: !4029, size: 64, offset: 1088)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!117, !4032, !581, !4034}
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3947, file: !14, line: 444, baseType: !1466, size: 64, offset: 1152)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3947, file: !14, line: 445, baseType: !4037, size: 64, offset: 1216)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!117, !953, !1058}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !215, file: !14, line: 486, baseType: !176, size: 64, offset: 896)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !215, file: !14, line: 487, baseType: !753, size: 320, offset: 960)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !215, file: !14, line: 488, baseType: !1511, size: 32, offset: 1280)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !215, file: !14, line: 489, baseType: !315, size: 32, offset: 1312)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !215, file: !14, line: 490, baseType: !182, size: 128, offset: 1344)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !215, file: !14, line: 491, baseType: !170, size: 64, offset: 1472)
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !46, line: 107, baseType: !4047, size: 64, offset: 192)
!4047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !46, line: 107, size: 64, elements: !4048)
!4048 = !{!4049, !4050}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4047, file: !46, line: 108, baseType: !176, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4047, file: !46, line: 109, baseType: !176, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !200, file: !46, line: 117, baseType: !176, size: 64, offset: 256)
!4052 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !46, line: 119, baseType: !4053, size: 320)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !46, line: 119, size: 320, elements: !4054)
!4054 = !{!4055, !4056, !4059, !4060, !4061}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4053, file: !46, line: 124, baseType: !176, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4053, file: !46, line: 125, baseType: !4057, size: 64, offset: 64)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !46, line: 125, flags: DIFlagFwdDecl)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4053, file: !46, line: 126, baseType: !176, size: 64, offset: 128)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4053, file: !46, line: 127, baseType: !176, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, scope: !4053, file: !46, line: 128, baseType: !4062, size: 64, offset: 256)
!4062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4053, file: !46, line: 128, size: 64, elements: !4063)
!4063 = !{!4064, !4065}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4062, file: !46, line: 133, baseType: !176, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4062, file: !46, line: 138, baseType: !607, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !46, line: 141, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !46, line: 141, size: 64, elements: !4068)
!4068 = !{!4069}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4067, file: !46, line: 142, baseType: !176, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !46, line: 144, baseType: !4071, size: 128)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !46, line: 144, size: 128, elements: !4072)
!4072 = !{!4073, !4144}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4071, file: !46, line: 146, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 126, size: 1216, elements: !4076)
!4076 = !{!4077, !4087, !4108, !4109, !4110, !4111, !4112, !4126, !4127, !4128}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4075, file: !38, line: 127, baseType: !4078, size: 384)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 21, size: 384, elements: !4079)
!4079 = !{!4080, !4081, !4083, !4084, !4085, !4086}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4078, file: !38, line: 22, baseType: !176, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4078, file: !38, line: 23, baseType: !4082, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4078, file: !38, line: 24, baseType: !4082, size: 64, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4078, file: !38, line: 25, baseType: !176, size: 64, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4078, file: !38, line: 26, baseType: !176, size: 64, offset: 256)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4078, file: !38, line: 27, baseType: !176, size: 64, offset: 320)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4075, file: !38, line: 128, baseType: !4088, size: 128, offset: 384)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4089, line: 105, size: 128, elements: !4090)
!4089 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4090 = !{!4091, !4092}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4088, file: !4089, line: 110, baseType: !176, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4088, file: !4089, line: 118, baseType: !4093, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4089, line: 95, size: 448, elements: !4095)
!4095 = !{!4096, !4097, !4103, !4104, !4105, !4106, !4107}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4094, file: !4089, line: 96, baseType: !607, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4094, file: !4089, line: 97, baseType: !4098, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4089, line: 60, baseType: !4100)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !4102}
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4094, file: !4089, line: 98, baseType: !4098, size: 64, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4094, file: !4089, line: 99, baseType: !812, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4094, file: !4089, line: 100, baseType: !812, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4094, file: !4089, line: 101, baseType: !594, size: 128, align: 64, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4094, file: !4089, line: 102, baseType: !4102, size: 64, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4075, file: !38, line: 129, baseType: !1687, size: 256, offset: 512)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4075, file: !38, line: 130, baseType: !37, size: 32, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4075, file: !38, line: 131, baseType: !7, size: 32, offset: 800)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4075, file: !38, line: 132, baseType: !176, size: 64, offset: 832)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4075, file: !38, line: 133, baseType: !4113, size: 64, offset: 896)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4115)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 77, size: 192, elements: !4116)
!4116 = !{!4117, !4121, !4122}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4115, file: !38, line: 83, baseType: !4118, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !192}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4115, file: !38, line: 89, baseType: !1332, size: 64, offset: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4115, file: !38, line: 100, baseType: !4123, size: 64, offset: 128)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!117, !4074, !176, !176, !117}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4075, file: !38, line: 134, baseType: !170, size: 64, offset: 960)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4075, file: !38, line: 135, baseType: !117, size: 32, offset: 1024)
!4128 = !DIDerivedType(tag: DW_TAG_member, scope: !4075, file: !38, line: 136, baseType: !4129, size: 128, offset: 1088)
!4129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4075, file: !38, line: 136, size: 128, elements: !4130)
!4130 = !{!4131, !4137}
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4129, file: !38, line: 137, baseType: !4132, size: 128)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4133, line: 6, size: 128, elements: !4134)
!4133 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4134 = !{!4135, !4136}
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4132, file: !4133, line: 7, baseType: !187, size: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4132, file: !4133, line: 8, baseType: !187, size: 64, offset: 64)
!4137 = !DIDerivedType(tag: DW_TAG_member, scope: !4129, file: !38, line: 138, baseType: !4138)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4129, file: !38, line: 138, elements: !4139)
!4139 = !{!4140, !4142}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4138, file: !38, line: 138, baseType: !4141)
!4141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4138, file: !38, line: 138, elements: !1132)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4138, file: !38, line: 138, baseType: !4143)
!4143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4132, elements: !696)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4071, file: !46, line: 147, baseType: !170, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !197, file: !46, line: 161, baseType: !594, size: 128, align: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !46, line: 164, baseType: !4147, size: 32, offset: 384)
!4147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !46, line: 164, size: 32, elements: !4148)
!4148 = !{!4149, !4150}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4147, file: !46, line: 169, baseType: !335, size: 32)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4147, file: !46, line: 177, baseType: !7, size: 32)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !193, file: !46, line: 181, baseType: !335, size: 32, offset: 416)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4154)
!4154 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !424)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!4156 = !{!0, !4157, !4159, !4161, !4163, !4165, !4167, !4169, !4171, !4173, !4178, !4183, !4188, !4193, !4198, !4200, !4202, !4204, !4206, !4217, !4222, !4227, !4232, !4237, !4240, !4242, !4245, !5148, !5150, !5152, !5157, !5162, !5167, !5172, !5177, !5179, !5189, !5191, !5196, !5199, !5201}
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(name: "agp_bridges", scope: !2, file: !3, line: 58, type: !182, isLocal: false, isDefinition: true)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_bridge323", scope: !2, file: !3, line: 59, type: !170, isLocal: true, isDefinition: true)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_bridges324", scope: !2, file: !3, line: 60, type: !170, isLocal: true, isDefinition: true)
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_find_bridge325", scope: !2, file: !3, line: 61, type: !170, isLocal: true, isDefinition: true)
!4165 = !DIGlobalVariableExpression(var: !4166, expr: !DIExpression())
!4166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_backend_acquire326", scope: !2, file: !3, line: 82, type: !170, isLocal: true, isDefinition: true)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_backend_release327", scope: !2, file: !3, line: 100, type: !170, isLocal: true, isDefinition: true)
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_alloc_bridge328", scope: !2, file: !3, line: 253, type: !170, isLocal: true, isDefinition: true)
!4171 = !DIGlobalVariableExpression(var: !4172, expr: !DIExpression())
!4172 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_put_bridge329", scope: !2, file: !3, line: 263, type: !170, isLocal: true, isDefinition: true)
!4173 = !DIGlobalVariableExpression(var: !4174, expr: !DIExpression())
!4174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !4175, isLocal: true, isDefinition: true)
!4175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 368, elements: !4176)
!4176 = !{!4177}
!4177 = !DISubrange(count: 46)
!4178 = !DIGlobalVariableExpression(var: !4179, expr: !DIExpression())
!4179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 283, type: !4180, isLocal: true, isDefinition: true)
!4180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 216, elements: !4181)
!4181 = !{!4182}
!4182 = !DISubrange(count: 27)
!4183 = !DIGlobalVariableExpression(var: !4184, expr: !DIExpression())
!4184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !4185, isLocal: true, isDefinition: true)
!4185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 264, elements: !4186)
!4186 = !{!4187}
!4187 = !DISubrange(count: 33)
!4188 = !DIGlobalVariableExpression(var: !4189, expr: !DIExpression())
!4189 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !4190, isLocal: true, isDefinition: true)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 272, elements: !4191)
!4191 = !{!4192}
!4192 = !DISubrange(count: 34)
!4193 = !DIGlobalVariableExpression(var: !4194, expr: !DIExpression())
!4194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !4195, isLocal: true, isDefinition: true)
!4195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 232, elements: !4196)
!4196 = !{!4197}
!4197 = !DISubrange(count: 29)
!4198 = !DIGlobalVariableExpression(var: !4199, expr: !DIExpression())
!4199 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_add_bridge330", scope: !2, file: !3, line: 319, type: !170, isLocal: true, isDefinition: true)
!4200 = !DIGlobalVariableExpression(var: !4201, expr: !DIExpression())
!4201 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_remove_bridge331", scope: !2, file: !3, line: 330, type: !170, isLocal: true, isDefinition: true)
!4202 = !DIGlobalVariableExpression(var: !4203, expr: !DIExpression())
!4203 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_off332", scope: !2, file: !3, line: 334, type: !170, isLocal: true, isDefinition: true)
!4204 = !DIGlobalVariableExpression(var: !4205, expr: !DIExpression())
!4205 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_agp_try_unsupported_boot333", scope: !2, file: !3, line: 335, type: !170, isLocal: true, isDefinition: true)
!4206 = !DIGlobalVariableExpression(var: !4207, expr: !DIExpression())
!4207 = distinct !DIGlobalVariable(name: "__setup_agp_setup", scope: !2, file: !3, line: 358, type: !4208, isLocal: true, isDefinition: true, align: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4209, line: 324, size: 192, elements: !4210)
!4209 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4210 = !{!4211, !4212, !4216}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4208, file: !4209, line: 325, baseType: !375, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4208, file: !4209, line: 326, baseType: !4213, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!117, !401}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4208, file: !4209, line: 327, baseType: !117, size: 32, offset: 128)
!4217 = !DIGlobalVariableExpression(var: !4218, expr: !DIExpression())
!4218 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author334", scope: !2, file: !3, line: 361, type: !4219, isLocal: true, isDefinition: true, align: 8)
!4219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 328, elements: !4220)
!4220 = !{!4221}
!4221 = !DISubrange(count: 41)
!4222 = !DIGlobalVariableExpression(var: !4223, expr: !DIExpression())
!4223 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description335", scope: !2, file: !3, line: 362, type: !4224, isLocal: true, isDefinition: true, align: 8)
!4224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 288, elements: !4225)
!4225 = !{!4226}
!4226 = !DISubrange(count: 36)
!4227 = !DIGlobalVariableExpression(var: !4228, expr: !DIExpression())
!4228 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file336", scope: !2, file: !3, line: 363, type: !4229, isLocal: true, isDefinition: true, align: 8)
!4229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 304, elements: !4230)
!4230 = !{!4231}
!4231 = !DISubrange(count: 38)
!4232 = !DIGlobalVariableExpression(var: !4233, expr: !DIExpression())
!4233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license337", scope: !2, file: !3, line: 363, type: !4234, isLocal: true, isDefinition: true, align: 8)
!4234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 336, elements: !4235)
!4235 = !{!4236}
!4236 = !DISubrange(count: 42)
!4237 = !DIGlobalVariableExpression(var: !4238, expr: !DIExpression())
!4238 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias338", scope: !2, file: !3, line: 364, type: !4239, isLocal: true, isDefinition: true, align: 8)
!4239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 256, elements: !301)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_agpgart__339_366_agp_init6340", scope: !2, file: !3, line: 366, type: !170, isLocal: true, isDefinition: true)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(name: "__exitcall_agp_exit", scope: !2, file: !3, line: 367, type: !4244, isLocal: true, isDefinition: true)
!4244 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !4209, line: 120, baseType: !2037)
!4245 = !DIGlobalVariableExpression(var: !4246, expr: !DIExpression())
!4246 = distinct !DIGlobalVariable(name: "agp_bridge", scope: !2, file: !3, line: 57, type: !4247, isLocal: false, isDefinition: true)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_bridge_data", file: !88, line: 125, size: 1664, elements: !4249)
!4249 = !{!4250, !4257, !4353, !4354, !4355, !4356, !4357, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4248, file: !88, line: 126, baseType: !4251, size: 64)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4253)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_version", file: !150, line: 40, size: 32, elements: !4254)
!4254 = !{!4255, !4256}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4253, file: !150, line: 41, baseType: !350, size: 16)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4253, file: !150, line: 42, baseType: !350, size: 16, offset: 16)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4248, file: !88, line: 127, baseType: !4258, size: 64, offset: 64)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4260)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_bridge_driver", file: !88, line: 97, size: 1472, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4275, !4276, !4277, !4281, !4282, !4316, !4320, !4321, !4325, !4326, !4330, !4331, !4335, !4336, !4340, !4344, !4348, !4349}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4260, file: !88, line: 98, baseType: !451, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_sizes", scope: !4260, file: !88, line: 99, baseType: !1227, size: 64, offset: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "num_aperture_sizes", scope: !4260, file: !88, line: 100, baseType: !117, size: 32, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "size_type", scope: !4260, file: !88, line: 101, baseType: !87, size: 32, offset: 160)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "cant_use_aperture", scope: !4260, file: !88, line: 102, baseType: !812, size: 8, offset: 192)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "needs_scratch_page", scope: !4260, file: !88, line: 103, baseType: !812, size: 8, offset: 200)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "masks", scope: !4260, file: !88, line: 104, baseType: !4269, size: 64, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4271)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gatt_mask", file: !88, line: 53, size: 128, elements: !4272)
!4272 = !{!4273, !4274}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4271, file: !88, line: 54, baseType: !176, size: 64)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4271, file: !88, line: 55, baseType: !290, size: 32, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_size", scope: !4260, file: !88, line: 105, baseType: !1804, size: 64, offset: 320)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "configure", scope: !4260, file: !88, line: 106, baseType: !1804, size: 64, offset: 384)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "agp_enable", scope: !4260, file: !88, line: 107, baseType: !4278, size: 64, offset: 448)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{null, !4247, !290}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !4260, file: !88, line: 108, baseType: !2037, size: 64, offset: 512)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush", scope: !4260, file: !88, line: 109, baseType: !4283, size: 64, offset: 576)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{null, !4286}
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "agp_memory", file: !150, line: 69, size: 832, elements: !4288)
!4288 = !{!4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4299, !4300, !4301, !4302, !4303, !4304, !4315}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4287, file: !150, line: 70, baseType: !4286, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !4287, file: !150, line: 71, baseType: !4286, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4287, file: !150, line: 72, baseType: !4247, size: 64, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4287, file: !150, line: 73, baseType: !3359, size: 64, offset: 192)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "page_count", scope: !4287, file: !150, line: 74, baseType: !549, size: 64, offset: 256)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4287, file: !150, line: 75, baseType: !117, size: 32, offset: 320)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "num_scratch_pages", scope: !4287, file: !150, line: 76, baseType: !117, size: 32, offset: 352)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "pg_start", scope: !4287, file: !150, line: 77, baseType: !4297, size: 64, offset: 384)
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !172, line: 26, baseType: !4298)
!4298 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !233, line: 87, baseType: !538)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4287, file: !150, line: 78, baseType: !290, size: 32, offset: 448)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "physical", scope: !4287, file: !150, line: 79, baseType: !290, size: 32, offset: 480)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "is_bound", scope: !4287, file: !150, line: 80, baseType: !812, size: 8, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "is_flushed", scope: !4287, file: !150, line: 81, baseType: !812, size: 8, offset: 520)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_list", scope: !4287, file: !150, line: 83, baseType: !182, size: 128, offset: 576)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "sg_list", scope: !4287, file: !150, line: 85, baseType: !4305, size: 64, offset: 704)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !4307, line: 11, size: 256, elements: !4308)
!4307 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!4308 = !{!4309, !4310, !4311, !4312, !4313, !4314}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !4306, file: !4307, line: 12, baseType: !176, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4306, file: !4307, line: 13, baseType: !7, size: 32, offset: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4306, file: !4307, line: 14, baseType: !7, size: 32, offset: 96)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !4306, file: !4307, line: 15, baseType: !186, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !4306, file: !4307, line: 17, baseType: !7, size: 32, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !4306, file: !4307, line: 20, baseType: !7, size: 32, offset: 224)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "num_sg", scope: !4287, file: !150, line: 86, baseType: !117, size: 32, offset: 768)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "mask_memory", scope: !4260, file: !88, line: 110, baseType: !4317, size: 64, offset: 640)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!176, !4247, !186, !117}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "cache_flush", scope: !4260, file: !88, line: 111, baseType: !2037, size: 64, offset: 704)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "create_gatt_table", scope: !4260, file: !88, line: 112, baseType: !4322, size: 64, offset: 768)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!117, !4247}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "free_gatt_table", scope: !4260, file: !88, line: 113, baseType: !4322, size: 64, offset: 832)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "insert_memory", scope: !4260, file: !88, line: 114, baseType: !4327, size: 64, offset: 896)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!117, !4286, !4297, !117}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "remove_memory", scope: !4260, file: !88, line: 115, baseType: !4327, size: 64, offset: 960)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_by_type", scope: !4260, file: !88, line: 116, baseType: !4332, size: 64, offset: 1024)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{!4286, !549, !117}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "free_by_type", scope: !4260, file: !88, line: 117, baseType: !4283, size: 64, offset: 1088)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "agp_alloc_page", scope: !4260, file: !88, line: 118, baseType: !4337, size: 64, offset: 1152)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!192, !4247}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "agp_alloc_pages", scope: !4260, file: !88, line: 119, baseType: !4341, size: 64, offset: 1216)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!117, !4247, !4286, !549}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "agp_destroy_page", scope: !4260, file: !88, line: 120, baseType: !4345, size: 64, offset: 1280)
!4345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4346, size: 64)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{null, !192, !117}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "agp_destroy_pages", scope: !4260, file: !88, line: 121, baseType: !4283, size: 64, offset: 1344)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "agp_type_to_mask_type", scope: !4260, file: !88, line: 122, baseType: !4350, size: 64, offset: 1408)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!117, !4247, !117}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4248, file: !88, line: 128, baseType: !1309, size: 64, offset: 128)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "previous_size", scope: !4248, file: !88, line: 129, baseType: !170, size: 64, offset: 192)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "current_size", scope: !4248, file: !88, line: 130, baseType: !170, size: 64, offset: 256)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private_data", scope: !4248, file: !88, line: 131, baseType: !170, size: 64, offset: 320)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4248, file: !88, line: 132, baseType: !4358, size: 64, offset: 384)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !4360, line: 322, size: 16640, elements: !4361)
!4360 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!4361 = !{!4362, !4363, !4901, !4902, !4903, !4904, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !5010, !5011, !5012, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5047, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5089, !5090, !5091, !5093, !5094, !5096, !5097, !5098, !5099, !5105, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !4359, file: !4360, line: 323, baseType: !182, size: 128)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4359, file: !4360, line: 324, baseType: !4364, size: 64, offset: 128)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !4360, line: 647, size: 8256, elements: !4366)
!4366 = !{!4367, !4368, !4369, !4370, !4371, !4372, !4373, !4388, !4389, !4390, !4414, !4415, !4419, !4420, !4421, !4422, !4423, !4427, !4428, !4430, !4896, !4897, !4898, !4899, !4900}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4365, file: !4360, line: 648, baseType: !182, size: 128)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4365, file: !4360, line: 649, baseType: !4364, size: 64, offset: 128)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4365, file: !4360, line: 650, baseType: !182, size: 128, offset: 192)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !4365, file: !4360, line: 651, baseType: !182, size: 128, offset: 320)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4365, file: !4360, line: 652, baseType: !4358, size: 64, offset: 448)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !4365, file: !4360, line: 653, baseType: !182, size: 128, offset: 512)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4365, file: !4360, line: 655, baseType: !4374, size: 256, offset: 640)
!4374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4375, size: 256, elements: !677)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4377, line: 21, size: 512, elements: !4378)
!4377 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!4378 = !{!4379, !4381, !4382, !4383, !4384, !4385, !4386, !4387}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4376, file: !4377, line: 22, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !172, line: 164, baseType: !3363)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4376, file: !4377, line: 23, baseType: !4380, size: 64, offset: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4376, file: !4377, line: 24, baseType: !375, size: 64, offset: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4376, file: !4377, line: 25, baseType: !176, size: 64, offset: 192)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4376, file: !4377, line: 26, baseType: !176, size: 64, offset: 256)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4376, file: !4377, line: 27, baseType: !4375, size: 64, offset: 320)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4376, file: !4377, line: 27, baseType: !4375, size: 64, offset: 384)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4376, file: !4377, line: 27, baseType: !4375, size: 64, offset: 448)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4365, file: !4360, line: 656, baseType: !182, size: 128, offset: 896)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !4365, file: !4360, line: 657, baseType: !4376, size: 512, offset: 1024)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4365, file: !4360, line: 659, baseType: !4391, size: 64, offset: 1536)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !4360, line: 773, size: 320, elements: !4393)
!4393 = !{!4394, !4398, !4402, !4406, !4410}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !4392, file: !4360, line: 774, baseType: !4395, size: 64)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!117, !4364}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !4392, file: !4360, line: 775, baseType: !4399, size: 64, offset: 64)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{null, !4364}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !4392, file: !4360, line: 776, baseType: !4403, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!170, !4364, !7, !117}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4392, file: !4360, line: 777, baseType: !4407, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!117, !4364, !7, !117, !117, !2735}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4392, file: !4360, line: 778, baseType: !4411, size: 64, offset: 256)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!117, !4364, !7, !117, !117, !290}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4365, file: !4360, line: 660, baseType: !170, size: 64, offset: 1600)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !4365, file: !4360, line: 661, baseType: !4416, size: 64, offset: 1664)
!4416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4417 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !4418, line: 131, flags: DIFlagFwdDecl)
!4418 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4365, file: !4360, line: 663, baseType: !297, size: 8, offset: 1728)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4365, file: !4360, line: 664, baseType: !297, size: 8, offset: 1736)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !4365, file: !4360, line: 665, baseType: !297, size: 8, offset: 1744)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !4365, file: !4360, line: 666, baseType: !297, size: 8, offset: 1752)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4365, file: !4360, line: 671, baseType: !4424, size: 384, offset: 1760)
!4424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 384, elements: !4425)
!4425 = !{!4426}
!4426 = !DISubrange(count: 48)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !4365, file: !4360, line: 673, baseType: !223, size: 16, offset: 2144)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !4365, file: !4360, line: 674, baseType: !4429, size: 16, offset: 2160)
!4429 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !4360, line: 255, baseType: !223)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !4365, file: !4360, line: 675, baseType: !4431, size: 64, offset: 2176)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !102, line: 705, size: 5824, elements: !4433)
!4433 = !{!4434, !4435, !4436, !4439, !4440, !4493, !4578, !4579, !4580, !4581, !4582, !4589, !4681, !4694, !4704, !4708, !4710, !4711, !4712, !4716, !4723, !4724, !4727, !4730, !4734, !4838, !4839, !4840, !4841, !4842, !4843, !4873, !4874, !4875, !4878, !4881, !4890, !4891, !4892, !4893, !4894, !4895}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4432, file: !102, line: 706, baseType: !464, size: 512)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4432, file: !102, line: 707, baseType: !4431, size: 64, offset: 512)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4432, file: !102, line: 709, baseType: !4437, size: 64, offset: 576)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !102, line: 37, flags: DIFlagFwdDecl)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4432, file: !102, line: 711, baseType: !375, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4432, file: !102, line: 712, baseType: !4441, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4443)
!4443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !102, line: 89, size: 384, elements: !4444)
!4444 = !{!4445, !4446, !4447, !4453, !4458, !4462}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4443, file: !102, line: 90, baseType: !375, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4443, file: !102, line: 91, baseType: !553, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4443, file: !102, line: 92, baseType: !4448, size: 64, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4449, size: 64)
!4449 = !DISubroutineType(types: !4450)
!4450 = !{!117, !4451, !500}
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4432)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4443, file: !102, line: 93, baseType: !4454, size: 64, offset: 192)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!401, !4451, !4457, !1562, !1563}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4443, file: !102, line: 95, baseType: !4459, size: 64, offset: 256)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{null, !4431}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4443, file: !102, line: 97, baseType: !4463, size: 64, offset: 320)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4465)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !109, line: 286, size: 1472, elements: !4466)
!4466 = !{!4467, !4471, !4472, !4473, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4465, file: !109, line: 287, baseType: !4468, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!117, !4431}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4465, file: !109, line: 288, baseType: !4459, size: 64, offset: 64)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4465, file: !109, line: 289, baseType: !4468, size: 64, offset: 128)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4465, file: !109, line: 290, baseType: !4468, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4465, file: !109, line: 291, baseType: !4468, size: 64, offset: 256)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4465, file: !109, line: 292, baseType: !4468, size: 64, offset: 320)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4465, file: !109, line: 293, baseType: !4468, size: 64, offset: 384)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4465, file: !109, line: 294, baseType: !4468, size: 64, offset: 448)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4465, file: !109, line: 295, baseType: !4468, size: 64, offset: 512)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4465, file: !109, line: 296, baseType: !4468, size: 64, offset: 576)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4465, file: !109, line: 297, baseType: !4468, size: 64, offset: 640)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4465, file: !109, line: 298, baseType: !4468, size: 64, offset: 704)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4465, file: !109, line: 299, baseType: !4468, size: 64, offset: 768)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4465, file: !109, line: 300, baseType: !4468, size: 64, offset: 832)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4465, file: !109, line: 301, baseType: !4468, size: 64, offset: 896)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4465, file: !109, line: 302, baseType: !4468, size: 64, offset: 960)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4465, file: !109, line: 303, baseType: !4468, size: 64, offset: 1024)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4465, file: !109, line: 304, baseType: !4468, size: 64, offset: 1088)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4465, file: !109, line: 305, baseType: !4468, size: 64, offset: 1152)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4465, file: !109, line: 306, baseType: !4468, size: 64, offset: 1216)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4465, file: !109, line: 307, baseType: !4468, size: 64, offset: 1280)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4465, file: !109, line: 308, baseType: !4468, size: 64, offset: 1344)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4465, file: !109, line: 309, baseType: !4468, size: 64, offset: 1408)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4432, file: !102, line: 714, baseType: !4494, size: 64, offset: 768)
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4496)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4497, line: 80, size: 1344, elements: !4498)
!4497 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4498 = !{!4499, !4500, !4501, !4502, !4503, !4504, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4577}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4496, file: !4497, line: 81, baseType: !375, size: 64)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4496, file: !4497, line: 82, baseType: !375, size: 64, offset: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4496, file: !4497, line: 83, baseType: !553, size: 64, offset: 128)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4496, file: !4497, line: 84, baseType: !553, size: 64, offset: 192)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4496, file: !4497, line: 85, baseType: !553, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4496, file: !4497, line: 87, baseType: !4505, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4506, size: 64)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!117, !4431, !4508}
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !96, line: 96, size: 1152, elements: !4510)
!4510 = !{!4511, !4512, !4513, !4514, !4515, !4516, !4517, !4530, !4540, !4541, !4542, !4543, !4544, !4552, !4553, !4554, !4555, !4556, !4557}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4509, file: !96, line: 97, baseType: !375, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4509, file: !96, line: 98, baseType: !4494, size: 64, offset: 64)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4509, file: !96, line: 100, baseType: !451, size: 64, offset: 128)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4509, file: !96, line: 101, baseType: !375, size: 64, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4509, file: !96, line: 103, baseType: !812, size: 8, offset: 256)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4509, file: !96, line: 104, baseType: !95, size: 32, offset: 288)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4509, file: !96, line: 106, baseType: !4518, size: 64, offset: 320)
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4520)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4521, line: 282, size: 1600, elements: !4522)
!4521 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4522 = !{!4523, !4524, !4525, !4529}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4520, file: !4521, line: 283, baseType: !3613, size: 256)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4520, file: !4521, line: 284, baseType: !3613, size: 256, offset: 256)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4520, file: !4521, line: 285, baseType: !4526, size: 1024, offset: 512)
!4526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 1024, elements: !4527)
!4527 = !{!4528}
!4528 = !DISubrange(count: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4520, file: !4521, line: 286, baseType: !1227, size: 64, offset: 1536)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4509, file: !96, line: 107, baseType: !4531, size: 64, offset: 384)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4533)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4521, line: 217, size: 256, elements: !4534)
!4534 = !{!4535, !4536, !4538, !4539}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4533, file: !4521, line: 218, baseType: !3620, size: 128)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4533, file: !4521, line: 219, baseType: !4537, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4521, line: 15, baseType: !176)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4533, file: !4521, line: 220, baseType: !291, size: 32, offset: 192)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4533, file: !4521, line: 221, baseType: !291, size: 32, offset: 224)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4509, file: !96, line: 109, baseType: !4468, size: 64, offset: 448)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4509, file: !96, line: 110, baseType: !4459, size: 64, offset: 512)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4509, file: !96, line: 111, baseType: !4468, size: 64, offset: 576)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4509, file: !96, line: 112, baseType: !4459, size: 64, offset: 640)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4509, file: !96, line: 113, baseType: !4545, size: 64, offset: 704)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4546, size: 64)
!4546 = !DISubroutineType(types: !4547)
!4547 = !{!117, !4431, !4548}
!4548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !109, line: 60, baseType: !4549)
!4549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !109, line: 58, size: 32, elements: !4550)
!4550 = !{!4551}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4549, file: !109, line: 59, baseType: !117, size: 32)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4509, file: !96, line: 114, baseType: !4468, size: 64, offset: 768)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4509, file: !96, line: 115, baseType: !553, size: 64, offset: 832)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4509, file: !96, line: 116, baseType: !553, size: 64, offset: 896)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4509, file: !96, line: 118, baseType: !4463, size: 64, offset: 960)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4509, file: !96, line: 119, baseType: !4459, size: 64, offset: 1024)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4509, file: !96, line: 121, baseType: !4558, size: 64, offset: 1088)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !96, line: 121, flags: DIFlagFwdDecl)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4496, file: !4497, line: 88, baseType: !4448, size: 64, offset: 384)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4496, file: !4497, line: 89, baseType: !4468, size: 64, offset: 448)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4496, file: !4497, line: 90, baseType: !4459, size: 64, offset: 512)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4496, file: !4497, line: 91, baseType: !4459, size: 64, offset: 576)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4496, file: !4497, line: 92, baseType: !4459, size: 64, offset: 640)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4496, file: !4497, line: 94, baseType: !4468, size: 64, offset: 704)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4496, file: !4497, line: 95, baseType: !4468, size: 64, offset: 768)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4496, file: !4497, line: 97, baseType: !4545, size: 64, offset: 832)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4496, file: !4497, line: 98, baseType: !4468, size: 64, offset: 896)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4496, file: !4497, line: 100, baseType: !4468, size: 64, offset: 960)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4496, file: !4497, line: 102, baseType: !4468, size: 64, offset: 1024)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4496, file: !4497, line: 103, baseType: !4459, size: 64, offset: 1088)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4496, file: !4497, line: 105, baseType: !4463, size: 64, offset: 1152)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4496, file: !4497, line: 107, baseType: !4574, size: 64, offset: 1216)
!4574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!4575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4576)
!4576 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4497, line: 107, flags: DIFlagFwdDecl)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4496, file: !4497, line: 109, baseType: !812, size: 8, offset: 1280)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4432, file: !102, line: 715, baseType: !4508, size: 64, offset: 832)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4432, file: !102, line: 717, baseType: !170, size: 64, offset: 896)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4432, file: !102, line: 719, baseType: !170, size: 64, offset: 960)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4432, file: !102, line: 721, baseType: !616, size: 256, offset: 1024)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4432, file: !102, line: 725, baseType: !4583, size: 448, offset: 1280)
!4583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !102, line: 517, size: 448, elements: !4584)
!4584 = !{!4585, !4586, !4587, !4588}
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4583, file: !102, line: 518, baseType: !182, size: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4583, file: !102, line: 519, baseType: !182, size: 128, offset: 128)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4583, file: !102, line: 520, baseType: !182, size: 128, offset: 256)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4583, file: !102, line: 521, baseType: !101, size: 32, offset: 384)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4432, file: !102, line: 726, baseType: !4590, size: 2496, offset: 1728)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !109, line: 663, size: 2496, elements: !4591)
!4591 = !{!4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4665, !4666, !4667, !4668, !4674, !4678}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4590, file: !109, line: 664, baseType: !4548, size: 32)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4590, file: !109, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4590, file: !109, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4590, file: !109, line: 667, baseType: !812, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4590, file: !109, line: 668, baseType: !812, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4590, file: !109, line: 669, baseType: !812, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4590, file: !109, line: 670, baseType: !812, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4590, file: !109, line: 671, baseType: !812, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4590, file: !109, line: 672, baseType: !812, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4590, file: !109, line: 673, baseType: !812, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4590, file: !109, line: 674, baseType: !812, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4590, file: !109, line: 675, baseType: !290, size: 32, offset: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4590, file: !109, line: 676, baseType: !315, size: 32, offset: 96)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4590, file: !109, line: 678, baseType: !182, size: 128, offset: 128)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4590, file: !109, line: 679, baseType: !1687, size: 256, offset: 256)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4590, file: !109, line: 680, baseType: !4608, size: 64, offset: 512)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4610, line: 43, size: 1536, elements: !4611)
!4610 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4611 = !{!4612, !4613, !4614, !4615, !4616, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4609, file: !4610, line: 44, baseType: !375, size: 64)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4609, file: !4610, line: 45, baseType: !117, size: 32, offset: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4609, file: !4610, line: 46, baseType: !182, size: 128, offset: 128)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4609, file: !4610, line: 47, baseType: !315, size: 32, offset: 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4609, file: !4610, line: 48, baseType: !4617, size: 64, offset: 320)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !109, line: 629, flags: DIFlagFwdDecl)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4609, file: !4610, line: 49, baseType: !1933, size: 320, offset: 384)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4609, file: !4610, line: 50, baseType: !176, size: 64, offset: 704)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4609, file: !4610, line: 51, baseType: !2532, size: 64, offset: 768)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4609, file: !4610, line: 52, baseType: !2532, size: 64, offset: 832)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4609, file: !4610, line: 53, baseType: !2532, size: 64, offset: 896)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4609, file: !4610, line: 54, baseType: !2532, size: 64, offset: 960)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4609, file: !4610, line: 55, baseType: !2532, size: 64, offset: 1024)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4609, file: !4610, line: 56, baseType: !176, size: 64, offset: 1088)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4609, file: !4610, line: 57, baseType: !176, size: 64, offset: 1152)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4609, file: !4610, line: 58, baseType: !176, size: 64, offset: 1216)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4609, file: !4610, line: 59, baseType: !176, size: 64, offset: 1280)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4609, file: !4610, line: 60, baseType: !176, size: 64, offset: 1344)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4609, file: !4610, line: 61, baseType: !4431, size: 64, offset: 1408)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4609, file: !4610, line: 62, baseType: !812, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4609, file: !4610, line: 63, baseType: !812, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4590, file: !109, line: 681, baseType: !812, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4590, file: !109, line: 682, baseType: !812, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4590, file: !109, line: 683, baseType: !812, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4590, file: !109, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4590, file: !109, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4590, file: !109, line: 690, baseType: !2524, size: 512, offset: 640)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4590, file: !109, line: 691, baseType: !187, size: 64, offset: 1152)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4590, file: !109, line: 692, baseType: !1266, size: 256, offset: 1216)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4590, file: !109, line: 693, baseType: !681, size: 192, offset: 1472)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4590, file: !109, line: 694, baseType: !4617, size: 64, offset: 1664)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4590, file: !109, line: 695, baseType: !335, size: 32, offset: 1728)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4590, file: !109, line: 696, baseType: !335, size: 32, offset: 1760)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4590, file: !109, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4590, file: !109, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4590, file: !109, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4590, file: !109, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4590, file: !109, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4590, file: !109, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4590, file: !109, line: 703, baseType: !812, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4590, file: !109, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4590, file: !109, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4590, file: !109, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4590, file: !109, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4590, file: !109, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4590, file: !109, line: 709, baseType: !7, size: 32, offset: 1824)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4590, file: !109, line: 710, baseType: !108, size: 32, offset: 1856)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4590, file: !109, line: 711, baseType: !116, size: 32, offset: 1888)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4590, file: !109, line: 712, baseType: !116, size: 32, offset: 1920)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4590, file: !109, line: 713, baseType: !117, size: 32, offset: 1952)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4590, file: !109, line: 714, baseType: !117, size: 32, offset: 1984)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4590, file: !109, line: 715, baseType: !187, size: 64, offset: 2048)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4590, file: !109, line: 716, baseType: !187, size: 64, offset: 2112)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4590, file: !109, line: 717, baseType: !187, size: 64, offset: 2176)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4590, file: !109, line: 718, baseType: !187, size: 64, offset: 2240)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4590, file: !109, line: 720, baseType: !4669, size: 64, offset: 2304)
!4669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4670, size: 64)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !109, line: 632, size: 64, elements: !4671)
!4671 = !{!4672, !4673}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4670, file: !109, line: 633, baseType: !315, size: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4670, file: !109, line: 634, baseType: !7, size: 32, offset: 32)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4590, file: !109, line: 721, baseType: !4675, size: 64, offset: 2368)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{null, !4431, !738}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4590, file: !109, line: 722, baseType: !4679, size: 64, offset: 2432)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !109, line: 722, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4432, file: !102, line: 727, baseType: !4682, size: 64, offset: 4224)
!4682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !109, line: 742, size: 1792, elements: !4684)
!4684 = !{!4685, !4686, !4687, !4691, !4692, !4693}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4683, file: !109, line: 743, baseType: !4465, size: 1472)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4683, file: !109, line: 744, baseType: !4468, size: 64, offset: 1472)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4683, file: !109, line: 745, baseType: !4688, size: 64, offset: 1536)
!4688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{null, !4431, !812}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4683, file: !109, line: 746, baseType: !4468, size: 64, offset: 1600)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4683, file: !109, line: 747, baseType: !4459, size: 64, offset: 1664)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4683, file: !109, line: 748, baseType: !4459, size: 64, offset: 1728)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4432, file: !102, line: 736, baseType: !4695, size: 128, offset: 4288)
!4695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !102, line: 529, size: 128, elements: !4696)
!4696 = !{!4697, !4701}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4695, file: !102, line: 531, baseType: !4698, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4700, line: 13, flags: DIFlagFwdDecl)
!4700 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4695, file: !102, line: 532, baseType: !4702, size: 64, offset: 64)
!4702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4703, size: 64)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !102, line: 49, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4432, file: !102, line: 738, baseType: !4705, size: 64, offset: 4416)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4707)
!4707 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !102, line: 738, flags: DIFlagFwdDecl)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4432, file: !102, line: 740, baseType: !4709, size: 64, offset: 4480)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4432, file: !102, line: 741, baseType: !187, size: 64, offset: 4544)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4432, file: !102, line: 746, baseType: !187, size: 64, offset: 4608)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4432, file: !102, line: 747, baseType: !4713, size: 64, offset: 4672)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4715)
!4715 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !102, line: 747, flags: DIFlagFwdDecl)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4432, file: !102, line: 749, baseType: !4717, size: 64, offset: 4736)
!4717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4718, size: 64)
!4718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !102, line: 428, size: 128, elements: !4719)
!4719 = !{!4720, !4721, !4722}
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4718, file: !102, line: 433, baseType: !7, size: 32)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4718, file: !102, line: 434, baseType: !7, size: 32, offset: 32)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4718, file: !102, line: 435, baseType: !176, size: 64, offset: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4432, file: !102, line: 751, baseType: !182, size: 128, offset: 4800)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4432, file: !102, line: 762, baseType: !4725, size: 64, offset: 4928)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !102, line: 762, flags: DIFlagFwdDecl)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4432, file: !102, line: 770, baseType: !4728, offset: 4992)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4729, line: 5, elements: !1132)
!4729 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4432, file: !102, line: 772, baseType: !4731, size: 64, offset: 4992)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4733, line: 18, flags: DIFlagFwdDecl)
!4733 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4432, file: !102, line: 773, baseType: !4735, size: 64, offset: 5056)
!4735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4736, size: 64)
!4736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4737, line: 41, size: 512, elements: !4738)
!4737 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4738 = !{!4739, !4740, !4834, !4835, !4836, !4837}
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4736, file: !4737, line: 42, baseType: !4735, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4736, file: !4737, line: 43, baseType: !4741, size: 64, offset: 64)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4743)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4737, line: 125, size: 1408, elements: !4744)
!4744 = !{!4745, !4749, !4753, !4759, !4763, !4764, !4769, !4773, !4777, !4781, !4785, !4786, !4790, !4794, !4798, !4809, !4810, !4811, !4812, !4822, !4826, !4830}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4743, file: !4737, line: 126, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4747, size: 64)
!4747 = !DISubroutineType(types: !4748)
!4748 = !{!4735, !4735}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4743, file: !4737, line: 127, baseType: !4750, size: 64, offset: 64)
!4750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4751, size: 64)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{null, !4735}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4743, file: !4737, line: 128, baseType: !4754, size: 64, offset: 128)
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4755 = !DISubroutineType(types: !4756)
!4756 = !{!812, !4757}
!4757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4758, size: 64)
!4758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4736)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4743, file: !4737, line: 129, baseType: !4760, size: 64, offset: 192)
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DISubroutineType(types: !4762)
!4762 = !{!1227, !4757, !4451}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4743, file: !4737, line: 131, baseType: !4754, size: 64, offset: 256)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4743, file: !4737, line: 133, baseType: !4765, size: 64, offset: 320)
!4765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4766, size: 64)
!4766 = !DISubroutineType(types: !4767)
!4767 = !{!4768, !4757}
!4768 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4737, line: 132, flags: DIFlagFwdDecl)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4743, file: !4737, line: 134, baseType: !4770, size: 64, offset: 384)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!812, !4757, !375}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4743, file: !4737, line: 136, baseType: !4774, size: 64, offset: 448)
!4774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4775, size: 64)
!4775 = !DISubroutineType(types: !4776)
!4776 = !{!117, !4757, !375, !7, !170, !549}
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4743, file: !4737, line: 141, baseType: !4778, size: 64, offset: 512)
!4778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4779, size: 64)
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!117, !4757, !375, !2010, !549}
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4743, file: !4737, line: 144, baseType: !4782, size: 64, offset: 576)
!4782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4783, size: 64)
!4783 = !DISubroutineType(types: !4784)
!4784 = !{!375, !4757}
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4743, file: !4737, line: 145, baseType: !4782, size: 64, offset: 640)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4743, file: !4737, line: 146, baseType: !4787, size: 64, offset: 704)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!4735, !4757}
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4743, file: !4737, line: 148, baseType: !4791, size: 64, offset: 768)
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!4735, !4757, !4735}
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4743, file: !4737, line: 151, baseType: !4795, size: 64, offset: 832)
!4795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4796, size: 64)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{!4735, !4757, !375}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4743, file: !4737, line: 153, baseType: !4799, size: 64, offset: 896)
!4799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4800, size: 64)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!117, !4757, !375, !375, !7, !7, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4737, line: 94, size: 640, elements: !4804)
!4804 = !{!4805, !4806, !4807}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4803, file: !4737, line: 95, baseType: !4735, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4803, file: !4737, line: 96, baseType: !7, size: 32, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4803, file: !4737, line: 97, baseType: !4808, size: 512, offset: 128)
!4808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 512, elements: !2567)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4743, file: !4737, line: 158, baseType: !4791, size: 64, offset: 960)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4743, file: !4737, line: 161, baseType: !4787, size: 64, offset: 1024)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4743, file: !4737, line: 163, baseType: !4746, size: 64, offset: 1088)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4743, file: !4737, line: 164, baseType: !4813, size: 64, offset: 1152)
!4813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4814, size: 64)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!117, !4757, !4816}
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4737, line: 73, size: 128, elements: !4818)
!4818 = !{!4819, !4820, !4821}
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4817, file: !4737, line: 74, baseType: !7, size: 32)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4817, file: !4737, line: 75, baseType: !7, size: 32, offset: 32)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4817, file: !4737, line: 76, baseType: !4757, size: 64, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4743, file: !4737, line: 166, baseType: !4823, size: 64, offset: 1216)
!4823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4824, size: 64)
!4824 = !DISubroutineType(types: !4825)
!4825 = !{!170, !4735, !117}
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4743, file: !4737, line: 167, baseType: !4827, size: 64, offset: 1280)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!117, !4757, !7}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4743, file: !4737, line: 168, baseType: !4831, size: 64, offset: 1344)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!117, !4735}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4736, file: !4737, line: 44, baseType: !4431, size: 64, offset: 128)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4736, file: !4737, line: 45, baseType: !182, size: 128, offset: 192)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4736, file: !4737, line: 46, baseType: !182, size: 128, offset: 320)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4736, file: !4737, line: 47, baseType: !343, size: 8, offset: 448)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4432, file: !102, line: 776, baseType: !117, size: 32, offset: 5120)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4432, file: !102, line: 778, baseType: !417, size: 32, offset: 5152)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4432, file: !102, line: 779, baseType: !290, size: 32, offset: 5184)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4432, file: !102, line: 781, baseType: !315, size: 32, offset: 5216)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4432, file: !102, line: 782, baseType: !182, size: 128, offset: 5248)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4432, file: !102, line: 784, baseType: !4844, size: 64, offset: 5376)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4846)
!4846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4847, line: 52, size: 768, elements: !4848)
!4847 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4848 = !{!4849, !4850, !4851, !4852, !4853, !4857, !4861, !4862, !4863, !4864, !4868, !4872}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4846, file: !4847, line: 53, baseType: !375, size: 64)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4846, file: !4847, line: 55, baseType: !553, size: 64, offset: 64)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4846, file: !4847, line: 56, baseType: !553, size: 64, offset: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4846, file: !4847, line: 58, baseType: !4448, size: 64, offset: 192)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4846, file: !4847, line: 59, baseType: !4854, size: 64, offset: 256)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!401, !4451, !4457}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4846, file: !4847, line: 61, baseType: !4858, size: 64, offset: 320)
!4858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4859, size: 64)
!4859 = !DISubroutineType(types: !4860)
!4860 = !{null, !4844}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4846, file: !4847, line: 62, baseType: !4459, size: 64, offset: 384)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4846, file: !4847, line: 64, baseType: !4468, size: 64, offset: 448)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4846, file: !4847, line: 66, baseType: !1527, size: 64, offset: 512)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4846, file: !4847, line: 67, baseType: !4865, size: 64, offset: 576)
!4865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4866, size: 64)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!1227, !4451}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4846, file: !4847, line: 69, baseType: !4869, size: 64, offset: 640)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{null, !4451, !1562, !1563}
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4846, file: !4847, line: 71, baseType: !4463, size: 64, offset: 704)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4432, file: !102, line: 785, baseType: !553, size: 64, offset: 5440)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4432, file: !102, line: 787, baseType: !4459, size: 64, offset: 5504)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4432, file: !102, line: 788, baseType: !4876, size: 64, offset: 5568)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !102, line: 46, flags: DIFlagFwdDecl)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4432, file: !102, line: 789, baseType: !4879, size: 64, offset: 5632)
!4879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4880, size: 64)
!4880 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !102, line: 48, flags: DIFlagFwdDecl)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4432, file: !102, line: 791, baseType: !4882, size: 64, offset: 5696)
!4882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4883, size: 64)
!4883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !102, line: 597, size: 128, elements: !4884)
!4884 = !{!4885, !4886, !4887, !4888, !4889}
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4883, file: !102, line: 598, baseType: !124, size: 32)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4883, file: !102, line: 599, baseType: !133, size: 32, offset: 32)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4883, file: !102, line: 600, baseType: !138, size: 32, offset: 64)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4883, file: !102, line: 601, baseType: !812, size: 8, offset: 96)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4883, file: !102, line: 602, baseType: !812, size: 8, offset: 104)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4432, file: !102, line: 793, baseType: !143, size: 32, offset: 5760)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4432, file: !102, line: 795, baseType: !812, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4432, file: !102, line: 796, baseType: !812, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4432, file: !102, line: 797, baseType: !812, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4432, file: !102, line: 798, baseType: !812, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4432, file: !102, line: 799, baseType: !812, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4365, file: !4360, line: 676, baseType: !4432, size: 5824, offset: 2240)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !4365, file: !4360, line: 677, baseType: !567, size: 64, offset: 8064)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !4365, file: !4360, line: 678, baseType: !567, size: 64, offset: 8128)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !4365, file: !4360, line: 679, baseType: !7, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !4365, file: !4360, line: 680, baseType: !7, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !4359, file: !4360, line: 325, baseType: !4364, size: 64, offset: 192)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !4359, file: !4360, line: 327, baseType: !170, size: 64, offset: 256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !4359, file: !4360, line: 328, baseType: !4416, size: 64, offset: 320)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !4359, file: !4360, line: 329, baseType: !4905, size: 64, offset: 384)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !4360, line: 76, size: 832, elements: !4907)
!4907 = !{!4908, !4909, !4910, !4913, !4914}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4906, file: !4360, line: 77, baseType: !4364, size: 64)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4906, file: !4360, line: 78, baseType: !182, size: 128, offset: 64)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !4906, file: !4360, line: 79, baseType: !4911, size: 64, offset: 192)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !4360, line: 79, flags: DIFlagFwdDecl)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !4906, file: !4360, line: 80, baseType: !297, size: 8, offset: 256)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4906, file: !4360, line: 81, baseType: !464, size: 512, offset: 320)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !4359, file: !4360, line: 331, baseType: !7, size: 32, offset: 448)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4359, file: !4360, line: 332, baseType: !223, size: 16, offset: 480)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4359, file: !4360, line: 333, baseType: !223, size: 16, offset: 496)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4359, file: !4360, line: 334, baseType: !223, size: 16, offset: 512)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4359, file: !4360, line: 335, baseType: !223, size: 16, offset: 528)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4359, file: !4360, line: 336, baseType: !7, size: 32, offset: 544)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !4359, file: !4360, line: 337, baseType: !343, size: 8, offset: 576)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4359, file: !4360, line: 338, baseType: !343, size: 8, offset: 584)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !4359, file: !4360, line: 344, baseType: !4924, size: 64, offset: 640)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !4360, line: 319, flags: DIFlagFwdDecl)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !4359, file: !4360, line: 345, baseType: !4358, size: 64, offset: 704)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !4359, file: !4360, line: 347, baseType: !290, size: 32, offset: 768)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !4359, file: !4360, line: 348, baseType: !343, size: 8, offset: 800)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !4359, file: !4360, line: 349, baseType: !343, size: 8, offset: 808)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !4359, file: !4360, line: 350, baseType: !343, size: 8, offset: 816)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !4359, file: !4360, line: 351, baseType: !343, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !4359, file: !4360, line: 352, baseType: !343, size: 8, offset: 832)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !4359, file: !4360, line: 353, baseType: !343, size: 8, offset: 840)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !4359, file: !4360, line: 354, baseType: !350, size: 16, offset: 848)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !4359, file: !4360, line: 355, baseType: !2024, size: 64, offset: 896)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4359, file: !4360, line: 357, baseType: !4937, size: 64, offset: 960)
!4937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4938, size: 64)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !4360, line: 918, size: 2368, elements: !4939)
!4939 = !{!4940, !4941, !4942, !4955, !4959, !4963, !4967, !4971, !4972, !4976, !4977, !4981, !5001, !5002, !5003, !5004, !5009}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4938, file: !4360, line: 919, baseType: !182, size: 128)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4938, file: !4360, line: 920, baseType: !375, size: 64, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4938, file: !4360, line: 921, baseType: !4943, size: 64, offset: 192)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4945)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !4521, line: 44, size: 320, elements: !4946)
!4946 = !{!4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4945, file: !4521, line: 45, baseType: !291, size: 32)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4945, file: !4521, line: 45, baseType: !291, size: 32, offset: 32)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !4945, file: !4521, line: 46, baseType: !291, size: 32, offset: 64)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !4945, file: !4521, line: 46, baseType: !291, size: 32, offset: 96)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4945, file: !4521, line: 47, baseType: !291, size: 32, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !4945, file: !4521, line: 47, baseType: !291, size: 32, offset: 160)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4945, file: !4521, line: 48, baseType: !4537, size: 64, offset: 192)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !4945, file: !4521, line: 49, baseType: !291, size: 32, offset: 256)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4938, file: !4360, line: 922, baseType: !4956, size: 64, offset: 256)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!117, !4358, !4943}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4938, file: !4360, line: 923, baseType: !4960, size: 64, offset: 320)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4961, size: 64)
!4961 = !DISubroutineType(types: !4962)
!4962 = !{null, !4358}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4938, file: !4360, line: 924, baseType: !4964, size: 64, offset: 384)
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{!117, !4358, !4548}
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4938, file: !4360, line: 925, baseType: !4968, size: 64, offset: 448)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!117, !4358}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4938, file: !4360, line: 926, baseType: !4960, size: 64, offset: 512)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !4938, file: !4360, line: 927, baseType: !4973, size: 64, offset: 576)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!117, !4358, !117}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !4938, file: !4360, line: 928, baseType: !4973, size: 64, offset: 640)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !4938, file: !4360, line: 929, baseType: !4978, size: 64, offset: 704)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DISubroutineType(types: !4980)
!4980 = !{!290, !4358}
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !4938, file: !4360, line: 930, baseType: !4982, size: 64, offset: 768)
!4982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4983, size: 64)
!4983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4984)
!4984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !4360, line: 837, size: 448, elements: !4985)
!4985 = !{!4986, !4992, !4996, !4997, !4998, !4999, !5000}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !4984, file: !4360, line: 839, baseType: !4987, size: 64)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!4990, !4358, !4991}
!4990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !4360, line: 814, baseType: !7)
!4991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !4360, line: 196, baseType: !7)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !4984, file: !4360, line: 843, baseType: !4993, size: 64, offset: 64)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!4990, !4358}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !4984, file: !4360, line: 846, baseType: !4993, size: 64, offset: 128)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !4984, file: !4360, line: 849, baseType: !4960, size: 64, offset: 192)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !4984, file: !4360, line: 850, baseType: !4960, size: 64, offset: 256)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4984, file: !4360, line: 853, baseType: !4960, size: 64, offset: 320)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !4984, file: !4360, line: 856, baseType: !4960, size: 64, offset: 384)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4938, file: !4360, line: 931, baseType: !553, size: 64, offset: 832)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4938, file: !4360, line: 932, baseType: !553, size: 64, offset: 896)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4938, file: !4360, line: 933, baseType: !4509, size: 1152, offset: 960)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !4938, file: !4360, line: 934, baseType: !5005, size: 192, offset: 2112)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !4360, line: 801, size: 192, elements: !5006)
!5006 = !{!5007, !5008}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5005, file: !4360, line: 802, baseType: !315, size: 32)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5005, file: !4360, line: 803, baseType: !182, size: 128, offset: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !4938, file: !4360, line: 935, baseType: !812, size: 8, offset: 2304)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4359, file: !4360, line: 358, baseType: !187, size: 64, offset: 1024)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4359, file: !4360, line: 364, baseType: !4718, size: 128, offset: 1088)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !4359, file: !4360, line: 366, baseType: !5013, size: 32, offset: 1216)
!5013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !4360, line: 171, baseType: !117)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !4359, file: !4360, line: 369, baseType: !343, size: 8, offset: 1248)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !4359, file: !4360, line: 370, baseType: !7, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !4359, file: !4360, line: 371, baseType: !7, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !4359, file: !4360, line: 373, baseType: !7, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !4359, file: !4360, line: 374, baseType: !7, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !4359, file: !4360, line: 375, baseType: !7, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !4359, file: !4360, line: 376, baseType: !7, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !4359, file: !4360, line: 377, baseType: !7, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !4359, file: !4360, line: 378, baseType: !7, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !4359, file: !4360, line: 379, baseType: !7, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !4359, file: !4360, line: 380, baseType: !7, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !4359, file: !4360, line: 382, baseType: !7, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !4359, file: !4360, line: 383, baseType: !7, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !4359, file: !4360, line: 384, baseType: !7, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !4359, file: !4360, line: 385, baseType: !7, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !4359, file: !4360, line: 388, baseType: !7, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !4359, file: !4360, line: 390, baseType: !7, size: 32, offset: 1280)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !4359, file: !4360, line: 391, baseType: !7, size: 32, offset: 1312)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !4359, file: !4360, line: 394, baseType: !5033, size: 64, offset: 1344)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !4360, line: 316, flags: DIFlagFwdDecl)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !4359, file: !4360, line: 395, baseType: !350, size: 16, offset: 1408)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !4359, file: !4360, line: 396, baseType: !7, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !4359, file: !4360, line: 399, baseType: !7, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !4359, file: !4360, line: 400, baseType: !7, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !4359, file: !4360, line: 402, baseType: !4991, size: 32, offset: 1440)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4359, file: !4360, line: 403, baseType: !4432, size: 5824, offset: 1472)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !4359, file: !4360, line: 405, baseType: !117, size: 32, offset: 7296)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4359, file: !4360, line: 411, baseType: !7, size: 32, offset: 7328)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !4359, file: !4360, line: 412, baseType: !5044, size: 5632, offset: 7360)
!5044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4376, size: 5632, elements: !5045)
!5045 = !{!5046}
!5046 = !DISubrange(count: 11)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !4359, file: !4360, line: 413, baseType: !4376, size: 512, offset: 12992)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !4359, file: !4360, line: 415, baseType: !812, size: 8, offset: 13504)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !4359, file: !4360, line: 417, baseType: !7, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !4359, file: !4360, line: 418, baseType: !7, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !4359, file: !4360, line: 419, baseType: !7, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !4359, file: !4360, line: 420, baseType: !7, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !4359, file: !4360, line: 421, baseType: !7, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !4359, file: !4360, line: 423, baseType: !7, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !4359, file: !4360, line: 424, baseType: !7, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !4359, file: !4360, line: 425, baseType: !7, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !4359, file: !4360, line: 426, baseType: !7, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !4359, file: !4360, line: 427, baseType: !7, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !4359, file: !4360, line: 428, baseType: !7, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !4359, file: !4360, line: 429, baseType: !7, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !4359, file: !4360, line: 430, baseType: !7, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !4359, file: !4360, line: 431, baseType: !7, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !4359, file: !4360, line: 432, baseType: !7, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !4359, file: !4360, line: 433, baseType: !7, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !4359, file: !4360, line: 434, baseType: !7, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !4359, file: !4360, line: 435, baseType: !7, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !4359, file: !4360, line: 436, baseType: !7, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !4359, file: !4360, line: 437, baseType: !7, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !4359, file: !4360, line: 438, baseType: !7, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !4359, file: !4360, line: 439, baseType: !7, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !4359, file: !4360, line: 440, baseType: !7, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !4359, file: !4360, line: 441, baseType: !7, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !4359, file: !4360, line: 442, baseType: !7, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !4359, file: !4360, line: 443, baseType: !7, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !4359, file: !4360, line: 451, baseType: !7, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !4359, file: !4360, line: 457, baseType: !7, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !4359, file: !4360, line: 458, baseType: !7, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !4359, file: !4360, line: 459, baseType: !7, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !4359, file: !4360, line: 460, baseType: !7, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !4359, file: !4360, line: 461, baseType: !7, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !4359, file: !4360, line: 462, baseType: !7, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !4359, file: !4360, line: 463, baseType: !7, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !4359, file: !4360, line: 464, baseType: !7, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !4359, file: !4360, line: 465, baseType: !7, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !4359, file: !4360, line: 466, baseType: !7, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !4359, file: !4360, line: 467, baseType: !7, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !4359, file: !4360, line: 468, baseType: !5088, size: 16, offset: 13552)
!5088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !4360, line: 222, baseType: !223)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !4359, file: !4360, line: 469, baseType: !335, size: 32, offset: 13568)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !4359, file: !4360, line: 471, baseType: !315, size: 32, offset: 13600)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !4359, file: !4360, line: 472, baseType: !5092, size: 512, offset: 13632)
!5092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 512, elements: !2836)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !4359, file: !4360, line: 473, baseType: !668, size: 64, offset: 14144)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !4359, file: !4360, line: 474, baseType: !5095, size: 704, offset: 14208)
!5095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 704, elements: !5045)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !4359, file: !4360, line: 475, baseType: !5095, size: 704, offset: 14912)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !4359, file: !4360, line: 487, baseType: !170, size: 64, offset: 15616)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !4359, file: !4360, line: 488, baseType: !621, size: 32, offset: 15680)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !4359, file: !4360, line: 490, baseType: !5100, size: 320, offset: 15744)
!5100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !4360, line: 309, size: 320, elements: !5101)
!5101 = !{!5102, !5103, !5104}
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5100, file: !4360, line: 310, baseType: !616, size: 256)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5100, file: !4360, line: 311, baseType: !7, size: 32, offset: 256)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !5100, file: !4360, line: 312, baseType: !343, size: 8, offset: 288)
!5105 = !DIDerivedType(tag: DW_TAG_member, scope: !4359, file: !4360, line: 497, baseType: !5106, size: 64, offset: 16064)
!5106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4359, file: !4360, line: 497, size: 64, elements: !5107)
!5107 = !{!5108, !5111}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !5106, file: !4360, line: 498, baseType: !5109, size: 64)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !4360, line: 317, flags: DIFlagFwdDecl)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !5106, file: !4360, line: 499, baseType: !4358, size: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !4359, file: !4360, line: 501, baseType: !350, size: 16, offset: 16128)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !4359, file: !4360, line: 502, baseType: !343, size: 8, offset: 16144)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !4359, file: !4360, line: 505, baseType: !350, size: 16, offset: 16160)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !4359, file: !4360, line: 506, baseType: !290, size: 32, offset: 16192)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !4359, file: !4360, line: 507, baseType: !7, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !4359, file: !4360, line: 510, baseType: !350, size: 16, offset: 16240)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !4359, file: !4360, line: 511, baseType: !350, size: 16, offset: 16256)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !4359, file: !4360, line: 519, baseType: !350, size: 16, offset: 16272)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !4359, file: !4360, line: 520, baseType: !3363, size: 64, offset: 16320)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !4359, file: !4360, line: 521, baseType: !549, size: 64, offset: 16384)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !4359, file: !4360, line: 526, baseType: !375, size: 64, offset: 16448)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !4359, file: !4360, line: 528, baseType: !176, size: 64, offset: 16512)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !4359, file: !4360, line: 531, baseType: !5125, size: 56, offset: 16576)
!5125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 56, elements: !1825)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_table", scope: !4248, file: !88, line: 133, baseType: !2735, size: 64, offset: 448)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_table_real", scope: !4248, file: !88, line: 134, baseType: !2735, size: 64, offset: 512)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page", scope: !4248, file: !88, line: 135, baseType: !176, size: 64, offset: 576)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_page", scope: !4248, file: !88, line: 136, baseType: !192, size: 64, offset: 640)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "scratch_page_dma", scope: !4248, file: !88, line: 137, baseType: !186, size: 64, offset: 704)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "gart_bus_addr", scope: !4248, file: !88, line: 138, baseType: !176, size: 64, offset: 768)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "gatt_bus_addr", scope: !4248, file: !88, line: 139, baseType: !176, size: 64, offset: 832)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4248, file: !88, line: 140, baseType: !290, size: 32, offset: 896)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4248, file: !88, line: 141, baseType: !149, size: 32, offset: 928)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "key_list", scope: !4248, file: !88, line: 142, baseType: !2024, size: 64, offset: 960)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "current_memory_agp", scope: !4248, file: !88, line: 143, baseType: !335, size: 32, offset: 1024)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "agp_in_use", scope: !4248, file: !88, line: 144, baseType: !335, size: 32, offset: 1056)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "max_memory_agp", scope: !4248, file: !88, line: 145, baseType: !117, size: 32, offset: 1088)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "aperture_size_idx", scope: !4248, file: !88, line: 146, baseType: !117, size: 32, offset: 1120)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "capndx", scope: !4248, file: !88, line: 147, baseType: !117, size: 32, offset: 1152)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4248, file: !88, line: 148, baseType: !117, size: 32, offset: 1184)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "major_version", scope: !4248, file: !88, line: 149, baseType: !377, size: 8, offset: 1216)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "minor_version", scope: !4248, file: !88, line: 150, baseType: !377, size: 8, offset: 1224)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4248, file: !88, line: 151, baseType: !182, size: 128, offset: 1280)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "apbase_config", scope: !4248, file: !88, line: 152, baseType: !290, size: 32, offset: 1408)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_list", scope: !4248, file: !88, line: 154, baseType: !182, size: 128, offset: 1472)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "mapped_lock", scope: !4248, file: !88, line: 155, baseType: !315, size: 32, offset: 1600)
!5148 = !DIGlobalVariableExpression(var: !5149, expr: !DIExpression())
!5149 = distinct !DIGlobalVariable(name: "agp_off", scope: !2, file: !3, line: 332, type: !117, isLocal: false, isDefinition: true)
!5150 = !DIGlobalVariableExpression(var: !5151, expr: !DIExpression())
!5151 = distinct !DIGlobalVariable(name: "agp_try_unsupported_boot", scope: !2, file: !3, line: 333, type: !117, isLocal: false, isDefinition: true)
!5152 = !DIGlobalVariableExpression(var: !5153, expr: !DIExpression())
!5153 = distinct !DIGlobalVariable(scope: null, file: !160, line: 480, type: !5154, isLocal: true, isDefinition: true)
!5154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 168, elements: !5155)
!5155 = !{!5156}
!5156 = !DISubrange(count: 21)
!5157 = !DIGlobalVariableExpression(var: !5158, expr: !DIExpression())
!5158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !5159, isLocal: true, isDefinition: true)
!5159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 280, elements: !5160)
!5160 = !{!5161}
!5161 = !DISubrange(count: 35)
!5162 = !DIGlobalVariableExpression(var: !5163, expr: !DIExpression())
!5163 = distinct !DIGlobalVariable(scope: null, file: !3, line: 164, type: !5164, isLocal: true, isDefinition: true)
!5164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 248, elements: !5165)
!5165 = !{!5166}
!5166 = !DISubrange(count: 31)
!5167 = !DIGlobalVariableExpression(var: !5168, expr: !DIExpression())
!5168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !5169, isLocal: true, isDefinition: true)
!5169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 392, elements: !5170)
!5170 = !{!5171}
!5171 = !DISubrange(count: 49)
!5172 = !DIGlobalVariableExpression(var: !5173, expr: !DIExpression())
!5173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !5174, isLocal: true, isDefinition: true)
!5174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 296, elements: !5175)
!5175 = !{!5176}
!5176 = !DISubrange(count: 37)
!5177 = !DIGlobalVariableExpression(var: !5178, expr: !DIExpression())
!5178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 188, type: !3613, isLocal: true, isDefinition: true)
!5179 = !DIGlobalVariableExpression(var: !5180, expr: !DIExpression())
!5180 = distinct !DIGlobalVariable(name: "maxes_table", scope: !2, file: !3, line: 103, type: !5181, isLocal: true, isDefinition: true)
!5181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5182, size: 576, elements: !5187)
!5182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5183)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 103, size: 64, elements: !5184)
!5184 = !{!5185, !5186}
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !5183, file: !3, line: 103, baseType: !117, size: 32)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "agp", scope: !5183, file: !3, line: 103, baseType: !117, size: 32, offset: 32)
!5187 = !{!5188}
!5188 = !DISubrange(count: 9)
!5189 = !DIGlobalVariableExpression(var: !5190, expr: !DIExpression())
!5190 = distinct !DIGlobalVariable(name: "agp_current_version", scope: !2, file: !3, line: 48, type: !4252, isLocal: true, isDefinition: true)
!5191 = !DIGlobalVariableExpression(var: !5192, expr: !DIExpression())
!5192 = distinct !DIGlobalVariable(name: "__setup_str_agp_setup", scope: !2, file: !3, line: 358, type: !5193, isLocal: true, isDefinition: true, align: 8)
!5193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 40, elements: !5194)
!5194 = !{!5195}
!5195 = !DISubrange(count: 5)
!5196 = !DIGlobalVariableExpression(var: !5197, expr: !DIExpression())
!5197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !5198, isLocal: true, isDefinition: true)
!5198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 32, elements: !677)
!5199 = !DIGlobalVariableExpression(var: !5200, expr: !DIExpression())
!5200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 354, type: !2835, isLocal: true, isDefinition: true)
!5201 = !DIGlobalVariableExpression(var: !5202, expr: !DIExpression())
!5202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !4190, isLocal: true, isDefinition: true)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DISubroutineType(types: !5205)
!5205 = !{!4247, !4358}
!5206 = !{i32 7, !"Dwarf Version", i32 5}
!5207 = !{i32 2, !"Debug Info Version", i32 3}
!5208 = !{i32 1, !"wchar_size", i32 2}
!5209 = !{i32 8, !"cf-protection-branch", i32 1}
!5210 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5211 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5212 = !{i32 1, !"Code Model", i32 2}
!5213 = !{i32 1, !"override-stack-alignment", i32 8}
!5214 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5215 = distinct !DISubprogram(name: "agp_backend_acquire", scope: !3, file: !3, line: 68, type: !5204, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5216)
!5216 = !{!5217, !5218}
!5217 = !DILocalVariable(name: "pdev", arg: 1, scope: !5215, file: !3, line: 68, type: !4358)
!5218 = !DILocalVariable(name: "bridge", scope: !5215, file: !3, line: 70, type: !4247)
!5219 = !DILocation(line: 68, column: 61, scope: !5215)
!5220 = !DILocation(line: 70, column: 2, scope: !5215)
!5221 = !DILocation(line: 70, column: 26, scope: !5215)
!5222 = !DILocation(line: 72, column: 11, scope: !5215)
!5223 = !DILocation(line: 72, column: 27, scope: !5215)
!5224 = !DILocation(line: 72, column: 9, scope: !5215)
!5225 = !DILocation(line: 74, column: 7, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 74, column: 6)
!5227 = !DILocation(line: 74, column: 6, scope: !5215)
!5228 = !DILocation(line: 75, column: 3, scope: !5226)
!5229 = !DILocation(line: 77, column: 19, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5215, file: !3, line: 77, column: 6)
!5231 = !DILocation(line: 77, column: 27, scope: !5230)
!5232 = !DILocation(line: 77, column: 6, scope: !5230)
!5233 = !DILocation(line: 77, column: 6, scope: !5215)
!5234 = !DILocation(line: 78, column: 3, scope: !5230)
!5235 = !DILocation(line: 79, column: 14, scope: !5215)
!5236 = !DILocation(line: 79, column: 22, scope: !5215)
!5237 = !DILocation(line: 79, column: 2, scope: !5215)
!5238 = !DILocation(line: 80, column: 9, scope: !5215)
!5239 = !DILocation(line: 80, column: 2, scope: !5215)
!5240 = !DILocation(line: 81, column: 1, scope: !5215)
!5241 = distinct !DISubprogram(name: "atomic_read", scope: !5242, file: !5242, line: 30, type: !5243, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5247)
!5242 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5243 = !DISubroutineType(types: !5244)
!5244 = !{!117, !5245}
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!5247 = !{!5248}
!5248 = !DILocalVariable(name: "v", arg: 1, scope: !5241, file: !5242, line: 30, type: !5245)
!5249 = !DILocation(line: 30, column: 29, scope: !5241)
!5250 = !DILocation(line: 32, column: 25, scope: !5241)
!5251 = !DILocation(line: 32, column: 2, scope: !5241)
!5252 = !DILocation(line: 33, column: 25, scope: !5241)
!5253 = !DILocation(line: 33, column: 9, scope: !5241)
!5254 = !DILocation(line: 33, column: 2, scope: !5241)
!5255 = distinct !DISubprogram(name: "atomic_inc", scope: !5242, file: !5242, line: 433, type: !5256, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5259)
!5256 = !DISubroutineType(types: !5257)
!5257 = !{null, !5258}
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!5259 = !{!5260}
!5260 = !DILocalVariable(name: "v", arg: 1, scope: !5255, file: !5242, line: 433, type: !5258)
!5261 = !DILocation(line: 433, column: 22, scope: !5255)
!5262 = !DILocation(line: 435, column: 31, scope: !5255)
!5263 = !DILocation(line: 435, column: 2, scope: !5255)
!5264 = !DILocation(line: 436, column: 17, scope: !5255)
!5265 = !DILocation(line: 436, column: 2, scope: !5255)
!5266 = !DILocation(line: 437, column: 1, scope: !5255)
!5267 = distinct !DISubprogram(name: "agp_backend_release", scope: !3, file: !3, line: 94, type: !5268, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5270)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{null, !4247}
!5270 = !{!5271}
!5271 = !DILocalVariable(name: "bridge", arg: 1, scope: !5267, file: !3, line: 94, type: !4247)
!5272 = !DILocation(line: 94, column: 50, scope: !5267)
!5273 = !DILocation(line: 97, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5267, file: !3, line: 97, column: 6)
!5275 = !DILocation(line: 97, column: 6, scope: !5267)
!5276 = !DILocation(line: 98, column: 15, scope: !5274)
!5277 = !DILocation(line: 98, column: 23, scope: !5274)
!5278 = !DILocation(line: 98, column: 3, scope: !5274)
!5279 = !DILocation(line: 99, column: 1, scope: !5267)
!5280 = distinct !DISubprogram(name: "atomic_dec", scope: !5242, file: !5242, line: 590, type: !5256, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5281)
!5281 = !{!5282}
!5282 = !DILocalVariable(name: "v", arg: 1, scope: !5280, file: !5242, line: 590, type: !5258)
!5283 = !DILocation(line: 590, column: 22, scope: !5280)
!5284 = !DILocation(line: 592, column: 31, scope: !5280)
!5285 = !DILocation(line: 592, column: 2, scope: !5280)
!5286 = !DILocation(line: 593, column: 17, scope: !5280)
!5287 = !DILocation(line: 593, column: 2, scope: !5280)
!5288 = !DILocation(line: 594, column: 1, scope: !5280)
!5289 = distinct !DISubprogram(name: "agp_alloc_bridge", scope: !3, file: !3, line: 237, type: !5290, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5292)
!5290 = !DISubroutineType(types: !5291)
!5291 = !{!4247}
!5292 = !{!5293}
!5293 = !DILocalVariable(name: "bridge", scope: !5289, file: !3, line: 239, type: !4247)
!5294 = !DILocation(line: 239, column: 2, scope: !5289)
!5295 = !DILocation(line: 239, column: 26, scope: !5289)
!5296 = !DILocation(line: 241, column: 11, scope: !5289)
!5297 = !DILocation(line: 241, column: 9, scope: !5289)
!5298 = !DILocation(line: 242, column: 7, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 242, column: 6)
!5300 = !DILocation(line: 242, column: 6, scope: !5289)
!5301 = !DILocation(line: 243, column: 3, scope: !5299)
!5302 = !DILocation(line: 245, column: 14, scope: !5289)
!5303 = !DILocation(line: 245, column: 22, scope: !5289)
!5304 = !DILocation(line: 245, column: 2, scope: !5289)
!5305 = !DILocation(line: 246, column: 14, scope: !5289)
!5306 = !DILocation(line: 246, column: 22, scope: !5289)
!5307 = !DILocation(line: 246, column: 2, scope: !5289)
!5308 = !DILocation(line: 248, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 248, column: 6)
!5310 = !DILocation(line: 248, column: 6, scope: !5289)
!5311 = !DILocation(line: 249, column: 16, scope: !5309)
!5312 = !DILocation(line: 249, column: 14, scope: !5309)
!5313 = !DILocation(line: 249, column: 3, scope: !5309)
!5314 = !DILocation(line: 251, column: 9, scope: !5289)
!5315 = !DILocation(line: 251, column: 2, scope: !5289)
!5316 = !DILocation(line: 252, column: 1, scope: !5289)
!5317 = distinct !DISubprogram(name: "kzalloc", scope: !160, file: !160, line: 719, type: !5318, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5320)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!170, !549, !171}
!5320 = !{!5321, !5322}
!5321 = !DILocalVariable(name: "size", arg: 1, scope: !5317, file: !160, line: 719, type: !549)
!5322 = !DILocalVariable(name: "flags", arg: 2, scope: !5317, file: !160, line: 719, type: !171)
!5323 = !DILocation(line: 719, column: 52, scope: !5317)
!5324 = !DILocation(line: 719, column: 64, scope: !5317)
!5325 = !DILocation(line: 721, column: 17, scope: !5317)
!5326 = !DILocation(line: 721, column: 23, scope: !5317)
!5327 = !DILocation(line: 721, column: 29, scope: !5317)
!5328 = !DILocation(line: 721, column: 9, scope: !5317)
!5329 = !DILocation(line: 721, column: 2, scope: !5317)
!5330 = distinct !DISubprogram(name: "atomic_set", scope: !5242, file: !5242, line: 65, type: !5331, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{null, !5258, !117}
!5333 = !{!5334, !5335}
!5334 = !DILocalVariable(name: "v", arg: 1, scope: !5330, file: !5242, line: 65, type: !5258)
!5335 = !DILocalVariable(name: "i", arg: 2, scope: !5330, file: !5242, line: 65, type: !117)
!5336 = !DILocation(line: 65, column: 22, scope: !5330)
!5337 = !DILocation(line: 65, column: 29, scope: !5330)
!5338 = !DILocation(line: 67, column: 26, scope: !5330)
!5339 = !DILocation(line: 67, column: 2, scope: !5330)
!5340 = !DILocation(line: 68, column: 17, scope: !5330)
!5341 = !DILocation(line: 68, column: 20, scope: !5330)
!5342 = !DILocation(line: 68, column: 2, scope: !5330)
!5343 = !DILocation(line: 69, column: 1, scope: !5330)
!5344 = distinct !DISubprogram(name: "list_empty", scope: !5345, file: !5345, line: 371, type: !5346, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5350)
!5345 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5346 = !DISubroutineType(types: !5347)
!5347 = !{!117, !5348}
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!5350 = !{!5351}
!5351 = !DILocalVariable(name: "head", arg: 1, scope: !5344, file: !5345, line: 371, type: !5348)
!5352 = !DILocation(line: 371, column: 54, scope: !5344)
!5353 = !DILocation(line: 373, column: 9, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5344, file: !5345, line: 373, column: 9)
!5355 = !DILocation(line: 373, column: 9, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !5354, file: !5345, line: 373, column: 9)
!5357 = !DILocation(line: 373, column: 34, scope: !5344)
!5358 = !DILocation(line: 373, column: 31, scope: !5344)
!5359 = !DILocation(line: 373, column: 2, scope: !5344)
!5360 = distinct !DISubprogram(name: "agp_put_bridge", scope: !3, file: !3, line: 256, type: !5268, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5361)
!5361 = !{!5362}
!5362 = !DILocalVariable(name: "bridge", arg: 1, scope: !5360, file: !3, line: 256, type: !4247)
!5363 = !DILocation(line: 256, column: 45, scope: !5360)
!5364 = !DILocation(line: 258, column: 15, scope: !5360)
!5365 = !DILocation(line: 258, column: 9, scope: !5360)
!5366 = !DILocation(line: 260, column: 13, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 260, column: 13)
!5368 = !DILocation(line: 260, column: 13, scope: !5360)
!5369 = !DILocation(line: 261, column: 28, scope: !5367)
!5370 = !DILocation(line: 261, column: 17, scope: !5367)
!5371 = !DILocation(line: 262, column: 1, scope: !5360)
!5372 = !DISubprogram(name: "kfree", scope: !160, file: !160, line: 227, type: !5373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5373 = !DISubroutineType(types: !5374)
!5374 = !{null, !1227}
!5375 = distinct !DISubprogram(name: "agp_add_bridge", scope: !3, file: !3, line: 266, type: !4323, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5376)
!5376 = !{!5377, !5378, !5379, !5380, !5381}
!5377 = !DILocalVariable(name: "bridge", arg: 1, scope: !5375, file: !3, line: 266, type: !4247)
!5378 = !DILocalVariable(name: "error", scope: !5375, file: !3, line: 268, type: !117)
!5379 = !DILabel(scope: !5375, name: "frontend_err", file: !3, line: 311)
!5380 = !DILabel(scope: !5375, name: "err_out", file: !3, line: 313)
!5381 = !DILabel(scope: !5375, name: "err_put_bridge", file: !3, line: 315)
!5382 = !DILocation(line: 266, column: 44, scope: !5375)
!5383 = !DILocation(line: 268, column: 2, scope: !5375)
!5384 = !DILocation(line: 268, column: 6, scope: !5375)
!5385 = !DILocation(line: 270, column: 6, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 270, column: 6)
!5387 = !DILocation(line: 270, column: 6, scope: !5375)
!5388 = !DILocation(line: 271, column: 9, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5386, file: !3, line: 270, column: 15)
!5390 = !DILocation(line: 272, column: 3, scope: !5389)
!5391 = !DILocation(line: 275, column: 7, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 275, column: 6)
!5393 = !DILocation(line: 275, column: 15, scope: !5392)
!5394 = !DILocation(line: 275, column: 6, scope: !5375)
!5395 = !DILocation(line: 276, column: 3, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5397, file: !3, line: 276, column: 3)
!5397 = distinct !DILexicalBlock(scope: !5392, file: !3, line: 275, column: 20)
!5398 = !DILocation(line: 276, column: 3, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 276, column: 3)
!5400 = !DILocation(line: 277, column: 9, scope: !5397)
!5401 = !DILocation(line: 278, column: 3, scope: !5397)
!5402 = !DILocation(line: 282, column: 22, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 282, column: 6)
!5404 = !DILocation(line: 282, column: 30, scope: !5403)
!5405 = !DILocation(line: 282, column: 38, scope: !5403)
!5406 = !DILocation(line: 282, column: 7, scope: !5403)
!5407 = !DILocation(line: 282, column: 6, scope: !5375)
!5408 = !DILocation(line: 283, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 283, column: 3)
!5410 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 282, column: 46)
!5411 = !DILocation(line: 283, column: 3, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 283, column: 3)
!5413 = !DILocation(line: 284, column: 9, scope: !5410)
!5414 = !DILocation(line: 285, column: 3, scope: !5410)
!5415 = !DILocation(line: 288, column: 33, scope: !5375)
!5416 = !DILocation(line: 288, column: 10, scope: !5375)
!5417 = !DILocation(line: 288, column: 8, scope: !5375)
!5418 = !DILocation(line: 289, column: 6, scope: !5419)
!5419 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 289, column: 6)
!5420 = !DILocation(line: 289, column: 6, scope: !5375)
!5421 = !DILocation(line: 290, column: 3, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 290, column: 3)
!5423 = distinct !DILexicalBlock(scope: !5419, file: !3, line: 289, column: 13)
!5424 = !DILocation(line: 290, column: 3, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 290, column: 3)
!5426 = !DILocation(line: 292, column: 3, scope: !5423)
!5427 = !DILocation(line: 295, column: 6, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 295, column: 6)
!5429 = !DILocation(line: 295, column: 6, scope: !5375)
!5430 = !DILocation(line: 296, column: 11, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5428, file: !3, line: 295, column: 32)
!5432 = !DILocation(line: 296, column: 9, scope: !5431)
!5433 = !DILocation(line: 297, column: 7, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 297, column: 7)
!5435 = !DILocation(line: 297, column: 7, scope: !5431)
!5436 = !DILocation(line: 298, column: 4, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 298, column: 4)
!5438 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 297, column: 14)
!5439 = !DILocation(line: 298, column: 4, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 298, column: 4)
!5441 = !DILocation(line: 300, column: 4, scope: !5438)
!5442 = !DILocation(line: 303, column: 3, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 303, column: 3)
!5444 = !DILocation(line: 303, column: 3, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 303, column: 3)
!5446 = !DILocation(line: 306, column: 2, scope: !5431)
!5447 = !DILocation(line: 308, column: 12, scope: !5375)
!5448 = !DILocation(line: 308, column: 20, scope: !5375)
!5449 = !DILocation(line: 308, column: 2, scope: !5375)
!5450 = !DILocation(line: 309, column: 2, scope: !5375)
!5451 = !DILocation(line: 311, column: 1, scope: !5375)
!5452 = !DILocation(line: 312, column: 22, scope: !5375)
!5453 = !DILocation(line: 312, column: 2, scope: !5375)
!5454 = !DILocation(line: 313, column: 1, scope: !5375)
!5455 = !DILocation(line: 314, column: 13, scope: !5375)
!5456 = !DILocation(line: 314, column: 21, scope: !5375)
!5457 = !DILocation(line: 314, column: 29, scope: !5375)
!5458 = !DILocation(line: 314, column: 2, scope: !5375)
!5459 = !DILocation(line: 315, column: 1, scope: !5375)
!5460 = !DILocation(line: 316, column: 17, scope: !5375)
!5461 = !DILocation(line: 316, column: 2, scope: !5375)
!5462 = !DILocation(line: 317, column: 9, scope: !5375)
!5463 = !DILocation(line: 317, column: 2, scope: !5375)
!5464 = !DILocation(line: 318, column: 1, scope: !5375)
!5465 = !DISubprogram(name: "_printk", scope: !5466, file: !5466, line: 153, type: !5467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5466 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5467 = !DISubroutineType(types: !5468)
!5468 = !{!117, !375, null}
!5469 = !DISubprogram(name: "try_module_get", scope: !6, file: !6, line: 696, type: !5470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{!812, !451}
!5472 = !DISubprogram(name: "_dev_info", scope: !5473, file: !5473, line: 56, type: !5474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5473 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5474 = !DISubroutineType(types: !5475)
!5475 = !{null, !4451, !375, null}
!5476 = distinct !DISubprogram(name: "agp_backend_initialize", scope: !3, file: !3, line: 139, type: !4323, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5477)
!5477 = !{!5478, !5479, !5480, !5481, !5482, !5483, !5486, !5487}
!5478 = !DILocalVariable(name: "bridge", arg: 1, scope: !5476, file: !3, line: 139, type: !4247)
!5479 = !DILocalVariable(name: "size_value", scope: !5476, file: !3, line: 141, type: !117)
!5480 = !DILocalVariable(name: "rc", scope: !5476, file: !3, line: 141, type: !117)
!5481 = !DILocalVariable(name: "got_gatt", scope: !5476, file: !3, line: 141, type: !117)
!5482 = !DILocalVariable(name: "got_keylist", scope: !5476, file: !3, line: 141, type: !117)
!5483 = !DILocalVariable(name: "page", scope: !5484, file: !3, line: 147, type: !192)
!5484 = distinct !DILexicalBlock(scope: !5485, file: !3, line: 146, column: 42)
!5485 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 146, column: 6)
!5486 = !DILabel(scope: !5476, name: "err_out", file: !3, line: 197)
!5487 = !DILocalVariable(name: "page", scope: !5488, file: !3, line: 199, type: !192)
!5488 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 198, column: 42)
!5489 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 198, column: 6)
!5490 = !DILocation(line: 139, column: 59, scope: !5476)
!5491 = !DILocation(line: 141, column: 2, scope: !5476)
!5492 = !DILocation(line: 141, column: 6, scope: !5476)
!5493 = !DILocation(line: 141, column: 18, scope: !5476)
!5494 = !DILocation(line: 141, column: 22, scope: !5476)
!5495 = !DILocation(line: 141, column: 34, scope: !5476)
!5496 = !DILocation(line: 143, column: 27, scope: !5476)
!5497 = !DILocation(line: 143, column: 2, scope: !5476)
!5498 = !DILocation(line: 143, column: 10, scope: !5476)
!5499 = !DILocation(line: 143, column: 25, scope: !5476)
!5500 = !DILocation(line: 144, column: 2, scope: !5476)
!5501 = !DILocation(line: 144, column: 10, scope: !5476)
!5502 = !DILocation(line: 144, column: 18, scope: !5476)
!5503 = !DILocation(line: 146, column: 6, scope: !5485)
!5504 = !DILocation(line: 146, column: 14, scope: !5485)
!5505 = !DILocation(line: 146, column: 22, scope: !5485)
!5506 = !{i8 0, i8 2}
!5507 = !DILocation(line: 146, column: 6, scope: !5476)
!5508 = !DILocation(line: 147, column: 3, scope: !5484)
!5509 = !DILocation(line: 147, column: 16, scope: !5484)
!5510 = !DILocation(line: 147, column: 23, scope: !5484)
!5511 = !DILocation(line: 147, column: 31, scope: !5484)
!5512 = !DILocation(line: 147, column: 39, scope: !5484)
!5513 = !DILocation(line: 147, column: 54, scope: !5484)
!5514 = !DILocation(line: 149, column: 8, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 149, column: 7)
!5516 = !DILocation(line: 149, column: 7, scope: !5484)
!5517 = !DILocation(line: 150, column: 4, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 150, column: 4)
!5519 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 149, column: 14)
!5520 = !DILocation(line: 150, column: 4, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 150, column: 4)
!5522 = !DILocation(line: 152, column: 4, scope: !5519)
!5523 = !DILocation(line: 155, column: 31, scope: !5484)
!5524 = !DILocation(line: 155, column: 3, scope: !5484)
!5525 = !DILocation(line: 155, column: 11, scope: !5484)
!5526 = !DILocation(line: 155, column: 29, scope: !5484)
!5527 = !DILocation(line: 156, column: 30, scope: !5484)
!5528 = !DILocation(line: 156, column: 3, scope: !5484)
!5529 = !DILocation(line: 156, column: 11, scope: !5484)
!5530 = !DILocation(line: 156, column: 28, scope: !5484)
!5531 = !DILocation(line: 158, column: 26, scope: !5484)
!5532 = !DILocation(line: 158, column: 34, scope: !5484)
!5533 = !DILocation(line: 158, column: 42, scope: !5484)
!5534 = !DILocation(line: 158, column: 54, scope: !5484)
!5535 = !DILocation(line: 159, column: 10, scope: !5484)
!5536 = !DILocation(line: 159, column: 18, scope: !5484)
!5537 = !DILocation(line: 158, column: 3, scope: !5484)
!5538 = !DILocation(line: 158, column: 11, scope: !5484)
!5539 = !DILocation(line: 158, column: 24, scope: !5484)
!5540 = !DILocation(line: 160, column: 2, scope: !5485)
!5541 = !DILocation(line: 160, column: 2, scope: !5484)
!5542 = !DILocation(line: 162, column: 15, scope: !5476)
!5543 = !DILocation(line: 162, column: 23, scope: !5476)
!5544 = !DILocation(line: 162, column: 31, scope: !5476)
!5545 = !DILocation(line: 162, column: 13, scope: !5476)
!5546 = !DILocation(line: 163, column: 6, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 163, column: 6)
!5548 = !DILocation(line: 163, column: 17, scope: !5547)
!5549 = !DILocation(line: 163, column: 6, scope: !5476)
!5550 = !DILocation(line: 164, column: 3, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 164, column: 3)
!5552 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 163, column: 23)
!5553 = !DILocation(line: 164, column: 3, scope: !5554)
!5554 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 164, column: 3)
!5555 = !DILocation(line: 165, column: 6, scope: !5552)
!5556 = !DILocation(line: 166, column: 3, scope: !5552)
!5557 = !DILocation(line: 168, column: 6, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 168, column: 6)
!5559 = !DILocation(line: 168, column: 14, scope: !5558)
!5560 = !DILocation(line: 168, column: 22, scope: !5558)
!5561 = !DILocation(line: 168, column: 40, scope: !5558)
!5562 = !DILocation(line: 168, column: 6, scope: !5476)
!5563 = !DILocation(line: 169, column: 3, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 169, column: 3)
!5565 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 168, column: 49)
!5566 = !DILocation(line: 169, column: 3, scope: !5567)
!5567 = distinct !DILexicalBlock(scope: !5564, file: !3, line: 169, column: 3)
!5568 = !DILocation(line: 171, column: 6, scope: !5565)
!5569 = !DILocation(line: 172, column: 3, scope: !5565)
!5570 = !DILocation(line: 174, column: 11, scope: !5476)
!5571 = !DILocation(line: 176, column: 21, scope: !5476)
!5572 = !DILocation(line: 176, column: 2, scope: !5476)
!5573 = !DILocation(line: 176, column: 10, scope: !5476)
!5574 = !DILocation(line: 176, column: 19, scope: !5476)
!5575 = !DILocation(line: 177, column: 6, scope: !5576)
!5576 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 177, column: 6)
!5577 = !DILocation(line: 177, column: 14, scope: !5576)
!5578 = !DILocation(line: 177, column: 23, scope: !5576)
!5579 = !DILocation(line: 177, column: 6, scope: !5476)
!5580 = !DILocation(line: 178, column: 3, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 178, column: 3)
!5582 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 177, column: 32)
!5583 = !DILocation(line: 178, column: 3, scope: !5584)
!5584 = distinct !DILexicalBlock(scope: !5581, file: !3, line: 178, column: 3)
!5585 = !DILocation(line: 180, column: 6, scope: !5582)
!5586 = !DILocation(line: 181, column: 3, scope: !5582)
!5587 = !DILocation(line: 183, column: 14, scope: !5476)
!5588 = !DILocation(line: 187, column: 6, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 187, column: 6)
!5590 = !DILocation(line: 187, column: 14, scope: !5589)
!5591 = !DILocation(line: 187, column: 22, scope: !5589)
!5592 = !DILocation(line: 187, column: 6, scope: !5476)
!5593 = !DILocation(line: 188, column: 3, scope: !5594)
!5594 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 188, column: 3)
!5595 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 187, column: 35)
!5596 = !DILocation(line: 188, column: 3, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5594, file: !3, line: 188, column: 3)
!5598 = !DILocation(line: 189, column: 6, scope: !5595)
!5599 = !DILocation(line: 190, column: 3, scope: !5595)
!5600 = !DILocation(line: 192, column: 18, scope: !5476)
!5601 = !DILocation(line: 192, column: 26, scope: !5476)
!5602 = !DILocation(line: 192, column: 2, scope: !5476)
!5603 = !DILocation(line: 193, column: 2, scope: !5476)
!5604 = !DILocation(line: 193, column: 2, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 193, column: 2)
!5606 = !DILocation(line: 195, column: 2, scope: !5476)
!5607 = !DILocation(line: 197, column: 1, scope: !5476)
!5608 = !DILocation(line: 198, column: 6, scope: !5489)
!5609 = !DILocation(line: 198, column: 14, scope: !5489)
!5610 = !DILocation(line: 198, column: 22, scope: !5489)
!5611 = !DILocation(line: 198, column: 6, scope: !5476)
!5612 = !DILocation(line: 199, column: 3, scope: !5488)
!5613 = !DILocation(line: 199, column: 16, scope: !5488)
!5614 = !DILocation(line: 199, column: 23, scope: !5488)
!5615 = !DILocation(line: 199, column: 31, scope: !5488)
!5616 = !DILocation(line: 201, column: 3, scope: !5488)
!5617 = !DILocation(line: 201, column: 11, scope: !5488)
!5618 = !DILocation(line: 201, column: 19, scope: !5488)
!5619 = !DILocation(line: 201, column: 36, scope: !5488)
!5620 = !DILocation(line: 202, column: 3, scope: !5488)
!5621 = !DILocation(line: 202, column: 11, scope: !5488)
!5622 = !DILocation(line: 202, column: 19, scope: !5488)
!5623 = !DILocation(line: 202, column: 36, scope: !5488)
!5624 = !DILocation(line: 203, column: 2, scope: !5489)
!5625 = !DILocation(line: 203, column: 2, scope: !5488)
!5626 = !DILocation(line: 204, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 204, column: 6)
!5628 = !DILocation(line: 204, column: 6, scope: !5476)
!5629 = !DILocation(line: 205, column: 3, scope: !5627)
!5630 = !DILocation(line: 205, column: 11, scope: !5627)
!5631 = !DILocation(line: 205, column: 19, scope: !5627)
!5632 = !DILocation(line: 205, column: 35, scope: !5627)
!5633 = !DILocation(line: 206, column: 6, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 206, column: 6)
!5635 = !DILocation(line: 206, column: 6, scope: !5476)
!5636 = !DILocation(line: 207, column: 9, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 206, column: 19)
!5638 = !DILocation(line: 207, column: 17, scope: !5637)
!5639 = !DILocation(line: 207, column: 3, scope: !5637)
!5640 = !DILocation(line: 208, column: 3, scope: !5637)
!5641 = !DILocation(line: 208, column: 11, scope: !5637)
!5642 = !DILocation(line: 208, column: 20, scope: !5637)
!5643 = !DILocation(line: 209, column: 2, scope: !5637)
!5644 = !DILocation(line: 210, column: 9, scope: !5476)
!5645 = !DILocation(line: 210, column: 2, scope: !5476)
!5646 = !DILocation(line: 211, column: 1, scope: !5476)
!5647 = distinct !DISubprogram(name: "agp_frontend_initialize", scope: !88, file: !88, line: 193, type: !1805, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5648 = !DILocation(line: 193, column: 51, scope: !5647)
!5649 = distinct !DISubprogram(name: "list_add", scope: !5345, file: !5345, line: 167, type: !5650, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5652)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !181, !181}
!5652 = !{!5653, !5654}
!5653 = !DILocalVariable(name: "new", arg: 1, scope: !5649, file: !5345, line: 167, type: !181)
!5654 = !DILocalVariable(name: "head", arg: 2, scope: !5649, file: !5345, line: 167, type: !181)
!5655 = !DILocation(line: 167, column: 47, scope: !5649)
!5656 = !DILocation(line: 167, column: 70, scope: !5649)
!5657 = !DILocation(line: 169, column: 13, scope: !5649)
!5658 = !DILocation(line: 169, column: 18, scope: !5649)
!5659 = !DILocation(line: 169, column: 24, scope: !5649)
!5660 = !DILocation(line: 169, column: 30, scope: !5649)
!5661 = !DILocation(line: 169, column: 2, scope: !5649)
!5662 = !DILocation(line: 170, column: 1, scope: !5649)
!5663 = distinct !DISubprogram(name: "agp_backend_cleanup", scope: !3, file: !3, line: 214, type: !5268, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5664)
!5664 = !{!5665, !5666}
!5665 = !DILocalVariable(name: "bridge", arg: 1, scope: !5663, file: !3, line: 214, type: !4247)
!5666 = !DILocalVariable(name: "page", scope: !5667, file: !3, line: 226, type: !192)
!5667 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 225, column: 42)
!5668 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 224, column: 6)
!5669 = !DILocation(line: 214, column: 57, scope: !5663)
!5670 = !DILocation(line: 216, column: 6, scope: !5671)
!5671 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 216, column: 6)
!5672 = !DILocation(line: 216, column: 14, scope: !5671)
!5673 = !DILocation(line: 216, column: 22, scope: !5671)
!5674 = !DILocation(line: 216, column: 6, scope: !5663)
!5675 = !DILocation(line: 217, column: 3, scope: !5671)
!5676 = !DILocation(line: 217, column: 11, scope: !5671)
!5677 = !DILocation(line: 217, column: 19, scope: !5671)
!5678 = !DILocation(line: 218, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5663, file: !3, line: 218, column: 6)
!5680 = !DILocation(line: 218, column: 14, scope: !5679)
!5681 = !DILocation(line: 218, column: 22, scope: !5679)
!5682 = !DILocation(line: 218, column: 6, scope: !5663)
!5683 = !DILocation(line: 219, column: 3, scope: !5679)
!5684 = !DILocation(line: 219, column: 11, scope: !5679)
!5685 = !DILocation(line: 219, column: 19, scope: !5679)
!5686 = !DILocation(line: 219, column: 35, scope: !5679)
!5687 = !DILocation(line: 221, column: 8, scope: !5663)
!5688 = !DILocation(line: 221, column: 16, scope: !5663)
!5689 = !DILocation(line: 221, column: 2, scope: !5663)
!5690 = !DILocation(line: 222, column: 2, scope: !5663)
!5691 = !DILocation(line: 222, column: 10, scope: !5663)
!5692 = !DILocation(line: 222, column: 19, scope: !5663)
!5693 = !DILocation(line: 224, column: 6, scope: !5668)
!5694 = !DILocation(line: 224, column: 14, scope: !5668)
!5695 = !DILocation(line: 224, column: 22, scope: !5668)
!5696 = !DILocation(line: 224, column: 39, scope: !5668)
!5697 = !DILocation(line: 225, column: 6, scope: !5668)
!5698 = !DILocation(line: 225, column: 14, scope: !5668)
!5699 = !DILocation(line: 225, column: 22, scope: !5668)
!5700 = !DILocation(line: 224, column: 6, scope: !5663)
!5701 = !DILocation(line: 226, column: 3, scope: !5667)
!5702 = !DILocation(line: 226, column: 16, scope: !5667)
!5703 = !DILocation(line: 226, column: 23, scope: !5667)
!5704 = !DILocation(line: 226, column: 31, scope: !5667)
!5705 = !DILocation(line: 228, column: 3, scope: !5667)
!5706 = !DILocation(line: 228, column: 11, scope: !5667)
!5707 = !DILocation(line: 228, column: 19, scope: !5667)
!5708 = !DILocation(line: 228, column: 36, scope: !5667)
!5709 = !DILocation(line: 229, column: 3, scope: !5667)
!5710 = !DILocation(line: 229, column: 11, scope: !5667)
!5711 = !DILocation(line: 229, column: 19, scope: !5667)
!5712 = !DILocation(line: 229, column: 36, scope: !5667)
!5713 = !DILocation(line: 230, column: 2, scope: !5668)
!5714 = !DILocation(line: 230, column: 2, scope: !5667)
!5715 = !DILocation(line: 231, column: 1, scope: !5663)
!5716 = !DISubprogram(name: "module_put", scope: !6, file: !6, line: 706, type: !1721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5717 = distinct !DISubprogram(name: "agp_remove_bridge", scope: !3, file: !3, line: 322, type: !5268, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5718)
!5718 = !{!5719}
!5719 = !DILocalVariable(name: "bridge", arg: 1, scope: !5717, file: !3, line: 322, type: !4247)
!5720 = !DILocation(line: 322, column: 48, scope: !5717)
!5721 = !DILocation(line: 324, column: 22, scope: !5717)
!5722 = !DILocation(line: 324, column: 2, scope: !5717)
!5723 = !DILocation(line: 325, column: 12, scope: !5717)
!5724 = !DILocation(line: 325, column: 20, scope: !5717)
!5725 = !DILocation(line: 325, column: 2, scope: !5717)
!5726 = !DILocation(line: 326, column: 6, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 326, column: 6)
!5728 = !DILocation(line: 326, column: 6, scope: !5717)
!5729 = !DILocation(line: 327, column: 3, scope: !5727)
!5730 = !DILocation(line: 328, column: 13, scope: !5717)
!5731 = !DILocation(line: 328, column: 21, scope: !5717)
!5732 = !DILocation(line: 328, column: 29, scope: !5717)
!5733 = !DILocation(line: 328, column: 2, scope: !5717)
!5734 = !DILocation(line: 329, column: 1, scope: !5717)
!5735 = distinct !DISubprogram(name: "list_del", scope: !5345, file: !5345, line: 227, type: !5736, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5738)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{null, !181}
!5738 = !{!5739}
!5739 = !DILocalVariable(name: "entry", arg: 1, scope: !5735, file: !5345, line: 227, type: !181)
!5740 = !DILocation(line: 227, column: 47, scope: !5735)
!5741 = !DILocation(line: 229, column: 19, scope: !5735)
!5742 = !DILocation(line: 229, column: 2, scope: !5735)
!5743 = !DILocation(line: 230, column: 2, scope: !5735)
!5744 = !DILocation(line: 230, column: 9, scope: !5735)
!5745 = !DILocation(line: 230, column: 14, scope: !5735)
!5746 = !DILocation(line: 231, column: 2, scope: !5735)
!5747 = !DILocation(line: 231, column: 9, scope: !5735)
!5748 = !DILocation(line: 231, column: 14, scope: !5735)
!5749 = !DILocation(line: 232, column: 1, scope: !5735)
!5750 = distinct !DISubprogram(name: "agp_frontend_cleanup", scope: !88, file: !88, line: 194, type: !2038, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5751 = !DILocation(line: 194, column: 48, scope: !5750)
!5752 = distinct !DISubprogram(name: "agp_exit", scope: !3, file: !3, line: 345, type: !2038, scopeLine: 346, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5753 = !DILocation(line: 347, column: 1, scope: !5752)
!5754 = distinct !DISubprogram(name: "agp_setup", scope: !3, file: !3, line: 350, type: !4214, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5755)
!5755 = !{!5756}
!5756 = !DILocalVariable(name: "s", arg: 1, scope: !5754, file: !3, line: 350, type: !401)
!5757 = !DILocation(line: 350, column: 35, scope: !5754)
!5758 = !DILocation(line: 352, column: 14, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 352, column: 6)
!5760 = !DILocation(line: 352, column: 7, scope: !5759)
!5761 = !DILocation(line: 352, column: 6, scope: !5754)
!5762 = !DILocation(line: 353, column: 11, scope: !5759)
!5763 = !DILocation(line: 353, column: 3, scope: !5759)
!5764 = !DILocation(line: 354, column: 14, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 354, column: 6)
!5766 = !DILocation(line: 354, column: 7, scope: !5765)
!5767 = !DILocation(line: 354, column: 6, scope: !5754)
!5768 = !DILocation(line: 355, column: 28, scope: !5765)
!5769 = !DILocation(line: 355, column: 3, scope: !5765)
!5770 = !DILocation(line: 356, column: 2, scope: !5754)
!5771 = distinct !DISubprogram(name: "__initstub__kmod_agpgart__339_366_agp_init6", scope: !3, file: !3, line: 366, type: !1805, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5772 = !DILocation(line: 366, column: 1, scope: !5771)
!5773 = distinct !DISubprogram(name: "agp_init", scope: !3, file: !3, line: 337, type: !1805, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5774 = !DILocation(line: 339, column: 7, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5773, file: !3, line: 339, column: 6)
!5776 = !DILocation(line: 339, column: 6, scope: !5773)
!5777 = !DILocation(line: 340, column: 3, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5775, file: !3, line: 340, column: 3)
!5779 = !DILocation(line: 340, column: 3, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 340, column: 3)
!5781 = !DILocation(line: 340, column: 3, scope: !5775)
!5782 = !DILocation(line: 342, column: 2, scope: !5773)
!5783 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5784, file: !5784, line: 66, type: !5785, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5790)
!5784 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5785 = !DISubroutineType(types: !5786)
!5786 = !{null, !5787, !549}
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5789)
!5789 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5790 = !{!5791, !5792}
!5791 = !DILocalVariable(name: "v", arg: 1, scope: !5783, file: !5784, line: 66, type: !5787)
!5792 = !DILocalVariable(name: "size", arg: 2, scope: !5783, file: !5784, line: 66, type: !549)
!5793 = !DILocation(line: 66, column: 73, scope: !5783)
!5794 = !DILocation(line: 66, column: 83, scope: !5783)
!5795 = !DILocation(line: 68, column: 19, scope: !5783)
!5796 = !DILocation(line: 68, column: 22, scope: !5783)
!5797 = !DILocation(line: 68, column: 2, scope: !5783)
!5798 = !DILocation(line: 69, column: 2, scope: !5783)
!5799 = !DILocation(line: 70, column: 1, scope: !5783)
!5800 = distinct !DISubprogram(name: "raw_atomic_read", scope: !5801, file: !5801, line: 442, type: !5243, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5802)
!5801 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5802 = !{!5803}
!5803 = !DILocalVariable(name: "v", arg: 1, scope: !5800, file: !5801, line: 442, type: !5245)
!5804 = !DILocation(line: 442, column: 33, scope: !5800)
!5805 = !DILocation(line: 444, column: 26, scope: !5800)
!5806 = !DILocation(line: 444, column: 9, scope: !5800)
!5807 = !DILocation(line: 444, column: 2, scope: !5800)
!5808 = distinct !DISubprogram(name: "kasan_check_read", scope: !5809, file: !5809, line: 40, type: !5810, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5812)
!5809 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!812, !5787, !7}
!5812 = !{!5813, !5814}
!5813 = !DILocalVariable(name: "p", arg: 1, scope: !5808, file: !5809, line: 40, type: !5787)
!5814 = !DILocalVariable(name: "size", arg: 2, scope: !5808, file: !5809, line: 40, type: !7)
!5815 = !DILocation(line: 40, column: 58, scope: !5808)
!5816 = !DILocation(line: 40, column: 74, scope: !5808)
!5817 = !DILocation(line: 42, column: 2, scope: !5808)
!5818 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5819, file: !5819, line: 229, type: !5820, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5822)
!5819 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5820 = !DISubroutineType(types: !5821)
!5821 = !{null, !5787, !549, !117}
!5822 = !{!5823, !5824, !5825}
!5823 = !DILocalVariable(name: "ptr", arg: 1, scope: !5818, file: !5819, line: 229, type: !5787)
!5824 = !DILocalVariable(name: "size", arg: 2, scope: !5818, file: !5819, line: 229, type: !549)
!5825 = !DILocalVariable(name: "type", arg: 3, scope: !5818, file: !5819, line: 230, type: !117)
!5826 = !DILocation(line: 229, column: 60, scope: !5818)
!5827 = !DILocation(line: 229, column: 72, scope: !5818)
!5828 = !DILocation(line: 230, column: 15, scope: !5818)
!5829 = !DILocation(line: 230, column: 23, scope: !5818)
!5830 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5831, file: !5831, line: 17, type: !5243, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5832)
!5831 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5832 = !{!5833}
!5833 = !DILocalVariable(name: "v", arg: 1, scope: !5830, file: !5831, line: 17, type: !5245)
!5834 = !DILocation(line: 17, column: 61, scope: !5830)
!5835 = !DILocation(line: 23, column: 9, scope: !5830)
!5836 = !DILocation(line: 23, column: 2, scope: !5830)
!5837 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5784, file: !5784, line: 94, type: !5785, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5838)
!5838 = !{!5839, !5840}
!5839 = !DILocalVariable(name: "v", arg: 1, scope: !5837, file: !5784, line: 94, type: !5787)
!5840 = !DILocalVariable(name: "size", arg: 2, scope: !5837, file: !5784, line: 94, type: !549)
!5841 = !DILocation(line: 94, column: 79, scope: !5837)
!5842 = !DILocation(line: 94, column: 89, scope: !5837)
!5843 = !DILocation(line: 96, column: 20, scope: !5837)
!5844 = !DILocation(line: 96, column: 23, scope: !5837)
!5845 = !DILocation(line: 96, column: 2, scope: !5837)
!5846 = !DILocation(line: 97, column: 2, scope: !5837)
!5847 = !DILocation(line: 98, column: 1, scope: !5837)
!5848 = distinct !DISubprogram(name: "raw_atomic_inc", scope: !5801, file: !5801, line: 976, type: !5256, scopeLine: 977, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5849)
!5849 = !{!5850}
!5850 = !DILocalVariable(name: "v", arg: 1, scope: !5848, file: !5801, line: 976, type: !5258)
!5851 = !DILocation(line: 976, column: 26, scope: !5848)
!5852 = !DILocation(line: 979, column: 18, scope: !5848)
!5853 = !DILocation(line: 979, column: 2, scope: !5848)
!5854 = !DILocation(line: 983, column: 1, scope: !5848)
!5855 = distinct !DISubprogram(name: "kasan_check_write", scope: !5809, file: !5809, line: 44, type: !5810, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5856)
!5856 = !{!5857, !5858}
!5857 = !DILocalVariable(name: "p", arg: 1, scope: !5855, file: !5809, line: 44, type: !5787)
!5858 = !DILocalVariable(name: "size", arg: 2, scope: !5855, file: !5809, line: 44, type: !7)
!5859 = !DILocation(line: 44, column: 59, scope: !5855)
!5860 = !DILocation(line: 44, column: 75, scope: !5855)
!5861 = !DILocation(line: 46, column: 2, scope: !5855)
!5862 = distinct !DISubprogram(name: "arch_atomic_inc", scope: !5831, file: !5831, line: 51, type: !5256, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5863)
!5863 = !{!5864}
!5864 = !DILocalVariable(name: "v", arg: 1, scope: !5862, file: !5831, line: 51, type: !5258)
!5865 = !DILocation(line: 51, column: 55, scope: !5862)
!5866 = !DILocation(line: 54, column: 16, scope: !5862)
!5867 = !DILocation(line: 54, column: 19, scope: !5862)
!5868 = !DILocation(line: 53, column: 2, scope: !5862)
!5869 = !{i64 2148789350, i64 2148789389, i64 2148789410, i64 2148789447, i64 2148789470, i64 2148789340}
!5870 = !DILocation(line: 55, column: 1, scope: !5862)
!5871 = distinct !DISubprogram(name: "raw_atomic_dec", scope: !5801, file: !5801, line: 1194, type: !5256, scopeLine: 1195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5872)
!5872 = !{!5873}
!5873 = !DILocalVariable(name: "v", arg: 1, scope: !5871, file: !5801, line: 1194, type: !5258)
!5874 = !DILocation(line: 1194, column: 26, scope: !5871)
!5875 = !DILocation(line: 1197, column: 18, scope: !5871)
!5876 = !DILocation(line: 1197, column: 2, scope: !5871)
!5877 = !DILocation(line: 1201, column: 1, scope: !5871)
!5878 = distinct !DISubprogram(name: "arch_atomic_dec", scope: !5831, file: !5831, line: 58, type: !5256, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5879)
!5879 = !{!5880}
!5880 = !DILocalVariable(name: "v", arg: 1, scope: !5878, file: !5831, line: 58, type: !5258)
!5881 = !DILocation(line: 58, column: 55, scope: !5878)
!5882 = !DILocation(line: 61, column: 16, scope: !5878)
!5883 = !DILocation(line: 61, column: 19, scope: !5878)
!5884 = !DILocation(line: 60, column: 2, scope: !5878)
!5885 = !{i64 2148789713, i64 2148789752, i64 2148789773, i64 2148789810, i64 2148789833, i64 2148789703}
!5886 = !DILocation(line: 62, column: 1, scope: !5878)
!5887 = distinct !DISubprogram(name: "kmalloc", scope: !160, file: !160, line: 591, type: !5318, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5888)
!5888 = !{!5889, !5890, !5891}
!5889 = !DILocalVariable(name: "size", arg: 1, scope: !5887, file: !160, line: 591, type: !549)
!5890 = !DILocalVariable(name: "flags", arg: 2, scope: !5887, file: !160, line: 591, type: !171)
!5891 = !DILocalVariable(name: "index", scope: !5892, file: !160, line: 594, type: !7)
!5892 = distinct !DILexicalBlock(scope: !5893, file: !160, line: 593, column: 42)
!5893 = distinct !DILexicalBlock(scope: !5887, file: !160, line: 593, column: 6)
!5894 = !DILocation(line: 591, column: 61, scope: !5887)
!5895 = !DILocation(line: 591, column: 73, scope: !5887)
!5896 = !DILocation(line: 593, column: 27, scope: !5893)
!5897 = !DILocation(line: 593, column: 6, scope: !5893)
!5898 = !DILocation(line: 593, column: 33, scope: !5893)
!5899 = !DILocation(line: 593, column: 36, scope: !5893)
!5900 = !DILocation(line: 593, column: 6, scope: !5887)
!5901 = !DILocation(line: 594, column: 3, scope: !5892)
!5902 = !DILocation(line: 594, column: 16, scope: !5892)
!5903 = !DILocation(line: 596, column: 7, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !5892, file: !160, line: 596, column: 7)
!5905 = !DILocation(line: 596, column: 12, scope: !5904)
!5906 = !DILocation(line: 596, column: 7, scope: !5892)
!5907 = !DILocation(line: 597, column: 25, scope: !5904)
!5908 = !DILocation(line: 597, column: 31, scope: !5904)
!5909 = !DILocation(line: 597, column: 11, scope: !5904)
!5910 = !DILocation(line: 597, column: 4, scope: !5904)
!5911 = !DILocation(line: 599, column: 11, scope: !5892)
!5912 = !DILocation(line: 599, column: 9, scope: !5892)
!5913 = !DILocation(line: 601, column: 33, scope: !5892)
!5914 = !DILocation(line: 601, column: 40, scope: !5892)
!5915 = !DILocation(line: 601, column: 20, scope: !5892)
!5916 = !DILocation(line: 601, column: 5, scope: !5892)
!5917 = !DILocation(line: 601, column: 51, scope: !5892)
!5918 = !DILocation(line: 602, column: 5, scope: !5892)
!5919 = !DILocation(line: 602, column: 12, scope: !5892)
!5920 = !DILocation(line: 600, column: 10, scope: !5892)
!5921 = !DILocation(line: 600, column: 3, scope: !5892)
!5922 = !DILocation(line: 603, column: 2, scope: !5893)
!5923 = !DILocation(line: 604, column: 19, scope: !5887)
!5924 = !DILocation(line: 604, column: 25, scope: !5887)
!5925 = !DILocation(line: 604, column: 9, scope: !5887)
!5926 = !DILocation(line: 604, column: 2, scope: !5887)
!5927 = !DILocation(line: 605, column: 1, scope: !5887)
!5928 = !DISubprogram(name: "kmalloc_large", scope: !160, file: !160, line: 531, type: !5318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5929 = distinct !DISubprogram(name: "__kmalloc_index", scope: !160, file: !160, line: 444, type: !5930, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5932)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{!7, !549, !812}
!5932 = !{!5933, !5934}
!5933 = !DILocalVariable(name: "size", arg: 1, scope: !5929, file: !160, line: 444, type: !549)
!5934 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5929, file: !160, line: 445, type: !812)
!5935 = !DILocation(line: 444, column: 60, scope: !5929)
!5936 = !DILocation(line: 445, column: 16, scope: !5929)
!5937 = !DILocation(line: 447, column: 7, scope: !5938)
!5938 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 447, column: 6)
!5939 = !DILocation(line: 447, column: 6, scope: !5929)
!5940 = !DILocation(line: 448, column: 3, scope: !5938)
!5941 = !DILocation(line: 450, column: 6, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 450, column: 6)
!5943 = !DILocation(line: 450, column: 11, scope: !5942)
!5944 = !DILocation(line: 450, column: 6, scope: !5929)
!5945 = !DILocation(line: 451, column: 3, scope: !5942)
!5946 = !DILocation(line: 453, column: 32, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 453, column: 6)
!5948 = !DILocation(line: 453, column: 37, scope: !5947)
!5949 = !DILocation(line: 453, column: 42, scope: !5947)
!5950 = !DILocation(line: 453, column: 45, scope: !5947)
!5951 = !DILocation(line: 453, column: 50, scope: !5947)
!5952 = !DILocation(line: 453, column: 6, scope: !5929)
!5953 = !DILocation(line: 454, column: 3, scope: !5947)
!5954 = !DILocation(line: 455, column: 32, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 455, column: 6)
!5956 = !DILocation(line: 455, column: 37, scope: !5955)
!5957 = !DILocation(line: 455, column: 43, scope: !5955)
!5958 = !DILocation(line: 455, column: 46, scope: !5955)
!5959 = !DILocation(line: 455, column: 51, scope: !5955)
!5960 = !DILocation(line: 455, column: 6, scope: !5929)
!5961 = !DILocation(line: 456, column: 3, scope: !5955)
!5962 = !DILocation(line: 457, column: 6, scope: !5963)
!5963 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 457, column: 6)
!5964 = !DILocation(line: 457, column: 11, scope: !5963)
!5965 = !DILocation(line: 457, column: 6, scope: !5929)
!5966 = !DILocation(line: 457, column: 26, scope: !5963)
!5967 = !DILocation(line: 458, column: 6, scope: !5968)
!5968 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 458, column: 6)
!5969 = !DILocation(line: 458, column: 11, scope: !5968)
!5970 = !DILocation(line: 458, column: 6, scope: !5929)
!5971 = !DILocation(line: 458, column: 26, scope: !5968)
!5972 = !DILocation(line: 459, column: 6, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 459, column: 6)
!5974 = !DILocation(line: 459, column: 11, scope: !5973)
!5975 = !DILocation(line: 459, column: 6, scope: !5929)
!5976 = !DILocation(line: 459, column: 26, scope: !5973)
!5977 = !DILocation(line: 460, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 460, column: 6)
!5979 = !DILocation(line: 460, column: 11, scope: !5978)
!5980 = !DILocation(line: 460, column: 6, scope: !5929)
!5981 = !DILocation(line: 460, column: 26, scope: !5978)
!5982 = !DILocation(line: 461, column: 6, scope: !5983)
!5983 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 461, column: 6)
!5984 = !DILocation(line: 461, column: 11, scope: !5983)
!5985 = !DILocation(line: 461, column: 6, scope: !5929)
!5986 = !DILocation(line: 461, column: 26, scope: !5983)
!5987 = !DILocation(line: 462, column: 6, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 462, column: 6)
!5989 = !DILocation(line: 462, column: 11, scope: !5988)
!5990 = !DILocation(line: 462, column: 6, scope: !5929)
!5991 = !DILocation(line: 462, column: 26, scope: !5988)
!5992 = !DILocation(line: 463, column: 6, scope: !5993)
!5993 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 463, column: 6)
!5994 = !DILocation(line: 463, column: 11, scope: !5993)
!5995 = !DILocation(line: 463, column: 6, scope: !5929)
!5996 = !DILocation(line: 463, column: 26, scope: !5993)
!5997 = !DILocation(line: 464, column: 6, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 464, column: 6)
!5999 = !DILocation(line: 464, column: 11, scope: !5998)
!6000 = !DILocation(line: 464, column: 6, scope: !5929)
!6001 = !DILocation(line: 464, column: 26, scope: !5998)
!6002 = !DILocation(line: 465, column: 6, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 465, column: 6)
!6004 = !DILocation(line: 465, column: 11, scope: !6003)
!6005 = !DILocation(line: 465, column: 6, scope: !5929)
!6006 = !DILocation(line: 465, column: 26, scope: !6003)
!6007 = !DILocation(line: 466, column: 6, scope: !6008)
!6008 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 466, column: 6)
!6009 = !DILocation(line: 466, column: 11, scope: !6008)
!6010 = !DILocation(line: 466, column: 6, scope: !5929)
!6011 = !DILocation(line: 466, column: 26, scope: !6008)
!6012 = !DILocation(line: 467, column: 6, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 467, column: 6)
!6014 = !DILocation(line: 467, column: 11, scope: !6013)
!6015 = !DILocation(line: 467, column: 6, scope: !5929)
!6016 = !DILocation(line: 467, column: 26, scope: !6013)
!6017 = !DILocation(line: 468, column: 6, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 468, column: 6)
!6019 = !DILocation(line: 468, column: 11, scope: !6018)
!6020 = !DILocation(line: 468, column: 6, scope: !5929)
!6021 = !DILocation(line: 468, column: 26, scope: !6018)
!6022 = !DILocation(line: 469, column: 6, scope: !6023)
!6023 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 469, column: 6)
!6024 = !DILocation(line: 469, column: 11, scope: !6023)
!6025 = !DILocation(line: 469, column: 6, scope: !5929)
!6026 = !DILocation(line: 469, column: 26, scope: !6023)
!6027 = !DILocation(line: 470, column: 6, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 470, column: 6)
!6029 = !DILocation(line: 470, column: 11, scope: !6028)
!6030 = !DILocation(line: 470, column: 6, scope: !5929)
!6031 = !DILocation(line: 470, column: 26, scope: !6028)
!6032 = !DILocation(line: 471, column: 6, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 471, column: 6)
!6034 = !DILocation(line: 471, column: 11, scope: !6033)
!6035 = !DILocation(line: 471, column: 6, scope: !5929)
!6036 = !DILocation(line: 471, column: 26, scope: !6033)
!6037 = !DILocation(line: 472, column: 6, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 472, column: 6)
!6039 = !DILocation(line: 472, column: 11, scope: !6038)
!6040 = !DILocation(line: 472, column: 6, scope: !5929)
!6041 = !DILocation(line: 472, column: 26, scope: !6038)
!6042 = !DILocation(line: 473, column: 6, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 473, column: 6)
!6044 = !DILocation(line: 473, column: 11, scope: !6043)
!6045 = !DILocation(line: 473, column: 6, scope: !5929)
!6046 = !DILocation(line: 473, column: 26, scope: !6043)
!6047 = !DILocation(line: 474, column: 6, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 474, column: 6)
!6049 = !DILocation(line: 474, column: 11, scope: !6048)
!6050 = !DILocation(line: 474, column: 6, scope: !5929)
!6051 = !DILocation(line: 474, column: 27, scope: !6048)
!6052 = !DILocation(line: 475, column: 6, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 475, column: 6)
!6054 = !DILocation(line: 475, column: 11, scope: !6053)
!6055 = !DILocation(line: 475, column: 6, scope: !5929)
!6056 = !DILocation(line: 475, column: 32, scope: !6053)
!6057 = !DILocation(line: 477, column: 50, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !5929, file: !160, line: 477, column: 6)
!6059 = !DILocation(line: 477, column: 6, scope: !5929)
!6060 = !DILocation(line: 478, column: 3, scope: !6058)
!6061 = !DILocation(line: 478, column: 3, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6063, file: !160, line: 478, column: 3)
!6063 = distinct !DILexicalBlock(scope: !6058, file: !160, line: 478, column: 3)
!6064 = !{i32 -2141979355}
!6065 = !DILocation(line: 478, column: 3, scope: !6063)
!6066 = !DILocation(line: 480, column: 3, scope: !6058)
!6067 = !DILocation(line: 480, column: 3, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6058, file: !160, line: 480, column: 3)
!6069 = !DILocation(line: 480, column: 3, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6068, file: !160, line: 480, column: 3)
!6071 = !DILocation(line: 480, column: 3, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6068, file: !160, line: 480, column: 3)
!6073 = !{i64 2152988144, i64 2152988173, i64 2152988219, i64 2152988277, i64 2152988331, i64 2152988385, i64 2152988440, i64 2152988471}
!6074 = !DILocation(line: 483, column: 2, scope: !5929)
!6075 = !DILocation(line: 484, column: 1, scope: !5929)
!6076 = !DISubprogram(name: "kmalloc_trace", scope: !160, file: !160, line: 525, type: !6077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{!170, !6079, !171, !549}
!6079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6080, size: 64)
!6080 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6081, line: 11, flags: DIFlagFwdDecl)
!6081 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6082 = distinct !DISubprogram(name: "kmalloc_type", scope: !160, file: !160, line: 401, type: !6083, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6085)
!6083 = !DISubroutineType(types: !6084)
!6084 = !{!159, !171, !176}
!6085 = !{!6086, !6087}
!6086 = !DILocalVariable(name: "flags", arg: 1, scope: !6082, file: !160, line: 401, type: !171)
!6087 = !DILocalVariable(name: "caller", arg: 2, scope: !6082, file: !160, line: 401, type: !176)
!6088 = !DILocation(line: 401, column: 67, scope: !6082)
!6089 = !DILocation(line: 401, column: 88, scope: !6082)
!6090 = !DILocation(line: 407, column: 6, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6082, file: !160, line: 407, column: 6)
!6092 = !DILocation(line: 407, column: 6, scope: !6082)
!6093 = !DILocation(line: 413, column: 3, scope: !6091)
!6094 = !DILocation(line: 423, column: 38, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !6082, file: !160, line: 423, column: 6)
!6096 = !DILocation(line: 423, column: 44, scope: !6095)
!6097 = !DILocation(line: 423, column: 6, scope: !6082)
!6098 = !DILocation(line: 424, column: 3, scope: !6095)
!6099 = !DILocation(line: 426, column: 3, scope: !6100)
!6100 = distinct !DILexicalBlock(scope: !6082, file: !160, line: 425, column: 6)
!6101 = !DILocation(line: 429, column: 1, scope: !6082)
!6102 = !DISubprogram(name: "__kmalloc", scope: !160, file: !160, line: 488, type: !5318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6103 = !DISubprogram(name: "__compiletime_assert_204", scope: !160, file: !160, line: 478, type: !2038, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6104 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5784, file: !5784, line: 80, type: !5785, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6105)
!6105 = !{!6106, !6107}
!6106 = !DILocalVariable(name: "v", arg: 1, scope: !6104, file: !5784, line: 80, type: !5787)
!6107 = !DILocalVariable(name: "size", arg: 2, scope: !6104, file: !5784, line: 80, type: !549)
!6108 = !DILocation(line: 80, column: 74, scope: !6104)
!6109 = !DILocation(line: 80, column: 84, scope: !6104)
!6110 = !DILocation(line: 82, column: 20, scope: !6104)
!6111 = !DILocation(line: 82, column: 23, scope: !6104)
!6112 = !DILocation(line: 82, column: 2, scope: !6104)
!6113 = !DILocation(line: 83, column: 2, scope: !6104)
!6114 = !DILocation(line: 84, column: 1, scope: !6104)
!6115 = distinct !DISubprogram(name: "raw_atomic_set", scope: !5801, file: !5801, line: 488, type: !5331, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6116)
!6116 = !{!6117, !6118}
!6117 = !DILocalVariable(name: "v", arg: 1, scope: !6115, file: !5801, line: 488, type: !5258)
!6118 = !DILocalVariable(name: "i", arg: 2, scope: !6115, file: !5801, line: 488, type: !117)
!6119 = !DILocation(line: 488, column: 26, scope: !6115)
!6120 = !DILocation(line: 488, column: 33, scope: !6115)
!6121 = !DILocation(line: 490, column: 18, scope: !6115)
!6122 = !DILocation(line: 490, column: 21, scope: !6115)
!6123 = !DILocation(line: 490, column: 2, scope: !6115)
!6124 = !DILocation(line: 491, column: 1, scope: !6115)
!6125 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5831, file: !5831, line: 26, type: !5331, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6126)
!6126 = !{!6127, !6128}
!6127 = !DILocalVariable(name: "v", arg: 1, scope: !6125, file: !5831, line: 26, type: !5258)
!6128 = !DILocalVariable(name: "i", arg: 2, scope: !6125, file: !5831, line: 26, type: !117)
!6129 = !DILocation(line: 26, column: 55, scope: !6125)
!6130 = !DILocation(line: 26, column: 62, scope: !6125)
!6131 = !DILocation(line: 28, column: 2, scope: !6125)
!6132 = !DILocation(line: 28, column: 2, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6125, file: !5831, line: 28, column: 2)
!6134 = !DILocation(line: 29, column: 1, scope: !6125)
!6135 = distinct !DISubprogram(name: "agp_find_max", scope: !3, file: !3, line: 115, type: !1805, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6136 = !{!6137, !6138, !6139}
!6137 = !DILocalVariable(name: "memory", scope: !6135, file: !3, line: 117, type: !539)
!6138 = !DILocalVariable(name: "index", scope: !6135, file: !3, line: 117, type: !539)
!6139 = !DILocalVariable(name: "result", scope: !6135, file: !3, line: 117, type: !539)
!6140 = !DILocation(line: 117, column: 2, scope: !6135)
!6141 = !DILocation(line: 117, column: 7, scope: !6135)
!6142 = !DILocation(line: 117, column: 15, scope: !6135)
!6143 = !DILocation(line: 117, column: 22, scope: !6135)
!6144 = !DILocation(line: 120, column: 11, scope: !6135)
!6145 = !DILocation(line: 120, column: 28, scope: !6135)
!6146 = !DILocation(line: 120, column: 9, scope: !6135)
!6147 = !DILocation(line: 124, column: 8, scope: !6135)
!6148 = !DILocation(line: 126, column: 2, scope: !6135)
!6149 = !DILocation(line: 126, column: 10, scope: !6135)
!6150 = !DILocation(line: 126, column: 31, scope: !6135)
!6151 = !DILocation(line: 126, column: 19, scope: !6135)
!6152 = !DILocation(line: 126, column: 38, scope: !6135)
!6153 = !DILocation(line: 126, column: 17, scope: !6135)
!6154 = !DILocation(line: 126, column: 43, scope: !6135)
!6155 = !DILocation(line: 126, column: 47, scope: !6135)
!6156 = !DILocation(line: 126, column: 53, scope: !6135)
!6157 = !DILocation(line: 0, scope: !6135)
!6158 = !DILocation(line: 127, column: 8, scope: !6135)
!6159 = distinct !{!6159, !6148, !6158, !6160, !6161}
!6160 = !{!"llvm.loop.mustprogress"}
!6161 = !{!"llvm.loop.unroll.disable"}
!6162 = !DILocation(line: 129, column: 23, scope: !6135)
!6163 = !DILocation(line: 129, column: 29, scope: !6135)
!6164 = !DILocation(line: 129, column: 11, scope: !6135)
!6165 = !DILocation(line: 129, column: 34, scope: !6135)
!6166 = !DILocation(line: 130, column: 8, scope: !6135)
!6167 = !DILocation(line: 130, column: 29, scope: !6135)
!6168 = !DILocation(line: 130, column: 35, scope: !6135)
!6169 = !DILocation(line: 130, column: 17, scope: !6135)
!6170 = !DILocation(line: 130, column: 40, scope: !6135)
!6171 = !DILocation(line: 130, column: 15, scope: !6135)
!6172 = !DILocation(line: 131, column: 20, scope: !6135)
!6173 = !DILocation(line: 131, column: 8, scope: !6135)
!6174 = !DILocation(line: 131, column: 27, scope: !6135)
!6175 = !DILocation(line: 131, column: 45, scope: !6135)
!6176 = !DILocation(line: 131, column: 51, scope: !6135)
!6177 = !DILocation(line: 131, column: 33, scope: !6135)
!6178 = !DILocation(line: 131, column: 56, scope: !6135)
!6179 = !DILocation(line: 131, column: 31, scope: !6135)
!6180 = !DILocation(line: 131, column: 7, scope: !6135)
!6181 = !DILocation(line: 130, column: 46, scope: !6135)
!6182 = !DILocation(line: 132, column: 18, scope: !6135)
!6183 = !DILocation(line: 132, column: 6, scope: !6135)
!6184 = !DILocation(line: 132, column: 25, scope: !6135)
!6185 = !DILocation(line: 132, column: 43, scope: !6135)
!6186 = !DILocation(line: 132, column: 49, scope: !6135)
!6187 = !DILocation(line: 132, column: 31, scope: !6135)
!6188 = !DILocation(line: 132, column: 54, scope: !6135)
!6189 = !DILocation(line: 132, column: 29, scope: !6135)
!6190 = !DILocation(line: 132, column: 5, scope: !6135)
!6191 = !DILocation(line: 131, column: 62, scope: !6135)
!6192 = !DILocation(line: 129, column: 38, scope: !6135)
!6193 = !DILocation(line: 129, column: 9, scope: !6135)
!6194 = !DILocation(line: 134, column: 11, scope: !6135)
!6195 = !DILocation(line: 134, column: 18, scope: !6135)
!6196 = !DILocation(line: 134, column: 9, scope: !6135)
!6197 = !DILocation(line: 135, column: 9, scope: !6135)
!6198 = !DILocation(line: 136, column: 1, scope: !6135)
!6199 = !DILocation(line: 135, column: 2, scope: !6135)
!6200 = !DISubprogram(name: "_dev_err", scope: !5473, file: !5473, line: 50, type: !5474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6201 = !DISubprogram(name: "vzalloc", scope: !1060, file: !1060, line: 141, type: !6202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6202 = !DISubroutineType(types: !6203)
!6203 = !{!170, !176}
!6204 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5345, file: !5345, line: 35, type: !5736, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6205)
!6205 = !{!6206}
!6206 = !DILocalVariable(name: "list", arg: 1, scope: !6204, file: !5345, line: 35, type: !181)
!6207 = !DILocation(line: 35, column: 53, scope: !6204)
!6208 = !DILocation(line: 37, column: 2, scope: !6204)
!6209 = !DILocation(line: 37, column: 2, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6204, file: !5345, line: 37, column: 2)
!6211 = !DILocation(line: 37, column: 2, scope: !6212)
!6212 = distinct !DILexicalBlock(scope: !6210, file: !5345, line: 37, column: 2)
!6213 = !DILocation(line: 37, column: 2, scope: !6214)
!6214 = distinct !DILexicalBlock(scope: !6210, file: !5345, line: 37, column: 2)
!6215 = !DILocation(line: 38, column: 2, scope: !6204)
!6216 = !DILocation(line: 38, column: 2, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6204, file: !5345, line: 38, column: 2)
!6218 = !DILocation(line: 38, column: 2, scope: !6219)
!6219 = distinct !DILexicalBlock(scope: !6217, file: !5345, line: 38, column: 2)
!6220 = !DILocation(line: 38, column: 2, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6217, file: !5345, line: 38, column: 2)
!6222 = !DILocation(line: 39, column: 1, scope: !6204)
!6223 = distinct !DISubprogram(name: "spinlock_check", scope: !6224, file: !6224, line: 324, type: !6225, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6228)
!6224 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6225 = !DISubroutineType(types: !6226)
!6226 = !{!6227, !1377}
!6227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!6228 = !{!6229}
!6229 = !DILocalVariable(name: "lock", arg: 1, scope: !6223, file: !6224, line: 324, type: !1377)
!6230 = !DILocation(line: 324, column: 67, scope: !6223)
!6231 = !DILocation(line: 326, column: 10, scope: !6223)
!6232 = !DILocation(line: 326, column: 16, scope: !6223)
!6233 = !DILocation(line: 326, column: 2, scope: !6223)
!6234 = !DISubprogram(name: "vfree", scope: !1060, file: !1060, line: 161, type: !5373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6235 = distinct !DISubprogram(name: "totalram_pages", scope: !1312, file: !1312, line: 57, type: !6236, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6236 = !DISubroutineType(types: !6237)
!6237 = !{!176}
!6238 = !DILocation(line: 59, column: 24, scope: !6235)
!6239 = !DILocation(line: 59, column: 2, scope: !6235)
!6240 = distinct !DISubprogram(name: "atomic_long_read", scope: !5242, file: !5242, line: 3158, type: !6241, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6245)
!6241 = !DISubroutineType(types: !6242)
!6242 = !{!539, !6243}
!6243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6244, size: 64)
!6244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!6245 = !{!6246}
!6246 = !DILocalVariable(name: "v", arg: 1, scope: !6240, file: !5242, line: 3158, type: !6243)
!6247 = !DILocation(line: 3158, column: 39, scope: !6240)
!6248 = !DILocation(line: 3160, column: 25, scope: !6240)
!6249 = !DILocation(line: 3160, column: 2, scope: !6240)
!6250 = !DILocation(line: 3161, column: 30, scope: !6240)
!6251 = !DILocation(line: 3161, column: 9, scope: !6240)
!6252 = !DILocation(line: 3161, column: 2, scope: !6240)
!6253 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !608, file: !608, line: 35, type: !6241, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6254)
!6254 = !{!6255}
!6255 = !DILocalVariable(name: "v", arg: 1, scope: !6253, file: !608, line: 35, type: !6243)
!6256 = !DILocation(line: 35, column: 43, scope: !6253)
!6257 = !DILocation(line: 38, column: 27, scope: !6253)
!6258 = !DILocation(line: 38, column: 9, scope: !6253)
!6259 = !DILocation(line: 38, column: 2, scope: !6253)
!6260 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !5801, file: !5801, line: 2554, type: !6261, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6265)
!6261 = !DISubroutineType(types: !6262)
!6262 = !{!613, !6263}
!6263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6264, size: 64)
!6264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !609)
!6265 = !{!6266}
!6266 = !DILocalVariable(name: "v", arg: 1, scope: !6260, file: !5801, line: 2554, type: !6263)
!6267 = !DILocation(line: 2554, column: 37, scope: !6260)
!6268 = !DILocation(line: 2556, column: 28, scope: !6260)
!6269 = !DILocation(line: 2556, column: 9, scope: !6260)
!6270 = !DILocation(line: 2556, column: 2, scope: !6260)
!6271 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !6272, file: !6272, line: 13, type: !6261, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6273)
!6272 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!6273 = !{!6274}
!6274 = !DILocalVariable(name: "v", arg: 1, scope: !6271, file: !6272, line: 13, type: !6263)
!6275 = !DILocation(line: 13, column: 65, scope: !6271)
!6276 = !DILocation(line: 15, column: 9, scope: !6271)
!6277 = !DILocation(line: 15, column: 2, scope: !6271)
!6278 = distinct !DISubprogram(name: "__list_add", scope: !5345, file: !5345, line: 146, type: !6279, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6281)
!6279 = !DISubroutineType(types: !6280)
!6280 = !{null, !181, !181, !181}
!6281 = !{!6282, !6283, !6284}
!6282 = !DILocalVariable(name: "new", arg: 1, scope: !6278, file: !5345, line: 146, type: !181)
!6283 = !DILocalVariable(name: "prev", arg: 2, scope: !6278, file: !5345, line: 147, type: !181)
!6284 = !DILocalVariable(name: "next", arg: 3, scope: !6278, file: !5345, line: 148, type: !181)
!6285 = !DILocation(line: 146, column: 49, scope: !6278)
!6286 = !DILocation(line: 147, column: 28, scope: !6278)
!6287 = !DILocation(line: 148, column: 28, scope: !6278)
!6288 = !DILocation(line: 150, column: 24, scope: !6289)
!6289 = distinct !DILexicalBlock(scope: !6278, file: !5345, line: 150, column: 6)
!6290 = !DILocation(line: 150, column: 29, scope: !6289)
!6291 = !DILocation(line: 150, column: 35, scope: !6289)
!6292 = !DILocation(line: 150, column: 7, scope: !6289)
!6293 = !DILocation(line: 150, column: 6, scope: !6278)
!6294 = !DILocation(line: 151, column: 3, scope: !6289)
!6295 = !DILocation(line: 153, column: 15, scope: !6278)
!6296 = !DILocation(line: 153, column: 2, scope: !6278)
!6297 = !DILocation(line: 153, column: 8, scope: !6278)
!6298 = !DILocation(line: 153, column: 13, scope: !6278)
!6299 = !DILocation(line: 154, column: 14, scope: !6278)
!6300 = !DILocation(line: 154, column: 2, scope: !6278)
!6301 = !DILocation(line: 154, column: 7, scope: !6278)
!6302 = !DILocation(line: 154, column: 12, scope: !6278)
!6303 = !DILocation(line: 155, column: 14, scope: !6278)
!6304 = !DILocation(line: 155, column: 2, scope: !6278)
!6305 = !DILocation(line: 155, column: 7, scope: !6278)
!6306 = !DILocation(line: 155, column: 12, scope: !6278)
!6307 = !DILocation(line: 156, column: 2, scope: !6278)
!6308 = !DILocation(line: 156, column: 2, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6278, file: !5345, line: 156, column: 2)
!6310 = !DILocation(line: 156, column: 2, scope: !6311)
!6311 = distinct !DILexicalBlock(scope: !6309, file: !5345, line: 156, column: 2)
!6312 = !DILocation(line: 156, column: 2, scope: !6313)
!6313 = distinct !DILexicalBlock(scope: !6309, file: !5345, line: 156, column: 2)
!6314 = !DILocation(line: 157, column: 1, scope: !6278)
!6315 = distinct !DISubprogram(name: "__list_add_valid", scope: !5345, file: !5345, line: 128, type: !6316, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6318)
!6316 = !DISubroutineType(types: !6317)
!6317 = !{!812, !181, !181, !181}
!6318 = !{!6319, !6320, !6321}
!6319 = !DILocalVariable(name: "new", arg: 1, scope: !6315, file: !5345, line: 128, type: !181)
!6320 = !DILocalVariable(name: "prev", arg: 2, scope: !6315, file: !5345, line: 129, type: !181)
!6321 = !DILocalVariable(name: "next", arg: 3, scope: !6315, file: !5345, line: 130, type: !181)
!6322 = !DILocation(line: 128, column: 55, scope: !6315)
!6323 = !DILocation(line: 129, column: 23, scope: !6315)
!6324 = !DILocation(line: 130, column: 23, scope: !6315)
!6325 = !DILocation(line: 132, column: 2, scope: !6315)
!6326 = distinct !DISubprogram(name: "__list_del_entry", scope: !5345, file: !5345, line: 213, type: !5736, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6327)
!6327 = !{!6328}
!6328 = !DILocalVariable(name: "entry", arg: 1, scope: !6326, file: !5345, line: 213, type: !181)
!6329 = !DILocation(line: 213, column: 55, scope: !6326)
!6330 = !DILocation(line: 215, column: 30, scope: !6331)
!6331 = distinct !DILexicalBlock(scope: !6326, file: !5345, line: 215, column: 6)
!6332 = !DILocation(line: 215, column: 7, scope: !6331)
!6333 = !DILocation(line: 215, column: 6, scope: !6326)
!6334 = !DILocation(line: 216, column: 3, scope: !6331)
!6335 = !DILocation(line: 218, column: 13, scope: !6326)
!6336 = !DILocation(line: 218, column: 20, scope: !6326)
!6337 = !DILocation(line: 218, column: 26, scope: !6326)
!6338 = !DILocation(line: 218, column: 33, scope: !6326)
!6339 = !DILocation(line: 218, column: 2, scope: !6326)
!6340 = !DILocation(line: 219, column: 1, scope: !6326)
!6341 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5345, file: !5345, line: 134, type: !6342, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6344)
!6342 = !DISubroutineType(types: !6343)
!6343 = !{!812, !181}
!6344 = !{!6345}
!6345 = !DILocalVariable(name: "entry", arg: 1, scope: !6341, file: !5345, line: 134, type: !181)
!6346 = !DILocation(line: 134, column: 61, scope: !6341)
!6347 = !DILocation(line: 136, column: 2, scope: !6341)
!6348 = distinct !DISubprogram(name: "__list_del", scope: !5345, file: !5345, line: 193, type: !5650, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6349)
!6349 = !{!6350, !6351}
!6350 = !DILocalVariable(name: "prev", arg: 1, scope: !6348, file: !5345, line: 193, type: !181)
!6351 = !DILocalVariable(name: "next", arg: 2, scope: !6348, file: !5345, line: 193, type: !181)
!6352 = !DILocation(line: 193, column: 50, scope: !6348)
!6353 = !DILocation(line: 193, column: 75, scope: !6348)
!6354 = !DILocation(line: 195, column: 15, scope: !6348)
!6355 = !DILocation(line: 195, column: 2, scope: !6348)
!6356 = !DILocation(line: 195, column: 8, scope: !6348)
!6357 = !DILocation(line: 195, column: 13, scope: !6348)
!6358 = !DILocation(line: 196, column: 2, scope: !6348)
!6359 = !DILocation(line: 196, column: 2, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6348, file: !5345, line: 196, column: 2)
!6361 = !DILocation(line: 196, column: 2, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6360, file: !5345, line: 196, column: 2)
!6363 = !DILocation(line: 196, column: 2, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6360, file: !5345, line: 196, column: 2)
!6365 = !DILocation(line: 197, column: 1, scope: !6348)
!6366 = !DISubprogram(name: "strcmp", scope: !6367, file: !6367, line: 88, type: !6368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6367 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6368 = !DISubroutineType(types: !6369)
!6369 = !{!117, !375, !375}
