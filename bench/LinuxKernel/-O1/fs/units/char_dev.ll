; ModuleID = 'fs/char_dev.c'
source_filename = "fs/char_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_register_chrdev_region: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad register_chrdev_region ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unregister_chrdev_region: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad unregister_chrdev_region ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_alloc_chrdev_region: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad alloc_chrdev_region ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cdev_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cdev_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cdev_alloc: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cdev_alloc ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cdev_del: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cdev_del ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cdev_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cdev_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cdev_set_parent: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cdev_set_parent ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cdev_device_add: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cdev_device_add ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_cdev_device_del: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad cdev_device_del ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___register_chrdev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __register_chrdev ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___unregister_chrdev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __unregister_chrdev ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.char_device_struct = type { ptr, i32, i32, i32, [64 x i8], ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.16, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.17, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.18, ptr, %struct.address_space, %struct.list_head, %union.anon.19, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.17 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%union.anon.18 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.19 = type { ptr }
%struct.file = type { %union.anon.20, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.21, %struct.qspinlock }
%union.anon.21 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@chrdevs_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @chrdevs_lock, i64 16), ptr getelementptr (i8, ptr @chrdevs_lock, i64 16) } }, align 8, !dbg !0
@chrdevs = internal global [255 x ptr] zeroinitializer, align 16, !dbg !5154
@.str = private unnamed_addr constant [8 x i8] c"%3d %s\0A\00", align 1, !dbg !5113
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !5115
@cdev_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !5183
@def_chr_fops = hidden constant %struct.file_operations { ptr null, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr @chrdev_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5118
@.str.2 = private unnamed_addr constant [14 x i8] c"fs/char_dev.c\00", align 1, !dbg !5120
@cdev_map = internal global ptr null, align 8, !dbg !5149
@ktype_cdev_dynamic = internal global %struct.kobj_type { ptr @cdev_dynamic_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5190
@ktype_cdev_default = internal global %struct.kobj_type { ptr @cdev_default_release, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5192
@__UNIQUE_ID___addressable_register_chrdev_region318 = internal global ptr @register_chrdev_region, section ".discard.addressable", align 8, !dbg !5125
@__UNIQUE_ID___addressable_unregister_chrdev_region319 = internal global ptr @unregister_chrdev_region, section ".discard.addressable", align 8, !dbg !5127
@__UNIQUE_ID___addressable_alloc_chrdev_region320 = internal global ptr @alloc_chrdev_region, section ".discard.addressable", align 8, !dbg !5129
@__UNIQUE_ID___addressable_cdev_init321 = internal global ptr @cdev_init, section ".discard.addressable", align 8, !dbg !5131
@__UNIQUE_ID___addressable_cdev_alloc322 = internal global ptr @cdev_alloc, section ".discard.addressable", align 8, !dbg !5133
@__UNIQUE_ID___addressable_cdev_del323 = internal global ptr @cdev_del, section ".discard.addressable", align 8, !dbg !5135
@__UNIQUE_ID___addressable_cdev_add324 = internal global ptr @cdev_add, section ".discard.addressable", align 8, !dbg !5137
@__UNIQUE_ID___addressable_cdev_set_parent325 = internal global ptr @cdev_set_parent, section ".discard.addressable", align 8, !dbg !5139
@__UNIQUE_ID___addressable_cdev_device_add326 = internal global ptr @cdev_device_add, section ".discard.addressable", align 8, !dbg !5141
@__UNIQUE_ID___addressable_cdev_device_del327 = internal global ptr @cdev_device_del, section ".discard.addressable", align 8, !dbg !5143
@__UNIQUE_ID___addressable___register_chrdev328 = internal global ptr @__register_chrdev, section ".discard.addressable", align 8, !dbg !5145
@__UNIQUE_ID___addressable___unregister_chrdev329 = internal global ptr @__unregister_chrdev, section ".discard.addressable", align 8, !dbg !5147
@.str.3 = private unnamed_addr constant [69 x i8] c"\013CHRDEV \22%s\22 major requested (%u) is greater than the maximum (%u)\0A\00", align 1, !dbg !5168
@.str.4 = private unnamed_addr constant [105 x i8] c"\013CHRDEV \22%s\22 minor range requested (%u-%u) is out of range of maximum range (%u-%u) for a single major\0A\00", align 1, !dbg !5173
@.str.5 = private unnamed_addr constant [49 x i8] c"\013CHRDEV \22%s\22 dynamic allocation region is full\0A\00", align 1, !dbg !5178
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5185
@.str.7 = private unnamed_addr constant [17 x i8] c"char-major-%d-%d\00", align 1, !dbg !5194
@.str.8 = private unnamed_addr constant [14 x i8] c"char-major-%d\00", align 1, !dbg !5199
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID___addressable_register_chrdev_region318, ptr @__UNIQUE_ID___addressable_unregister_chrdev_region319, ptr @__UNIQUE_ID___addressable_alloc_chrdev_region320, ptr @__UNIQUE_ID___addressable_cdev_init321, ptr @__UNIQUE_ID___addressable_cdev_alloc322, ptr @__UNIQUE_ID___addressable_cdev_del323, ptr @__UNIQUE_ID___addressable_cdev_add324, ptr @__UNIQUE_ID___addressable_cdev_set_parent325, ptr @__UNIQUE_ID___addressable_cdev_device_add326, ptr @__UNIQUE_ID___addressable_cdev_device_del327, ptr @__UNIQUE_ID___addressable___register_chrdev328, ptr @__UNIQUE_ID___addressable___unregister_chrdev329], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @chrdev_show(ptr noundef %f, i64 noundef %offset) #0 align 16 !dbg !5210 {
entry:
  %f.addr = alloca ptr, align 8
  %offset.addr = alloca i64, align 8
  %cd = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5216, metadata !DIExpression()), !dbg !5219
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5217, metadata !DIExpression()), !dbg !5220
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #16, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !5218, metadata !DIExpression()), !dbg !5222
  call void @mutex_lock(ptr noundef @chrdevs_lock) #17, !dbg !5223
  %0 = load i64, ptr %offset.addr, align 8, !dbg !5224
  %conv = trunc i64 %0 to i32, !dbg !5224
  %call = call i32 @major_to_index(i32 noundef %conv) #17, !dbg !5226
  %idxprom = sext i32 %call to i64, !dbg !5227
  %arrayidx = getelementptr [255 x ptr], ptr @chrdevs, i64 0, i64 %idxprom, !dbg !5227
  %1 = load ptr, ptr %arrayidx, align 8, !dbg !5227
  store ptr %1, ptr %cd, align 8, !dbg !5228
  br label %for.cond, !dbg !5229

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %cd, align 8, !dbg !5230
  %tobool = icmp ne ptr %2, null, !dbg !5232
  br i1 %tobool, label %for.body, label %for.end, !dbg !5232

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %cd, align 8, !dbg !5233
  %major = getelementptr inbounds %struct.char_device_struct, ptr %3, i32 0, i32 1, !dbg !5236
  %4 = load i32, ptr %major, align 8, !dbg !5236
  %conv1 = zext i32 %4 to i64, !dbg !5233
  %5 = load i64, ptr %offset.addr, align 8, !dbg !5237
  %cmp = icmp eq i64 %conv1, %5, !dbg !5238
  br i1 %cmp, label %if.then, label %if.end, !dbg !5239

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %f.addr, align 8, !dbg !5240
  %7 = load ptr, ptr %cd, align 8, !dbg !5241
  %major3 = getelementptr inbounds %struct.char_device_struct, ptr %7, i32 0, i32 1, !dbg !5242
  %8 = load i32, ptr %major3, align 8, !dbg !5242
  %9 = load ptr, ptr %cd, align 8, !dbg !5243
  %name = getelementptr inbounds %struct.char_device_struct, ptr %9, i32 0, i32 4, !dbg !5244
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name, i64 0, i64 0, !dbg !5243
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %6, ptr noundef @.str, i32 noundef %8, ptr noundef %arraydecay) #17, !dbg !5245
  br label %if.end, !dbg !5245

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5246

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %cd, align 8, !dbg !5247
  %next = getelementptr inbounds %struct.char_device_struct, ptr %10, i32 0, i32 0, !dbg !5248
  %11 = load ptr, ptr %next, align 8, !dbg !5248
  store ptr %11, ptr %cd, align 8, !dbg !5249
  br label %for.cond, !dbg !5250, !llvm.loop !5251

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @chrdevs_lock) #17, !dbg !5255
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #16, !dbg !5256
  ret void, !dbg !5256
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5257 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @major_to_index(i32 noundef %major) #4 align 16 !dbg !5261 {
entry:
  %major.addr = alloca i32, align 4
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = load i32, ptr %major.addr, align 4, !dbg !5267
  %rem = urem i32 %0, 255, !dbg !5268
  ret i32 %rem, !dbg !5269
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5270 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5273 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_chrdev_region(i32 noundef %from, i32 noundef %count, ptr noundef %name) #0 align 16 !dbg !5274 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %to = alloca i32, align 4
  %n = alloca i32, align 4
  %next = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5278, metadata !DIExpression()), !dbg !5286
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5279, metadata !DIExpression()), !dbg !5287
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5280, metadata !DIExpression()), !dbg !5288
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #16, !dbg !5289
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !5281, metadata !DIExpression()), !dbg !5290
  call void @llvm.lifetime.start.p0(i64 4, ptr %to) #16, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %to, metadata !5282, metadata !DIExpression()), !dbg !5292
  %0 = load i32, ptr %from.addr, align 4, !dbg !5293
  %1 = load i32, ptr %count.addr, align 4, !dbg !5294
  %add = add i32 %0, %1, !dbg !5295
  store i32 %add, ptr %to, align 4, !dbg !5292
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5283, metadata !DIExpression()), !dbg !5297
  call void @llvm.lifetime.start.p0(i64 4, ptr %next) #16, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5284, metadata !DIExpression()), !dbg !5298
  %2 = load i32, ptr %from.addr, align 4, !dbg !5299
  store i32 %2, ptr %n, align 4, !dbg !5301
  br label %for.cond, !dbg !5302

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %n, align 4, !dbg !5303
  %4 = load i32, ptr %to, align 4, !dbg !5305
  %cmp = icmp ult i32 %3, %4, !dbg !5306
  br i1 %cmp, label %for.body, label %for.end, !dbg !5307

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %n, align 4, !dbg !5308
  %shr = lshr i32 %5, 20, !dbg !5308
  %add1 = add i32 %shr, 1, !dbg !5308
  %shl = shl i32 %add1, 20, !dbg !5308
  %or = or i32 %shl, 0, !dbg !5308
  store i32 %or, ptr %next, align 4, !dbg !5310
  %6 = load i32, ptr %next, align 4, !dbg !5311
  %7 = load i32, ptr %to, align 4, !dbg !5313
  %cmp2 = icmp ugt i32 %6, %7, !dbg !5314
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5315

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %to, align 4, !dbg !5316
  store i32 %8, ptr %next, align 4, !dbg !5317
  br label %if.end, !dbg !5318

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, ptr %n, align 4, !dbg !5319
  %shr3 = lshr i32 %9, 20, !dbg !5319
  %10 = load i32, ptr %n, align 4, !dbg !5320
  %and = and i32 %10, 1048575, !dbg !5320
  %11 = load i32, ptr %next, align 4, !dbg !5321
  %12 = load i32, ptr %n, align 4, !dbg !5322
  %sub = sub i32 %11, %12, !dbg !5323
  %13 = load ptr, ptr %name.addr, align 8, !dbg !5324
  %call = call ptr @__register_chrdev_region(i32 noundef %shr3, i32 noundef %and, i32 noundef %sub, ptr noundef %13) #17, !dbg !5325
  store ptr %call, ptr %cd, align 8, !dbg !5326
  %14 = load ptr, ptr %cd, align 8, !dbg !5327
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %14) #17, !dbg !5329
  br i1 %call4, label %if.then5, label %if.end6, !dbg !5330

if.then5:                                         ; preds = %if.end
  br label %fail, !dbg !5331

if.end6:                                          ; preds = %if.end
  br label %for.inc, !dbg !5332

for.inc:                                          ; preds = %if.end6
  %15 = load i32, ptr %next, align 4, !dbg !5333
  store i32 %15, ptr %n, align 4, !dbg !5334
  br label %for.cond, !dbg !5335, !llvm.loop !5336

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !5338
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5338

fail:                                             ; preds = %if.then5
  call void @llvm.dbg.label(metadata !5285), !dbg !5339
  %16 = load i32, ptr %n, align 4, !dbg !5340
  store i32 %16, ptr %to, align 4, !dbg !5341
  %17 = load i32, ptr %from.addr, align 4, !dbg !5342
  store i32 %17, ptr %n, align 4, !dbg !5344
  br label %for.cond7, !dbg !5345

for.cond7:                                        ; preds = %for.inc18, %fail
  %18 = load i32, ptr %n, align 4, !dbg !5346
  %19 = load i32, ptr %to, align 4, !dbg !5348
  %cmp8 = icmp ult i32 %18, %19, !dbg !5349
  br i1 %cmp8, label %for.body9, label %for.end19, !dbg !5350

for.body9:                                        ; preds = %for.cond7
  %20 = load i32, ptr %n, align 4, !dbg !5351
  %shr10 = lshr i32 %20, 20, !dbg !5351
  %add11 = add i32 %shr10, 1, !dbg !5351
  %shl12 = shl i32 %add11, 20, !dbg !5351
  %or13 = or i32 %shl12, 0, !dbg !5351
  store i32 %or13, ptr %next, align 4, !dbg !5353
  %21 = load i32, ptr %n, align 4, !dbg !5354
  %shr14 = lshr i32 %21, 20, !dbg !5354
  %22 = load i32, ptr %n, align 4, !dbg !5355
  %and15 = and i32 %22, 1048575, !dbg !5355
  %23 = load i32, ptr %next, align 4, !dbg !5356
  %24 = load i32, ptr %n, align 4, !dbg !5357
  %sub16 = sub i32 %23, %24, !dbg !5358
  %call17 = call ptr @__unregister_chrdev_region(i32 noundef %shr14, i32 noundef %and15, i32 noundef %sub16) #17, !dbg !5359
  call void @kfree(ptr noundef %call17) #17, !dbg !5360
  br label %for.inc18, !dbg !5361

for.inc18:                                        ; preds = %for.body9
  %25 = load i32, ptr %next, align 4, !dbg !5362
  store i32 %25, ptr %n, align 4, !dbg !5363
  br label %for.cond7, !dbg !5364, !llvm.loop !5365

for.end19:                                        ; preds = %for.cond7
  %26 = load ptr, ptr %cd, align 8, !dbg !5367
  %call20 = call i64 @PTR_ERR(ptr noundef %26) #17, !dbg !5368
  %conv = trunc i64 %call20 to i32, !dbg !5368
  store i32 %conv, ptr %retval, align 4, !dbg !5369
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5369

cleanup:                                          ; preds = %for.end19, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %next) #16, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 4, ptr %to) #16, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #16, !dbg !5370
  %27 = load i32, ptr %retval, align 4, !dbg !5370
  ret i32 %27, !dbg !5370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__register_chrdev_region(i32 noundef %major, i32 noundef %baseminor, i32 noundef %minorct, ptr noundef %name) #0 align 16 !dbg !5371 {
entry:
  %retval = alloca ptr, align 8
  %major.addr = alloca i32, align 4
  %baseminor.addr = alloca i32, align 4
  %minorct.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %curr = alloca ptr, align 8
  %prev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5375, metadata !DIExpression()), !dbg !5385
  store i32 %baseminor, ptr %baseminor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baseminor.addr, metadata !5376, metadata !DIExpression()), !dbg !5386
  store i32 %minorct, ptr %minorct.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minorct.addr, metadata !5377, metadata !DIExpression()), !dbg !5387
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5378, metadata !DIExpression()), !dbg !5388
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #16, !dbg !5389
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !5379, metadata !DIExpression()), !dbg !5390
  call void @llvm.lifetime.start.p0(i64 8, ptr %curr) #16, !dbg !5389
  call void @llvm.dbg.declare(metadata ptr %curr, metadata !5380, metadata !DIExpression()), !dbg !5391
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev) #16, !dbg !5389
  call void @llvm.dbg.declare(metadata ptr %prev, metadata !5381, metadata !DIExpression()), !dbg !5392
  store ptr null, ptr %prev, align 8, !dbg !5392
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5393
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5382, metadata !DIExpression()), !dbg !5394
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5395
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5383, metadata !DIExpression()), !dbg !5396
  %0 = load i32, ptr %major.addr, align 4, !dbg !5397
  %cmp = icmp uge i32 %0, 512, !dbg !5399
  br i1 %cmp, label %if.then, label %if.end, !dbg !5400

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5401

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5404

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5404

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5401
  %2 = load i32, ptr %major.addr, align 4, !dbg !5401
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %1, i32 noundef %2, i32 noundef 511) #18, !dbg !5401
  store i32 %call, ptr %tmp, align 4, !dbg !5404
  %3 = load i32, ptr %tmp, align 4, !dbg !5401
  %call1 = call ptr @ERR_PTR(i64 noundef -22) #17, !dbg !5406
  store ptr %call1, ptr %retval, align 8, !dbg !5407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5407

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %minorct.addr, align 4, !dbg !5408
  %5 = load i32, ptr %baseminor.addr, align 4, !dbg !5410
  %sub = sub i32 1048576, %5, !dbg !5411
  %cmp2 = icmp ugt i32 %4, %sub, !dbg !5412
  br i1 %cmp2, label %if.then3, label %if.end11, !dbg !5413

if.then3:                                         ; preds = %if.end
  br label %do.body4, !dbg !5414

do.body4:                                         ; preds = %if.then3
  br label %do.cond5, !dbg !5417

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5417

do.end6:                                          ; preds = %do.cond5
  %6 = load ptr, ptr %name.addr, align 8, !dbg !5414
  %7 = load i32, ptr %baseminor.addr, align 4, !dbg !5414
  %8 = load i32, ptr %baseminor.addr, align 4, !dbg !5414
  %9 = load i32, ptr %minorct.addr, align 4, !dbg !5414
  %add = add i32 %8, %9, !dbg !5414
  %sub8 = sub i32 %add, 1, !dbg !5414
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %6, i32 noundef %7, i32 noundef %sub8, i32 noundef 0, i32 noundef 1048575) #18, !dbg !5414
  store i32 %call9, ptr %tmp7, align 4, !dbg !5417
  %10 = load i32, ptr %tmp7, align 4, !dbg !5414
  %call10 = call ptr @ERR_PTR(i64 noundef -22) #17, !dbg !5419
  store ptr %call10, ptr %retval, align 8, !dbg !5420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5420

if.end11:                                         ; preds = %if.end
  %call12 = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 3264) #19, !dbg !5421
  store ptr %call12, ptr %cd, align 8, !dbg !5422
  %11 = load ptr, ptr %cd, align 8, !dbg !5423
  %cmp13 = icmp eq ptr %11, null, !dbg !5425
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !5426

if.then14:                                        ; preds = %if.end11
  %call15 = call ptr @ERR_PTR(i64 noundef -12) #17, !dbg !5427
  store ptr %call15, ptr %retval, align 8, !dbg !5428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5428

if.end16:                                         ; preds = %if.end11
  call void @mutex_lock(ptr noundef @chrdevs_lock) #17, !dbg !5429
  %12 = load i32, ptr %major.addr, align 4, !dbg !5430
  %cmp17 = icmp eq i32 %12, 0, !dbg !5432
  br i1 %cmp17, label %if.then18, label %if.end28, !dbg !5433

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 @find_dynamic_major() #17, !dbg !5434
  store i32 %call19, ptr %ret, align 4, !dbg !5436
  %13 = load i32, ptr %ret, align 4, !dbg !5437
  %cmp20 = icmp slt i32 %13, 0, !dbg !5439
  br i1 %cmp20, label %if.then21, label %if.end27, !dbg !5440

if.then21:                                        ; preds = %if.then18
  br label %do.body22, !dbg !5441

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !5444

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5444

do.end24:                                         ; preds = %do.cond23
  %14 = load ptr, ptr %name.addr, align 8, !dbg !5441
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %14) #18, !dbg !5441
  store i32 %call26, ptr %tmp25, align 4, !dbg !5444
  %15 = load i32, ptr %tmp25, align 4, !dbg !5441
  br label %out, !dbg !5446

if.end27:                                         ; preds = %if.then18
  %16 = load i32, ptr %ret, align 4, !dbg !5447
  store i32 %16, ptr %major.addr, align 4, !dbg !5448
  br label %if.end28, !dbg !5449

if.end28:                                         ; preds = %if.end27, %if.end16
  store i32 -16, ptr %ret, align 4, !dbg !5450
  %17 = load i32, ptr %major.addr, align 4, !dbg !5451
  %call29 = call i32 @major_to_index(i32 noundef %17) #17, !dbg !5452
  store i32 %call29, ptr %i, align 4, !dbg !5453
  %18 = load i32, ptr %i, align 4, !dbg !5454
  %idxprom = sext i32 %18 to i64, !dbg !5456
  %arrayidx = getelementptr [255 x ptr], ptr @chrdevs, i64 0, i64 %idxprom, !dbg !5456
  %19 = load ptr, ptr %arrayidx, align 8, !dbg !5456
  store ptr %19, ptr %curr, align 8, !dbg !5457
  br label %for.cond, !dbg !5458

for.cond:                                         ; preds = %for.inc, %if.end28
  %20 = load ptr, ptr %curr, align 8, !dbg !5459
  %tobool = icmp ne ptr %20, null, !dbg !5461
  br i1 %tobool, label %for.body, label %for.end, !dbg !5461

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %curr, align 8, !dbg !5462
  %major30 = getelementptr inbounds %struct.char_device_struct, ptr %21, i32 0, i32 1, !dbg !5465
  %22 = load i32, ptr %major30, align 8, !dbg !5465
  %23 = load i32, ptr %major.addr, align 4, !dbg !5466
  %cmp31 = icmp ult i32 %22, %23, !dbg !5467
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !5468

if.then32:                                        ; preds = %for.body
  br label %for.inc, !dbg !5469

if.end33:                                         ; preds = %for.body
  %24 = load ptr, ptr %curr, align 8, !dbg !5470
  %major34 = getelementptr inbounds %struct.char_device_struct, ptr %24, i32 0, i32 1, !dbg !5472
  %25 = load i32, ptr %major34, align 8, !dbg !5472
  %26 = load i32, ptr %major.addr, align 4, !dbg !5473
  %cmp35 = icmp ugt i32 %25, %26, !dbg !5474
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !5475

if.then36:                                        ; preds = %if.end33
  br label %for.end, !dbg !5476

if.end37:                                         ; preds = %if.end33
  %27 = load ptr, ptr %curr, align 8, !dbg !5477
  %baseminor38 = getelementptr inbounds %struct.char_device_struct, ptr %27, i32 0, i32 2, !dbg !5479
  %28 = load i32, ptr %baseminor38, align 4, !dbg !5479
  %29 = load ptr, ptr %curr, align 8, !dbg !5480
  %minorct39 = getelementptr inbounds %struct.char_device_struct, ptr %29, i32 0, i32 3, !dbg !5481
  %30 = load i32, ptr %minorct39, align 8, !dbg !5481
  %add40 = add i32 %28, %30, !dbg !5482
  %31 = load i32, ptr %baseminor.addr, align 4, !dbg !5483
  %cmp41 = icmp ule i32 %add40, %31, !dbg !5484
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !5485

if.then42:                                        ; preds = %if.end37
  br label %for.inc, !dbg !5486

if.end43:                                         ; preds = %if.end37
  %32 = load ptr, ptr %curr, align 8, !dbg !5487
  %baseminor44 = getelementptr inbounds %struct.char_device_struct, ptr %32, i32 0, i32 2, !dbg !5489
  %33 = load i32, ptr %baseminor44, align 4, !dbg !5489
  %34 = load i32, ptr %baseminor.addr, align 4, !dbg !5490
  %35 = load i32, ptr %minorct.addr, align 4, !dbg !5491
  %add45 = add i32 %34, %35, !dbg !5492
  %cmp46 = icmp uge i32 %33, %add45, !dbg !5493
  br i1 %cmp46, label %if.then47, label %if.end48, !dbg !5494

if.then47:                                        ; preds = %if.end43
  br label %for.end, !dbg !5495

if.end48:                                         ; preds = %if.end43
  br label %out, !dbg !5496

for.inc:                                          ; preds = %if.then42, %if.then32
  %36 = load ptr, ptr %curr, align 8, !dbg !5497
  store ptr %36, ptr %prev, align 8, !dbg !5498
  %37 = load ptr, ptr %curr, align 8, !dbg !5499
  %next = getelementptr inbounds %struct.char_device_struct, ptr %37, i32 0, i32 0, !dbg !5500
  %38 = load ptr, ptr %next, align 8, !dbg !5500
  store ptr %38, ptr %curr, align 8, !dbg !5501
  br label %for.cond, !dbg !5502, !llvm.loop !5503

for.end:                                          ; preds = %if.then47, %if.then36, %for.cond
  %39 = load i32, ptr %major.addr, align 4, !dbg !5505
  %40 = load ptr, ptr %cd, align 8, !dbg !5506
  %major49 = getelementptr inbounds %struct.char_device_struct, ptr %40, i32 0, i32 1, !dbg !5507
  store i32 %39, ptr %major49, align 8, !dbg !5508
  %41 = load i32, ptr %baseminor.addr, align 4, !dbg !5509
  %42 = load ptr, ptr %cd, align 8, !dbg !5510
  %baseminor50 = getelementptr inbounds %struct.char_device_struct, ptr %42, i32 0, i32 2, !dbg !5511
  store i32 %41, ptr %baseminor50, align 4, !dbg !5512
  %43 = load i32, ptr %minorct.addr, align 4, !dbg !5513
  %44 = load ptr, ptr %cd, align 8, !dbg !5514
  %minorct51 = getelementptr inbounds %struct.char_device_struct, ptr %44, i32 0, i32 3, !dbg !5515
  store i32 %43, ptr %minorct51, align 8, !dbg !5516
  %45 = load ptr, ptr %cd, align 8, !dbg !5517
  %name52 = getelementptr inbounds %struct.char_device_struct, ptr %45, i32 0, i32 4, !dbg !5518
  %arraydecay = getelementptr inbounds [64 x i8], ptr %name52, i64 0, i64 0, !dbg !5517
  %46 = load ptr, ptr %name.addr, align 8, !dbg !5519
  %call53 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %46, i64 noundef 64) #17, !dbg !5520
  %47 = load ptr, ptr %prev, align 8, !dbg !5521
  %tobool54 = icmp ne ptr %47, null, !dbg !5521
  br i1 %tobool54, label %if.else, label %if.then55, !dbg !5523

if.then55:                                        ; preds = %for.end
  %48 = load ptr, ptr %curr, align 8, !dbg !5524
  %49 = load ptr, ptr %cd, align 8, !dbg !5526
  %next56 = getelementptr inbounds %struct.char_device_struct, ptr %49, i32 0, i32 0, !dbg !5527
  store ptr %48, ptr %next56, align 8, !dbg !5528
  %50 = load ptr, ptr %cd, align 8, !dbg !5529
  %51 = load i32, ptr %i, align 4, !dbg !5530
  %idxprom57 = sext i32 %51 to i64, !dbg !5531
  %arrayidx58 = getelementptr [255 x ptr], ptr @chrdevs, i64 0, i64 %idxprom57, !dbg !5531
  store ptr %50, ptr %arrayidx58, align 8, !dbg !5532
  br label %if.end62, !dbg !5533

if.else:                                          ; preds = %for.end
  %52 = load ptr, ptr %prev, align 8, !dbg !5534
  %next59 = getelementptr inbounds %struct.char_device_struct, ptr %52, i32 0, i32 0, !dbg !5536
  %53 = load ptr, ptr %next59, align 8, !dbg !5536
  %54 = load ptr, ptr %cd, align 8, !dbg !5537
  %next60 = getelementptr inbounds %struct.char_device_struct, ptr %54, i32 0, i32 0, !dbg !5538
  store ptr %53, ptr %next60, align 8, !dbg !5539
  %55 = load ptr, ptr %cd, align 8, !dbg !5540
  %56 = load ptr, ptr %prev, align 8, !dbg !5541
  %next61 = getelementptr inbounds %struct.char_device_struct, ptr %56, i32 0, i32 0, !dbg !5542
  store ptr %55, ptr %next61, align 8, !dbg !5543
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then55
  call void @mutex_unlock(ptr noundef @chrdevs_lock) #17, !dbg !5544
  %57 = load ptr, ptr %cd, align 8, !dbg !5545
  store ptr %57, ptr %retval, align 8, !dbg !5546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5546

out:                                              ; preds = %if.end48, %do.end24
  call void @llvm.dbg.label(metadata !5384), !dbg !5547
  call void @mutex_unlock(ptr noundef @chrdevs_lock) #17, !dbg !5548
  %58 = load ptr, ptr %cd, align 8, !dbg !5549
  call void @kfree(ptr noundef %58) #17, !dbg !5550
  %59 = load i32, ptr %ret, align 4, !dbg !5551
  %conv = sext i32 %59 to i64, !dbg !5551
  %call63 = call ptr @ERR_PTR(i64 noundef %conv) #17, !dbg !5552
  store ptr %call63, ptr %retval, align 8, !dbg !5553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5553

cleanup:                                          ; preds = %out, %if.end62, %if.then14, %do.end6, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5554
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5554
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev) #16, !dbg !5554
  call void @llvm.lifetime.end.p0(i64 8, ptr %curr) #16, !dbg !5554
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #16, !dbg !5554
  %60 = load ptr, ptr %retval, align 8, !dbg !5554
  ret ptr %60, !dbg !5554
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !5555 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5560, metadata !DIExpression()), !dbg !5561
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5562
  %1 = ptrtoint ptr %0 to i64, !dbg !5562
  %2 = inttoptr i64 %1 to ptr, !dbg !5562
  %3 = ptrtoint ptr %2 to i64, !dbg !5562
  %cmp = icmp uge i64 %3, -4095, !dbg !5562
  %lnot = xor i1 %cmp, true, !dbg !5562
  %lnot1 = xor i1 %lnot, true, !dbg !5562
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5562
  %conv = sext i32 %lnot.ext to i64, !dbg !5562
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5562
  %tobool = icmp ne i64 %expval, 0, !dbg !5562
  ret i1 %tobool, !dbg !5563
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5564 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__unregister_chrdev_region(i32 noundef %major, i32 noundef %baseminor, i32 noundef %minorct) #0 align 16 !dbg !5567 {
entry:
  %major.addr = alloca i32, align 4
  %baseminor.addr = alloca i32, align 4
  %minorct.addr = alloca i32, align 4
  %cd = alloca ptr, align 8
  %cp = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5571, metadata !DIExpression()), !dbg !5578
  store i32 %baseminor, ptr %baseminor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baseminor.addr, metadata !5572, metadata !DIExpression()), !dbg !5579
  store i32 %minorct, ptr %minorct.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %minorct.addr, metadata !5573, metadata !DIExpression()), !dbg !5580
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #16, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !5574, metadata !DIExpression()), !dbg !5582
  store ptr null, ptr %cd, align 8, !dbg !5582
  call void @llvm.lifetime.start.p0(i64 8, ptr %cp) #16, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %cp, metadata !5575, metadata !DIExpression()), !dbg !5583
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5577, metadata !DIExpression()), !dbg !5585
  %0 = load i32, ptr %major.addr, align 4, !dbg !5586
  %call = call i32 @major_to_index(i32 noundef %0) #17, !dbg !5587
  store i32 %call, ptr %i, align 4, !dbg !5585
  call void @mutex_lock(ptr noundef @chrdevs_lock) #17, !dbg !5588
  %1 = load i32, ptr %i, align 4, !dbg !5589
  %idxprom = sext i32 %1 to i64, !dbg !5591
  %arrayidx = getelementptr [255 x ptr], ptr @chrdevs, i64 0, i64 %idxprom, !dbg !5591
  store ptr %arrayidx, ptr %cp, align 8, !dbg !5592
  br label %for.cond, !dbg !5593

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %cp, align 8, !dbg !5594
  %3 = load ptr, ptr %2, align 8, !dbg !5596
  %tobool = icmp ne ptr %3, null, !dbg !5597
  br i1 %tobool, label %for.body, label %for.end, !dbg !5597

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %cp, align 8, !dbg !5598
  %5 = load ptr, ptr %4, align 8, !dbg !5600
  %major1 = getelementptr inbounds %struct.char_device_struct, ptr %5, i32 0, i32 1, !dbg !5601
  %6 = load i32, ptr %major1, align 8, !dbg !5601
  %7 = load i32, ptr %major.addr, align 4, !dbg !5602
  %cmp = icmp eq i32 %6, %7, !dbg !5603
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5604

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %cp, align 8, !dbg !5605
  %9 = load ptr, ptr %8, align 8, !dbg !5606
  %baseminor2 = getelementptr inbounds %struct.char_device_struct, ptr %9, i32 0, i32 2, !dbg !5607
  %10 = load i32, ptr %baseminor2, align 4, !dbg !5607
  %11 = load i32, ptr %baseminor.addr, align 4, !dbg !5608
  %cmp3 = icmp eq i32 %10, %11, !dbg !5609
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !5610

land.lhs.true4:                                   ; preds = %land.lhs.true
  %12 = load ptr, ptr %cp, align 8, !dbg !5611
  %13 = load ptr, ptr %12, align 8, !dbg !5612
  %minorct5 = getelementptr inbounds %struct.char_device_struct, ptr %13, i32 0, i32 3, !dbg !5613
  %14 = load i32, ptr %minorct5, align 8, !dbg !5613
  %15 = load i32, ptr %minorct.addr, align 4, !dbg !5614
  %cmp6 = icmp eq i32 %14, %15, !dbg !5615
  br i1 %cmp6, label %if.then, label %if.end, !dbg !5616

if.then:                                          ; preds = %land.lhs.true4
  br label %for.end, !dbg !5617

if.end:                                           ; preds = %land.lhs.true4, %land.lhs.true, %for.body
  br label %for.inc, !dbg !5614

for.inc:                                          ; preds = %if.end
  %16 = load ptr, ptr %cp, align 8, !dbg !5618
  %17 = load ptr, ptr %16, align 8, !dbg !5619
  %next = getelementptr inbounds %struct.char_device_struct, ptr %17, i32 0, i32 0, !dbg !5620
  store ptr %next, ptr %cp, align 8, !dbg !5621
  br label %for.cond, !dbg !5622, !llvm.loop !5623

for.end:                                          ; preds = %if.then, %for.cond
  %18 = load ptr, ptr %cp, align 8, !dbg !5625
  %19 = load ptr, ptr %18, align 8, !dbg !5627
  %tobool7 = icmp ne ptr %19, null, !dbg !5627
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5628

if.then8:                                         ; preds = %for.end
  %20 = load ptr, ptr %cp, align 8, !dbg !5629
  %21 = load ptr, ptr %20, align 8, !dbg !5631
  store ptr %21, ptr %cd, align 8, !dbg !5632
  %22 = load ptr, ptr %cd, align 8, !dbg !5633
  %next9 = getelementptr inbounds %struct.char_device_struct, ptr %22, i32 0, i32 0, !dbg !5634
  %23 = load ptr, ptr %next9, align 8, !dbg !5634
  %24 = load ptr, ptr %cp, align 8, !dbg !5635
  store ptr %23, ptr %24, align 8, !dbg !5636
  br label %if.end10, !dbg !5637

if.end10:                                         ; preds = %if.then8, %for.end
  call void @mutex_unlock(ptr noundef @chrdevs_lock) #17, !dbg !5638
  %25 = load ptr, ptr %cd, align 8, !dbg !5639
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %cp) #16, !dbg !5640
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #16, !dbg !5640
  ret ptr %25, !dbg !5641
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !5642 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5648
  %1 = ptrtoint ptr %0 to i64, !dbg !5649
  ret i64 %1, !dbg !5650
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @alloc_chrdev_region(ptr noundef %dev, i32 noundef %baseminor, i32 noundef %count, ptr noundef %name) #0 align 16 !dbg !5651 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %baseminor.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5656, metadata !DIExpression()), !dbg !5661
  store i32 %baseminor, ptr %baseminor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baseminor.addr, metadata !5657, metadata !DIExpression()), !dbg !5662
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5658, metadata !DIExpression()), !dbg !5663
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5659, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #16, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !5660, metadata !DIExpression()), !dbg !5666
  %0 = load i32, ptr %baseminor.addr, align 4, !dbg !5667
  %1 = load i32, ptr %count.addr, align 4, !dbg !5668
  %2 = load ptr, ptr %name.addr, align 8, !dbg !5669
  %call = call ptr @__register_chrdev_region(i32 noundef 0, i32 noundef %0, i32 noundef %1, ptr noundef %2) #17, !dbg !5670
  store ptr %call, ptr %cd, align 8, !dbg !5671
  %3 = load ptr, ptr %cd, align 8, !dbg !5672
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #17, !dbg !5674
  br i1 %call1, label %if.then, label %if.end, !dbg !5675

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %cd, align 8, !dbg !5676
  %call2 = call i64 @PTR_ERR(ptr noundef %4) #17, !dbg !5677
  %conv = trunc i64 %call2 to i32, !dbg !5677
  store i32 %conv, ptr %retval, align 4, !dbg !5678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5678

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %cd, align 8, !dbg !5679
  %major = getelementptr inbounds %struct.char_device_struct, ptr %5, i32 0, i32 1, !dbg !5679
  %6 = load i32, ptr %major, align 8, !dbg !5679
  %shl = shl i32 %6, 20, !dbg !5679
  %7 = load ptr, ptr %cd, align 8, !dbg !5679
  %baseminor3 = getelementptr inbounds %struct.char_device_struct, ptr %7, i32 0, i32 2, !dbg !5679
  %8 = load i32, ptr %baseminor3, align 4, !dbg !5679
  %or = or i32 %shl, %8, !dbg !5679
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !5680
  store i32 %or, ptr %9, align 4, !dbg !5681
  store i32 0, ptr %retval, align 4, !dbg !5682
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5682

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #16, !dbg !5683
  %10 = load i32, ptr %retval, align 4, !dbg !5683
  ret i32 %10, !dbg !5683
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__register_chrdev(i32 noundef %major, i32 noundef %baseminor, i32 noundef %count, ptr noundef %name, ptr noundef %fops) #0 align 16 !dbg !5684 {
entry:
  %retval = alloca i32, align 4
  %major.addr = alloca i32, align 4
  %baseminor.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  %cdev = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5688, metadata !DIExpression()), !dbg !5698
  store i32 %baseminor, ptr %baseminor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baseminor.addr, metadata !5689, metadata !DIExpression()), !dbg !5699
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5690, metadata !DIExpression()), !dbg !5700
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5691, metadata !DIExpression()), !dbg !5701
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !5692, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #16, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !5693, metadata !DIExpression()), !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #16, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !5694, metadata !DIExpression()), !dbg !5706
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5695, metadata !DIExpression()), !dbg !5708
  store i32 -12, ptr %err, align 4, !dbg !5708
  %0 = load i32, ptr %major.addr, align 4, !dbg !5709
  %1 = load i32, ptr %baseminor.addr, align 4, !dbg !5710
  %2 = load i32, ptr %count.addr, align 4, !dbg !5711
  %3 = load ptr, ptr %name.addr, align 8, !dbg !5712
  %call = call ptr @__register_chrdev_region(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #17, !dbg !5713
  store ptr %call, ptr %cd, align 8, !dbg !5714
  %4 = load ptr, ptr %cd, align 8, !dbg !5715
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %4) #17, !dbg !5717
  br i1 %call1, label %if.then, label %if.end, !dbg !5718

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %cd, align 8, !dbg !5719
  %call2 = call i64 @PTR_ERR(ptr noundef %5) #17, !dbg !5720
  %conv = trunc i64 %call2 to i32, !dbg !5720
  store i32 %conv, ptr %retval, align 4, !dbg !5721
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5721

if.end:                                           ; preds = %entry
  %call3 = call ptr @cdev_alloc() #17, !dbg !5722
  store ptr %call3, ptr %cdev, align 8, !dbg !5723
  %6 = load ptr, ptr %cdev, align 8, !dbg !5724
  %tobool = icmp ne ptr %6, null, !dbg !5724
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !5726

if.then4:                                         ; preds = %if.end
  br label %out2, !dbg !5727

if.end5:                                          ; preds = %if.end
  %7 = load ptr, ptr %fops.addr, align 8, !dbg !5728
  %owner = getelementptr inbounds %struct.file_operations, ptr %7, i32 0, i32 0, !dbg !5729
  %8 = load ptr, ptr %owner, align 8, !dbg !5729
  %9 = load ptr, ptr %cdev, align 8, !dbg !5730
  %owner6 = getelementptr inbounds %struct.cdev, ptr %9, i32 0, i32 1, !dbg !5731
  store ptr %8, ptr %owner6, align 8, !dbg !5732
  %10 = load ptr, ptr %fops.addr, align 8, !dbg !5733
  %11 = load ptr, ptr %cdev, align 8, !dbg !5734
  %ops = getelementptr inbounds %struct.cdev, ptr %11, i32 0, i32 2, !dbg !5735
  store ptr %10, ptr %ops, align 8, !dbg !5736
  %12 = load ptr, ptr %cdev, align 8, !dbg !5737
  %kobj = getelementptr inbounds %struct.cdev, ptr %12, i32 0, i32 0, !dbg !5738
  %13 = load ptr, ptr %name.addr, align 8, !dbg !5739
  %call7 = call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %kobj, ptr noundef @.str.1, ptr noundef %13) #17, !dbg !5740
  %14 = load ptr, ptr %cdev, align 8, !dbg !5741
  %15 = load ptr, ptr %cd, align 8, !dbg !5742
  %major8 = getelementptr inbounds %struct.char_device_struct, ptr %15, i32 0, i32 1, !dbg !5742
  %16 = load i32, ptr %major8, align 8, !dbg !5742
  %shl = shl i32 %16, 20, !dbg !5742
  %17 = load i32, ptr %baseminor.addr, align 4, !dbg !5742
  %or = or i32 %shl, %17, !dbg !5742
  %18 = load i32, ptr %count.addr, align 4, !dbg !5743
  %call9 = call i32 @cdev_add(ptr noundef %14, i32 noundef %or, i32 noundef %18) #17, !dbg !5744
  store i32 %call9, ptr %err, align 4, !dbg !5745
  %19 = load i32, ptr %err, align 4, !dbg !5746
  %tobool10 = icmp ne i32 %19, 0, !dbg !5746
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5748

if.then11:                                        ; preds = %if.end5
  br label %out, !dbg !5749

if.end12:                                         ; preds = %if.end5
  %20 = load ptr, ptr %cdev, align 8, !dbg !5750
  %21 = load ptr, ptr %cd, align 8, !dbg !5751
  %cdev13 = getelementptr inbounds %struct.char_device_struct, ptr %21, i32 0, i32 5, !dbg !5752
  store ptr %20, ptr %cdev13, align 8, !dbg !5753
  %22 = load i32, ptr %major.addr, align 4, !dbg !5754
  %tobool14 = icmp ne i32 %22, 0, !dbg !5754
  br i1 %tobool14, label %cond.true, label %cond.false, !dbg !5754

cond.true:                                        ; preds = %if.end12
  br label %cond.end, !dbg !5754

cond.false:                                       ; preds = %if.end12
  %23 = load ptr, ptr %cd, align 8, !dbg !5755
  %major15 = getelementptr inbounds %struct.char_device_struct, ptr %23, i32 0, i32 1, !dbg !5756
  %24 = load i32, ptr %major15, align 8, !dbg !5756
  br label %cond.end, !dbg !5754

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %24, %cond.false ], !dbg !5754
  store i32 %cond, ptr %retval, align 4, !dbg !5757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5757

out:                                              ; preds = %if.then11
  call void @llvm.dbg.label(metadata !5696), !dbg !5758
  %25 = load ptr, ptr %cdev, align 8, !dbg !5759
  %kobj16 = getelementptr inbounds %struct.cdev, ptr %25, i32 0, i32 0, !dbg !5760
  call void @kobject_put(ptr noundef %kobj16) #17, !dbg !5761
  br label %out2, !dbg !5761

out2:                                             ; preds = %out, %if.then4
  call void @llvm.dbg.label(metadata !5697), !dbg !5762
  %26 = load ptr, ptr %cd, align 8, !dbg !5763
  %major17 = getelementptr inbounds %struct.char_device_struct, ptr %26, i32 0, i32 1, !dbg !5764
  %27 = load i32, ptr %major17, align 8, !dbg !5764
  %28 = load i32, ptr %baseminor.addr, align 4, !dbg !5765
  %29 = load i32, ptr %count.addr, align 4, !dbg !5766
  %call18 = call ptr @__unregister_chrdev_region(i32 noundef %27, i32 noundef %28, i32 noundef %29) #17, !dbg !5767
  call void @kfree(ptr noundef %call18) #17, !dbg !5768
  %30 = load i32, ptr %err, align 4, !dbg !5769
  store i32 %30, ptr %retval, align 4, !dbg !5770
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5770

cleanup:                                          ; preds = %out2, %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5771
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #16, !dbg !5771
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #16, !dbg !5771
  %31 = load i32, ptr %retval, align 4, !dbg !5771
  ret i32 %31, !dbg !5771
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @cdev_alloc() #0 align 16 !dbg !5772 {
entry:
  %p = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !5777
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5776, metadata !DIExpression()), !dbg !5778
  %call = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #19, !dbg !5779
  store ptr %call, ptr %p, align 8, !dbg !5778
  %0 = load ptr, ptr %p, align 8, !dbg !5780
  %tobool = icmp ne ptr %0, null, !dbg !5780
  br i1 %tobool, label %if.then, label %if.end, !dbg !5782

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p, align 8, !dbg !5783
  %list = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 3, !dbg !5785
  call void @INIT_LIST_HEAD(ptr noundef %list) #17, !dbg !5786
  %2 = load ptr, ptr %p, align 8, !dbg !5787
  %kobj = getelementptr inbounds %struct.cdev, ptr %2, i32 0, i32 0, !dbg !5788
  call void @kobject_init(ptr noundef %kobj, ptr noundef @ktype_cdev_dynamic) #17, !dbg !5789
  br label %if.end, !dbg !5790

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !5792
  ret ptr %3, !dbg !5793
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5794 dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cdev_add(ptr noundef %p, i32 noundef %dev, i32 noundef %count) #0 align 16 !dbg !5797 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %dev.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %error = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5801, metadata !DIExpression()), !dbg !5812
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5802, metadata !DIExpression()), !dbg !5813
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5803, metadata !DIExpression()), !dbg !5814
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5815
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5804, metadata !DIExpression()), !dbg !5816
  %0 = load i32, ptr %dev.addr, align 4, !dbg !5817
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5818
  %dev1 = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 4, !dbg !5819
  store i32 %0, ptr %dev1, align 8, !dbg !5820
  %2 = load i32, ptr %count.addr, align 4, !dbg !5821
  %3 = load ptr, ptr %p.addr, align 8, !dbg !5822
  %count2 = getelementptr inbounds %struct.cdev, ptr %3, i32 0, i32 5, !dbg !5823
  store i32 %2, ptr %count2, align 4, !dbg !5824
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5825
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5805, metadata !DIExpression()), !dbg !5825
  %4 = load i32, ptr %dev.addr, align 4, !dbg !5825
  %cmp = icmp eq i32 %4, 0, !dbg !5825
  %lnot = xor i1 %cmp, true, !dbg !5825
  %lnot3 = xor i1 %lnot, true, !dbg !5825
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5825
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5825
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5826
  %tobool = icmp ne i32 %5, 0, !dbg !5826
  %lnot4 = xor i1 %tobool, true, !dbg !5826
  %lnot6 = xor i1 %lnot4, true, !dbg !5826
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5826
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5826
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5826
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5826
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5825

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5826

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5827
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5808, metadata !DIExpression()), !dbg !5827
  store i32 2305, ptr %__flags, align 4, !dbg !5827
  br label %do.body9, !dbg !5827

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5828

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5828

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5827

do.body10:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5830
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 486, i32 %6, i64 12) #16, !dbg !5830, !srcloc !5832
  br label %do.cond11, !dbg !5830

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5830

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5827

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5833

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5833

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5826
  br label %do.cond16, !dbg !5827

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5827

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5827

if.end:                                           ; preds = %do.end17, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5825
  %tobool18 = icmp ne i32 %7, 0, !dbg !5825
  %lnot19 = xor i1 %tobool18, true, !dbg !5825
  %lnot21 = xor i1 %lnot19, true, !dbg !5825
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5825
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5825
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5825
  store i64 %expval24, ptr %tmp, align 8, !dbg !5826
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5835
  %8 = load i64, ptr %tmp, align 8, !dbg !5825
  %tobool25 = icmp ne i64 %8, 0, !dbg !5835
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5836

if.then26:                                        ; preds = %if.end
  store i32 -16, ptr %error, align 4, !dbg !5837
  br label %err, !dbg !5839

if.end27:                                         ; preds = %if.end
  %9 = load ptr, ptr @cdev_map, align 8, !dbg !5840
  %10 = load i32, ptr %dev.addr, align 4, !dbg !5841
  %11 = load i32, ptr %count.addr, align 4, !dbg !5842
  %conv28 = zext i32 %11 to i64, !dbg !5842
  %12 = load ptr, ptr %p.addr, align 8, !dbg !5843
  %call = call i32 @kobj_map(ptr noundef %9, i32 noundef %10, i64 noundef %conv28, ptr noundef null, ptr noundef @exact_match, ptr noundef @exact_lock, ptr noundef %12) #17, !dbg !5844
  store i32 %call, ptr %error, align 4, !dbg !5845
  %13 = load i32, ptr %error, align 4, !dbg !5846
  %tobool29 = icmp ne i32 %13, 0, !dbg !5846
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5848

if.then30:                                        ; preds = %if.end27
  br label %err, !dbg !5849

if.end31:                                         ; preds = %if.end27
  %14 = load ptr, ptr %p.addr, align 8, !dbg !5850
  %kobj = getelementptr inbounds %struct.cdev, ptr %14, i32 0, i32 0, !dbg !5851
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2, !dbg !5852
  %15 = load ptr, ptr %parent, align 8, !dbg !5852
  %call32 = call ptr @kobject_get(ptr noundef %15) #17, !dbg !5853
  store i32 0, ptr %retval, align 4, !dbg !5854
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5854

err:                                              ; preds = %if.then30, %if.then26
  call void @llvm.dbg.label(metadata !5811), !dbg !5855
  %16 = load ptr, ptr %p.addr, align 8, !dbg !5856
  %kobj33 = getelementptr inbounds %struct.cdev, ptr %16, i32 0, i32 0, !dbg !5857
  %name = getelementptr inbounds %struct.kobject, ptr %kobj33, i32 0, i32 0, !dbg !5858
  %17 = load ptr, ptr %name, align 8, !dbg !5858
  call void @kfree_const(ptr noundef %17) #17, !dbg !5859
  %18 = load ptr, ptr %p.addr, align 8, !dbg !5860
  %kobj34 = getelementptr inbounds %struct.cdev, ptr %18, i32 0, i32 0, !dbg !5861
  %name35 = getelementptr inbounds %struct.kobject, ptr %kobj34, i32 0, i32 0, !dbg !5862
  store ptr null, ptr %name35, align 8, !dbg !5863
  %19 = load i32, ptr %error, align 4, !dbg !5864
  store i32 %19, ptr %retval, align 4, !dbg !5865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5865

cleanup:                                          ; preds = %err, %if.end31
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5866
  %20 = load i32, ptr %retval, align 4, !dbg !5866
  ret i32 %20, !dbg !5866
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5867 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @unregister_chrdev_region(i32 noundef %from, i32 noundef %count) #0 align 16 !dbg !5868 {
entry:
  %from.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %to = alloca i32, align 4
  %n = alloca i32, align 4
  %next = alloca i32, align 4
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5872, metadata !DIExpression()), !dbg !5877
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5873, metadata !DIExpression()), !dbg !5878
  call void @llvm.lifetime.start.p0(i64 4, ptr %to) #16, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %to, metadata !5874, metadata !DIExpression()), !dbg !5880
  %0 = load i32, ptr %from.addr, align 4, !dbg !5881
  %1 = load i32, ptr %count.addr, align 4, !dbg !5882
  %add = add i32 %0, %1, !dbg !5883
  store i32 %add, ptr %to, align 4, !dbg !5880
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #16, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5875, metadata !DIExpression()), !dbg !5885
  call void @llvm.lifetime.start.p0(i64 4, ptr %next) #16, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5876, metadata !DIExpression()), !dbg !5886
  %2 = load i32, ptr %from.addr, align 4, !dbg !5887
  store i32 %2, ptr %n, align 4, !dbg !5889
  br label %for.cond, !dbg !5890

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %n, align 4, !dbg !5891
  %4 = load i32, ptr %to, align 4, !dbg !5893
  %cmp = icmp ult i32 %3, %4, !dbg !5894
  br i1 %cmp, label %for.body, label %for.end, !dbg !5895

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %n, align 4, !dbg !5896
  %shr = lshr i32 %5, 20, !dbg !5896
  %add1 = add i32 %shr, 1, !dbg !5896
  %shl = shl i32 %add1, 20, !dbg !5896
  %or = or i32 %shl, 0, !dbg !5896
  store i32 %or, ptr %next, align 4, !dbg !5898
  %6 = load i32, ptr %next, align 4, !dbg !5899
  %7 = load i32, ptr %to, align 4, !dbg !5901
  %cmp2 = icmp ugt i32 %6, %7, !dbg !5902
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5903

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %to, align 4, !dbg !5904
  store i32 %8, ptr %next, align 4, !dbg !5905
  br label %if.end, !dbg !5906

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i32, ptr %n, align 4, !dbg !5907
  %shr3 = lshr i32 %9, 20, !dbg !5907
  %10 = load i32, ptr %n, align 4, !dbg !5908
  %and = and i32 %10, 1048575, !dbg !5908
  %11 = load i32, ptr %next, align 4, !dbg !5909
  %12 = load i32, ptr %n, align 4, !dbg !5910
  %sub = sub i32 %11, %12, !dbg !5911
  %call = call ptr @__unregister_chrdev_region(i32 noundef %shr3, i32 noundef %and, i32 noundef %sub) #17, !dbg !5912
  call void @kfree(ptr noundef %call) #17, !dbg !5913
  br label %for.inc, !dbg !5914

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %next, align 4, !dbg !5915
  store i32 %13, ptr %n, align 4, !dbg !5916
  br label %for.cond, !dbg !5917, !llvm.loop !5918

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %next) #16, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #16, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 4, ptr %to) #16, !dbg !5920
  ret void, !dbg !5920
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__unregister_chrdev(i32 noundef %major, i32 noundef %baseminor, i32 noundef %count, ptr noundef %name) #0 align 16 !dbg !5921 {
entry:
  %major.addr = alloca i32, align 4
  %baseminor.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %name.addr = alloca ptr, align 8
  %cd = alloca ptr, align 8
  store i32 %major, ptr %major.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %major.addr, metadata !5925, metadata !DIExpression()), !dbg !5930
  store i32 %baseminor, ptr %baseminor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baseminor.addr, metadata !5926, metadata !DIExpression()), !dbg !5931
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5927, metadata !DIExpression()), !dbg !5932
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5928, metadata !DIExpression()), !dbg !5933
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #16, !dbg !5934
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !5929, metadata !DIExpression()), !dbg !5935
  %0 = load i32, ptr %major.addr, align 4, !dbg !5936
  %1 = load i32, ptr %baseminor.addr, align 4, !dbg !5937
  %2 = load i32, ptr %count.addr, align 4, !dbg !5938
  %call = call ptr @__unregister_chrdev_region(i32 noundef %0, i32 noundef %1, i32 noundef %2) #17, !dbg !5939
  store ptr %call, ptr %cd, align 8, !dbg !5940
  %3 = load ptr, ptr %cd, align 8, !dbg !5941
  %tobool = icmp ne ptr %3, null, !dbg !5941
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5943

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %cd, align 8, !dbg !5944
  %cdev = getelementptr inbounds %struct.char_device_struct, ptr %4, i32 0, i32 5, !dbg !5945
  %5 = load ptr, ptr %cdev, align 8, !dbg !5945
  %tobool1 = icmp ne ptr %5, null, !dbg !5944
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5946

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %cd, align 8, !dbg !5947
  %cdev2 = getelementptr inbounds %struct.char_device_struct, ptr %6, i32 0, i32 5, !dbg !5948
  %7 = load ptr, ptr %cdev2, align 8, !dbg !5948
  call void @cdev_del(ptr noundef %7) #17, !dbg !5949
  br label %if.end, !dbg !5949

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load ptr, ptr %cd, align 8, !dbg !5950
  call void @kfree(ptr noundef %8) #17, !dbg !5951
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #16, !dbg !5952
  ret void, !dbg !5952
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cdev_del(ptr noundef %p) #0 align 16 !dbg !5953 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5959
  %dev = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 4, !dbg !5960
  %1 = load i32, ptr %dev, align 8, !dbg !5960
  %2 = load ptr, ptr %p.addr, align 8, !dbg !5961
  %count = getelementptr inbounds %struct.cdev, ptr %2, i32 0, i32 5, !dbg !5962
  %3 = load i32, ptr %count, align 4, !dbg !5962
  call void @cdev_unmap(i32 noundef %1, i32 noundef %3) #17, !dbg !5963
  %4 = load ptr, ptr %p.addr, align 8, !dbg !5964
  %kobj = getelementptr inbounds %struct.cdev, ptr %4, i32 0, i32 0, !dbg !5965
  call void @kobject_put(ptr noundef %kobj) #17, !dbg !5966
  ret void, !dbg !5967
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cdev_put(ptr noundef %p) #0 align 16 !dbg !5968 {
entry:
  %p.addr = alloca ptr, align 8
  %owner = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5970, metadata !DIExpression()), !dbg !5974
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5975
  %tobool = icmp ne ptr %0, null, !dbg !5975
  br i1 %tobool, label %if.then, label %if.end, !dbg !5976

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #16, !dbg !5977
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !5971, metadata !DIExpression()), !dbg !5978
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5979
  %owner1 = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 1, !dbg !5980
  %2 = load ptr, ptr %owner1, align 8, !dbg !5980
  store ptr %2, ptr %owner, align 8, !dbg !5978
  %3 = load ptr, ptr %p.addr, align 8, !dbg !5981
  %kobj = getelementptr inbounds %struct.cdev, ptr %3, i32 0, i32 0, !dbg !5982
  call void @kobject_put(ptr noundef %kobj) #17, !dbg !5983
  %4 = load ptr, ptr %owner, align 8, !dbg !5984
  call void @module_put(ptr noundef %4) #17, !dbg !5985
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #16, !dbg !5986
  br label %if.end, !dbg !5987

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5988
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5989 dso_local void @module_put(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cd_forget(ptr noundef %inode) #0 align 16 !dbg !5990 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5992, metadata !DIExpression()), !dbg !5993
  call void @spin_lock(ptr noundef @cdev_lock) #17, !dbg !5994
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5995
  %i_devices = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 42, !dbg !5996
  call void @list_del_init(ptr noundef %i_devices) #17, !dbg !5997
  %1 = load ptr, ptr %inode.addr, align 8, !dbg !5998
  %2 = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 43, !dbg !5999
  store ptr null, ptr %2, align 8, !dbg !6000
  %3 = load ptr, ptr %inode.addr, align 8, !dbg !6001
  %i_data = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 41, !dbg !6002
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !6003
  %i_mapping = getelementptr inbounds %struct.inode, ptr %4, i32 0, i32 10, !dbg !6004
  store ptr %i_data, ptr %i_mapping, align 8, !dbg !6005
  call void @spin_unlock(ptr noundef @cdev_lock) #17, !dbg !6006
  ret void, !dbg !6007
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #5 align 16 !dbg !6008 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6015
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6015
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !6015
  ret void, !dbg !6016
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #4 align 16 !dbg !6017 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6024
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !6025
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6026
  call void @INIT_LIST_HEAD(ptr noundef %1) #17, !dbg !6027
  ret void, !dbg !6028
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #5 align 16 !dbg !6029 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6031, metadata !DIExpression()), !dbg !6032
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6033
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6033
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !6033
  ret void, !dbg !6034
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @chrdev_open(ptr noundef %inode, ptr noundef %filp) #0 align 16 !dbg !6035 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %fops = alloca ptr, align 8
  %p = alloca ptr, align 8
  %new = alloca ptr, align 8
  %ret = alloca i32, align 4
  %kobj = alloca ptr, align 8
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__file = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !6037, metadata !DIExpression()), !dbg !6052
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !6038, metadata !DIExpression()), !dbg !6053
  call void @llvm.lifetime.start.p0(i64 8, ptr %fops) #16, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %fops, metadata !6039, metadata !DIExpression()), !dbg !6055
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6056
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6040, metadata !DIExpression()), !dbg !6057
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %new, metadata !6041, metadata !DIExpression()), !dbg !6059
  store ptr null, ptr %new, align 8, !dbg !6059
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6060
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6042, metadata !DIExpression()), !dbg !6061
  store i32 0, ptr %ret, align 4, !dbg !6061
  call void @spin_lock(ptr noundef @cdev_lock) #17, !dbg !6062
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !6063
  %1 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 43, !dbg !6064
  %2 = load ptr, ptr %1, align 8, !dbg !6064
  store ptr %2, ptr %p, align 8, !dbg !6065
  %3 = load ptr, ptr %p, align 8, !dbg !6066
  %tobool = icmp ne ptr %3, null, !dbg !6066
  br i1 %tobool, label %if.else11, label %if.then, !dbg !6067

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #16, !dbg !6068
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !6043, metadata !DIExpression()), !dbg !6069
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !6070
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !6046, metadata !DIExpression()), !dbg !6071
  call void @spin_unlock(ptr noundef @cdev_lock) #17, !dbg !6072
  %4 = load ptr, ptr @cdev_map, align 8, !dbg !6073
  %5 = load ptr, ptr %inode.addr, align 8, !dbg !6074
  %i_rdev = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 14, !dbg !6075
  %6 = load i32, ptr %i_rdev, align 4, !dbg !6075
  %call = call ptr @kobj_lookup(ptr noundef %4, i32 noundef %6, ptr noundef %idx) #17, !dbg !6076
  store ptr %call, ptr %kobj, align 8, !dbg !6077
  %7 = load ptr, ptr %kobj, align 8, !dbg !6078
  %tobool1 = icmp ne ptr %7, null, !dbg !6078
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !6080

if.then2:                                         ; preds = %if.then
  store i32 -6, ptr %retval, align 4, !dbg !6081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6081

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6082
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6047, metadata !DIExpression()), !dbg !6082
  %8 = load ptr, ptr %kobj, align 8, !dbg !6082
  store ptr %8, ptr %__mptr, align 8, !dbg !6082
  %9 = load ptr, ptr %__mptr, align 8, !dbg !6082
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !6082
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6082
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6083
  %10 = load ptr, ptr %tmp, align 8, !dbg !6082
  store ptr %10, ptr %new, align 8, !dbg !6084
  call void @spin_lock(ptr noundef @cdev_lock) #17, !dbg !6085
  %11 = load ptr, ptr %inode.addr, align 8, !dbg !6086
  %12 = getelementptr inbounds %struct.inode, ptr %11, i32 0, i32 43, !dbg !6087
  %13 = load ptr, ptr %12, align 8, !dbg !6087
  store ptr %13, ptr %p, align 8, !dbg !6088
  %14 = load ptr, ptr %p, align 8, !dbg !6089
  %tobool3 = icmp ne ptr %14, null, !dbg !6089
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !6091

if.then4:                                         ; preds = %if.end
  %15 = load ptr, ptr %new, align 8, !dbg !6092
  store ptr %15, ptr %p, align 8, !dbg !6094
  %16 = load ptr, ptr %inode.addr, align 8, !dbg !6095
  %17 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 43, !dbg !6096
  store ptr %15, ptr %17, align 8, !dbg !6097
  %18 = load ptr, ptr %inode.addr, align 8, !dbg !6098
  %i_devices = getelementptr inbounds %struct.inode, ptr %18, i32 0, i32 42, !dbg !6099
  %19 = load ptr, ptr %p, align 8, !dbg !6100
  %list = getelementptr inbounds %struct.cdev, ptr %19, i32 0, i32 3, !dbg !6101
  call void @list_add(ptr noundef %i_devices, ptr noundef %list) #17, !dbg !6102
  store ptr null, ptr %new, align 8, !dbg !6103
  br label %if.end9, !dbg !6104

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr %p, align 8, !dbg !6105
  %call5 = call ptr @cdev_get(ptr noundef %20) #17, !dbg !6107
  %tobool6 = icmp ne ptr %call5, null, !dbg !6107
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6108

if.then7:                                         ; preds = %if.else
  store i32 -6, ptr %ret, align 4, !dbg !6109
  br label %if.end8, !dbg !6110

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then4
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6111
  br label %cleanup, !dbg !6111

cleanup:                                          ; preds = %if.end9, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !6111
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #16, !dbg !6111
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup64 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end16, !dbg !6112

if.else11:                                        ; preds = %entry
  %21 = load ptr, ptr %p, align 8, !dbg !6113
  %call12 = call ptr @cdev_get(ptr noundef %21) #17, !dbg !6115
  %tobool13 = icmp ne ptr %call12, null, !dbg !6115
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !6116

if.then14:                                        ; preds = %if.else11
  store i32 -6, ptr %ret, align 4, !dbg !6117
  br label %if.end15, !dbg !6118

if.end15:                                         ; preds = %if.then14, %if.else11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %cleanup.cont
  call void @spin_unlock(ptr noundef @cdev_lock) #17, !dbg !6119
  %22 = load ptr, ptr %new, align 8, !dbg !6120
  call void @cdev_put(ptr noundef %22) #17, !dbg !6121
  %23 = load i32, ptr %ret, align 4, !dbg !6122
  %tobool17 = icmp ne i32 %23, 0, !dbg !6122
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6124

if.then18:                                        ; preds = %if.end16
  %24 = load i32, ptr %ret, align 4, !dbg !6125
  store i32 %24, ptr %retval, align 4, !dbg !6126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !6126

if.end19:                                         ; preds = %if.end16
  store i32 -6, ptr %ret, align 4, !dbg !6127
  %25 = load ptr, ptr %p, align 8, !dbg !6128
  %ops = getelementptr inbounds %struct.cdev, ptr %25, i32 0, i32 2, !dbg !6128
  %26 = load ptr, ptr %ops, align 8, !dbg !6128
  %tobool20 = icmp ne ptr %26, null, !dbg !6128
  br i1 %tobool20, label %land.lhs.true, label %cond.false, !dbg !6128

land.lhs.true:                                    ; preds = %if.end19
  %27 = load ptr, ptr %p, align 8, !dbg !6128
  %ops21 = getelementptr inbounds %struct.cdev, ptr %27, i32 0, i32 2, !dbg !6128
  %28 = load ptr, ptr %ops21, align 8, !dbg !6128
  %owner = getelementptr inbounds %struct.file_operations, ptr %28, i32 0, i32 0, !dbg !6128
  %29 = load ptr, ptr %owner, align 8, !dbg !6128
  %call22 = call zeroext i1 @try_module_get(ptr noundef %29) #17, !dbg !6128
  br i1 %call22, label %cond.true, label %cond.false, !dbg !6128

cond.true:                                        ; preds = %land.lhs.true
  %30 = load ptr, ptr %p, align 8, !dbg !6128
  %ops23 = getelementptr inbounds %struct.cdev, ptr %30, i32 0, i32 2, !dbg !6128
  %31 = load ptr, ptr %ops23, align 8, !dbg !6128
  br label %cond.end, !dbg !6128

cond.false:                                       ; preds = %land.lhs.true, %if.end19
  br label %cond.end, !dbg !6128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %31, %cond.true ], [ null, %cond.false ], !dbg !6128
  store ptr %cond, ptr %fops, align 8, !dbg !6129
  %32 = load ptr, ptr %fops, align 8, !dbg !6130
  %tobool24 = icmp ne ptr %32, null, !dbg !6130
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !6132

if.then25:                                        ; preds = %cond.end
  br label %out_cdev_put, !dbg !6133

if.end26:                                         ; preds = %cond.end
  br label %do.body, !dbg !6134

do.body:                                          ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__file) #16, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %__file, metadata !6049, metadata !DIExpression()), !dbg !6135
  %33 = load ptr, ptr %filp.addr, align 8, !dbg !6135
  store ptr %33, ptr %__file, align 8, !dbg !6135
  br label %do.body27, !dbg !6135

do.body27:                                        ; preds = %do.body
  %34 = load ptr, ptr %__file, align 8, !dbg !6136
  %f_op = getelementptr inbounds %struct.file, ptr %34, i32 0, i32 12, !dbg !6136
  %35 = load ptr, ptr %f_op, align 8, !dbg !6136
  %tobool28 = icmp ne ptr %35, null, !dbg !6136
  br i1 %tobool28, label %if.then29, label %if.end32, !dbg !6139

if.then29:                                        ; preds = %do.body27
  %36 = load ptr, ptr %__file, align 8, !dbg !6136
  %f_op30 = getelementptr inbounds %struct.file, ptr %36, i32 0, i32 12, !dbg !6136
  %37 = load ptr, ptr %f_op30, align 8, !dbg !6136
  %owner31 = getelementptr inbounds %struct.file_operations, ptr %37, i32 0, i32 0, !dbg !6136
  %38 = load ptr, ptr %owner31, align 8, !dbg !6136
  call void @module_put(ptr noundef %38) #17, !dbg !6136
  br label %if.end32, !dbg !6136

if.end32:                                         ; preds = %if.then29, %do.body27
  br label %do.cond, !dbg !6139

do.cond:                                          ; preds = %if.end32
  br label %do.end, !dbg !6139

do.end:                                           ; preds = %do.cond
  br label %do.body33, !dbg !6135

do.body33:                                        ; preds = %do.end
  %39 = load ptr, ptr %fops, align 8, !dbg !6140
  %40 = load ptr, ptr %__file, align 8, !dbg !6140
  %f_op34 = getelementptr inbounds %struct.file, ptr %40, i32 0, i32 12, !dbg !6140
  store ptr %39, ptr %f_op34, align 8, !dbg !6140
  %tobool35 = icmp ne ptr %39, null, !dbg !6140
  %lnot = xor i1 %tobool35, true, !dbg !6140
  %lnot36 = xor i1 %lnot, true, !dbg !6140
  %lnot37 = xor i1 %lnot36, true, !dbg !6140
  %lnot.ext = zext i1 %lnot37 to i32, !dbg !6140
  %conv = sext i32 %lnot.ext to i64, !dbg !6140
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6140
  %tobool38 = icmp ne i64 %expval, 0, !dbg !6140
  br i1 %tobool38, label %if.then39, label %if.end49, !dbg !6143

if.then39:                                        ; preds = %do.body33
  br label %do.body40, !dbg !6140

do.body40:                                        ; preds = %if.then39
  br label %do.body41, !dbg !6144

do.body41:                                        ; preds = %do.body40
  br label %do.cond42, !dbg !6146

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !6146

do.end43:                                         ; preds = %do.cond42
  br label %do.body44, !dbg !6144

do.body44:                                        ; preds = %do.end43
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 412, i32 0, i64 12) #16, !dbg !6148, !srcloc !6150
  br label %do.cond45, !dbg !6148

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !6148

do.end46:                                         ; preds = %do.cond45
  unreachable, !dbg !6144

do.cond47:                                        ; No predecessors!
  br label %do.end48, !dbg !6144

do.end48:                                         ; preds = %do.cond47
  br label %if.end49, !dbg !6144

if.end49:                                         ; preds = %do.end48, %do.body33
  br label %do.cond50, !dbg !6143

do.cond50:                                        ; preds = %if.end49
  br label %do.end51, !dbg !6143

do.end51:                                         ; preds = %do.cond50
  call void @llvm.lifetime.end.p0(i64 8, ptr %__file) #16, !dbg !6134
  br label %do.cond52, !dbg !6135

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !6135

do.end53:                                         ; preds = %do.cond52
  %41 = load ptr, ptr %filp.addr, align 8, !dbg !6151
  %f_op54 = getelementptr inbounds %struct.file, ptr %41, i32 0, i32 12, !dbg !6153
  %42 = load ptr, ptr %f_op54, align 8, !dbg !6153
  %open = getelementptr inbounds %struct.file_operations, ptr %42, i32 0, i32 13, !dbg !6154
  %43 = load ptr, ptr %open, align 8, !dbg !6154
  %tobool55 = icmp ne ptr %43, null, !dbg !6151
  br i1 %tobool55, label %if.then56, label %if.end63, !dbg !6155

if.then56:                                        ; preds = %do.end53
  %44 = load ptr, ptr %filp.addr, align 8, !dbg !6156
  %f_op57 = getelementptr inbounds %struct.file, ptr %44, i32 0, i32 12, !dbg !6158
  %45 = load ptr, ptr %f_op57, align 8, !dbg !6158
  %open58 = getelementptr inbounds %struct.file_operations, ptr %45, i32 0, i32 13, !dbg !6159
  %46 = load ptr, ptr %open58, align 8, !dbg !6159
  %47 = load ptr, ptr %inode.addr, align 8, !dbg !6160
  %48 = load ptr, ptr %filp.addr, align 8, !dbg !6161
  %call59 = call i32 %46(ptr noundef %47, ptr noundef %48) #17, !dbg !6156
  store i32 %call59, ptr %ret, align 4, !dbg !6162
  %49 = load i32, ptr %ret, align 4, !dbg !6163
  %tobool60 = icmp ne i32 %49, 0, !dbg !6163
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !6165

if.then61:                                        ; preds = %if.then56
  br label %out_cdev_put, !dbg !6166

if.end62:                                         ; preds = %if.then56
  br label %if.end63, !dbg !6167

if.end63:                                         ; preds = %if.end62, %do.end53
  store i32 0, ptr %retval, align 4, !dbg !6168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !6168

out_cdev_put:                                     ; preds = %if.then61, %if.then25
  call void @llvm.dbg.label(metadata !6051), !dbg !6169
  %50 = load ptr, ptr %p, align 8, !dbg !6170
  call void @cdev_put(ptr noundef %50) #17, !dbg !6171
  %51 = load i32, ptr %ret, align 4, !dbg !6172
  store i32 %51, ptr %retval, align 4, !dbg !6173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup64, !dbg !6173

cleanup64:                                        ; preds = %out_cdev_put, %if.end63, %if.then18, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6174
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !6174
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6174
  call void @llvm.lifetime.end.p0(i64 8, ptr %fops) #16, !dbg !6174
  %52 = load i32, ptr %retval, align 4, !dbg !6174
  ret i32 %52, !dbg !6174
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6175 dso_local i32 @kobj_map(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @exact_match(i32 noundef %dev, ptr noundef %part, ptr noundef %data) #0 align 16 !dbg !6185 {
entry:
  %dev.addr = alloca i32, align 4
  %part.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6187, metadata !DIExpression()), !dbg !6191
  store ptr %part, ptr %part.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %part.addr, metadata !6188, metadata !DIExpression()), !dbg !6192
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6189, metadata !DIExpression()), !dbg !6193
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6194
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6190, metadata !DIExpression()), !dbg !6195
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6196
  store ptr %0, ptr %p, align 8, !dbg !6195
  %1 = load ptr, ptr %p, align 8, !dbg !6197
  %kobj = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 0, !dbg !6198
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6199
  ret ptr %kobj, !dbg !6200
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @exact_lock(i32 noundef %dev, ptr noundef %data) #0 align 16 !dbg !6201 {
entry:
  %dev.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6203, metadata !DIExpression()), !dbg !6206
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6204, metadata !DIExpression()), !dbg !6207
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6208
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6205, metadata !DIExpression()), !dbg !6209
  %0 = load ptr, ptr %data.addr, align 8, !dbg !6210
  store ptr %0, ptr %p, align 8, !dbg !6209
  %1 = load ptr, ptr %p, align 8, !dbg !6211
  %call = call ptr @cdev_get(ptr noundef %1) #17, !dbg !6212
  %tobool = icmp ne ptr %call, null, !dbg !6212
  %2 = zext i1 %tobool to i64, !dbg !6212
  %cond = select i1 %tobool, i32 0, i32 -1, !dbg !6212
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6213
  ret i32 %cond, !dbg !6214
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6215 dso_local ptr @kobject_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6218 dso_local void @kfree_const(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cdev_set_parent(ptr noundef %p, ptr noundef %kobj) #0 align 16 !dbg !6220 {
entry:
  %p.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6224, metadata !DIExpression()), !dbg !6231
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6225, metadata !DIExpression()), !dbg !6232
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6233
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6226, metadata !DIExpression()), !dbg !6233
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6233
  %state_initialized = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7, !dbg !6233
  %bf.load = load i8, ptr %state_initialized, align 4, !dbg !6233
  %bf.clear = and i8 %bf.load, 1, !dbg !6233
  %bf.cast = zext i8 %bf.clear to i32, !dbg !6233
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !6233
  %lnot = xor i1 %tobool, true, !dbg !6233
  %lnot1 = xor i1 %lnot, true, !dbg !6233
  %lnot2 = xor i1 %lnot1, true, !dbg !6233
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6233
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6233
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6234
  %tobool3 = icmp ne i32 %1, 0, !dbg !6234
  %lnot4 = xor i1 %tobool3, true, !dbg !6234
  %lnot6 = xor i1 %lnot4, true, !dbg !6234
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6234
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6234
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6234
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6234
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6233

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6234

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6228, metadata !DIExpression()), !dbg !6235
  store i32 2305, ptr %__flags, align 4, !dbg !6235
  br label %do.body9, !dbg !6235

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6236

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6236

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6235

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !6238
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 517, i32 %2, i64 12) #16, !dbg !6238, !srcloc !6240
  br label %do.cond11, !dbg !6238

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6238

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6235

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6241

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6241

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6234
  br label %do.cond16, !dbg !6235

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6235

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6235

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6233
  %tobool18 = icmp ne i32 %3, 0, !dbg !6233
  %lnot19 = xor i1 %tobool18, true, !dbg !6233
  %lnot21 = xor i1 %lnot19, true, !dbg !6233
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6233
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6233
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6233
  store i64 %expval24, ptr %tmp, align 8, !dbg !6234
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6243
  %4 = load i64, ptr %tmp, align 8, !dbg !6233
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !6244
  %6 = load ptr, ptr %p.addr, align 8, !dbg !6245
  %kobj25 = getelementptr inbounds %struct.cdev, ptr %6, i32 0, i32 0, !dbg !6246
  %parent = getelementptr inbounds %struct.kobject, ptr %kobj25, i32 0, i32 2, !dbg !6247
  store ptr %5, ptr %parent, align 8, !dbg !6248
  ret void, !dbg !6249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev) #0 align 16 !dbg !6250 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !6254, metadata !DIExpression()), !dbg !6257
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6255, metadata !DIExpression()), !dbg !6258
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !6256, metadata !DIExpression()), !dbg !6260
  store i32 0, ptr %rc, align 4, !dbg !6260
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6261
  %devt = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 26, !dbg !6263
  %1 = load i32, ptr %devt, align 4, !dbg !6263
  %tobool = icmp ne i32 %1, 0, !dbg !6261
  br i1 %tobool, label %if.then, label %if.end4, !dbg !6264

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cdev.addr, align 8, !dbg !6265
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6267
  %kobj = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 0, !dbg !6268
  call void @cdev_set_parent(ptr noundef %2, ptr noundef %kobj) #17, !dbg !6269
  %4 = load ptr, ptr %cdev.addr, align 8, !dbg !6270
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6271
  %devt1 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 26, !dbg !6272
  %6 = load i32, ptr %devt1, align 4, !dbg !6272
  %call = call i32 @cdev_add(ptr noundef %4, i32 noundef %6, i32 noundef 1) #17, !dbg !6273
  store i32 %call, ptr %rc, align 4, !dbg !6274
  %7 = load i32, ptr %rc, align 4, !dbg !6275
  %tobool2 = icmp ne i32 %7, 0, !dbg !6275
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !6277

if.then3:                                         ; preds = %if.then
  %8 = load i32, ptr %rc, align 4, !dbg !6278
  store i32 %8, ptr %retval, align 4, !dbg !6279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6279

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !6280

if.end4:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !6281
  %call5 = call i32 @device_add(ptr noundef %9) #17, !dbg !6282
  store i32 %call5, ptr %rc, align 4, !dbg !6283
  %10 = load i32, ptr %rc, align 4, !dbg !6284
  %tobool6 = icmp ne i32 %10, 0, !dbg !6284
  br i1 %tobool6, label %land.lhs.true, label %if.end10, !dbg !6286

land.lhs.true:                                    ; preds = %if.end4
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !6287
  %devt7 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 26, !dbg !6288
  %12 = load i32, ptr %devt7, align 4, !dbg !6288
  %tobool8 = icmp ne i32 %12, 0, !dbg !6287
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !6289

if.then9:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %cdev.addr, align 8, !dbg !6290
  call void @cdev_del(ptr noundef %13) #17, !dbg !6291
  br label %if.end10, !dbg !6291

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end4
  %14 = load i32, ptr %rc, align 4, !dbg !6292
  store i32 %14, ptr %retval, align 4, !dbg !6293
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6293

cleanup:                                          ; preds = %if.end10, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !6294
  %15 = load i32, ptr %retval, align 4, !dbg !6294
  ret i32 %15, !dbg !6294
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6295 dso_local i32 @device_add(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #0 align 16 !dbg !6296 {
entry:
  %cdev.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !6300, metadata !DIExpression()), !dbg !6302
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6301, metadata !DIExpression()), !dbg !6303
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6304
  call void @device_del(ptr noundef %0) #17, !dbg !6305
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !6306
  %devt = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 26, !dbg !6308
  %2 = load i32, ptr %devt, align 4, !dbg !6308
  %tobool = icmp ne i32 %2, 0, !dbg !6306
  br i1 %tobool, label %if.then, label %if.end, !dbg !6309

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cdev.addr, align 8, !dbg !6310
  call void @cdev_del(ptr noundef %3) #17, !dbg !6311
  br label %if.end, !dbg !6311

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6312
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6313 dso_local void @device_del(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cdev_unmap(i32 noundef %dev, i32 noundef %count) #0 align 16 !dbg !6314 {
entry:
  %dev.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6316, metadata !DIExpression()), !dbg !6318
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6317, metadata !DIExpression()), !dbg !6319
  %0 = load ptr, ptr @cdev_map, align 8, !dbg !6320
  %1 = load i32, ptr %dev.addr, align 4, !dbg !6321
  %2 = load i32, ptr %count.addr, align 4, !dbg !6322
  %conv = zext i32 %2 to i64, !dbg !6322
  call void @kobj_unmap(ptr noundef %0, i32 noundef %1, i64 noundef %conv) #17, !dbg !6323
  ret void, !dbg !6324
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6325 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6329, metadata !DIExpression()), !dbg !6331
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6330, metadata !DIExpression()), !dbg !6332
  %0 = load i64, ptr %size.addr, align 8, !dbg !6333
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6334
  %or = or i32 %1, 256, !dbg !6335
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !6336
  ret ptr %call, !dbg !6337
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !6338 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6340, metadata !DIExpression()), !dbg !6341
  br label %do.body, !dbg !6342

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6343

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6345

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6343

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6347
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6347
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6347
  store volatile ptr %0, ptr %next, align 8, !dbg !6347
  br label %do.end3, !dbg !6347

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6343

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6349

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6350

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6352

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6350

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6354
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6354
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6354
  store volatile ptr %2, ptr %prev, align 8, !dbg !6354
  br label %do.end9, !dbg !6354

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6350

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6356
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6357 dso_local void @kobject_init(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cdev_init(ptr noundef %cdev, ptr noundef %fops) #0 align 16 !dbg !6360 {
entry:
  %cdev.addr = alloca ptr, align 8
  %fops.addr = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !6364, metadata !DIExpression()), !dbg !6366
  store ptr %fops, ptr %fops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fops.addr, metadata !6365, metadata !DIExpression()), !dbg !6367
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !6368
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 104, i1 false), !dbg !6369
  %1 = load ptr, ptr %cdev.addr, align 8, !dbg !6370
  %list = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 3, !dbg !6371
  call void @INIT_LIST_HEAD(ptr noundef %list) #17, !dbg !6372
  %2 = load ptr, ptr %cdev.addr, align 8, !dbg !6373
  %kobj = getelementptr inbounds %struct.cdev, ptr %2, i32 0, i32 0, !dbg !6374
  call void @kobject_init(ptr noundef %kobj, ptr noundef @ktype_cdev_default) #17, !dbg !6375
  %3 = load ptr, ptr %fops.addr, align 8, !dbg !6376
  %4 = load ptr, ptr %cdev.addr, align 8, !dbg !6377
  %ops = getelementptr inbounds %struct.cdev, ptr %4, i32 0, i32 2, !dbg !6378
  store ptr %3, ptr %ops, align 8, !dbg !6379
  ret void, !dbg !6380
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @chrdev_init() #9 section ".init.text" align 16 !dbg !6381 {
entry:
  %call = call ptr @kobj_map_init(ptr noundef @base_probe, ptr noundef @chrdevs_lock) #17, !dbg !6382
  store ptr %call, ptr @cdev_map, align 8, !dbg !6383
  ret void, !dbg !6384
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6385 dso_local ptr @kobj_map_init(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @base_probe(i32 noundef %dev, ptr noundef %part, ptr noundef %data) #0 align 16 !dbg !6388 {
entry:
  %dev.addr = alloca i32, align 4
  %part.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6390, metadata !DIExpression()), !dbg !6393
  store ptr %part, ptr %part.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %part.addr, metadata !6391, metadata !DIExpression()), !dbg !6394
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6392, metadata !DIExpression()), !dbg !6395
  %0 = load i32, ptr %dev.addr, align 4, !dbg !6396
  %shr = lshr i32 %0, 20, !dbg !6396
  %1 = load i32, ptr %dev.addr, align 4, !dbg !6396
  %and = and i32 %1, 1048575, !dbg !6396
  %call = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.7, i32 noundef %shr, i32 noundef %and) #17, !dbg !6396
  %cmp = icmp sgt i32 %call, 0, !dbg !6398
  br i1 %cmp, label %if.then, label %if.end, !dbg !6399

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %dev.addr, align 4, !dbg !6400
  %shr1 = lshr i32 %2, 20, !dbg !6400
  %call2 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef @.str.8, i32 noundef %shr1) #17, !dbg !6400
  br label %if.end, !dbg !6400

if.end:                                           ; preds = %if.then, %entry
  ret ptr null, !dbg !6401
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6402 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !6406 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6410, metadata !DIExpression()), !dbg !6411
  %0 = load i64, ptr %error.addr, align 8, !dbg !6412
  %1 = inttoptr i64 %0 to ptr, !dbg !6413
  ret ptr %1, !dbg !6414
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @find_dynamic_major() #0 align 16 !dbg !6415 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %cd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6419
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6417, metadata !DIExpression()), !dbg !6420
  call void @llvm.lifetime.start.p0(i64 8, ptr %cd) #16, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %cd, metadata !6418, metadata !DIExpression()), !dbg !6422
  store i32 254, ptr %i, align 4, !dbg !6423
  br label %for.cond, !dbg !6425

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6426
  %cmp = icmp sge i32 %0, 234, !dbg !6428
  br i1 %cmp, label %for.body, label %for.end, !dbg !6429

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !6430
  %idxprom = sext i32 %1 to i64, !dbg !6433
  %arrayidx = getelementptr [255 x ptr], ptr @chrdevs, i64 0, i64 %idxprom, !dbg !6433
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !6433
  %cmp1 = icmp eq ptr %2, null, !dbg !6434
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6435

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !dbg !6436
  store i32 %3, ptr %retval, align 4, !dbg !6437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6437

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6438

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %i, align 4, !dbg !6439
  %dec = add i32 %4, -1, !dbg !6439
  store i32 %dec, ptr %i, align 4, !dbg !6439
  br label %for.cond, !dbg !6440, !llvm.loop !6441

for.end:                                          ; preds = %for.cond
  store i32 511, ptr %i, align 4, !dbg !6443
  br label %for.cond2, !dbg !6445

for.cond2:                                        ; preds = %for.inc17, %for.end
  %5 = load i32, ptr %i, align 4, !dbg !6446
  %cmp3 = icmp sge i32 %5, 384, !dbg !6448
  br i1 %cmp3, label %for.body4, label %for.end19, !dbg !6449

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !dbg !6450
  %call = call i32 @major_to_index(i32 noundef %6) #17, !dbg !6453
  %idxprom5 = sext i32 %call to i64, !dbg !6454
  %arrayidx6 = getelementptr [255 x ptr], ptr @chrdevs, i64 0, i64 %idxprom5, !dbg !6454
  %7 = load ptr, ptr %arrayidx6, align 8, !dbg !6454
  store ptr %7, ptr %cd, align 8, !dbg !6455
  br label %for.cond7, !dbg !6456

for.cond7:                                        ; preds = %for.inc12, %for.body4
  %8 = load ptr, ptr %cd, align 8, !dbg !6457
  %tobool = icmp ne ptr %8, null, !dbg !6459
  br i1 %tobool, label %for.body8, label %for.end13, !dbg !6459

for.body8:                                        ; preds = %for.cond7
  %9 = load ptr, ptr %cd, align 8, !dbg !6460
  %major = getelementptr inbounds %struct.char_device_struct, ptr %9, i32 0, i32 1, !dbg !6462
  %10 = load i32, ptr %major, align 8, !dbg !6462
  %11 = load i32, ptr %i, align 4, !dbg !6463
  %cmp9 = icmp eq i32 %10, %11, !dbg !6464
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6465

if.then10:                                        ; preds = %for.body8
  br label %for.end13, !dbg !6466

if.end11:                                         ; preds = %for.body8
  br label %for.inc12, !dbg !6463

for.inc12:                                        ; preds = %if.end11
  %12 = load ptr, ptr %cd, align 8, !dbg !6467
  %next = getelementptr inbounds %struct.char_device_struct, ptr %12, i32 0, i32 0, !dbg !6468
  %13 = load ptr, ptr %next, align 8, !dbg !6468
  store ptr %13, ptr %cd, align 8, !dbg !6469
  br label %for.cond7, !dbg !6470, !llvm.loop !6471

for.end13:                                        ; preds = %if.then10, %for.cond7
  %14 = load ptr, ptr %cd, align 8, !dbg !6473
  %cmp14 = icmp eq ptr %14, null, !dbg !6475
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !6476

if.then15:                                        ; preds = %for.end13
  %15 = load i32, ptr %i, align 4, !dbg !6477
  store i32 %15, ptr %retval, align 4, !dbg !6478
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6478

if.end16:                                         ; preds = %for.end13
  br label %for.inc17, !dbg !6479

for.inc17:                                        ; preds = %if.end16
  %16 = load i32, ptr %i, align 4, !dbg !6480
  %dec18 = add i32 %16, -1, !dbg !6480
  store i32 %dec18, ptr %i, align 4, !dbg !6480
  br label %for.cond2, !dbg !6481, !llvm.loop !6482

for.end19:                                        ; preds = %for.cond2
  store i32 -16, ptr %retval, align 4, !dbg !6484
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6484

cleanup:                                          ; preds = %for.end19, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %cd) #16, !dbg !6485
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6485
  %17 = load i32, ptr %retval, align 4, !dbg !6485
  ret i32 %17, !dbg !6485
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6486 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6489 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !6494 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6496, metadata !DIExpression()), !dbg !6497
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6498
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6500
  br i1 %call, label %if.end, label %if.then, !dbg !6501

if.then:                                          ; preds = %entry
  br label %return, !dbg !6502

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6503
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6504
  %2 = load ptr, ptr %prev, align 8, !dbg !6504
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6505
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6506
  %4 = load ptr, ptr %next, align 8, !dbg !6506
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6507
  br label %return, !dbg !6508

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6508
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !6509 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6513, metadata !DIExpression()), !dbg !6514
  ret i1 true, !dbg !6515
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6516 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6520, metadata !DIExpression()), !dbg !6522
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6521, metadata !DIExpression()), !dbg !6523
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6524
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6525
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6526
  store ptr %0, ptr %prev1, align 8, !dbg !6527
  br label %do.body, !dbg !6528

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6529

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6531

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6529

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6533
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6533
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6533
  store volatile ptr %2, ptr %next4, align 8, !dbg !6533
  br label %do.end5, !dbg !6533

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6529

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6535
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6536 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6537 dso_local ptr @kobj_lookup(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !6540 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6542, metadata !DIExpression()), !dbg !6544
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6543, metadata !DIExpression()), !dbg !6545
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6546
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6547
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6548
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6549
  %3 = load ptr, ptr %next, align 8, !dbg !6549
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !6550
  ret void, !dbg !6551
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @cdev_get(ptr noundef %p) #0 align 16 !dbg !6552 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %owner = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6556, metadata !DIExpression()), !dbg !6559
  call void @llvm.lifetime.start.p0(i64 8, ptr %owner) #16, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %owner, metadata !6557, metadata !DIExpression()), !dbg !6561
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6562
  %owner1 = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 1, !dbg !6563
  %1 = load ptr, ptr %owner1, align 8, !dbg !6563
  store ptr %1, ptr %owner, align 8, !dbg !6561
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #16, !dbg !6564
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !6558, metadata !DIExpression()), !dbg !6565
  %2 = load ptr, ptr %owner, align 8, !dbg !6566
  %tobool = icmp ne ptr %2, null, !dbg !6566
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6568

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %owner, align 8, !dbg !6569
  %call = call zeroext i1 @try_module_get(ptr noundef %3) #17, !dbg !6570
  br i1 %call, label %if.end, label %if.then, !dbg !6571

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %retval, align 8, !dbg !6572
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6572

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6573
  %kobj2 = getelementptr inbounds %struct.cdev, ptr %4, i32 0, i32 0, !dbg !6574
  %call3 = call ptr @kobject_get_unless_zero(ptr noundef %kobj2) #17, !dbg !6575
  store ptr %call3, ptr %kobj, align 8, !dbg !6576
  %5 = load ptr, ptr %kobj, align 8, !dbg !6577
  %tobool4 = icmp ne ptr %5, null, !dbg !6577
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !6579

if.then5:                                         ; preds = %if.end
  %6 = load ptr, ptr %owner, align 8, !dbg !6580
  call void @module_put(ptr noundef %6) #17, !dbg !6581
  br label %if.end6, !dbg !6581

if.end6:                                          ; preds = %if.then5, %if.end
  %7 = load ptr, ptr %kobj, align 8, !dbg !6582
  store ptr %7, ptr %retval, align 8, !dbg !6583
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6583

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #16, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 8, ptr %owner) #16, !dbg !6584
  %8 = load ptr, ptr %retval, align 8, !dbg !6584
  ret ptr %8, !dbg !6584
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6585 dso_local zeroext i1 @try_module_get(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6588 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6592, metadata !DIExpression()), !dbg !6595
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6593, metadata !DIExpression()), !dbg !6596
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6594, metadata !DIExpression()), !dbg !6597
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6598
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6600
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6601
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6602
  br i1 %call, label %if.end, label %if.then, !dbg !6603

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6604

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6605
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6606
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6607
  store ptr %3, ptr %prev1, align 8, !dbg !6608
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6609
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6610
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6611
  store ptr %5, ptr %next2, align 8, !dbg !6612
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6613
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6614
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6615
  store ptr %7, ptr %prev3, align 8, !dbg !6616
  br label %do.body, !dbg !6617

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6618

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6620

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6618

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6622
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6622
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6622
  store volatile ptr %9, ptr %next6, align 8, !dbg !6622
  br label %do.end7, !dbg !6622

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6618

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !6625 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6629, metadata !DIExpression()), !dbg !6632
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6630, metadata !DIExpression()), !dbg !6633
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6631, metadata !DIExpression()), !dbg !6634
  ret i1 true, !dbg !6635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6636 dso_local ptr @kobject_get_unless_zero(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6637 dso_local void @kobj_unmap(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6640 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6642, metadata !DIExpression()), !dbg !6647
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6643, metadata !DIExpression()), !dbg !6648
  %0 = load i64, ptr %size.addr, align 8, !dbg !6649
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6650
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6651

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6652
  %tobool = icmp ne i64 %2, 0, !dbg !6652
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6653

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6654
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6644, metadata !DIExpression()), !dbg !6655
  %3 = load i64, ptr %size.addr, align 8, !dbg !6656
  %cmp = icmp ugt i64 %3, 8192, !dbg !6658
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6659

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6660
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6661
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6662
  store ptr %call, ptr %retval, align 8, !dbg !6663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6663

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6664
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6664
  store i32 %call2, ptr %index, align 4, !dbg !6665
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6666
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6667
  %9 = ptrtoint ptr %8 to i64, !dbg !6667
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6668
  %idxprom = zext i32 %call3 to i64, !dbg !6669
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6669
  %10 = load i32, ptr %index, align 4, !dbg !6670
  %idxprom4 = zext i32 %10 to i64, !dbg !6669
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6669
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6669
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6671
  %13 = load i64, ptr %size.addr, align 8, !dbg !6672
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6673
  store ptr %call6, ptr %retval, align 8, !dbg !6674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6674

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6675
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6676
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6677
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6678
  store ptr %call8, ptr %retval, align 8, !dbg !6679
  br label %return, !dbg !6679

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6680
  ret ptr %16, !dbg !6680
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6681 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !6682 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6686, metadata !DIExpression()), !dbg !6688
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6687, metadata !DIExpression()), !dbg !6689
  %0 = load i64, ptr %size.addr, align 8, !dbg !6690
  %tobool = icmp ne i64 %0, 0, !dbg !6690
  br i1 %tobool, label %if.end, label %if.then, !dbg !6692

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6693
  br label %return, !dbg !6693

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6694
  %cmp = icmp ule i64 %1, 8, !dbg !6696
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6697

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6698
  br label %return, !dbg !6698

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6699
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6701
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6702

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6703
  %cmp4 = icmp ule i64 %3, 96, !dbg !6704
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6705

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6706
  br label %return, !dbg !6706

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6707
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6709
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6710

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6711
  %cmp9 = icmp ule i64 %5, 192, !dbg !6712
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6713

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6714
  br label %return, !dbg !6714

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6715
  %cmp12 = icmp ule i64 %6, 8, !dbg !6717
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6718

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6719
  br label %return, !dbg !6719

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6720
  %cmp15 = icmp ule i64 %7, 16, !dbg !6722
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6723

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6724
  br label %return, !dbg !6724

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6725
  %cmp18 = icmp ule i64 %8, 32, !dbg !6727
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6728

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6729
  br label %return, !dbg !6729

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6730
  %cmp21 = icmp ule i64 %9, 64, !dbg !6732
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6733

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6734
  br label %return, !dbg !6734

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6735
  %cmp24 = icmp ule i64 %10, 128, !dbg !6737
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6738

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6739
  br label %return, !dbg !6739

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6740
  %cmp27 = icmp ule i64 %11, 256, !dbg !6742
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6743

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6744
  br label %return, !dbg !6744

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6745
  %cmp30 = icmp ule i64 %12, 512, !dbg !6747
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6748

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6749
  br label %return, !dbg !6749

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6750
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6752
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6753

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6754
  br label %return, !dbg !6754

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6755
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6757
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6758

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6759
  br label %return, !dbg !6759

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6760
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6762
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6763

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6764
  br label %return, !dbg !6764

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6765
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6767
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6768

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6769
  br label %return, !dbg !6769

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6770
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6772
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6773

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6774
  br label %return, !dbg !6774

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6775
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6777
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6778

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6779
  br label %return, !dbg !6779

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6780
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6782
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6783

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6784
  br label %return, !dbg !6784

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6785
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6787
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6788

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6789
  br label %return, !dbg !6789

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6790
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6792
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6793

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6794
  br label %return, !dbg !6794

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6795
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6797
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6798

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6799
  br label %return, !dbg !6799

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6800
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6802
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6803

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6804
  br label %return, !dbg !6804

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6805
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6807
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6808

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6809
  br label %return, !dbg !6809

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6810, !range !6812, !noundef !904
  %tobool69 = trunc i8 %25 to i1, !dbg !6810
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6813

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6814

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !6815, !srcloc !6818
  unreachable, !dbg !6815

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6819

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6820

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6821

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6823

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6821

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #16, !dbg !6825, !srcloc !6827
  br label %do.end75, !dbg !6825

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6821

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6828
  br label %return, !dbg !6828

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6829
  ret i32 %26, !dbg !6829
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6830 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !6836 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6840, metadata !DIExpression()), !dbg !6842
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6841, metadata !DIExpression()), !dbg !6843
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6844
  %and = and i32 %0, 17, !dbg !6844
  %cmp = icmp eq i32 %and, 0, !dbg !6844
  %lnot = xor i1 %cmp, true, !dbg !6844
  %lnot1 = xor i1 %lnot, true, !dbg !6844
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6844
  %conv = sext i32 %lnot.ext to i64, !dbg !6844
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6844
  %tobool = icmp ne i64 %expval, 0, !dbg !6844
  br i1 %tobool, label %if.then, label %if.end, !dbg !6846

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6847
  br label %return, !dbg !6847

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6848
  %and2 = and i32 %1, 1, !dbg !6850
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6850
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6851

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6852
  br label %return, !dbg !6852

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6853
  br label %return, !dbg !6853

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6855
  ret i32 %2, !dbg !6855
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6856 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6857 dso_local void @__compiletime_assert_245() #15

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cdev_dynamic_release(ptr noundef %kobj) #0 align 16 !dbg !6858 {
entry:
  %kobj.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6860, metadata !DIExpression()), !dbg !6865
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6866
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6861, metadata !DIExpression()), !dbg !6867
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6868
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6862, metadata !DIExpression()), !dbg !6868
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6868
  store ptr %0, ptr %__mptr, align 8, !dbg !6868
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6868
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6868
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6868
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6869
  %2 = load ptr, ptr %tmp, align 8, !dbg !6868
  store ptr %2, ptr %p, align 8, !dbg !6867
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !6870
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6864, metadata !DIExpression()), !dbg !6871
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !6872
  %parent1 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 2, !dbg !6873
  %4 = load ptr, ptr %parent1, align 8, !dbg !6873
  store ptr %4, ptr %parent, align 8, !dbg !6871
  %5 = load ptr, ptr %p, align 8, !dbg !6874
  call void @cdev_purge(ptr noundef %5) #17, !dbg !6875
  %6 = load ptr, ptr %p, align 8, !dbg !6876
  call void @kfree(ptr noundef %6) #17, !dbg !6877
  %7 = load ptr, ptr %parent, align 8, !dbg !6878
  call void @kobject_put(ptr noundef %7) #17, !dbg !6879
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !6880
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6880
  ret void, !dbg !6880
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cdev_purge(ptr noundef %cdev) #0 align 16 !dbg !6881 {
entry:
  %cdev.addr = alloca ptr, align 8
  %inode = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !6883, metadata !DIExpression()), !dbg !6888
  call void @spin_lock(ptr noundef @cdev_lock) #17, !dbg !6889
  br label %while.cond, !dbg !6890

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !6891
  %list = getelementptr inbounds %struct.cdev, ptr %0, i32 0, i32 3, !dbg !6892
  %call = call i32 @list_empty(ptr noundef %list) #17, !dbg !6893
  %tobool = icmp ne i32 %call, 0, !dbg !6894
  %lnot = xor i1 %tobool, true, !dbg !6894
  br i1 %lnot, label %while.body, label %while.end, !dbg !6890

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %inode) #16, !dbg !6895
  call void @llvm.dbg.declare(metadata ptr %inode, metadata !6884, metadata !DIExpression()), !dbg !6896
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6897
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6886, metadata !DIExpression()), !dbg !6897
  %1 = load ptr, ptr %cdev.addr, align 8, !dbg !6897
  %list1 = getelementptr inbounds %struct.cdev, ptr %1, i32 0, i32 3, !dbg !6897
  %next = getelementptr inbounds %struct.list_head, ptr %list1, i32 0, i32 0, !dbg !6897
  %2 = load ptr, ptr %next, align 8, !dbg !6897
  store ptr %2, ptr %__mptr, align 8, !dbg !6897
  %3 = load ptr, ptr %__mptr, align 8, !dbg !6897
  %add.ptr = getelementptr i8, ptr %3, i64 -552, !dbg !6897
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6897
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6898
  %4 = load ptr, ptr %tmp, align 8, !dbg !6897
  store ptr %4, ptr %inode, align 8, !dbg !6899
  %5 = load ptr, ptr %inode, align 8, !dbg !6900
  %i_devices = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 42, !dbg !6901
  call void @list_del_init(ptr noundef %i_devices) #17, !dbg !6902
  %6 = load ptr, ptr %inode, align 8, !dbg !6903
  %7 = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 43, !dbg !6904
  store ptr null, ptr %7, align 8, !dbg !6905
  call void @llvm.lifetime.end.p0(i64 8, ptr %inode) #16, !dbg !6906
  br label %while.cond, !dbg !6890, !llvm.loop !6907

while.end:                                        ; preds = %while.cond
  call void @spin_unlock(ptr noundef @cdev_lock) #17, !dbg !6908
  ret void, !dbg !6909
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #4 align 16 !dbg !6910 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6916, metadata !DIExpression()), !dbg !6917
  br label %do.body, !dbg !6918

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6920

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6918
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6918
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6918
  store ptr %1, ptr %tmp, align 8, !dbg !6920
  %2 = load ptr, ptr %tmp, align 8, !dbg !6918
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6922
  %cmp = icmp eq ptr %2, %3, !dbg !6923
  %conv = zext i1 %cmp to i32, !dbg !6923
  ret i32 %conv, !dbg !6924
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cdev_default_release(ptr noundef %kobj) #0 align 16 !dbg !6925 {
entry:
  %kobj.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6927, metadata !DIExpression()), !dbg !6932
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #16, !dbg !6933
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6928, metadata !DIExpression()), !dbg !6934
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6935
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6929, metadata !DIExpression()), !dbg !6935
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6935
  store ptr %0, ptr %__mptr, align 8, !dbg !6935
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6935
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6935
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6935
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6936
  %2 = load ptr, ptr %tmp, align 8, !dbg !6935
  store ptr %2, ptr %p, align 8, !dbg !6934
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !6937
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !6931, metadata !DIExpression()), !dbg !6938
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !6939
  %parent1 = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 2, !dbg !6940
  %4 = load ptr, ptr %parent1, align 8, !dbg !6940
  store ptr %4, ptr %parent, align 8, !dbg !6938
  %5 = load ptr, ptr %p, align 8, !dbg !6941
  call void @cdev_purge(ptr noundef %5) #17, !dbg !6942
  %6 = load ptr, ptr %parent, align 8, !dbg !6943
  call void @kobject_put(ptr noundef %6) #17, !dbg !6944
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !6945
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #16, !dbg !6945
  ret void, !dbg !6945
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6946 dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208}
!llvm.ident = !{!5209}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "chrdevs_lock", scope: !2, file: !3, line: 30, type: !615, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.char_dev.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/char_dev\22 -D KBUILD_BASENAME=\22char_dev\22 -D KBUILD_MODNAME=\22char_dev\22 -D __KBUILD_MODNAME=kmod_char_dev -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/char_dev.ll fs/char_dev.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !173, globals: !5112, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/char_dev.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "be101551fc6a12a08313cd81d0b7da44")
!4 = !{!5, !14, !21, !29, !45, !50, !57, !63, !68, !74, !80, !87, !92, !100, !108, !117, !122, !127, !133, !145, !151, !158, !163}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !22, line: 68, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!27 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !46, line: 32, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!49 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !64, line: 2052, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!67 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !69, line: 54, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!70 = !{!71, !72, !73}
!71 = !DIEnumerator(name: "USRQUOTA", value: 0)
!72 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!73 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !75, line: 45, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!78 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!79 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !81, line: 487, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!84 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!85 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!86 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !88, line: 65, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!91 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !93, line: 620, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!96 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!97 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!98 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!99 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !93, line: 597, baseType: !101, size: 32, elements: !102)
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!104 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!105 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!106 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!107 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !81, line: 547, baseType: !7, size: 32, elements: !109)
!109 = !{!110, !111, !112, !113, !114, !115, !116}
!110 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!111 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!112 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!113 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!114 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!115 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!116 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !81, line: 564, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!120 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!121 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !81, line: 577, baseType: !7, size: 32, elements: !123)
!123 = !{!124, !125, !126}
!124 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!125 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!126 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !81, line: 503, baseType: !7, size: 32, elements: !128)
!128 = !{!129, !130, !131, !132}
!129 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!130 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!131 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!132 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !134, line: 44, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144}
!136 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!137 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!138 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!139 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!140 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!141 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!142 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!143 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!144 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !146, line: 16, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "TT_NONE", value: 0)
!149 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!150 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !152, line: 51, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!155 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!156 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!157 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 10, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "false", value: 0)
!162 = !DIEnumerator(name: "true", value: 1)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !164, line: 364, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!165 = !{!166, !167, !168, !169, !170, !171, !172}
!166 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!167 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!168 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!169 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!170 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!171 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!172 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!173 = !{!7, !174, !176, !101, !177, !178, !179, !186, !355, !5110}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !175, line: 154, baseType: !7)
!175 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!177 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !175, line: 190, size: 128, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !175, line: 191, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !175, line: 191, baseType: !181, size: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !188, line: 14, size: 832, elements: !189)
!188 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!189 = !{!190, !5105, !5106, !5107, !5108, !5109}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !187, file: !188, line: 15, baseType: !191, size: 512)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !192, line: 64, size: 512, elements: !193)
!192 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!193 = !{!194, !198, !199, !201, !290, !5007, !5099, !5100, !5101, !5102, !5103, !5104}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !192, line: 65, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !191, file: !192, line: 66, baseType: !182, size: 128, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !192, line: 67, baseType: !200, size: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !191, file: !192, line: 68, baseType: !202, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !192, line: 168, size: 768, elements: !204)
!204 = !{!205, !206, !249, !250}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !203, file: !192, line: 169, baseType: !182, size: 128)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !203, file: !192, line: 170, baseType: !207, size: 32, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !208, line: 29, baseType: !209)
!208 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !208, line: 17, size: 32, elements: !210)
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !208, line: 18, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !209, file: !208, line: 18, size: 32, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !212, file: !208, line: 19, baseType: !215, size: 32)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !216, line: 14, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!217 = !{!218}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !215, file: !216, line: 15, baseType: !219, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !220, line: 44, baseType: !221)
!220 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !220, line: 14, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !220, line: 15, baseType: !224, size: 32)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !220, line: 15, size: 32, elements: !225)
!225 = !{!226, !231, !241}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !224, file: !220, line: 16, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !175, line: 174, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 172, size: 32, elements: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !228, file: !175, line: 173, baseType: !101, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !220, line: 24, baseType: !232, size: 16)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !220, line: 24, size: 16, elements: !233)
!233 = !{!234, !240}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !232, file: !220, line: 25, baseType: !235, size: 8)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !236, line: 17, baseType: !237)
!236 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !238, line: 21, baseType: !239)
!238 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!239 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !232, file: !220, line: 26, baseType: !235, size: 8, offset: 8)
!241 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !220, line: 28, baseType: !242, size: 32)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !224, file: !220, line: 28, size: 32, elements: !243)
!243 = !{!244, !248}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !242, file: !220, line: 29, baseType: !245, size: 16)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !236, line: 19, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !238, line: 24, baseType: !247)
!247 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !242, file: !220, line: 30, baseType: !245, size: 16, offset: 16)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !203, file: !192, line: 171, baseType: !191, size: 512, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !203, file: !192, line: 172, baseType: !251, size: 64, offset: 704)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !192, line: 133, size: 192, elements: !254)
!254 = !{!255, !262, !267}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !253, file: !192, line: 134, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!101, !260}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !192, line: 135, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!195, !260}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !253, file: !192, line: 136, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!101, !260, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !192, line: 125, size: 20736, elements: !274)
!274 = !{!275, !280, !284, !285, !289}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !273, file: !192, line: 126, baseType: !276, size: 192)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 192, elements: !278)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!278 = !{!279}
!279 = !DISubrange(count: 3)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !273, file: !192, line: 127, baseType: !281, size: 4096, offset: 192)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 4096, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !273, file: !192, line: 128, baseType: !101, size: 32, offset: 4288)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !273, file: !192, line: 129, baseType: !286, size: 16384, offset: 4320)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 16384, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 2048)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !273, file: !192, line: 130, baseType: !101, size: 32, offset: 20704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !191, file: !192, line: 69, baseType: !291, size: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !192, line: 116, size: 384, elements: !294)
!294 = !{!295, !299, !326, !4995, !4999, !5003}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !293, file: !192, line: 117, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !200}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !293, file: !192, line: 118, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !303, line: 254, size: 128, elements: !304)
!303 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!304 = !{!305, !319}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !302, file: !303, line: 255, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !200, !313, !277}
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !175, line: 66, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !311, line: 73, baseType: !312)
!311 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !311, line: 15, baseType: !178)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !303, line: 30, size: 128, elements: !315)
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !303, line: 31, baseType: !195, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !314, file: !303, line: 32, baseType: !318, size: 16, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !175, line: 24, baseType: !247)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !302, file: !303, line: 256, baseType: !320, size: 64, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!309, !200, !313, !195, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !175, line: 61, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !311, line: 72, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !311, line: 16, baseType: !177)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !293, file: !192, line: 119, baseType: !327, size: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !303, line: 84, size: 320, elements: !331)
!331 = !{!332, !333, !337, !4991, !4993}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !330, file: !303, line: 85, baseType: !195, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !330, file: !303, line: 86, baseType: !334, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!318, !200, !313, !101}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !330, file: !303, line: 88, baseType: !338, size: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!318, !200, !341, !101}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !303, line: 175, size: 512, elements: !343)
!343 = !{!344, !345, !346, !347, !4982, !4986, !4987}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !342, file: !303, line: 176, baseType: !314, size: 128)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !342, file: !303, line: 177, baseType: !323, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !342, file: !303, line: 178, baseType: !176, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !342, file: !303, line: 179, baseType: !348, size: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !64, line: 472, size: 1536, align: 64, elements: !353)
!353 = !{!354, !4818, !4819, !4820, !4821, !4822, !4823, !4824, !4825, !4976, !4977, !4978, !4979, !4980, !4981}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !352, file: !64, line: 473, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !64, line: 641, size: 4800, elements: !357)
!357 = !{!358, !359, !360, !368, !369, !376, !377, !380, !381, !4758, !4759, !4760, !4761, !4762, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4802, !4805, !4806, !4807, !4814, !4815, !4816, !4817}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !356, file: !64, line: 642, baseType: !318, size: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !356, file: !64, line: 643, baseType: !247, size: 16, offset: 16)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !356, file: !64, line: 644, baseType: !361, size: 32, offset: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !362, line: 23, baseType: !363)
!362 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 21, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !363, file: !362, line: 22, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !175, line: 37, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !311, line: 49, baseType: !7)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !356, file: !64, line: 645, baseType: !182, size: 128, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !356, file: !64, line: 646, baseType: !370, size: 32, offset: 192)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !362, line: 28, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !362, line: 26, size: 32, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !371, file: !362, line: 27, baseType: !374, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !175, line: 38, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !311, line: 50, baseType: !7)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !356, file: !64, line: 647, baseType: !7, size: 32, offset: 224)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !356, file: !64, line: 650, baseType: !378, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !64, line: 607, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !356, file: !64, line: 651, baseType: !378, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !356, file: !64, line: 654, baseType: !382, size: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !64, line: 1966, size: 2048, align: 512, elements: !385)
!385 = !{!386, !4586, !4596, !4600, !4604, !4608, !4612, !4616, !4620, !4624, !4628, !4629, !4633, !4637, !4674, !4703, !4707, !4713, !4717, !4721, !4725, !4729, !4733, !4739, !4743}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !384, file: !64, line: 1967, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!390, !355, !390, !7}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !392, line: 82, size: 1536, elements: !393)
!392 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!393 = !{!394, !395, !405, !413, !414, !434, !435, !439, !452, !4569, !4570, !4571, !4572, !4578, !4579, !4580}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !391, file: !392, line: 84, baseType: !7, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !391, file: !392, line: 85, baseType: !396, size: 32, offset: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !397, line: 275, baseType: !398)
!397 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !397, line: 275, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !398, file: !397, line: 275, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !397, line: 69, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !397, line: 64, size: 32, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !402, file: !397, line: 65, baseType: !7, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !391, file: !392, line: 86, baseType: !406, size: 128, offset: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !407, line: 38, size: 128, elements: !408)
!407 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!408 = !{!409, !411}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !406, file: !407, line: 39, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !406, file: !407, line: 39, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !391, file: !392, line: 87, baseType: !390, size: 64, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !391, file: !392, line: 88, baseType: !415, size: 128, offset: 256)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !392, line: 49, size: 128, elements: !416)
!416 = !{!417, !431}
!417 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !392, line: 50, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !392, line: 50, size: 64, elements: !419)
!419 = !{!420, !427}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !392, line: 51, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !418, file: !392, line: 51, size: 64, elements: !422)
!422 = !{!423, !426}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !421, file: !392, line: 52, baseType: !424, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !236, line: 21, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !238, line: 27, baseType: !7)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !421, file: !392, line: 52, baseType: !424, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !418, file: !392, line: 54, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !236, line: 23, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !238, line: 31, baseType: !430)
!430 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !415, file: !392, line: 56, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !391, file: !392, line: 89, baseType: !355, size: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !391, file: !392, line: 91, baseType: !436, size: 256, offset: 448)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 256, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !391, file: !392, line: 94, baseType: !440, size: 64, offset: 704)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !441, line: 25, size: 64, elements: !442)
!441 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !441, line: 26, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !441, line: 26, size: 64, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !444, file: !441, line: 28, baseType: !429, size: 64, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, scope: !444, file: !441, line: 30, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !444, file: !441, line: 30, size: 64, elements: !449)
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !448, file: !441, line: 31, baseType: !207, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !448, file: !441, line: 32, baseType: !101, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !391, file: !392, line: 95, baseType: !453, size: 64, offset: 768)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !392, line: 128, size: 1024, align: 512, elements: !456)
!456 = !{!457, !461, !462, !469, !475, !479, !483, !487, !488, !492, !496, !4559, !4563}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !455, file: !392, line: 129, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!101, !390, !7}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !455, file: !392, line: 130, baseType: !458, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !455, file: !392, line: 131, baseType: !463, size: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!101, !466, !468}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !455, file: !392, line: 132, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!101, !466, !7, !195, !473}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !455, file: !392, line: 134, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!101, !466}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !455, file: !392, line: 135, baseType: !480, size: 64, offset: 320)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!101, !390}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !455, file: !392, line: 136, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !390}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !455, file: !392, line: 137, baseType: !484, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !455, file: !392, line: 138, baseType: !489, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !390, !355}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !455, file: !392, line: 139, baseType: !493, size: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!277, !390, !277, !101}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !455, file: !392, line: 140, baseType: !497, size: 64, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!500, !4558}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !502, line: 70, size: 256, elements: !503)
!502 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!503 = !{!504, !505, !4554, !4555}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !501, file: !502, line: 71, baseType: !390, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !501, file: !502, line: 72, baseType: !506, size: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !64, line: 1190, size: 10752, elements: !508)
!508 = !{!509, !510, !513, !514, !515, !519, !998, !2098, !2138, !2223, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2240, !2244, !2245, !2840, !2843, !2905, !2908, !2909, !2910, !2951, !4487, !4488, !4489, !4490, !4491, !4492, !4495, !4497, !4504, !4505, !4506, !4507, !4508, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !507, file: !64, line: 1191, baseType: !182, size: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !507, file: !64, line: 1192, baseType: !511, size: 32, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !175, line: 21, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !175, line: 18, baseType: !424)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !507, file: !64, line: 1193, baseType: !239, size: 8, offset: 160)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !507, file: !64, line: 1194, baseType: !177, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !507, file: !64, line: 1195, baseType: !516, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !175, line: 52, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !311, line: 88, baseType: !518)
!518 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !507, file: !64, line: 1196, baseType: !520, size: 64, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !64, line: 2366, size: 576, elements: !522)
!522 = !{!523, !524, !525, !531, !535, !539, !543, !983, !984, !988, !990, !991, !992, !994, !995, !996, !997}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !521, file: !64, line: 2367, baseType: !195, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !521, file: !64, line: 2368, baseType: !101, size: 32, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !521, file: !64, line: 2376, baseType: !526, size: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!101, !529}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !502, line: 21, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !521, file: !64, line: 2377, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !64, line: 75, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !521, file: !64, line: 2378, baseType: !536, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!390, !520, !101, !195, !176}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !521, file: !64, line: 2380, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !506}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !521, file: !64, line: 2381, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !546)
!546 = !{!547, !548, !549, !553, !575, !601, !602, !603, !604, !608, !613, !614, !634, !690, !691, !692, !693, !694, !697, !698, !699, !707, !711, !738, !759, !760, !761, !762, !771, !794, !795, !798, !801, !802, !803, !804, !805, !806, !807, !812, !813, !941, !949, !950, !951, !953, !957, !958, !962, !963, !964, !965, !967, !968, !969, !976, !977, !978, !982}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !545, file: !15, line: 403, baseType: !14, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !545, file: !15, line: 406, baseType: !182, size: 128, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !15, line: 409, baseType: !550, size: 448, offset: 192)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 448, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 56)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !545, file: !15, line: 417, baseType: !554, size: 768, offset: 640)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !555)
!555 = !{!556, !557, !558, !559, !562}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !554, file: !15, line: 46, baseType: !191, size: 512)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !554, file: !15, line: 47, baseType: !544, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !554, file: !15, line: 48, baseType: !200, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !554, file: !15, line: 49, baseType: !560, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !554, file: !15, line: 50, baseType: !563, size: 64, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !565, line: 26, size: 256, elements: !566)
!565 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !564, file: !565, line: 27, baseType: !7, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !564, file: !565, line: 28, baseType: !569, size: 192, offset: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !570, line: 43, size: 192, elements: !571)
!570 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!571 = !{!572, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !569, file: !570, line: 44, baseType: !573, size: 32)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !216, line: 23, baseType: !215)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !569, file: !570, line: 45, baseType: !182, size: 128, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !545, file: !15, line: 418, baseType: !576, size: 64, offset: 1408)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !578)
!578 = !{!579, !580, !585, !589, !593, !597}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !577, file: !15, line: 54, baseType: !314, size: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !577, file: !15, line: 55, baseType: !581, size: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!309, !576, !584, !277}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !577, file: !15, line: 57, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!309, !576, !584, !195, !323}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !577, file: !15, line: 59, baseType: !590, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !544, !195}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !577, file: !15, line: 60, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!101, !544}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !577, file: !15, line: 61, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !544}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !545, file: !15, line: 419, baseType: !195, size: 64, offset: 1472)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !545, file: !15, line: 420, baseType: !195, size: 64, offset: 1536)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !545, file: !15, line: 421, baseType: !200, size: 64, offset: 1600)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !545, file: !15, line: 424, baseType: !605, size: 64, offset: 1664)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !545, file: !15, line: 425, baseType: !609, size: 64, offset: 1728)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !236, line: 20, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !238, line: 26, baseType: !101)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !545, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !545, file: !15, line: 435, baseType: !615, size: 256, offset: 1856)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !616, line: 66, size: 256, elements: !617)
!616 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!617 = !{!618, !627, !628, !633}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !615, file: !616, line: 67, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !620, line: 13, baseType: !621)
!620 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !175, line: 181, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 179, size: 64, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !622, file: !175, line: 180, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !236, line: 22, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !238, line: 30, baseType: !518)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !615, file: !616, line: 68, baseType: !573, size: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !615, file: !616, line: 70, baseType: !629, size: 32, offset: 96)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !630, line: 15, size: 32, elements: !631)
!630 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !629, file: !630, line: 20, baseType: !227, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !615, file: !616, line: 72, baseType: !182, size: 128, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !545, file: !15, line: 437, baseType: !635, size: 64, offset: 2112)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !637, line: 69, size: 320, elements: !638)
!637 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!638 = !{!639, !640, !641, !661, !663, !667, !668}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !636, file: !637, line: 70, baseType: !195, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !636, file: !637, line: 71, baseType: !544, size: 64, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !636, file: !637, line: 72, baseType: !642, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !637, line: 47, size: 256, elements: !645)
!645 = !{!646, !647, !653, !657}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !637, line: 49, baseType: !7, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !644, file: !637, line: 51, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!101, !195, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !644, file: !637, line: 53, baseType: !654, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!101, !277, !651}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !644, file: !637, line: 55, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !176}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !636, file: !637, line: 73, baseType: !662, size: 16, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !636, file: !637, line: 74, baseType: !664, size: 8, offset: 208)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !236, line: 16, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !238, line: 20, baseType: !666)
!666 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !636, file: !637, line: 75, baseType: !235, size: 8, offset: 216)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !636, file: !637, line: 76, baseType: !669, size: 64, offset: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !636, file: !637, line: 76, size: 64, elements: !670)
!670 = !{!671, !672, !679}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !669, file: !637, line: 77, baseType: !176, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !669, file: !637, line: 78, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !637, line: 86, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !675, file: !637, line: 87, baseType: !7, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !675, file: !637, line: 88, baseType: !277, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !669, file: !637, line: 79, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !637, line: 92, size: 256, elements: !683)
!683 = !{!684, !685, !686, !688, !689}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !682, file: !637, line: 94, baseType: !7, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !682, file: !637, line: 95, baseType: !7, size: 32, offset: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !682, file: !637, line: 96, baseType: !687, size: 64, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !682, file: !637, line: 97, baseType: !642, size: 64, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !682, file: !637, line: 98, baseType: !176, size: 64, offset: 192)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !545, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !545, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !545, file: !15, line: 442, baseType: !605, size: 64, offset: 2240)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !545, file: !15, line: 443, baseType: !609, size: 64, offset: 2304)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !545, file: !15, line: 444, baseType: !695, size: 8, offset: 2368)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !175, line: 35, baseType: !696)
!696 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !545, file: !15, line: 451, baseType: !695, size: 8, offset: 2376)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !545, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !545, file: !15, line: 455, baseType: !700, size: 64, offset: 2432)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !702, line: 23, size: 96, elements: !703)
!702 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!703 = !{!704, !705, !706}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !701, file: !702, line: 24, baseType: !101, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !701, file: !702, line: 24, baseType: !101, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !701, file: !702, line: 24, baseType: !101, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !545, file: !15, line: 458, baseType: !708, size: 64, offset: 2496)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!101}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !545, file: !15, line: 460, baseType: !712, size: 4032, align: 512, offset: 2560)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !713, size: 4032, elements: !736)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !714)
!714 = !{!715, !716, !717}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !713, file: !15, line: 363, baseType: !176, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !713, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !713, file: !15, line: 367, baseType: !718, size: 448, offset: 128)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !718, file: !15, line: 320, baseType: !544, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !15, line: 321, baseType: !722, size: 384, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !723, line: 40, size: 384, elements: !724)
!723 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !722, file: !723, line: 41, baseType: !726, size: 384, align: 64)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 384, align: 64, elements: !734)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !728, line: 5, size: 192, align: 64, elements: !729)
!728 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!729 = !{!730, !731, !733}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !727, file: !728, line: 6, baseType: !177, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !727, file: !728, line: 7, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !727, file: !728, line: 8, baseType: !732, size: 64, offset: 128)
!734 = !{!735}
!735 = !DISubrange(count: 2)
!736 = !{!737}
!737 = !DISubrange(count: 7)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !545, file: !15, line: 463, baseType: !739, size: 192, offset: 6592)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !740, line: 8, size: 192, elements: !741)
!740 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!741 = !{!742, !743, !745}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !739, file: !740, line: 10, baseType: !7, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !739, file: !740, line: 11, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !739, file: !740, line: 12, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !748, line: 59, size: 48, elements: !749)
!748 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!749 = !{!750, !754, !755, !756, !757, !758}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !747, file: !748, line: 60, baseType: !751, size: 16)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !236, line: 18, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !238, line: 23, baseType: !753)
!753 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !747, file: !748, line: 61, baseType: !751, size: 16, offset: 16)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !747, file: !748, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !747, file: !748, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !747, file: !748, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !747, file: !748, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !545, file: !15, line: 465, baseType: !177, size: 64, offset: 6784)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !545, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !545, file: !15, line: 470, baseType: !182, size: 128, offset: 6912)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !545, file: !15, line: 471, baseType: !763, size: 64, offset: 7040)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !765, line: 33, size: 96, elements: !766)
!765 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!766 = !{!767, !768, !769, !770}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !764, file: !765, line: 37, baseType: !101, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !764, file: !765, line: 43, baseType: !101, size: 32, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !764, file: !765, line: 45, baseType: !247, size: 16, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !765, line: 47, baseType: !247, size: 16, offset: 80)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !545, file: !15, line: 476, baseType: !772, size: 64, offset: 7104)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !774)
!774 = !{!775, !791, !792, !793}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !773, file: !15, line: 379, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !778, line: 204, baseType: !779)
!778 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !778, line: 197, size: 192, elements: !780)
!780 = !{!781, !783, !784, !785, !787, !789}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !779, file: !778, line: 198, baseType: !782, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !778, line: 21, baseType: !425)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !779, file: !778, line: 199, baseType: !239, size: 8, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !779, file: !778, line: 200, baseType: !239, size: 8, offset: 40)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !779, file: !778, line: 201, baseType: !786, size: 16, offset: 48)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !778, line: 17, baseType: !246)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !779, file: !778, line: 202, baseType: !788, size: 64, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !778, line: 16, baseType: !429)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !779, file: !778, line: 203, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !778, line: 22, baseType: !429)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !773, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !773, file: !15, line: 381, baseType: !277, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !773, file: !15, line: 382, baseType: !277, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !545, file: !15, line: 477, baseType: !773, size: 256, offset: 7168)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !545, file: !15, line: 480, baseType: !796, size: 64, offset: 7424)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !545, file: !15, line: 483, baseType: !799, size: 64, offset: 7488)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !545, file: !15, line: 488, baseType: !277, size: 64, offset: 7552)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !545, file: !15, line: 492, baseType: !176, size: 64, offset: 7616)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !545, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !545, file: !15, line: 495, baseType: !176, size: 64, offset: 7744)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !545, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !545, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !545, file: !15, line: 500, baseType: !808, size: 64, offset: 7872)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !810, line: 45, baseType: !811)
!810 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !545, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !545, file: !15, line: 504, baseType: !814, size: 64, offset: 8000)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !817, line: 96, size: 192, elements: !818)
!817 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!818 = !{!819, !820, !901, !905}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !816, file: !817, line: 97, baseType: !7, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !816, file: !817, line: 98, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !817, line: 24, size: 3072, elements: !823)
!823 = !{!824, !826, !827, !828, !829, !853, !854, !855, !856, !874, !886, !887, !898, !899, !900}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !822, file: !817, line: 26, baseType: !825, size: 128)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !619, size: 128, elements: !734)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !822, file: !817, line: 27, baseType: !825, size: 128, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !822, file: !817, line: 28, baseType: !101, size: 32, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !822, file: !817, line: 31, baseType: !207, size: 32, align: 512, offset: 512)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !822, file: !817, line: 32, baseType: !830, size: 960, offset: 576)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !831, line: 206, size: 960, elements: !832)
!831 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!832 = !{!833, !842, !847, !849, !850, !852}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !830, file: !831, line: 207, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !175, line: 232, size: 128, align: 64, elements: !836)
!836 = !{!837, !838}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !835, file: !175, line: 233, baseType: !834, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !835, file: !175, line: 234, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{null, !834}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !830, file: !831, line: 208, baseType: !843, size: 256, offset: 64)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !844, size: 256, elements: !845)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!845 = !{!846}
!846 = !DISubrange(count: 4)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !830, file: !831, line: 209, baseType: !848, size: 256, offset: 320)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !845)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !830, file: !831, line: 213, baseType: !178, size: 64, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !830, file: !831, line: 215, baseType: !851, size: 256, offset: 640)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !178, size: 256, elements: !845)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !831, line: 216, baseType: !235, size: 8, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !822, file: !817, line: 33, baseType: !177, size: 64, offset: 1536)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !822, file: !817, line: 34, baseType: !177, size: 64, offset: 1600)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !822, file: !817, line: 35, baseType: !695, size: 8, offset: 1664)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !822, file: !817, line: 36, baseType: !857, size: 320, offset: 1728)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !858, line: 11, size: 320, elements: !859)
!858 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!859 = !{!860, !867, !868, !873}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !857, file: !858, line: 16, baseType: !861, size: 128)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !175, line: 198, size: 128, elements: !862)
!862 = !{!863, !865}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !861, file: !175, line: 199, baseType: !864, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !861, file: !175, line: 199, baseType: !866, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !857, file: !858, line: 17, baseType: !177, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !857, file: !858, line: 18, baseType: !869, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !857, file: !858, line: 19, baseType: !424, size: 32, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !822, file: !817, line: 37, baseType: !875, size: 256, offset: 2048)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !876, line: 98, size: 256, elements: !877)
!876 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!877 = !{!878, !879, !880}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !875, file: !876, line: 99, baseType: !619, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !875, file: !876, line: 100, baseType: !182, size: 128, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !875, file: !876, line: 101, baseType: !881, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !876, line: 21, baseType: !882)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !822, file: !817, line: 38, baseType: !835, size: 128, align: 64, offset: 2304)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !822, file: !817, line: 39, baseType: !888, size: 64, offset: 2432)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !817, line: 49, size: 768, elements: !890)
!890 = !{!891, !892, !893, !894, !895, !896, !897}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !889, file: !817, line: 50, baseType: !207, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !889, file: !817, line: 51, baseType: !848, size: 256, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !889, file: !817, line: 53, baseType: !848, size: 256, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !889, file: !817, line: 54, baseType: !177, size: 64, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !889, file: !817, line: 55, baseType: !888, size: 64, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !889, file: !817, line: 56, baseType: !101, size: 32, offset: 704)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !889, file: !817, line: 57, baseType: !101, size: 32, offset: 736)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !822, file: !817, line: 40, baseType: !177, size: 64, offset: 2496)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !822, file: !817, line: 42, baseType: !101, size: 32, offset: 2560)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !822, file: !817, line: 43, baseType: !815, size: 64, offset: 2624)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !816, file: !817, line: 99, baseType: !902, offset: 128)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !903, line: 211, elements: !904)
!903 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!904 = !{}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !816, file: !817, line: 100, baseType: !906, size: 64, offset: 128)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !817, line: 63, size: 3008, elements: !908)
!908 = !{!909, !910, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !940}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !907, file: !817, line: 64, baseType: !888, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !907, file: !817, line: 65, baseType: !911, size: 192, offset: 64)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 192, elements: !278)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !907, file: !817, line: 67, baseType: !101, size: 32, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !907, file: !817, line: 68, baseType: !615, size: 256, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !907, file: !817, line: 69, baseType: !207, size: 32, offset: 576)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !907, file: !817, line: 70, baseType: !615, size: 256, offset: 640)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !907, file: !817, line: 71, baseType: !177, size: 64, offset: 896)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !907, file: !817, line: 72, baseType: !177, size: 64, offset: 960)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !907, file: !817, line: 73, baseType: !177, size: 64, offset: 1024)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !907, file: !817, line: 74, baseType: !177, size: 64, offset: 1088)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !907, file: !817, line: 75, baseType: !177, size: 64, offset: 1152)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !907, file: !817, line: 76, baseType: !177, size: 64, offset: 1216)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !907, file: !817, line: 77, baseType: !177, size: 64, offset: 1280)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !907, file: !817, line: 78, baseType: !177, size: 64, offset: 1344)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !907, file: !817, line: 79, baseType: !695, size: 8, offset: 1408)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !907, file: !817, line: 80, baseType: !177, size: 64, offset: 1472)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !907, file: !817, line: 81, baseType: !615, size: 256, offset: 1536)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !907, file: !817, line: 82, baseType: !564, size: 256, offset: 1792)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !907, file: !817, line: 84, baseType: !227, size: 32, offset: 2048)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !907, file: !817, line: 87, baseType: !177, size: 64, offset: 2112)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !907, file: !817, line: 88, baseType: !177, size: 64, offset: 2176)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !907, file: !817, line: 89, baseType: !932, size: 704, offset: 2240)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !876, line: 111, size: 704, elements: !933)
!933 = !{!934, !935, !936, !939}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !932, file: !876, line: 112, baseType: !875, size: 256)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !932, file: !876, line: 113, baseType: !857, size: 320, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !932, file: !876, line: 116, baseType: !937, size: 64, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !876, line: 18, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !932, file: !876, line: 117, baseType: !101, size: 32, offset: 640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !907, file: !817, line: 90, baseType: !815, size: 64, offset: 2944)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !545, file: !15, line: 515, baseType: !942, size: 64, offset: 8064)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !944, line: 117, size: 128, elements: !945)
!944 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !943, file: !944, line: 118, baseType: !611, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !943, file: !944, line: 119, baseType: !611, size: 32, offset: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !943, file: !944, line: 120, baseType: !178, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !545, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !545, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !545, file: !15, line: 520, baseType: !952, size: 64, offset: 8192)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !545, file: !15, line: 523, baseType: !954, size: 64, offset: 8256)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !545, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !545, file: !15, line: 525, baseType: !959, size: 64, offset: 8384)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !545, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !545, file: !15, line: 533, baseType: !176, size: 64, offset: 8512)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !545, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !545, file: !15, line: 535, baseType: !966, size: 64, offset: 8640)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !545, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !545, file: !15, line: 539, baseType: !101, size: 32, offset: 8736)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !545, file: !15, line: 540, baseType: !970, size: 64, offset: 8768)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !972, line: 32, size: 64, elements: !973)
!972 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !971, file: !972, line: 33, baseType: !611, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !971, file: !972, line: 34, baseType: !611, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !545, file: !15, line: 563, baseType: !182, size: 128, offset: 8832)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !545, file: !15, line: 565, baseType: !182, size: 128, offset: 8960)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !545, file: !15, line: 568, baseType: !979, size: 64, offset: 9088)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{null}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !545, file: !15, line: 570, baseType: !227, size: 32, offset: 9152)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !521, file: !64, line: 2382, baseType: !520, size: 64, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !521, file: !64, line: 2383, baseType: !985, size: 64, offset: 512)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !175, line: 194, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !985, file: !175, line: 195, baseType: !864, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !521, file: !64, line: 2385, baseType: !989, offset: 576)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !903, line: 206, elements: !904)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !521, file: !64, line: 2386, baseType: !989, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !521, file: !64, line: 2387, baseType: !989, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !521, file: !64, line: 2388, baseType: !993, offset: 576)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, elements: !278)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !521, file: !64, line: 2390, baseType: !989, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !521, file: !64, line: 2391, baseType: !989, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !521, file: !64, line: 2392, baseType: !989, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !521, file: !64, line: 2393, baseType: !989, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !507, file: !64, line: 1197, baseType: !999, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !64, line: 2057, size: 1664, elements: !1002)
!1002 = !{!1003, !1007, !1011, !1012, !1016, !1040, !1044, !1045, !1046, !1050, !1054, !1058, !1059, !1060, !1066, !1070, !1071, !2023, !2024, !2025, !2026, !2030, !2034, !2081, !2096, !2097}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1001, file: !64, line: 2058, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!355, !506}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1001, file: !64, line: 2059, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !355}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1001, file: !64, line: 2060, baseType: !1008, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1001, file: !64, line: 2062, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !355, !101}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1001, file: !64, line: 2063, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!101, !355, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !46, line: 42, size: 384, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1021, file: !46, line: 43, baseType: !178, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1021, file: !46, line: 45, baseType: !178, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1021, file: !46, line: 52, baseType: !516, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1021, file: !46, line: 53, baseType: !516, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1021, file: !46, line: 55, baseType: !45, size: 32, offset: 256)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1021, file: !46, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1021, file: !46, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1021, file: !46, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1021, file: !46, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1021, file: !46, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1021, file: !46, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1021, file: !46, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1021, file: !46, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1021, file: !46, line: 78, baseType: !1037, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !46, line: 78, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1001, file: !64, line: 2064, baseType: !1041, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!101, !355}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1001, file: !64, line: 2065, baseType: !1008, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1001, file: !64, line: 2066, baseType: !540, size: 64, offset: 448)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1001, file: !64, line: 2067, baseType: !1047, size: 64, offset: 512)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!101, !506, !101}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1001, file: !64, line: 2068, baseType: !1051, size: 64, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!101, !506, !63}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1001, file: !64, line: 2069, baseType: !1055, size: 64, offset: 640)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!101, !506}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1001, file: !64, line: 2070, baseType: !1051, size: 64, offset: 704)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1001, file: !64, line: 2071, baseType: !1055, size: 64, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1001, file: !64, line: 2072, baseType: !1061, size: 64, offset: 832)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!101, !390, !1064}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !64, line: 62, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1001, file: !64, line: 2073, baseType: !1067, size: 64, offset: 896)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!101, !506, !744, !277}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1001, file: !64, line: 2074, baseType: !540, size: 64, offset: 960)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1001, file: !64, line: 2076, baseType: !1072, size: 64, offset: 1024)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!101, !1075, !390}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1077, line: 17, size: 960, elements: !1078)
!1077 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1109, !1110, !2022}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1076, file: !1077, line: 18, baseType: !277, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1076, file: !1077, line: 19, baseType: !323, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1076, file: !1077, line: 20, baseType: !323, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1076, file: !1077, line: 21, baseType: !323, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1076, file: !1077, line: 22, baseType: !323, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1076, file: !1077, line: 23, baseType: !516, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1076, file: !1077, line: 24, baseType: !516, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1076, file: !1077, line: 25, baseType: !615, size: 256, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1076, file: !1077, line: 26, baseType: !1088, size: 64, offset: 704)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1090)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1077, line: 32, size: 256, elements: !1091)
!1091 = !{!1092, !1097, !1101, !1105}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1090, file: !1077, line: 33, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!176, !1075, !1096}
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1090, file: !1077, line: 34, baseType: !1098, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !1075, !176}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1090, file: !1077, line: 35, baseType: !1102, size: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!176, !1075, !176, !1096}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1090, file: !1077, line: 36, baseType: !1106, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!101, !1075, !176}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1076, file: !1077, line: 27, baseType: !101, size: 32, offset: 768)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1076, file: !1077, line: 28, baseType: !1111, size: 64, offset: 832)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !64, line: 994, size: 1856, align: 64, elements: !1114)
!1114 = !{!1115, !1126, !1127, !1129, !1130, !1131, !1132, !1133, !1194, !1394, !1403, !1409, !1410, !2012, !2013, !2014, !2015, !2017, !2018, !2021}
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !64, line: 995, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1113, file: !64, line: 995, size: 128, elements: !1117)
!1117 = !{!1118, !1124, !1125}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1116, file: !64, line: 996, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1120, line: 60, size: 64, elements: !1121)
!1120 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1119, file: !1120, line: 61, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1116, file: !64, line: 997, baseType: !835, size: 128, align: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1116, file: !64, line: 998, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1113, file: !64, line: 1005, baseType: !207, size: 32, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1113, file: !64, line: 1006, baseType: !1128, size: 32, offset: 160)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !175, line: 156, baseType: !7)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1113, file: !64, line: 1007, baseType: !619, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1113, file: !64, line: 1008, baseType: !615, size: 256, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1113, file: !64, line: 1009, baseType: !516, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1113, file: !64, line: 1010, baseType: !7, size: 32, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1113, file: !64, line: 1011, baseType: !1134, size: 256, offset: 640)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !64, line: 948, size: 256, elements: !1135)
!1135 = !{!1136, !1157, !1190, !1191, !1192, !1193}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1134, file: !64, line: 949, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1138, line: 34, baseType: !1139)
!1138 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1138, line: 25, size: 64, elements: !1140)
!1140 = !{!1141}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1139, file: !1138, line: 26, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1143, line: 27, baseType: !1144)
!1143 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1143, line: 13, size: 64, elements: !1145)
!1145 = !{!1146, !1156}
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1144, file: !1143, line: 14, baseType: !1147, size: 32)
!1147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1144, file: !1143, line: 14, size: 32, elements: !1148)
!1148 = !{!1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1147, file: !1143, line: 15, baseType: !227, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !1147, file: !1143, line: 16, baseType: !1151, size: 32)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1147, file: !1143, line: 16, size: 32, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1151, file: !1143, line: 18, baseType: !235, size: 8)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1151, file: !1143, line: 19, baseType: !1155, size: 24, offset: 8)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 24, elements: !278)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1144, file: !1143, line: 26, baseType: !219, size: 32, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1134, file: !64, line: 950, baseType: !1158, size: 64, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !1160)
!1160 = !{!1161, !1167, !1168, !1169, !1171, !1172, !1179, !1180}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1159, file: !6, line: 61, baseType: !1162, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1163, line: 113, baseType: !1164)
!1163 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1163, line: 111, size: 32, elements: !1165)
!1165 = !{!1166}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1164, file: !1163, line: 112, baseType: !227, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1159, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1159, file: !6, line: 63, baseType: !207, size: 32, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1159, file: !6, line: 65, baseType: !1170, size: 256, offset: 128)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 256, elements: !845)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1159, file: !6, line: 66, baseType: !985, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1159, file: !6, line: 68, baseType: !1173, size: 192, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1174, line: 41, baseType: !1175)
!1174 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1174, line: 37, size: 192, elements: !1176)
!1176 = !{!1177, !1178}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1175, file: !1174, line: 38, baseType: !207, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1175, file: !1174, line: 39, baseType: !182, size: 128, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1159, file: !6, line: 69, baseType: !835, size: 128, align: 64, offset: 640)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1159, file: !6, line: 70, baseType: !1181, offset: 768)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, elements: !1188)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1182, file: !6, line: 55, baseType: !101, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1182, file: !6, line: 56, baseType: !1186, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!1188 = !{!1189}
!1189 = !DISubrange(count: -1)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1134, file: !64, line: 951, baseType: !5, size: 32, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1134, file: !64, line: 952, baseType: !361, size: 32, offset: 160)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1134, file: !64, line: 952, baseType: !361, size: 32, offset: 192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1134, file: !64, line: 953, baseType: !101, size: 32, offset: 224)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1113, file: !64, line: 1012, baseType: !1195, size: 64, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1198, line: 110, size: 1472, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1216, !1217, !1218, !1219, !1220, !1221, !1339, !1340, !1341, !1342, !1343, !1374, !1377, !1381, !1389}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1197, file: !1198, line: 111, baseType: !619, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1197, file: !1198, line: 112, baseType: !361, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1197, file: !1198, line: 113, baseType: !370, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1197, file: !1198, line: 114, baseType: !361, size: 32, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1197, file: !1198, line: 115, baseType: !370, size: 32, offset: 160)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1197, file: !1198, line: 116, baseType: !361, size: 32, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1197, file: !1198, line: 117, baseType: !370, size: 32, offset: 224)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1197, file: !1198, line: 118, baseType: !361, size: 32, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1197, file: !1198, line: 119, baseType: !370, size: 32, offset: 288)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1197, file: !1198, line: 120, baseType: !7, size: 32, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1197, file: !1198, line: 121, baseType: !1211, size: 64, offset: 384)
!1211 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1212, line: 24, baseType: !1213)
!1212 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1212, line: 24, size: 64, elements: !1214)
!1214 = !{!1215}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1213, file: !1212, line: 24, baseType: !428, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1197, file: !1198, line: 122, baseType: !1211, size: 64, offset: 448)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1197, file: !1198, line: 123, baseType: !1211, size: 64, offset: 512)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1197, file: !1198, line: 124, baseType: !1211, size: 64, offset: 576)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1197, file: !1198, line: 125, baseType: !1211, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1197, file: !1198, line: 127, baseType: !239, size: 8, offset: 704)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1197, file: !1198, line: 129, baseType: !1222, size: 64, offset: 768)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1224, line: 195, size: 1728, elements: !1225)
!1224 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1225 = !{!1226, !1227, !1230, !1235, !1244, !1247, !1248, !1255, !1256, !1257, !1258, !1261, !1262, !1263, !1264, !1265, !1303, !1324}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1223, file: !1224, line: 196, baseType: !1162, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1223, file: !1224, line: 197, baseType: !1228, size: 32, offset: 32)
!1228 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1224, line: 28, baseType: !1229)
!1229 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !175, line: 104, baseType: !611)
!1230 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1224, line: 198, baseType: !1231, size: 192, offset: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1224, line: 198, size: 192, elements: !1232)
!1232 = !{!1233, !1234}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1231, file: !1224, line: 199, baseType: !182, size: 128)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1231, file: !1224, line: 200, baseType: !727, size: 192, align: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1223, file: !1224, line: 205, baseType: !1236, size: 320, offset: 256)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1237, line: 48, size: 320, elements: !1238)
!1237 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1238 = !{!1239, !1240, !1241, !1242, !1243}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1236, file: !1237, line: 49, baseType: !619, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1236, file: !1237, line: 55, baseType: !619, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1236, file: !1237, line: 57, baseType: !629, size: 32, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1236, file: !1237, line: 59, baseType: !573, size: 32, offset: 160)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1236, file: !1237, line: 60, baseType: !182, size: 128, offset: 192)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1223, file: !1224, line: 206, baseType: !1245, size: 64, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1224, line: 206, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1223, file: !1224, line: 207, baseType: !176, size: 64, offset: 640)
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1224, line: 208, baseType: !1249, size: 64, offset: 704)
!1249 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1224, line: 208, size: 64, elements: !1250)
!1250 = !{!1251, !1254}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1249, file: !1224, line: 209, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1253, line: 8, baseType: !626)
!1253 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1249, file: !1224, line: 210, baseType: !1252, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1223, file: !1224, line: 212, baseType: !1252, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1223, file: !1224, line: 213, baseType: !361, size: 32, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1223, file: !1224, line: 214, baseType: !370, size: 32, offset: 864)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1223, file: !1224, line: 215, baseType: !1259, size: 32, offset: 896)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1224, line: 31, baseType: !1260)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !175, line: 110, baseType: !424)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1223, file: !1224, line: 216, baseType: !247, size: 16, offset: 928)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1223, file: !1224, line: 217, baseType: !247, size: 16, offset: 944)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1223, file: !1224, line: 221, baseType: !753, size: 16, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1223, file: !1224, line: 228, baseType: !177, size: 64, offset: 1024)
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1224, line: 245, baseType: !1266, size: 320, offset: 1088)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1224, line: 245, size: 320, elements: !1267)
!1267 = !{!1268, !1295}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1266, file: !1224, line: 246, baseType: !1269, size: 320)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1224, line: 114, size: 320, elements: !1270)
!1270 = !{!1271, !1272, !1284, !1287, !1294}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1269, file: !1224, line: 116, baseType: !177, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !1224, line: 117, baseType: !1273, size: 64, offset: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !1224, line: 117, size: 64, elements: !1274)
!1274 = !{!1275, !1283}
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !1224, line: 118, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1273, file: !1224, line: 118, size: 64, elements: !1277)
!1277 = !{!1278, !1279}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1276, file: !1224, line: 120, baseType: !245, size: 16)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1276, file: !1224, line: 121, baseType: !1280, size: 48, offset: 16)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 48, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 6)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1273, file: !1224, line: 127, baseType: !177, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1269, file: !1224, line: 129, baseType: !1285, size: 64, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1224, line: 102, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1269, file: !1224, line: 130, baseType: !1288, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1224, line: 108, size: 192, elements: !1290)
!1290 = !{!1291, !1292, !1293}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1289, file: !1224, line: 109, baseType: !835, size: 128, align: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1289, file: !1224, line: 110, baseType: !1162, size: 32, offset: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1289, file: !1224, line: 111, baseType: !695, size: 8, offset: 160)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1269, file: !1224, line: 131, baseType: !195, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !1224, line: 247, baseType: !1296, size: 320)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1266, file: !1224, line: 247, size: 320, elements: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1296, file: !1224, line: 248, baseType: !177, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1296, file: !1224, line: 249, baseType: !177, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1296, file: !1224, line: 250, baseType: !1285, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1296, file: !1224, line: 251, baseType: !1288, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1296, file: !1224, line: 252, baseType: !277, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !1224, line: 260, baseType: !1304, size: 256, offset: 1408)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1223, file: !1224, line: 260, size: 256, elements: !1305)
!1305 = !{!1306, !1312}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1304, file: !1224, line: 261, baseType: !1307, size: 256)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1224, line: 134, size: 256, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1307, file: !1224, line: 135, baseType: !176, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1307, file: !1224, line: 136, baseType: !1311, size: 256)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 256, elements: !845)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1224, line: 262, baseType: !1313, size: 256)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1224, line: 262, size: 256, elements: !1314)
!1314 = !{!1315, !1316}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1313, file: !1224, line: 264, baseType: !182, size: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1313, file: !1224, line: 265, baseType: !1317, size: 128, offset: 128)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1318, line: 22, size: 128, elements: !1319)
!1318 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1319 = !{!1320, !1323}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1317, file: !1318, line: 23, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1318, line: 23, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1317, file: !1318, line: 24, baseType: !177, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1223, file: !1224, line: 280, baseType: !1325, size: 64, offset: 1664)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1224, line: 176, size: 192, elements: !1327)
!1327 = !{!1328, !1337, !1338}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1326, file: !1224, line: 177, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1224, line: 171, baseType: !1330)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!101, !1222, !1333, !1335, !1222}
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1286)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1326, file: !1224, line: 178, baseType: !1222, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1326, file: !1224, line: 179, baseType: !1285, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1197, file: !1198, line: 130, baseType: !1222, size: 64, offset: 832)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1197, file: !1198, line: 131, baseType: !1222, size: 64, offset: 896)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1197, file: !1198, line: 132, baseType: !1222, size: 64, offset: 960)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1197, file: !1198, line: 135, baseType: !176, size: 64, offset: 1024)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1197, file: !1198, line: 137, baseType: !1344, size: 64, offset: 1088)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1346, line: 14, size: 1088, elements: !1347)
!1346 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1347 = !{!1348, !1349, !1358, !1359, !1360, !1361, !1362, !1363}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1345, file: !1346, line: 15, baseType: !1162, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1345, file: !1346, line: 17, baseType: !1350, size: 320, offset: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1351, line: 22, size: 320, elements: !1352)
!1351 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1350, file: !1351, line: 23, baseType: !573, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1350, file: !1351, line: 24, baseType: !625, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1350, file: !1351, line: 26, baseType: !182, size: 128, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1350, file: !1351, line: 28, baseType: !1357, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1345, file: !1346, line: 19, baseType: !177, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1345, file: !1346, line: 20, baseType: !619, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1345, file: !1346, line: 23, baseType: !861, size: 128, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1345, file: !1346, line: 24, baseType: !361, size: 32, offset: 640)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1345, file: !1346, line: 29, baseType: !619, size: 64, offset: 704)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1345, file: !1346, line: 36, baseType: !1364, size: 320, offset: 768)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1365, line: 15, size: 320, elements: !1366)
!1365 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1364, file: !1365, line: 16, baseType: !573, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1364, file: !1365, line: 18, baseType: !101, size: 32, offset: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1364, file: !1365, line: 19, baseType: !101, size: 32, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1364, file: !1365, line: 20, baseType: !101, size: 32, offset: 96)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1364, file: !1365, line: 21, baseType: !101, size: 32, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1364, file: !1365, line: 22, baseType: !177, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1364, file: !1365, line: 23, baseType: !177, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1197, file: !1198, line: 138, baseType: !1375, size: 64, offset: 1152)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !362, line: 18, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1197, file: !1198, line: 139, baseType: !1378, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1380, line: 16, flags: DIFlagFwdDecl)
!1380 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1197, file: !1198, line: 140, baseType: !1382, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1198, line: 25, size: 64, elements: !1384)
!1384 = !{!1385, !1386, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1383, file: !1198, line: 26, baseType: !227, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1383, file: !1198, line: 27, baseType: !101, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1383, file: !1198, line: 28, baseType: !1388, offset: 64)
!1388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, elements: !1188)
!1389 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1198, line: 142, baseType: !1390, size: 128, offset: 1344)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1198, line: 142, size: 128, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1390, file: !1198, line: 143, baseType: !101, size: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1390, file: !1198, line: 144, baseType: !835, size: 128, align: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1113, file: !64, line: 1013, baseType: !1395, size: 256, offset: 960)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !64, line: 970, size: 256, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401, !1402}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1395, file: !64, line: 971, baseType: !177, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1395, file: !64, line: 972, baseType: !7, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1395, file: !64, line: 973, baseType: !7, size: 32, offset: 96)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1395, file: !64, line: 974, baseType: !7, size: 32, offset: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1395, file: !64, line: 975, baseType: !7, size: 32, offset: 160)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1395, file: !64, line: 976, baseType: !516, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1113, file: !64, line: 1014, baseType: !1404, size: 128, offset: 1216)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1405, line: 8, size: 128, elements: !1406)
!1405 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1406 = !{!1407, !1408}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1404, file: !1405, line: 9, baseType: !500, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1404, file: !1405, line: 10, baseType: !390, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1113, file: !64, line: 1015, baseType: !355, size: 64, offset: 1344)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1113, file: !64, line: 1016, baseType: !1411, size: 64, offset: 1408)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1413)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !64, line: 1914, size: 2112, elements: !1414)
!1414 = !{!1415, !1416, !1421, !1425, !1429, !1457, !1458, !1464, !1477, !1485, !1489, !1490, !1933, !1934, !1938, !1943, !1944, !1948, !1952, !1958, !1959, !1963, !1964, !1971, !1975, !1979, !1985, !1989, !1993, !1997, !2001, !2002, !2008}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1413, file: !64, line: 1915, baseType: !544, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1413, file: !64, line: 1916, baseType: !1417, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!516, !1420, !516, !101}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1413, file: !64, line: 1917, baseType: !1422, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!309, !1420, !277, !323, !1096}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1413, file: !64, line: 1918, baseType: !1426, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!309, !1420, !195, !323, !1096}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1413, file: !64, line: 1919, baseType: !1430, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!309, !1433, !1455}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !64, line: 373, size: 384, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1442, !1443, !1444, !1445}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1434, file: !64, line: 374, baseType: !1420, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1434, file: !64, line: 375, baseType: !516, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1434, file: !64, line: 376, baseType: !1439, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !1433, !178}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1434, file: !64, line: 377, baseType: !176, size: 64, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1434, file: !64, line: 378, baseType: !101, size: 32, offset: 256)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1434, file: !64, line: 379, baseType: !245, size: 16, offset: 288)
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1434, file: !64, line: 380, baseType: !1446, size: 64, offset: 320)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1434, file: !64, line: 380, size: 64, elements: !1447)
!1447 = !{!1448, !1451}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1446, file: !64, line: 386, baseType: !1449, size: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !64, line: 386, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1446, file: !64, line: 395, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!309, !176}
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !64, line: 69, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1413, file: !64, line: 1920, baseType: !1430, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1413, file: !64, line: 1921, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DISubroutineType(types: !1461)
!1461 = !{!101, !1433, !1462, !7}
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !64, line: 53, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1413, file: !64, line: 1923, baseType: !1465, size: 64, offset: 448)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!101, !1420, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !64, line: 1858, size: 128, elements: !1470)
!1470 = !{!1471, !1476}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1469, file: !64, line: 1859, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !64, line: 1855, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!695, !1468, !195, !101, !516, !428, !7}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1469, file: !64, line: 1860, baseType: !516, size: 64, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1413, file: !64, line: 1924, baseType: !1478, size: 64, offset: 512)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!1481, !1420, !1483}
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1482, line: 59, baseType: !7)
!1482 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !64, line: 61, flags: DIFlagFwdDecl)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1413, file: !64, line: 1925, baseType: !1486, size: 64, offset: 576)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!178, !1420, !7, !177}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1413, file: !64, line: 1926, baseType: !1486, size: 64, offset: 640)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1413, file: !64, line: 1927, baseType: !1491, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!101, !1420, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1496)
!1496 = !{!1497, !1506, !1661, !1667, !1674, !1675, !1680, !1681, !1686, !1687, !1690, !1926, !1927, !1928, !1929, !1930, !1931}
!1497 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !30, line: 628, baseType: !1498, size: 128)
!1498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !30, line: 628, size: 128, elements: !1499)
!1499 = !{!1500, !1505}
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1498, file: !30, line: 629, baseType: !1501, size: 128)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1498, file: !30, line: 629, size: 128, elements: !1502)
!1502 = !{!1503, !1504}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1501, file: !30, line: 631, baseType: !177, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1501, file: !30, line: 632, baseType: !177, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1498, file: !30, line: 635, baseType: !835, size: 128, align: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1495, file: !30, line: 639, baseType: !1507, size: 64, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !1509)
!1509 = !{!1510, !1659}
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !30, line: 734, baseType: !1511, size: 10240)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !30, line: 734, size: 10240, elements: !1512)
!1512 = !{!1513, !1517, !1530, !1534, !1535, !1536, !1537, !1538, !1539, !1548, !1549, !1550, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1589, !1591, !1594, !1639, !1640, !1641, !1644, !1645, !1646, !1649, !1650, !1651, !1657, !1658}
!1513 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !30, line: 739, baseType: !1514, size: 512, align: 512)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !30, line: 739, size: 512, align: 512, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1514, file: !30, line: 747, baseType: !227, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1511, file: !30, line: 750, baseType: !1518, size: 128, offset: 512)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1519, line: 218, size: 128, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1520 = !{!1521, !1528, !1529}
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1519, line: 219, baseType: !1522, size: 32)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !1519, line: 219, size: 32, elements: !1523)
!1523 = !{!1524, !1525}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1522, file: !1519, line: 220, baseType: !207, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1522, file: !1519, line: 221, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1519, line: 197, baseType: !1527)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1519, line: 197, elements: !904)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1518, file: !1519, line: 223, baseType: !7, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1518, file: !1519, line: 224, baseType: !176, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1511, file: !30, line: 752, baseType: !1531, size: 64, offset: 640)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!177, !1420, !177, !177, !177, !177}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1511, file: !30, line: 756, baseType: !177, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1511, file: !30, line: 757, baseType: !177, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1511, file: !30, line: 760, baseType: !177, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1511, file: !30, line: 761, baseType: !177, size: 64, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1511, file: !30, line: 763, baseType: !177, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1511, file: !30, line: 764, baseType: !1540, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1542, line: 299, baseType: !1543)
!1542 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1542, line: 299, size: 64, elements: !1544)
!1544 = !{!1545}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1543, file: !1542, line: 299, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1547, line: 18, baseType: !177)
!1547 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1511, file: !30, line: 773, baseType: !227, size: 32, offset: 1088)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1511, file: !30, line: 785, baseType: !227, size: 32, offset: 1120)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1511, file: !30, line: 795, baseType: !1551, size: 64, offset: 1152)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1552, file: !30, line: 727, baseType: !428, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1552, file: !30, line: 728, baseType: !101, size: 32, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1511, file: !30, line: 801, baseType: !177, size: 64, offset: 1216)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1511, file: !30, line: 804, baseType: !619, size: 64, offset: 1280)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1511, file: !30, line: 806, baseType: !101, size: 32, offset: 1344)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1511, file: !30, line: 808, baseType: !207, size: 32, offset: 1376)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1511, file: !30, line: 823, baseType: !1236, size: 320, offset: 1408)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1511, file: !30, line: 825, baseType: !182, size: 128, offset: 1728)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1511, file: !30, line: 845, baseType: !101, size: 32, offset: 1856)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1511, file: !30, line: 849, baseType: !177, size: 64, offset: 1920)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1511, file: !30, line: 850, baseType: !177, size: 64, offset: 1984)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1511, file: !30, line: 852, baseType: !177, size: 64, offset: 2048)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1511, file: !30, line: 853, baseType: !177, size: 64, offset: 2112)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1511, file: !30, line: 854, baseType: !621, size: 64, offset: 2176)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1511, file: !30, line: 855, baseType: !177, size: 64, offset: 2240)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1511, file: !30, line: 856, baseType: !177, size: 64, offset: 2304)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1511, file: !30, line: 857, baseType: !177, size: 64, offset: 2368)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1511, file: !30, line: 858, baseType: !177, size: 64, offset: 2432)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1511, file: !30, line: 865, baseType: !401, size: 32, offset: 2496)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1511, file: !30, line: 867, baseType: !207, size: 32, offset: 2528)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1511, file: !30, line: 869, baseType: !177, size: 64, offset: 2560)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1511, file: !30, line: 869, baseType: !177, size: 64, offset: 2624)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1511, file: !30, line: 869, baseType: !177, size: 64, offset: 2688)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1511, file: !30, line: 869, baseType: !177, size: 64, offset: 2752)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1511, file: !30, line: 870, baseType: !177, size: 64, offset: 2816)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1511, file: !30, line: 870, baseType: !177, size: 64, offset: 2880)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1511, file: !30, line: 870, baseType: !177, size: 64, offset: 2944)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1511, file: !30, line: 871, baseType: !177, size: 64, offset: 3008)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1511, file: !30, line: 871, baseType: !177, size: 64, offset: 3072)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1511, file: !30, line: 871, baseType: !177, size: 64, offset: 3136)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1511, file: !30, line: 871, baseType: !177, size: 64, offset: 3200)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1511, file: !30, line: 873, baseType: !1586, size: 3328, offset: 3264)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 3328, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 52)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1511, file: !30, line: 875, baseType: !1590, size: 1280, offset: 6592)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1350, size: 1280, elements: !845)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1511, file: !30, line: 877, baseType: !1592, size: 64, offset: 7872)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1511, file: !30, line: 880, baseType: !1595, size: 1088, offset: 7936)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1596, line: 72, baseType: !1597)
!1596 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1596, line: 23, size: 1088, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1603, !1606, !1607, !1608, !1609, !1636, !1637, !1638}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1597, file: !1596, line: 28, baseType: !428, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1597, file: !1596, line: 38, baseType: !621, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1597, file: !1596, line: 40, baseType: !177, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1597, file: !1596, line: 43, baseType: !1236, size: 320, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1597, file: !1596, line: 44, baseType: !1604, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1596, line: 44, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1597, file: !1596, line: 48, baseType: !177, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1597, file: !1596, line: 59, baseType: !615, size: 256, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1597, file: !1596, line: 60, baseType: !176, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1597, file: !1596, line: 61, baseType: !1610, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1613, line: 13, size: 1216, elements: !1614)
!1613 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1620, !1621, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1612, file: !1613, line: 14, baseType: !176, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1612, file: !1613, line: 15, baseType: !177, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1612, file: !1613, line: 17, baseType: !177, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1612, file: !1613, line: 17, baseType: !177, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1612, file: !1613, line: 18, baseType: !177, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1612, file: !1613, line: 18, baseType: !177, size: 64, offset: 320)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1612, file: !1613, line: 19, baseType: !1622, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1612, file: !1613, line: 21, baseType: !178, size: 64, offset: 448)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1612, file: !1613, line: 23, baseType: !178, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1612, file: !1613, line: 24, baseType: !178, size: 64, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1612, file: !1613, line: 25, baseType: !178, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1612, file: !1613, line: 26, baseType: !178, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1612, file: !1613, line: 27, baseType: !178, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1612, file: !1613, line: 28, baseType: !178, size: 64, offset: 832)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1612, file: !1613, line: 29, baseType: !178, size: 64, offset: 896)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1612, file: !1613, line: 30, baseType: !178, size: 64, offset: 960)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1612, file: !1613, line: 31, baseType: !178, size: 64, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1612, file: !1613, line: 32, baseType: !178, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1612, file: !1613, line: 33, baseType: !178, size: 64, offset: 1152)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1597, file: !1596, line: 63, baseType: !227, size: 32, offset: 1024)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1597, file: !1596, line: 69, baseType: !245, size: 16, offset: 1056)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1597, file: !1596, line: 70, baseType: !751, size: 16, offset: 1072)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1511, file: !30, line: 882, baseType: !177, size: 64, offset: 9024)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1511, file: !30, line: 885, baseType: !207, size: 32, offset: 9088)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1511, file: !30, line: 886, baseType: !1642, size: 64, offset: 9152)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1511, file: !30, line: 901, baseType: !1375, size: 64, offset: 9216)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1511, file: !30, line: 904, baseType: !1420, size: 64, offset: 9280)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1511, file: !30, line: 906, baseType: !1647, size: 64, offset: 9344)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1511, file: !30, line: 930, baseType: !227, size: 32, offset: 9408)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1511, file: !30, line: 933, baseType: !227, size: 32, offset: 9440)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1511, file: !30, line: 935, baseType: !1652, size: 64, offset: 9472)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !152, line: 103, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1652, file: !152, line: 104, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !152, line: 101, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1511, file: !30, line: 940, baseType: !619, size: 64, offset: 9536)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1511, file: !30, line: 942, baseType: !875, size: 256, offset: 9600)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1508, file: !30, line: 986, baseType: !1660, offset: 10240)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !1188)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1495, file: !30, line: 640, baseType: !1662, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1542, line: 297, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1542, line: 297, size: 64, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1663, file: !1542, line: 297, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1547, line: 19, baseType: !177)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !30, line: 646, baseType: !1668, size: 64, offset: 256)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !30, line: 646, size: 64, elements: !1669)
!1669 = !{!1670, !1673}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1668, file: !30, line: 647, baseType: !1671, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1672)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !177)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1668, file: !30, line: 648, baseType: !1672, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1495, file: !30, line: 666, baseType: !101, size: 32, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1495, file: !30, line: 667, baseType: !1676, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1677, file: !30, line: 580, baseType: !1236, size: 320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1495, file: !30, line: 670, baseType: !695, size: 8, offset: 448)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1495, file: !30, line: 681, baseType: !1682, size: 256, offset: 512)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1495, file: !30, line: 678, size: 256, elements: !1683)
!1683 = !{!1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1682, file: !30, line: 679, baseType: !727, size: 192, align: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1682, file: !30, line: 680, baseType: !177, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1495, file: !30, line: 689, baseType: !182, size: 128, offset: 768)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1495, file: !30, line: 691, baseType: !1688, size: 64, offset: 896)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1495, file: !30, line: 694, baseType: !1691, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1694, line: 563, size: 1024, elements: !1695)
!1694 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1695 = !{!1696, !1700, !1701, !1705, !1709, !1713, !1890, !1894, !1898, !1902, !1903, !1904, !1908, !1912, !1918, !1922}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1693, file: !1694, line: 564, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{null, !1494}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1693, file: !1694, line: 569, baseType: !1697, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1693, file: !1694, line: 571, baseType: !1702, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!101, !1494, !177}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1693, file: !1694, line: 572, baseType: !1706, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!101, !1494}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1693, file: !1694, line: 578, baseType: !1710, size: 64, offset: 256)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!101, !1494, !177, !177, !177}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1693, file: !1694, line: 580, baseType: !1714, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!1717, !1718}
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1694, line: 512, size: 896, elements: !1720)
!1720 = !{!1721, !1729, !1730, !1737, !1744, !1754, !1883, !1884, !1886, !1888}
!1721 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1694, line: 513, baseType: !1722, size: 320)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1719, file: !1694, line: 513, size: 320, elements: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1722, file: !1694, line: 514, baseType: !1494, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1722, file: !1694, line: 515, baseType: !174, size: 32, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1722, file: !1694, line: 516, baseType: !177, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1722, file: !1694, line: 517, baseType: !177, size: 64, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1722, file: !1694, line: 518, baseType: !177, size: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1719, file: !1694, line: 520, baseType: !29, size: 32, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1719, file: !1694, line: 522, baseType: !1731, size: 64, offset: 384)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1547, line: 22, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1547, line: 22, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1733, file: !1547, line: 22, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1547, line: 15, baseType: !177)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1719, file: !1694, line: 524, baseType: !1738, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1542, line: 372, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1542, line: 372, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1740, file: !1542, line: 372, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1547, line: 16, baseType: !177)
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1694, line: 527, baseType: !1745, size: 64, offset: 512)
!1745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1694, line: 527, size: 64, elements: !1746)
!1746 = !{!1747, !1753}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1745, file: !1694, line: 528, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1547, line: 21, baseType: !1749)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1547, line: 21, size: 64, elements: !1750)
!1750 = !{!1751}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1749, file: !1547, line: 21, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1547, line: 14, baseType: !177)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1745, file: !1694, line: 529, baseType: !1732, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1719, file: !1694, line: 534, baseType: !1755, size: 64, offset: 576)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !1757)
!1757 = !{!1758, !1759, !1877, !1882}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1756, file: !30, line: 75, baseType: !177, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !30, line: 83, baseType: !1760, size: 320, offset: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1756, file: !30, line: 83, size: 320, elements: !1761)
!1761 = !{!1762, !1783, !1797, !1801, !1876}
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !30, line: 84, baseType: !1763, size: 320)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1760, file: !30, line: 84, size: 320, elements: !1764)
!1764 = !{!1765, !1776, !1777, !1782}
!1765 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !30, line: 90, baseType: !1766, size: 128)
!1766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1763, file: !30, line: 90, size: 128, elements: !1767)
!1767 = !{!1768, !1769, !1774, !1775}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1766, file: !30, line: 91, baseType: !182, size: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, scope: !1766, file: !30, line: 94, baseType: !1770, size: 128)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1766, file: !30, line: 94, size: 128, elements: !1771)
!1771 = !{!1772, !1773}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1770, file: !30, line: 96, baseType: !176, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1770, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1766, file: !30, line: 102, baseType: !182, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1766, file: !30, line: 103, baseType: !182, size: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1763, file: !30, line: 106, baseType: !351, size: 64, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1763, file: !30, line: 107, baseType: !1778, size: 64, offset: 192)
!1778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1763, file: !30, line: 107, size: 64, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1778, file: !30, line: 108, baseType: !177, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1778, file: !30, line: 109, baseType: !177, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1763, file: !30, line: 117, baseType: !177, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !30, line: 119, baseType: !1784, size: 320)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1760, file: !30, line: 119, size: 320, elements: !1785)
!1785 = !{!1786, !1787, !1790, !1791, !1792}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1784, file: !30, line: 124, baseType: !177, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1784, file: !30, line: 125, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1784, file: !30, line: 126, baseType: !177, size: 64, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1784, file: !30, line: 127, baseType: !177, size: 64, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !30, line: 128, baseType: !1793, size: 64, offset: 256)
!1793 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1784, file: !30, line: 128, size: 64, elements: !1794)
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1793, file: !30, line: 133, baseType: !177, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1793, file: !30, line: 138, baseType: !619, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !30, line: 141, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1760, file: !30, line: 141, size: 64, elements: !1799)
!1799 = !{!1800}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1798, file: !30, line: 142, baseType: !177, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !30, line: 144, baseType: !1802, size: 128)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1760, file: !30, line: 144, size: 128, elements: !1803)
!1803 = !{!1804, !1875}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1802, file: !30, line: 146, baseType: !1805, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !22, line: 126, size: 1216, elements: !1807)
!1807 = !{!1808, !1818, !1839, !1840, !1841, !1842, !1843, !1857, !1858, !1859}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1806, file: !22, line: 127, baseType: !1809, size: 384)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !22, line: 21, size: 384, elements: !1810)
!1810 = !{!1811, !1812, !1814, !1815, !1816, !1817}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1809, file: !22, line: 22, baseType: !177, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1809, file: !22, line: 23, baseType: !1813, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1809, file: !22, line: 24, baseType: !1813, size: 64, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1809, file: !22, line: 25, baseType: !177, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1809, file: !22, line: 26, baseType: !177, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1809, file: !22, line: 27, baseType: !177, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1806, file: !22, line: 128, baseType: !1819, size: 128, offset: 384)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1820, line: 105, size: 128, elements: !1821)
!1820 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1821 = !{!1822, !1823}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1819, file: !1820, line: 110, baseType: !177, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1819, file: !1820, line: 118, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1820, line: 95, size: 448, elements: !1826)
!1826 = !{!1827, !1828, !1834, !1835, !1836, !1837, !1838}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1825, file: !1820, line: 96, baseType: !619, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1825, file: !1820, line: 97, baseType: !1829, size: 64, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1820, line: 60, baseType: !1831)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1833}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1825, file: !1820, line: 98, baseType: !1829, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1825, file: !1820, line: 99, baseType: !695, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1825, file: !1820, line: 100, baseType: !695, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1825, file: !1820, line: 101, baseType: !835, size: 128, align: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1825, file: !1820, line: 102, baseType: !1833, size: 64, offset: 384)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1806, file: !22, line: 129, baseType: !564, size: 256, offset: 512)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !22, line: 130, baseType: !21, size: 32, offset: 768)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1806, file: !22, line: 131, baseType: !7, size: 32, offset: 800)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1806, file: !22, line: 132, baseType: !177, size: 64, offset: 832)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1806, file: !22, line: 133, baseType: !1844, size: 64, offset: 896)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !22, line: 77, size: 192, elements: !1847)
!1847 = !{!1848, !1852, !1853}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1846, file: !22, line: 83, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{null, !1755}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1846, file: !22, line: 89, baseType: !1714, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1846, file: !22, line: 100, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!101, !1805, !177, !177, !101}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1806, file: !22, line: 134, baseType: !176, size: 64, offset: 960)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1806, file: !22, line: 135, baseType: !101, size: 32, offset: 1024)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !1806, file: !22, line: 136, baseType: !1860, size: 128, offset: 1088)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1806, file: !22, line: 136, size: 128, elements: !1861)
!1861 = !{!1862, !1868}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1860, file: !22, line: 137, baseType: !1863, size: 128)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1864, line: 6, size: 128, elements: !1865)
!1864 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1865 = !{!1866, !1867}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1863, file: !1864, line: 7, baseType: !428, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1863, file: !1864, line: 8, baseType: !428, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1860, file: !22, line: 138, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !22, line: 138, elements: !1870)
!1870 = !{!1871, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1869, file: !22, line: 138, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !22, line: 138, elements: !904)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1869, file: !22, line: 138, baseType: !1874)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1863, elements: !1188)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1802, file: !30, line: 147, baseType: !176, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1760, file: !30, line: 161, baseType: !835, size: 128, align: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1756, file: !30, line: 164, baseType: !1878, size: 32, offset: 384)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1756, file: !30, line: 164, size: 32, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1878, file: !30, line: 169, baseType: !227, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1878, file: !30, line: 177, baseType: !7, size: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1756, file: !30, line: 181, baseType: !227, size: 32, offset: 416)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1719, file: !1694, line: 535, baseType: !1755, size: 64, offset: 640)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1719, file: !1694, line: 541, baseType: !1885, size: 64, offset: 704)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1719, file: !1694, line: 545, baseType: !1887, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1719, file: !1694, line: 549, baseType: !1889, size: 64, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1542, line: 520, baseType: !1755)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1693, file: !1694, line: 581, baseType: !1891, size: 64, offset: 384)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1717, !1718, !7}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1693, file: !1694, line: 582, baseType: !1895, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!1717, !1718, !177, !177}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1693, file: !1694, line: 584, baseType: !1899, size: 64, offset: 512)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!177, !1494}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1693, file: !1694, line: 588, baseType: !1714, size: 64, offset: 576)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1693, file: !1694, line: 591, baseType: !1714, size: 64, offset: 640)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1693, file: !1694, line: 597, baseType: !1905, size: 64, offset: 704)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!101, !1494, !177, !176, !101, !101}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !1694, line: 603, baseType: !1909, size: 64, offset: 768)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!195, !1494}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1693, file: !1694, line: 613, baseType: !1913, size: 64, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!101, !1494, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1693, file: !1694, line: 625, baseType: !1919, size: 64, offset: 896)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1916, !1494, !177}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1693, file: !1694, line: 633, baseType: !1923, size: 64, offset: 960)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1755, !1494, !177}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1495, file: !30, line: 697, baseType: !177, size: 64, offset: 1024)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1495, file: !30, line: 699, baseType: !1420, size: 64, offset: 1088)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1495, file: !30, line: 700, baseType: !176, size: 64, offset: 1152)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1495, file: !30, line: 711, baseType: !619, size: 64, offset: 1216)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1495, file: !30, line: 717, baseType: !1916, size: 64, offset: 1280)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1495, file: !30, line: 722, baseType: !1932, offset: 1344)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !904)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1413, file: !64, line: 1928, baseType: !177, size: 64, offset: 768)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1413, file: !64, line: 1929, baseType: !1935, size: 64, offset: 832)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!101, !355, !1420}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1413, file: !64, line: 1930, baseType: !1939, size: 64, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!101, !1420, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !64, line: 1061, baseType: !176)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1413, file: !64, line: 1931, baseType: !1935, size: 64, offset: 960)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1413, file: !64, line: 1932, baseType: !1945, size: 64, offset: 1024)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!101, !1420, !516, !516, !101}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1413, file: !64, line: 1933, baseType: !1949, size: 64, offset: 1088)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!101, !101, !1420, !101}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1413, file: !64, line: 1934, baseType: !1953, size: 64, offset: 1152)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!101, !1420, !101, !1956}
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !64, line: 1063, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1413, file: !64, line: 1935, baseType: !1531, size: 64, offset: 1216)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1413, file: !64, line: 1936, baseType: !1960, size: 64, offset: 1280)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!101, !101}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1413, file: !64, line: 1937, baseType: !1953, size: 64, offset: 1344)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1413, file: !64, line: 1938, baseType: !1965, size: 64, offset: 1408)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!309, !1968, !1420, !1096, !323, !7}
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1970, line: 59, flags: DIFlagFwdDecl)
!1970 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1413, file: !64, line: 1939, baseType: !1972, size: 64, offset: 1472)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!309, !1420, !1096, !1968, !323, !7}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1413, file: !64, line: 1940, baseType: !1976, size: 64, offset: 1536)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !1420}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1413, file: !64, line: 1941, baseType: !1980, size: 64, offset: 1600)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!101, !1420, !101, !1983, !1984}
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1413, file: !64, line: 1942, baseType: !1986, size: 64, offset: 1664)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!178, !1420, !101, !516, !516}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1413, file: !64, line: 1944, baseType: !1990, size: 64, offset: 1728)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{null, !1075, !1420}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1413, file: !64, line: 1948, baseType: !1994, size: 64, offset: 1792)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!309, !1420, !516, !1420, !516, !323, !7}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1413, file: !64, line: 1950, baseType: !1998, size: 64, offset: 1856)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!516, !1420, !516, !1420, !516, !516, !7}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1413, file: !64, line: 1953, baseType: !1945, size: 64, offset: 1920)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1413, file: !64, line: 1954, baseType: !2003, size: 64, offset: 1984)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!101, !2006, !7}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !64, line: 1911, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1413, file: !64, line: 1955, baseType: !2009, size: 64, offset: 2048)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!101, !2006, !1462, !7}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1113, file: !64, line: 1018, baseType: !428, size: 64, offset: 1472)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1113, file: !64, line: 1020, baseType: !176, size: 64, offset: 1536)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1113, file: !64, line: 1023, baseType: !176, size: 64, offset: 1600)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1113, file: !64, line: 1027, baseType: !2016, size: 64, offset: 1664)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1113, file: !64, line: 1029, baseType: !351, size: 64, offset: 1728)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1113, file: !64, line: 1030, baseType: !2019, size: 32, offset: 1792)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2020, line: 8, baseType: !424)
!2020 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1113, file: !64, line: 1031, baseType: !2019, size: 32, offset: 1824)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1076, file: !1077, line: 29, baseType: !176, size: 64, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1001, file: !64, line: 2077, baseType: !1072, size: 64, offset: 1088)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1001, file: !64, line: 2078, baseType: !1072, size: 64, offset: 1152)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1001, file: !64, line: 2079, baseType: !1072, size: 64, offset: 1216)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1001, file: !64, line: 2081, baseType: !2027, size: 64, offset: 1280)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!309, !506, !101, !277, !323, !516}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1001, file: !64, line: 2082, baseType: !2031, size: 64, offset: 1344)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!309, !506, !101, !195, !323, !516}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1001, file: !64, line: 2083, baseType: !2035, size: 64, offset: 1408)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!2038, !355}
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !69, line: 296, size: 1664, elements: !2041)
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2066, !2067, !2068}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2040, file: !69, line: 297, baseType: !861, size: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2040, file: !69, line: 298, baseType: !182, size: 128, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2040, file: !69, line: 299, baseType: !182, size: 128, offset: 256)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2040, file: !69, line: 300, baseType: !182, size: 128, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2040, file: !69, line: 301, baseType: !615, size: 256, offset: 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2040, file: !69, line: 302, baseType: !207, size: 32, offset: 768)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2040, file: !69, line: 303, baseType: !227, size: 32, offset: 800)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2040, file: !69, line: 304, baseType: !506, size: 64, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2040, file: !69, line: 305, baseType: !2051, size: 64, offset: 896)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !69, line: 68, size: 64, elements: !2052)
!2052 = !{!2053, !2065}
!2053 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !69, line: 69, baseType: !2054, size: 32)
!2054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2051, file: !69, line: 69, size: 32, elements: !2055)
!2055 = !{!2056, !2057, !2058}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2054, file: !69, line: 70, baseType: !361, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2054, file: !69, line: 71, baseType: !370, size: 32)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2054, file: !69, line: 72, baseType: !2059, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2060, line: 24, baseType: !2061)
!2060 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2060, line: 22, size: 32, elements: !2062)
!2062 = !{!2063}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2061, file: !2060, line: 23, baseType: !2064, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2060, line: 20, baseType: !367)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2051, file: !69, line: 74, baseType: !68, size: 32, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2040, file: !69, line: 306, baseType: !516, size: 64, offset: 960)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2040, file: !69, line: 307, baseType: !177, size: 64, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2040, file: !69, line: 308, baseType: !2069, size: 576, offset: 1088)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !69, line: 205, size: 576, elements: !2070)
!2070 = !{!2071, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2069, file: !69, line: 206, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !69, line: 66, baseType: !518)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2069, file: !69, line: 207, baseType: !2072, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2069, file: !69, line: 208, baseType: !2072, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2069, file: !69, line: 209, baseType: !2072, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2069, file: !69, line: 210, baseType: !2072, size: 64, offset: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2069, file: !69, line: 211, baseType: !2072, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2069, file: !69, line: 212, baseType: !2072, size: 64, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2069, file: !69, line: 213, baseType: !1252, size: 64, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2069, file: !69, line: 214, baseType: !1252, size: 64, offset: 512)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1001, file: !64, line: 2085, baseType: !2082, size: 64, offset: 1472)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!178, !506, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2087, line: 15, size: 256, elements: !2088)
!2087 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2088 = !{!2089, !2090, !2091, !2092, !2093}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2086, file: !2087, line: 16, baseType: !174, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2086, file: !2087, line: 19, baseType: !101, size: 32, offset: 32)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2086, file: !2087, line: 26, baseType: !177, size: 64, offset: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2086, file: !2087, line: 33, baseType: !177, size: 64, offset: 128)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2086, file: !2087, line: 36, baseType: !2094, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2087, line: 36, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1001, file: !64, line: 2087, baseType: !2082, size: 64, offset: 1536)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1001, file: !64, line: 2089, baseType: !540, size: 64, offset: 1600)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !507, file: !64, line: 1198, baseType: !2099, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2101)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !69, line: 324, size: 704, elements: !2102)
!2102 = !{!2103, !2107, !2111, !2115, !2116, !2117, !2118, !2119, !2124, !2129, !2133}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2101, file: !69, line: 325, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!101, !2039}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2101, file: !69, line: 326, baseType: !2108, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!2039, !506, !101}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2101, file: !69, line: 327, baseType: !2112, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{null, !2039}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2101, file: !69, line: 328, baseType: !2104, size: 64, offset: 192)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2101, file: !69, line: 329, baseType: !2104, size: 64, offset: 256)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2101, file: !69, line: 330, baseType: !2104, size: 64, offset: 320)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2101, file: !69, line: 331, baseType: !1047, size: 64, offset: 384)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2101, file: !69, line: 334, baseType: !2120, size: 64, offset: 448)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!2123, !355}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2101, file: !69, line: 335, baseType: !2125, size: 64, offset: 512)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!101, !355, !2128}
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2101, file: !69, line: 337, baseType: !2130, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!101, !355, !2123}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2101, file: !69, line: 339, baseType: !2134, size: 64, offset: 640)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!101, !506, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !507, file: !64, line: 1199, baseType: !2139, size: 64, offset: 512)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !69, line: 430, size: 704, elements: !2142)
!2142 = !{!2143, !2149, !2150, !2154, !2155, !2156, !2171, !2194, !2198, !2199, !2222}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2141, file: !69, line: 431, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!101, !506, !101, !101, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2141, file: !69, line: 432, baseType: !1047, size: 64, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2141, file: !69, line: 433, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!101, !506, !7}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2141, file: !69, line: 434, baseType: !2151, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2141, file: !69, line: 435, baseType: !1047, size: 64, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2141, file: !69, line: 436, baseType: !2157, size: 64, offset: 320)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!101, !506, !101, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !69, line: 417, size: 256, elements: !2162)
!2162 = !{!2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2161, file: !69, line: 418, baseType: !101, size: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2161, file: !69, line: 419, baseType: !7, size: 32, offset: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2161, file: !69, line: 420, baseType: !7, size: 32, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2161, file: !69, line: 422, baseType: !7, size: 32, offset: 96)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2161, file: !69, line: 423, baseType: !7, size: 32, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2161, file: !69, line: 424, baseType: !7, size: 32, offset: 160)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2161, file: !69, line: 425, baseType: !7, size: 32, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2161, file: !69, line: 426, baseType: !7, size: 32, offset: 224)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2141, file: !69, line: 437, baseType: !2172, size: 64, offset: 384)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!101, !506, !2051, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !69, line: 345, size: 960, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2176, file: !69, line: 346, baseType: !101, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2176, file: !69, line: 347, baseType: !428, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2176, file: !69, line: 348, baseType: !428, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2176, file: !69, line: 349, baseType: !428, size: 64, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2176, file: !69, line: 350, baseType: !428, size: 64, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2176, file: !69, line: 351, baseType: !428, size: 64, offset: 320)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2176, file: !69, line: 352, baseType: !428, size: 64, offset: 384)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2176, file: !69, line: 353, baseType: !625, size: 64, offset: 448)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2176, file: !69, line: 355, baseType: !625, size: 64, offset: 512)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2176, file: !69, line: 356, baseType: !101, size: 32, offset: 576)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2176, file: !69, line: 357, baseType: !101, size: 32, offset: 608)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2176, file: !69, line: 358, baseType: !428, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2176, file: !69, line: 359, baseType: !428, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2176, file: !69, line: 360, baseType: !428, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2176, file: !69, line: 361, baseType: !625, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2176, file: !69, line: 362, baseType: !101, size: 32, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2141, file: !69, line: 438, baseType: !2195, size: 64, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!101, !506, !2137, !2175}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2141, file: !69, line: 440, baseType: !2172, size: 64, offset: 512)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2141, file: !69, line: 441, baseType: !2200, size: 64, offset: 576)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!101, !506, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !69, line: 411, size: 1408, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2204, file: !69, line: 412, baseType: !7, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2204, file: !69, line: 413, baseType: !2208, size: 1344, offset: 64)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2209, size: 1344, elements: !278)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !69, line: 397, size: 448, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2221}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2209, file: !69, line: 398, baseType: !7, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2209, file: !69, line: 399, baseType: !7, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2209, file: !69, line: 401, baseType: !7, size: 32, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2209, file: !69, line: 402, baseType: !7, size: 32, offset: 96)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2209, file: !69, line: 403, baseType: !7, size: 32, offset: 128)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2209, file: !69, line: 404, baseType: !7, size: 32, offset: 160)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2209, file: !69, line: 405, baseType: !7, size: 32, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2209, file: !69, line: 406, baseType: !430, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2209, file: !69, line: 407, baseType: !2220, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !175, line: 132, baseType: !428)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2209, file: !69, line: 408, baseType: !2220, size: 64, offset: 384)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2141, file: !69, line: 442, baseType: !2151, size: 64, offset: 640)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !507, file: !64, line: 1200, baseType: !2224, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2226)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !64, line: 54, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !507, file: !64, line: 1201, baseType: !177, size: 64, offset: 640)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !507, file: !64, line: 1202, baseType: !177, size: 64, offset: 704)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !507, file: !64, line: 1203, baseType: !177, size: 64, offset: 768)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !507, file: !64, line: 1204, baseType: !390, size: 64, offset: 832)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !507, file: !64, line: 1205, baseType: !1236, size: 320, offset: 896)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !507, file: !64, line: 1206, baseType: !101, size: 32, offset: 1216)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !507, file: !64, line: 1207, baseType: !227, size: 32, offset: 1248)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !507, file: !64, line: 1209, baseType: !176, size: 64, offset: 1280)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !507, file: !64, line: 1211, baseType: !2236, size: 64, offset: 1344)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2239)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !64, line: 1211, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !507, file: !64, line: 1223, baseType: !2241, size: 64, offset: 1408)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !407, line: 34, size: 64, elements: !2242)
!2242 = !{!2243}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2241, file: !407, line: 35, baseType: !410, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !507, file: !64, line: 1224, baseType: !182, size: 128, offset: 1472)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !507, file: !64, line: 1225, baseType: !2246, size: 64, offset: 1600)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2248, line: 40, size: 7424, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2249 = !{!2250, !2252, !2253, !2256, !2260, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2287, !2288}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2247, file: !2248, line: 41, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !175, line: 131, baseType: !428)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2247, file: !2248, line: 42, baseType: !2251, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2247, file: !2248, line: 43, baseType: !2254, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1970, line: 1453, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2247, file: !2248, line: 44, baseType: !2257, size: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2259, line: 74, flags: DIFlagFwdDecl)
!2259 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2247, file: !2248, line: 45, baseType: !2261, size: 64, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2248, line: 45, flags: DIFlagFwdDecl)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2247, file: !2248, line: 46, baseType: !177, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2247, file: !2248, line: 47, baseType: !695, size: 8, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2247, file: !2248, line: 48, baseType: !235, size: 8, offset: 392)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2247, file: !2248, line: 49, baseType: !695, size: 8, offset: 400)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2247, file: !2248, line: 50, baseType: !695, size: 8, offset: 408)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2247, file: !2248, line: 51, baseType: !511, size: 32, offset: 416)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2247, file: !2248, line: 52, baseType: !227, size: 32, offset: 448)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2247, file: !2248, line: 53, baseType: !207, size: 32, offset: 480)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2247, file: !2248, line: 54, baseType: !355, size: 64, offset: 512)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2247, file: !2248, line: 55, baseType: !176, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2247, file: !2248, line: 56, baseType: !176, size: 64, offset: 640)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2247, file: !2248, line: 57, baseType: !2275, size: 64, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2277)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2248, line: 57, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2247, file: !2248, line: 58, baseType: !615, size: 256, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2247, file: !2248, line: 60, baseType: !101, size: 32, offset: 1024)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2247, file: !2248, line: 61, baseType: !101, size: 32, offset: 1056)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2247, file: !2248, line: 62, baseType: !200, size: 64, offset: 1088)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2247, file: !2248, line: 65, baseType: !615, size: 256, offset: 1152)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2247, file: !2248, line: 66, baseType: !506, size: 64, offset: 1408)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2247, file: !2248, line: 68, baseType: !2285, size: 64, offset: 1472)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2248, line: 68, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2247, file: !2248, line: 72, baseType: !695, size: 8, offset: 1536)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2247, file: !2248, line: 77, baseType: !2289, size: 5824, offset: 1600)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !81, line: 705, size: 5824, elements: !2290)
!2290 = !{!2291, !2292, !2294, !2297, !2298, !2353, !2423, !2424, !2425, !2426, !2427, !2434, !2601, !2614, !2624, !2628, !2630, !2631, !2632, !2636, !2643, !2644, !2647, !2650, !2654, !2758, !2759, !2760, !2761, !2762, !2763, !2817, !2818, !2819, !2822, !2825, !2834, !2835, !2836, !2837, !2838, !2839}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2289, file: !81, line: 706, baseType: !191, size: 512)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2289, file: !81, line: 707, baseType: !2293, size: 64, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2289, file: !81, line: 709, baseType: !2295, size: 64, offset: 576)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !81, line: 37, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2289, file: !81, line: 711, baseType: !195, size: 64, offset: 640)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2289, file: !81, line: 712, baseType: !2299, size: 64, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2301)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !81, line: 89, size: 384, elements: !2302)
!2302 = !{!2303, !2304, !2305, !2311, !2318, !2322}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2301, file: !81, line: 90, baseType: !195, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2301, file: !81, line: 91, baseType: !327, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2301, file: !81, line: 92, baseType: !2306, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!101, !2309, !272}
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2289)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2301, file: !81, line: 93, baseType: !2312, size: 64, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!277, !2309, !2315, !2316, !2317}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2301, file: !81, line: 95, baseType: !2319, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{null, !2293}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2301, file: !81, line: 97, baseType: !2323, size: 64, offset: 320)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !93, line: 286, size: 1472, elements: !2326)
!2326 = !{!2327, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2325, file: !93, line: 287, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!101, !2293}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2325, file: !93, line: 288, baseType: !2319, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2325, file: !93, line: 289, baseType: !2328, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2325, file: !93, line: 290, baseType: !2328, size: 64, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2325, file: !93, line: 291, baseType: !2328, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2325, file: !93, line: 292, baseType: !2328, size: 64, offset: 320)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2325, file: !93, line: 293, baseType: !2328, size: 64, offset: 384)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2325, file: !93, line: 294, baseType: !2328, size: 64, offset: 448)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2325, file: !93, line: 295, baseType: !2328, size: 64, offset: 512)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2325, file: !93, line: 296, baseType: !2328, size: 64, offset: 576)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2325, file: !93, line: 297, baseType: !2328, size: 64, offset: 640)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2325, file: !93, line: 298, baseType: !2328, size: 64, offset: 704)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2325, file: !93, line: 299, baseType: !2328, size: 64, offset: 768)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2325, file: !93, line: 300, baseType: !2328, size: 64, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2325, file: !93, line: 301, baseType: !2328, size: 64, offset: 896)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2325, file: !93, line: 302, baseType: !2328, size: 64, offset: 960)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2325, file: !93, line: 303, baseType: !2328, size: 64, offset: 1024)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2325, file: !93, line: 304, baseType: !2328, size: 64, offset: 1088)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2325, file: !93, line: 305, baseType: !2328, size: 64, offset: 1152)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2325, file: !93, line: 306, baseType: !2328, size: 64, offset: 1216)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2325, file: !93, line: 307, baseType: !2328, size: 64, offset: 1280)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2325, file: !93, line: 308, baseType: !2328, size: 64, offset: 1344)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2325, file: !93, line: 309, baseType: !2328, size: 64, offset: 1408)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2289, file: !81, line: 714, baseType: !2354, size: 64, offset: 768)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2357, line: 80, size: 1344, elements: !2358)
!2357 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2358 = !{!2359, !2360, !2361, !2362, !2363, !2364, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2422}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2356, file: !2357, line: 81, baseType: !195, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2356, file: !2357, line: 82, baseType: !195, size: 64, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2356, file: !2357, line: 83, baseType: !327, size: 64, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2356, file: !2357, line: 84, baseType: !327, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2356, file: !2357, line: 85, baseType: !327, size: 64, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2356, file: !2357, line: 87, baseType: !2365, size: 64, offset: 320)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!101, !2293, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !75, line: 96, size: 1152, elements: !2370)
!2370 = !{!2371, !2372, !2373, !2374, !2375, !2376, !2377, !2381, !2385, !2386, !2387, !2388, !2389, !2397, !2398, !2399, !2400, !2401, !2402}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2369, file: !75, line: 97, baseType: !195, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2369, file: !75, line: 98, baseType: !2354, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2369, file: !75, line: 100, baseType: !544, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2369, file: !75, line: 101, baseType: !195, size: 64, offset: 192)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2369, file: !75, line: 103, baseType: !695, size: 8, offset: 256)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2369, file: !75, line: 104, baseType: !74, size: 32, offset: 288)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2369, file: !75, line: 106, baseType: !2378, size: 64, offset: 320)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2380)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !75, line: 106, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2369, file: !75, line: 107, baseType: !2382, size: 64, offset: 384)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2384)
!2384 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !75, line: 107, flags: DIFlagFwdDecl)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2369, file: !75, line: 109, baseType: !2328, size: 64, offset: 448)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2369, file: !75, line: 110, baseType: !2319, size: 64, offset: 512)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2369, file: !75, line: 111, baseType: !2328, size: 64, offset: 576)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2369, file: !75, line: 112, baseType: !2319, size: 64, offset: 640)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2369, file: !75, line: 113, baseType: !2390, size: 64, offset: 704)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!101, !2293, !2393}
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !93, line: 60, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !93, line: 58, size: 32, elements: !2395)
!2395 = !{!2396}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2394, file: !93, line: 59, baseType: !101, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2369, file: !75, line: 114, baseType: !2328, size: 64, offset: 768)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2369, file: !75, line: 115, baseType: !327, size: 64, offset: 832)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2369, file: !75, line: 116, baseType: !327, size: 64, offset: 896)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2369, file: !75, line: 118, baseType: !2323, size: 64, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2369, file: !75, line: 119, baseType: !2319, size: 64, offset: 1024)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2369, file: !75, line: 121, baseType: !2403, size: 64, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !75, line: 121, flags: DIFlagFwdDecl)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2356, file: !2357, line: 88, baseType: !2306, size: 64, offset: 384)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2356, file: !2357, line: 89, baseType: !2328, size: 64, offset: 448)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2356, file: !2357, line: 90, baseType: !2319, size: 64, offset: 512)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2356, file: !2357, line: 91, baseType: !2319, size: 64, offset: 576)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2356, file: !2357, line: 92, baseType: !2319, size: 64, offset: 640)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2356, file: !2357, line: 94, baseType: !2328, size: 64, offset: 704)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2356, file: !2357, line: 95, baseType: !2328, size: 64, offset: 768)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2356, file: !2357, line: 97, baseType: !2390, size: 64, offset: 832)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2356, file: !2357, line: 98, baseType: !2328, size: 64, offset: 896)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2356, file: !2357, line: 100, baseType: !2328, size: 64, offset: 960)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2356, file: !2357, line: 102, baseType: !2328, size: 64, offset: 1024)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2356, file: !2357, line: 103, baseType: !2319, size: 64, offset: 1088)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2356, file: !2357, line: 105, baseType: !2323, size: 64, offset: 1152)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2356, file: !2357, line: 107, baseType: !2419, size: 64, offset: 1216)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2421)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2357, line: 107, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2356, file: !2357, line: 109, baseType: !695, size: 8, offset: 1280)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2289, file: !81, line: 715, baseType: !2368, size: 64, offset: 832)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2289, file: !81, line: 717, baseType: !176, size: 64, offset: 896)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2289, file: !81, line: 719, baseType: !176, size: 64, offset: 960)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2289, file: !81, line: 721, baseType: !615, size: 256, offset: 1024)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2289, file: !81, line: 725, baseType: !2428, size: 448, offset: 1280)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !81, line: 517, size: 448, elements: !2429)
!2429 = !{!2430, !2431, !2432, !2433}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2428, file: !81, line: 518, baseType: !182, size: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2428, file: !81, line: 519, baseType: !182, size: 128, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2428, file: !81, line: 520, baseType: !182, size: 128, offset: 256)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2428, file: !81, line: 521, baseType: !80, size: 32, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2289, file: !81, line: 726, baseType: !2435, size: 2496, offset: 1728)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !93, line: 663, size: 2496, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2481, !2482, !2483, !2484, !2485, !2486, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2594, !2598}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2435, file: !93, line: 664, baseType: !2393, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2435, file: !93, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2435, file: !93, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2435, file: !93, line: 667, baseType: !695, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2435, file: !93, line: 668, baseType: !695, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2435, file: !93, line: 669, baseType: !695, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2435, file: !93, line: 670, baseType: !695, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2435, file: !93, line: 671, baseType: !695, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2435, file: !93, line: 672, baseType: !695, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2435, file: !93, line: 673, baseType: !695, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2435, file: !93, line: 674, baseType: !695, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2435, file: !93, line: 675, baseType: !424, size: 32, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2435, file: !93, line: 676, baseType: !207, size: 32, offset: 96)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2435, file: !93, line: 678, baseType: !182, size: 128, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2435, file: !93, line: 679, baseType: !564, size: 256, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2435, file: !93, line: 680, baseType: !2453, size: 64, offset: 512)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2455, line: 43, size: 1536, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2464, !2465, !2466, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2454, file: !2455, line: 44, baseType: !195, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2454, file: !2455, line: 45, baseType: !101, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2454, file: !2455, line: 46, baseType: !182, size: 128, offset: 128)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2454, file: !2455, line: 47, baseType: !207, size: 32, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2454, file: !2455, line: 48, baseType: !2462, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !93, line: 629, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2454, file: !2455, line: 49, baseType: !857, size: 320, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2454, file: !2455, line: 50, baseType: !177, size: 64, offset: 704)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2454, file: !2455, line: 51, baseType: !2467, size: 64, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2468, line: 29, baseType: !625)
!2468 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2454, file: !2455, line: 52, baseType: !2467, size: 64, offset: 832)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2454, file: !2455, line: 53, baseType: !2467, size: 64, offset: 896)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2454, file: !2455, line: 54, baseType: !2467, size: 64, offset: 960)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2454, file: !2455, line: 55, baseType: !2467, size: 64, offset: 1024)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2454, file: !2455, line: 56, baseType: !177, size: 64, offset: 1088)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2454, file: !2455, line: 57, baseType: !177, size: 64, offset: 1152)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2454, file: !2455, line: 58, baseType: !177, size: 64, offset: 1216)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2454, file: !2455, line: 59, baseType: !177, size: 64, offset: 1280)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2454, file: !2455, line: 60, baseType: !177, size: 64, offset: 1344)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2454, file: !2455, line: 61, baseType: !2293, size: 64, offset: 1408)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2454, file: !2455, line: 62, baseType: !695, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2454, file: !2455, line: 63, baseType: !695, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2435, file: !93, line: 681, baseType: !695, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2435, file: !93, line: 682, baseType: !695, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2435, file: !93, line: 683, baseType: !695, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2435, file: !93, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2435, file: !93, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2435, file: !93, line: 690, baseType: !2487, size: 512, offset: 640)
!2487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !88, line: 118, size: 512, elements: !2488)
!2488 = !{!2489, !2495, !2496, !2501, !2556, !2557, !2558, !2559}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2487, file: !88, line: 119, baseType: !2490, size: 256)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2491, line: 9, size: 256, elements: !2492)
!2491 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2492 = !{!2493, !2494}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2490, file: !2491, line: 10, baseType: !727, size: 192, align: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2490, file: !2491, line: 11, baseType: !2467, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2487, file: !88, line: 120, baseType: !2467, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2487, file: !88, line: 121, baseType: !2497, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!87, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2487, file: !88, line: 122, baseType: !2502, size: 64, offset: 384)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !88, line: 159, size: 512, align: 512, elements: !2504)
!2504 = !{!2505, !2530, !2531, !2534, !2539, !2540, !2551, !2555}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2503, file: !88, line: 160, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !88, line: 215, size: 4608, align: 512, elements: !2508)
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2507, file: !88, line: 216, baseType: !573, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2507, file: !88, line: 217, baseType: !7, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2507, file: !88, line: 218, baseType: !7, size: 32, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2507, file: !88, line: 219, baseType: !7, size: 32, offset: 96)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2507, file: !88, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2507, file: !88, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2507, file: !88, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2507, file: !88, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2507, file: !88, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2507, file: !88, line: 226, baseType: !7, size: 32, offset: 160)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2507, file: !88, line: 227, baseType: !247, size: 16, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2507, file: !88, line: 228, baseType: !247, size: 16, offset: 208)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2507, file: !88, line: 229, baseType: !7, size: 32, offset: 224)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2507, file: !88, line: 235, baseType: !2467, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2507, file: !88, line: 236, baseType: !2500, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2507, file: !88, line: 237, baseType: !2467, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2507, file: !88, line: 238, baseType: !2500, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2507, file: !88, line: 239, baseType: !2527, size: 4096, align: 512, offset: 512)
!2527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2503, size: 4096, align: 512, elements: !2528)
!2528 = !{!2529}
!2529 = !DISubrange(count: 8)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2503, file: !88, line: 161, baseType: !7, size: 32, offset: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2503, file: !88, line: 162, baseType: !2532, size: 32, offset: 96)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !175, line: 32, baseType: !2533)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !311, line: 96, baseType: !101)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2503, file: !88, line: 163, baseType: !2535, size: 32, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !397, line: 274, baseType: !2536)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !397, line: 274, size: 32, elements: !2537)
!2537 = !{!2538}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2536, file: !397, line: 274, baseType: !401, size: 32)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2503, file: !88, line: 164, baseType: !2500, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2503, file: !88, line: 165, baseType: !2541, size: 128, offset: 256)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2491, line: 14, size: 128, elements: !2542)
!2542 = !{!2543}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2541, file: !2491, line: 15, baseType: !2544, size: 128)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !728, line: 26, size: 128, elements: !2545)
!2545 = !{!2546, !2550}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2544, file: !728, line: 27, baseType: !2547, size: 64)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !728, line: 12, size: 64, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2547, file: !728, line: 13, baseType: !732, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2544, file: !728, line: 28, baseType: !732, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2503, file: !88, line: 166, baseType: !2552, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!2467}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2503, file: !88, line: 167, baseType: !2467, size: 64, offset: 448)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2487, file: !88, line: 123, baseType: !235, size: 8, offset: 448)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2487, file: !88, line: 124, baseType: !235, size: 8, offset: 456)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2487, file: !88, line: 125, baseType: !235, size: 8, offset: 464)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2487, file: !88, line: 126, baseType: !235, size: 8, offset: 472)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2435, file: !93, line: 691, baseType: !428, size: 64, offset: 1152)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2435, file: !93, line: 692, baseType: !875, size: 256, offset: 1216)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2435, file: !93, line: 693, baseType: !1173, size: 192, offset: 1472)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2435, file: !93, line: 694, baseType: !2462, size: 64, offset: 1664)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2435, file: !93, line: 695, baseType: !227, size: 32, offset: 1728)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2435, file: !93, line: 696, baseType: !227, size: 32, offset: 1760)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2435, file: !93, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2435, file: !93, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2435, file: !93, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2435, file: !93, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2435, file: !93, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2435, file: !93, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2435, file: !93, line: 703, baseType: !695, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2435, file: !93, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2435, file: !93, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2435, file: !93, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2435, file: !93, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2435, file: !93, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2435, file: !93, line: 709, baseType: !7, size: 32, offset: 1824)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2435, file: !93, line: 710, baseType: !92, size: 32, offset: 1856)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2435, file: !93, line: 711, baseType: !100, size: 32, offset: 1888)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2435, file: !93, line: 712, baseType: !100, size: 32, offset: 1920)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2435, file: !93, line: 713, baseType: !101, size: 32, offset: 1952)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2435, file: !93, line: 714, baseType: !101, size: 32, offset: 1984)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2435, file: !93, line: 715, baseType: !428, size: 64, offset: 2048)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2435, file: !93, line: 716, baseType: !428, size: 64, offset: 2112)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2435, file: !93, line: 717, baseType: !428, size: 64, offset: 2176)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2435, file: !93, line: 718, baseType: !428, size: 64, offset: 2240)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2435, file: !93, line: 720, baseType: !2589, size: 64, offset: 2304)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !93, line: 632, size: 64, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2590, file: !93, line: 633, baseType: !207, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2590, file: !93, line: 634, baseType: !7, size: 32, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2435, file: !93, line: 721, baseType: !2595, size: 64, offset: 2368)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{null, !2293, !611}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2435, file: !93, line: 722, baseType: !2599, size: 64, offset: 2432)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !93, line: 722, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2289, file: !81, line: 727, baseType: !2602, size: 64, offset: 4224)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !93, line: 742, size: 1792, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2611, !2612, !2613}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2603, file: !93, line: 743, baseType: !2325, size: 1472)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2603, file: !93, line: 744, baseType: !2328, size: 64, offset: 1472)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2603, file: !93, line: 745, baseType: !2608, size: 64, offset: 1536)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !2293, !695}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2603, file: !93, line: 746, baseType: !2328, size: 64, offset: 1600)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2603, file: !93, line: 747, baseType: !2319, size: 64, offset: 1664)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2603, file: !93, line: 748, baseType: !2319, size: 64, offset: 1728)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2289, file: !81, line: 736, baseType: !2615, size: 128, offset: 4288)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !81, line: 529, size: 128, elements: !2616)
!2616 = !{!2617, !2621}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2615, file: !81, line: 531, baseType: !2618, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2620, line: 13, flags: DIFlagFwdDecl)
!2620 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2615, file: !81, line: 532, baseType: !2622, size: 64, offset: 64)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !81, line: 49, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2289, file: !81, line: 738, baseType: !2625, size: 64, offset: 4416)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2627)
!2627 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !81, line: 738, flags: DIFlagFwdDecl)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2289, file: !81, line: 740, baseType: !2629, size: 64, offset: 4480)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2289, file: !81, line: 741, baseType: !428, size: 64, offset: 4544)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2289, file: !81, line: 746, baseType: !428, size: 64, offset: 4608)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2289, file: !81, line: 747, baseType: !2633, size: 64, offset: 4672)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !81, line: 747, flags: DIFlagFwdDecl)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2289, file: !81, line: 749, baseType: !2637, size: 64, offset: 4736)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !81, line: 428, size: 128, elements: !2639)
!2639 = !{!2640, !2641, !2642}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2638, file: !81, line: 433, baseType: !7, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2638, file: !81, line: 434, baseType: !7, size: 32, offset: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2638, file: !81, line: 435, baseType: !177, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2289, file: !81, line: 751, baseType: !182, size: 128, offset: 4800)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2289, file: !81, line: 762, baseType: !2645, size: 64, offset: 4928)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !81, line: 762, flags: DIFlagFwdDecl)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2289, file: !81, line: 770, baseType: !2648, offset: 4992)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2649, line: 5, elements: !904)
!2649 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2289, file: !81, line: 772, baseType: !2651, size: 64, offset: 4992)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2653, line: 18, flags: DIFlagFwdDecl)
!2653 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2289, file: !81, line: 773, baseType: !2655, size: 64, offset: 5056)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2657, line: 41, size: 512, elements: !2658)
!2657 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2658 = !{!2659, !2660, !2754, !2755, !2756, !2757}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2656, file: !2657, line: 42, baseType: !2655, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2656, file: !2657, line: 43, baseType: !2661, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2663)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2657, line: 125, size: 1408, elements: !2664)
!2664 = !{!2665, !2669, !2673, !2679, !2683, !2684, !2689, !2693, !2697, !2701, !2705, !2706, !2710, !2714, !2718, !2729, !2730, !2731, !2732, !2742, !2746, !2750}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2663, file: !2657, line: 126, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!2655, !2655}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2663, file: !2657, line: 127, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2655}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2663, file: !2657, line: 128, baseType: !2674, size: 64, offset: 128)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!695, !2677}
!2677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2678, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2663, file: !2657, line: 129, baseType: !2680, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!1622, !2677, !2309}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2663, file: !2657, line: 131, baseType: !2674, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2663, file: !2657, line: 133, baseType: !2685, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DISubroutineType(types: !2687)
!2687 = !{!2688, !2677}
!2688 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2657, line: 132, flags: DIFlagFwdDecl)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2663, file: !2657, line: 134, baseType: !2690, size: 64, offset: 384)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!695, !2677, !195}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2663, file: !2657, line: 136, baseType: !2694, size: 64, offset: 448)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!101, !2677, !195, !7, !176, !323}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2663, file: !2657, line: 141, baseType: !2698, size: 64, offset: 512)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!101, !2677, !195, !952, !323}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2663, file: !2657, line: 144, baseType: !2702, size: 64, offset: 576)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{!195, !2677}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2663, file: !2657, line: 145, baseType: !2702, size: 64, offset: 640)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2663, file: !2657, line: 146, baseType: !2707, size: 64, offset: 704)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!2655, !2677}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2663, file: !2657, line: 148, baseType: !2711, size: 64, offset: 768)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!2655, !2677, !2655}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2663, file: !2657, line: 151, baseType: !2715, size: 64, offset: 832)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!2655, !2677, !195}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2663, file: !2657, line: 153, baseType: !2719, size: 64, offset: 896)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!101, !2677, !195, !195, !7, !7, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2657, line: 94, size: 640, elements: !2724)
!2724 = !{!2725, !2726, !2727}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2723, file: !2657, line: 95, baseType: !2655, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2723, file: !2657, line: 96, baseType: !7, size: 32, offset: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2723, file: !2657, line: 97, baseType: !2728, size: 512, offset: 128)
!2728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 512, elements: !2528)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2663, file: !2657, line: 158, baseType: !2711, size: 64, offset: 960)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2663, file: !2657, line: 161, baseType: !2707, size: 64, offset: 1024)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2663, file: !2657, line: 163, baseType: !2666, size: 64, offset: 1088)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2663, file: !2657, line: 164, baseType: !2733, size: 64, offset: 1152)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!101, !2677, !2736}
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2657, line: 73, size: 128, elements: !2738)
!2738 = !{!2739, !2740, !2741}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2737, file: !2657, line: 74, baseType: !7, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2737, file: !2657, line: 75, baseType: !7, size: 32, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2737, file: !2657, line: 76, baseType: !2677, size: 64, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2663, file: !2657, line: 166, baseType: !2743, size: 64, offset: 1216)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!176, !2655, !101}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2663, file: !2657, line: 167, baseType: !2747, size: 64, offset: 1280)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!101, !2677, !7}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2663, file: !2657, line: 168, baseType: !2751, size: 64, offset: 1344)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!101, !2655}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2656, file: !2657, line: 44, baseType: !2293, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2656, file: !2657, line: 45, baseType: !182, size: 128, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2656, file: !2657, line: 46, baseType: !182, size: 128, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2656, file: !2657, line: 47, baseType: !235, size: 8, offset: 448)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2289, file: !81, line: 776, baseType: !101, size: 32, offset: 5120)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2289, file: !81, line: 778, baseType: !511, size: 32, offset: 5152)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2289, file: !81, line: 779, baseType: !424, size: 32, offset: 5184)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2289, file: !81, line: 781, baseType: !207, size: 32, offset: 5216)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2289, file: !81, line: 782, baseType: !182, size: 128, offset: 5248)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2289, file: !81, line: 784, baseType: !2764, size: 64, offset: 5376)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2766)
!2766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2767, line: 52, size: 768, elements: !2768)
!2767 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2768 = !{!2769, !2770, !2771, !2772, !2773, !2777, !2781, !2782, !2783, !2808, !2812, !2816}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2766, file: !2767, line: 53, baseType: !195, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2766, file: !2767, line: 55, baseType: !327, size: 64, offset: 64)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2766, file: !2767, line: 56, baseType: !327, size: 64, offset: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2766, file: !2767, line: 58, baseType: !2306, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2766, file: !2767, line: 59, baseType: !2774, size: 64, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!277, !2309, !2315}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2766, file: !2767, line: 61, baseType: !2778, size: 64, offset: 320)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2764}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2766, file: !2767, line: 62, baseType: !2319, size: 64, offset: 384)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2766, file: !2767, line: 64, baseType: !2328, size: 64, offset: 448)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2766, file: !2767, line: 66, baseType: !2784, size: 64, offset: 512)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !2787)
!2787 = !{!2788, !2789, !2793, !2797, !2803, !2807}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2786, file: !58, line: 40, baseType: !57, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2786, file: !58, line: 41, baseType: !2790, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!695}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2786, file: !58, line: 42, baseType: !2794, size: 64, offset: 128)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!176}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2786, file: !58, line: 43, baseType: !2798, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!1622, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2786, file: !58, line: 44, baseType: !2804, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!1622}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2786, file: !58, line: 45, baseType: !658, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2766, file: !2767, line: 67, baseType: !2809, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!1622, !2309}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2766, file: !2767, line: 69, baseType: !2813, size: 64, offset: 640)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DISubroutineType(types: !2815)
!2815 = !{null, !2309, !2316, !2317}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2766, file: !2767, line: 71, baseType: !2323, size: 64, offset: 704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2289, file: !81, line: 785, baseType: !327, size: 64, offset: 5440)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2289, file: !81, line: 787, baseType: !2319, size: 64, offset: 5504)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2289, file: !81, line: 788, baseType: !2820, size: 64, offset: 5568)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !81, line: 46, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2289, file: !81, line: 789, baseType: !2823, size: 64, offset: 5632)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !81, line: 48, flags: DIFlagFwdDecl)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2289, file: !81, line: 791, baseType: !2826, size: 64, offset: 5696)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !81, line: 597, size: 128, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2833}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2827, file: !81, line: 598, baseType: !108, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2827, file: !81, line: 599, baseType: !117, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2827, file: !81, line: 600, baseType: !122, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2827, file: !81, line: 601, baseType: !695, size: 8, offset: 96)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2827, file: !81, line: 602, baseType: !695, size: 8, offset: 104)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2289, file: !81, line: 793, baseType: !127, size: 32, offset: 5760)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2289, file: !81, line: 795, baseType: !695, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2289, file: !81, line: 796, baseType: !695, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2289, file: !81, line: 797, baseType: !695, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2289, file: !81, line: 798, baseType: !695, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2289, file: !81, line: 799, baseType: !695, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !507, file: !64, line: 1226, baseType: !2841, size: 64, offset: 1664)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !64, line: 1226, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !507, file: !64, line: 1227, baseType: !2844, size: 64, offset: 1728)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !134, line: 163, size: 6848, elements: !2846)
!2846 = !{!2847, !2848, !2849, !2850, !2851, !2852, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2897, !2898, !2899, !2900, !2902, !2903, !2904}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2845, file: !134, line: 164, baseType: !428, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2845, file: !134, line: 165, baseType: !727, size: 192, align: 64, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !2845, file: !134, line: 166, baseType: !182, size: 128, offset: 256)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2845, file: !134, line: 167, baseType: !177, size: 64, offset: 384)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !2845, file: !134, line: 168, baseType: !177, size: 64, offset: 448)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2845, file: !134, line: 170, baseType: !2853, size: 32, offset: 512)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2854, line: 19, size: 32, elements: !2855)
!2854 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2855 = !{!2856}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2853, file: !2854, line: 20, baseType: !1162, size: 32)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !2845, file: !134, line: 171, baseType: !7, size: 32, offset: 544)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !2845, file: !134, line: 172, baseType: !7, size: 32, offset: 576)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !2845, file: !134, line: 173, baseType: !7, size: 32, offset: 608)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !2845, file: !134, line: 173, baseType: !7, size: 32, offset: 640)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !2845, file: !134, line: 179, baseType: !619, size: 64, offset: 704)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !2845, file: !134, line: 184, baseType: !177, size: 64, offset: 768)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !2845, file: !134, line: 186, baseType: !2864, size: 4672, offset: 832)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !134, line: 105, size: 4672, elements: !2865)
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !2864, file: !134, line: 106, baseType: !2844, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2864, file: !134, line: 108, baseType: !177, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !2864, file: !134, line: 109, baseType: !177, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !2864, file: !134, line: 111, baseType: !182, size: 128, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !2864, file: !134, line: 112, baseType: !182, size: 128, offset: 320)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !2864, file: !134, line: 113, baseType: !182, size: 128, offset: 448)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !2864, file: !134, line: 114, baseType: !182, size: 128, offset: 576)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2864, file: !134, line: 115, baseType: !207, size: 32, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !2864, file: !134, line: 117, baseType: !227, size: 32, offset: 736)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !2864, file: !134, line: 118, baseType: !1590, size: 1280, offset: 768)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !2864, file: !134, line: 120, baseType: !177, size: 64, offset: 2048)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !2864, file: !134, line: 121, baseType: !177, size: 64, offset: 2112)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !2864, file: !134, line: 122, baseType: !177, size: 64, offset: 2176)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !2864, file: !134, line: 123, baseType: !177, size: 64, offset: 2240)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !2864, file: !134, line: 124, baseType: !177, size: 64, offset: 2304)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !2864, file: !134, line: 132, baseType: !177, size: 64, offset: 2368)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !2864, file: !134, line: 133, baseType: !177, size: 64, offset: 2432)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !2864, file: !134, line: 135, baseType: !2884, size: 384, offset: 2496)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !2885, line: 76, size: 384, elements: !2886)
!2885 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!2886 = !{!2887, !2888, !2889}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2884, file: !2885, line: 78, baseType: !1350, size: 320)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !2884, file: !2885, line: 80, baseType: !7, size: 32, offset: 320)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2884, file: !2885, line: 81, baseType: !573, size: 32, offset: 352)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !2864, file: !134, line: 136, baseType: !101, size: 32, offset: 2880)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !2864, file: !134, line: 137, baseType: !133, size: 32, offset: 2912)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !2864, file: !134, line: 139, baseType: !207, size: 32, offset: 2944)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !2864, file: !134, line: 140, baseType: !182, size: 128, offset: 3008)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !2864, file: !134, line: 141, baseType: !932, size: 704, offset: 3136)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !2864, file: !134, line: 142, baseType: !932, size: 704, offset: 3840)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !2864, file: !134, line: 144, baseType: !182, size: 128, offset: 4544)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !2845, file: !134, line: 187, baseType: !182, size: 128, offset: 5504)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !2845, file: !134, line: 193, baseType: !1173, size: 192, offset: 5632)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2845, file: !134, line: 195, baseType: !2293, size: 64, offset: 5824)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2845, file: !134, line: 196, baseType: !2901, size: 512, offset: 5888)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 512, elements: !282)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2845, file: !134, line: 197, baseType: !2293, size: 64, offset: 6400)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !2845, file: !134, line: 199, baseType: !857, size: 320, offset: 6464)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !2845, file: !134, line: 202, baseType: !390, size: 64, offset: 6784)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !507, file: !64, line: 1228, baseType: !2906, size: 64, offset: 1792)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !64, line: 1228, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !507, file: !64, line: 1229, baseType: !861, size: 128, offset: 1856)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !507, file: !64, line: 1230, baseType: !7, size: 32, offset: 1984)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !507, file: !64, line: 1231, baseType: !2911, size: 2496, offset: 2048)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !69, line: 521, size: 2496, elements: !2912)
!2912 = !{!2913, !2914, !2915, !2917, !2949}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2911, file: !69, line: 522, baseType: !7, size: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2911, file: !69, line: 523, baseType: !1236, size: 320, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2911, file: !69, line: 524, baseType: !2916, size: 192, offset: 384)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 192, elements: !278)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2911, file: !69, line: 525, baseType: !2918, size: 1728, offset: 576)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2919, size: 1728, elements: !278)
!2919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !69, line: 222, size: 576, elements: !2920)
!2920 = !{!2921, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948}
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2919, file: !69, line: 223, baseType: !2922, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !69, line: 445, size: 256, elements: !2924)
!2924 = !{!2925, !2926, !2939, !2940}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2923, file: !69, line: 446, baseType: !101, size: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2923, file: !69, line: 447, baseType: !2927, size: 64, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !69, line: 312, size: 512, elements: !2930)
!2930 = !{!2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2929, file: !69, line: 313, baseType: !1047, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2929, file: !69, line: 314, baseType: !1047, size: 64, offset: 64)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2929, file: !69, line: 315, baseType: !1047, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2929, file: !69, line: 316, baseType: !1047, size: 64, offset: 192)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2929, file: !69, line: 317, baseType: !2104, size: 64, offset: 256)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2929, file: !69, line: 318, baseType: !2104, size: 64, offset: 320)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2929, file: !69, line: 319, baseType: !2104, size: 64, offset: 384)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2929, file: !69, line: 320, baseType: !2134, size: 64, offset: 448)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2923, file: !69, line: 448, baseType: !544, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2923, file: !69, line: 449, baseType: !2922, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2919, file: !69, line: 224, baseType: !101, size: 32, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2919, file: !69, line: 226, baseType: !182, size: 128, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2919, file: !69, line: 227, baseType: !177, size: 64, offset: 256)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2919, file: !69, line: 228, baseType: !7, size: 32, offset: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2919, file: !69, line: 229, baseType: !7, size: 32, offset: 352)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2919, file: !69, line: 230, baseType: !2072, size: 64, offset: 384)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2919, file: !69, line: 231, baseType: !2072, size: 64, offset: 448)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2919, file: !69, line: 232, baseType: !176, size: 64, offset: 512)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2911, file: !69, line: 526, baseType: !2950, size: 192, offset: 2304)
!2950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2927, size: 192, elements: !278)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !507, file: !64, line: 1233, baseType: !2952, size: 2368, offset: 4544)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !64, line: 1184, size: 2368, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2952, file: !64, line: 1185, baseType: !247, size: 16)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2952, file: !64, line: 1186, baseType: !247, size: 16, offset: 16)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2952, file: !64, line: 1187, baseType: !2957, size: 2304, offset: 64)
!2957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2958, size: 2304, elements: !278)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2959, line: 12, size: 768, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2960 = !{!2961, !2969, !2970, !4485, !4486}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2958, file: !2959, line: 13, baseType: !2962, size: 384)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2963, line: 17, size: 384, elements: !2964)
!2963 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2964 = !{!2965, !2966, !2967, !2968}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2962, file: !2963, line: 18, baseType: !101, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2962, file: !2963, line: 19, baseType: !101, size: 32, offset: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2962, file: !2963, line: 20, baseType: !1173, size: 192, offset: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2962, file: !2963, line: 22, baseType: !835, size: 128, align: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2958, file: !2959, line: 14, baseType: !687, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2958, file: !2959, line: 15, baseType: !2971, size: 64, offset: 448)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2972, line: 16, size: 64, elements: !2973)
!2972 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2973 = !{!2974}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2971, file: !2972, line: 17, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1970, line: 746, size: 58368, elements: !2977)
!2977 = !{!2978, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3058, !3069, !3089, !3093, !3096, !3127, !3128, !3129, !3130, !3141, !3143, !3144, !3145, !3146, !3147, !3148, !3159, !3160, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3177, !3178, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3266, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3314, !3320, !3321, !3322, !3323, !3324, !3328, !3331, !3338, !3343, !3346, !3349, !3352, !3355, !3893, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3931, !3932, !3933, !3942, !3950, !3951, !3952, !3953, !3954, !3959, !3960, !3961, !3964, !3965, !3968, !3971, !3974, !3981, !3984, !3985, !4071, !4072, !4073, !4074, !4075, !4081, !4082, !4083, !4084, !4087, !4088, !4091, !4094, !4095, !4098, !4099, !4100, !4103, !4104, !4105, !4106, !4107, !4108, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4140, !4141, !4147, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4229, !4231, !4232, !4233, !4234, !4235, !4236, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2976, file: !1970, line: 752, baseType: !2979, size: 192)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2980, line: 56, size: 192, elements: !2981)
!2980 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2981 = !{!2982, !2983, !2984, !2985}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2979, file: !2980, line: 57, baseType: !177, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2979, file: !2980, line: 58, baseType: !177, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2979, file: !2980, line: 59, baseType: !424, size: 32, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2979, file: !2980, line: 61, baseType: !424, size: 32, offset: 160)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2976, file: !1970, line: 754, baseType: !7, size: 32, offset: 192)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2976, file: !1970, line: 767, baseType: !176, size: 64, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2976, file: !1970, line: 768, baseType: !1162, size: 32, offset: 320)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2976, file: !1970, line: 770, baseType: !7, size: 32, offset: 352)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2976, file: !1970, line: 771, baseType: !7, size: 32, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2976, file: !1970, line: 774, baseType: !101, size: 32, offset: 416)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2976, file: !1970, line: 775, baseType: !2993, size: 128, offset: 448)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2994, line: 58, size: 128, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2995 = !{!2996, !2997, !3002, !3003}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2993, file: !2994, line: 59, baseType: !1119, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, scope: !2993, file: !2994, line: 60, baseType: !2998, size: 32, offset: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2993, file: !2994, line: 60, size: 32, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2998, file: !2994, line: 61, baseType: !7, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2998, file: !2994, line: 62, baseType: !227, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2993, file: !2994, line: 65, baseType: !245, size: 16, offset: 96)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2993, file: !2994, line: 65, baseType: !245, size: 16, offset: 112)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2976, file: !1970, line: 776, baseType: !7, size: 32, offset: 576)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2976, file: !1970, line: 777, baseType: !177, size: 64, offset: 640)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2976, file: !1970, line: 778, baseType: !2975, size: 64, offset: 704)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2976, file: !1970, line: 787, baseType: !101, size: 32, offset: 768)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2976, file: !1970, line: 788, baseType: !101, size: 32, offset: 800)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2976, file: !1970, line: 790, baseType: !101, size: 32, offset: 832)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2976, file: !1970, line: 792, baseType: !101, size: 32, offset: 864)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2976, file: !1970, line: 793, baseType: !101, size: 32, offset: 896)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2976, file: !1970, line: 794, baseType: !101, size: 32, offset: 928)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2976, file: !1970, line: 795, baseType: !7, size: 32, offset: 960)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2976, file: !1970, line: 797, baseType: !3015, size: 2048, offset: 1024)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1970, line: 551, size: 2048, elements: !3016)
!3016 = !{!3017, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3037, !3040, !3041, !3042}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3015, file: !1970, line: 553, baseType: !3018, size: 128)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1970, line: 411, size: 128, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3018, file: !1970, line: 412, baseType: !177, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3018, file: !1970, line: 413, baseType: !424, size: 32, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3015, file: !1970, line: 554, baseType: !727, size: 192, align: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3015, file: !1970, line: 555, baseType: !428, size: 64, offset: 320)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3015, file: !1970, line: 556, baseType: !428, size: 64, offset: 384)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3015, file: !1970, line: 558, baseType: !182, size: 128, offset: 448)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3015, file: !1970, line: 559, baseType: !7, size: 32, offset: 576)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3015, file: !1970, line: 561, baseType: !428, size: 64, offset: 640)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3015, file: !1970, line: 562, baseType: !428, size: 64, offset: 704)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3015, file: !1970, line: 563, baseType: !428, size: 64, offset: 768)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3015, file: !1970, line: 564, baseType: !428, size: 64, offset: 832)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3015, file: !1970, line: 565, baseType: !625, size: 64, offset: 896)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3015, file: !1970, line: 566, baseType: !428, size: 64, offset: 960)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3015, file: !1970, line: 568, baseType: !428, size: 64, offset: 1024)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3015, file: !1970, line: 571, baseType: !101, size: 32, offset: 1088)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3015, file: !1970, line: 572, baseType: !3036, size: 64, offset: 1152)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3015, file: !1970, line: 574, baseType: !3038, size: 64, offset: 1216)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1970, line: 49, flags: DIFlagFwdDecl)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3015, file: !1970, line: 576, baseType: !3038, size: 64, offset: 1280)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3015, file: !1970, line: 578, baseType: !177, size: 64, offset: 1344)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3015, file: !1970, line: 588, baseType: !3043, size: 512, align: 512, offset: 1536)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1970, line: 497, size: 512, align: 512, elements: !3044)
!3044 = !{!3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3043, file: !1970, line: 498, baseType: !428, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3043, file: !1970, line: 499, baseType: !428, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3043, file: !1970, line: 500, baseType: !428, size: 64, offset: 128)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3043, file: !1970, line: 501, baseType: !424, size: 32, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3043, file: !1970, line: 502, baseType: !424, size: 32, offset: 224)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3043, file: !1970, line: 503, baseType: !177, size: 64, offset: 256)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3043, file: !1970, line: 504, baseType: !177, size: 64, offset: 320)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3043, file: !1970, line: 505, baseType: !177, size: 64, offset: 384)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3043, file: !1970, line: 506, baseType: !3054, size: 64, align: 64, offset: 448)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1970, line: 445, size: 64, align: 64, elements: !3055)
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3054, file: !1970, line: 446, baseType: !7, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3054, file: !1970, line: 447, baseType: !7, size: 32, offset: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2976, file: !1970, line: 798, baseType: !3059, size: 384, offset: 3072)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1970, line: 592, size: 384, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066, !3067}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3059, file: !1970, line: 593, baseType: !182, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3059, file: !1970, line: 594, baseType: !177, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3059, file: !1970, line: 595, baseType: !177, size: 64, offset: 192)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3059, file: !1970, line: 596, baseType: !7, size: 32, offset: 256)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3059, file: !1970, line: 597, baseType: !247, size: 16, offset: 288)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3059, file: !1970, line: 598, baseType: !247, size: 16, offset: 304)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3059, file: !1970, line: 600, baseType: !3068, size: 64, offset: 320)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2976, file: !1970, line: 799, baseType: !3070, size: 1792, offset: 3456)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1970, line: 610, size: 1792, elements: !3071)
!3071 = !{!3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3070, file: !1970, line: 611, baseType: !727, size: 192, align: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3070, file: !1970, line: 618, baseType: !428, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3070, file: !1970, line: 619, baseType: !428, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3070, file: !1970, line: 620, baseType: !428, size: 64, offset: 320)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3070, file: !1970, line: 621, baseType: !428, size: 64, offset: 384)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3070, file: !1970, line: 622, baseType: !428, size: 64, offset: 448)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3070, file: !1970, line: 629, baseType: !625, size: 64, offset: 512)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3070, file: !1970, line: 630, baseType: !428, size: 64, offset: 576)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3070, file: !1970, line: 631, baseType: !7, size: 32, offset: 640)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3070, file: !1970, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3070, file: !1970, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3070, file: !1970, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3070, file: !1970, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3070, file: !1970, line: 662, baseType: !2487, size: 512, offset: 704)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3070, file: !1970, line: 671, baseType: !2487, size: 512, offset: 1216)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3070, file: !1970, line: 679, baseType: !3088, size: 64, offset: 1728)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2976, file: !1970, line: 800, baseType: !3090, size: 64, offset: 5248)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3092)
!3092 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1970, line: 800, flags: DIFlagFwdDecl)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2976, file: !1970, line: 809, baseType: !3094, size: 64, offset: 5312)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1970, line: 70, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2976, file: !1970, line: 825, baseType: !3097, size: 2048, align: 512, offset: 5632)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1970, line: 509, size: 2048, align: 512, elements: !3098)
!3098 = !{!3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3097, file: !1970, line: 511, baseType: !428, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3097, file: !1970, line: 512, baseType: !428, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3097, file: !1970, line: 513, baseType: !428, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3097, file: !1970, line: 514, baseType: !428, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3097, file: !1970, line: 515, baseType: !428, size: 64, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3097, file: !1970, line: 516, baseType: !428, size: 64, offset: 320)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3097, file: !1970, line: 518, baseType: !428, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3097, file: !1970, line: 519, baseType: !428, size: 64, offset: 448)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3097, file: !1970, line: 520, baseType: !625, size: 64, offset: 512)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3097, file: !1970, line: 522, baseType: !428, size: 64, offset: 576)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3097, file: !1970, line: 523, baseType: !428, size: 64, offset: 640)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3097, file: !1970, line: 524, baseType: !625, size: 64, offset: 704)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3097, file: !1970, line: 526, baseType: !625, size: 64, offset: 768)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3097, file: !1970, line: 527, baseType: !428, size: 64, offset: 832)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3097, file: !1970, line: 529, baseType: !428, size: 64, offset: 896)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3097, file: !1970, line: 530, baseType: !428, size: 64, offset: 960)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3097, file: !1970, line: 531, baseType: !428, size: 64, offset: 1024)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3097, file: !1970, line: 532, baseType: !428, size: 64, offset: 1088)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3097, file: !1970, line: 533, baseType: !428, size: 64, offset: 1152)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3097, file: !1970, line: 535, baseType: !428, size: 64, offset: 1216)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3097, file: !1970, line: 536, baseType: !428, size: 64, offset: 1280)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3097, file: !1970, line: 537, baseType: !428, size: 64, offset: 1344)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3097, file: !1970, line: 538, baseType: !428, size: 64, offset: 1408)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3097, file: !1970, line: 539, baseType: !428, size: 64, offset: 1472)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3097, file: !1970, line: 540, baseType: !428, size: 64, offset: 1536)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3097, file: !1970, line: 541, baseType: !428, size: 64, offset: 1600)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3097, file: !1970, line: 542, baseType: !428, size: 64, offset: 1664)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3097, file: !1970, line: 543, baseType: !428, size: 64, offset: 1728)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2976, file: !1970, line: 833, baseType: !7, size: 32, offset: 7680)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2976, file: !1970, line: 836, baseType: !7, size: 32, offset: 7712)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2976, file: !1970, line: 837, baseType: !101, size: 32, offset: 7744)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2976, file: !1970, line: 838, baseType: !3131, size: 64, offset: 7808)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3133)
!3133 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3134, line: 19, baseType: !3135)
!3134 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3134, line: 19, size: 64, elements: !3136)
!3136 = !{!3137}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3135, file: !3134, line: 19, baseType: !3138, size: 64)
!3138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 64, elements: !3139)
!3139 = !{!3140}
!3140 = !DISubrange(count: 1)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2976, file: !1970, line: 839, baseType: !3142, size: 64, offset: 7872)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2976, file: !1970, line: 840, baseType: !3133, size: 64, offset: 7936)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2976, file: !1970, line: 841, baseType: !176, size: 64, offset: 8000)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2976, file: !1970, line: 843, baseType: !247, size: 16, offset: 8064)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2976, file: !1970, line: 845, baseType: !247, size: 16, offset: 8080)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2976, file: !1970, line: 848, baseType: !101, size: 32, offset: 8096)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2976, file: !1970, line: 849, baseType: !3149, size: 32, offset: 8128)
!3149 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1970, line: 718, size: 32, elements: !3150)
!3150 = !{!3151, !3158}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3149, file: !1970, line: 724, baseType: !3152, size: 32)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !1970, line: 719, size: 32, elements: !3153)
!3153 = !{!3154, !3155, !3156, !3157}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3152, file: !1970, line: 720, baseType: !235, size: 8)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3152, file: !1970, line: 721, baseType: !235, size: 8, offset: 8)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3152, file: !1970, line: 722, baseType: !235, size: 8, offset: 16)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3152, file: !1970, line: 723, baseType: !235, size: 8, offset: 24)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3149, file: !1970, line: 725, baseType: !424, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2976, file: !1970, line: 850, baseType: !182, size: 128, offset: 8192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2976, file: !1970, line: 851, baseType: !3161, size: 64, offset: 8320)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1970, line: 60, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2976, file: !1970, line: 855, baseType: !177, size: 64, offset: 8384)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2976, file: !1970, line: 856, baseType: !235, size: 8, offset: 8448)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2976, file: !1970, line: 857, baseType: !235, size: 8, offset: 8456)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2976, file: !1970, line: 858, baseType: !101, size: 32, offset: 8480)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2976, file: !1970, line: 859, baseType: !182, size: 128, offset: 8512)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2976, file: !1970, line: 860, baseType: !101, size: 32, offset: 8640)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2976, file: !1970, line: 861, baseType: !182, size: 128, offset: 8704)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2976, file: !1970, line: 873, baseType: !3171, size: 256, offset: 8832)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1970, line: 376, size: 256, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3171, file: !1970, line: 381, baseType: !177, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3171, file: !1970, line: 384, baseType: !430, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3171, file: !1970, line: 389, baseType: !430, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3171, file: !1970, line: 392, baseType: !430, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2976, file: !1970, line: 875, baseType: !182, size: 128, offset: 9088)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2976, file: !1970, line: 877, baseType: !3179, size: 320, offset: 9216)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3180, line: 86, size: 320, elements: !3181)
!3180 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3181 = !{!3182, !3183, !3184}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3179, file: !3180, line: 87, baseType: !101, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3179, file: !3180, line: 88, baseType: !182, size: 128, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3179, file: !3180, line: 89, baseType: !182, size: 128, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2976, file: !1970, line: 878, baseType: !727, size: 192, align: 64, offset: 9536)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2976, file: !1970, line: 881, baseType: !1507, size: 64, offset: 9728)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2976, file: !1970, line: 882, baseType: !1507, size: 64, offset: 9792)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2976, file: !1970, line: 884, baseType: !101, size: 32, offset: 9856)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2976, file: !1970, line: 885, baseType: !101, size: 32, offset: 9888)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2976, file: !1970, line: 886, baseType: !101, size: 32, offset: 9920)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2976, file: !1970, line: 888, baseType: !101, size: 32, offset: 9952)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2976, file: !1970, line: 890, baseType: !177, size: 64, offset: 9984)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2976, file: !1970, line: 893, baseType: !7, size: 32, offset: 10048)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2976, file: !1970, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2976, file: !1970, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2976, file: !1970, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2976, file: !1970, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2976, file: !1970, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2976, file: !1970, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2976, file: !1970, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2976, file: !1970, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2976, file: !1970, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2976, file: !1970, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2976, file: !1970, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2976, file: !1970, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2976, file: !1970, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2976, file: !1970, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2976, file: !1970, line: 969, baseType: !177, size: 64, offset: 10176)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2976, file: !1970, line: 971, baseType: !3210, size: 448, offset: 10240)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !146, line: 25, size: 448, elements: !3211)
!3211 = !{!3212, !3213, !3218}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3210, file: !146, line: 26, baseType: !177, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3210, file: !146, line: 27, baseType: !3214, size: 64, offset: 64)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!178, !3217}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, scope: !3210, file: !146, line: 28, baseType: !3219, size: 320, offset: 128)
!3219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3210, file: !146, line: 28, size: 320, elements: !3220)
!3220 = !{!3221, !3231, !3256}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3219, file: !146, line: 37, baseType: !3222, size: 320)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !146, line: 30, size: 320, elements: !3223)
!3223 = !{!3224, !3226, !3227, !3228, !3229, !3230}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3222, file: !146, line: 31, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3222, file: !146, line: 32, baseType: !424, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3222, file: !146, line: 33, baseType: !424, size: 32, offset: 96)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3222, file: !146, line: 34, baseType: !424, size: 32, offset: 128)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3222, file: !146, line: 35, baseType: !428, size: 64, offset: 192)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3222, file: !146, line: 36, baseType: !3225, size: 64, offset: 256)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3219, file: !146, line: 47, baseType: !3232, size: 192)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !146, line: 39, size: 192, elements: !3233)
!3233 = !{!3234, !3235, !3236, !3255}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3232, file: !146, line: 40, baseType: !2532, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3232, file: !146, line: 41, baseType: !145, size: 32, offset: 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, scope: !3232, file: !146, line: 42, baseType: !3237, size: 64, offset: 64)
!3237 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3232, file: !146, line: 42, size: 64, elements: !3238)
!3238 = !{!3239, !3247}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3237, file: !146, line: 43, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3242, line: 7, size: 128, elements: !3243)
!3242 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3243 = !{!3244, !3246}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3241, file: !3242, line: 8, baseType: !3245, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !311, line: 93, baseType: !518)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3241, file: !3242, line: 9, baseType: !518, size: 64, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3237, file: !146, line: 44, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3250, line: 7, size: 64, elements: !3251)
!3250 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3251 = !{!3252, !3254}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3249, file: !3250, line: 8, baseType: !3253, size: 32)
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3250, line: 5, baseType: !611)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3249, file: !3250, line: 9, baseType: !611, size: 32, offset: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3232, file: !146, line: 46, baseType: !428, size: 64, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3219, file: !146, line: 55, baseType: !3257, size: 256)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3219, file: !146, line: 49, size: 256, elements: !3258)
!3258 = !{!3259, !3262, !3263, !3264, !3265}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3257, file: !146, line: 50, baseType: !3260, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !146, line: 14, flags: DIFlagFwdDecl)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3257, file: !146, line: 51, baseType: !101, size: 32, offset: 64)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3257, file: !146, line: 52, baseType: !101, size: 32, offset: 96)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3257, file: !146, line: 53, baseType: !177, size: 64, offset: 128)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3257, file: !146, line: 54, baseType: !177, size: 64, offset: 192)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2976, file: !1970, line: 973, baseType: !3267, size: 32, offset: 10688)
!3267 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !175, line: 27, baseType: !3268)
!3268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !311, line: 28, baseType: !101)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2976, file: !1970, line: 974, baseType: !3267, size: 32, offset: 10720)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2976, file: !1970, line: 978, baseType: !177, size: 64, offset: 10752)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2976, file: !1970, line: 987, baseType: !2975, size: 64, offset: 10816)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2976, file: !1970, line: 990, baseType: !2975, size: 64, offset: 10880)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2976, file: !1970, line: 995, baseType: !182, size: 128, offset: 10944)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2976, file: !1970, line: 996, baseType: !182, size: 128, offset: 11072)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2976, file: !1970, line: 997, baseType: !2975, size: 64, offset: 11200)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2976, file: !1970, line: 1005, baseType: !182, size: 128, offset: 11264)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2976, file: !1970, line: 1006, baseType: !182, size: 128, offset: 11392)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2976, file: !1970, line: 1009, baseType: !1158, size: 64, offset: 11520)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2976, file: !1970, line: 1010, baseType: !3280, size: 512, offset: 11584)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !861, size: 512, elements: !845)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2976, file: !1970, line: 1011, baseType: !182, size: 128, offset: 12096)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2976, file: !1970, line: 1012, baseType: !182, size: 128, offset: 12224)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2976, file: !1970, line: 1014, baseType: !563, size: 64, offset: 12352)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2976, file: !1970, line: 1017, baseType: !744, size: 64, offset: 12416)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2976, file: !1970, line: 1020, baseType: !744, size: 64, offset: 12480)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2976, file: !1970, line: 1023, baseType: !176, size: 64, offset: 12544)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2976, file: !1970, line: 1025, baseType: !428, size: 64, offset: 12608)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2976, file: !1970, line: 1026, baseType: !428, size: 64, offset: 12672)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2976, file: !1970, line: 1031, baseType: !428, size: 64, offset: 12736)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2976, file: !1970, line: 1032, baseType: !3291, size: 192, offset: 12800)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1970, line: 324, size: 192, elements: !3292)
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3291, file: !1970, line: 326, baseType: !428, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3291, file: !1970, line: 327, baseType: !428, size: 64, offset: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3291, file: !1970, line: 328, baseType: !573, size: 32, offset: 128)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2976, file: !1970, line: 1041, baseType: !177, size: 64, offset: 12992)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2976, file: !1970, line: 1042, baseType: !177, size: 64, offset: 13056)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2976, file: !1970, line: 1045, baseType: !428, size: 64, offset: 13120)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2976, file: !1970, line: 1048, baseType: !428, size: 64, offset: 13184)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2976, file: !1970, line: 1051, baseType: !177, size: 64, offset: 13248)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2976, file: !1970, line: 1052, baseType: !177, size: 64, offset: 13312)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2976, file: !1970, line: 1055, baseType: !3303, size: 640, offset: 13376)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3304, line: 132, size: 640, elements: !3305)
!3304 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3305 = !{!3306, !3312, !3313}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3303, file: !3304, line: 133, baseType: !3307, size: 576)
!3307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3308, size: 576, elements: !278)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3304, line: 117, size: 192, elements: !3309)
!3309 = !{!3310, !3311}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3308, file: !3304, line: 118, baseType: !428, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3308, file: !3304, line: 119, baseType: !2541, size: 128, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3303, file: !3304, line: 134, baseType: !7, size: 32, offset: 576)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3303, file: !3304, line: 135, baseType: !7, size: 32, offset: 608)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2976, file: !1970, line: 1058, baseType: !3315, size: 448, offset: 14016)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3304, line: 144, size: 448, elements: !3316)
!3316 = !{!3317, !3318, !3319}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3315, file: !3304, line: 145, baseType: !835, size: 128, align: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3315, file: !3304, line: 146, baseType: !615, size: 256, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3315, file: !3304, line: 147, baseType: !7, size: 32, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2976, file: !1970, line: 1064, baseType: !1195, size: 64, offset: 14464)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2976, file: !1970, line: 1067, baseType: !1195, size: 64, offset: 14528)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2976, file: !1970, line: 1070, baseType: !1195, size: 64, offset: 14592)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2976, file: !1970, line: 1074, baseType: !1222, size: 64, offset: 14656)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2976, file: !1970, line: 1084, baseType: !3325, size: 128, offset: 14720)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 128, elements: !3326)
!3326 = !{!3327}
!3327 = !DISubrange(count: 16)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2976, file: !1970, line: 1086, baseType: !3329, size: 64, offset: 14848)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1970, line: 55, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2976, file: !1970, line: 1089, baseType: !3332, size: 64, offset: 14912)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3333, line: 12, size: 64, elements: !3334)
!3333 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3334 = !{!3335}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3332, file: !3333, line: 13, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3333, line: 8, flags: DIFlagFwdDecl)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2976, file: !1970, line: 1090, baseType: !3339, size: 128, offset: 14976)
!3339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3340, line: 13, size: 128, elements: !3341)
!3340 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3341 = !{!3342}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3339, file: !3340, line: 14, baseType: !182, size: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2976, file: !1970, line: 1097, baseType: !3344, size: 64, offset: 15104)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1970, line: 50, flags: DIFlagFwdDecl)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2976, file: !1970, line: 1100, baseType: !3347, size: 64, offset: 15168)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1970, line: 1100, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2976, file: !1970, line: 1103, baseType: !3350, size: 64, offset: 15232)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1970, line: 53, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2976, file: !1970, line: 1107, baseType: !3353, size: 64, offset: 15296)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1970, line: 56, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2976, file: !1970, line: 1110, baseType: !3356, size: 64, offset: 15360)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3358, line: 93, size: 8768, elements: !3359)
!3358 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3359 = !{!3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3407, !3416, !3417, !3419, !3420, !3421, !3824, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3862, !3863, !3870, !3880, !3883, !3884, !3887, !3888, !3889, !3890, !3891, !3892}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3357, file: !3358, line: 94, baseType: !1162, size: 32)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3357, file: !3358, line: 95, baseType: !227, size: 32, offset: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3357, file: !3358, line: 96, baseType: !101, size: 32, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3357, file: !3358, line: 97, baseType: !101, size: 32, offset: 96)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3357, file: !3358, line: 98, baseType: !182, size: 128, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3357, file: !3358, line: 100, baseType: !1173, size: 192, offset: 256)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3357, file: !3358, line: 103, baseType: !2975, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3357, file: !3358, line: 106, baseType: !3368, size: 192, offset: 512)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1380, line: 32, size: 192, elements: !3369)
!3369 = !{!3370, !3371}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3368, file: !1380, line: 33, baseType: !182, size: 128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3368, file: !1380, line: 34, baseType: !3372, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3373, line: 25, baseType: !3374)
!3373 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3373, line: 23, size: 64, elements: !3375)
!3375 = !{!3376}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3374, file: !3373, line: 24, baseType: !3138, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3357, file: !3358, line: 109, baseType: !985, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3357, file: !3358, line: 112, baseType: !101, size: 32, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3357, file: !3358, line: 114, baseType: !101, size: 32, offset: 800)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3357, file: !3358, line: 115, baseType: !2975, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3357, file: !3358, line: 118, baseType: !101, size: 32, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3357, file: !3358, line: 119, baseType: !7, size: 32, offset: 928)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3357, file: !3358, line: 121, baseType: !3384, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3358, line: 80, size: 448, elements: !3386)
!3386 = !{!3387, !3388, !3394}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3385, file: !3358, line: 81, baseType: !227, size: 32)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3385, file: !3358, line: 82, baseType: !3389, size: 128, offset: 64)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3358, line: 75, size: 128, elements: !3390)
!3390 = !{!3391, !3392}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3389, file: !3358, line: 76, baseType: !2975, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3389, file: !3358, line: 77, baseType: !3393, size: 64, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3385, file: !3358, line: 83, baseType: !564, size: 256, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3357, file: !3358, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3357, file: !3358, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3357, file: !3358, line: 138, baseType: !7, size: 32, offset: 1056)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3357, file: !3358, line: 139, baseType: !182, size: 128, offset: 1088)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3357, file: !3358, line: 142, baseType: !2487, size: 512, offset: 1216)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3357, file: !3358, line: 143, baseType: !2467, size: 64, offset: 1728)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3357, file: !3358, line: 150, baseType: !3402, size: 256, offset: 1792)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3403, size: 256, elements: !734)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3358, line: 38, size: 128, elements: !3404)
!3404 = !{!3405, !3406}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3403, file: !3358, line: 39, baseType: !428, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3403, file: !3358, line: 40, baseType: !428, size: 64, offset: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3357, file: !3358, line: 156, baseType: !3408, size: 192, offset: 2048)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3358, line: 66, size: 192, elements: !3409)
!3409 = !{!3410}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3408, file: !3358, line: 67, baseType: !3411, size: 192)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3358, line: 47, size: 192, elements: !3412)
!3412 = !{!3413, !3414, !3415}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3411, file: !3358, line: 48, baseType: !621, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3411, file: !3358, line: 49, baseType: !621, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3411, file: !3358, line: 50, baseType: !621, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3357, file: !3358, line: 160, baseType: !3303, size: 640, offset: 2240)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3357, file: !3358, line: 163, baseType: !3418, size: 256, offset: 2880)
!3418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1158, size: 256, elements: !845)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3357, file: !3358, line: 169, baseType: !1158, size: 64, offset: 3136)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3357, file: !3358, line: 172, baseType: !101, size: 32, offset: 3200)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3357, file: !3358, line: 174, baseType: !3422, size: 64, offset: 3264)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3424, line: 193, size: 5248, elements: !3425)
!3424 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!3425 = !{!3426, !3427, !3428, !3429, !3714, !3715, !3716, !3763, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3791, !3800, !3801, !3802, !3803, !3804, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3423, file: !3424, line: 194, baseType: !2853, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3423, file: !3424, line: 195, baseType: !101, size: 32, offset: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3423, file: !3424, line: 196, baseType: !2293, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3423, file: !3424, line: 197, baseType: !3430, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3432, line: 441, size: 1472, elements: !3433)
!3432 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!3433 = !{!3434, !3435, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3465, !3466, !3469, !3470, !3472, !3593, !3596, !3597, !3713}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3431, file: !3432, line: 442, baseType: !2853, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3431, file: !3432, line: 443, baseType: !3436, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3431, file: !3432, line: 444, baseType: !544, size: 64, offset: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3431, file: !3432, line: 445, baseType: !195, size: 64, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3431, file: !3432, line: 446, baseType: !195, size: 64, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3431, file: !3432, line: 447, baseType: !101, size: 32, offset: 320)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3431, file: !3432, line: 448, baseType: !101, size: 32, offset: 352)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3431, file: !3432, line: 449, baseType: !101, size: 32, offset: 384)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3431, file: !3432, line: 450, baseType: !7, size: 32, offset: 416)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3431, file: !3432, line: 451, baseType: !753, size: 16, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3431, file: !3432, line: 452, baseType: !753, size: 16, offset: 464)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3431, file: !3432, line: 453, baseType: !3447, size: 352, offset: 480)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3448, line: 30, size: 352, elements: !3449)
!3448 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!3449 = !{!3450, !3452, !3453, !3454, !3455, !3458, !3462, !3464}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3447, file: !3448, line: 31, baseType: !3451, size: 32)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3448, line: 7, baseType: !7)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3447, file: !3448, line: 32, baseType: !3451, size: 32, offset: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3447, file: !3448, line: 33, baseType: !3451, size: 32, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3447, file: !3448, line: 34, baseType: !3451, size: 32, offset: 96)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3447, file: !3448, line: 35, baseType: !3456, size: 8, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3457, line: 5, baseType: !239)
!3457 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3447, file: !3448, line: 36, baseType: !3459, size: 152, offset: 136)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3456, size: 152, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 19)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3447, file: !3448, line: 37, baseType: !3463, size: 32, offset: 288)
!3463 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3457, line: 6, baseType: !7)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3447, file: !3448, line: 38, baseType: !3463, size: 32, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3431, file: !3432, line: 454, baseType: !177, size: 64, offset: 832)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3431, file: !3432, line: 455, baseType: !3467, size: 64, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3432, line: 455, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3431, file: !3432, line: 456, baseType: !3430, size: 64, offset: 960)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3431, file: !3432, line: 461, baseType: !3471, size: 64, offset: 1024)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3431, file: !3432, line: 462, baseType: !3473, size: 64, offset: 1088)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !3476, line: 101, size: 3008, elements: !3477)
!3476 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!3477 = !{!3478, !3510, !3511, !3512, !3534, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3562, !3588, !3589, !3590, !3591, !3592}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3475, file: !3476, line: 102, baseType: !3479, size: 1088)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !3480, line: 35, size: 1088, elements: !3481)
!3480 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!3481 = !{!3482, !3499, !3500, !3501, !3502, !3503, !3507, !3508, !3509}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3479, file: !3480, line: 36, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !3480, line: 10, size: 256, elements: !3485)
!3485 = !{!3486, !3491, !3492, !3493, !3494, !3495, !3496, !3497}
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3484, file: !3480, line: 11, baseType: !3487, size: 64)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3484, file: !3480, line: 11, size: 64, elements: !3488)
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3487, file: !3480, line: 12, baseType: !3483, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3487, file: !3480, line: 13, baseType: !1119, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !3484, file: !3480, line: 15, baseType: !7, size: 32, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3484, file: !3480, line: 16, baseType: !7, size: 32, offset: 96)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !3484, file: !3480, line: 17, baseType: !7, size: 32, offset: 128)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3484, file: !3480, line: 18, baseType: !7, size: 32, offset: 160)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3484, file: !3480, line: 19, baseType: !7, size: 32, offset: 192)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3484, file: !3480, line: 20, baseType: !695, size: 8, offset: 224)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3484, file: !3480, line: 22, baseType: !3498, align: 64, offset: 256)
!3498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, elements: !1188)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3479, file: !3480, line: 37, baseType: !875, size: 256, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3479, file: !3480, line: 38, baseType: !615, size: 256, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3479, file: !3480, line: 39, baseType: !227, size: 32, offset: 576)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !3479, file: !3480, line: 40, baseType: !3484, size: 256, offset: 640)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3479, file: !3480, line: 41, baseType: !3504, size: 64, offset: 896)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1120, line: 56, size: 64, elements: !3505)
!3505 = !{!3506}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3504, file: !1120, line: 57, baseType: !1123, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !3479, file: !3480, line: 42, baseType: !227, size: 32, offset: 960)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !3479, file: !3480, line: 43, baseType: !101, size: 32, offset: 992)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3479, file: !3480, line: 44, baseType: !3483, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3475, file: !3476, line: 103, baseType: !3422, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !3475, file: !3476, line: 104, baseType: !3422, size: 64, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3475, file: !3476, line: 105, baseType: !3513, size: 64, offset: 1216)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !3476, line: 33, size: 320, elements: !3516)
!3516 = !{!3517, !3521, !3525, !3529, !3533}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !3515, file: !3476, line: 34, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!695, !3474}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !3515, file: !3476, line: 35, baseType: !3522, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{null, !3474, !695}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3515, file: !3476, line: 36, baseType: !3526, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !3474}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3515, file: !3476, line: 37, baseType: !3530, size: 64, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!101, !3474, !3422}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !3515, file: !3476, line: 38, baseType: !3526, size: 64, offset: 256)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !3475, file: !3476, line: 106, baseType: !3535, size: 64, offset: 1280)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3537)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !3476, line: 41, size: 192, elements: !3538)
!3538 = !{!3539, !3545, !3549}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3537, file: !3476, line: 42, baseType: !3540, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!323, !3474, !3543, !3543, !323}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3537, file: !3476, line: 44, baseType: !3546, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{null, !3474, !3543, !3543, !323}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3537, file: !3476, line: 46, baseType: !3526, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3475, file: !3476, line: 107, baseType: !207, size: 32, offset: 1344)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !3475, file: !3476, line: 108, baseType: !101, size: 32, offset: 1376)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3475, file: !3476, line: 109, baseType: !101, size: 32, offset: 1408)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !3475, file: !3476, line: 110, baseType: !1173, size: 192, offset: 1472)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !3475, file: !3476, line: 111, baseType: !1173, size: 192, offset: 1664)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3475, file: !3476, line: 112, baseType: !177, size: 64, offset: 1856)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !3475, file: !3476, line: 113, baseType: !177, size: 64, offset: 1920)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !3475, file: !3476, line: 114, baseType: !239, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3475, file: !3476, line: 115, baseType: !615, size: 256, offset: 2048)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !3475, file: !3476, line: 116, baseType: !615, size: 256, offset: 2304)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !3475, file: !3476, line: 117, baseType: !3561, size: 64, offset: 2560)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !3475, file: !3476, line: 118, baseType: !3563, size: 192, offset: 2624)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3475, file: !3476, line: 118, size: 192, elements: !3564)
!3564 = !{!3565, !3586}
!3565 = !DIDerivedType(tag: DW_TAG_member, scope: !3563, file: !3476, line: 118, baseType: !3566, size: 192)
!3566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3563, file: !3476, line: 118, size: 192, elements: !3567)
!3567 = !{!3568, !3577, !3578, !3579, !3584, !3585}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !3566, file: !3476, line: 118, baseType: !3569, size: 192)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !3570, line: 44, size: 192, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!3571 = !{!3572, !3573, !3574, !3575, !3576}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !3569, file: !3570, line: 45, baseType: !7, size: 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !3569, file: !3570, line: 46, baseType: !7, size: 32, offset: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3569, file: !3570, line: 47, baseType: !7, size: 32, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !3569, file: !3570, line: 48, baseType: !7, size: 32, offset: 96)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3569, file: !3570, line: 49, baseType: !176, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3566, file: !3476, line: 118, baseType: !3561, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !3566, file: !3476, line: 118, baseType: !432, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !3566, file: !3476, line: 118, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !3582)
!3582 = !{!3583}
!3583 = !DISubrange(count: 0)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3566, file: !3476, line: 118, baseType: !3561, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !3566, file: !3476, line: 118, baseType: !432, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3563, file: !3476, line: 118, baseType: !3587, offset: 192)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, elements: !3582)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3475, file: !3476, line: 119, baseType: !7, size: 32, offset: 2816)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3475, file: !3476, line: 120, baseType: !7, size: 32, offset: 2848)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !3475, file: !3476, line: 121, baseType: !101, size: 32, offset: 2880)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3475, file: !3476, line: 122, baseType: !2853, size: 32, offset: 2912)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !3475, file: !3476, line: 123, baseType: !176, size: 64, offset: 2944)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3431, file: !3432, line: 463, baseType: !3594, size: 64, offset: 1152)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3431, file: !3432, line: 464, baseType: !176, size: 64, offset: 1216)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3431, file: !3432, line: 470, baseType: !3598, size: 64, offset: 1280)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3600)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3432, line: 357, size: 2176, elements: !3601)
!3601 = !{!3602, !3606, !3610, !3614, !3618, !3622, !3626, !3627, !3631, !3635, !3636, !3640, !3641, !3645, !3649, !3655, !3656, !3657, !3658, !3659, !3660, !3664, !3665, !3666, !3667, !3671, !3675, !3679, !3683, !3695, !3701, !3707, !3708, !3712}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3600, file: !3432, line: 358, baseType: !3603, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!3422, !3430, !1420, !101}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3600, file: !3432, line: 360, baseType: !3607, size: 64, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!101, !3430, !3422}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3600, file: !3432, line: 361, baseType: !3611, size: 64, offset: 128)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3430, !3422}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3600, file: !3432, line: 362, baseType: !3615, size: 64, offset: 192)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{!101, !3422, !1420}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3600, file: !3432, line: 363, baseType: !3619, size: 64, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{null, !3422, !1420}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3600, file: !3432, line: 364, baseType: !3623, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !3422}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3600, file: !3432, line: 365, baseType: !3623, size: 64, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3600, file: !3432, line: 366, baseType: !3628, size: 64, offset: 448)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!309, !3422, !3543, !323}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3600, file: !3432, line: 367, baseType: !3632, size: 64, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!101, !3422, !235}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3600, file: !3432, line: 368, baseType: !3623, size: 64, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3600, file: !3432, line: 369, baseType: !3637, size: 64, offset: 640)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!7, !3422}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3600, file: !3432, line: 370, baseType: !3637, size: 64, offset: 704)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3600, file: !3432, line: 371, baseType: !3642, size: 64, offset: 768)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!101, !3422, !7, !177}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3600, file: !3432, line: 373, baseType: !3646, size: 64, offset: 832)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{!178, !3422, !7, !177}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3600, file: !3432, line: 375, baseType: !3650, size: 64, offset: 896)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{null, !3422, !3653}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3600, file: !3432, line: 376, baseType: !3623, size: 64, offset: 960)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3600, file: !3432, line: 377, baseType: !3623, size: 64, offset: 1024)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3600, file: !3432, line: 378, baseType: !3623, size: 64, offset: 1088)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3600, file: !3432, line: 379, baseType: !3623, size: 64, offset: 1152)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3600, file: !3432, line: 380, baseType: !3623, size: 64, offset: 1216)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3600, file: !3432, line: 381, baseType: !3661, size: 64, offset: 1280)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!101, !3422, !101}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3600, file: !3432, line: 382, baseType: !3623, size: 64, offset: 1344)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !3600, file: !3432, line: 383, baseType: !3661, size: 64, offset: 1408)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3600, file: !3432, line: 384, baseType: !3623, size: 64, offset: 1472)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3600, file: !3432, line: 385, baseType: !3668, size: 64, offset: 1536)
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !3422, !101}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3600, file: !3432, line: 386, baseType: !3672, size: 64, offset: 1600)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{null, !3422, !197}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3600, file: !3432, line: 387, baseType: !3676, size: 64, offset: 1664)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!101, !3422}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3600, file: !3432, line: 388, baseType: !3680, size: 64, offset: 1728)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!101, !3422, !7, !7}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3600, file: !3432, line: 390, baseType: !3684, size: 64, offset: 1792)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!101, !3422, !3687}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3689, line: 15, size: 64, elements: !3690)
!3689 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!3690 = !{!3691, !3692, !3693, !3694}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3688, file: !3689, line: 16, baseType: !247, size: 16)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3688, file: !3689, line: 17, baseType: !247, size: 16, offset: 16)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3688, file: !3689, line: 18, baseType: !247, size: 16, offset: 32)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3688, file: !3689, line: 19, baseType: !247, size: 16, offset: 48)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3600, file: !3432, line: 391, baseType: !3696, size: 64, offset: 1856)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!101, !3422, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3432, line: 16, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3600, file: !3432, line: 393, baseType: !3702, size: 64, offset: 1920)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!101, !3422, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3432, line: 17, flags: DIFlagFwdDecl)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3600, file: !3432, line: 394, baseType: !3702, size: 64, offset: 1984)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3600, file: !3432, line: 395, baseType: !3709, size: 64, offset: 2048)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{null, !3422, !1075}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3600, file: !3432, line: 401, baseType: !1106, size: 64, offset: 2112)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3431, file: !3432, line: 471, baseType: !182, size: 128, offset: 1344)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3423, file: !3424, line: 198, baseType: !3474, size: 64, offset: 192)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3423, file: !3424, line: 199, baseType: !3598, size: 64, offset: 256)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !3423, file: !3424, line: 201, baseType: !3717, size: 64, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3719, line: 269, size: 128, elements: !3720)
!3719 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!3720 = !{!3721, !3762}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3718, file: !3719, line: 270, baseType: !3722, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3719, line: 231, size: 1152, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3730, !3735, !3739, !3740, !3741, !3742, !3746, !3747, !3751, !3752, !3756, !3760, !3761}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3723, file: !3719, line: 232, baseType: !277, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3723, file: !3719, line: 233, baseType: !101, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3723, file: !3719, line: 238, baseType: !3676, size: 64, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3723, file: !3719, line: 239, baseType: !3623, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3723, file: !3719, line: 240, baseType: !3623, size: 64, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3723, file: !3719, line: 241, baseType: !3731, size: 64, offset: 320)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!309, !3422, !1420, !3734, !323, !1984, !177}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3723, file: !3719, line: 243, baseType: !3736, size: 64, offset: 384)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!309, !3422, !1420, !3543, !323}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3723, file: !3719, line: 245, baseType: !3642, size: 64, offset: 448)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3723, file: !3719, line: 247, baseType: !3642, size: 64, offset: 512)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3723, file: !3719, line: 249, baseType: !3650, size: 64, offset: 576)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3723, file: !3719, line: 250, baseType: !3743, size: 64, offset: 640)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!1481, !3422, !1420, !1483}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3723, file: !3719, line: 252, baseType: !3623, size: 64, offset: 704)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3723, file: !3719, line: 257, baseType: !3748, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{null, !3422, !3543, !3543, !323}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3723, file: !3719, line: 259, baseType: !3623, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3723, file: !3719, line: 260, baseType: !3753, size: 64, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{null, !3422, !695}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3723, file: !3719, line: 261, baseType: !3757, size: 64, offset: 960)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!323, !3422, !3543, !3543, !323}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3723, file: !3719, line: 263, baseType: !3748, size: 64, offset: 1024)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3723, file: !3719, line: 266, baseType: !544, size: 64, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3718, file: !3719, line: 271, baseType: !3422, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !3423, file: !3424, line: 202, baseType: !3764, size: 384, offset: 384)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3719, line: 17, size: 384, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769, !3770}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3764, file: !3719, line: 18, baseType: !619, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3764, file: !3719, line: 19, baseType: !573, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3764, file: !3719, line: 20, baseType: !7, size: 32, offset: 96)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3764, file: !3719, line: 21, baseType: !182, size: 128, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3764, file: !3719, line: 22, baseType: !182, size: 128, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !3423, file: !3424, line: 204, baseType: !615, size: 256, offset: 768)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !3423, file: !3424, line: 205, baseType: !615, size: 256, offset: 1024)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !3423, file: !3424, line: 206, baseType: !615, size: 256, offset: 1280)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !3423, file: !3424, line: 207, baseType: !1236, size: 320, offset: 1536)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !3423, file: !3424, line: 208, baseType: !615, size: 256, offset: 1856)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3423, file: !3424, line: 209, baseType: !3447, size: 352, offset: 2112)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !3423, file: !3424, line: 209, baseType: !3447, size: 352, offset: 2464)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3423, file: !3424, line: 210, baseType: !2901, size: 512, offset: 2816)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3423, file: !3424, line: 211, baseType: !177, size: 64, offset: 3328)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3423, file: !3424, line: 212, baseType: !101, size: 32, offset: 3392)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !3423, file: !3424, line: 213, baseType: !7, size: 32, offset: 3424)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !3423, file: !3424, line: 214, baseType: !3688, size: 64, offset: 3456)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !3423, file: !3424, line: 221, baseType: !3784, size: 64, align: 64, offset: 3520)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3423, file: !3424, line: 216, size: 64, align: 64, elements: !3785)
!3785 = !{!3786, !3787, !3788, !3789}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3784, file: !3424, line: 217, baseType: !207, size: 32)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !3784, file: !3424, line: 218, baseType: !695, size: 8, offset: 32)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !3784, file: !3424, line: 219, baseType: !695, size: 8, offset: 40)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3784, file: !3424, line: 220, baseType: !3790, offset: 64)
!3790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !3582)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !3423, file: !3424, line: 230, baseType: !3792, size: 192, align: 64, offset: 3584)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3423, file: !3424, line: 223, size: 192, align: 64, elements: !3793)
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !3792, file: !3424, line: 224, baseType: !1158, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !3792, file: !3424, line: 225, baseType: !1158, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3792, file: !3424, line: 226, baseType: !207, size: 32, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !3792, file: !3424, line: 227, baseType: !239, size: 8, offset: 160)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !3792, file: !3424, line: 228, baseType: !695, size: 8, offset: 168)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3792, file: !3424, line: 229, baseType: !3790, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !3423, file: !3424, line: 232, baseType: !695, size: 8, offset: 3776)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !3423, file: !3424, line: 233, baseType: !695, size: 8, offset: 3784)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !3423, file: !3424, line: 234, baseType: !101, size: 32, offset: 3808)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3423, file: !3424, line: 236, baseType: !3422, size: 64, offset: 3840)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3423, file: !3424, line: 237, baseType: !3805, size: 64, offset: 3904)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !64, line: 1083, size: 384, elements: !3807)
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3813}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3806, file: !64, line: 1084, baseType: !1137, size: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3806, file: !64, line: 1085, baseType: !101, size: 32, offset: 64)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3806, file: !64, line: 1086, baseType: !101, size: 32, offset: 96)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3806, file: !64, line: 1087, baseType: !3805, size: 64, offset: 128)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3806, file: !64, line: 1088, baseType: !1420, size: 64, offset: 192)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3806, file: !64, line: 1089, baseType: !835, size: 128, align: 64, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3423, file: !3424, line: 238, baseType: !1173, size: 192, offset: 3968)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3423, file: !3424, line: 239, baseType: !1173, size: 192, offset: 4160)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !3423, file: !3424, line: 240, baseType: !875, size: 256, offset: 4352)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !3423, file: !3424, line: 241, baseType: !176, size: 64, offset: 4608)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3423, file: !3424, line: 242, baseType: !176, size: 64, offset: 4672)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !3423, file: !3424, line: 243, baseType: !207, size: 32, offset: 4736)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !3423, file: !3424, line: 244, baseType: !101, size: 32, offset: 4768)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !3423, file: !3424, line: 245, baseType: !3561, size: 64, offset: 4800)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !3423, file: !3424, line: 247, baseType: !182, size: 128, offset: 4864)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !3423, file: !3424, line: 250, baseType: !875, size: 256, offset: 4992)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3357, file: !3358, line: 185, baseType: !3825, size: 64, offset: 3328)
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !397, line: 860, baseType: !3826)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !397, line: 853, size: 64, elements: !3827)
!3827 = !{!3828, !3829}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3826, file: !397, line: 858, baseType: !396, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3826, file: !397, line: 859, baseType: !207, size: 32, offset: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3357, file: !3358, line: 186, baseType: !428, size: 64, offset: 3392)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3357, file: !3358, line: 186, baseType: !428, size: 64, offset: 3456)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3357, file: !3358, line: 186, baseType: !428, size: 64, offset: 3520)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3357, file: !3358, line: 186, baseType: !428, size: 64, offset: 3584)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3357, file: !3358, line: 187, baseType: !428, size: 64, offset: 3648)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3357, file: !3358, line: 188, baseType: !428, size: 64, offset: 3712)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3357, file: !3358, line: 189, baseType: !3291, size: 192, offset: 3776)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3357, file: !3358, line: 190, baseType: !177, size: 64, offset: 3968)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3357, file: !3358, line: 190, baseType: !177, size: 64, offset: 4032)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3357, file: !3358, line: 190, baseType: !177, size: 64, offset: 4096)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3357, file: !3358, line: 190, baseType: !177, size: 64, offset: 4160)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3357, file: !3358, line: 191, baseType: !177, size: 64, offset: 4224)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3357, file: !3358, line: 191, baseType: !177, size: 64, offset: 4288)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3357, file: !3358, line: 191, baseType: !177, size: 64, offset: 4352)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3357, file: !3358, line: 191, baseType: !177, size: 64, offset: 4416)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3357, file: !3358, line: 192, baseType: !177, size: 64, offset: 4480)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3357, file: !3358, line: 192, baseType: !177, size: 64, offset: 4544)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3357, file: !3358, line: 192, baseType: !177, size: 64, offset: 4608)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3357, file: !3358, line: 192, baseType: !177, size: 64, offset: 4672)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3357, file: !3358, line: 193, baseType: !177, size: 64, offset: 4736)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3357, file: !3358, line: 193, baseType: !177, size: 64, offset: 4800)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3357, file: !3358, line: 194, baseType: !3852, size: 448, offset: 4864)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3853, line: 12, size: 448, elements: !3854)
!3853 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3852, file: !3853, line: 15, baseType: !428, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3852, file: !3853, line: 17, baseType: !428, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3852, file: !3853, line: 19, baseType: !428, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3852, file: !3853, line: 21, baseType: !428, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3852, file: !3853, line: 29, baseType: !428, size: 64, offset: 256)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3852, file: !3853, line: 35, baseType: !428, size: 64, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3852, file: !3853, line: 44, baseType: !428, size: 64, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3357, file: !3358, line: 202, baseType: !430, size: 64, offset: 5312)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3357, file: !3358, line: 213, baseType: !3864, size: 2048, offset: 5376)
!3864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3865, size: 2048, elements: !3326)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3866, line: 43, size: 128, elements: !3867)
!3866 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3865, file: !3866, line: 44, baseType: !325, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3865, file: !3866, line: 45, baseType: !325, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3357, file: !3358, line: 216, baseType: !3871, size: 448, offset: 7424)
!3871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3358, line: 30, size: 448, elements: !3872)
!3872 = !{!3873, !3874, !3875, !3876, !3877, !3878, !3879}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3871, file: !3358, line: 31, baseType: !101, size: 32)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3871, file: !3358, line: 32, baseType: !178, size: 64, offset: 64)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3871, file: !3358, line: 33, baseType: !177, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3871, file: !3358, line: 34, baseType: !428, size: 64, offset: 192)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3871, file: !3358, line: 34, baseType: !428, size: 64, offset: 256)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3871, file: !3358, line: 35, baseType: !177, size: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3871, file: !3358, line: 35, baseType: !177, size: 64, offset: 384)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3357, file: !3358, line: 219, baseType: !3881, size: 64, offset: 7872)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3358, line: 219, flags: DIFlagFwdDecl)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3357, file: !3358, line: 222, baseType: !7, size: 32, offset: 7936)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3357, file: !3358, line: 223, baseType: !3885, size: 64, offset: 8000)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3358, line: 223, flags: DIFlagFwdDecl)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3357, file: !3358, line: 230, baseType: !695, size: 8, offset: 8064)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3357, file: !3358, line: 231, baseType: !753, size: 16, offset: 8080)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3357, file: !3358, line: 232, baseType: !753, size: 16, offset: 8096)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3357, file: !3358, line: 234, baseType: !1507, size: 64, offset: 8128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3357, file: !3358, line: 237, baseType: !615, size: 256, offset: 8192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3357, file: !3358, line: 243, baseType: !1236, size: 320, offset: 8448)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2976, file: !1970, line: 1111, baseType: !3894, size: 64, offset: 15424)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3358, line: 20, size: 16640, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3900}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3895, file: !3358, line: 21, baseType: !207, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3895, file: !3358, line: 22, baseType: !1162, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3895, file: !3358, line: 23, baseType: !1173, size: 192, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3895, file: !3358, line: 24, baseType: !3901, size: 16384, offset: 256)
!3901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3902, size: 16384, elements: !282)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1380, line: 51, size: 256, elements: !3903)
!3903 = !{!3904}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3902, file: !1380, line: 52, baseType: !3905, size: 256)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1380, line: 37, size: 256, elements: !3906)
!3906 = !{!3907, !3914, !3915, !3919}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3905, file: !1380, line: 39, baseType: !3908, size: 64)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3909, line: 83, baseType: !3910)
!3909 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3909, line: 82, baseType: !3912)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{null, !101}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3905, file: !1380, line: 40, baseType: !177, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3905, file: !1380, line: 46, baseType: !3916, size: 64, offset: 128)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3909, line: 86, baseType: !3917)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3909, line: 85, baseType: !980)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3905, file: !1380, line: 48, baseType: !3372, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2976, file: !1970, line: 1112, baseType: !3372, size: 64, offset: 15488)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2976, file: !1970, line: 1113, baseType: !3372, size: 64, offset: 15552)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2976, file: !1970, line: 1115, baseType: !3372, size: 64, offset: 15616)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2976, file: !1970, line: 1116, baseType: !3368, size: 192, offset: 15680)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2976, file: !1970, line: 1117, baseType: !177, size: 64, offset: 15872)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2976, file: !1970, line: 1118, baseType: !323, size: 64, offset: 15936)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2976, file: !1970, line: 1119, baseType: !7, size: 32, offset: 16000)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2976, file: !1970, line: 1121, baseType: !834, size: 64, offset: 16064)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2976, file: !1970, line: 1125, baseType: !3929, size: 64, offset: 16128)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1970, line: 43, flags: DIFlagFwdDecl)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2976, file: !1970, line: 1127, baseType: !361, size: 32, offset: 16192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2976, file: !1970, line: 1128, baseType: !7, size: 32, offset: 16224)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2976, file: !1970, line: 1130, baseType: !3934, size: 128, offset: 16256)
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3935, line: 37, size: 128, elements: !3936)
!3935 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3936 = !{!3937, !3938, !3939}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3934, file: !3935, line: 38, baseType: !101, size: 32)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3934, file: !3935, line: 39, baseType: !227, size: 32, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3934, file: !3935, line: 40, baseType: !3940, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3935, line: 24, flags: DIFlagFwdDecl)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2976, file: !1970, line: 1131, baseType: !3943, size: 256, offset: 16384)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3944, line: 12, size: 256, elements: !3945)
!3944 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3945 = !{!3946, !3947, !3948, !3949}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3943, file: !3944, line: 13, baseType: !277, size: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3943, file: !3944, line: 14, baseType: !177, size: 64, offset: 64)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3943, file: !3944, line: 15, baseType: !177, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3943, file: !3944, line: 16, baseType: !695, size: 8, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2976, file: !1970, line: 1134, baseType: !428, size: 64, offset: 16640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2976, file: !1970, line: 1135, baseType: !428, size: 64, offset: 16704)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2976, file: !1970, line: 1138, baseType: !207, size: 32, offset: 16768)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2976, file: !1970, line: 1141, baseType: !573, size: 32, offset: 16800)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2976, file: !1970, line: 1143, baseType: !3955, size: 64, offset: 16832)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1970, line: 735, size: 64, elements: !3956)
!3956 = !{!3957}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3955, file: !1970, line: 736, baseType: !3958, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2976, file: !1970, line: 1147, baseType: !2544, size: 128, offset: 16896)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2976, file: !1970, line: 1149, baseType: !2975, size: 64, offset: 17024)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2976, file: !1970, line: 1151, baseType: !3962, size: 64, offset: 17088)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1970, line: 1151, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2976, file: !1970, line: 1188, baseType: !176, size: 64, offset: 17152)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2976, file: !1970, line: 1191, baseType: !3966, size: 64, offset: 17216)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1970, line: 44, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2976, file: !1970, line: 1194, baseType: !3969, size: 64, offset: 17280)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1970, line: 45, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2976, file: !1970, line: 1197, baseType: !3972, size: 64, offset: 17344)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1970, line: 61, flags: DIFlagFwdDecl)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2976, file: !1970, line: 1199, baseType: !3975, size: 64, offset: 17408)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2259, line: 99, size: 128, elements: !3977)
!3977 = !{!3978, !3979, !3980}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3976, file: !2259, line: 100, baseType: !619, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3976, file: !2259, line: 101, baseType: !227, size: 32, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3976, file: !2259, line: 103, baseType: !247, size: 16, offset: 96)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2976, file: !1970, line: 1202, baseType: !3982, size: 64, offset: 17472)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1970, line: 48, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2976, file: !1970, line: 1205, baseType: !177, size: 64, offset: 17536)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2976, file: !1970, line: 1206, baseType: !3986, size: 64, offset: 17600)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1380, line: 14, baseType: !3988)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1380, line: 12, size: 384, elements: !3989)
!3989 = !{!3990}
!3990 = !DIDerivedType(tag: DW_TAG_member, scope: !3988, file: !1380, line: 13, baseType: !3991, size: 384)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3988, file: !1380, line: 13, size: 384, elements: !3992)
!3992 = !{!3993, !3994, !3995, !3996}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3991, file: !1380, line: 13, baseType: !101, size: 32)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3991, file: !1380, line: 13, baseType: !101, size: 32, offset: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3991, file: !1380, line: 13, baseType: !101, size: 32, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3991, file: !1380, line: 13, baseType: !3997, size: 256, offset: 128)
!3997 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3998, line: 37, size: 256, elements: !3999)
!3998 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3999 = !{!4000, !4005, !4018, !4024, !4033, !4060, !4065}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3997, file: !3998, line: 42, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3998, line: 39, size: 64, elements: !4002)
!4002 = !{!4003, !4004}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4001, file: !3998, line: 40, baseType: !3268, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4001, file: !3998, line: 41, baseType: !367, size: 32, offset: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3997, file: !3998, line: 50, baseType: !4006, size: 192)
!4006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3998, line: 45, size: 192, elements: !4007)
!4007 = !{!4008, !4010, !4011, !4017}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4006, file: !3998, line: 46, baseType: !4009, size: 32)
!4009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !311, line: 95, baseType: !101)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4006, file: !3998, line: 47, baseType: !101, size: 32, offset: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4006, file: !3998, line: 48, baseType: !4012, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3998, line: 11, baseType: !4013)
!4013 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3998, line: 8, size: 64, elements: !4014)
!4014 = !{!4015, !4016}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4013, file: !3998, line: 9, baseType: !101, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4013, file: !3998, line: 10, baseType: !176, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4006, file: !3998, line: 49, baseType: !101, size: 32, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3997, file: !3998, line: 57, baseType: !4019, size: 128)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3998, line: 53, size: 128, elements: !4020)
!4020 = !{!4021, !4022, !4023}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4019, file: !3998, line: 54, baseType: !3268, size: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4019, file: !3998, line: 55, baseType: !367, size: 32, offset: 32)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4019, file: !3998, line: 56, baseType: !4012, size: 64, offset: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3997, file: !3998, line: 66, baseType: !4025, size: 256)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3998, line: 60, size: 256, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030, !4032}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4025, file: !3998, line: 61, baseType: !3268, size: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4025, file: !3998, line: 62, baseType: !367, size: 32, offset: 32)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4025, file: !3998, line: 63, baseType: !101, size: 32, offset: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4025, file: !3998, line: 64, baseType: !4031, size: 64, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !311, line: 94, baseType: !312)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4025, file: !3998, line: 65, baseType: !4031, size: 64, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3997, file: !3998, line: 105, baseType: !4034, size: 256)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3998, line: 69, size: 256, elements: !4035)
!4035 = !{!4036, !4037}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4034, file: !3998, line: 70, baseType: !176, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, scope: !4034, file: !3998, line: 79, baseType: !4038, size: 192, offset: 64)
!4038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4034, file: !3998, line: 79, size: 192, elements: !4039)
!4039 = !{!4040, !4041, !4042, !4049, !4054}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4038, file: !3998, line: 81, baseType: !101, size: 32)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4038, file: !3998, line: 86, baseType: !753, size: 16)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4038, file: !3998, line: 92, baseType: !4043, size: 192)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4038, file: !3998, line: 88, size: 192, elements: !4044)
!4044 = !{!4045, !4047, !4048}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4043, file: !3998, line: 89, baseType: !4046, size: 64)
!4046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 64, elements: !2528)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4043, file: !3998, line: 90, baseType: !176, size: 64, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4043, file: !3998, line: 91, baseType: !176, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4038, file: !3998, line: 97, baseType: !4050, size: 96)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4038, file: !3998, line: 94, size: 96, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4050, file: !3998, line: 95, baseType: !4046, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4050, file: !3998, line: 96, baseType: !425, size: 32, offset: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4038, file: !3998, line: 103, baseType: !4055, size: 128)
!4055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4038, file: !3998, line: 99, size: 128, elements: !4056)
!4056 = !{!4057, !4058, !4059}
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4055, file: !3998, line: 100, baseType: !177, size: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4055, file: !3998, line: 101, baseType: !425, size: 32, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4055, file: !3998, line: 102, baseType: !425, size: 32, offset: 96)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3997, file: !3998, line: 111, baseType: !4061, size: 128)
!4061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3998, line: 108, size: 128, elements: !4062)
!4062 = !{!4063, !4064}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4061, file: !3998, line: 109, baseType: !178, size: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4061, file: !3998, line: 110, baseType: !101, size: 32, offset: 64)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3997, file: !3998, line: 118, baseType: !4066, size: 128)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3997, file: !3998, line: 114, size: 128, elements: !4067)
!4067 = !{!4068, !4069, !4070}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4066, file: !3998, line: 115, baseType: !176, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4066, file: !3998, line: 116, baseType: !101, size: 32, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4066, file: !3998, line: 117, baseType: !7, size: 32, offset: 96)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2976, file: !1970, line: 1208, baseType: !3852, size: 448, offset: 17664)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2976, file: !1970, line: 1215, baseType: !428, size: 64, offset: 18112)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2976, file: !1970, line: 1217, baseType: !428, size: 64, offset: 18176)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2976, file: !1970, line: 1219, baseType: !428, size: 64, offset: 18240)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2976, file: !1970, line: 1223, baseType: !4076, size: 64, offset: 18304)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4077, line: 99, baseType: !4078)
!4077 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4077, line: 99, size: 64, elements: !4079)
!4079 = !{!4080}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4078, file: !4077, line: 99, baseType: !3138, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2976, file: !1970, line: 1225, baseType: !396, size: 32, offset: 18368)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2976, file: !1970, line: 1226, baseType: !101, size: 32, offset: 18400)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2976, file: !1970, line: 1227, baseType: !101, size: 32, offset: 18432)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2976, file: !1970, line: 1231, baseType: !4085, size: 64, offset: 18496)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1970, line: 1231, flags: DIFlagFwdDecl)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2976, file: !1970, line: 1233, baseType: !182, size: 128, offset: 18560)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2976, file: !1970, line: 1240, baseType: !4089, size: 64, offset: 18688)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1970, line: 62, flags: DIFlagFwdDecl)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2976, file: !1970, line: 1242, baseType: !4092, size: 64, offset: 18752)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1970, line: 1242, flags: DIFlagFwdDecl)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2976, file: !1970, line: 1244, baseType: !182, size: 128, offset: 18816)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2976, file: !1970, line: 1245, baseType: !4096, size: 64, offset: 18944)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1970, line: 51, flags: DIFlagFwdDecl)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2976, file: !1970, line: 1246, baseType: !615, size: 256, offset: 19008)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2976, file: !1970, line: 1247, baseType: !7, size: 32, offset: 19264)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2976, file: !1970, line: 1250, baseType: !4101, size: 64, offset: 19328)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1970, line: 57, flags: DIFlagFwdDecl)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2976, file: !1970, line: 1251, baseType: !615, size: 256, offset: 19392)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2976, file: !1970, line: 1252, baseType: !182, size: 128, offset: 19648)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2976, file: !1970, line: 1259, baseType: !1916, size: 64, offset: 19776)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2976, file: !1970, line: 1260, baseType: !753, size: 16, offset: 19840)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2976, file: !1970, line: 1261, baseType: !753, size: 16, offset: 19856)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2976, file: !1970, line: 1314, baseType: !4109, size: 64, offset: 19904)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4111, line: 62, size: 256, align: 256, elements: !4112)
!4111 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4112 = !{!4113, !4114, !4115, !4116, !4117, !4118, !4119}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4110, file: !4111, line: 75, baseType: !425, size: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4110, file: !4111, line: 90, baseType: !425, size: 32, offset: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4110, file: !4111, line: 112, baseType: !429, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4110, file: !4111, line: 132, baseType: !425, size: 32, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4110, file: !4111, line: 140, baseType: !425, size: 32, offset: 160)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4110, file: !4111, line: 149, baseType: !425, size: 32, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4110, file: !4111, line: 154, baseType: !4120, offset: 224)
!4120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !1188)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2976, file: !1970, line: 1315, baseType: !424, size: 32, offset: 19968)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2976, file: !1970, line: 1316, baseType: !424, size: 32, offset: 20000)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2976, file: !1970, line: 1321, baseType: !177, size: 64, offset: 20032)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2976, file: !1970, line: 1325, baseType: !101, size: 32, offset: 20096)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2976, file: !1970, line: 1326, baseType: !101, size: 32, offset: 20128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2976, file: !1970, line: 1327, baseType: !101, size: 32, offset: 20160)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2976, file: !1970, line: 1328, baseType: !101, size: 32, offset: 20192)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2976, file: !1970, line: 1329, baseType: !835, size: 128, align: 64, offset: 20224)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2976, file: !1970, line: 1332, baseType: !4130, size: 128, offset: 20352)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4131, line: 51, size: 128, elements: !4132)
!4131 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4132 = !{!4133, !4138, !4139}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4130, file: !4131, line: 60, baseType: !4134, size: 64)
!4134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4135, line: 7, size: 64, elements: !4136)
!4135 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4136 = !{!4137}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4134, file: !4135, line: 12, baseType: !3135, size: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4130, file: !4131, line: 63, baseType: !695, size: 8, offset: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4130, file: !4131, line: 70, baseType: !695, size: 8, offset: 72)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2976, file: !1970, line: 1335, baseType: !1968, size: 64, offset: 20480)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2976, file: !1970, line: 1337, baseType: !4142, size: 128, offset: 20544)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4131, line: 39, size: 128, elements: !4143)
!4143 = !{!4144, !4145, !4146}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4142, file: !4131, line: 40, baseType: !1755, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4142, file: !4131, line: 42, baseType: !425, size: 32, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4142, file: !4131, line: 43, baseType: !425, size: 32, offset: 96)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2976, file: !1970, line: 1340, baseType: !4148, size: 64, offset: 20672)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1970, line: 69, flags: DIFlagFwdDecl)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2976, file: !1970, line: 1351, baseType: !101, size: 32, offset: 20736)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2976, file: !1970, line: 1352, baseType: !101, size: 32, offset: 20768)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2976, file: !1970, line: 1354, baseType: !177, size: 64, offset: 20800)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2976, file: !1970, line: 1364, baseType: !428, size: 64, offset: 20864)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2976, file: !1970, line: 1365, baseType: !428, size: 64, offset: 20928)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2976, file: !1970, line: 1412, baseType: !177, size: 64, offset: 20992)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2976, file: !1970, line: 1453, baseType: !2254, size: 64, offset: 21056)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2976, file: !1970, line: 1457, baseType: !4158, size: 64, offset: 21120)
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4159, size: 64)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !152, line: 61, size: 576, elements: !4160)
!4160 = !{!4161, !4162, !4181, !4184, !4185, !4218, !4228}
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4159, file: !152, line: 62, baseType: !151, size: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, scope: !4159, file: !152, line: 64, baseType: !4163, size: 192, offset: 64)
!4163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4159, file: !152, line: 64, size: 192, elements: !4164)
!4164 = !{!4165, !4176}
!4165 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !152, line: 65, baseType: !4166, size: 192)
!4166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !152, line: 65, size: 192, elements: !4167)
!4167 = !{!4168, !4175}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4166, file: !152, line: 66, baseType: !4169, size: 128)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4170, line: 50, size: 128, elements: !4171)
!4170 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4171 = !{!4172, !4173, !4174}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4169, file: !4170, line: 52, baseType: !177, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4169, file: !4170, line: 54, baseType: !7, size: 32, offset: 64)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4169, file: !4170, line: 55, baseType: !7, size: 32, offset: 96)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4166, file: !152, line: 67, baseType: !177, size: 64, offset: 128)
!4176 = !DIDerivedType(tag: DW_TAG_member, scope: !4163, file: !152, line: 70, baseType: !4177, size: 192)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4163, file: !152, line: 70, size: 192, elements: !4178)
!4178 = !{!4179, !4180}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4177, file: !152, line: 71, baseType: !835, size: 128, align: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4177, file: !152, line: 72, baseType: !177, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4159, file: !152, line: 76, baseType: !4182, size: 64, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !152, line: 76, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4159, file: !152, line: 77, baseType: !177, size: 64, offset: 320)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4159, file: !152, line: 79, baseType: !4186, size: 64, offset: 384)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4170, line: 25, size: 256, elements: !4188)
!4188 = !{!4189, !4195, !4199}
!4189 = !DIDerivedType(tag: DW_TAG_member, scope: !4187, file: !4170, line: 26, baseType: !4190, size: 128)
!4190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4187, file: !4170, line: 26, size: 128, elements: !4191)
!4191 = !{!4192, !4194}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4190, file: !4170, line: 27, baseType: !4193, size: 128)
!4193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 128, elements: !3326)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4190, file: !4170, line: 28, baseType: !4193, size: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4187, file: !4170, line: 31, baseType: !4196, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4198)
!4198 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4170, line: 23, flags: DIFlagFwdDecl)
!4199 = !DIDerivedType(tag: DW_TAG_member, scope: !4187, file: !4170, line: 33, baseType: !4200, size: 64, offset: 192)
!4200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4187, file: !4170, line: 33, size: 64, elements: !4201)
!4201 = !{!4202, !4208, !4213}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4200, file: !4170, line: 38, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4200, file: !4170, line: 34, size: 64, elements: !4204)
!4204 = !{!4205, !4206, !4207}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4203, file: !4170, line: 35, baseType: !611, size: 32)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4203, file: !4170, line: 36, baseType: !235, size: 8, offset: 32)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4203, file: !4170, line: 37, baseType: !235, size: 8, offset: 40)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4200, file: !4170, line: 42, baseType: !4209, size: 16)
!4209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4200, file: !4170, line: 39, size: 16, elements: !4210)
!4210 = !{!4211, !4212}
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4209, file: !4170, line: 40, baseType: !235, size: 8)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4209, file: !4170, line: 41, baseType: !235, size: 8, offset: 8)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4200, file: !4170, line: 46, baseType: !4214, size: 16)
!4214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4200, file: !4170, line: 43, size: 16, elements: !4215)
!4215 = !{!4216, !4217}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4214, file: !4170, line: 44, baseType: !235, size: 8)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4214, file: !4170, line: 45, baseType: !235, size: 8, offset: 8)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4159, file: !152, line: 81, baseType: !4219, size: 64, offset: 448)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !152, line: 85, size: 384, elements: !4221)
!4221 = !{!4222, !4223, !4224, !4225, !4226, !4227}
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4220, file: !152, line: 86, baseType: !4182, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4220, file: !152, line: 87, baseType: !177, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4220, file: !152, line: 88, baseType: !177, size: 64, offset: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4220, file: !152, line: 89, baseType: !177, size: 64, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4220, file: !152, line: 90, baseType: !695, size: 8, offset: 256)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4220, file: !152, line: 92, baseType: !4219, size: 64, offset: 320)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4159, file: !152, line: 82, baseType: !7, size: 32, offset: 512)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2976, file: !1970, line: 1463, baseType: !4230, offset: 21184)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1970, line: 739, elements: !904)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2976, file: !1970, line: 1470, baseType: !835, size: 128, align: 64, offset: 21184)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2976, file: !1970, line: 1471, baseType: !1162, size: 32, offset: 21312)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2976, file: !1970, line: 1472, baseType: !101, size: 32, offset: 21344)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2976, file: !1970, line: 1474, baseType: !2975, size: 64, offset: 21376)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2976, file: !1970, line: 1475, baseType: !857, size: 320, offset: 21440)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2976, file: !1970, line: 1478, baseType: !4237, size: 64, offset: 21760)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4239, line: 49, size: 512, elements: !4240)
!4239 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4240 = !{!4241, !4242, !4243, !4244, !4245, !4247, !4248, !4249, !4251}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4238, file: !4239, line: 50, baseType: !4237, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4238, file: !4239, line: 51, baseType: !176, size: 64, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4238, file: !4239, line: 52, baseType: !177, size: 64, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4238, file: !4239, line: 53, baseType: !177, size: 64, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4238, file: !4239, line: 54, baseType: !4246, size: 64, offset: 256)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4238, file: !4239, line: 56, baseType: !7, size: 32, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4238, file: !4239, line: 58, baseType: !7, size: 32, offset: 352)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4238, file: !4239, line: 59, baseType: !4250, size: 64, offset: 384)
!4250 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !175, line: 159, baseType: !428)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4238, file: !4239, line: 60, baseType: !1622, size: 64, offset: 448)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2976, file: !1970, line: 1482, baseType: !1162, size: 32, offset: 21824)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2976, file: !1970, line: 1489, baseType: !176, size: 64, offset: 21888)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2976, file: !1970, line: 1504, baseType: !176, size: 64, offset: 21952)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2976, file: !1970, line: 1505, baseType: !429, size: 64, offset: 22016)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2976, file: !1970, line: 1506, baseType: !428, size: 64, offset: 22080)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2976, file: !1970, line: 1507, baseType: !429, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2976, file: !1970, line: 1508, baseType: !429, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2976, file: !1970, line: 1509, baseType: !429, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2976, file: !1970, line: 1510, baseType: !835, size: 128, align: 64, offset: 22208)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2976, file: !1970, line: 1511, baseType: !101, size: 32, offset: 22336)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2976, file: !1970, line: 1515, baseType: !3504, size: 64, offset: 22400)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2976, file: !1970, line: 1518, baseType: !3504, size: 64, offset: 22464)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2976, file: !1970, line: 1528, baseType: !835, size: 128, align: 64, offset: 22528)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2976, file: !1970, line: 1552, baseType: !4266, size: 35328, offset: 23040)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4267, line: 430, size: 35328, elements: !4268)
!4267 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4268 = !{!4269, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4298, !4299, !4300, !4301, !4302, !4303, !4306, !4307, !4308, !4309}
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4266, file: !4267, line: 432, baseType: !4270, size: 192)
!4270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4271, size: 192, elements: !278)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4272, line: 16, size: 64, elements: !4273)
!4272 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4271, file: !4272, line: 17, baseType: !245, size: 16)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4271, file: !4272, line: 18, baseType: !245, size: 16, offset: 16)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4271, file: !4272, line: 19, baseType: !245, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4271, file: !4272, line: 19, baseType: !245, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4271, file: !4272, line: 19, baseType: !245, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4271, file: !4272, line: 19, baseType: !245, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4271, file: !4272, line: 19, baseType: !245, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4271, file: !4272, line: 20, baseType: !245, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4271, file: !4272, line: 20, baseType: !245, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4271, file: !4272, line: 20, baseType: !245, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4271, file: !4272, line: 20, baseType: !245, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4271, file: !4272, line: 20, baseType: !245, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4271, file: !4272, line: 20, baseType: !245, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4266, file: !4267, line: 436, baseType: !177, size: 64, offset: 192)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4266, file: !4267, line: 440, baseType: !247, size: 16, offset: 256)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4266, file: !4267, line: 441, baseType: !247, size: 16, offset: 272)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4266, file: !4267, line: 442, baseType: !247, size: 16, offset: 288)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4266, file: !4267, line: 443, baseType: !247, size: 16, offset: 304)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4266, file: !4267, line: 447, baseType: !177, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4266, file: !4267, line: 448, baseType: !177, size: 64, offset: 384)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4266, file: !4267, line: 459, baseType: !4295, size: 256, offset: 448)
!4295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4296, size: 256, elements: !845)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4267, line: 428, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4266, file: !4267, line: 461, baseType: !177, size: 64, offset: 704)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4266, file: !4267, line: 463, baseType: !177, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4266, file: !4267, line: 465, baseType: !177, size: 64, offset: 832)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4266, file: !4267, line: 466, baseType: !177, size: 64, offset: 896)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4266, file: !4267, line: 467, baseType: !177, size: 64, offset: 960)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4266, file: !4267, line: 473, baseType: !4304, size: 64, offset: 1024)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4267, line: 10, flags: DIFlagFwdDecl)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4266, file: !4267, line: 480, baseType: !177, size: 64, offset: 1088)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4266, file: !4267, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4266, file: !4267, line: 491, baseType: !424, size: 32, offset: 1184)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4266, file: !4267, line: 501, baseType: !4310, size: 33792, offset: 1536)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4311, line: 448, size: 33792, elements: !4312)
!4311 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4312 = !{!4313, !4314, !4315, !4476, !4477, !4483, !4484}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4310, file: !4311, line: 461, baseType: !7, size: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4310, file: !4311, line: 468, baseType: !177, size: 64, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4310, file: !4311, line: 476, baseType: !4316, size: 64, offset: 128)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4311, line: 356, size: 33280, align: 512, elements: !4318)
!4318 = !{!4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4317, file: !4311, line: 358, baseType: !7, size: 32)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4317, file: !4311, line: 361, baseType: !7, size: 32, offset: 32)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4317, file: !4311, line: 364, baseType: !428, size: 64, offset: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4317, file: !4311, line: 367, baseType: !428, size: 64, offset: 128)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4317, file: !4311, line: 370, baseType: !428, size: 64, offset: 192)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4317, file: !4311, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4317, file: !4311, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4317, file: !4311, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4317, file: !4311, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4317, file: !4311, line: 397, baseType: !4329, size: 32768, offset: 512)
!4329 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4311, line: 348, size: 32768, elements: !4330)
!4330 = !{!4331, !4346, !4383, !4460, !4472}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4329, file: !4311, line: 349, baseType: !4332, size: 896)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4311, line: 12, size: 896, elements: !4333)
!4333 = !{!4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4345}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4332, file: !4311, line: 13, baseType: !424, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4332, file: !4311, line: 14, baseType: !424, size: 32, offset: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4332, file: !4311, line: 15, baseType: !424, size: 32, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4332, file: !4311, line: 16, baseType: !424, size: 32, offset: 96)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4332, file: !4311, line: 17, baseType: !424, size: 32, offset: 128)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4332, file: !4311, line: 18, baseType: !424, size: 32, offset: 160)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4332, file: !4311, line: 19, baseType: !424, size: 32, offset: 192)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4332, file: !4311, line: 22, baseType: !4342, size: 640, offset: 224)
!4342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 640, elements: !4343)
!4343 = !{!4344}
!4344 = !DISubrange(count: 20)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4332, file: !4311, line: 25, baseType: !424, size: 32, offset: 864)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4329, file: !4311, line: 350, baseType: !4347, size: 4096, align: 128)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4311, line: 34, size: 4096, align: 128, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4368, !4369, !4370, !4372, !4374, !4378}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4347, file: !4311, line: 35, baseType: !245, size: 16)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4347, file: !4311, line: 36, baseType: !245, size: 16, offset: 16)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4347, file: !4311, line: 37, baseType: !245, size: 16, offset: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4347, file: !4311, line: 38, baseType: !245, size: 16, offset: 48)
!4353 = !DIDerivedType(tag: DW_TAG_member, scope: !4347, file: !4311, line: 39, baseType: !4354, size: 128, offset: 64)
!4354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4347, file: !4311, line: 39, size: 128, elements: !4355)
!4355 = !{!4356, !4361}
!4356 = !DIDerivedType(tag: DW_TAG_member, scope: !4354, file: !4311, line: 40, baseType: !4357, size: 128)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4354, file: !4311, line: 40, size: 128, elements: !4358)
!4358 = !{!4359, !4360}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4357, file: !4311, line: 41, baseType: !428, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4357, file: !4311, line: 42, baseType: !428, size: 64, offset: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, scope: !4354, file: !4311, line: 44, baseType: !4362, size: 128)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4354, file: !4311, line: 44, size: 128, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4367}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4362, file: !4311, line: 45, baseType: !424, size: 32)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4362, file: !4311, line: 46, baseType: !424, size: 32, offset: 32)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4362, file: !4311, line: 47, baseType: !424, size: 32, offset: 64)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4362, file: !4311, line: 48, baseType: !424, size: 32, offset: 96)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4347, file: !4311, line: 51, baseType: !424, size: 32, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4347, file: !4311, line: 52, baseType: !424, size: 32, offset: 224)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4347, file: !4311, line: 55, baseType: !4371, size: 1024, offset: 256)
!4371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 1024, elements: !437)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4347, file: !4311, line: 58, baseType: !4373, size: 2048, offset: 1280)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 2048, elements: !282)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4347, file: !4311, line: 60, baseType: !4375, size: 384, offset: 3328)
!4375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, elements: !4376)
!4376 = !{!4377}
!4377 = !DISubrange(count: 12)
!4378 = !DIDerivedType(tag: DW_TAG_member, scope: !4347, file: !4311, line: 62, baseType: !4379, size: 384, offset: 3712)
!4379 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4347, file: !4311, line: 62, size: 384, elements: !4380)
!4380 = !{!4381, !4382}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4379, file: !4311, line: 63, baseType: !4375, size: 384)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4379, file: !4311, line: 64, baseType: !4375, size: 384)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4329, file: !4311, line: 351, baseType: !4384, size: 1088)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4311, line: 79, size: 1088, elements: !4385)
!4385 = !{!4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4459}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4384, file: !4311, line: 80, baseType: !424, size: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4384, file: !4311, line: 81, baseType: !424, size: 32, offset: 32)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4384, file: !4311, line: 82, baseType: !424, size: 32, offset: 64)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4384, file: !4311, line: 83, baseType: !424, size: 32, offset: 96)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4384, file: !4311, line: 84, baseType: !424, size: 32, offset: 128)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4384, file: !4311, line: 85, baseType: !424, size: 32, offset: 160)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4384, file: !4311, line: 86, baseType: !424, size: 32, offset: 192)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4384, file: !4311, line: 88, baseType: !4342, size: 640, offset: 224)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4384, file: !4311, line: 89, baseType: !235, size: 8, offset: 864)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4384, file: !4311, line: 90, baseType: !235, size: 8, offset: 872)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4384, file: !4311, line: 91, baseType: !235, size: 8, offset: 880)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4384, file: !4311, line: 92, baseType: !235, size: 8, offset: 888)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4384, file: !4311, line: 93, baseType: !235, size: 8, offset: 896)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4384, file: !4311, line: 94, baseType: !235, size: 8, offset: 904)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4384, file: !4311, line: 95, baseType: !4401, size: 64, offset: 960)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4403, line: 11, size: 128, elements: !4404)
!4403 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4404 = !{!4405, !4406}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4402, file: !4403, line: 12, baseType: !178, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4402, file: !4403, line: 13, baseType: !4407, size: 64, offset: 64)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4409, line: 103, size: 1344, elements: !4410)
!4409 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4410 = !{!4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4439, !4440, !4441}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4408, file: !4409, line: 109, baseType: !177, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4408, file: !4409, line: 110, baseType: !177, size: 64, offset: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4408, file: !4409, line: 111, baseType: !177, size: 64, offset: 128)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4408, file: !4409, line: 112, baseType: !177, size: 64, offset: 192)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4408, file: !4409, line: 113, baseType: !177, size: 64, offset: 256)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4408, file: !4409, line: 114, baseType: !177, size: 64, offset: 320)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4408, file: !4409, line: 117, baseType: !177, size: 64, offset: 384)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4408, file: !4409, line: 118, baseType: !177, size: 64, offset: 448)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4408, file: !4409, line: 119, baseType: !177, size: 64, offset: 512)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4408, file: !4409, line: 120, baseType: !177, size: 64, offset: 576)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4408, file: !4409, line: 121, baseType: !177, size: 64, offset: 640)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4408, file: !4409, line: 122, baseType: !177, size: 64, offset: 704)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4408, file: !4409, line: 123, baseType: !177, size: 64, offset: 768)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4408, file: !4409, line: 124, baseType: !177, size: 64, offset: 832)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4408, file: !4409, line: 125, baseType: !177, size: 64, offset: 896)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4408, file: !4409, line: 139, baseType: !177, size: 64, offset: 960)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4408, file: !4409, line: 142, baseType: !177, size: 64, offset: 1024)
!4428 = !DIDerivedType(tag: DW_TAG_member, scope: !4408, file: !4409, line: 144, baseType: !4429, size: 64, offset: 1088)
!4429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4408, file: !4409, line: 144, size: 64, elements: !4430)
!4430 = !{!4431, !4432, !4433}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4429, file: !4409, line: 146, baseType: !245, size: 16)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4429, file: !4409, line: 148, baseType: !428, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4429, file: !4409, line: 150, baseType: !4434, size: 64)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4409, line: 59, size: 64, elements: !4435)
!4435 = !{!4436, !4437, !4438}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4434, file: !4409, line: 61, baseType: !428, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4434, file: !4409, line: 63, baseType: !428, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4434, file: !4409, line: 65, baseType: !428, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4408, file: !4409, line: 153, baseType: !177, size: 64, offset: 1152)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4408, file: !4409, line: 154, baseType: !177, size: 64, offset: 1216)
!4441 = !DIDerivedType(tag: DW_TAG_member, scope: !4408, file: !4409, line: 156, baseType: !4442, size: 64, offset: 1280)
!4442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4408, file: !4409, line: 156, size: 64, elements: !4443)
!4443 = !{!4444, !4445, !4446}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4442, file: !4409, line: 158, baseType: !245, size: 16)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4442, file: !4409, line: 160, baseType: !428, size: 64)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4442, file: !4409, line: 162, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4409, line: 69, size: 64, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4447, file: !4409, line: 71, baseType: !428, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4447, file: !4409, line: 73, baseType: !428, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4447, file: !4409, line: 75, baseType: !428, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4447, file: !4409, line: 77, baseType: !428, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4447, file: !4409, line: 80, baseType: !428, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4447, file: !4409, line: 83, baseType: !428, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4447, file: !4409, line: 86, baseType: !428, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4447, file: !4409, line: 88, baseType: !428, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4447, file: !4409, line: 93, baseType: !428, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4447, file: !4409, line: 100, baseType: !428, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4384, file: !4311, line: 96, baseType: !424, size: 32, offset: 1024)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4329, file: !4311, line: 352, baseType: !4461, size: 4608, align: 512)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4311, line: 333, size: 4608, align: 512, elements: !4462)
!4462 = !{!4463, !4464, !4471}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4461, file: !4311, line: 334, baseType: !4347, size: 4096, align: 128)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4461, file: !4311, line: 335, baseType: !4465, size: 512, offset: 4096)
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4311, line: 312, size: 512, elements: !4466)
!4466 = !{!4467, !4468, !4469}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4465, file: !4311, line: 313, baseType: !428, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4465, file: !4311, line: 314, baseType: !428, size: 64, offset: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4465, file: !4311, line: 315, baseType: !4470, size: 384, offset: 128)
!4470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !428, size: 384, elements: !1281)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4461, file: !4311, line: 336, baseType: !3498, offset: 4608)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4329, file: !4311, line: 353, baseType: !4473, size: 32768)
!4473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 32768, elements: !4474)
!4474 = !{!4475}
!4475 = !DISubrange(count: 4096)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4310, file: !4311, line: 484, baseType: !4316, size: 64, offset: 192)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4310, file: !4311, line: 491, baseType: !4478, size: 128, offset: 256)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4311, line: 404, size: 128, elements: !4479)
!4479 = !{!4480, !4481, !4482}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4478, file: !4311, line: 424, baseType: !428, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4478, file: !4311, line: 432, baseType: !7, size: 32, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4478, file: !4311, line: 440, baseType: !7, size: 32, offset: 96)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4310, file: !4311, line: 498, baseType: !4478, size: 128, offset: 384)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4310, file: !4311, line: 508, baseType: !4317, size: 33280, align: 512, offset: 512)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2958, file: !2959, line: 16, baseType: !1173, size: 192, offset: 512)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2958, file: !2959, line: 17, baseType: !227, size: 32, offset: 704)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !507, file: !64, line: 1240, baseType: !176, size: 64, offset: 6912)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !507, file: !64, line: 1243, baseType: !424, size: 32, offset: 6976)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !507, file: !64, line: 1245, baseType: !1252, size: 64, offset: 7040)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !507, file: !64, line: 1246, baseType: !1252, size: 64, offset: 7104)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !507, file: !64, line: 1248, baseType: !425, size: 32, offset: 7168)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !507, file: !64, line: 1249, baseType: !4493, size: 64, offset: 7232)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !64, line: 634, flags: DIFlagFwdDecl)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !507, file: !64, line: 1252, baseType: !4496, size: 256, offset: 7296)
!4496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !437)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !507, file: !64, line: 1253, baseType: !4498, size: 128, offset: 7552)
!4498 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4499, line: 21, baseType: !4500)
!4499 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4499, line: 19, size: 128, elements: !4501)
!4501 = !{!4502}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4500, file: !4499, line: 20, baseType: !4503, size: 128)
!4503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 128, elements: !3326)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !507, file: !64, line: 1255, baseType: !7, size: 32, offset: 7680)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !507, file: !64, line: 1261, baseType: !615, size: 256, offset: 7744)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !507, file: !64, line: 1267, baseType: !195, size: 64, offset: 8000)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !507, file: !64, line: 1269, baseType: !453, size: 64, offset: 8064)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !507, file: !64, line: 1271, baseType: !4509, size: 448, offset: 8128)
!4509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2087, line: 63, size: 448, elements: !4510)
!4510 = !{!4511, !4516, !4517, !4518, !4519, !4520, !4521}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4509, file: !2087, line: 64, baseType: !4512, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DISubroutineType(types: !4514)
!4514 = !{!177, !4515, !2085}
!4515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4509, file: !2087, line: 66, baseType: !4512, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4509, file: !2087, line: 69, baseType: !178, size: 64, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4509, file: !2087, line: 70, baseType: !101, size: 32, offset: 192)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4509, file: !2087, line: 71, baseType: !7, size: 32, offset: 224)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4509, file: !2087, line: 74, baseType: !182, size: 128, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4509, file: !2087, line: 85, baseType: !4522, size: 64, offset: 384)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !507, file: !64, line: 1274, baseType: !619, size: 64, offset: 8576)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !507, file: !64, line: 1280, baseType: !619, size: 64, offset: 8640)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !507, file: !64, line: 1283, baseType: !101, size: 32, offset: 8704)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !507, file: !64, line: 1286, baseType: !2019, size: 32, offset: 8736)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !507, file: !64, line: 1289, baseType: !937, size: 64, offset: 8768)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !507, file: !64, line: 1290, baseType: !985, size: 64, offset: 8832)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !507, file: !64, line: 1297, baseType: !1375, size: 64, offset: 8896)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !507, file: !64, line: 1304, baseType: !4531, size: 64, offset: 8960)
!4531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4532, line: 49, size: 64, elements: !4533)
!4532 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4533 = !{!4534}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4531, file: !4532, line: 50, baseType: !4535, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4532, line: 41, size: 512, align: 512, elements: !4537)
!4537 = !{!4538, !4539, !4544}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4536, file: !4532, line: 43, baseType: !207, size: 32)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4536, file: !4532, line: 45, baseType: !4540, size: 192, offset: 64)
!4540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4532, line: 29, size: 192, elements: !4541)
!4541 = !{!4542, !4543}
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4540, file: !4532, line: 30, baseType: !182, size: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4540, file: !4532, line: 32, baseType: !178, size: 64, offset: 128)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4536, file: !4532, line: 46, baseType: !178, size: 64, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !507, file: !64, line: 1305, baseType: !4531, size: 64, offset: 9024)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !507, file: !64, line: 1306, baseType: !835, size: 128, align: 64, offset: 9088)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !507, file: !64, line: 1307, baseType: !875, size: 256, offset: 9216)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !507, file: !64, line: 1309, baseType: !615, size: 256, offset: 9472)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !507, file: !64, line: 1314, baseType: !101, size: 32, offset: 9728)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !507, file: !64, line: 1317, baseType: !207, size: 32, align: 512, offset: 10240)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !507, file: !64, line: 1318, baseType: !182, size: 128, offset: 10304)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !507, file: !64, line: 1320, baseType: !207, size: 32, offset: 10432)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !507, file: !64, line: 1321, baseType: !182, size: 128, offset: 10496)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !501, file: !502, line: 73, baseType: !101, size: 32, offset: 128)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !501, file: !502, line: 74, baseType: !4556, size: 64, offset: 192)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1212, line: 42, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !455, file: !392, line: 141, baseType: !4560, size: 64, offset: 704)
!4560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4561, size: 64)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!101, !2147, !695}
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !455, file: !392, line: 142, baseType: !4564, size: 64, offset: 768)
!4564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!390, !390, !4567}
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !391, file: !392, line: 96, baseType: !506, size: 64, offset: 832)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !391, file: !392, line: 97, baseType: !177, size: 64, offset: 896)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !391, file: !392, line: 98, baseType: !176, size: 64, offset: 960)
!4572 = !DIDerivedType(tag: DW_TAG_member, scope: !391, file: !392, line: 100, baseType: !4573, size: 128, offset: 1024)
!4573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !392, line: 100, size: 128, elements: !4574)
!4574 = !{!4575, !4576}
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4573, file: !392, line: 101, baseType: !182, size: 128)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4573, file: !392, line: 102, baseType: !4577, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !391, file: !392, line: 104, baseType: !182, size: 128, offset: 1152)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !391, file: !392, line: 105, baseType: !182, size: 128, offset: 1280)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !391, file: !392, line: 113, baseType: !4581, size: 128, offset: 1408)
!4581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !392, line: 109, size: 128, elements: !4582)
!4582 = !{!4583, !4584, !4585}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4581, file: !392, line: 110, baseType: !861, size: 128)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4581, file: !392, line: 111, baseType: !406, size: 128)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4581, file: !392, line: 112, baseType: !835, size: 128, align: 64)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !384, file: !64, line: 1968, baseType: !4587, size: 64, offset: 64)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!195, !390, !355, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4592, line: 10, size: 128, elements: !4593)
!4592 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4593 = !{!4594, !4595}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4591, file: !4592, line: 11, baseType: !658, size: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4591, file: !4592, line: 12, baseType: !176, size: 64, offset: 64)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !384, file: !64, line: 1969, baseType: !4597, size: 64, offset: 128)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!101, !4556, !355, !101}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !384, file: !64, line: 1970, baseType: !4601, size: 64, offset: 192)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!378, !355, !101, !695}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !384, file: !64, line: 1972, baseType: !4605, size: 64, offset: 256)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!101, !390, !277, !101}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !384, file: !64, line: 1974, baseType: !4609, size: 64, offset: 320)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!101, !4556, !355, !390, !318, !695}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !384, file: !64, line: 1976, baseType: !4613, size: 64, offset: 384)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!101, !390, !355, !390}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !384, file: !64, line: 1977, baseType: !4617, size: 64, offset: 448)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!101, !355, !390}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !384, file: !64, line: 1978, baseType: !4621, size: 64, offset: 512)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!101, !4556, !355, !390, !195}
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !384, file: !64, line: 1980, baseType: !4625, size: 64, offset: 576)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!101, !4556, !355, !390, !318}
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !384, file: !64, line: 1982, baseType: !4617, size: 64, offset: 640)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !384, file: !64, line: 1983, baseType: !4630, size: 64, offset: 704)
!4630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4631, size: 64)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!101, !4556, !355, !390, !318, !511}
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !384, file: !64, line: 1985, baseType: !4634, size: 64, offset: 768)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!101, !4556, !355, !390, !355, !390, !7}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !384, file: !64, line: 1987, baseType: !4638, size: 64, offset: 832)
!4638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4639, size: 64)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!101, !4556, !390, !4641}
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4642, size: 64)
!4642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !64, line: 226, size: 640, elements: !4643)
!4643 = !{!4644, !4645, !4646, !4656, !4665, !4666, !4671, !4672, !4673}
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4642, file: !64, line: 227, baseType: !7, size: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4642, file: !64, line: 228, baseType: !318, size: 16, offset: 32)
!4646 = !DIDerivedType(tag: DW_TAG_member, scope: !4642, file: !64, line: 241, baseType: !4647, size: 32, offset: 64)
!4647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4642, file: !64, line: 241, size: 32, elements: !4648)
!4648 = !{!4649, !4650}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4647, file: !64, line: 242, baseType: !361, size: 32)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4647, file: !64, line: 243, baseType: !4651, size: 32)
!4651 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4652, line: 16, baseType: !4653)
!4652 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4652, line: 14, size: 32, elements: !4654)
!4654 = !{!4655}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4653, file: !4652, line: 15, baseType: !366, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, scope: !4642, file: !64, line: 245, baseType: !4657, size: 32, offset: 96)
!4657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4642, file: !64, line: 245, size: 32, elements: !4658)
!4658 = !{!4659, !4660}
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4657, file: !64, line: 246, baseType: !370, size: 32)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4657, file: !64, line: 247, baseType: !4661, size: 32)
!4661 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4652, line: 20, baseType: !4662)
!4662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4652, line: 18, size: 32, elements: !4663)
!4663 = !{!4664}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4662, file: !4652, line: 19, baseType: !374, size: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4642, file: !64, line: 249, baseType: !516, size: 64, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4642, file: !64, line: 250, baseType: !4667, size: 128, offset: 192)
!4667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1253, line: 13, size: 128, elements: !4668)
!4668 = !{!4669, !4670}
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4667, file: !1253, line: 14, baseType: !1252, size: 64)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4667, file: !1253, line: 15, baseType: !178, size: 64, offset: 64)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4642, file: !64, line: 251, baseType: !4667, size: 128, offset: 320)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4642, file: !64, line: 252, baseType: !4667, size: 128, offset: 448)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4642, file: !64, line: 259, baseType: !1420, size: 64, offset: 576)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !384, file: !64, line: 1988, baseType: !4675, size: 64, offset: 896)
!4675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4676, size: 64)
!4676 = !DISubroutineType(types: !4677)
!4677 = !{!101, !4556, !2147, !4678, !424, !7}
!4678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4679, size: 64)
!4679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4680, line: 22, size: 1280, elements: !4681)
!4680 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4681 = !{!4682, !4683, !4684, !4685, !4686, !4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702}
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4679, file: !4680, line: 23, baseType: !424, size: 32)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4679, file: !4680, line: 24, baseType: !318, size: 16, offset: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4679, file: !4680, line: 25, baseType: !7, size: 32, offset: 64)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4679, file: !4680, line: 26, baseType: !1260, size: 32, offset: 96)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4679, file: !4680, line: 27, baseType: !428, size: 64, offset: 128)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4679, file: !4680, line: 28, baseType: !428, size: 64, offset: 192)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4679, file: !4680, line: 41, baseType: !428, size: 64, offset: 256)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4679, file: !4680, line: 42, baseType: !511, size: 32, offset: 320)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4679, file: !4680, line: 43, baseType: !511, size: 32, offset: 352)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4679, file: !4680, line: 44, baseType: !361, size: 32, offset: 384)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4679, file: !4680, line: 45, baseType: !370, size: 32, offset: 416)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4679, file: !4680, line: 46, baseType: !516, size: 64, offset: 448)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4679, file: !4680, line: 47, baseType: !4667, size: 128, offset: 512)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4679, file: !4680, line: 48, baseType: !4667, size: 128, offset: 640)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4679, file: !4680, line: 49, baseType: !4667, size: 128, offset: 768)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4679, file: !4680, line: 50, baseType: !4667, size: 128, offset: 896)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4679, file: !4680, line: 51, baseType: !428, size: 64, offset: 1024)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4679, file: !4680, line: 52, baseType: !428, size: 64, offset: 1088)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4679, file: !4680, line: 53, baseType: !424, size: 32, offset: 1152)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4679, file: !4680, line: 54, baseType: !424, size: 32, offset: 1184)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4679, file: !4680, line: 55, baseType: !428, size: 64, offset: 1216)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !384, file: !64, line: 1990, baseType: !4704, size: 64, offset: 960)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = !DISubroutineType(types: !4706)
!4706 = !{!309, !390, !277, !323}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !384, file: !64, line: 1991, baseType: !4708, size: 64, offset: 1024)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4709, size: 64)
!4709 = !DISubroutineType(types: !4710)
!4710 = !{!101, !355, !4711, !428, !428}
!4711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4712, size: 64)
!4712 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !64, line: 55, flags: DIFlagFwdDecl)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !384, file: !64, line: 1993, baseType: !4714, size: 64, offset: 1088)
!4714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4715, size: 64)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!101, !355, !101}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !384, file: !64, line: 1994, baseType: !4718, size: 64, offset: 1152)
!4718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4719, size: 64)
!4719 = !DISubroutineType(types: !4720)
!4720 = !{!101, !355, !390, !1420, !7, !318}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !384, file: !64, line: 1997, baseType: !4722, size: 64, offset: 1216)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = !DISubroutineType(types: !4724)
!4724 = !{!101, !4556, !355, !1420, !318}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !384, file: !64, line: 1999, baseType: !4726, size: 64, offset: 1280)
!4726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4727, size: 64)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!378, !4556, !390, !101}
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !384, file: !64, line: 2001, baseType: !4730, size: 64, offset: 1344)
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DISubroutineType(types: !4732)
!4732 = !{!101, !4556, !390, !378, !101}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !384, file: !64, line: 2003, baseType: !4734, size: 64, offset: 1408)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!101, !4556, !390, !4737}
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !64, line: 76, flags: DIFlagFwdDecl)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !384, file: !64, line: 2005, baseType: !4740, size: 64, offset: 1472)
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4741, size: 64)
!4741 = !DISubroutineType(types: !4742)
!4742 = !{!101, !390, !4737}
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !384, file: !64, line: 2006, baseType: !4744, size: 64, offset: 1536)
!4744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4745, size: 64)
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!4747, !355}
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !64, line: 3192, size: 192, elements: !4749)
!4749 = !{!4750, !4757}
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4748, file: !64, line: 3193, baseType: !4751, size: 128)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !4752, line: 296, size: 128, elements: !4753)
!4752 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!4753 = !{!4754, !4755, !4756}
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !4751, file: !4752, line: 297, baseType: !207, size: 32)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !4751, file: !4752, line: 299, baseType: !174, size: 32, offset: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !4751, file: !4752, line: 300, baseType: !176, size: 64, offset: 64)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4748, file: !64, line: 3194, baseType: !424, size: 32, offset: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !356, file: !64, line: 655, baseType: !506, size: 64, offset: 448)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !356, file: !64, line: 656, baseType: !351, size: 64, offset: 512)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !356, file: !64, line: 659, baseType: !176, size: 64, offset: 576)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !356, file: !64, line: 663, baseType: !177, size: 64, offset: 640)
!4762 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !64, line: 671, baseType: !4763, size: 32, offset: 704)
!4763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !64, line: 671, size: 32, elements: !4764)
!4764 = !{!4765, !4767}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4763, file: !64, line: 672, baseType: !4766, size: 32)
!4766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4763, file: !64, line: 673, baseType: !7, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !356, file: !64, line: 675, baseType: !511, size: 32, offset: 736)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !356, file: !64, line: 676, baseType: !516, size: 64, offset: 768)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !356, file: !64, line: 677, baseType: !4667, size: 128, offset: 832)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !356, file: !64, line: 678, baseType: !4667, size: 128, offset: 960)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !356, file: !64, line: 679, baseType: !4667, size: 128, offset: 1088)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !356, file: !64, line: 680, baseType: !207, size: 32, offset: 1216)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !356, file: !64, line: 681, baseType: !247, size: 16, offset: 1248)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !356, file: !64, line: 682, baseType: !235, size: 8, offset: 1264)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !356, file: !64, line: 683, baseType: !235, size: 8, offset: 1272)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !356, file: !64, line: 684, baseType: !2220, size: 64, offset: 1280)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !356, file: !64, line: 691, baseType: !177, size: 64, offset: 1344)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !356, file: !64, line: 692, baseType: !1236, size: 320, offset: 1408)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !356, file: !64, line: 694, baseType: !177, size: 64, offset: 1728)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !356, file: !64, line: 695, baseType: !177, size: 64, offset: 1792)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !356, file: !64, line: 697, baseType: !861, size: 128, offset: 1856)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !356, file: !64, line: 698, baseType: !182, size: 128, offset: 1984)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !356, file: !64, line: 707, baseType: !182, size: 128, offset: 2112)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !356, file: !64, line: 708, baseType: !182, size: 128, offset: 2240)
!4786 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !64, line: 709, baseType: !4787, size: 128, offset: 2368)
!4787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !64, line: 709, size: 128, elements: !4788)
!4788 = !{!4789, !4790}
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4787, file: !64, line: 710, baseType: !985, size: 64)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4787, file: !64, line: 711, baseType: !835, size: 128, align: 64)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !356, file: !64, line: 713, baseType: !621, size: 64, offset: 2496)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !356, file: !64, line: 714, baseType: !621, size: 64, offset: 2560)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !356, file: !64, line: 715, baseType: !227, size: 32, offset: 2624)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !356, file: !64, line: 716, baseType: !227, size: 32, offset: 2656)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !356, file: !64, line: 717, baseType: !227, size: 32, offset: 2688)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !356, file: !64, line: 719, baseType: !227, size: 32, offset: 2720)
!4797 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !64, line: 721, baseType: !4798, size: 64, offset: 2752)
!4798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !64, line: 721, size: 64, elements: !4799)
!4799 = !{!4800, !4801}
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4798, file: !64, line: 722, baseType: !1411, size: 64)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4798, file: !64, line: 723, baseType: !1008, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !356, file: !64, line: 725, baseType: !4803, size: 64, offset: 2816)
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4804, size: 64)
!4804 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !64, line: 725, flags: DIFlagFwdDecl)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !356, file: !64, line: 726, baseType: !352, size: 1536, align: 64, offset: 2880)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !356, file: !64, line: 727, baseType: !182, size: 128, offset: 4416)
!4807 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !64, line: 728, baseType: !4808, size: 64, offset: 4544)
!4808 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !64, line: 728, size: 64, elements: !4809)
!4809 = !{!4810, !4811, !4812, !4813}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4808, file: !64, line: 729, baseType: !1968, size: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4808, file: !64, line: 730, baseType: !186, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4808, file: !64, line: 731, baseType: !277, size: 64)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4808, file: !64, line: 732, baseType: !7, size: 32)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !356, file: !64, line: 735, baseType: !425, size: 32, offset: 4608)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !356, file: !64, line: 738, baseType: !425, size: 32, offset: 4640)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !356, file: !64, line: 739, baseType: !4493, size: 64, offset: 4672)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !356, file: !64, line: 750, baseType: !176, size: 64, offset: 4736)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !352, file: !64, line: 474, baseType: !4751, size: 128, offset: 64)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !352, file: !64, line: 475, baseType: !1236, size: 320, offset: 192)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !352, file: !64, line: 476, baseType: !174, size: 32, offset: 512)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !352, file: !64, line: 477, baseType: !227, size: 32, offset: 544)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !352, file: !64, line: 482, baseType: !2544, size: 128, offset: 576)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !352, file: !64, line: 483, baseType: !177, size: 64, offset: 704)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !352, file: !64, line: 484, baseType: !177, size: 64, offset: 768)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !352, file: !64, line: 485, baseType: !4826, size: 64, offset: 832)
!4826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4827, size: 64)
!4827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4828)
!4828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !64, line: 404, size: 1280, elements: !4829)
!4829 = !{!4830, !4834, !4904, !4908, !4912, !4918, !4922, !4926, !4930, !4934, !4938, !4942, !4943, !4947, !4951, !4955, !4960, !4964, !4971, !4972}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4828, file: !64, line: 405, baseType: !4831, size: 64)
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!101, !1755, !1020}
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4828, file: !64, line: 406, baseType: !4835, size: 64, offset: 64)
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4836, size: 64)
!4836 = !DISubroutineType(types: !4837)
!4837 = !{!101, !1420, !4838}
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !4840)
!4840 = !{!4841, !4871, !4885}
!4841 = !DIDerivedType(tag: DW_TAG_member, scope: !4839, file: !30, line: 295, baseType: !4842, size: 512)
!4842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4839, file: !30, line: 295, size: 512, elements: !4843)
!4843 = !{!4844, !4870}
!4844 = !DIDerivedType(tag: DW_TAG_member, scope: !4842, file: !30, line: 296, baseType: !4845, size: 448)
!4845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4842, file: !30, line: 296, size: 448, elements: !4846)
!4846 = !{!4847, !4848, !4857, !4858, !4859, !4868, !4869}
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4845, file: !30, line: 298, baseType: !177, size: 64)
!4848 = !DIDerivedType(tag: DW_TAG_member, scope: !4845, file: !30, line: 299, baseType: !4849, size: 128, offset: 64)
!4849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4845, file: !30, line: 299, size: 128, elements: !4850)
!4850 = !{!4851, !4852}
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4849, file: !30, line: 300, baseType: !182, size: 128)
!4852 = !DIDerivedType(tag: DW_TAG_member, scope: !4849, file: !30, line: 302, baseType: !4853, size: 128)
!4853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4849, file: !30, line: 302, size: 128, elements: !4854)
!4854 = !{!4855, !4856}
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4853, file: !30, line: 303, baseType: !176, size: 64)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4853, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4845, file: !30, line: 310, baseType: !351, size: 64, offset: 192)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4845, file: !30, line: 311, baseType: !177, size: 64, offset: 256)
!4859 = !DIDerivedType(tag: DW_TAG_member, scope: !4845, file: !30, line: 312, baseType: !4860, size: 64, offset: 320)
!4860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4845, file: !30, line: 312, size: 64, elements: !4861)
!4861 = !{!4862, !4863}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4860, file: !30, line: 313, baseType: !176, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4860, file: !30, line: 314, baseType: !4864, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !4865)
!4865 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !4866)
!4866 = !{!4867}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4865, file: !30, line: 256, baseType: !177, size: 64)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4845, file: !30, line: 316, baseType: !227, size: 32, offset: 384)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4845, file: !30, line: 317, baseType: !227, size: 32, offset: 416)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4842, file: !30, line: 323, baseType: !1756, size: 512, align: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, scope: !4839, file: !30, line: 325, baseType: !4872, size: 512, offset: 512)
!4872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4839, file: !30, line: 325, size: 512, elements: !4873)
!4873 = !{!4874, !4884}
!4874 = !DIDerivedType(tag: DW_TAG_member, scope: !4872, file: !30, line: 326, baseType: !4875, size: 320)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4872, file: !30, line: 326, size: 320, elements: !4876)
!4876 = !{!4877, !4878, !4879, !4880, !4881, !4882, !4883}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4875, file: !30, line: 327, baseType: !177, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4875, file: !30, line: 328, baseType: !177, size: 64, offset: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4875, file: !30, line: 329, baseType: !177, size: 64, offset: 128)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4875, file: !30, line: 331, baseType: !227, size: 32, offset: 192)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4875, file: !30, line: 332, baseType: !227, size: 32, offset: 224)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4875, file: !30, line: 333, baseType: !227, size: 32, offset: 256)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4875, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4872, file: !30, line: 339, baseType: !1756, size: 512, align: 128)
!4885 = !DIDerivedType(tag: DW_TAG_member, scope: !4839, file: !30, line: 341, baseType: !4886, size: 512, offset: 1024)
!4886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4839, file: !30, line: 341, size: 512, elements: !4887)
!4887 = !{!4888, !4897, !4903}
!4888 = !DIDerivedType(tag: DW_TAG_member, scope: !4886, file: !30, line: 342, baseType: !4889, size: 384)
!4889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4886, file: !30, line: 342, size: 384, elements: !4890)
!4890 = !{!4891, !4892, !4893, !4894, !4895, !4896}
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4889, file: !30, line: 343, baseType: !177, size: 64)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4889, file: !30, line: 344, baseType: !177, size: 64, offset: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4889, file: !30, line: 346, baseType: !176, size: 64, offset: 128)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4889, file: !30, line: 347, baseType: !176, size: 64, offset: 192)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4889, file: !30, line: 348, baseType: !176, size: 64, offset: 256)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4889, file: !30, line: 349, baseType: !176, size: 64, offset: 320)
!4897 = !DIDerivedType(tag: DW_TAG_member, scope: !4886, file: !30, line: 352, baseType: !4898, size: 256)
!4898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4886, file: !30, line: 352, size: 256, elements: !4899)
!4899 = !{!4900, !4901, !4902}
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4898, file: !30, line: 353, baseType: !177, size: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4898, file: !30, line: 354, baseType: !177, size: 64, offset: 64)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4898, file: !30, line: 356, baseType: !182, size: 128, offset: 128)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4886, file: !30, line: 359, baseType: !1756, size: 512, align: 128)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4828, file: !64, line: 409, baseType: !4905, size: 64, offset: 128)
!4905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4906, size: 64)
!4906 = !DISubroutineType(types: !4907)
!4907 = !{!101, !351, !1020}
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4828, file: !64, line: 412, baseType: !4909, size: 64, offset: 192)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!695, !351, !4838}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4828, file: !64, line: 414, baseType: !4913, size: 64, offset: 256)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{null, !4916}
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !64, line: 310, flags: DIFlagFwdDecl)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4828, file: !64, line: 416, baseType: !4919, size: 64, offset: 320)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{!101, !1420, !351, !516, !7, !4246, !1984}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4828, file: !64, line: 419, baseType: !4923, size: 64, offset: 384)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!101, !1420, !351, !516, !7, !7, !1755, !176}
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4828, file: !64, line: 424, baseType: !4927, size: 64, offset: 448)
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{!2251, !351, !2251}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4828, file: !64, line: 425, baseType: !4931, size: 64, offset: 512)
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{null, !4838, !323, !323}
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4828, file: !64, line: 426, baseType: !4935, size: 64, offset: 576)
!4935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4936, size: 64)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!695, !4838, !174}
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4828, file: !64, line: 427, baseType: !4939, size: 64, offset: 640)
!4939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4940, size: 64)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{null, !4838}
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4828, file: !64, line: 428, baseType: !1430, size: 64, offset: 704)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4828, file: !64, line: 433, baseType: !4944, size: 64, offset: 768)
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{!101, !351, !4838, !4838, !50}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4828, file: !64, line: 435, baseType: !4948, size: 64, offset: 832)
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DISubroutineType(types: !4950)
!4950 = !{!101, !4838}
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4828, file: !64, line: 436, baseType: !4952, size: 64, offset: 896)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!695, !4838, !323, !323}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4828, file: !64, line: 438, baseType: !4956, size: 64, offset: 960)
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{null, !4838, !4959, !4959}
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4828, file: !64, line: 439, baseType: !4961, size: 64, offset: 1024)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!101, !351, !1755}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4828, file: !64, line: 442, baseType: !4965, size: 64, offset: 1088)
!4965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4966, size: 64)
!4966 = !DISubroutineType(types: !4967)
!4967 = !{!101, !4968, !1420, !4970}
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !64, line: 66, flags: DIFlagFwdDecl)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4828, file: !64, line: 444, baseType: !1976, size: 64, offset: 1152)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4828, file: !64, line: 445, baseType: !4973, size: 64, offset: 1216)
!4973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4974, size: 64)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!101, !1433, !1455}
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !64, line: 486, baseType: !177, size: 64, offset: 896)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !352, file: !64, line: 487, baseType: !1236, size: 320, offset: 960)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !352, file: !64, line: 488, baseType: !2019, size: 32, offset: 1280)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !352, file: !64, line: 489, baseType: !207, size: 32, offset: 1312)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !352, file: !64, line: 490, baseType: !182, size: 128, offset: 1344)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !352, file: !64, line: 491, baseType: !176, size: 64, offset: 1472)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !342, file: !303, line: 180, baseType: !4983, size: 64, offset: 320)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!309, !1420, !200, !341, !277, !516, !323}
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !342, file: !303, line: 182, baseType: !4983, size: 64, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !342, file: !303, line: 184, baseType: !4988, size: 64, offset: 448)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!101, !1420, !200, !341, !1494}
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !330, file: !303, line: 90, baseType: !4992, size: 64, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !330, file: !303, line: 91, baseType: !4994, size: 64, offset: 256)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !293, file: !192, line: 120, baseType: !4996, size: 64, offset: 192)
!4996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4997, size: 64)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!2784, !260}
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !293, file: !192, line: 121, baseType: !5000, size: 64, offset: 256)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!1622, !260}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !293, file: !192, line: 122, baseType: !5004, size: 64, offset: 320)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{null, !260, !2316, !2317}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !191, file: !192, line: 70, baseType: !5008, size: 64, offset: 384)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !5010, line: 190, size: 1152, elements: !5011)
!5010 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!5011 = !{!5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5091, !5092, !5093, !5094, !5095, !5098}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5009, file: !5010, line: 191, baseType: !227, size: 32)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5009, file: !5010, line: 192, baseType: !227, size: 32, offset: 32)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5009, file: !5010, line: 202, baseType: !5008, size: 64, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5009, file: !5010, line: 203, baseType: !195, size: 64, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5009, file: !5010, line: 205, baseType: !727, size: 192, align: 64, offset: 192)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5009, file: !5010, line: 207, baseType: !1622, size: 64, offset: 384)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5009, file: !5010, line: 208, baseType: !7, size: 32, offset: 448)
!5019 = !DIDerivedType(tag: DW_TAG_member, scope: !5009, file: !5010, line: 209, baseType: !5020, size: 256, offset: 512)
!5020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5009, file: !5010, line: 209, size: 256, elements: !5021)
!5021 = !{!5022, !5031, !5035}
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5020, file: !5010, line: 210, baseType: !5023, size: 256)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !5010, line: 153, size: 256, elements: !5024)
!5024 = !{!5025, !5026, !5027, !5030}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5023, file: !5010, line: 154, baseType: !177, size: 64)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5023, file: !5010, line: 156, baseType: !2547, size: 64, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5023, file: !5010, line: 162, baseType: !5028, size: 64, offset: 128)
!5028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5029, size: 64)
!5029 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !5010, line: 162, flags: DIFlagFwdDecl)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5023, file: !5010, line: 167, baseType: !177, size: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5020, file: !5010, line: 211, baseType: !5032, size: 64)
!5032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !5010, line: 170, size: 64, elements: !5033)
!5033 = !{!5034}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5032, file: !5010, line: 171, baseType: !5008, size: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5020, file: !5010, line: 212, baseType: !5036, size: 256)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !5010, line: 174, size: 256, elements: !5037)
!5037 = !{!5038, !5086, !5089, !5090}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5036, file: !5010, line: 175, baseType: !5039, size: 64)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5040, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5041)
!5041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !5010, line: 271, size: 768, elements: !5042)
!5042 = !{!5043, !5063, !5067, !5068, !5069, !5070, !5071, !5075, !5076, !5077, !5078, !5082}
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5041, file: !5010, line: 276, baseType: !5044, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!101, !5047}
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !5010, line: 251, size: 1216, elements: !5049)
!5049 = !{!5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062}
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5048, file: !5010, line: 253, baseType: !5008, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5048, file: !5010, line: 254, baseType: !1420, size: 64, offset: 64)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5048, file: !5010, line: 255, baseType: !1075, size: 64, offset: 128)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5048, file: !5010, line: 256, baseType: !176, size: 64, offset: 192)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5048, file: !5010, line: 259, baseType: !615, size: 256, offset: 256)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5048, file: !5010, line: 260, baseType: !615, size: 256, offset: 512)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5048, file: !5010, line: 261, baseType: !101, size: 32, offset: 768)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5048, file: !5010, line: 262, baseType: !182, size: 128, offset: 832)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5048, file: !5010, line: 263, baseType: !277, size: 64, offset: 960)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5048, file: !5010, line: 265, baseType: !323, size: 64, offset: 1024)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5048, file: !5010, line: 266, baseType: !695, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5048, file: !5010, line: 267, baseType: !695, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5048, file: !5010, line: 268, baseType: !1691, size: 64, offset: 1152)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5041, file: !5010, line: 277, baseType: !5064, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{null, !5047}
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5041, file: !5010, line: 290, baseType: !1106, size: 64, offset: 128)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5041, file: !5010, line: 292, baseType: !1093, size: 64, offset: 192)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5041, file: !5010, line: 293, baseType: !1102, size: 64, offset: 256)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5041, file: !5010, line: 294, baseType: !1098, size: 64, offset: 320)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5041, file: !5010, line: 296, baseType: !5072, size: 64, offset: 384)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5073, size: 64)
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!309, !5047, !277, !323, !516}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5041, file: !5010, line: 306, baseType: !323, size: 64, offset: 448)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5041, file: !5010, line: 313, baseType: !695, size: 8, offset: 512)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5041, file: !5010, line: 314, baseType: !5072, size: 64, offset: 576)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5041, file: !5010, line: 317, baseType: !5079, size: 64, offset: 640)
!5079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5080, size: 64)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!1481, !5047, !1483}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5041, file: !5010, line: 320, baseType: !5083, size: 64, offset: 704)
!5083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5084, size: 64)
!5084 = !DISubroutineType(types: !5085)
!5085 = !{!101, !5047, !1494}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5036, file: !5010, line: 176, baseType: !5087, size: 64, offset: 64)
!5087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5088, size: 64)
!5088 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !5010, line: 35, flags: DIFlagFwdDecl)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5036, file: !5010, line: 177, baseType: !516, size: 64, offset: 128)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5036, file: !5010, line: 178, baseType: !5008, size: 64, offset: 192)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5009, file: !5010, line: 215, baseType: !176, size: 64, offset: 768)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5009, file: !5010, line: 221, baseType: !428, size: 64, offset: 832)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5009, file: !5010, line: 223, baseType: !247, size: 16, offset: 896)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5009, file: !5010, line: 224, baseType: !318, size: 16, offset: 912)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5009, file: !5010, line: 225, baseType: !5096, size: 64, offset: 960)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !5010, line: 36, flags: DIFlagFwdDecl)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5009, file: !5010, line: 227, baseType: !835, size: 128, align: 64, offset: 1024)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !191, file: !192, line: 71, baseType: !2853, size: 32, offset: 448)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !191, file: !192, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !191, file: !192, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !191, file: !192, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !191, file: !192, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !191, file: !192, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !187, file: !188, line: 16, baseType: !544, size: 64, offset: 512)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !187, file: !188, line: 17, baseType: !1411, size: 64, offset: 576)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !187, file: !188, line: 18, baseType: !182, size: 128, offset: 640)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !187, file: !188, line: 19, baseType: !511, size: 32, offset: 768)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !187, file: !188, line: 20, baseType: !7, size: 32, offset: 800)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!5112 = !{!5113, !5115, !5118, !5120, !5125, !5127, !5129, !5131, !5133, !5135, !5137, !5139, !5141, !5143, !5145, !5147, !5149, !5154, !0, !5168, !5173, !5178, !5183, !5185, !5190, !5192, !5194, !5199}
!5113 = !DIGlobalVariableExpression(var: !5114, expr: !DIExpression())
!5114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !4046, isLocal: true, isDefinition: true)
!5115 = !DIGlobalVariableExpression(var: !5116, expr: !DIExpression())
!5116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 286, type: !5117, isLocal: true, isDefinition: true)
!5117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 24, elements: !278)
!5118 = !DIGlobalVariableExpression(var: !5119, expr: !DIExpression())
!5119 = distinct !DIGlobalVariable(name: "def_chr_fops", scope: !2, file: !3, line: 452, type: !1412, isLocal: false, isDefinition: true)
!5120 = !DIGlobalVariableExpression(var: !5121, expr: !DIExpression())
!5121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 486, type: !5122, isLocal: true, isDefinition: true)
!5122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 112, elements: !5123)
!5123 = !{!5124}
!5124 = !DISubrange(count: 14)
!5125 = !DIGlobalVariableExpression(var: !5126, expr: !DIExpression())
!5126 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_register_chrdev_region318", scope: !2, file: !3, line: 681, type: !176, isLocal: true, isDefinition: true)
!5127 = !DIGlobalVariableExpression(var: !5128, expr: !DIExpression())
!5128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unregister_chrdev_region319", scope: !2, file: !3, line: 682, type: !176, isLocal: true, isDefinition: true)
!5129 = !DIGlobalVariableExpression(var: !5130, expr: !DIExpression())
!5130 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_alloc_chrdev_region320", scope: !2, file: !3, line: 683, type: !176, isLocal: true, isDefinition: true)
!5131 = !DIGlobalVariableExpression(var: !5132, expr: !DIExpression())
!5132 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cdev_init321", scope: !2, file: !3, line: 684, type: !176, isLocal: true, isDefinition: true)
!5133 = !DIGlobalVariableExpression(var: !5134, expr: !DIExpression())
!5134 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cdev_alloc322", scope: !2, file: !3, line: 685, type: !176, isLocal: true, isDefinition: true)
!5135 = !DIGlobalVariableExpression(var: !5136, expr: !DIExpression())
!5136 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cdev_del323", scope: !2, file: !3, line: 686, type: !176, isLocal: true, isDefinition: true)
!5137 = !DIGlobalVariableExpression(var: !5138, expr: !DIExpression())
!5138 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cdev_add324", scope: !2, file: !3, line: 687, type: !176, isLocal: true, isDefinition: true)
!5139 = !DIGlobalVariableExpression(var: !5140, expr: !DIExpression())
!5140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cdev_set_parent325", scope: !2, file: !3, line: 688, type: !176, isLocal: true, isDefinition: true)
!5141 = !DIGlobalVariableExpression(var: !5142, expr: !DIExpression())
!5142 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cdev_device_add326", scope: !2, file: !3, line: 689, type: !176, isLocal: true, isDefinition: true)
!5143 = !DIGlobalVariableExpression(var: !5144, expr: !DIExpression())
!5144 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_cdev_device_del327", scope: !2, file: !3, line: 690, type: !176, isLocal: true, isDefinition: true)
!5145 = !DIGlobalVariableExpression(var: !5146, expr: !DIExpression())
!5146 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___register_chrdev328", scope: !2, file: !3, line: 691, type: !176, isLocal: true, isDefinition: true)
!5147 = !DIGlobalVariableExpression(var: !5148, expr: !DIExpression())
!5148 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___unregister_chrdev329", scope: !2, file: !3, line: 692, type: !176, isLocal: true, isDefinition: true)
!5149 = !DIGlobalVariableExpression(var: !5150, expr: !DIExpression())
!5150 = distinct !DIGlobalVariable(name: "cdev_map", scope: !2, file: !3, line: 28, type: !5151, isLocal: true, isDefinition: true)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_map", file: !5153, line: 12, flags: DIFlagFwdDecl)
!5153 = !DIFile(filename: "./include/linux/kobj_map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f81881f01cd1ea0e592087515e48327")
!5154 = !DIGlobalVariableExpression(var: !5155, expr: !DIExpression())
!5155 = distinct !DIGlobalVariable(name: "chrdevs", scope: !2, file: !3, line: 41, type: !5156, isLocal: true, isDefinition: true)
!5156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5157, size: 16320, elements: !5166)
!5157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5158, size: 64)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "char_device_struct", file: !3, line: 34, size: 768, elements: !5159)
!5159 = !{!5160, !5161, !5162, !5163, !5164, !5165}
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5158, file: !3, line: 35, baseType: !5157, size: 64)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !5158, file: !3, line: 36, baseType: !7, size: 32, offset: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "baseminor", scope: !5158, file: !3, line: 37, baseType: !7, size: 32, offset: 96)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "minorct", scope: !5158, file: !3, line: 38, baseType: !101, size: 32, offset: 128)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5158, file: !3, line: 39, baseType: !2901, size: 512, offset: 160)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !5158, file: !3, line: 40, baseType: !186, size: 64, offset: 704)
!5166 = !{!5167}
!5167 = !DISubrange(count: 255)
!5168 = !DIGlobalVariableExpression(var: !5169, expr: !DIExpression())
!5169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !5170, isLocal: true, isDefinition: true)
!5170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 552, elements: !5171)
!5171 = !{!5172}
!5172 = !DISubrange(count: 69)
!5173 = !DIGlobalVariableExpression(var: !5174, expr: !DIExpression())
!5174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !5175, isLocal: true, isDefinition: true)
!5175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 840, elements: !5176)
!5176 = !{!5177}
!5177 = !DISubrange(count: 105)
!5178 = !DIGlobalVariableExpression(var: !5179, expr: !DIExpression())
!5179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !5180, isLocal: true, isDefinition: true)
!5180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 392, elements: !5181)
!5181 = !{!5182}
!5182 = !DISubrange(count: 49)
!5183 = !DIGlobalVariableExpression(var: !5184, expr: !DIExpression())
!5184 = distinct !DIGlobalVariable(name: "cdev_lock", scope: !2, file: !3, line: 346, type: !207, isLocal: true, isDefinition: true)
!5185 = !DIGlobalVariableExpression(var: !5186, expr: !DIExpression())
!5186 = distinct !DIGlobalVariable(scope: null, file: !164, line: 480, type: !5187, isLocal: true, isDefinition: true)
!5187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 168, elements: !5188)
!5188 = !{!5189}
!5189 = !DISubrange(count: 21)
!5190 = !DIGlobalVariableExpression(var: !5191, expr: !DIExpression())
!5191 = distinct !DIGlobalVariable(name: "ktype_cdev_dynamic", scope: !2, file: !3, line: 631, type: !293, isLocal: true, isDefinition: true)
!5192 = !DIGlobalVariableExpression(var: !5193, expr: !DIExpression())
!5193 = distinct !DIGlobalVariable(name: "ktype_cdev_default", scope: !2, file: !3, line: 627, type: !293, isLocal: true, isDefinition: true)
!5194 = !DIGlobalVariableExpression(var: !5195, expr: !DIExpression())
!5195 = distinct !DIGlobalVariable(scope: null, file: !3, line: 668, type: !5196, isLocal: true, isDefinition: true)
!5196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 136, elements: !5197)
!5197 = !{!5198}
!5198 = !DISubrange(count: 17)
!5199 = !DIGlobalVariableExpression(var: !5200, expr: !DIExpression())
!5200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 670, type: !5122, isLocal: true, isDefinition: true)
!5201 = !{i32 7, !"Dwarf Version", i32 5}
!5202 = !{i32 2, !"Debug Info Version", i32 3}
!5203 = !{i32 1, !"wchar_size", i32 2}
!5204 = !{i32 8, !"cf-protection-branch", i32 1}
!5205 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5206 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5207 = !{i32 1, !"Code Model", i32 2}
!5208 = !{i32 1, !"override-stack-alignment", i32 8}
!5209 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5210 = distinct !DISubprogram(name: "chrdev_show", scope: !3, file: !3, line: 51, type: !5211, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5215)
!5211 = !DISubroutineType(types: !5212)
!5212 = !{null, !1075, !5213}
!5213 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !175, line: 26, baseType: !5214)
!5214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_off_t", file: !311, line: 87, baseType: !312)
!5215 = !{!5216, !5217, !5218}
!5216 = !DILocalVariable(name: "f", arg: 1, scope: !5210, file: !3, line: 51, type: !1075)
!5217 = !DILocalVariable(name: "offset", arg: 2, scope: !5210, file: !3, line: 51, type: !5213)
!5218 = !DILocalVariable(name: "cd", scope: !5210, file: !3, line: 53, type: !5157)
!5219 = !DILocation(line: 51, column: 35, scope: !5210)
!5220 = !DILocation(line: 51, column: 44, scope: !5210)
!5221 = !DILocation(line: 53, column: 2, scope: !5210)
!5222 = !DILocation(line: 53, column: 29, scope: !5210)
!5223 = !DILocation(line: 55, column: 2, scope: !5210)
!5224 = !DILocation(line: 56, column: 35, scope: !5225)
!5225 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 56, column: 2)
!5226 = !DILocation(line: 56, column: 20, scope: !5225)
!5227 = !DILocation(line: 56, column: 12, scope: !5225)
!5228 = !DILocation(line: 56, column: 10, scope: !5225)
!5229 = !DILocation(line: 56, column: 7, scope: !5225)
!5230 = !DILocation(line: 56, column: 45, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5225, file: !3, line: 56, column: 2)
!5232 = !DILocation(line: 56, column: 2, scope: !5225)
!5233 = !DILocation(line: 57, column: 7, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5235, file: !3, line: 57, column: 7)
!5235 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 56, column: 64)
!5236 = !DILocation(line: 57, column: 11, scope: !5234)
!5237 = !DILocation(line: 57, column: 20, scope: !5234)
!5238 = !DILocation(line: 57, column: 17, scope: !5234)
!5239 = !DILocation(line: 57, column: 7, scope: !5235)
!5240 = !DILocation(line: 58, column: 15, scope: !5234)
!5241 = !DILocation(line: 58, column: 30, scope: !5234)
!5242 = !DILocation(line: 58, column: 34, scope: !5234)
!5243 = !DILocation(line: 58, column: 41, scope: !5234)
!5244 = !DILocation(line: 58, column: 45, scope: !5234)
!5245 = !DILocation(line: 58, column: 4, scope: !5234)
!5246 = !DILocation(line: 59, column: 2, scope: !5235)
!5247 = !DILocation(line: 56, column: 54, scope: !5231)
!5248 = !DILocation(line: 56, column: 58, scope: !5231)
!5249 = !DILocation(line: 56, column: 52, scope: !5231)
!5250 = !DILocation(line: 56, column: 2, scope: !5231)
!5251 = distinct !{!5251, !5232, !5252, !5253, !5254}
!5252 = !DILocation(line: 59, column: 2, scope: !5225)
!5253 = !{!"llvm.loop.mustprogress"}
!5254 = !{!"llvm.loop.unroll.disable"}
!5255 = !DILocation(line: 60, column: 2, scope: !5210)
!5256 = !DILocation(line: 61, column: 1, scope: !5210)
!5257 = !DISubprogram(name: "mutex_lock", scope: !616, file: !616, line: 227, type: !5258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{null, !5260}
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!5261 = distinct !DISubprogram(name: "major_to_index", scope: !3, file: !3, line: 44, type: !5262, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5264)
!5262 = !DISubroutineType(types: !5263)
!5263 = !{!101, !7}
!5264 = !{!5265}
!5265 = !DILocalVariable(name: "major", arg: 1, scope: !5261, file: !3, line: 44, type: !7)
!5266 = !DILocation(line: 44, column: 43, scope: !5261)
!5267 = !DILocation(line: 46, column: 9, scope: !5261)
!5268 = !DILocation(line: 46, column: 15, scope: !5261)
!5269 = !DILocation(line: 46, column: 2, scope: !5261)
!5270 = !DISubprogram(name: "seq_printf", scope: !1077, file: !1077, line: 119, type: !5271, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{null, !1075, !195, null}
!5273 = !DISubprogram(name: "mutex_unlock", scope: !616, file: !616, line: 246, type: !5258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5274 = distinct !DISubprogram(name: "register_chrdev_region", scope: !3, file: !3, line: 200, type: !5275, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!101, !511, !7, !195}
!5277 = !{!5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285}
!5278 = !DILocalVariable(name: "from", arg: 1, scope: !5274, file: !3, line: 200, type: !511)
!5279 = !DILocalVariable(name: "count", arg: 2, scope: !5274, file: !3, line: 200, type: !7)
!5280 = !DILocalVariable(name: "name", arg: 3, scope: !5274, file: !3, line: 200, type: !195)
!5281 = !DILocalVariable(name: "cd", scope: !5274, file: !3, line: 202, type: !5157)
!5282 = !DILocalVariable(name: "to", scope: !5274, file: !3, line: 203, type: !511)
!5283 = !DILocalVariable(name: "n", scope: !5274, file: !3, line: 204, type: !511)
!5284 = !DILocalVariable(name: "next", scope: !5274, file: !3, line: 204, type: !511)
!5285 = !DILabel(scope: !5274, name: "fail", file: !3, line: 216)
!5286 = !DILocation(line: 200, column: 34, scope: !5274)
!5287 = !DILocation(line: 200, column: 49, scope: !5274)
!5288 = !DILocation(line: 200, column: 68, scope: !5274)
!5289 = !DILocation(line: 202, column: 2, scope: !5274)
!5290 = !DILocation(line: 202, column: 29, scope: !5274)
!5291 = !DILocation(line: 203, column: 2, scope: !5274)
!5292 = !DILocation(line: 203, column: 8, scope: !5274)
!5293 = !DILocation(line: 203, column: 13, scope: !5274)
!5294 = !DILocation(line: 203, column: 20, scope: !5274)
!5295 = !DILocation(line: 203, column: 18, scope: !5274)
!5296 = !DILocation(line: 204, column: 2, scope: !5274)
!5297 = !DILocation(line: 204, column: 8, scope: !5274)
!5298 = !DILocation(line: 204, column: 11, scope: !5274)
!5299 = !DILocation(line: 206, column: 11, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 206, column: 2)
!5301 = !DILocation(line: 206, column: 9, scope: !5300)
!5302 = !DILocation(line: 206, column: 7, scope: !5300)
!5303 = !DILocation(line: 206, column: 17, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 206, column: 2)
!5305 = !DILocation(line: 206, column: 21, scope: !5304)
!5306 = !DILocation(line: 206, column: 19, scope: !5304)
!5307 = !DILocation(line: 206, column: 2, scope: !5300)
!5308 = !DILocation(line: 207, column: 10, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 206, column: 35)
!5310 = !DILocation(line: 207, column: 8, scope: !5309)
!5311 = !DILocation(line: 208, column: 7, scope: !5312)
!5312 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 208, column: 7)
!5313 = !DILocation(line: 208, column: 14, scope: !5312)
!5314 = !DILocation(line: 208, column: 12, scope: !5312)
!5315 = !DILocation(line: 208, column: 7, scope: !5309)
!5316 = !DILocation(line: 209, column: 11, scope: !5312)
!5317 = !DILocation(line: 209, column: 9, scope: !5312)
!5318 = !DILocation(line: 209, column: 4, scope: !5312)
!5319 = !DILocation(line: 210, column: 33, scope: !5309)
!5320 = !DILocation(line: 210, column: 43, scope: !5309)
!5321 = !DILocation(line: 211, column: 11, scope: !5309)
!5322 = !DILocation(line: 211, column: 18, scope: !5309)
!5323 = !DILocation(line: 211, column: 16, scope: !5309)
!5324 = !DILocation(line: 211, column: 21, scope: !5309)
!5325 = !DILocation(line: 210, column: 8, scope: !5309)
!5326 = !DILocation(line: 210, column: 6, scope: !5309)
!5327 = !DILocation(line: 212, column: 14, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 212, column: 7)
!5329 = !DILocation(line: 212, column: 7, scope: !5328)
!5330 = !DILocation(line: 212, column: 7, scope: !5309)
!5331 = !DILocation(line: 213, column: 4, scope: !5328)
!5332 = !DILocation(line: 214, column: 2, scope: !5309)
!5333 = !DILocation(line: 206, column: 29, scope: !5304)
!5334 = !DILocation(line: 206, column: 27, scope: !5304)
!5335 = !DILocation(line: 206, column: 2, scope: !5304)
!5336 = distinct !{!5336, !5307, !5337, !5253, !5254}
!5337 = !DILocation(line: 214, column: 2, scope: !5300)
!5338 = !DILocation(line: 215, column: 2, scope: !5274)
!5339 = !DILocation(line: 216, column: 1, scope: !5274)
!5340 = !DILocation(line: 217, column: 7, scope: !5274)
!5341 = !DILocation(line: 217, column: 5, scope: !5274)
!5342 = !DILocation(line: 218, column: 11, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5274, file: !3, line: 218, column: 2)
!5344 = !DILocation(line: 218, column: 9, scope: !5343)
!5345 = !DILocation(line: 218, column: 7, scope: !5343)
!5346 = !DILocation(line: 218, column: 17, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 218, column: 2)
!5348 = !DILocation(line: 218, column: 21, scope: !5347)
!5349 = !DILocation(line: 218, column: 19, scope: !5347)
!5350 = !DILocation(line: 218, column: 2, scope: !5343)
!5351 = !DILocation(line: 219, column: 10, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5347, file: !3, line: 218, column: 35)
!5353 = !DILocation(line: 219, column: 8, scope: !5352)
!5354 = !DILocation(line: 220, column: 36, scope: !5352)
!5355 = !DILocation(line: 220, column: 46, scope: !5352)
!5356 = !DILocation(line: 220, column: 56, scope: !5352)
!5357 = !DILocation(line: 220, column: 63, scope: !5352)
!5358 = !DILocation(line: 220, column: 61, scope: !5352)
!5359 = !DILocation(line: 220, column: 9, scope: !5352)
!5360 = !DILocation(line: 220, column: 3, scope: !5352)
!5361 = !DILocation(line: 221, column: 2, scope: !5352)
!5362 = !DILocation(line: 218, column: 29, scope: !5347)
!5363 = !DILocation(line: 218, column: 27, scope: !5347)
!5364 = !DILocation(line: 218, column: 2, scope: !5347)
!5365 = distinct !{!5365, !5350, !5366, !5253, !5254}
!5366 = !DILocation(line: 221, column: 2, scope: !5343)
!5367 = !DILocation(line: 222, column: 17, scope: !5274)
!5368 = !DILocation(line: 222, column: 9, scope: !5274)
!5369 = !DILocation(line: 222, column: 2, scope: !5274)
!5370 = !DILocation(line: 223, column: 1, scope: !5274)
!5371 = distinct !DISubprogram(name: "__register_chrdev_region", scope: !3, file: !3, line: 97, type: !5372, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5374)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!5157, !7, !7, !101, !195}
!5374 = !{!5375, !5376, !5377, !5378, !5379, !5380, !5381, !5382, !5383, !5384}
!5375 = !DILocalVariable(name: "major", arg: 1, scope: !5371, file: !3, line: 97, type: !7)
!5376 = !DILocalVariable(name: "baseminor", arg: 2, scope: !5371, file: !3, line: 97, type: !7)
!5377 = !DILocalVariable(name: "minorct", arg: 3, scope: !5371, file: !3, line: 98, type: !101)
!5378 = !DILocalVariable(name: "name", arg: 4, scope: !5371, file: !3, line: 98, type: !195)
!5379 = !DILocalVariable(name: "cd", scope: !5371, file: !3, line: 100, type: !5157)
!5380 = !DILocalVariable(name: "curr", scope: !5371, file: !3, line: 100, type: !5157)
!5381 = !DILocalVariable(name: "prev", scope: !5371, file: !3, line: 100, type: !5157)
!5382 = !DILocalVariable(name: "ret", scope: !5371, file: !3, line: 101, type: !101)
!5383 = !DILocalVariable(name: "i", scope: !5371, file: !3, line: 102, type: !101)
!5384 = !DILabel(scope: !5371, name: "out", file: !3, line: 165)
!5385 = !DILocation(line: 97, column: 39, scope: !5371)
!5386 = !DILocation(line: 97, column: 59, scope: !5371)
!5387 = !DILocation(line: 98, column: 11, scope: !5371)
!5388 = !DILocation(line: 98, column: 32, scope: !5371)
!5389 = !DILocation(line: 100, column: 2, scope: !5371)
!5390 = !DILocation(line: 100, column: 29, scope: !5371)
!5391 = !DILocation(line: 100, column: 34, scope: !5371)
!5392 = !DILocation(line: 100, column: 41, scope: !5371)
!5393 = !DILocation(line: 101, column: 2, scope: !5371)
!5394 = !DILocation(line: 101, column: 6, scope: !5371)
!5395 = !DILocation(line: 102, column: 2, scope: !5371)
!5396 = !DILocation(line: 102, column: 6, scope: !5371)
!5397 = !DILocation(line: 104, column: 6, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 104, column: 6)
!5399 = !DILocation(line: 104, column: 12, scope: !5398)
!5400 = !DILocation(line: 104, column: 6, scope: !5371)
!5401 = !DILocation(line: 105, column: 3, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5403, file: !3, line: 105, column: 3)
!5403 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 104, column: 33)
!5404 = !DILocation(line: 105, column: 3, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 105, column: 3)
!5406 = !DILocation(line: 107, column: 10, scope: !5403)
!5407 = !DILocation(line: 107, column: 3, scope: !5403)
!5408 = !DILocation(line: 110, column: 6, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 110, column: 6)
!5410 = !DILocation(line: 110, column: 32, scope: !5409)
!5411 = !DILocation(line: 110, column: 30, scope: !5409)
!5412 = !DILocation(line: 110, column: 14, scope: !5409)
!5413 = !DILocation(line: 110, column: 6, scope: !5371)
!5414 = !DILocation(line: 111, column: 3, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 111, column: 3)
!5416 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 110, column: 43)
!5417 = !DILocation(line: 111, column: 3, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5415, file: !3, line: 111, column: 3)
!5419 = !DILocation(line: 113, column: 10, scope: !5416)
!5420 = !DILocation(line: 113, column: 3, scope: !5416)
!5421 = !DILocation(line: 116, column: 7, scope: !5371)
!5422 = !DILocation(line: 116, column: 5, scope: !5371)
!5423 = !DILocation(line: 117, column: 6, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 117, column: 6)
!5425 = !DILocation(line: 117, column: 9, scope: !5424)
!5426 = !DILocation(line: 117, column: 6, scope: !5371)
!5427 = !DILocation(line: 118, column: 10, scope: !5424)
!5428 = !DILocation(line: 118, column: 3, scope: !5424)
!5429 = !DILocation(line: 120, column: 2, scope: !5371)
!5430 = !DILocation(line: 122, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 122, column: 6)
!5432 = !DILocation(line: 122, column: 12, scope: !5431)
!5433 = !DILocation(line: 122, column: 6, scope: !5371)
!5434 = !DILocation(line: 123, column: 9, scope: !5435)
!5435 = distinct !DILexicalBlock(scope: !5431, file: !3, line: 122, column: 18)
!5436 = !DILocation(line: 123, column: 7, scope: !5435)
!5437 = !DILocation(line: 124, column: 7, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 124, column: 7)
!5439 = !DILocation(line: 124, column: 11, scope: !5438)
!5440 = !DILocation(line: 124, column: 7, scope: !5435)
!5441 = !DILocation(line: 125, column: 4, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5443, file: !3, line: 125, column: 4)
!5443 = distinct !DILexicalBlock(scope: !5438, file: !3, line: 124, column: 16)
!5444 = !DILocation(line: 125, column: 4, scope: !5445)
!5445 = distinct !DILexicalBlock(scope: !5442, file: !3, line: 125, column: 4)
!5446 = !DILocation(line: 127, column: 4, scope: !5443)
!5447 = !DILocation(line: 129, column: 11, scope: !5435)
!5448 = !DILocation(line: 129, column: 9, scope: !5435)
!5449 = !DILocation(line: 130, column: 2, scope: !5435)
!5450 = !DILocation(line: 132, column: 6, scope: !5371)
!5451 = !DILocation(line: 133, column: 21, scope: !5371)
!5452 = !DILocation(line: 133, column: 6, scope: !5371)
!5453 = !DILocation(line: 133, column: 4, scope: !5371)
!5454 = !DILocation(line: 134, column: 22, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 134, column: 2)
!5456 = !DILocation(line: 134, column: 14, scope: !5455)
!5457 = !DILocation(line: 134, column: 12, scope: !5455)
!5458 = !DILocation(line: 134, column: 7, scope: !5455)
!5459 = !DILocation(line: 134, column: 26, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 134, column: 2)
!5461 = !DILocation(line: 134, column: 2, scope: !5455)
!5462 = !DILocation(line: 135, column: 7, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 135, column: 7)
!5464 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 134, column: 64)
!5465 = !DILocation(line: 135, column: 13, scope: !5463)
!5466 = !DILocation(line: 135, column: 21, scope: !5463)
!5467 = !DILocation(line: 135, column: 19, scope: !5463)
!5468 = !DILocation(line: 135, column: 7, scope: !5464)
!5469 = !DILocation(line: 136, column: 4, scope: !5463)
!5470 = !DILocation(line: 138, column: 7, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 138, column: 7)
!5472 = !DILocation(line: 138, column: 13, scope: !5471)
!5473 = !DILocation(line: 138, column: 21, scope: !5471)
!5474 = !DILocation(line: 138, column: 19, scope: !5471)
!5475 = !DILocation(line: 138, column: 7, scope: !5464)
!5476 = !DILocation(line: 139, column: 4, scope: !5471)
!5477 = !DILocation(line: 141, column: 7, scope: !5478)
!5478 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 141, column: 7)
!5479 = !DILocation(line: 141, column: 13, scope: !5478)
!5480 = !DILocation(line: 141, column: 25, scope: !5478)
!5481 = !DILocation(line: 141, column: 31, scope: !5478)
!5482 = !DILocation(line: 141, column: 23, scope: !5478)
!5483 = !DILocation(line: 141, column: 42, scope: !5478)
!5484 = !DILocation(line: 141, column: 39, scope: !5478)
!5485 = !DILocation(line: 141, column: 7, scope: !5464)
!5486 = !DILocation(line: 142, column: 4, scope: !5478)
!5487 = !DILocation(line: 144, column: 7, scope: !5488)
!5488 = distinct !DILexicalBlock(scope: !5464, file: !3, line: 144, column: 7)
!5489 = !DILocation(line: 144, column: 13, scope: !5488)
!5490 = !DILocation(line: 144, column: 26, scope: !5488)
!5491 = !DILocation(line: 144, column: 38, scope: !5488)
!5492 = !DILocation(line: 144, column: 36, scope: !5488)
!5493 = !DILocation(line: 144, column: 23, scope: !5488)
!5494 = !DILocation(line: 144, column: 7, scope: !5464)
!5495 = !DILocation(line: 145, column: 4, scope: !5488)
!5496 = !DILocation(line: 147, column: 3, scope: !5464)
!5497 = !DILocation(line: 134, column: 39, scope: !5460)
!5498 = !DILocation(line: 134, column: 37, scope: !5460)
!5499 = !DILocation(line: 134, column: 52, scope: !5460)
!5500 = !DILocation(line: 134, column: 58, scope: !5460)
!5501 = !DILocation(line: 134, column: 50, scope: !5460)
!5502 = !DILocation(line: 134, column: 2, scope: !5460)
!5503 = distinct !{!5503, !5461, !5504, !5253, !5254}
!5504 = !DILocation(line: 148, column: 2, scope: !5455)
!5505 = !DILocation(line: 150, column: 14, scope: !5371)
!5506 = !DILocation(line: 150, column: 2, scope: !5371)
!5507 = !DILocation(line: 150, column: 6, scope: !5371)
!5508 = !DILocation(line: 150, column: 12, scope: !5371)
!5509 = !DILocation(line: 151, column: 18, scope: !5371)
!5510 = !DILocation(line: 151, column: 2, scope: !5371)
!5511 = !DILocation(line: 151, column: 6, scope: !5371)
!5512 = !DILocation(line: 151, column: 16, scope: !5371)
!5513 = !DILocation(line: 152, column: 16, scope: !5371)
!5514 = !DILocation(line: 152, column: 2, scope: !5371)
!5515 = !DILocation(line: 152, column: 6, scope: !5371)
!5516 = !DILocation(line: 152, column: 14, scope: !5371)
!5517 = !DILocation(line: 153, column: 10, scope: !5371)
!5518 = !DILocation(line: 153, column: 14, scope: !5371)
!5519 = !DILocation(line: 153, column: 20, scope: !5371)
!5520 = !DILocation(line: 153, column: 2, scope: !5371)
!5521 = !DILocation(line: 155, column: 7, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 155, column: 6)
!5523 = !DILocation(line: 155, column: 6, scope: !5371)
!5524 = !DILocation(line: 156, column: 14, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 155, column: 13)
!5526 = !DILocation(line: 156, column: 3, scope: !5525)
!5527 = !DILocation(line: 156, column: 7, scope: !5525)
!5528 = !DILocation(line: 156, column: 12, scope: !5525)
!5529 = !DILocation(line: 157, column: 16, scope: !5525)
!5530 = !DILocation(line: 157, column: 11, scope: !5525)
!5531 = !DILocation(line: 157, column: 3, scope: !5525)
!5532 = !DILocation(line: 157, column: 14, scope: !5525)
!5533 = !DILocation(line: 158, column: 2, scope: !5525)
!5534 = !DILocation(line: 159, column: 14, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 158, column: 9)
!5536 = !DILocation(line: 159, column: 20, scope: !5535)
!5537 = !DILocation(line: 159, column: 3, scope: !5535)
!5538 = !DILocation(line: 159, column: 7, scope: !5535)
!5539 = !DILocation(line: 159, column: 12, scope: !5535)
!5540 = !DILocation(line: 160, column: 16, scope: !5535)
!5541 = !DILocation(line: 160, column: 3, scope: !5535)
!5542 = !DILocation(line: 160, column: 9, scope: !5535)
!5543 = !DILocation(line: 160, column: 14, scope: !5535)
!5544 = !DILocation(line: 163, column: 2, scope: !5371)
!5545 = !DILocation(line: 164, column: 9, scope: !5371)
!5546 = !DILocation(line: 164, column: 2, scope: !5371)
!5547 = !DILocation(line: 165, column: 1, scope: !5371)
!5548 = !DILocation(line: 166, column: 2, scope: !5371)
!5549 = !DILocation(line: 167, column: 8, scope: !5371)
!5550 = !DILocation(line: 167, column: 2, scope: !5371)
!5551 = !DILocation(line: 168, column: 17, scope: !5371)
!5552 = !DILocation(line: 168, column: 9, scope: !5371)
!5553 = !DILocation(line: 168, column: 2, scope: !5371)
!5554 = !DILocation(line: 169, column: 1, scope: !5371)
!5555 = distinct !DISubprogram(name: "IS_ERR", scope: !5556, file: !5556, line: 59, type: !5557, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5559)
!5556 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5557 = !DISubroutineType(types: !5558)
!5558 = !{!695, !1622}
!5559 = !{!5560}
!5560 = !DILocalVariable(name: "ptr", arg: 1, scope: !5555, file: !5556, line: 59, type: !1622)
!5561 = !DILocation(line: 59, column: 60, scope: !5555)
!5562 = !DILocation(line: 61, column: 9, scope: !5555)
!5563 = !DILocation(line: 61, column: 2, scope: !5555)
!5564 = !DISubprogram(name: "kfree", scope: !164, file: !164, line: 227, type: !5565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{null, !1622}
!5567 = distinct !DISubprogram(name: "__unregister_chrdev_region", scope: !3, file: !3, line: 172, type: !5568, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5570)
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!5157, !7, !7, !101}
!5570 = !{!5571, !5572, !5573, !5574, !5575, !5577}
!5571 = !DILocalVariable(name: "major", arg: 1, scope: !5567, file: !3, line: 172, type: !7)
!5572 = !DILocalVariable(name: "baseminor", arg: 2, scope: !5567, file: !3, line: 172, type: !7)
!5573 = !DILocalVariable(name: "minorct", arg: 3, scope: !5567, file: !3, line: 172, type: !101)
!5574 = !DILocalVariable(name: "cd", scope: !5567, file: !3, line: 174, type: !5157)
!5575 = !DILocalVariable(name: "cp", scope: !5567, file: !3, line: 174, type: !5576)
!5576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5577 = !DILocalVariable(name: "i", scope: !5567, file: !3, line: 175, type: !101)
!5578 = !DILocation(line: 172, column: 37, scope: !5567)
!5579 = !DILocation(line: 172, column: 53, scope: !5567)
!5580 = !DILocation(line: 172, column: 68, scope: !5567)
!5581 = !DILocation(line: 174, column: 2, scope: !5567)
!5582 = !DILocation(line: 174, column: 29, scope: !5567)
!5583 = !DILocation(line: 174, column: 42, scope: !5567)
!5584 = !DILocation(line: 175, column: 2, scope: !5567)
!5585 = !DILocation(line: 175, column: 6, scope: !5567)
!5586 = !DILocation(line: 175, column: 25, scope: !5567)
!5587 = !DILocation(line: 175, column: 10, scope: !5567)
!5588 = !DILocation(line: 177, column: 2, scope: !5567)
!5589 = !DILocation(line: 178, column: 21, scope: !5590)
!5590 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 178, column: 2)
!5591 = !DILocation(line: 178, column: 13, scope: !5590)
!5592 = !DILocation(line: 178, column: 10, scope: !5590)
!5593 = !DILocation(line: 178, column: 7, scope: !5590)
!5594 = !DILocation(line: 178, column: 26, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5590, file: !3, line: 178, column: 2)
!5596 = !DILocation(line: 178, column: 25, scope: !5595)
!5597 = !DILocation(line: 178, column: 2, scope: !5590)
!5598 = !DILocation(line: 179, column: 9, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 179, column: 7)
!5600 = !DILocation(line: 179, column: 8, scope: !5599)
!5601 = !DILocation(line: 179, column: 14, scope: !5599)
!5602 = !DILocation(line: 179, column: 23, scope: !5599)
!5603 = !DILocation(line: 179, column: 20, scope: !5599)
!5604 = !DILocation(line: 179, column: 29, scope: !5599)
!5605 = !DILocation(line: 180, column: 9, scope: !5599)
!5606 = !DILocation(line: 180, column: 8, scope: !5599)
!5607 = !DILocation(line: 180, column: 14, scope: !5599)
!5608 = !DILocation(line: 180, column: 27, scope: !5599)
!5609 = !DILocation(line: 180, column: 24, scope: !5599)
!5610 = !DILocation(line: 180, column: 37, scope: !5599)
!5611 = !DILocation(line: 181, column: 9, scope: !5599)
!5612 = !DILocation(line: 181, column: 8, scope: !5599)
!5613 = !DILocation(line: 181, column: 14, scope: !5599)
!5614 = !DILocation(line: 181, column: 25, scope: !5599)
!5615 = !DILocation(line: 181, column: 22, scope: !5599)
!5616 = !DILocation(line: 179, column: 7, scope: !5595)
!5617 = !DILocation(line: 182, column: 4, scope: !5599)
!5618 = !DILocation(line: 178, column: 38, scope: !5595)
!5619 = !DILocation(line: 178, column: 37, scope: !5595)
!5620 = !DILocation(line: 178, column: 43, scope: !5595)
!5621 = !DILocation(line: 178, column: 33, scope: !5595)
!5622 = !DILocation(line: 178, column: 2, scope: !5595)
!5623 = distinct !{!5623, !5597, !5624, !5253, !5254}
!5624 = !DILocation(line: 182, column: 4, scope: !5590)
!5625 = !DILocation(line: 183, column: 7, scope: !5626)
!5626 = distinct !DILexicalBlock(scope: !5567, file: !3, line: 183, column: 6)
!5627 = !DILocation(line: 183, column: 6, scope: !5626)
!5628 = !DILocation(line: 183, column: 6, scope: !5567)
!5629 = !DILocation(line: 184, column: 9, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5626, file: !3, line: 183, column: 11)
!5631 = !DILocation(line: 184, column: 8, scope: !5630)
!5632 = !DILocation(line: 184, column: 6, scope: !5630)
!5633 = !DILocation(line: 185, column: 9, scope: !5630)
!5634 = !DILocation(line: 185, column: 13, scope: !5630)
!5635 = !DILocation(line: 185, column: 4, scope: !5630)
!5636 = !DILocation(line: 185, column: 7, scope: !5630)
!5637 = !DILocation(line: 186, column: 2, scope: !5630)
!5638 = !DILocation(line: 187, column: 2, scope: !5567)
!5639 = !DILocation(line: 188, column: 9, scope: !5567)
!5640 = !DILocation(line: 189, column: 1, scope: !5567)
!5641 = !DILocation(line: 188, column: 2, scope: !5567)
!5642 = distinct !DISubprogram(name: "PTR_ERR", scope: !5556, file: !5556, line: 49, type: !5643, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5645)
!5643 = !DISubroutineType(types: !5644)
!5644 = !{!178, !1622}
!5645 = !{!5646}
!5646 = !DILocalVariable(name: "ptr", arg: 1, scope: !5642, file: !5556, line: 49, type: !1622)
!5647 = !DILocation(line: 49, column: 61, scope: !5642)
!5648 = !DILocation(line: 51, column: 16, scope: !5642)
!5649 = !DILocation(line: 51, column: 9, scope: !5642)
!5650 = !DILocation(line: 51, column: 2, scope: !5642)
!5651 = distinct !DISubprogram(name: "alloc_chrdev_region", scope: !3, file: !3, line: 236, type: !5652, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5655)
!5652 = !DISubroutineType(types: !5653)
!5653 = !{!101, !5654, !7, !7, !195}
!5654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!5655 = !{!5656, !5657, !5658, !5659, !5660}
!5656 = !DILocalVariable(name: "dev", arg: 1, scope: !5651, file: !3, line: 236, type: !5654)
!5657 = !DILocalVariable(name: "baseminor", arg: 2, scope: !5651, file: !3, line: 236, type: !7)
!5658 = !DILocalVariable(name: "count", arg: 3, scope: !5651, file: !3, line: 236, type: !7)
!5659 = !DILocalVariable(name: "name", arg: 4, scope: !5651, file: !3, line: 237, type: !195)
!5660 = !DILocalVariable(name: "cd", scope: !5651, file: !3, line: 239, type: !5157)
!5661 = !DILocation(line: 236, column: 32, scope: !5651)
!5662 = !DILocation(line: 236, column: 46, scope: !5651)
!5663 = !DILocation(line: 236, column: 66, scope: !5651)
!5664 = !DILocation(line: 237, column: 16, scope: !5651)
!5665 = !DILocation(line: 239, column: 2, scope: !5651)
!5666 = !DILocation(line: 239, column: 29, scope: !5651)
!5667 = !DILocation(line: 240, column: 35, scope: !5651)
!5668 = !DILocation(line: 240, column: 46, scope: !5651)
!5669 = !DILocation(line: 240, column: 53, scope: !5651)
!5670 = !DILocation(line: 240, column: 7, scope: !5651)
!5671 = !DILocation(line: 240, column: 5, scope: !5651)
!5672 = !DILocation(line: 241, column: 13, scope: !5673)
!5673 = distinct !DILexicalBlock(scope: !5651, file: !3, line: 241, column: 6)
!5674 = !DILocation(line: 241, column: 6, scope: !5673)
!5675 = !DILocation(line: 241, column: 6, scope: !5651)
!5676 = !DILocation(line: 242, column: 18, scope: !5673)
!5677 = !DILocation(line: 242, column: 10, scope: !5673)
!5678 = !DILocation(line: 242, column: 3, scope: !5673)
!5679 = !DILocation(line: 243, column: 9, scope: !5651)
!5680 = !DILocation(line: 243, column: 3, scope: !5651)
!5681 = !DILocation(line: 243, column: 7, scope: !5651)
!5682 = !DILocation(line: 244, column: 2, scope: !5651)
!5683 = !DILocation(line: 245, column: 1, scope: !5651)
!5684 = distinct !DISubprogram(name: "__register_chrdev", scope: !3, file: !3, line: 268, type: !5685, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5687)
!5685 = !DISubroutineType(types: !5686)
!5686 = !{!101, !7, !7, !7, !195, !1411}
!5687 = !{!5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697}
!5688 = !DILocalVariable(name: "major", arg: 1, scope: !5684, file: !3, line: 268, type: !7)
!5689 = !DILocalVariable(name: "baseminor", arg: 2, scope: !5684, file: !3, line: 268, type: !7)
!5690 = !DILocalVariable(name: "count", arg: 3, scope: !5684, file: !3, line: 269, type: !7)
!5691 = !DILocalVariable(name: "name", arg: 4, scope: !5684, file: !3, line: 269, type: !195)
!5692 = !DILocalVariable(name: "fops", arg: 5, scope: !5684, file: !3, line: 270, type: !1411)
!5693 = !DILocalVariable(name: "cd", scope: !5684, file: !3, line: 272, type: !5157)
!5694 = !DILocalVariable(name: "cdev", scope: !5684, file: !3, line: 273, type: !186)
!5695 = !DILocalVariable(name: "err", scope: !5684, file: !3, line: 274, type: !101)
!5696 = !DILabel(scope: !5684, name: "out", file: !3, line: 295)
!5697 = !DILabel(scope: !5684, name: "out2", file: !3, line: 297)
!5698 = !DILocation(line: 268, column: 36, scope: !5684)
!5699 = !DILocation(line: 268, column: 56, scope: !5684)
!5700 = !DILocation(line: 269, column: 22, scope: !5684)
!5701 = !DILocation(line: 269, column: 41, scope: !5684)
!5702 = !DILocation(line: 270, column: 39, scope: !5684)
!5703 = !DILocation(line: 272, column: 2, scope: !5684)
!5704 = !DILocation(line: 272, column: 29, scope: !5684)
!5705 = !DILocation(line: 273, column: 2, scope: !5684)
!5706 = !DILocation(line: 273, column: 15, scope: !5684)
!5707 = !DILocation(line: 274, column: 2, scope: !5684)
!5708 = !DILocation(line: 274, column: 6, scope: !5684)
!5709 = !DILocation(line: 276, column: 32, scope: !5684)
!5710 = !DILocation(line: 276, column: 39, scope: !5684)
!5711 = !DILocation(line: 276, column: 50, scope: !5684)
!5712 = !DILocation(line: 276, column: 57, scope: !5684)
!5713 = !DILocation(line: 276, column: 7, scope: !5684)
!5714 = !DILocation(line: 276, column: 5, scope: !5684)
!5715 = !DILocation(line: 277, column: 13, scope: !5716)
!5716 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 277, column: 6)
!5717 = !DILocation(line: 277, column: 6, scope: !5716)
!5718 = !DILocation(line: 277, column: 6, scope: !5684)
!5719 = !DILocation(line: 278, column: 18, scope: !5716)
!5720 = !DILocation(line: 278, column: 10, scope: !5716)
!5721 = !DILocation(line: 278, column: 3, scope: !5716)
!5722 = !DILocation(line: 280, column: 9, scope: !5684)
!5723 = !DILocation(line: 280, column: 7, scope: !5684)
!5724 = !DILocation(line: 281, column: 7, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 281, column: 6)
!5726 = !DILocation(line: 281, column: 6, scope: !5684)
!5727 = !DILocation(line: 282, column: 3, scope: !5725)
!5728 = !DILocation(line: 284, column: 16, scope: !5684)
!5729 = !DILocation(line: 284, column: 22, scope: !5684)
!5730 = !DILocation(line: 284, column: 2, scope: !5684)
!5731 = !DILocation(line: 284, column: 8, scope: !5684)
!5732 = !DILocation(line: 284, column: 14, scope: !5684)
!5733 = !DILocation(line: 285, column: 14, scope: !5684)
!5734 = !DILocation(line: 285, column: 2, scope: !5684)
!5735 = !DILocation(line: 285, column: 8, scope: !5684)
!5736 = !DILocation(line: 285, column: 12, scope: !5684)
!5737 = !DILocation(line: 286, column: 20, scope: !5684)
!5738 = !DILocation(line: 286, column: 26, scope: !5684)
!5739 = !DILocation(line: 286, column: 38, scope: !5684)
!5740 = !DILocation(line: 286, column: 2, scope: !5684)
!5741 = !DILocation(line: 288, column: 17, scope: !5684)
!5742 = !DILocation(line: 288, column: 23, scope: !5684)
!5743 = !DILocation(line: 288, column: 52, scope: !5684)
!5744 = !DILocation(line: 288, column: 8, scope: !5684)
!5745 = !DILocation(line: 288, column: 6, scope: !5684)
!5746 = !DILocation(line: 289, column: 6, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5684, file: !3, line: 289, column: 6)
!5748 = !DILocation(line: 289, column: 6, scope: !5684)
!5749 = !DILocation(line: 290, column: 3, scope: !5747)
!5750 = !DILocation(line: 292, column: 13, scope: !5684)
!5751 = !DILocation(line: 292, column: 2, scope: !5684)
!5752 = !DILocation(line: 292, column: 6, scope: !5684)
!5753 = !DILocation(line: 292, column: 11, scope: !5684)
!5754 = !DILocation(line: 294, column: 9, scope: !5684)
!5755 = !DILocation(line: 294, column: 21, scope: !5684)
!5756 = !DILocation(line: 294, column: 25, scope: !5684)
!5757 = !DILocation(line: 294, column: 2, scope: !5684)
!5758 = !DILocation(line: 295, column: 1, scope: !5684)
!5759 = !DILocation(line: 296, column: 15, scope: !5684)
!5760 = !DILocation(line: 296, column: 21, scope: !5684)
!5761 = !DILocation(line: 296, column: 2, scope: !5684)
!5762 = !DILocation(line: 297, column: 1, scope: !5684)
!5763 = !DILocation(line: 298, column: 35, scope: !5684)
!5764 = !DILocation(line: 298, column: 39, scope: !5684)
!5765 = !DILocation(line: 298, column: 46, scope: !5684)
!5766 = !DILocation(line: 298, column: 57, scope: !5684)
!5767 = !DILocation(line: 298, column: 8, scope: !5684)
!5768 = !DILocation(line: 298, column: 2, scope: !5684)
!5769 = !DILocation(line: 299, column: 9, scope: !5684)
!5770 = !DILocation(line: 299, column: 2, scope: !5684)
!5771 = !DILocation(line: 300, column: 1, scope: !5684)
!5772 = distinct !DISubprogram(name: "cdev_alloc", scope: !3, file: !3, line: 640, type: !5773, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5775)
!5773 = !DISubroutineType(types: !5774)
!5774 = !{!186}
!5775 = !{!5776}
!5776 = !DILocalVariable(name: "p", scope: !5772, file: !3, line: 642, type: !186)
!5777 = !DILocation(line: 642, column: 2, scope: !5772)
!5778 = !DILocation(line: 642, column: 15, scope: !5772)
!5779 = !DILocation(line: 642, column: 19, scope: !5772)
!5780 = !DILocation(line: 643, column: 6, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 643, column: 6)
!5782 = !DILocation(line: 643, column: 6, scope: !5772)
!5783 = !DILocation(line: 644, column: 19, scope: !5784)
!5784 = distinct !DILexicalBlock(scope: !5781, file: !3, line: 643, column: 9)
!5785 = !DILocation(line: 644, column: 22, scope: !5784)
!5786 = !DILocation(line: 644, column: 3, scope: !5784)
!5787 = !DILocation(line: 645, column: 17, scope: !5784)
!5788 = !DILocation(line: 645, column: 20, scope: !5784)
!5789 = !DILocation(line: 645, column: 3, scope: !5784)
!5790 = !DILocation(line: 646, column: 2, scope: !5784)
!5791 = !DILocation(line: 647, column: 9, scope: !5772)
!5792 = !DILocation(line: 648, column: 1, scope: !5772)
!5793 = !DILocation(line: 647, column: 2, scope: !5772)
!5794 = !DISubprogram(name: "kobject_set_name", scope: !192, file: !192, line: 84, type: !5795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5795 = !DISubroutineType(types: !5796)
!5796 = !{!101, !200, !195, null}
!5797 = distinct !DISubprogram(name: "cdev_add", scope: !3, file: !3, line: 479, type: !5798, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5800)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!101, !186, !511, !7}
!5800 = !{!5801, !5802, !5803, !5804, !5805, !5808, !5811}
!5801 = !DILocalVariable(name: "p", arg: 1, scope: !5797, file: !3, line: 479, type: !186)
!5802 = !DILocalVariable(name: "dev", arg: 2, scope: !5797, file: !3, line: 479, type: !511)
!5803 = !DILocalVariable(name: "count", arg: 3, scope: !5797, file: !3, line: 479, type: !7)
!5804 = !DILocalVariable(name: "error", scope: !5797, file: !3, line: 481, type: !101)
!5805 = !DILocalVariable(name: "__ret_warn_on", scope: !5806, file: !3, line: 486, type: !101)
!5806 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 486, column: 6)
!5807 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 486, column: 6)
!5808 = !DILocalVariable(name: "__flags", scope: !5809, file: !3, line: 486, type: !101)
!5809 = distinct !DILexicalBlock(scope: !5810, file: !3, line: 486, column: 6)
!5810 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 486, column: 6)
!5811 = !DILabel(scope: !5797, name: "err", file: !3, line: 500)
!5812 = !DILocation(line: 479, column: 27, scope: !5797)
!5813 = !DILocation(line: 479, column: 36, scope: !5797)
!5814 = !DILocation(line: 479, column: 50, scope: !5797)
!5815 = !DILocation(line: 481, column: 2, scope: !5797)
!5816 = !DILocation(line: 481, column: 6, scope: !5797)
!5817 = !DILocation(line: 483, column: 11, scope: !5797)
!5818 = !DILocation(line: 483, column: 2, scope: !5797)
!5819 = !DILocation(line: 483, column: 5, scope: !5797)
!5820 = !DILocation(line: 483, column: 9, scope: !5797)
!5821 = !DILocation(line: 484, column: 13, scope: !5797)
!5822 = !DILocation(line: 484, column: 2, scope: !5797)
!5823 = !DILocation(line: 484, column: 5, scope: !5797)
!5824 = !DILocation(line: 484, column: 11, scope: !5797)
!5825 = !DILocation(line: 486, column: 6, scope: !5806)
!5826 = !DILocation(line: 486, column: 6, scope: !5810)
!5827 = !DILocation(line: 486, column: 6, scope: !5809)
!5828 = !DILocation(line: 486, column: 6, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 486, column: 6)
!5830 = !DILocation(line: 486, column: 6, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 486, column: 6)
!5832 = !{i64 2154919320, i64 2154919349, i64 2154919395, i64 2154919453, i64 2154919507, i64 2154919561, i64 2154919616, i64 2154919647, i64 2154919955, i64 2154919961, i64 2154920008, i64 2154920031, i64 2154920057}
!5833 = !DILocation(line: 486, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 486, column: 6)
!5835 = !DILocation(line: 486, column: 6, scope: !5807)
!5836 = !DILocation(line: 486, column: 6, scope: !5797)
!5837 = !DILocation(line: 487, column: 9, scope: !5838)
!5838 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 486, column: 36)
!5839 = !DILocation(line: 488, column: 3, scope: !5838)
!5840 = !DILocation(line: 491, column: 19, scope: !5797)
!5841 = !DILocation(line: 491, column: 29, scope: !5797)
!5842 = !DILocation(line: 491, column: 34, scope: !5797)
!5843 = !DILocation(line: 492, column: 30, scope: !5797)
!5844 = !DILocation(line: 491, column: 10, scope: !5797)
!5845 = !DILocation(line: 491, column: 8, scope: !5797)
!5846 = !DILocation(line: 493, column: 6, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 493, column: 6)
!5848 = !DILocation(line: 493, column: 6, scope: !5797)
!5849 = !DILocation(line: 494, column: 3, scope: !5847)
!5850 = !DILocation(line: 496, column: 14, scope: !5797)
!5851 = !DILocation(line: 496, column: 17, scope: !5797)
!5852 = !DILocation(line: 496, column: 22, scope: !5797)
!5853 = !DILocation(line: 496, column: 2, scope: !5797)
!5854 = !DILocation(line: 498, column: 2, scope: !5797)
!5855 = !DILocation(line: 500, column: 1, scope: !5797)
!5856 = !DILocation(line: 501, column: 14, scope: !5797)
!5857 = !DILocation(line: 501, column: 17, scope: !5797)
!5858 = !DILocation(line: 501, column: 22, scope: !5797)
!5859 = !DILocation(line: 501, column: 2, scope: !5797)
!5860 = !DILocation(line: 502, column: 2, scope: !5797)
!5861 = !DILocation(line: 502, column: 5, scope: !5797)
!5862 = !DILocation(line: 502, column: 10, scope: !5797)
!5863 = !DILocation(line: 502, column: 15, scope: !5797)
!5864 = !DILocation(line: 503, column: 9, scope: !5797)
!5865 = !DILocation(line: 503, column: 2, scope: !5797)
!5866 = !DILocation(line: 504, column: 1, scope: !5797)
!5867 = !DISubprogram(name: "kobject_put", scope: !192, file: !192, line: 110, type: !297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5868 = distinct !DISubprogram(name: "unregister_chrdev_region", scope: !3, file: !3, line: 311, type: !5869, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5871)
!5869 = !DISubroutineType(types: !5870)
!5870 = !{null, !511, !7}
!5871 = !{!5872, !5873, !5874, !5875, !5876}
!5872 = !DILocalVariable(name: "from", arg: 1, scope: !5868, file: !3, line: 311, type: !511)
!5873 = !DILocalVariable(name: "count", arg: 2, scope: !5868, file: !3, line: 311, type: !7)
!5874 = !DILocalVariable(name: "to", scope: !5868, file: !3, line: 313, type: !511)
!5875 = !DILocalVariable(name: "n", scope: !5868, file: !3, line: 314, type: !511)
!5876 = !DILocalVariable(name: "next", scope: !5868, file: !3, line: 314, type: !511)
!5877 = !DILocation(line: 311, column: 37, scope: !5868)
!5878 = !DILocation(line: 311, column: 52, scope: !5868)
!5879 = !DILocation(line: 313, column: 2, scope: !5868)
!5880 = !DILocation(line: 313, column: 8, scope: !5868)
!5881 = !DILocation(line: 313, column: 13, scope: !5868)
!5882 = !DILocation(line: 313, column: 20, scope: !5868)
!5883 = !DILocation(line: 313, column: 18, scope: !5868)
!5884 = !DILocation(line: 314, column: 2, scope: !5868)
!5885 = !DILocation(line: 314, column: 8, scope: !5868)
!5886 = !DILocation(line: 314, column: 11, scope: !5868)
!5887 = !DILocation(line: 316, column: 11, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 316, column: 2)
!5889 = !DILocation(line: 316, column: 9, scope: !5888)
!5890 = !DILocation(line: 316, column: 7, scope: !5888)
!5891 = !DILocation(line: 316, column: 17, scope: !5892)
!5892 = distinct !DILexicalBlock(scope: !5888, file: !3, line: 316, column: 2)
!5893 = !DILocation(line: 316, column: 21, scope: !5892)
!5894 = !DILocation(line: 316, column: 19, scope: !5892)
!5895 = !DILocation(line: 316, column: 2, scope: !5888)
!5896 = !DILocation(line: 317, column: 10, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 316, column: 35)
!5898 = !DILocation(line: 317, column: 8, scope: !5897)
!5899 = !DILocation(line: 318, column: 7, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5897, file: !3, line: 318, column: 7)
!5901 = !DILocation(line: 318, column: 14, scope: !5900)
!5902 = !DILocation(line: 318, column: 12, scope: !5900)
!5903 = !DILocation(line: 318, column: 7, scope: !5897)
!5904 = !DILocation(line: 319, column: 11, scope: !5900)
!5905 = !DILocation(line: 319, column: 9, scope: !5900)
!5906 = !DILocation(line: 319, column: 4, scope: !5900)
!5907 = !DILocation(line: 320, column: 36, scope: !5897)
!5908 = !DILocation(line: 320, column: 46, scope: !5897)
!5909 = !DILocation(line: 320, column: 56, scope: !5897)
!5910 = !DILocation(line: 320, column: 63, scope: !5897)
!5911 = !DILocation(line: 320, column: 61, scope: !5897)
!5912 = !DILocation(line: 320, column: 9, scope: !5897)
!5913 = !DILocation(line: 320, column: 3, scope: !5897)
!5914 = !DILocation(line: 321, column: 2, scope: !5897)
!5915 = !DILocation(line: 316, column: 29, scope: !5892)
!5916 = !DILocation(line: 316, column: 27, scope: !5892)
!5917 = !DILocation(line: 316, column: 2, scope: !5892)
!5918 = distinct !{!5918, !5895, !5919, !5253, !5254}
!5919 = !DILocation(line: 321, column: 2, scope: !5888)
!5920 = !DILocation(line: 322, column: 1, scope: !5868)
!5921 = distinct !DISubprogram(name: "__unregister_chrdev", scope: !3, file: !3, line: 335, type: !5922, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5924)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{null, !7, !7, !7, !195}
!5924 = !{!5925, !5926, !5927, !5928, !5929}
!5925 = !DILocalVariable(name: "major", arg: 1, scope: !5921, file: !3, line: 335, type: !7)
!5926 = !DILocalVariable(name: "baseminor", arg: 2, scope: !5921, file: !3, line: 335, type: !7)
!5927 = !DILocalVariable(name: "count", arg: 3, scope: !5921, file: !3, line: 336, type: !7)
!5928 = !DILocalVariable(name: "name", arg: 4, scope: !5921, file: !3, line: 336, type: !195)
!5929 = !DILocalVariable(name: "cd", scope: !5921, file: !3, line: 338, type: !5157)
!5930 = !DILocation(line: 335, column: 39, scope: !5921)
!5931 = !DILocation(line: 335, column: 59, scope: !5921)
!5932 = !DILocation(line: 336, column: 18, scope: !5921)
!5933 = !DILocation(line: 336, column: 37, scope: !5921)
!5934 = !DILocation(line: 338, column: 2, scope: !5921)
!5935 = !DILocation(line: 338, column: 29, scope: !5921)
!5936 = !DILocation(line: 340, column: 34, scope: !5921)
!5937 = !DILocation(line: 340, column: 41, scope: !5921)
!5938 = !DILocation(line: 340, column: 52, scope: !5921)
!5939 = !DILocation(line: 340, column: 7, scope: !5921)
!5940 = !DILocation(line: 340, column: 5, scope: !5921)
!5941 = !DILocation(line: 341, column: 6, scope: !5942)
!5942 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 341, column: 6)
!5943 = !DILocation(line: 341, column: 9, scope: !5942)
!5944 = !DILocation(line: 341, column: 12, scope: !5942)
!5945 = !DILocation(line: 341, column: 16, scope: !5942)
!5946 = !DILocation(line: 341, column: 6, scope: !5921)
!5947 = !DILocation(line: 342, column: 12, scope: !5942)
!5948 = !DILocation(line: 342, column: 16, scope: !5942)
!5949 = !DILocation(line: 342, column: 3, scope: !5942)
!5950 = !DILocation(line: 343, column: 8, scope: !5921)
!5951 = !DILocation(line: 343, column: 2, scope: !5921)
!5952 = !DILocation(line: 344, column: 1, scope: !5921)
!5953 = distinct !DISubprogram(name: "cdev_del", scope: !3, file: !3, line: 601, type: !5954, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5956)
!5954 = !DISubroutineType(types: !5955)
!5955 = !{null, !186}
!5956 = !{!5957}
!5957 = !DILocalVariable(name: "p", arg: 1, scope: !5953, file: !3, line: 601, type: !186)
!5958 = !DILocation(line: 601, column: 28, scope: !5953)
!5959 = !DILocation(line: 603, column: 13, scope: !5953)
!5960 = !DILocation(line: 603, column: 16, scope: !5953)
!5961 = !DILocation(line: 603, column: 21, scope: !5953)
!5962 = !DILocation(line: 603, column: 24, scope: !5953)
!5963 = !DILocation(line: 603, column: 2, scope: !5953)
!5964 = !DILocation(line: 604, column: 15, scope: !5953)
!5965 = !DILocation(line: 604, column: 18, scope: !5953)
!5966 = !DILocation(line: 604, column: 2, scope: !5953)
!5967 = !DILocation(line: 605, column: 1, scope: !5953)
!5968 = distinct !DISubprogram(name: "cdev_put", scope: !3, file: !3, line: 361, type: !5954, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5969)
!5969 = !{!5970, !5971}
!5970 = !DILocalVariable(name: "p", arg: 1, scope: !5968, file: !3, line: 361, type: !186)
!5971 = !DILocalVariable(name: "owner", scope: !5972, file: !3, line: 364, type: !544)
!5972 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 363, column: 9)
!5973 = distinct !DILexicalBlock(scope: !5968, file: !3, line: 363, column: 6)
!5974 = !DILocation(line: 361, column: 28, scope: !5968)
!5975 = !DILocation(line: 363, column: 6, scope: !5973)
!5976 = !DILocation(line: 363, column: 6, scope: !5968)
!5977 = !DILocation(line: 364, column: 3, scope: !5972)
!5978 = !DILocation(line: 364, column: 18, scope: !5972)
!5979 = !DILocation(line: 364, column: 26, scope: !5972)
!5980 = !DILocation(line: 364, column: 29, scope: !5972)
!5981 = !DILocation(line: 365, column: 16, scope: !5972)
!5982 = !DILocation(line: 365, column: 19, scope: !5972)
!5983 = !DILocation(line: 365, column: 3, scope: !5972)
!5984 = !DILocation(line: 366, column: 14, scope: !5972)
!5985 = !DILocation(line: 366, column: 3, scope: !5972)
!5986 = !DILocation(line: 367, column: 2, scope: !5973)
!5987 = !DILocation(line: 367, column: 2, scope: !5972)
!5988 = !DILocation(line: 368, column: 1, scope: !5968)
!5989 = !DISubprogram(name: "module_put", scope: !15, file: !15, line: 706, type: !599, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5990 = distinct !DISubprogram(name: "cd_forget", scope: !3, file: !3, line: 426, type: !1009, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5991)
!5991 = !{!5992}
!5992 = !DILocalVariable(name: "inode", arg: 1, scope: !5990, file: !3, line: 426, type: !355)
!5993 = !DILocation(line: 426, column: 30, scope: !5990)
!5994 = !DILocation(line: 428, column: 2, scope: !5990)
!5995 = !DILocation(line: 429, column: 17, scope: !5990)
!5996 = !DILocation(line: 429, column: 24, scope: !5990)
!5997 = !DILocation(line: 429, column: 2, scope: !5990)
!5998 = !DILocation(line: 430, column: 2, scope: !5990)
!5999 = !DILocation(line: 430, column: 9, scope: !5990)
!6000 = !DILocation(line: 430, column: 16, scope: !5990)
!6001 = !DILocation(line: 431, column: 22, scope: !5990)
!6002 = !DILocation(line: 431, column: 29, scope: !5990)
!6003 = !DILocation(line: 431, column: 2, scope: !5990)
!6004 = !DILocation(line: 431, column: 9, scope: !5990)
!6005 = !DILocation(line: 431, column: 19, scope: !5990)
!6006 = !DILocation(line: 432, column: 2, scope: !5990)
!6007 = !DILocation(line: 433, column: 1, scope: !5990)
!6008 = distinct !DISubprogram(name: "spin_lock", scope: !6009, file: !6009, line: 349, type: !6010, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6012)
!6009 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6010 = !DISubroutineType(types: !6011)
!6011 = !{null, !1887}
!6012 = !{!6013}
!6013 = !DILocalVariable(name: "lock", arg: 1, scope: !6008, file: !6009, line: 349, type: !1887)
!6014 = !DILocation(line: 349, column: 51, scope: !6008)
!6015 = !DILocation(line: 351, column: 2, scope: !6008)
!6016 = !DILocation(line: 352, column: 1, scope: !6008)
!6017 = distinct !DISubprogram(name: "list_del_init", scope: !6018, file: !6018, line: 285, type: !6019, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6018 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6019 = !DISubroutineType(types: !6020)
!6020 = !{null, !181}
!6021 = !{!6022}
!6022 = !DILocalVariable(name: "entry", arg: 1, scope: !6017, file: !6018, line: 285, type: !181)
!6023 = !DILocation(line: 285, column: 52, scope: !6017)
!6024 = !DILocation(line: 287, column: 19, scope: !6017)
!6025 = !DILocation(line: 287, column: 2, scope: !6017)
!6026 = !DILocation(line: 288, column: 17, scope: !6017)
!6027 = !DILocation(line: 288, column: 2, scope: !6017)
!6028 = !DILocation(line: 289, column: 1, scope: !6017)
!6029 = distinct !DISubprogram(name: "spin_unlock", scope: !6009, file: !6009, line: 389, type: !6010, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6030)
!6030 = !{!6031}
!6031 = !DILocalVariable(name: "lock", arg: 1, scope: !6029, file: !6009, line: 389, type: !1887)
!6032 = !DILocation(line: 389, column: 53, scope: !6029)
!6033 = !DILocation(line: 391, column: 2, scope: !6029)
!6034 = !DILocation(line: 392, column: 1, scope: !6029)
!6035 = distinct !DISubprogram(name: "chrdev_open", scope: !3, file: !3, line: 373, type: !1936, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6036)
!6036 = !{!6037, !6038, !6039, !6040, !6041, !6042, !6043, !6046, !6047, !6049, !6051}
!6037 = !DILocalVariable(name: "inode", arg: 1, scope: !6035, file: !3, line: 373, type: !355)
!6038 = !DILocalVariable(name: "filp", arg: 2, scope: !6035, file: !3, line: 373, type: !1420)
!6039 = !DILocalVariable(name: "fops", scope: !6035, file: !3, line: 375, type: !1411)
!6040 = !DILocalVariable(name: "p", scope: !6035, file: !3, line: 376, type: !186)
!6041 = !DILocalVariable(name: "new", scope: !6035, file: !3, line: 377, type: !186)
!6042 = !DILocalVariable(name: "ret", scope: !6035, file: !3, line: 378, type: !101)
!6043 = !DILocalVariable(name: "kobj", scope: !6044, file: !3, line: 383, type: !200)
!6044 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 382, column: 10)
!6045 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 382, column: 6)
!6046 = !DILocalVariable(name: "idx", scope: !6044, file: !3, line: 384, type: !101)
!6047 = !DILocalVariable(name: "__mptr", scope: !6048, file: !3, line: 389, type: !176)
!6048 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 389, column: 9)
!6049 = !DILocalVariable(name: "__file", scope: !6050, file: !3, line: 412, type: !1420)
!6050 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 412, column: 2)
!6051 = !DILabel(scope: !6035, name: "out_cdev_put", file: !3, line: 421)
!6052 = !DILocation(line: 373, column: 38, scope: !6035)
!6053 = !DILocation(line: 373, column: 58, scope: !6035)
!6054 = !DILocation(line: 375, column: 2, scope: !6035)
!6055 = !DILocation(line: 375, column: 32, scope: !6035)
!6056 = !DILocation(line: 376, column: 2, scope: !6035)
!6057 = !DILocation(line: 376, column: 15, scope: !6035)
!6058 = !DILocation(line: 377, column: 2, scope: !6035)
!6059 = !DILocation(line: 377, column: 15, scope: !6035)
!6060 = !DILocation(line: 378, column: 2, scope: !6035)
!6061 = !DILocation(line: 378, column: 6, scope: !6035)
!6062 = !DILocation(line: 380, column: 2, scope: !6035)
!6063 = !DILocation(line: 381, column: 6, scope: !6035)
!6064 = !DILocation(line: 381, column: 13, scope: !6035)
!6065 = !DILocation(line: 381, column: 4, scope: !6035)
!6066 = !DILocation(line: 382, column: 7, scope: !6045)
!6067 = !DILocation(line: 382, column: 6, scope: !6035)
!6068 = !DILocation(line: 383, column: 3, scope: !6044)
!6069 = !DILocation(line: 383, column: 19, scope: !6044)
!6070 = !DILocation(line: 384, column: 3, scope: !6044)
!6071 = !DILocation(line: 384, column: 7, scope: !6044)
!6072 = !DILocation(line: 385, column: 3, scope: !6044)
!6073 = !DILocation(line: 386, column: 22, scope: !6044)
!6074 = !DILocation(line: 386, column: 32, scope: !6044)
!6075 = !DILocation(line: 386, column: 39, scope: !6044)
!6076 = !DILocation(line: 386, column: 10, scope: !6044)
!6077 = !DILocation(line: 386, column: 8, scope: !6044)
!6078 = !DILocation(line: 387, column: 8, scope: !6079)
!6079 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 387, column: 7)
!6080 = !DILocation(line: 387, column: 7, scope: !6044)
!6081 = !DILocation(line: 388, column: 4, scope: !6079)
!6082 = !DILocation(line: 389, column: 9, scope: !6048)
!6083 = !DILocation(line: 389, column: 9, scope: !6044)
!6084 = !DILocation(line: 389, column: 7, scope: !6044)
!6085 = !DILocation(line: 390, column: 3, scope: !6044)
!6086 = !DILocation(line: 393, column: 7, scope: !6044)
!6087 = !DILocation(line: 393, column: 14, scope: !6044)
!6088 = !DILocation(line: 393, column: 5, scope: !6044)
!6089 = !DILocation(line: 394, column: 8, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6044, file: !3, line: 394, column: 7)
!6091 = !DILocation(line: 394, column: 7, scope: !6044)
!6092 = !DILocation(line: 395, column: 24, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 394, column: 11)
!6094 = !DILocation(line: 395, column: 22, scope: !6093)
!6095 = !DILocation(line: 395, column: 4, scope: !6093)
!6096 = !DILocation(line: 395, column: 11, scope: !6093)
!6097 = !DILocation(line: 395, column: 18, scope: !6093)
!6098 = !DILocation(line: 396, column: 14, scope: !6093)
!6099 = !DILocation(line: 396, column: 21, scope: !6093)
!6100 = !DILocation(line: 396, column: 33, scope: !6093)
!6101 = !DILocation(line: 396, column: 36, scope: !6093)
!6102 = !DILocation(line: 396, column: 4, scope: !6093)
!6103 = !DILocation(line: 397, column: 8, scope: !6093)
!6104 = !DILocation(line: 398, column: 3, scope: !6093)
!6105 = !DILocation(line: 398, column: 24, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6090, file: !3, line: 398, column: 14)
!6107 = !DILocation(line: 398, column: 15, scope: !6106)
!6108 = !DILocation(line: 398, column: 14, scope: !6090)
!6109 = !DILocation(line: 399, column: 8, scope: !6106)
!6110 = !DILocation(line: 399, column: 4, scope: !6106)
!6111 = !DILocation(line: 400, column: 2, scope: !6045)
!6112 = !DILocation(line: 400, column: 2, scope: !6044)
!6113 = !DILocation(line: 400, column: 23, scope: !6114)
!6114 = distinct !DILexicalBlock(scope: !6045, file: !3, line: 400, column: 13)
!6115 = !DILocation(line: 400, column: 14, scope: !6114)
!6116 = !DILocation(line: 400, column: 13, scope: !6045)
!6117 = !DILocation(line: 401, column: 7, scope: !6114)
!6118 = !DILocation(line: 401, column: 3, scope: !6114)
!6119 = !DILocation(line: 402, column: 2, scope: !6035)
!6120 = !DILocation(line: 403, column: 11, scope: !6035)
!6121 = !DILocation(line: 403, column: 2, scope: !6035)
!6122 = !DILocation(line: 404, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 404, column: 6)
!6124 = !DILocation(line: 404, column: 6, scope: !6035)
!6125 = !DILocation(line: 405, column: 10, scope: !6123)
!6126 = !DILocation(line: 405, column: 3, scope: !6123)
!6127 = !DILocation(line: 407, column: 6, scope: !6035)
!6128 = !DILocation(line: 408, column: 9, scope: !6035)
!6129 = !DILocation(line: 408, column: 7, scope: !6035)
!6130 = !DILocation(line: 409, column: 7, scope: !6131)
!6131 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 409, column: 6)
!6132 = !DILocation(line: 409, column: 6, scope: !6035)
!6133 = !DILocation(line: 410, column: 3, scope: !6131)
!6134 = !DILocation(line: 412, column: 2, scope: !6035)
!6135 = !DILocation(line: 412, column: 2, scope: !6050)
!6136 = !DILocation(line: 412, column: 2, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6138, file: !3, line: 412, column: 2)
!6138 = distinct !DILexicalBlock(scope: !6050, file: !3, line: 412, column: 2)
!6139 = !DILocation(line: 412, column: 2, scope: !6138)
!6140 = !DILocation(line: 412, column: 2, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 412, column: 2)
!6142 = distinct !DILexicalBlock(scope: !6050, file: !3, line: 412, column: 2)
!6143 = !DILocation(line: 412, column: 2, scope: !6142)
!6144 = !DILocation(line: 412, column: 2, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6141, file: !3, line: 412, column: 2)
!6146 = !DILocation(line: 412, column: 2, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 412, column: 2)
!6148 = !DILocation(line: 412, column: 2, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 412, column: 2)
!6150 = !{i64 2154916859, i64 2154916888, i64 2154916934, i64 2154916992, i64 2154917046, i64 2154917100, i64 2154917155, i64 2154917186}
!6151 = !DILocation(line: 413, column: 6, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 413, column: 6)
!6153 = !DILocation(line: 413, column: 12, scope: !6152)
!6154 = !DILocation(line: 413, column: 18, scope: !6152)
!6155 = !DILocation(line: 413, column: 6, scope: !6035)
!6156 = !DILocation(line: 414, column: 9, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6152, file: !3, line: 413, column: 24)
!6158 = !DILocation(line: 414, column: 15, scope: !6157)
!6159 = !DILocation(line: 414, column: 21, scope: !6157)
!6160 = !DILocation(line: 414, column: 26, scope: !6157)
!6161 = !DILocation(line: 414, column: 33, scope: !6157)
!6162 = !DILocation(line: 414, column: 7, scope: !6157)
!6163 = !DILocation(line: 415, column: 7, scope: !6164)
!6164 = distinct !DILexicalBlock(scope: !6157, file: !3, line: 415, column: 7)
!6165 = !DILocation(line: 415, column: 7, scope: !6157)
!6166 = !DILocation(line: 416, column: 4, scope: !6164)
!6167 = !DILocation(line: 417, column: 2, scope: !6157)
!6168 = !DILocation(line: 419, column: 2, scope: !6035)
!6169 = !DILocation(line: 421, column: 2, scope: !6035)
!6170 = !DILocation(line: 422, column: 11, scope: !6035)
!6171 = !DILocation(line: 422, column: 2, scope: !6035)
!6172 = !DILocation(line: 423, column: 9, scope: !6035)
!6173 = !DILocation(line: 423, column: 2, scope: !6035)
!6174 = !DILocation(line: 424, column: 1, scope: !6035)
!6175 = !DISubprogram(name: "kobj_map", scope: !5153, file: !5153, line: 14, type: !6176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6176 = !DISubroutineType(types: !6177)
!6177 = !{!101, !5151, !511, !177, !544, !6178, !6182, !176}
!6178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6179, size: 64)
!6179 = !DIDerivedType(tag: DW_TAG_typedef, name: "kobj_probe_t", file: !5153, line: 11, baseType: !6180)
!6180 = !DISubroutineType(types: !6181)
!6181 = !{!200, !511, !744, !176}
!6182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6183, size: 64)
!6183 = !DISubroutineType(types: !6184)
!6184 = !{!101, !511, !176}
!6185 = distinct !DISubprogram(name: "exact_match", scope: !3, file: !3, line: 457, type: !6180, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6186)
!6186 = !{!6187, !6188, !6189, !6190}
!6187 = !DILocalVariable(name: "dev", arg: 1, scope: !6185, file: !3, line: 457, type: !511)
!6188 = !DILocalVariable(name: "part", arg: 2, scope: !6185, file: !3, line: 457, type: !744)
!6189 = !DILocalVariable(name: "data", arg: 3, scope: !6185, file: !3, line: 457, type: !176)
!6190 = !DILocalVariable(name: "p", scope: !6185, file: !3, line: 459, type: !186)
!6191 = !DILocation(line: 457, column: 42, scope: !6185)
!6192 = !DILocation(line: 457, column: 52, scope: !6185)
!6193 = !DILocation(line: 457, column: 64, scope: !6185)
!6194 = !DILocation(line: 459, column: 2, scope: !6185)
!6195 = !DILocation(line: 459, column: 15, scope: !6185)
!6196 = !DILocation(line: 459, column: 19, scope: !6185)
!6197 = !DILocation(line: 460, column: 10, scope: !6185)
!6198 = !DILocation(line: 460, column: 13, scope: !6185)
!6199 = !DILocation(line: 461, column: 1, scope: !6185)
!6200 = !DILocation(line: 460, column: 2, scope: !6185)
!6201 = distinct !DISubprogram(name: "exact_lock", scope: !3, file: !3, line: 463, type: !6183, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6202)
!6202 = !{!6203, !6204, !6205}
!6203 = !DILocalVariable(name: "dev", arg: 1, scope: !6201, file: !3, line: 463, type: !511)
!6204 = !DILocalVariable(name: "data", arg: 2, scope: !6201, file: !3, line: 463, type: !176)
!6205 = !DILocalVariable(name: "p", scope: !6201, file: !3, line: 465, type: !186)
!6206 = !DILocation(line: 463, column: 29, scope: !6201)
!6207 = !DILocation(line: 463, column: 40, scope: !6201)
!6208 = !DILocation(line: 465, column: 2, scope: !6201)
!6209 = !DILocation(line: 465, column: 15, scope: !6201)
!6210 = !DILocation(line: 465, column: 19, scope: !6201)
!6211 = !DILocation(line: 466, column: 18, scope: !6201)
!6212 = !DILocation(line: 466, column: 9, scope: !6201)
!6213 = !DILocation(line: 467, column: 1, scope: !6201)
!6214 = !DILocation(line: 466, column: 2, scope: !6201)
!6215 = !DISubprogram(name: "kobject_get", scope: !192, file: !192, line: 108, type: !6216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6216 = !DISubroutineType(types: !6217)
!6217 = !{!200, !200}
!6218 = !DISubprogram(name: "kfree_const", scope: !6219, file: !6219, line: 214, type: !5565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6219 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6220 = distinct !DISubprogram(name: "cdev_set_parent", scope: !3, file: !3, line: 515, type: !6221, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6223)
!6221 = !DISubroutineType(types: !6222)
!6222 = !{null, !186, !200}
!6223 = !{!6224, !6225, !6226, !6228}
!6224 = !DILocalVariable(name: "p", arg: 1, scope: !6220, file: !3, line: 515, type: !186)
!6225 = !DILocalVariable(name: "kobj", arg: 2, scope: !6220, file: !3, line: 515, type: !200)
!6226 = !DILocalVariable(name: "__ret_warn_on", scope: !6227, file: !3, line: 517, type: !101)
!6227 = distinct !DILexicalBlock(scope: !6220, file: !3, line: 517, column: 2)
!6228 = !DILocalVariable(name: "__flags", scope: !6229, file: !3, line: 517, type: !101)
!6229 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 517, column: 2)
!6230 = distinct !DILexicalBlock(scope: !6227, file: !3, line: 517, column: 2)
!6231 = !DILocation(line: 515, column: 35, scope: !6220)
!6232 = !DILocation(line: 515, column: 54, scope: !6220)
!6233 = !DILocation(line: 517, column: 2, scope: !6227)
!6234 = !DILocation(line: 517, column: 2, scope: !6230)
!6235 = !DILocation(line: 517, column: 2, scope: !6229)
!6236 = !DILocation(line: 517, column: 2, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 517, column: 2)
!6238 = !DILocation(line: 517, column: 2, scope: !6239)
!6239 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 517, column: 2)
!6240 = !{i64 2154920848, i64 2154920877, i64 2154920923, i64 2154920981, i64 2154921035, i64 2154921089, i64 2154921144, i64 2154921175, i64 2154921483, i64 2154921489, i64 2154921536, i64 2154921559, i64 2154921585}
!6241 = !DILocation(line: 517, column: 2, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 517, column: 2)
!6243 = !DILocation(line: 517, column: 2, scope: !6220)
!6244 = !DILocation(line: 518, column: 19, scope: !6220)
!6245 = !DILocation(line: 518, column: 2, scope: !6220)
!6246 = !DILocation(line: 518, column: 5, scope: !6220)
!6247 = !DILocation(line: 518, column: 10, scope: !6220)
!6248 = !DILocation(line: 518, column: 17, scope: !6220)
!6249 = !DILocation(line: 519, column: 1, scope: !6220)
!6250 = distinct !DISubprogram(name: "cdev_device_add", scope: !3, file: !3, line: 544, type: !6251, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6253)
!6251 = !DISubroutineType(types: !6252)
!6252 = !{!101, !186, !2293}
!6253 = !{!6254, !6255, !6256}
!6254 = !DILocalVariable(name: "cdev", arg: 1, scope: !6250, file: !3, line: 544, type: !186)
!6255 = !DILocalVariable(name: "dev", arg: 2, scope: !6250, file: !3, line: 544, type: !2293)
!6256 = !DILocalVariable(name: "rc", scope: !6250, file: !3, line: 546, type: !101)
!6257 = !DILocation(line: 544, column: 34, scope: !6250)
!6258 = !DILocation(line: 544, column: 55, scope: !6250)
!6259 = !DILocation(line: 546, column: 2, scope: !6250)
!6260 = !DILocation(line: 546, column: 6, scope: !6250)
!6261 = !DILocation(line: 548, column: 6, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 548, column: 6)
!6263 = !DILocation(line: 548, column: 11, scope: !6262)
!6264 = !DILocation(line: 548, column: 6, scope: !6250)
!6265 = !DILocation(line: 549, column: 19, scope: !6266)
!6266 = distinct !DILexicalBlock(scope: !6262, file: !3, line: 548, column: 17)
!6267 = !DILocation(line: 549, column: 26, scope: !6266)
!6268 = !DILocation(line: 549, column: 31, scope: !6266)
!6269 = !DILocation(line: 549, column: 3, scope: !6266)
!6270 = !DILocation(line: 551, column: 17, scope: !6266)
!6271 = !DILocation(line: 551, column: 23, scope: !6266)
!6272 = !DILocation(line: 551, column: 28, scope: !6266)
!6273 = !DILocation(line: 551, column: 8, scope: !6266)
!6274 = !DILocation(line: 551, column: 6, scope: !6266)
!6275 = !DILocation(line: 552, column: 7, scope: !6276)
!6276 = distinct !DILexicalBlock(scope: !6266, file: !3, line: 552, column: 7)
!6277 = !DILocation(line: 552, column: 7, scope: !6266)
!6278 = !DILocation(line: 553, column: 11, scope: !6276)
!6279 = !DILocation(line: 553, column: 4, scope: !6276)
!6280 = !DILocation(line: 554, column: 2, scope: !6266)
!6281 = !DILocation(line: 556, column: 18, scope: !6250)
!6282 = !DILocation(line: 556, column: 7, scope: !6250)
!6283 = !DILocation(line: 556, column: 5, scope: !6250)
!6284 = !DILocation(line: 557, column: 6, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6250, file: !3, line: 557, column: 6)
!6286 = !DILocation(line: 557, column: 9, scope: !6285)
!6287 = !DILocation(line: 557, column: 12, scope: !6285)
!6288 = !DILocation(line: 557, column: 17, scope: !6285)
!6289 = !DILocation(line: 557, column: 6, scope: !6250)
!6290 = !DILocation(line: 558, column: 12, scope: !6285)
!6291 = !DILocation(line: 558, column: 3, scope: !6285)
!6292 = !DILocation(line: 560, column: 9, scope: !6250)
!6293 = !DILocation(line: 560, column: 2, scope: !6250)
!6294 = !DILocation(line: 561, column: 1, scope: !6250)
!6295 = !DISubprogram(name: "device_add", scope: !81, file: !81, line: 1057, type: !2329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6296 = distinct !DISubprogram(name: "cdev_device_del", scope: !3, file: !3, line: 578, type: !6297, scopeLine: 579, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6299)
!6297 = !DISubroutineType(types: !6298)
!6298 = !{null, !186, !2293}
!6299 = !{!6300, !6301}
!6300 = !DILocalVariable(name: "cdev", arg: 1, scope: !6296, file: !3, line: 578, type: !186)
!6301 = !DILocalVariable(name: "dev", arg: 2, scope: !6296, file: !3, line: 578, type: !2293)
!6302 = !DILocation(line: 578, column: 35, scope: !6296)
!6303 = !DILocation(line: 578, column: 56, scope: !6296)
!6304 = !DILocation(line: 580, column: 13, scope: !6296)
!6305 = !DILocation(line: 580, column: 2, scope: !6296)
!6306 = !DILocation(line: 581, column: 6, scope: !6307)
!6307 = distinct !DILexicalBlock(scope: !6296, file: !3, line: 581, column: 6)
!6308 = !DILocation(line: 581, column: 11, scope: !6307)
!6309 = !DILocation(line: 581, column: 6, scope: !6296)
!6310 = !DILocation(line: 582, column: 12, scope: !6307)
!6311 = !DILocation(line: 582, column: 3, scope: !6307)
!6312 = !DILocation(line: 583, column: 1, scope: !6296)
!6313 = !DISubprogram(name: "device_del", scope: !81, file: !81, line: 1058, type: !2320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6314 = distinct !DISubprogram(name: "cdev_unmap", scope: !3, file: !3, line: 585, type: !5869, scopeLine: 586, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6315)
!6315 = !{!6316, !6317}
!6316 = !DILocalVariable(name: "dev", arg: 1, scope: !6314, file: !3, line: 585, type: !511)
!6317 = !DILocalVariable(name: "count", arg: 2, scope: !6314, file: !3, line: 585, type: !7)
!6318 = !DILocation(line: 585, column: 30, scope: !6314)
!6319 = !DILocation(line: 585, column: 44, scope: !6314)
!6320 = !DILocation(line: 587, column: 13, scope: !6314)
!6321 = !DILocation(line: 587, column: 23, scope: !6314)
!6322 = !DILocation(line: 587, column: 28, scope: !6314)
!6323 = !DILocation(line: 587, column: 2, scope: !6314)
!6324 = !DILocation(line: 588, column: 1, scope: !6314)
!6325 = distinct !DISubprogram(name: "kzalloc", scope: !164, file: !164, line: 719, type: !6326, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6328)
!6326 = !DISubroutineType(types: !6327)
!6327 = !{!176, !323, !174}
!6328 = !{!6329, !6330}
!6329 = !DILocalVariable(name: "size", arg: 1, scope: !6325, file: !164, line: 719, type: !323)
!6330 = !DILocalVariable(name: "flags", arg: 2, scope: !6325, file: !164, line: 719, type: !174)
!6331 = !DILocation(line: 719, column: 52, scope: !6325)
!6332 = !DILocation(line: 719, column: 64, scope: !6325)
!6333 = !DILocation(line: 721, column: 17, scope: !6325)
!6334 = !DILocation(line: 721, column: 23, scope: !6325)
!6335 = !DILocation(line: 721, column: 29, scope: !6325)
!6336 = !DILocation(line: 721, column: 9, scope: !6325)
!6337 = !DILocation(line: 721, column: 2, scope: !6325)
!6338 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6018, file: !6018, line: 35, type: !6019, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6339)
!6339 = !{!6340}
!6340 = !DILocalVariable(name: "list", arg: 1, scope: !6338, file: !6018, line: 35, type: !181)
!6341 = !DILocation(line: 35, column: 53, scope: !6338)
!6342 = !DILocation(line: 37, column: 2, scope: !6338)
!6343 = !DILocation(line: 37, column: 2, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6338, file: !6018, line: 37, column: 2)
!6345 = !DILocation(line: 37, column: 2, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6344, file: !6018, line: 37, column: 2)
!6347 = !DILocation(line: 37, column: 2, scope: !6348)
!6348 = distinct !DILexicalBlock(scope: !6344, file: !6018, line: 37, column: 2)
!6349 = !DILocation(line: 38, column: 2, scope: !6338)
!6350 = !DILocation(line: 38, column: 2, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6338, file: !6018, line: 38, column: 2)
!6352 = !DILocation(line: 38, column: 2, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6351, file: !6018, line: 38, column: 2)
!6354 = !DILocation(line: 38, column: 2, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6351, file: !6018, line: 38, column: 2)
!6356 = !DILocation(line: 39, column: 1, scope: !6338)
!6357 = !DISubprogram(name: "kobject_init", scope: !192, file: !192, line: 92, type: !6358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6358 = !DISubroutineType(types: !6359)
!6359 = !{null, !200, !291}
!6360 = distinct !DISubprogram(name: "cdev_init", scope: !3, file: !3, line: 658, type: !6361, scopeLine: 659, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6363)
!6361 = !DISubroutineType(types: !6362)
!6362 = !{null, !186, !1411}
!6363 = !{!6364, !6365}
!6364 = !DILocalVariable(name: "cdev", arg: 1, scope: !6360, file: !3, line: 658, type: !186)
!6365 = !DILocalVariable(name: "fops", arg: 2, scope: !6360, file: !3, line: 658, type: !1411)
!6366 = !DILocation(line: 658, column: 29, scope: !6360)
!6367 = !DILocation(line: 658, column: 65, scope: !6360)
!6368 = !DILocation(line: 660, column: 9, scope: !6360)
!6369 = !DILocation(line: 660, column: 2, scope: !6360)
!6370 = !DILocation(line: 661, column: 18, scope: !6360)
!6371 = !DILocation(line: 661, column: 24, scope: !6360)
!6372 = !DILocation(line: 661, column: 2, scope: !6360)
!6373 = !DILocation(line: 662, column: 16, scope: !6360)
!6374 = !DILocation(line: 662, column: 22, scope: !6360)
!6375 = !DILocation(line: 662, column: 2, scope: !6360)
!6376 = !DILocation(line: 663, column: 14, scope: !6360)
!6377 = !DILocation(line: 663, column: 2, scope: !6360)
!6378 = !DILocation(line: 663, column: 8, scope: !6360)
!6379 = !DILocation(line: 663, column: 12, scope: !6360)
!6380 = !DILocation(line: 664, column: 1, scope: !6360)
!6381 = distinct !DISubprogram(name: "chrdev_init", scope: !3, file: !3, line: 674, type: !980, scopeLine: 675, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6382 = !DILocation(line: 676, column: 13, scope: !6381)
!6383 = !DILocation(line: 676, column: 11, scope: !6381)
!6384 = !DILocation(line: 677, column: 1, scope: !6381)
!6385 = !DISubprogram(name: "kobj_map_init", scope: !5153, file: !5153, line: 18, type: !6386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6386 = !DISubroutineType(types: !6387)
!6387 = !{!5151, !6178, !5260}
!6388 = distinct !DISubprogram(name: "base_probe", scope: !3, file: !3, line: 666, type: !6180, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6389)
!6389 = !{!6390, !6391, !6392}
!6390 = !DILocalVariable(name: "dev", arg: 1, scope: !6388, file: !3, line: 666, type: !511)
!6391 = !DILocalVariable(name: "part", arg: 2, scope: !6388, file: !3, line: 666, type: !744)
!6392 = !DILocalVariable(name: "data", arg: 3, scope: !6388, file: !3, line: 666, type: !176)
!6393 = !DILocation(line: 666, column: 41, scope: !6388)
!6394 = !DILocation(line: 666, column: 51, scope: !6388)
!6395 = !DILocation(line: 666, column: 63, scope: !6388)
!6396 = !DILocation(line: 668, column: 6, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6388, file: !3, line: 668, column: 6)
!6398 = !DILocation(line: 668, column: 65, scope: !6397)
!6399 = !DILocation(line: 668, column: 6, scope: !6388)
!6400 = !DILocation(line: 670, column: 3, scope: !6397)
!6401 = !DILocation(line: 671, column: 2, scope: !6388)
!6402 = !DISubprogram(name: "_printk", scope: !6403, file: !6403, line: 153, type: !6404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6403 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6404 = !DISubroutineType(types: !6405)
!6405 = !{!101, !195, null}
!6406 = distinct !DISubprogram(name: "ERR_PTR", scope: !5556, file: !5556, line: 39, type: !6407, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6409)
!6407 = !DISubroutineType(types: !6408)
!6408 = !{!176, !178}
!6409 = !{!6410}
!6410 = !DILocalVariable(name: "error", arg: 1, scope: !6406, file: !5556, line: 39, type: !178)
!6411 = !DILocation(line: 39, column: 48, scope: !6406)
!6412 = !DILocation(line: 41, column: 18, scope: !6406)
!6413 = !DILocation(line: 41, column: 9, scope: !6406)
!6414 = !DILocation(line: 41, column: 2, scope: !6406)
!6415 = distinct !DISubprogram(name: "find_dynamic_major", scope: !3, file: !3, line: 65, type: !709, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6416)
!6416 = !{!6417, !6418}
!6417 = !DILocalVariable(name: "i", scope: !6415, file: !3, line: 67, type: !101)
!6418 = !DILocalVariable(name: "cd", scope: !6415, file: !3, line: 68, type: !5157)
!6419 = !DILocation(line: 67, column: 2, scope: !6415)
!6420 = !DILocation(line: 67, column: 6, scope: !6415)
!6421 = !DILocation(line: 68, column: 2, scope: !6415)
!6422 = !DILocation(line: 68, column: 29, scope: !6415)
!6423 = !DILocation(line: 70, column: 9, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 70, column: 2)
!6425 = !DILocation(line: 70, column: 7, scope: !6424)
!6426 = !DILocation(line: 70, column: 34, scope: !6427)
!6427 = distinct !DILexicalBlock(scope: !6424, file: !3, line: 70, column: 2)
!6428 = !DILocation(line: 70, column: 36, scope: !6427)
!6429 = !DILocation(line: 70, column: 2, scope: !6424)
!6430 = !DILocation(line: 71, column: 15, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 71, column: 7)
!6432 = distinct !DILexicalBlock(scope: !6427, file: !3, line: 70, column: 66)
!6433 = !DILocation(line: 71, column: 7, scope: !6431)
!6434 = !DILocation(line: 71, column: 18, scope: !6431)
!6435 = !DILocation(line: 71, column: 7, scope: !6432)
!6436 = !DILocation(line: 72, column: 11, scope: !6431)
!6437 = !DILocation(line: 72, column: 4, scope: !6431)
!6438 = !DILocation(line: 73, column: 2, scope: !6432)
!6439 = !DILocation(line: 70, column: 62, scope: !6427)
!6440 = !DILocation(line: 70, column: 2, scope: !6427)
!6441 = distinct !{!6441, !6429, !6442, !5253, !5254}
!6442 = !DILocation(line: 73, column: 2, scope: !6424)
!6443 = !DILocation(line: 75, column: 9, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6415, file: !3, line: 75, column: 2)
!6445 = !DILocation(line: 75, column: 7, scope: !6444)
!6446 = !DILocation(line: 76, column: 7, scope: !6447)
!6447 = distinct !DILexicalBlock(scope: !6444, file: !3, line: 75, column: 2)
!6448 = !DILocation(line: 76, column: 9, scope: !6447)
!6449 = !DILocation(line: 75, column: 2, scope: !6444)
!6450 = !DILocation(line: 77, column: 36, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 77, column: 3)
!6452 = distinct !DILexicalBlock(scope: !6447, file: !3, line: 76, column: 43)
!6453 = !DILocation(line: 77, column: 21, scope: !6451)
!6454 = !DILocation(line: 77, column: 13, scope: !6451)
!6455 = !DILocation(line: 77, column: 11, scope: !6451)
!6456 = !DILocation(line: 77, column: 8, scope: !6451)
!6457 = !DILocation(line: 77, column: 41, scope: !6458)
!6458 = distinct !DILexicalBlock(scope: !6451, file: !3, line: 77, column: 3)
!6459 = !DILocation(line: 77, column: 3, scope: !6451)
!6460 = !DILocation(line: 78, column: 8, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6458, file: !3, line: 78, column: 8)
!6462 = !DILocation(line: 78, column: 12, scope: !6461)
!6463 = !DILocation(line: 78, column: 21, scope: !6461)
!6464 = !DILocation(line: 78, column: 18, scope: !6461)
!6465 = !DILocation(line: 78, column: 8, scope: !6458)
!6466 = !DILocation(line: 79, column: 5, scope: !6461)
!6467 = !DILocation(line: 77, column: 50, scope: !6458)
!6468 = !DILocation(line: 77, column: 54, scope: !6458)
!6469 = !DILocation(line: 77, column: 48, scope: !6458)
!6470 = !DILocation(line: 77, column: 3, scope: !6458)
!6471 = distinct !{!6471, !6459, !6472, !5253, !5254}
!6472 = !DILocation(line: 79, column: 5, scope: !6451)
!6473 = !DILocation(line: 81, column: 7, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 81, column: 7)
!6475 = !DILocation(line: 81, column: 10, scope: !6474)
!6476 = !DILocation(line: 81, column: 7, scope: !6452)
!6477 = !DILocation(line: 82, column: 11, scope: !6474)
!6478 = !DILocation(line: 82, column: 4, scope: !6474)
!6479 = !DILocation(line: 83, column: 2, scope: !6452)
!6480 = !DILocation(line: 76, column: 39, scope: !6447)
!6481 = !DILocation(line: 75, column: 2, scope: !6447)
!6482 = distinct !{!6482, !6449, !6483, !5253, !5254}
!6483 = !DILocation(line: 83, column: 2, scope: !6444)
!6484 = !DILocation(line: 85, column: 2, scope: !6415)
!6485 = !DILocation(line: 86, column: 1, scope: !6415)
!6486 = !DISubprogram(name: "strscpy", scope: !6219, file: !6219, line: 72, type: !6487, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6487 = !DISubroutineType(types: !6488)
!6488 = !{!309, !277, !195, !323}
!6489 = !DISubprogram(name: "_raw_spin_lock", scope: !6490, file: !6490, line: 22, type: !6491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6490 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6491 = !DISubroutineType(types: !6492)
!6492 = !{null, !6493}
!6493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!6494 = distinct !DISubprogram(name: "__list_del_entry", scope: !6018, file: !6018, line: 213, type: !6019, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6495)
!6495 = !{!6496}
!6496 = !DILocalVariable(name: "entry", arg: 1, scope: !6494, file: !6018, line: 213, type: !181)
!6497 = !DILocation(line: 213, column: 55, scope: !6494)
!6498 = !DILocation(line: 215, column: 30, scope: !6499)
!6499 = distinct !DILexicalBlock(scope: !6494, file: !6018, line: 215, column: 6)
!6500 = !DILocation(line: 215, column: 7, scope: !6499)
!6501 = !DILocation(line: 215, column: 6, scope: !6494)
!6502 = !DILocation(line: 216, column: 3, scope: !6499)
!6503 = !DILocation(line: 218, column: 13, scope: !6494)
!6504 = !DILocation(line: 218, column: 20, scope: !6494)
!6505 = !DILocation(line: 218, column: 26, scope: !6494)
!6506 = !DILocation(line: 218, column: 33, scope: !6494)
!6507 = !DILocation(line: 218, column: 2, scope: !6494)
!6508 = !DILocation(line: 219, column: 1, scope: !6494)
!6509 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6018, file: !6018, line: 134, type: !6510, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6512)
!6510 = !DISubroutineType(types: !6511)
!6511 = !{!695, !181}
!6512 = !{!6513}
!6513 = !DILocalVariable(name: "entry", arg: 1, scope: !6509, file: !6018, line: 134, type: !181)
!6514 = !DILocation(line: 134, column: 61, scope: !6509)
!6515 = !DILocation(line: 136, column: 2, scope: !6509)
!6516 = distinct !DISubprogram(name: "__list_del", scope: !6018, file: !6018, line: 193, type: !6517, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6519)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{null, !181, !181}
!6519 = !{!6520, !6521}
!6520 = !DILocalVariable(name: "prev", arg: 1, scope: !6516, file: !6018, line: 193, type: !181)
!6521 = !DILocalVariable(name: "next", arg: 2, scope: !6516, file: !6018, line: 193, type: !181)
!6522 = !DILocation(line: 193, column: 50, scope: !6516)
!6523 = !DILocation(line: 193, column: 75, scope: !6516)
!6524 = !DILocation(line: 195, column: 15, scope: !6516)
!6525 = !DILocation(line: 195, column: 2, scope: !6516)
!6526 = !DILocation(line: 195, column: 8, scope: !6516)
!6527 = !DILocation(line: 195, column: 13, scope: !6516)
!6528 = !DILocation(line: 196, column: 2, scope: !6516)
!6529 = !DILocation(line: 196, column: 2, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6516, file: !6018, line: 196, column: 2)
!6531 = !DILocation(line: 196, column: 2, scope: !6532)
!6532 = distinct !DILexicalBlock(scope: !6530, file: !6018, line: 196, column: 2)
!6533 = !DILocation(line: 196, column: 2, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6530, file: !6018, line: 196, column: 2)
!6535 = !DILocation(line: 197, column: 1, scope: !6516)
!6536 = !DISubprogram(name: "_raw_spin_unlock", scope: !6490, file: !6490, line: 39, type: !6491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6537 = !DISubprogram(name: "kobj_lookup", scope: !5153, file: !5153, line: 17, type: !6538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{!200, !5151, !511, !744}
!6540 = distinct !DISubprogram(name: "list_add", scope: !6018, file: !6018, line: 167, type: !6517, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6541)
!6541 = !{!6542, !6543}
!6542 = !DILocalVariable(name: "new", arg: 1, scope: !6540, file: !6018, line: 167, type: !181)
!6543 = !DILocalVariable(name: "head", arg: 2, scope: !6540, file: !6018, line: 167, type: !181)
!6544 = !DILocation(line: 167, column: 47, scope: !6540)
!6545 = !DILocation(line: 167, column: 70, scope: !6540)
!6546 = !DILocation(line: 169, column: 13, scope: !6540)
!6547 = !DILocation(line: 169, column: 18, scope: !6540)
!6548 = !DILocation(line: 169, column: 24, scope: !6540)
!6549 = !DILocation(line: 169, column: 30, scope: !6540)
!6550 = !DILocation(line: 169, column: 2, scope: !6540)
!6551 = !DILocation(line: 170, column: 1, scope: !6540)
!6552 = distinct !DISubprogram(name: "cdev_get", scope: !3, file: !3, line: 348, type: !6553, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6555)
!6553 = !DISubroutineType(types: !6554)
!6554 = !{!200, !186}
!6555 = !{!6556, !6557, !6558}
!6556 = !DILocalVariable(name: "p", arg: 1, scope: !6552, file: !3, line: 348, type: !186)
!6557 = !DILocalVariable(name: "owner", scope: !6552, file: !3, line: 350, type: !544)
!6558 = !DILocalVariable(name: "kobj", scope: !6552, file: !3, line: 351, type: !200)
!6559 = !DILocation(line: 348, column: 46, scope: !6552)
!6560 = !DILocation(line: 350, column: 2, scope: !6552)
!6561 = !DILocation(line: 350, column: 17, scope: !6552)
!6562 = !DILocation(line: 350, column: 25, scope: !6552)
!6563 = !DILocation(line: 350, column: 28, scope: !6552)
!6564 = !DILocation(line: 351, column: 2, scope: !6552)
!6565 = !DILocation(line: 351, column: 18, scope: !6552)
!6566 = !DILocation(line: 353, column: 6, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6552, file: !3, line: 353, column: 6)
!6568 = !DILocation(line: 353, column: 12, scope: !6567)
!6569 = !DILocation(line: 353, column: 31, scope: !6567)
!6570 = !DILocation(line: 353, column: 16, scope: !6567)
!6571 = !DILocation(line: 353, column: 6, scope: !6552)
!6572 = !DILocation(line: 354, column: 3, scope: !6567)
!6573 = !DILocation(line: 355, column: 34, scope: !6552)
!6574 = !DILocation(line: 355, column: 37, scope: !6552)
!6575 = !DILocation(line: 355, column: 9, scope: !6552)
!6576 = !DILocation(line: 355, column: 7, scope: !6552)
!6577 = !DILocation(line: 356, column: 7, scope: !6578)
!6578 = distinct !DILexicalBlock(scope: !6552, file: !3, line: 356, column: 6)
!6579 = !DILocation(line: 356, column: 6, scope: !6552)
!6580 = !DILocation(line: 357, column: 14, scope: !6578)
!6581 = !DILocation(line: 357, column: 3, scope: !6578)
!6582 = !DILocation(line: 358, column: 9, scope: !6552)
!6583 = !DILocation(line: 358, column: 2, scope: !6552)
!6584 = !DILocation(line: 359, column: 1, scope: !6552)
!6585 = !DISubprogram(name: "try_module_get", scope: !15, file: !15, line: 696, type: !6586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6586 = !DISubroutineType(types: !6587)
!6587 = !{!695, !544}
!6588 = distinct !DISubprogram(name: "__list_add", scope: !6018, file: !6018, line: 146, type: !6589, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6591)
!6589 = !DISubroutineType(types: !6590)
!6590 = !{null, !181, !181, !181}
!6591 = !{!6592, !6593, !6594}
!6592 = !DILocalVariable(name: "new", arg: 1, scope: !6588, file: !6018, line: 146, type: !181)
!6593 = !DILocalVariable(name: "prev", arg: 2, scope: !6588, file: !6018, line: 147, type: !181)
!6594 = !DILocalVariable(name: "next", arg: 3, scope: !6588, file: !6018, line: 148, type: !181)
!6595 = !DILocation(line: 146, column: 49, scope: !6588)
!6596 = !DILocation(line: 147, column: 28, scope: !6588)
!6597 = !DILocation(line: 148, column: 28, scope: !6588)
!6598 = !DILocation(line: 150, column: 24, scope: !6599)
!6599 = distinct !DILexicalBlock(scope: !6588, file: !6018, line: 150, column: 6)
!6600 = !DILocation(line: 150, column: 29, scope: !6599)
!6601 = !DILocation(line: 150, column: 35, scope: !6599)
!6602 = !DILocation(line: 150, column: 7, scope: !6599)
!6603 = !DILocation(line: 150, column: 6, scope: !6588)
!6604 = !DILocation(line: 151, column: 3, scope: !6599)
!6605 = !DILocation(line: 153, column: 15, scope: !6588)
!6606 = !DILocation(line: 153, column: 2, scope: !6588)
!6607 = !DILocation(line: 153, column: 8, scope: !6588)
!6608 = !DILocation(line: 153, column: 13, scope: !6588)
!6609 = !DILocation(line: 154, column: 14, scope: !6588)
!6610 = !DILocation(line: 154, column: 2, scope: !6588)
!6611 = !DILocation(line: 154, column: 7, scope: !6588)
!6612 = !DILocation(line: 154, column: 12, scope: !6588)
!6613 = !DILocation(line: 155, column: 14, scope: !6588)
!6614 = !DILocation(line: 155, column: 2, scope: !6588)
!6615 = !DILocation(line: 155, column: 7, scope: !6588)
!6616 = !DILocation(line: 155, column: 12, scope: !6588)
!6617 = !DILocation(line: 156, column: 2, scope: !6588)
!6618 = !DILocation(line: 156, column: 2, scope: !6619)
!6619 = distinct !DILexicalBlock(scope: !6588, file: !6018, line: 156, column: 2)
!6620 = !DILocation(line: 156, column: 2, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6619, file: !6018, line: 156, column: 2)
!6622 = !DILocation(line: 156, column: 2, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6619, file: !6018, line: 156, column: 2)
!6624 = !DILocation(line: 157, column: 1, scope: !6588)
!6625 = distinct !DISubprogram(name: "__list_add_valid", scope: !6018, file: !6018, line: 128, type: !6626, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6628)
!6626 = !DISubroutineType(types: !6627)
!6627 = !{!695, !181, !181, !181}
!6628 = !{!6629, !6630, !6631}
!6629 = !DILocalVariable(name: "new", arg: 1, scope: !6625, file: !6018, line: 128, type: !181)
!6630 = !DILocalVariable(name: "prev", arg: 2, scope: !6625, file: !6018, line: 129, type: !181)
!6631 = !DILocalVariable(name: "next", arg: 3, scope: !6625, file: !6018, line: 130, type: !181)
!6632 = !DILocation(line: 128, column: 55, scope: !6625)
!6633 = !DILocation(line: 129, column: 23, scope: !6625)
!6634 = !DILocation(line: 130, column: 23, scope: !6625)
!6635 = !DILocation(line: 132, column: 2, scope: !6625)
!6636 = !DISubprogram(name: "kobject_get_unless_zero", scope: !192, file: !192, line: 109, type: !6216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6637 = !DISubprogram(name: "kobj_unmap", scope: !5153, file: !5153, line: 16, type: !6638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6638 = !DISubroutineType(types: !6639)
!6639 = !{null, !5151, !511, !177}
!6640 = distinct !DISubprogram(name: "kmalloc", scope: !164, file: !164, line: 591, type: !6326, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6641)
!6641 = !{!6642, !6643, !6644}
!6642 = !DILocalVariable(name: "size", arg: 1, scope: !6640, file: !164, line: 591, type: !323)
!6643 = !DILocalVariable(name: "flags", arg: 2, scope: !6640, file: !164, line: 591, type: !174)
!6644 = !DILocalVariable(name: "index", scope: !6645, file: !164, line: 594, type: !7)
!6645 = distinct !DILexicalBlock(scope: !6646, file: !164, line: 593, column: 42)
!6646 = distinct !DILexicalBlock(scope: !6640, file: !164, line: 593, column: 6)
!6647 = !DILocation(line: 591, column: 61, scope: !6640)
!6648 = !DILocation(line: 591, column: 73, scope: !6640)
!6649 = !DILocation(line: 593, column: 27, scope: !6646)
!6650 = !DILocation(line: 593, column: 6, scope: !6646)
!6651 = !DILocation(line: 593, column: 33, scope: !6646)
!6652 = !DILocation(line: 593, column: 36, scope: !6646)
!6653 = !DILocation(line: 593, column: 6, scope: !6640)
!6654 = !DILocation(line: 594, column: 3, scope: !6645)
!6655 = !DILocation(line: 594, column: 16, scope: !6645)
!6656 = !DILocation(line: 596, column: 7, scope: !6657)
!6657 = distinct !DILexicalBlock(scope: !6645, file: !164, line: 596, column: 7)
!6658 = !DILocation(line: 596, column: 12, scope: !6657)
!6659 = !DILocation(line: 596, column: 7, scope: !6645)
!6660 = !DILocation(line: 597, column: 25, scope: !6657)
!6661 = !DILocation(line: 597, column: 31, scope: !6657)
!6662 = !DILocation(line: 597, column: 11, scope: !6657)
!6663 = !DILocation(line: 597, column: 4, scope: !6657)
!6664 = !DILocation(line: 599, column: 11, scope: !6645)
!6665 = !DILocation(line: 599, column: 9, scope: !6645)
!6666 = !DILocation(line: 601, column: 33, scope: !6645)
!6667 = !DILocation(line: 601, column: 40, scope: !6645)
!6668 = !DILocation(line: 601, column: 20, scope: !6645)
!6669 = !DILocation(line: 601, column: 5, scope: !6645)
!6670 = !DILocation(line: 601, column: 51, scope: !6645)
!6671 = !DILocation(line: 602, column: 5, scope: !6645)
!6672 = !DILocation(line: 602, column: 12, scope: !6645)
!6673 = !DILocation(line: 600, column: 10, scope: !6645)
!6674 = !DILocation(line: 600, column: 3, scope: !6645)
!6675 = !DILocation(line: 603, column: 2, scope: !6646)
!6676 = !DILocation(line: 604, column: 19, scope: !6640)
!6677 = !DILocation(line: 604, column: 25, scope: !6640)
!6678 = !DILocation(line: 604, column: 9, scope: !6640)
!6679 = !DILocation(line: 604, column: 2, scope: !6640)
!6680 = !DILocation(line: 605, column: 1, scope: !6640)
!6681 = !DISubprogram(name: "kmalloc_large", scope: !164, file: !164, line: 531, type: !6326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6682 = distinct !DISubprogram(name: "__kmalloc_index", scope: !164, file: !164, line: 444, type: !6683, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6685)
!6683 = !DISubroutineType(types: !6684)
!6684 = !{!7, !323, !695}
!6685 = !{!6686, !6687}
!6686 = !DILocalVariable(name: "size", arg: 1, scope: !6682, file: !164, line: 444, type: !323)
!6687 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6682, file: !164, line: 445, type: !695)
!6688 = !DILocation(line: 444, column: 60, scope: !6682)
!6689 = !DILocation(line: 445, column: 16, scope: !6682)
!6690 = !DILocation(line: 447, column: 7, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 447, column: 6)
!6692 = !DILocation(line: 447, column: 6, scope: !6682)
!6693 = !DILocation(line: 448, column: 3, scope: !6691)
!6694 = !DILocation(line: 450, column: 6, scope: !6695)
!6695 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 450, column: 6)
!6696 = !DILocation(line: 450, column: 11, scope: !6695)
!6697 = !DILocation(line: 450, column: 6, scope: !6682)
!6698 = !DILocation(line: 451, column: 3, scope: !6695)
!6699 = !DILocation(line: 453, column: 32, scope: !6700)
!6700 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 453, column: 6)
!6701 = !DILocation(line: 453, column: 37, scope: !6700)
!6702 = !DILocation(line: 453, column: 42, scope: !6700)
!6703 = !DILocation(line: 453, column: 45, scope: !6700)
!6704 = !DILocation(line: 453, column: 50, scope: !6700)
!6705 = !DILocation(line: 453, column: 6, scope: !6682)
!6706 = !DILocation(line: 454, column: 3, scope: !6700)
!6707 = !DILocation(line: 455, column: 32, scope: !6708)
!6708 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 455, column: 6)
!6709 = !DILocation(line: 455, column: 37, scope: !6708)
!6710 = !DILocation(line: 455, column: 43, scope: !6708)
!6711 = !DILocation(line: 455, column: 46, scope: !6708)
!6712 = !DILocation(line: 455, column: 51, scope: !6708)
!6713 = !DILocation(line: 455, column: 6, scope: !6682)
!6714 = !DILocation(line: 456, column: 3, scope: !6708)
!6715 = !DILocation(line: 457, column: 6, scope: !6716)
!6716 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 457, column: 6)
!6717 = !DILocation(line: 457, column: 11, scope: !6716)
!6718 = !DILocation(line: 457, column: 6, scope: !6682)
!6719 = !DILocation(line: 457, column: 26, scope: !6716)
!6720 = !DILocation(line: 458, column: 6, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 458, column: 6)
!6722 = !DILocation(line: 458, column: 11, scope: !6721)
!6723 = !DILocation(line: 458, column: 6, scope: !6682)
!6724 = !DILocation(line: 458, column: 26, scope: !6721)
!6725 = !DILocation(line: 459, column: 6, scope: !6726)
!6726 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 459, column: 6)
!6727 = !DILocation(line: 459, column: 11, scope: !6726)
!6728 = !DILocation(line: 459, column: 6, scope: !6682)
!6729 = !DILocation(line: 459, column: 26, scope: !6726)
!6730 = !DILocation(line: 460, column: 6, scope: !6731)
!6731 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 460, column: 6)
!6732 = !DILocation(line: 460, column: 11, scope: !6731)
!6733 = !DILocation(line: 460, column: 6, scope: !6682)
!6734 = !DILocation(line: 460, column: 26, scope: !6731)
!6735 = !DILocation(line: 461, column: 6, scope: !6736)
!6736 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 461, column: 6)
!6737 = !DILocation(line: 461, column: 11, scope: !6736)
!6738 = !DILocation(line: 461, column: 6, scope: !6682)
!6739 = !DILocation(line: 461, column: 26, scope: !6736)
!6740 = !DILocation(line: 462, column: 6, scope: !6741)
!6741 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 462, column: 6)
!6742 = !DILocation(line: 462, column: 11, scope: !6741)
!6743 = !DILocation(line: 462, column: 6, scope: !6682)
!6744 = !DILocation(line: 462, column: 26, scope: !6741)
!6745 = !DILocation(line: 463, column: 6, scope: !6746)
!6746 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 463, column: 6)
!6747 = !DILocation(line: 463, column: 11, scope: !6746)
!6748 = !DILocation(line: 463, column: 6, scope: !6682)
!6749 = !DILocation(line: 463, column: 26, scope: !6746)
!6750 = !DILocation(line: 464, column: 6, scope: !6751)
!6751 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 464, column: 6)
!6752 = !DILocation(line: 464, column: 11, scope: !6751)
!6753 = !DILocation(line: 464, column: 6, scope: !6682)
!6754 = !DILocation(line: 464, column: 26, scope: !6751)
!6755 = !DILocation(line: 465, column: 6, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 465, column: 6)
!6757 = !DILocation(line: 465, column: 11, scope: !6756)
!6758 = !DILocation(line: 465, column: 6, scope: !6682)
!6759 = !DILocation(line: 465, column: 26, scope: !6756)
!6760 = !DILocation(line: 466, column: 6, scope: !6761)
!6761 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 466, column: 6)
!6762 = !DILocation(line: 466, column: 11, scope: !6761)
!6763 = !DILocation(line: 466, column: 6, scope: !6682)
!6764 = !DILocation(line: 466, column: 26, scope: !6761)
!6765 = !DILocation(line: 467, column: 6, scope: !6766)
!6766 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 467, column: 6)
!6767 = !DILocation(line: 467, column: 11, scope: !6766)
!6768 = !DILocation(line: 467, column: 6, scope: !6682)
!6769 = !DILocation(line: 467, column: 26, scope: !6766)
!6770 = !DILocation(line: 468, column: 6, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 468, column: 6)
!6772 = !DILocation(line: 468, column: 11, scope: !6771)
!6773 = !DILocation(line: 468, column: 6, scope: !6682)
!6774 = !DILocation(line: 468, column: 26, scope: !6771)
!6775 = !DILocation(line: 469, column: 6, scope: !6776)
!6776 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 469, column: 6)
!6777 = !DILocation(line: 469, column: 11, scope: !6776)
!6778 = !DILocation(line: 469, column: 6, scope: !6682)
!6779 = !DILocation(line: 469, column: 26, scope: !6776)
!6780 = !DILocation(line: 470, column: 6, scope: !6781)
!6781 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 470, column: 6)
!6782 = !DILocation(line: 470, column: 11, scope: !6781)
!6783 = !DILocation(line: 470, column: 6, scope: !6682)
!6784 = !DILocation(line: 470, column: 26, scope: !6781)
!6785 = !DILocation(line: 471, column: 6, scope: !6786)
!6786 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 471, column: 6)
!6787 = !DILocation(line: 471, column: 11, scope: !6786)
!6788 = !DILocation(line: 471, column: 6, scope: !6682)
!6789 = !DILocation(line: 471, column: 26, scope: !6786)
!6790 = !DILocation(line: 472, column: 6, scope: !6791)
!6791 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 472, column: 6)
!6792 = !DILocation(line: 472, column: 11, scope: !6791)
!6793 = !DILocation(line: 472, column: 6, scope: !6682)
!6794 = !DILocation(line: 472, column: 26, scope: !6791)
!6795 = !DILocation(line: 473, column: 6, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 473, column: 6)
!6797 = !DILocation(line: 473, column: 11, scope: !6796)
!6798 = !DILocation(line: 473, column: 6, scope: !6682)
!6799 = !DILocation(line: 473, column: 26, scope: !6796)
!6800 = !DILocation(line: 474, column: 6, scope: !6801)
!6801 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 474, column: 6)
!6802 = !DILocation(line: 474, column: 11, scope: !6801)
!6803 = !DILocation(line: 474, column: 6, scope: !6682)
!6804 = !DILocation(line: 474, column: 27, scope: !6801)
!6805 = !DILocation(line: 475, column: 6, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 475, column: 6)
!6807 = !DILocation(line: 475, column: 11, scope: !6806)
!6808 = !DILocation(line: 475, column: 6, scope: !6682)
!6809 = !DILocation(line: 475, column: 32, scope: !6806)
!6810 = !DILocation(line: 477, column: 50, scope: !6811)
!6811 = distinct !DILexicalBlock(scope: !6682, file: !164, line: 477, column: 6)
!6812 = !{i8 0, i8 2}
!6813 = !DILocation(line: 477, column: 6, scope: !6682)
!6814 = !DILocation(line: 478, column: 3, scope: !6811)
!6815 = !DILocation(line: 478, column: 3, scope: !6816)
!6816 = distinct !DILexicalBlock(scope: !6817, file: !164, line: 478, column: 3)
!6817 = distinct !DILexicalBlock(scope: !6811, file: !164, line: 478, column: 3)
!6818 = !{i32 -2141708133}
!6819 = !DILocation(line: 478, column: 3, scope: !6817)
!6820 = !DILocation(line: 480, column: 3, scope: !6811)
!6821 = !DILocation(line: 480, column: 3, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6811, file: !164, line: 480, column: 3)
!6823 = !DILocation(line: 480, column: 3, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6822, file: !164, line: 480, column: 3)
!6825 = !DILocation(line: 480, column: 3, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6822, file: !164, line: 480, column: 3)
!6827 = !{i64 2153259366, i64 2153259395, i64 2153259441, i64 2153259499, i64 2153259553, i64 2153259607, i64 2153259662, i64 2153259693}
!6828 = !DILocation(line: 483, column: 2, scope: !6682)
!6829 = !DILocation(line: 484, column: 1, scope: !6682)
!6830 = !DISubprogram(name: "kmalloc_trace", scope: !164, file: !164, line: 525, type: !6831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6831 = !DISubroutineType(types: !6832)
!6832 = !{!176, !6833, !174, !323}
!6833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6834, size: 64)
!6834 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6835, line: 325, flags: DIFlagFwdDecl)
!6835 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6836 = distinct !DISubprogram(name: "kmalloc_type", scope: !164, file: !164, line: 401, type: !6837, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6839)
!6837 = !DISubroutineType(types: !6838)
!6838 = !{!163, !174, !177}
!6839 = !{!6840, !6841}
!6840 = !DILocalVariable(name: "flags", arg: 1, scope: !6836, file: !164, line: 401, type: !174)
!6841 = !DILocalVariable(name: "caller", arg: 2, scope: !6836, file: !164, line: 401, type: !177)
!6842 = !DILocation(line: 401, column: 67, scope: !6836)
!6843 = !DILocation(line: 401, column: 88, scope: !6836)
!6844 = !DILocation(line: 407, column: 6, scope: !6845)
!6845 = distinct !DILexicalBlock(scope: !6836, file: !164, line: 407, column: 6)
!6846 = !DILocation(line: 407, column: 6, scope: !6836)
!6847 = !DILocation(line: 413, column: 3, scope: !6845)
!6848 = !DILocation(line: 423, column: 38, scope: !6849)
!6849 = distinct !DILexicalBlock(scope: !6836, file: !164, line: 423, column: 6)
!6850 = !DILocation(line: 423, column: 44, scope: !6849)
!6851 = !DILocation(line: 423, column: 6, scope: !6836)
!6852 = !DILocation(line: 424, column: 3, scope: !6849)
!6853 = !DILocation(line: 426, column: 3, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6836, file: !164, line: 425, column: 6)
!6855 = !DILocation(line: 429, column: 1, scope: !6836)
!6856 = !DISubprogram(name: "__kmalloc", scope: !164, file: !164, line: 488, type: !6326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6857 = !DISubprogram(name: "__compiletime_assert_245", scope: !164, file: !164, line: 478, type: !980, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6858 = distinct !DISubprogram(name: "cdev_dynamic_release", scope: !3, file: !3, line: 617, type: !297, scopeLine: 618, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6859)
!6859 = !{!6860, !6861, !6862, !6864}
!6860 = !DILocalVariable(name: "kobj", arg: 1, scope: !6858, file: !3, line: 617, type: !200)
!6861 = !DILocalVariable(name: "p", scope: !6858, file: !3, line: 619, type: !186)
!6862 = !DILocalVariable(name: "__mptr", scope: !6863, file: !3, line: 619, type: !176)
!6863 = distinct !DILexicalBlock(scope: !6858, file: !3, line: 619, column: 19)
!6864 = !DILocalVariable(name: "parent", scope: !6858, file: !3, line: 620, type: !200)
!6865 = !DILocation(line: 617, column: 50, scope: !6858)
!6866 = !DILocation(line: 619, column: 2, scope: !6858)
!6867 = !DILocation(line: 619, column: 15, scope: !6858)
!6868 = !DILocation(line: 619, column: 19, scope: !6863)
!6869 = !DILocation(line: 619, column: 19, scope: !6858)
!6870 = !DILocation(line: 620, column: 2, scope: !6858)
!6871 = !DILocation(line: 620, column: 18, scope: !6858)
!6872 = !DILocation(line: 620, column: 27, scope: !6858)
!6873 = !DILocation(line: 620, column: 33, scope: !6858)
!6874 = !DILocation(line: 622, column: 13, scope: !6858)
!6875 = !DILocation(line: 622, column: 2, scope: !6858)
!6876 = !DILocation(line: 623, column: 8, scope: !6858)
!6877 = !DILocation(line: 623, column: 2, scope: !6858)
!6878 = !DILocation(line: 624, column: 14, scope: !6858)
!6879 = !DILocation(line: 624, column: 2, scope: !6858)
!6880 = !DILocation(line: 625, column: 1, scope: !6858)
!6881 = distinct !DISubprogram(name: "cdev_purge", scope: !3, file: !3, line: 435, type: !5954, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6882)
!6882 = !{!6883, !6884, !6886}
!6883 = !DILocalVariable(name: "cdev", arg: 1, scope: !6881, file: !3, line: 435, type: !186)
!6884 = !DILocalVariable(name: "inode", scope: !6885, file: !3, line: 439, type: !355)
!6885 = distinct !DILexicalBlock(scope: !6881, file: !3, line: 438, column: 35)
!6886 = !DILocalVariable(name: "__mptr", scope: !6887, file: !3, line: 440, type: !176)
!6887 = distinct !DILexicalBlock(scope: !6885, file: !3, line: 440, column: 11)
!6888 = !DILocation(line: 435, column: 37, scope: !6881)
!6889 = !DILocation(line: 437, column: 2, scope: !6881)
!6890 = !DILocation(line: 438, column: 2, scope: !6881)
!6891 = !DILocation(line: 438, column: 22, scope: !6881)
!6892 = !DILocation(line: 438, column: 28, scope: !6881)
!6893 = !DILocation(line: 438, column: 10, scope: !6881)
!6894 = !DILocation(line: 438, column: 9, scope: !6881)
!6895 = !DILocation(line: 439, column: 3, scope: !6885)
!6896 = !DILocation(line: 439, column: 17, scope: !6885)
!6897 = !DILocation(line: 440, column: 11, scope: !6887)
!6898 = !DILocation(line: 440, column: 11, scope: !6885)
!6899 = !DILocation(line: 440, column: 9, scope: !6885)
!6900 = !DILocation(line: 441, column: 18, scope: !6885)
!6901 = !DILocation(line: 441, column: 25, scope: !6885)
!6902 = !DILocation(line: 441, column: 3, scope: !6885)
!6903 = !DILocation(line: 442, column: 3, scope: !6885)
!6904 = !DILocation(line: 442, column: 10, scope: !6885)
!6905 = !DILocation(line: 442, column: 17, scope: !6885)
!6906 = !DILocation(line: 443, column: 2, scope: !6881)
!6907 = distinct !{!6907, !6890, !6906, !5253, !5254}
!6908 = !DILocation(line: 444, column: 2, scope: !6881)
!6909 = !DILocation(line: 445, column: 1, scope: !6881)
!6910 = distinct !DISubprogram(name: "list_empty", scope: !6018, file: !6018, line: 371, type: !6911, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6915)
!6911 = !DISubroutineType(types: !6912)
!6912 = !{!101, !6913}
!6913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6914, size: 64)
!6914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!6915 = !{!6916}
!6916 = !DILocalVariable(name: "head", arg: 1, scope: !6910, file: !6018, line: 371, type: !6913)
!6917 = !DILocation(line: 371, column: 54, scope: !6910)
!6918 = !DILocation(line: 373, column: 9, scope: !6919)
!6919 = distinct !DILexicalBlock(scope: !6910, file: !6018, line: 373, column: 9)
!6920 = !DILocation(line: 373, column: 9, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6919, file: !6018, line: 373, column: 9)
!6922 = !DILocation(line: 373, column: 34, scope: !6910)
!6923 = !DILocation(line: 373, column: 31, scope: !6910)
!6924 = !DILocation(line: 373, column: 2, scope: !6910)
!6925 = distinct !DISubprogram(name: "cdev_default_release", scope: !3, file: !3, line: 608, type: !297, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6926)
!6926 = !{!6927, !6928, !6929, !6931}
!6927 = !DILocalVariable(name: "kobj", arg: 1, scope: !6925, file: !3, line: 608, type: !200)
!6928 = !DILocalVariable(name: "p", scope: !6925, file: !3, line: 610, type: !186)
!6929 = !DILocalVariable(name: "__mptr", scope: !6930, file: !3, line: 610, type: !176)
!6930 = distinct !DILexicalBlock(scope: !6925, file: !3, line: 610, column: 19)
!6931 = !DILocalVariable(name: "parent", scope: !6925, file: !3, line: 611, type: !200)
!6932 = !DILocation(line: 608, column: 50, scope: !6925)
!6933 = !DILocation(line: 610, column: 2, scope: !6925)
!6934 = !DILocation(line: 610, column: 15, scope: !6925)
!6935 = !DILocation(line: 610, column: 19, scope: !6930)
!6936 = !DILocation(line: 610, column: 19, scope: !6925)
!6937 = !DILocation(line: 611, column: 2, scope: !6925)
!6938 = !DILocation(line: 611, column: 18, scope: !6925)
!6939 = !DILocation(line: 611, column: 27, scope: !6925)
!6940 = !DILocation(line: 611, column: 33, scope: !6925)
!6941 = !DILocation(line: 613, column: 13, scope: !6925)
!6942 = !DILocation(line: 613, column: 2, scope: !6925)
!6943 = !DILocation(line: 614, column: 14, scope: !6925)
!6944 = !DILocation(line: 614, column: 2, scope: !6925)
!6945 = !DILocation(line: 615, column: 1, scope: !6925)
!6946 = !DISubprogram(name: "__request_module", scope: !6947, file: !6947, line: 24, type: !6948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6947 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6022a92e643474d91bec12d05ea4184")
!6948 = !DISubroutineType(types: !6949)
!6949 = !{!101, !695, !195, null}
